unit Vendas2_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr,
  ExtCtrls, jpeg, JvComponentBase, JvThreadTimer, Buttons, JvExStdCtrls, JvMemo,
  Mask, DBCtrls, JvListBox, JvPlaylist, JvWavePlayer, MPlayer, Menus,
  JvExButtons, JvBitBtn;

type
  TVendas2 = class(TForm)
    Shape7: TShape;
    PanelTopo: TPanel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    LabelData: TLabel;
    LabelHora: TLabel;
    PanelBotoes: TPanel;
    BitBtnNovaVenda: TSpeedButton;
    BitBtnCliente: TSpeedButton;
    BitBtnProdutos: TSpeedButton;
    BitBtnCancelaItem: TSpeedButton;
    BitBtnCancelaVenda: TSpeedButton;
    BitBtnFinalizaVenda: TSpeedButton;
    BitBtnSair: TSpeedButton;
    PanelCorpo: TPanel;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    qProdutos: TSQLQuery;
    cdsProdutos: TClientDataSet;
    dspProdutos: TDataSetProvider;
    dsProdutos: TDataSource;
    qPedidos: TSQLQuery;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    qItens: TSQLQuery;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    PopupMenu: TPopupMenu;
    x1: TMenuItem;
    BoletimdeCai1: TMenuItem;
    qSoma: TSQLQuery;
    qPesquisa: TSQLQuery;
    PanelEsquerda: TPanel;
    PanelGridProdutos: TPanel;
    LabelOperador: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelDesconto: TLabel;
    Label4: TLabel;
    edtCodProduto: TEdit;
    edtQtd: TEdit;
    edtValor: TEdit;
    edtDesconto: TEdit;
    DBEdit4: TDBEdit;
    dbgProdutos: TDBGrid;
    Image1: TImage;
    LabelOF: TLabel;
    MaskEditOF: TMaskEdit;
    MaskEditConta: TMaskEdit;
    qPlContas: TSQLQuery;
    dspPlContas: TDataSetProvider;
    cdsPlContas: TClientDataSet;
    cdsPlContasCDPLANO_CONTAS: TIntegerField;
    cdsPlContasCONTA: TStringField;
    cdsPlContasDESCRICAO_CONTA: TStringField;
    cdsPlContasCONTA_DEBITO: TIntegerField;
    cdsPlContasCONTA_CREDITO: TIntegerField;
    cdsPlContasACEITA_LANCAMENTO: TIntegerField;
    cdsPlContasATIVA: TIntegerField;
    cdsPlContasCDCENTROCUSTO: TIntegerField;
    cdsPlContasCADASTRADO_POR: TStringField;
    cdsPlContasCADASTRADO_EM: TSQLTimeStampField;
    cdsPlContasALTERADO_POR: TStringField;
    cdsPlContasALTERADO_EM: TSQLTimeStampField;
    dsPlcontas: TDataSource;
    BitBtnVendedores: TSpeedButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    qOpt: TSQLQuery;
    dspOpt: TDataSetProvider;
    cdsOpt: TClientDataSet;
    dsOpt: TDataSource;
    cdsOptCDCALENDARIO_NEGOCIOS: TIntegerField;
    cdsOptDESCRICAO: TStringField;
    cdsOptPRAZO: TIntegerField;
    cdsOptOBS: TBlobField;
    cdsOptPRAZO_AVISO: TIntegerField;
    cdsOptCDPRODUTO: TIntegerField;
    cdsOptCADASTRADO_POR: TStringField;
    cdsOptCADASTRADO_EM: TSQLTimeStampField;
    cdsOptALTERADO_POR: TStringField;
    cdsOptALTERADO_EM: TSQLTimeStampField;
    qNeg: TSQLQuery;
    dspNeg: TDataSetProvider;
    cdsNeg: TClientDataSet;
    dsNeg: TDataSource;
    cdsNegCDNEGOCIO: TIntegerField;
    cdsNegCDCALENDARIO_NEGOCIOS: TIntegerField;
    cdsNegCDCLIENTE: TIntegerField;
    cdsNegCDMASCOTE: TIntegerField;
    cdsNegCANCELAR_AVISO: TIntegerField;
    cdsNegCDPRODUTO: TIntegerField;
    cdsNegDATA_NEGOCIO: TDateField;
    cdsNegDATA_AVISO: TDateField;
    cdsNegCDPEDIDO: TIntegerField;
    ThreadDataHora: TJvThreadTimer;
    cdsClientesCDPESSOA: TIntegerField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesCOD_IBGE: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesCOD_PAIS: TStringField;
    cdsClientesLIMITE_CREDITO: TFloatField;
    cdsClientesCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    cdsProdutosCDPRODUTO: TIntegerField;
    cdsProdutosCDFORNECEDOR: TIntegerField;
    cdsProdutosFORNECEDOR: TStringField;
    cdsProdutosCDINTERNO: TStringField;
    cdsProdutosCDBARRAS: TStringField;
    cdsProdutosCDGRUPO: TIntegerField;
    cdsProdutosGRUPO: TStringField;
    cdsProdutosCDSUBGRUPO: TIntegerField;
    cdsProdutosSUBGRUPO: TStringField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosVALOR_CUSTO: TFloatField;
    cdsProdutosVALOR_VENDA: TFloatField;
    cdsProdutosVALOR_CONTABIL: TFloatField;
    cdsProdutosMARGEM: TFloatField;
    cdsProdutosUNID_ENTRADA: TFloatField;
    cdsProdutosUNID_SAIDA: TFloatField;
    cdsProdutosSERVICO: TIntegerField;
    cdsProdutosIPI: TFloatField;
    cdsProdutosICMS: TFloatField;
    cdsProdutosCFOP: TStringField;
    cdsProdutosSIT_TRIBUTARIA: TStringField;
    cdsProdutosCOMISSAO: TFloatField;
    cdsProdutosDESCONTO: TFloatField;
    cdsProdutosQTD_DESCONTO: TFloatField;
    cdsProdutosAPLICACAO: TStringField;
    cdsProdutosTIPO_UN_ENTRADA: TStringField;
    cdsProdutosTIPO_UN_SAIDA: TStringField;
    cdsProdutosESTOQUE_QTD: TFloatField;
    cdsProdutosESTOQUE_MINIMO: TFloatField;
    cdsProdutosCDCENTRO_CUSTO: TIntegerField;
    cdsProdutosUSO_CONSUMO: TIntegerField;
    cdsProdutosMARCA: TStringField;
    cdsProdutosMODELO: TStringField;
    cdsProdutosCDPLANO_CONTAS: TIntegerField;
    cdsProdutosCONTA: TStringField;
    cdsProdutosCODIGOST: TStringField;
    cdsItensCDPEDIDO_ITENS: TIntegerField;
    cdsItensCDPEDIDO: TIntegerField;
    cdsItensCDPRODUTO: TIntegerField;
    cdsItensVALOR_UNITARIO: TFMTBCDField;
    cdsItensQTD: TFloatField;
    cdsItensVALOR_TOTAL: TFMTBCDField;
    cdsItensSUBTOTAL: TFMTBCDField;
    cdsItensDESCONTO: TFloatField;
    cdsItensACRESCIMO: TFloatField;
    cdsItensCDVENDEDOR: TIntegerField;
    cdsItensCONTADOR: TIntegerField;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCDUSUARIO: TIntegerField;
    cdsPedidosCDCLIENTE: TIntegerField;
    cdsPedidosDATA: TDateField;
    cdsPedidosHORA: TTimeField;
    cdsPedidosQTD: TFloatField;
    cdsPedidosDESCONTO: TFloatField;
    cdsPedidosACRESCIMO: TFloatField;
    cdsPedidosNF_EMITIDA: TIntegerField;
    cdsPedidosCDPAGAMENTO: TIntegerField;
    cdsPedidosCDPLANO_CONTAS: TIntegerField;
    cdsPedidosTIPO: TStringField;
    cdsPedidosVALOR_VENDA: TFloatField;
    cdsPedidosSUBTOTAL: TFloatField;
    cdsPedidosVALOR_TOTAL: TFloatField;
    cdsPedidosVALOR_PAGO: TFloatField;
    cdsPedidosCDPESSOA: TIntegerField;
    cdsPedidosDATA_VALIDADE: TDateField;
    cdsPedidosDIAS_AVISO: TIntegerField;
    cdsPedidosDESCARTAR_AVISO: TIntegerField;
    cdsPedidosRESULTADO: TIntegerField;
    BitBtnCaixa: TSpeedButton;
    BoletimdeCaixaSemGrfico1: TMenuItem;
    cdsPlContasCDPESSOA: TIntegerField;
    cdsPlContasCODIGO_EXTENDIDO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ThreadDataHoraTimer(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtQtdExit(Sender: TObject);
    procedure BitBtnNovaVendaClick(Sender: TObject);
    procedure BitBtnFinalizaVendaClick(Sender: TObject);
    procedure BitBtnClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCancelaVendaClick(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure BoletimdeCai1Click(Sender: TObject);
    procedure dbgProdutosExit(Sender: TObject);
    procedure BitBtnProdutosClick(Sender: TObject);
    procedure MaskEditOFExit(Sender: TObject);
    procedure BitBtnCancelaItemClick(Sender: TObject);
    procedure BitBtnVendedoresClick(Sender: TObject);
    procedure MaskEditOFKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdutoEnter(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure BitBtnCaixaClick(Sender: TObject);
    procedure BoletimdeCaixaSemGrfico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbreVenda;
    procedure Finaliza;
    procedure VerificaVendaAberta;
    procedure CarregaImagemVenda;
    procedure Vende;

    procedure AcertaBotoesAbreVenda;
    procedure AcertaBotoesFechaVenda;
    procedure AcertaValores;
    procedure LimpaTabelasTemporarias;
  end;

var
  Vendas2: TVendas2;
  wNumeroItem : Integer = 1;
  VarComponente: string;
  VarCancelandoItem : Boolean = False;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, Vendas_Pagamento_p,
  PesquisaClientes_p, DMVenda_p, TelaAberturaCaixa_p, TelaCaixa_p,
   RelatorioBoletimCaixa_p, ConsultaProdutoVenda_p, PesquisaPlanoContas_p,
   PesquisaVendedores_p;

{$R *.dfm}

procedure TVendas2.CarregaImagemVenda;
var Imagem :TStream;
    Jpg: TJpegImage;
begin
//  Jpg := nil;
//  Imagem := DMVenda.cdsConfG.CreateBlobStream( DMVenda.cdsConfG.FieldByName('VENDA_IMAGEM'),bmRead );
//  if Imagem.Size > 0 then
//    begin
//      try
//        Jpg := TJpegImage.Create;
//        Jpg.LoadFromStream(Imagem);
//        ImageVenda.Picture.Assign(Jpg);
//      except
//      end;
//    end
//  else
//    begin
//      ImageVenda.Picture.Assign(nil);
//      jpg.Free;
//      Imagem.Destroy;
//    end;
end;

procedure TVendas2.AcertaBotoesAbreVenda;
begin
  BitBtnNovaVenda.Enabled     := False;
  BitBtnSair.Enabled          := False;
  BitBtnCancelaItem.Enabled   := True;
  BitBtnCancelaVenda.Enabled  := True;
  BitBtnFinalizaVenda.Enabled := True;
  BitBtnCancelaItem.Enabled   := True;
  BitBtnVendedores.Enabled    := True;
  BitBtnCliente.Enabled       := True;
end;

procedure TVendas2.AcertaBotoesFechaVenda;
begin
  BitBtnNovaVenda.Enabled     := True;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnCancelaVenda.Enabled  := False;
  BitBtnFinalizaVenda.Enabled := False;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnCliente.Enabled       := False;
  BitBtnVendedores.Enabled    := False;
  BitbtnSair.Enabled          := True;
end;

procedure TVendas2.AcertaValores;
var i : Integer;
    VarValor : Real;
begin
  VarValor := 0;
  DMVenda.cdsItensTMP.First;
  for i := 0 To DMVenda.cdsItensTMP.RecordCount -1 do
    begin
      VarValor := VarValor + DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat;
      DMVenda.cdsItensTMP.Next;
    end;
  DMVenda.cdsPedidosTmp.Edit;
  DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat := VarValor;
  DMVenda.cdsPedidosTmp.Post;
  DMVenda.cdsPedidosTmp.ApplyUpdates(0);
end;

procedure TVendas2.LimpaTabelasTemporarias;
var i : Integer;
begin
  for i := 0 to DMVenda.cdsItensTMP.RecordCount - 1 do
    begin
      DMVenda.cdsItensTMP.delete;
      DMVenda.cdsItensTMP.ApplyUpdates(0);
      DMVenda.cdsItensTMP.Next;
    end;

  for i := 0 to DMVenda.cdsPedidosTmp.RecordCount - 1 do
    begin
      DMVenda.cdsPedidosTmp.delete;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);
      DMVenda.cdsPedidosTmp.Next;
    end;

  DMVenda.jvmPagamento.EmptyTable;
end;

procedure TVendas2.dbgProdutosExit(Sender: TObject);
begin
  if not(VarCancelandoItem) then
    begin
      edtCodProduto.Text := cdsProdutosDESCRICAO.AsString;
      edtValor.Text      := FormatFloat('###,###,#0.00',cdsProdutosVALOR_VENDA.AsFloat);
      Vende;
    end;
end;

procedure TVendas2.VerificaVendaAberta;
var i : Integer;
begin
  DMVenda.cdsPedidosTmp.Open;
  DMVenda.cdsItensTMP.Open;

//  if not (DMVenda.cdsItensTMP.IsEmpty) then
//    begin
//      AbreVenda;
//      DMVenda.cdsItensTMP.First;
//      for i := 0 to DMVenda.cdsItensTMP.RecordCount -1 do
//        begin
//          BitBtnNovaVenda.Click;
//          //Primeira linha Iten/Código/Descricao
//          MemoCupom.Lines.Add( fmLRString(IntToStr(DMVenda.cdsItensTMPCONTADOR.AsInteger),3,True,'0')+'  '+
//                               DMVenda.cdsItensTMPCDBARRAS.AsString                 +'  '+
//                               DMVenda.cdsItensTMPDESCRICAO.AsString);
//          //Segunda Linha Qtd/Undade/Valot Unit./Valor Total
//          MemoCupom.Lines.Add('     '                      + fmLRString(FloatToStr(DMVenda.cdsItensTMPQTD.AsFloat),3,True,'0')+
//                              '       '                    + DMVenda.cdsItensTMPUNID_SAIDA.AsString +
//                              '    x    '                  + FloatToStrF(DMVenda.cdsItensTMPVALOR_UNITARIO.AsFloat,ffNumber,15,2) +
//                              '                          ' + FloatToStrF(DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat,ffNumber,15,2));
//
//
//          DMVenda.cdsItensTMP.Next;
//        end;
//    end
//  else
//    begin
//      if not (DMVenda.cdsPedidoTMP.IsEmpty) then
//        begin
//          DMVenda.cdsPedidoTMP.Delete;
//          DMVenda.cdsPedidoTMP.ApplyUpdates(0);
//        end;
//    end;
end;

procedure TVendas2.x1Click(Sender: TObject);
begin
  TelaCaixa := TTelaCaixa.Create(Application);
  TelaCaixa.cdsAbertura.FetchParams;
  TelaCaixa.cdsAbertura.Params.ParamByName('DATA').AsDateTime := Date;
  TelaCaixa.cdsAbertura.Open;
  TelaCaixa.cdsUsuario.Open;
  TelaCaixa.cdsMovimenta.Open;
  TelaCaixa.ShowModal;
  TelaCaixa.Release;
  TelaCaixa := nil;
end;

procedure TVendas2.AbreVenda;
begin
//  MemoCupom.Lines.Clear;
//  MemoCupom.Lines.Add(DMVenda.cdsEmpresaRAZAO_SOCIAL.AsString);
//  MemoCupom.Lines.Add(DMVenda.cdsEmpresaENDERECO.AsString      +' - '+ DMVenda.cdsEmpresaNUMERO.AsString );
//  MemoCupom.Lines.Add(DMVenda.cdsEmpresaBAIRRO.AsString        +' '  + DMVenda.cdsEmpresaCIDADE.AsString + DMVenda.cdsEmpresaUF.AsString );
//  MemoCupom.Lines.Add('CNPJ: '+DMVenda.cdsEmpresaCNPJ.AsString +'        IE:'+ DMVenda.cdsEmpresaIE.AsString );
//  MemoCupom.Lines.Add('-------------------------------------------------------------------------');
//
//  if DMVenda.cdsConFiscalIMPRESSORA_FICAL.AsInteger = 1 then
//    MemoCupom.Lines.Add('-------------------------CUPOM FISCAL---------------------------------')
//  else
//    MemoCupom.Lines.Add('---------------------CUPOM NÃO FISCAL-------------------------');
//
//  MemoCupom.Lines.Add('-------------------------------------------------------------------------');
//  MemoCupom.Lines.Add('Item  Código   Descrição                                ');
//  MemoCupom.Lines.Add('     Qtd.   UN.   VL.Unit(R$)  ST  IAT   VL.Item(R$)    ');
//  MemoCupom.Lines.Add('-------------------------------------------------------------------------');
end;

procedure TVendas2.Finaliza;
var i : Integer;
    VarValorComissao : Real;
    VarPercentualComissao : Real;
    VarTotalComissao : Real;
    VarPercentualParcela : Real;
begin
  {$REGION 'Zerando as Variaveis'}
  VarValorComissao      := 0;
  VarPercentualComissao := 0;
  VarTotalComissao      := 0;
  VarPercentualParcela  := 0;
  {$ENDREGION}

  {$REGION 'Abrindo as Tabelas'}
  DMVenda.cdsPedidosPag.Open;
  DMVenda.cdsVendedor.Open;
  DMVenda.cdsComissao.Open;
  cdsPedidos.Open;
  cdsItens.Open;
  {$ENDREGION}

  {$REGION 'Gravando Tabela de Pedidos'}
  cdsPedidos.Insert;
  cdsPedidosCDPEDIDO.AsInteger  := Gerar_id('GEN_PEDIDOS_ID');

  if DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger <> 0 then
    begin
      cdsPedidosCDCLIENTE.AsInteger := DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger;
      cdsPedidosCDPESSOA.AsInteger  := DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger;
    end
  else
    begin
      cdsPedidosCDCLIENTE.AsInteger := 0;
      cdsPedidosCDPESSOA.AsInteger  := 0;
    end;

  if DMVenda.cdsPedidosTmpCDVENDEDOR.AsInteger <> 0 then
    cdsPedidosCDVENDEDOR.AsInteger := DMVenda.cdsPedidosTmpCDVENDEDOR.AsInteger;

  cdsPedidosDATA.AsDateTime          := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  cdsPedidosSUBTOTAL.AsFloat         := DMVenda.cdsPedidosTmpSUBTOTAL.AsFloat;
  cdsPedidosDESCONTO.AsFloat         := DMVenda.cdsPedidosTmpDESCONTO.AsFloat;
  cdsPedidosVALOR_TOTAL.AsFloat      := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat;
  cdsPedidosTIPO.AsString            := DMVenda.cdsPedidosTmpTIPO.AsString;
  cdsPedidosDATA_VALIDADE.AsDateTime := DMVenda.cdsPedidosTmpDATA_VALIDADE.AsDateTime;
  cdsPedidosDIAS_AVISO.AsInteger     := DMVenda.cdsPedidosTmpDIAS_AVISO.AsInteger;

  if DMVenda.cdsPedidosTmpCDPLANO_CONTAS.AsInteger > 0 then
    cdsPedidosCDPLANO_CONTAS.AsInteger := DMVenda.cdsPedidosTmpCDPLANO_CONTAS.AsInteger;

  cdsPedidosHORA.AsDateTime          := DMPrincipal.cdsData.FieldByName('CURRENT_TIME').AsDateTime;

  cdsPedidos.Post;
  cdsPedidos.ApplyUpdates(0);
  {$ENDREGION}

  {$REGION 'Gravando a Tabela de Itens do Pedido'}
  DMVenda.cdsItensTMP.First;
  for i := 0 to DMVenda.cdsItensTMP.RecordCount -1 do
    begin
      cdsItens.Insert;
      cdsItensCDPEDIDO_ITENS.AsInteger := Gerar_id('GEN_PEDIDO_ITENS_ID');
      cdsItensCDPEDIDO.AsInteger       := cdsPedidosCDPEDIDO.AsInteger;
      cdsItensCDPRODUTO.AsInteger      := DMVenda.cdsItensTMPCDPRODUTO.AsInteger;
      cdsItensVALOR_UNITARIO.AsFloat   := DMVenda.cdsItensTMPVALOR_UNITARIO.AsFloat;
      cdsItensVALOR_TOTAL.AsFloat      := DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat;
      cdsItensDESCONTO.AsFloat         := DMVenda.cdsItensTMPDESCONTO.AsFloat;
      cdsItensQTD.AsFloat              := DMVenda.cdsItensTMPQTD.AsFloat;
      cdsItensACRESCIMO.AsFloat        := 0;
      cdsItensCONTADOR.AsInteger       := DMVenda.cdsItensTMPCONTADOR.AsInteger;
      cdsItens.Post;
      cdsItens.ApplyUpdates(0);

      //Gravando a Possibilidade de Negócios - consultando Tabela "CALENDARIO_NEGOCIOS"
      cdsOpt.Close;
      cdsOpt.FetchParams;
      cdsOpt.Params.ParamByName('CDPRODUTO').AsInteger := DMVenda.cdsItensTMPCDPRODUTO.AsInteger;
      cdsOpt.Open;
      if not (cdsOpt.IsEmpty) then
        begin
          cdsNeg.Open;
          cdsNeg.Insert;
          cdsNegCDNEGOCIO.AsInteger             := Gerar_id('GEN_NEGOCIOS_ID');
          cdsNegCDCALENDARIO_NEGOCIOS.AsInteger := cdsOptCDCALENDARIO_NEGOCIOS.AsInteger;
          cdsNegCDCLIENTE.AsInteger             := DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger;
          cdsNegCDPRODUTO.AsInteger             := DMVenda.cdsItensTMPCDPRODUTO.AsInteger;
          cdsNegDATA_NEGOCIO.AsDateTime         := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime + cdsOptPRAZO.AsInteger;
          cdsNegDATA_AVISO.AsDateTime           := ((DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime + cdsOptPRAZO.AsInteger)-cdsOptPRAZO_AVISO.AsInteger);
          cdsNegCDPEDIDO.AsInteger              := cdsPedidosCDPEDIDO.AsInteger;
          cdsNeg.Post;
          cdsNeg.ApplyUpdates(0);
        end;

      {$REGION ' Comissão'}
      if DMVenda.cdsPedidosTmpCDVENDEDOR.AsInteger <> 0 then
        begin
          VarValorComissao := 0;
          DMVenda.cdsProdutos.Filtered := False;
          DMVenda.cdsProdutos.Filter := 'CDPRODUTO  = '''+DMVenda.cdsItensTMPCDPRODUTO.AsString+''' ';
          DMVenda.cdsProdutos.Filtered := True;

          DMVenda.cdsVendedor.Filtered := False;
          DMVenda.cdsVendedor.Filter := 'CDVENDEDOR  = '''+DMVenda.cdsPedidosTmpCDVENDEDOR.AsString+''' ';
          DMVenda.cdsVendedor.Filtered := True;
          DMVenda.cdsVendedorNOME.AsString;

          if DMVenda.cdsProdutosCOMISSAO.AsFloat > 0 then
            begin
              if DMVenda.cdsProdutosCOMISSAO.AsFloat < DMVenda.cdsVendedorCOMISSAO.AsFloat then
                VarPercentualComissao := DMVenda.cdsProdutosCOMISSAO.AsFloat
              else
                VarPercentualComissao := DMVenda.cdsVendedorCOMISSAO.AsFloat;
            end
          else
            VarPercentualComissao := DMVenda.cdsVendedorCOMISSAO.AsFloat;

          VarValorComissao := ((DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat * VarPercentualComissao)/100);
          VarTotalComissao := VarTotalComissao + VarValorComissao;
        end;
      {$ENDREGION}

      DMVenda.cdsItensTMP.Next;
    end;
  {$ENDREGION}

  if DMVenda.cdsPedidosTmpTIPO.AsString = 'V' then
    begin
      DMVenda.jvmPagamento.First;
      for i := 1 to DMVenda.jvmPagamento.RecordCount do
        begin
          if VarTotalComissao <> 0 then
            begin
              VarValorComissao := 0;
              if DMvenda.cdsConfig_VendaCOMISSAO_CONFORME_RECEBIMENTO.AsInteger = 1 then
                begin
                  {$REGION 'Calcula Comissão'}
                  VarPercentualParcela := ((DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat * 100)/DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat);
                  VarValorComissao     := ((VarTotalComissao * VarPercentualParcela)/100);
                  VarTotalComissao     := VarTotalComissao - VarValorComissao;
                  {$ENDREGION}

                  {$REGION 'Grava Comissão Ctas Pagar ou Tabela Comissões'}
                  if DMVenda.cdsConfig_VendaGRAVAR_COMISSAO_CTAS_PAGAR.AsInteger = 1 then
                    begin
                      DMVenda.cdsCtasPagar.Insert;
                      DMVenda.cdsCtasPagarCDCTAS_PAGAR.AsInteger    := Gerar_id('GEN_CTAS_PAGAR_ID');
                      DMVenda.cdsCtasPagarCDFORNECEDOR.AsInteger    := 0;
                      DMVenda.cdsCtasPagarNUMERO_DOCUMENTO.AsString := cdsPedidosCDPEDIDO.AsString+'/'+IntToStr(i);
                      DMVenda.cdsCtasPagarDESCRICAO.AsString        := 'Comissão Parcelada de Vendedor';
                      DMVenda.cdsCtasPagarVALOR.AsFloat             := VarValorComissao;
                      DMVenda.cdsCtasPagarVENCIMENTO.AsDateTime     := DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime;
                      DMvenda.cdsCtasPagarCADASTRADO_POR.AsString   := 'Sistema';
                      DMvenda.cdsCtasPagarLIQUIDADO.AsInteger       := 0;
                      DMvenda.cdsCtasPagar.Post;
                      DMvenda.cdsCtasPagar.ApplyUpdates(0);
                    end
                  else
                    begin
                      DMvenda.cdsComissao.Insert;
                      DMvenda.cdsComissaoCDCOMISSAO.AsInteger       := Gerar_id('GEN_COMISSOES_ID');
                      DMvenda.cdsComissaoCDVENDEDOR.AsInteger       := cdsPedidosCDVENDEDOR.AsInteger;
                      DMVenda.cdsComissaoCDPEDIDO.AsInteger         := cdsPedidosCDPEDIDO.AsInteger;
                      DMVenda.cdsComissaoDATA.AsDateTime            := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                      DMVenda.cdsComissaoVALOR.AsFloat              := VarValorComissao;
                      DMVenda.cdsComissaoVENCIMENTO.AsDateTime      := DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime;
                      DMVenda.cdsComissao.Post;
                      DMVenda.cdsComissao.ApplyUpdates(0);
                    end;
                  {$ENDREGION}
                end
              else//Pagar a Comissão de uma vez
                begin
                  if i = 1 then
                    begin
                      if DMVenda.cdsConfig_VendaGRAVAR_COMISSAO_CTAS_PAGAR.AsInteger = 1 then
                        begin
                          DMVenda.cdsCtasPagar.Insert;
                          DMVenda.cdsCtasPagarCDCTAS_PAGAR.AsInteger    := Gerar_id('GEN_CTAS_PAGAR_ID');
                          DMVenda.cdsCtasPagarCDFORNECEDOR.AsInteger    := 0;
                          DMVenda.cdsCtasPagarNUMERO_DOCUMENTO.AsString := cdsPedidosCDPEDIDO.AsString;
                          DMVenda.cdsCtasPagarDESCRICAO.AsString        := 'Comissão de Vendedor - '+DMVenda.cdsPedidosTmpVENDEDOR.AsString;
                          DMVenda.cdsCtasPagarVALOR.AsFloat             := VarTotalComissao;
                          DMVenda.cdsCtasPagarVENCIMENTO.AsDateTime     := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                          DMvenda.cdsCtasPagarCADASTRADO_POR.AsString   := 'Sistema';
                          DMvenda.cdsCtasPagarLIQUIDADO.AsInteger       := 0;
                          DMvenda.cdsCtasPagar.Post;
                          DMvenda.cdsCtasPagar.ApplyUpdates(0);
                        end
                      else
                        begin
                          DMvenda.cdsComissao.Insert;
                          DMvenda.cdsComissaoCDCOMISSAO.AsInteger       := Gerar_id('GEN_COMISSOES_ID');
                          DMvenda.cdsComissaoCDVENDEDOR.AsInteger       := cdsPedidosCDVENDEDOR.AsInteger;
                          DMVenda.cdsComissaoCDPEDIDO.AsInteger         := cdsPedidosCDPEDIDO.AsInteger;
                          DMVenda.cdsComissaoDATA.AsDateTime            := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                          DMVenda.cdsComissaoVALOR.AsFloat              := VarTotalComissao;
                          DMVenda.cdsComissaoVENCIMENTO.AsDateTime      := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                          DMVenda.cdsComissao.Post;
                          DMVenda.cdsComissao.ApplyUpdates(0);
                        end;
                    end;

                end;
            end;

          {$REGION 'Gravando o Pagamento'}
          DMVenda.cdsPedidosPag.Insert;
          DMVenda.cdsPedidosPagCDPEDIDOS_PAGAMENTO.AsInteger := Gerar_id('GEN_PEDIDOS_PAGAMENTO_ID');
          DMVenda.cdsPedidosPagCDPEDIDO.AsInteger            := cdsPedidosCDPEDIDO.AsInteger;
          DMVenda.cdsPedidosPagCDPAGAMENTO.AsInteger         := DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger;
          DMVenda.cdsPedidosPagVALOR_PAGO.AsFloat            := DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat;
          DMVenda.cdsPedidosPagDATA.AsDateTime               := DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsFloat;
          DMVenda.cdsPedidosPag.Post;
          DMVenda.cdsPedidosPag.ApplyUpdates(0);
          {$ENDREGION}

          {$REGION 'Gravando Contas a Receber'}
          if DMVenda.cdsTPGRAVA_CTAS_RECEBER.AsInteger = 1 then
            begin
              DMVenda.cdsReceber.Insert;
              DMVenda.cdsReceberCDCTAS_RECEBER.AsInteger := Gerar_id('GEN_CTAS_RECEBER_ID');
              DMVenda.cdsReceberCDPEDIDO.AsInteger       := cdsPedidosCDPEDIDO.AsInteger;
              DMVenda.cdsReceberDATA.AsDateTime          := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
              DMVenda.cdsReceberVALOR.AsFloat            := DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat;
              DMVenda.cdsReceberVENCIMENTO.AsDateTime    := DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime;
              DMVenda.cdsReceberTIPO_VENDA.AsString      := DMVenda.jvmPagamento.FieldByName('PAGAMENTO').AsString;

              if (DMVenda.cdsConfig_VendaMOSTRAR_OF.AsInteger = 1) and (StrToIntDef(MaskEditOF.Text,0)> 0 )  then
                begin
                  CdsPlcontas.Filtered := False;
                  cdsplcontas.Filter := 'CODIGO_EXTENDIDO  = '''+MaskEditOF.Text+''' ';
                  cdsPlContas.Filtered := True;
                  DMVenda.cdsReceberCDPLANO_CONTAS.AsInteger := cdsPlContasCDPLANO_CONTAS.AsInteger; //StrToInt(MaskEditOF.Text);
                end;

              DMVenda.cdsReceberPARCELA.AsInteger        := DMVenda.jvmPagamento.FieldByName('PARCELA').AsInteger;
              DMVenda.cdsReceber.Post;
              DMVenda.cdsReceber.ApplyUpdates(0);
            end;
          {$ENDREGION}

          {$REGION 'Gravando Conta Corrente'}
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select grava_cta_corrente ');
          qPesquisa.SQL.Add('from pagamentos ');
          qPesquisa.SQL.Add('where cdpagamento = '''+DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsString+''' ');
          qPesquisa.Active := True;

          if (qPesquisa.FieldByName('GRAVA_CTA_CORRENTE').AsInteger = 1) then
            begin
              qSoma.Active := False;
              qSoma.SQL.Clear;
              qSoma.SQL.Add('select (sum(conta_corrente.credito)- sum(conta_corrente.debito)) as saldo');
              qSoma.SQL.Add('from conta_corrente ');
              qSoma.SQL.Add('where conta_corrente.cdcliente = '''+cdsPedidosCDPEDIDO.AsString+''' ');
              qSoma.Active := True;

              DMVenda.cdsContaCliente.Open;
              DMVenda.cdsContaCliente.Insert;
              DMVenda.cdsContaClienteCDCONTA_CORRENTE.AsInteger := Gerar_id('GEN_CONTA_CORRENTE_ID');
              DMvenda.cdsContaClienteCDCLIENTE.AsInteger        := DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger;
              DMvenda.cdsContaClienteCDPEDIDO.AsInteger         := cdsPedidosCDPEDIDO.AsInteger;
              DMvenda.cdsContaClienteDATA.AsDateTime            := Date;
              DMvenda.cdsContaClienteDESCRICAO.AsString         := 'Compra Carteira';
              DMvenda.cdsContaClienteDEBITO.AsFloat             :=  DMVenda.jvmPagamento.FieldByName('VALOR_PAGO').AsFloat;
              DMvenda.cdsContaClienteCREDITO.AsFloat            := 0;
              DMvenda.cdsContaClienteSALDO.AsFloat              := DMVenda.jvmPagamento.FieldByName('VALOR_PAGO').AsFloat + qSoma.FieldByName('SALDO').AsFloat;
              DMvenda.cdsContaClienteCDUSUARIO.AsInteger        := 1;
              DMvenda.cdsContaCliente.ApplyUpdates(0);
            end;
          {$ENDREGION}

          DMVenda.jvmPagamento.Next;
        end;

      DMVenda.cdsCaixa.Open;
      DMVenda.cdsCaixa.Insert;
      DMVenda.cdsCaixaCDCAIXA.AsInteger        := Gerar_id('GEN_CAIXA_ID');
      DMVenda.cdsCaixaDATA.AsDateTime          := Date;
      DMVenda.cdsCaixaDESCRICAO.AsString       := 'Venda '+IntToStr(cdsPedidosCDPEDIDO.AsInteger);
      DMVenda.cdsCaixaCREDITO.AsFloat          := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat;
      DMVenda.cdsCaixaDEBITO.AsFloat           := 0;
      DMVenda.cdsCaixaNUMERO_PDV.AsInteger     := 1;
      DMVenda.cdsCaixaCDUSUARIO.AsInteger      := VarCodigoUsuario;
      //DMVenda.cdsCaixaCDMOVIMENTACAO.AsInteger := 1;
      DMVenda.cdsCaixaCDPEDIDO.AsInteger       := cdsPedidosCDPEDIDO.AsInteger;

      DMVenda.cdsCaixa.Post;
      DMVenda.cdsCaixa.ApplyUpdates(0);
      DMVenda.cdsItensTMP.First;

    end
  else
    if DMVenda.cdsPedidosTmpTIPO.AsString = 'O' then
      begin
        {$REGION 'Gravando o Pagamento'}
        DMVenda.jvmPagamento.First;
        for i := 1 to DMVenda.jvmPagamento.RecordCount do
          begin
            DMVenda.cdsPedidosPag.Insert;
            DMVenda.cdsPedidosPagCDPEDIDOS_PAGAMENTO.AsInteger := Gerar_id('GEN_PEDIDOS_PAGAMENTO_ID');
            DMVenda.cdsPedidosPagCDPEDIDO.AsInteger            := cdsPedidosCDPEDIDO.AsInteger;
            DMVenda.cdsPedidosPagCDPAGAMENTO.AsInteger         := DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger;
            DMVenda.cdsPedidosPagVALOR_PAGO.AsFloat            := DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat;
            DMVenda.cdsPedidosPagDATA.AsDateTime               := DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsFloat;
            DMVenda.cdsPedidosPag.Post;
            DMVenda.cdsPedidosPag.ApplyUpdates(0);

            DMVenda.jvmPagamento.Next;
          end;
        {$ENDREGION}
      end;

  MaskeditOF.Text    := '';
  MaskEditConta.Text := '';
  LimpaTabelasTemporarias;
end;

procedure TVendas2.BitBtnNovaVendaClick(Sender: TObject);
begin
  DMVenda.cdsPedidosTmp.Open;
  DMVenda.cdsItensTMP.Open;
  DMVenda.cdsConfig_Venda.Open;

  if  StrToBool(DMPrincipal.cdsParametrosCAMPO2.AsString)  then
    begin
      qPesquisa.Active := False;
      qPesquisa.SQL.Clear;
      qPesquisa.SQL.Add('SELECT * FROM CAIXA ');
      qPesquisa.SQL.Add('WHERE DATA =:DATA ');
      qPesquisa.Params.ParamByName('DATA').AsDateTime := Date;
      qPesquisa.Active := True;

      if qPesquisa.IsEmpty then
        begin
          Application.MessageBox('Caixa ainda Não foi aberto hoje.', 'Aviso.',MB_OK );
          Exit;
        end;
    end;


  if (DMVenda.cdsPedidosTmp.IsEmpty) then
    begin
      AcertaBotoesAbreVenda;
      edtCodProduto.ReadOnly      := False;
      edtValor.ReadOnly           := False;
      edtDesconto.ReadOnly        := False;
      edtQtd.ReadOnly             := False;
      wNumeroItem                 := 0;
      BitBtnCliente.Click;
      dbgProdutos.Visible   := True;
      PanelEsquerda.Enabled := True;
    end
  else
    begin
      AcertaBotoesAbreVenda;
      edtCodProduto.ReadOnly := False;
      edtValor.ReadOnly      := False;
      edtDesconto.ReadOnly   := False;
      edtQtd.ReadOnly        := False;
      dbgProdutos.Visible    := True;
      PanelEsquerda.Enabled  := True;
      DBgrid1.Visible        := True;
    end;


  if DMVenda.cdsConfig_VendaMOSTRAR_OF.AsInteger = 1 then
    MaskeditOF.SetFocus
  else
    edtCodProduto.SetFocus;
end;

procedure TVendas2.BitBtnProdutosClick(Sender: TObject);
begin
  ConsultaProdutoVenda := TConsultaProdutoVenda.Create(Application);
  ConsultaProdutoVenda.cdsProdutos.Open;
  ConsultaProdutoVenda.ShowModal;
  ConsultaProdutoVenda.Release;
  ConsultaProdutoVenda := nil;
end;

procedure TVendas2.BitBtnCaixaClick(Sender: TObject);
var
vPonto : TPoint;
begin
  vPonto := BitBtnCaixa.ClientToScreen(Point(0, BitBtnCaixa.Height));
  PopupMenu.Popup(vPonto.X, vPonto.Y);
end;

procedure TVendas2.BitBtnCancelaItemClick(Sender: TObject);
begin
  if not(DMVenda.cdsItensTMP.isEmpty) then
    begin
      if MessageBox(Application.Handle,PWideChar('Deseja Cancelar este Ítem?'),'Pergunta',mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
        begin
          DMVenda.cdsItensTMP.Delete;
          DMVenda.cdsItensTMP.ApplyUpdates(0);
          cdsProdutos.Filtered := False;
          cdsProdutos.Refresh;
          VarCancelandoItem  := True;
          edtValor.Text      := '0,00';
          edtQtd.Text        := '1';
          edtCodProduto.Text := '';
          edtCodProduto.SetFocus;
          AcertaValores;
        end;
    end;
end;

procedure TVendas2.BitBtnCancelaVendaClick(Sender: TObject);
var i : Integer;
begin
  if Application.MessageBox('Deseja Realmente Cancelar a Venda ?', 'Cancelamento de Venda',MB_YESNO) = mrYes then
    begin
      for i := 0 to DMVenda.cdsItensTMP.RecordCount -1 do
        begin
          DMVenda.cdsMovimenta.Insert;
          DMVenda.cdsMovimentaCDMOVIMENTO.AsInteger  := Gerar_id('GEN_MOVIMENTACAO_PRODUTO_ID');
          DMVenda.cdsMovimentaCDPRODUTO.AsInteger    := DMVenda.cdsItensTMPCDPRODUTO.AsInteger;
          DMVenda.cdsMovimentaDATA.AsDateTime        := Date;
          DMVenda.cdsMovimentaHORA.AsDateTime        := Time;
          DMVenda.cdsMovimentaMOVIMENTO.AsString     := ('Retorno da Venda');
          DMVenda.cdsMovimentaSALDO_ANTERIOR.AsFloat := 0;
          DMVenda.cdsMovimentaSAIDA.AsFloat          := DMVenda.cdsItensTMPQTD.AsFloat;
          DMVenda.cdsMovimentaSALDO_ATUAL.AsFloat    := DMVenda.cdsItensTMPQTD.AsFloat;
          DMVenda.cdsMovimentaCDUSUARIO.AsInteger    := VarCodigoUsuario;
          DMVenda.cdsMovimenta.Post;
          DMVenda.cdsMovimenta.ApplyUpdates(0);
          DMVenda.cdsItensTMP.Next;
        end;
      LimpaTabelasTemporarias;
      DBGrid1.Visible := False;
      AcertaBotoesFechaVenda;
      edtCodProduto.Text    := '';
      MaskEditOF.Text       := '';
      MaskEditConta.Text    := '';
      edtValor.Text         := '0,00';
      edtDesconto.Text      := '0,00';
      edtQtd.Text           := '1';
    end;
end;

procedure TVendas2.BitBtnClienteClick(Sender: TObject);
begin
  PesquisaClientes := TPesquisaClientes.Create(Application);
  PesquisaClientes.cdsClientes.Open;
  PesquisaClientes.BitBtnGeral.Click;
  if  PesquisaClientes.ShowModal <> mrOk then
    begin
      if DMVenda.cdsPedidosTmp.IsEmpty then
        begin
          DMVenda.cdsPedidosTmp.Insert;
          DMVenda.cdsPedidosTmpCDPEDIDO_TEMP.AsInteger := Gerar_id('GEN_PEDIDOS_TEMP_ID');
          DMVenda.cdsPedidosTmpNUMERO_PDV.AsInteger    := 1;//wCodigo_Usuario;
          DMVenda.cdsPedidosTmpSUBTOTAL.AsFloat        := 0;
          DMVenda.cdsPedidosTmpDESCONTO.AsFloat        := 0;
          DMVenda.cdsPedidosTmpACRESCIMO.AsFloat       := 0;
          DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat     := 0;
          DMVenda.cdsPedidosTmpNF_EMITIDA.AsInteger    := 0;
          DMVenda.cdsPedidosTmpCDUSUARIO.AsInteger     := 1;//wCodigo_Usuario;
          DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger     := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          //DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger     := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          DMVenda.cdsPedidosTmpCLIENTE.AsString        := PesquisaClientes.cdsClientesNOME.AsString;
          DMVenda.cdsPedidosTmpDATA.AsDateTime         := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
          DMVenda.cdsPedidosTmpHORA.AsDateTime         := DMPrincipal.cdsData.FieldByName('CURRENT_TIME').AsDateTime;
          DMVenda.cdsPedidosTmp.Post;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
        end
      else
        begin
          DMVenda.cdsPedidosTmp.Edit;
          DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          DMVenda.cdsPedidosTmpCLIENTE.AsString    := PesquisaClientes.cdsClientesNOME.AsString;
          DMVenda.cdsPedidosTmp.Post;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
        end;
    end;
  PesquisaClientes.Release;
  PesquisaClientes := nil;
end;

procedure TVendas2.BitBtnFinalizaVendaClick(Sender: TObject);
begin
  if not(DMVenda.cdsItensTMP.isEmpty) then
    begin
      Vendas_Pagamento := TVendas_Pagamento.Create(Application);
      DMVenda.jvmPagamento.Open;
      DMVenda.cdsTP.Open;
      Vendas_Pagamento.ShowModal;

      if Vendas_Pagamento.ModalResult = MROK then
        begin
          FreeandNil(Vendas_Pagamento);
          Finaliza;
          AcertaBotoesFechaVenda;
          cdsProdutos.Filtered := False;
          cdsProdutos.Refresh;
        end
      else
        if Vendas_Pagamento.ModalResult = mrCancel then
          begin
            FreeandNil(Vendas_Pagamento);
          end
        else
          if Vendas_Pagamento.ModalResult = mrClose then
            begin
              FreeandNil(Vendas_Pagamento);
            end;
    end;
end;

procedure TVendas2.BitBtnSairClick(Sender: TObject);
begin
  Close;
  Principal.CategoryPanelGroup1.Visible := True;
end;

procedure TVendas2.BitBtnVendedoresClick(Sender: TObject);
begin
  PesquisaVendedores := TPesquisaVendedores.Create(Application);
  if PesquisaVendedores.ShowModal <> mrOk then
    begin
      DMVenda.cdsPedidosTmp.Edit;
      DMVenda.cdsPedidosTmpCDVENDEDOR.AsInteger := PesquisaVendedores.cdsVendedorCDVENDEDOR.AsInteger;
      DMVenda.cdsPedidosTmpVENDEDOR.AsString    := PesquisaVendedores.cdsVendedorNOME.AsString;
      DMVenda.cdsPedidosTmp.Post;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);
    end;
  FreeAndNil(PesquisaVendedores);
end;

procedure TVendas2.BoletimdeCai1Click(Sender: TObject);
begin
  RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
  RelatorioBoletimCaixa.cdsCaixa.FetchParams;
  RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.cdsCaixa.Open;

  RelatorioBoletimCaixa.cdsResumo.FetchParams;
  RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.cdsResumo.Open;

  RelatorioBoletimCaixa.qTotal.Close;
  RelatorioBoletimCaixa.qTotal.Params.ParamByName('DATA').AsDate := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.qTotal.Open;

  RelatorioBoletimCaixa.QRLabelTituloResumo.Caption := 'Resumo das Vendas dia: ' + DateToStr(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
  RelatorioBoletimCaixa.MontaGrafico;
  RelatorioBoletimCaixa.QRCompositeReport1.Prepare;
  RelatorioBoletimCaixa.QRCompositeReport1.Preview;
  RelatorioBoletimCaixa.Release;
  RelatorioBoletimCaixa := nil;
end;

procedure TVendas2.BoletimdeCaixaSemGrfico1Click(Sender: TObject);
begin
  RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
  RelatorioBoletimCaixa.cdsCaixa.FetchParams;
  RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.cdsCaixa.Open;

  RelatorioBoletimCaixa.cdsResumo.FetchParams;
  RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.cdsResumo.Open;

  RelatorioBoletimCaixa.qTotal.Close;
  RelatorioBoletimCaixa.qTotal.Params.ParamByName('DATA').AsDate := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  RelatorioBoletimCaixa.qTotal.Open;

  RelatorioBoletimCaixa.QRLabelTituloResumo.Caption := 'Resumo das Vendas dia: ' + DateToStr(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);

  RelatorioBoletimCaixa.QRCompositeReport1.Prepare;
  RelatorioBoletimCaixa.QRCompositeReport1.Preview;
  RelatorioBoletimCaixa.Release;
  RelatorioBoletimCaixa := nil;
end;

procedure TVendas2.Vende;
begin
  //LabelProduto.Caption := cdsProdutosDESCRICAO.AsString;
  edtCodProduto.Text   := '';
  edtCodProduto.Text   := cdsProdutosDESCRICAO.AsString;
  edtValor.Text        := FloatToStrF(cdsProdutosVALOR_VENDA.AsFloat,ffNumber,15,2 );

  if DMVenda.cdsConfig_VendaPULAR_VALOR_UNITARIO_VENDA.AsInteger = 1 then
    begin
      if (edtDesconto.Visible) then
        begin
          EdtDesconto.SelectAll;
          EdtDesconto.SetFocus;
        end
      else
        begin
          edtQtd.SelectAll;
          edtQtd.SetFocus;
        end;
    end
  else
    begin
      edtValor.ReadOnly := False;
      edtValor.SelectAll;
      edtValor.SetFocus;
    end;
end;

procedure TVendas2.edtCodProdutoEnter(Sender: TObject);
begin
  cdsProdutos.Filtered := False;
  cdsProdutos.Refresh;
end;

procedure TVendas2.edtCodProdutoExit(Sender: TObject);
begin

  VarCancelandoItem := False;
  if edtCodProduto.Text <> '' then //Verifica se tem algo Digitado
    begin
      if not (edtCodProduto.ReadOnly) then //O Campo Código esta Ativo
        begin
          cdsProdutos.Filtered := False;
          cdsProdutos.Filter   := ('UPPER(CDINTERNO) = UPPER('''+Trim(edtCodProduto.Text)+''') ');
          cdsProdutos.Filtered := True;

          if not (cdsProdutos.IsEmpty) then
            begin
              Vende;
            end
          else
            begin
              cdsProdutos.Filtered := False;
              cdsProdutos.Filter   := (' CDBARRAS = '''+edtCodProduto.Text+''' ');
              cdsProdutos.Filtered := True;

              if not (cdsProdutos.IsEmpty) then
                begin
                  vende;
                end
              else
                begin
                  cdsProdutos.Filtered := False;
                  cdsProdutos.Filter   := (' UPPER(DESCRICAO) LIKE UPPER(''%'+edtCodProduto.Text+'%'') ');
                  cdsProdutos.Filtered := True;
                  if not (cdsProdutos.IsEmpty) then
                    begin
                      if cdsProdutos.RecordCount > 1 then
                        begin
                          dbgProdutos.Enabled := True;
                          dbgProdutos.Visible := True;
                          dbgProdutos.BringToFront;
                          dbgProdutos.SetFocus;
                        end
                      else
                        vende;
                    end
                  else
                    begin
                      cdsProdutos.Filtered := False;
                      dbgProdutos.SetFocus;
                    end;
                end;
            end;
        end;
    end
  else
    if dbgProdutos.CanFocus then
      dbgProdutos.SetFocus;
end;

procedure TVendas2.edtQtdExit(Sender: TObject);
var wValorVenda, wQtd : Real;
begin
  if StrToFloatDef(StringReplace(edtValor.Text, '.', '', [rfReplaceAll]), 0) <> 0 then
    begin
      wValorVenda                         := StrToFloatDef(StringReplace(edtValor.Text ,'.','',[rfReplaceAll]),0);
      wQtd                                := StrToFloat(edtQtd.Text);

      DMVenda.cdsItensTMP.Insert;
      DMVenda.cdsItensTMPCDPEDIDO_ITENS_TEMP.AsInteger := Gerar_id('GEN_PEDIDO_ITENS_TEMP_ID');
      DMVenda.cdsItensTMPCDPEDIDO_TEMP.AsInteger       := DMVenda.cdsPedidosTmpCDPEDIDO_TEMP.AsInteger;
      DMVenda.cdsItensTMPCDPRODUTO.AsInteger           := cdsProdutosCDPRODUTO.AsInteger;
      DMVenda.cdsItensTMPVALOR_UNITARIO.AsFloat        := wValorVenda;
      DMVenda.cdsItensTMPQTD.AsFloat                   := StrToFloat(edtQtd.Text);
      DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat           := wValorVenda * wQtd;
      DMVenda.cdsItensTMPSUBTOTAL.AsFloat              := wValorVenda * wQtd;
      DMVenda.cdsItensTMPDESCONTO.AsFloat              := StrToFloat(edtDesconto.Text);
      DMVenda.cdsItensTMPACRESCIMO.AsFloat             := 0;
      DMVenda.cdsItensTMPCONTADOR.AsInteger            := wNumeroItem + 1;
      DMVenda.cdsItensTMPDESCRICAO.AsString            := cdsProdutosDESCRICAO.AsString;
      DMVenda.cdsItensTMP.Post;
      DMVenda.cdsItensTMP.ApplyUpdates(0);
      wNumeroItem := wNumeroItem + 1;
      {$REGION ' Mostra Produto no Cupom'}
      if DMVenda.cdsConfig_VendaMOSTRAR_CUPOM_TELA.AsInteger = 1 then
        begin
          //Primeira linha Iten/Código/Descricao
//          MemoCupom.Lines.Add( fmLRString(IntToStr(wNumeroItem),3,True,'0')+'  '+
//                               cdsProdutosCDBARRAS.AsString                 +'  '+
//                               DMVenda.cdsItensTMPDESCRICAO.AsString);
//          //Segunda Linha Qtd/Undade/Valot Unit./Valor Total
//          MemoCupom.Lines.Add('     '                      + fmLRString(FloatToStr(wQtd),3,True,'0')+
//                              '       '                    + DMVenda.cdsItensTMPUNID_SAIDA.AsString +
//                              '    x    '                  + FloatToStrF(wValorVenda,ffNumber,15,2) +
//                              '                          ' + FloatToStrF(DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat,ffNumber,15,2));
        end;
      {$ENDREGION}

      DMVenda.cdsPedidosTmp.Edit;
      DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat + DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat;

      if (DMVenda.cdsConfig_VendaMOSTRAR_OF.AsInteger = 1) and (StrToIntDef(MaskEditOF.Text,0) <> 0) then
        begin
          CdsPlcontas.Filtered := False;
          cdsplcontas.Filter := 'CODIGO_EXTENDIDO  = '''+MaskEditOF.Text+''' ';
          cdsPlContas.Filtered := True;
          DMVenda.cdsPedidosTmpCDPLANO_CONTAS.AsInteger := cdsPlContasCDPLANO_CONTAS.AsInteger; //StrToInt(MaskEditOF.Text);
        end;

      if DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat < 0 then
        DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat := 0;

      DMVenda.cdsPedidosTmp.Post;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);

      {$REGION 'Grava Movimentação de Produtos'}
      if cdsProdutosSERVICO.AsInteger = 0 then
        begin
          DMVenda.cdsMovimenta.Insert;
          DMVenda.cdsMovimentaCDMOVIMENTO.AsInteger  := Gerar_id('GEN_MOVIMENTACAO_PRODUTO_ID');
          DMVenda.cdsMovimentaCDPRODUTO.AsInteger    := cdsProdutosCDPRODUTO.AsInteger;
          DMVenda.cdsMovimentaDATA.AsDateTime        := Date;
          DMVenda.cdsMovimentaHORA.AsDateTime        := Time;
          DMVenda.cdsMovimentaMOVIMENTO.AsString     := ('Saida para Venda');
          DMVenda.cdsMovimentaSALDO_ANTERIOR.AsFloat := cdsProdutosESTOQUE_QTD.AsFloat;
          DMVenda.cdsMovimentaSAIDA.AsFloat          := StrToFloat(edtQtd.Text);
          DMVenda.cdsMovimentaSALDO_ATUAL.AsFloat    := cdsProdutosESTOQUE_QTD.AsFloat - StrToFloat(edtQtd.Text);
          DMVenda.cdsMovimentaCDUSUARIO.AsInteger    := 1;
          DMVenda.cdsMovimenta.Post;
          DMVenda.cdsMovimenta.ApplyUpdates(0);
        end;
      {$ENDREGION}

      DBgrid1.Visible := True;
      edtCodProduto.Text := '';
      edtValor.Text      := '0,00';
      edtDesconto.Text   := '0';
      edtQtd.Text        := '1';
      edtCodProduto.SetFocus;
    end;
end;

procedure TVendas2.edtDescontoExit(Sender: TObject);
var  VarValorComDesconto : Real;
     VarValorSemDesconto : Real;
     VarValorDesconto : Real;
begin
  VarValorSemDesconto := StrToFloatDef(StringReplace(edtValor.Text ,'.','',[rfReplaceAll]),0);
  VarValorDesconto    := StrToFloatDef(StringReplace(edtDesconto.Text ,'.','',[rfReplaceAll]),0);
  VarValorComDesconto := VarValorSemDesconto - VarValorDesconto;
  edtValor.Text       := FloatToStrF(VarValorComDesconto,ffNumber,15,2);
end;

procedure TVendas2.edtDescontoKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas2.edtQtdKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas2.edtValorExit(Sender: TObject);
begin
  if (edtDesconto.Visible) then
    begin
      EdtDesconto.SelectAll;
      EdtDesconto.SetFocus;
    end
  else
    begin
      edtQtd.SelectAll;
      edtQtd.SetFocus;
    end;
end;

procedure TVendas2.edtValorKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas2.FormActivate(Sender: TObject);
begin
  DMVenda.cdsConfG.Open;
  DMVenda.cdsConFiscal.Open;
  DMVenda.cdsEmpresa.Open;
  DMVenda.cdsMovimenta.Open;
  DMVenda.cdsConfig_Venda.Open;
  DMVenda.cdsConfig_Venda.Refresh;
  DMVenda.cdsReceber.Open;
  DMVenda.cdsParcela.Open;
  DMVenda.cdsCtasPagar.Open;
  DMVenda.cdsComissao.Open;
  cdsPlContas.Open;
  cdsProdutos.Open;
  cdsClientes.Open;

  ThreadDataHora.Enabled := True;
  LabelData.Caption      := DateToStr(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
  LabelOperador.Caption  := VarNomeUsuario;

  if DMVenda.cdsConfig_VendaMOSTRAR_OF.AsInteger = 1 then
    begin
      LabelOF.Visible       := True;
      MaskeditOF.Visible    := True;
      MaskeditConta.Visible := True;
    end
  else
    begin
      LabelOF.Visible       := False;
      MaskeditOF.Visible    := False;
      MaskeditConta.Visible := False;
    end;

  // CAMPO2 da Tabela de Parametros indica se a Empresa é (Petshop/Mercado)
  //Que Necessita Fechamento de Abertura e Fechamento de Caixa
  if  StrToBool(DMPrincipal.cdsParametrosCAMPO2.AsString)  then
    begin
      BitBtnCaixa.Visible := True;
    end
  else
    begin
      BitBtnCaixa.Visible := False;
    end;

//  if DMVenda.cdsConfG.FieldByName('MOSTRAR_IMAGEM_VENDA').AsInteger = 1 then
//    CarregaImagemVenda;
//

  if DMVenda.cdsConfig_VendaMOSTRAR_DESCONTO_VENDA.AsInteger = 1 then
    begin
      LabelDesconto.Visible := True;
      edtDesconto.Visible   := True;
    end
  else
    begin
      LabelDesconto.Visible := False;
      edtDesconto.Visible   := False;
    end;

  PanelEsquerda.Enabled   := False;
  edtCodProduto.ReadOnly  := True;
  edtValor.ReadOnly       := True;
  edtDesconto.ReadOnly    := True;
  edtQtd.ReadOnly         := True;

  BitBtnCancelaItem.Enabled   := False;
  BitBtnCancelaVenda.Enabled  := False;
  BitBtnFinalizaVenda.Enabled := False;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnVendedores.Enabled    := False;
  BitBtnCliente.Enabled       := False;

  //Verifica se tem venda Aberta.
  VerificaVendaAberta;
end;

procedure TVendas2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVendas2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'MaskEditOF' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          TMaskedit(FindComponent(VarComponente)).Text := Trim(PesquisaPlanoContas.cdsPlContasCODIGO_EXTENDIDO.AsString);
          FreeAndNil(PesquisaPlanoContas);
        end;
    end;

  if Key = VK_F2 then
      BitBtnNovaVenda.Click
  else
    if Key = VK_F3 then
      BitBtnVendedores.Click
    else
      if Key = VK_F4 then
        BitBtnCliente.Click
      else
        if Key = VK_F5 then
          BitBtnProdutos.Click
        else
          if Key = VK_F6 then
            BitBtnCancelaItem.Click
          else
            if Key = VK_F7 then
              BitBtnCancelaVenda.Click
            else
              if Key = VK_F8 then
                BitBtnFinalizaVenda.Click
              else
                if Key = VK_F9 then

                else
                  if Key = VK_F9 then
                    Close;
end;

procedure TVendas2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    begin
      edtCodProduto.SetFocus;
    end;
end;

procedure TVendas2.MaskEditOFExit(Sender: TObject);
begin
  if Trim(MaskEditOF.Text) <> '' then
    begin
      CdsPlcontas.Filtered := False;
      cdsplcontas.Filter := 'CODIGO_EXTENDIDO  = '''+MaskEditOF.Text+''' ';
      cdsPlContas.Filtered := True;
      MaskEditConta.Text := cdsPlContasDESCRICAO_CONTA.AsString;
    end
  else
    edtCodProduto.SetFocus;
end;

procedure TVendas2.MaskEditOFKeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas2.ThreadDataHoraTimer(Sender: TObject);
begin
  LabelHora.Caption := TimeToStr(Time);
end;

end.

















































