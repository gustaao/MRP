unit Vendas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr,
  ExtCtrls, jpeg, JvComponentBase, JvThreadTimer, Buttons, JvExStdCtrls, JvMemo,
  Mask, DBCtrls, JvListBox, JvPlaylist, JvWavePlayer, MPlayer, Menus,
  JvExButtons, JvBitBtn;

type
  TVendas = class(TForm)
    ThreadDataHora: TJvThreadTimer;
    Shape7: TShape;
    PanelTopo: TPanel;
    Shape1: TShape;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    LabelData: TLabel;
    LabelHora: TLabel;
    PanelBotoes: TPanel;
    Shape4: TShape;
    BitBtnNovaVenda: TSpeedButton;
    BitBtnCliente: TSpeedButton;
    BitBtnProdutos: TSpeedButton;
    BitBtnCancelaItem: TSpeedButton;
    BitBtnCancelaVenda: TSpeedButton;
    BitBtnFinalizaVenda: TSpeedButton;
    BitBtnAberturaCaixa: TSpeedButton;
    BitBtnSair: TSpeedButton;
    PanelCorpo: TPanel;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    cdsClientesCDCLIENTE: TIntegerField;
    cdsClientesCDMASCOTE: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesDATA_CADASTRO: TDateField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesPNG: TIntegerField;
    cdsClientesEMAIL: TStringField;
    cdsClientesLIMITE_CREDITO: TSingleField;
    cdsClientesRESTRICAO: TIntegerField;
    cdsClientesTIPO_RESTRICAO: TStringField;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    qProdutos: TSQLQuery;
    cdsProdutos: TClientDataSet;
    cdsProdutosCDPRODUTO: TIntegerField;
    cdsProdutosCDFORNECEDOR: TIntegerField;
    cdsProdutosCDBARRAS: TStringField;
    cdsProdutosCDGRUPO: TIntegerField;
    cdsProdutosCDSUBGRUPO: TIntegerField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosVALOR_CUSTO: TSingleField;
    cdsProdutosVALOR_VENDA: TSingleField;
    cdsProdutosVALOR_CONTABIL: TSingleField;
    cdsProdutosMARGEM: TSingleField;
    cdsProdutosUNID_ENTRADA: TSingleField;
    cdsProdutosUNID_SAIDA: TSingleField;
    cdsProdutosSERVICO: TIntegerField;
    cdsProdutosIPI: TSingleField;
    cdsProdutosICMS: TSingleField;
    cdsProdutosCFOP: TStringField;
    cdsProdutosSIT_TRIBUTARIA: TStringField;
    cdsProdutosCOMISSAO: TSingleField;
    cdsProdutosDESCONTO: TSingleField;
    cdsProdutosQTD_DESCONTO: TSingleField;
    cdsProdutosAPLICACAO: TStringField;
    cdsProdutosTIPO_UN_ENTRADA: TStringField;
    cdsProdutosTIPO_UN_SAIDA: TStringField;
    cdsProdutosESTOQUE_QTD: TSingleField;
    cdsProdutosESTOQUE_MINIMO: TSingleField;
    cdsProdutosCDCENTRO_CUSTO: TIntegerField;
    cdsProdutosUSO_CONSUMO: TIntegerField;
    cdsProdutosMARCA: TStringField;
    cdsProdutosCDINTERNO: TStringField;
    dspProdutos: TDataSetProvider;
    dsProdutos: TDataSource;
    qPedidos: TSQLQuery;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCDUSUARIO: TIntegerField;
    cdsPedidosCDCLIENTE: TIntegerField;
    cdsPedidosDATA: TDateField;
    cdsPedidosHORA: TTimeField;
    cdsPedidosQTD: TSingleField;
    cdsPedidosVALOR_VENDA: TFMTBCDField;
    cdsPedidosSUBTOTAL: TFMTBCDField;
    cdsPedidosDESCONTO: TSingleField;
    cdsPedidosACRESCIMO: TSingleField;
    cdsPedidosVALORTOTAL: TFMTBCDField;
    cdsPedidosNF_EMITIDA: TIntegerField;
    cdsPedidosCDPAGAMENTO: TIntegerField;
    cdsPedidosVALOR_PAGO: TFMTBCDField;
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
    edtCodProduto: TEdit;
    Label1: TLabel;
    edtQtd: TEdit;
    Label8: TLabel;
    edtValor: TEdit;
    Label9: TLabel;
    edtDesconto: TEdit;
    LabelDesconto: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    dbgProdutos: TDBGrid;
    PanelGridProdutos: TPanel;
    DBGrid1: TDBGrid;
    MemoCupom: TJvMemo;
    Image1: TImage;
    cdsItensCDPEDIDO_ITENS: TIntegerField;
    cdsItensCDPEDIDO: TIntegerField;
    cdsItensCDPRODUTO: TIntegerField;
    cdsItensVALOR_UNITARIO: TFMTBCDField;
    cdsItensQTD: TSingleField;
    cdsItensVALOR_TOTAL: TFMTBCDField;
    cdsItensSUBTOTAL: TFMTBCDField;
    cdsItensDESCONTO: TSingleField;
    cdsItensACRESCIMO: TSingleField;
    cdsItensCDVENDEDOR: TIntegerField;
    cdsItensCONTADOR: TIntegerField;
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
    procedure BitBtnAberturaCaixaClick(Sender: TObject);
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
  end;

var
  Vendas: TVendas;
  wNumeroItem : Integer = 1;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, Vendas_Pagamento_p,
  PesquisaClientes_p, DMVenda_p, TelaAberturaCaixa_p, TelaCaixa_p,
   RelatorioBoletimCaixa_p, ConsultaProdutoVenda_p;

{$R *.dfm}


procedure TVendas.CarregaImagemVenda;
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

procedure TVendas.AcertaBotoesAbreVenda;
begin
  BitBtnNovaVenda.Enabled     := False;
  BitBtnSair.Enabled          := False;
  BitBtnCancelaItem.Enabled   := True;
  BitBtnCancelaVenda.Enabled  := True;
  BitBtnFinalizaVenda.Enabled := True;
  BitBtnCancelaItem.Enabled   := True;
  BitBtnCliente.Enabled       := True;
end;

procedure TVendas.AcertaBotoesFechaVenda;
begin
  BitBtnNovaVenda.Enabled     := True;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnCancelaVenda.Enabled  := False;
  BitBtnFinalizaVenda.Enabled := False;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnCliente.Enabled       := False;
  BitbtnSair.Enabled          := True;
end;



procedure TVendas.dbgProdutosExit(Sender: TObject);
begin
  //PanelCupom.SendToBack;
  //PanelCupom.Visible := False;
  edtCodProduto.Text := cdsProdutosDESCRICAO.AsString;
  edtValor.Text      := FormatFloat('###,###,#0.00',cdsProdutosVALOR_VENDA.AsFloat);
  edtQtd.SetFocus;
  dbgProdutos.Visible := False;

  //MemoCupom.Visible   := True;
end;

procedure TVendas.VerificaVendaAberta;
var i : Integer;
begin
  DMVenda.cdsPedidosTmp.Open;
  DMVenda.cdsItensTMP.Open;

  if not (DMVenda.cdsItensTMP.IsEmpty) then
    begin
      AbreVenda;
      DMVenda.cdsItensTMP.First;
      for i := 0 to DMVenda.cdsItensTMP.RecordCount -1 do
        begin
          BitBtnNovaVenda.Click;
          //Primeira linha Iten/Código/Descricao
          MemoCupom.Lines.Add( fmLRString(IntToStr(DMVenda.cdsItensTMPCONTADOR.AsInteger),3,True,'0')+'  '+
                               DMVenda.cdsItensTMPCDBARRAS.AsString                 +'  '+
                               DMVenda.cdsItensTMPDESCRICAO.AsString);
          //Segunda Linha Qtd/Undade/Valot Unit./Valor Total
          MemoCupom.Lines.Add('     '                      + fmLRString(FloatToStr(DMVenda.cdsItensTMPQTD.AsFloat),3,True,'0')+
                              '       '                    + DMVenda.cdsItensTMPUNID_SAIDA.AsString +
                              '    x    '                  + FloatToStrF(DMVenda.cdsItensTMPVALOR_UNITARIO.AsFloat,ffNumber,15,2) +
                              '                          ' + FloatToStrF(DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat,ffNumber,15,2));


          DMVenda.cdsItensTMP.Next;
        end;
    end
  else
    begin
      if not (DMVenda.cdsPedidosTmp.IsEmpty) then
        begin
          DMVenda.cdsPedidosTmp.Delete;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
        end;
    end;
end;

procedure TVendas.x1Click(Sender: TObject);
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

procedure TVendas.AbreVenda;
begin
  MemoCupom.Lines.Clear;
  MemoCupom.Lines.Add(DMVenda.cdsEmpresaRAZAO_SOCIAL.AsString);
  MemoCupom.Lines.Add(DMVenda.cdsEmpresaENDERECO.AsString      +' - '+ DMVenda.cdsEmpresaNUMERO.AsString );
  MemoCupom.Lines.Add(DMVenda.cdsEmpresaBAIRRO.AsString        +' '  + DMVenda.cdsEmpresaCIDADE.AsString + DMVenda.cdsEmpresaUF.AsString );
  MemoCupom.Lines.Add('CNPJ: '+DMVenda.cdsEmpresaCNPJ.AsString +'        IE:'+ DMVenda.cdsEmpresaIE.AsString );
  MemoCupom.Lines.Add('-------------------------------------------------------------------------');

  if DMVenda.cdsConFiscalIMPRESSORA_FICAL.AsInteger = 1 then
    MemoCupom.Lines.Add('-------------------------CUPOM FISCAL---------------------------------')
  else
    MemoCupom.Lines.Add('---------------------CUPOM NÃO FISCAL-------------------------');

  MemoCupom.Lines.Add('-------------------------------------------------------------------------');
  MemoCupom.Lines.Add('Item  Código   Descrição                                ');
  MemoCupom.Lines.Add('     Qtd.   UN.   VL.Unit(R$)  ST  IAT   VL.Item(R$)    ');
  MemoCupom.Lines.Add('-------------------------------------------------------------------------');
end;

procedure TVendas.Finaliza;
var i : Integer;
begin
  DMVenda.cdsPedidosPag.Open;
  cdsPedidos.Open;
  cdsItens.Open;
//  if Application.MessageBox('Deseja Finalizar esta Venda ?','Confirmar Finalização.',MB_YESNO) = mrYes then
//    begin
      cdsPedidos.Insert;
      cdsPedidosCDPEDIDO.AsInteger  := Gerar_id('GEN_PEDIDOS_ID');

      if DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger <> 0 then
        cdsPedidosCDCLIENTE.AsInteger := DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger;

      cdsPedidosDATA.AsDateTime     := Date;
      cdsPedidosSUBTOTAL.AsFloat    := DMVenda.cdsPedidosTmpSUBTOTAL.AsFloat;
      cdsPedidosDESCONTO.AsFloat    := DMVenda.cdsPedidosTmpDESCONTO.AsFloat;
      cdsPedidosVALORTOTAL.AsFloat  := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat;
      cdsPedidosHORA.AsDateTime     := Time;
      cdsPedidos.Post;
      cdsPedidos.ApplyUpdates(0);

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
          DMVenda.cdsItensTMP.Next;
        end;

      for i := 1 to DMVenda.jvmPagamento.RecordCount do
        begin
          DMVenda.cdsPedidosPag.Insert;
          DMVenda.cdsPedidosPagCDPEDIDOS_PAGAMENTO.AsInteger := Gerar_id('GEN_PEDIDOS_PAGAMENTO_ID');
          DMVenda.cdsPedidosPagCDPEDIDO.AsInteger            := cdsPedidosCDPEDIDO.AsInteger;
          DMVenda.cdsPedidosPagCDPAGAMENTO.AsInteger         := DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger;
          DMVenda.cdsPedidosPagVALOR_PAGO.AsFloat            := DMVenda.jvmPagamento.FieldByName('VALOR_PAGO').AsFloat;
          DMVenda.cdsPedidosPag.Post;
          DMVenda.cdsPedidosPag.ApplyUpdates(0);

          //3 Carteira
          if (DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger = 3) then
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
      DMVenda.cdsCaixaCDMOVIMENTACAO.AsInteger := 1;
      DMVenda.cdsCaixa.Post;
      DMVenda.cdsCaixa.ApplyUpdates(0);
      DMVenda.cdsItensTMP.First;

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
//    end;
  MemoCupom.Clear;
end;

procedure TVendas.BitBtnNovaVendaClick(Sender: TObject);
begin
  DMVenda.cdsPedidosTmp.Open;
  DMVenda.cdsItensTMP.Open;

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

  if DMVenda.cdsConfig_VendaMOSTRAR_CUPOM_TELA.AsInteger = 1 then
    begin
      MemoCupom.Visible := True;
      MemoCupom.BringToFront;
    end
  else
    MemoCupom.Visible := False;

  AcertaBotoesAbreVenda;

  edtCodProduto.ReadOnly      := False;
  edtValor.ReadOnly           := False;
  edtDesconto.ReadOnly        := False;
  edtQtd.ReadOnly             := False;

  wNumeroItem       := 0;

  DMVenda.cdsPedidosTmp.Insert;
  DMVenda.cdsPedidosTmpCDPEDIDO_TEMP.AsInteger := Gerar_id('GEN_PEDIDOS_TEMP_ID');
  DMVenda.cdsPedidosTmpNUMERO_PDV.AsInteger    := 1;//wCodigo_Usuario;
  DMVenda.cdsPedidosTmpSUBTOTAL.AsFloat        := 0;
  DMVenda.cdsPedidosTmpDESCONTO.AsFloat        := 0;
  DMVenda.cdsPedidosTmpACRESCIMO.AsFloat       := 0;
  DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat     := 0;
  DMVenda.cdsPedidosTmpNF_EMITIDA.AsInteger    := 0;
  DMVenda.cdsPedidosTmpCDUSUARIO.AsInteger     := 1;//wCodigo_Usuario;
  DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger     := 0;//PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
  DMVenda.cdsPedidosTmpCLIENTE.AsString        := 'Consumidor';//PesquisaClientes.cdsClientesAPELIDO.AsString;
  DMVenda.cdsPedidosTmpDATA.AsDateTime         := Date;
  DMVenda.cdsPedidosTmpHORA.AsDateTime         := Time;
  DMVenda.cdsPedidosTmp.Post;
  DMVenda.cdsPedidosTmp.ApplyUpdates(0);

  AbreVenda;
  PanelEsquerda.Enabled := True;
  edtCodProduto.SetFocus;
end;

procedure TVendas.BitBtnProdutosClick(Sender: TObject);
begin
  ConsultaProdutoVenda := TConsultaProdutoVenda.Create(Application);
  ConsultaProdutoVenda.cdsProdutos.Open;
  ConsultaProdutoVenda.ShowModal;
  ConsultaProdutoVenda.Release;
  ConsultaProdutoVenda := nil;


//  if not (dbgProdutos.Visible) then
//    begin
//      cdsProdutos.Close;
//      cdsProdutos.CommandText := ('select * from produtos order by descricao');
//      cdsProdutos.Open;
//      dbgProdutos.Visible := True;
//      dbgProdutos.BringToFront;
//      dbgProdutos.SetFocus;
//    end
//  else
//    begin
//      dbgProdutos.SendToBack;
//      dbgProdutos.Visible := False;
//    end;
end;

procedure TVendas.BitBtnAberturaCaixaClick(Sender: TObject);
begin
  //PopupMenu.Popup(BitBtnAberturaCaixa.Left, BitBtnAberturaCaixa.Top+BitBtnAberturaCaixa.Height);
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

procedure TVendas.BitBtnCancelaVendaClick(Sender: TObject);
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
          DMVenda.cdsMovimentaCDUSUARIO.AsInteger    := 1;
          DMVenda.cdsMovimenta.Post;
          DMVenda.cdsMovimenta.ApplyUpdates(0);

          DMVenda.cdsItensTMP.Delete;
          DMVenda.cdsItensTMP.ApplyUpdates(0);
          DMVenda.cdsItensTMP.Next;
        end;
      DMVenda.cdsPedidosTmp.Delete;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);
      DMVenda.jvmPagamento.EmptyTable;
      MemoCupom.Clear;
      DBGrid1.Visible := False;

      AcertaBotoesFechaVenda;
      PanelEsquerda.Enabled := False;
      edtCodProduto.Text    := '';
      edtValor.Text         := '0,00';
      edtDesconto.Text      := '0,00';
      edtQtd.Text           := '1';
    end;


end;

procedure TVendas.BitBtnClienteClick(Sender: TObject);
begin
  PesquisaClientes := TPesquisaClientes.Create(Application);
  PesquisaClientes.BitBtnGeral.Click;
  if  PesquisaClientes.ShowModal <> mrOk then
    begin
      DMVenda.cdsPedidosTmp.Edit;
      DMVenda.cdsPedidosTmpCDCLIENTE.AsInteger := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
      DMVenda.cdsPedidosTmpCLIENTE.AsString    := PesquisaClientes.cdsClientesAPELIDO.AsString;
      DMVenda.cdsPedidosTmp.Post;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);
    end;
  PesquisaClientes.Release;
  PesquisaClientes := nil;
end;

procedure TVendas.BitBtnFinalizaVendaClick(Sender: TObject);
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

procedure TVendas.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TVendas.BoletimdeCai1Click(Sender: TObject);
begin
  RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
  RelatorioBoletimCaixa.cdsCaixa.FetchParams;
  RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := Date;
  RelatorioBoletimCaixa.cdsCaixa.Open;

  RelatorioBoletimCaixa.cdsResumo.FetchParams;
  RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := Date;
  RelatorioBoletimCaixa.cdsResumo.Open;

  RelatorioBoletimCaixa.qTotal.Open;

  RelatorioBoletimCaixa.QRCompositeReport1.Prepare;
  RelatorioBoletimCaixa.QRCompositeReport1.Preview;
  RelatorioBoletimCaixa.Release;
  RelatorioBoletimCaixa := nil;
end;

procedure TVendas.Vende;
begin
  //LabelProduto.Caption := cdsProdutosDESCRICAO.AsString;
  edtCodProduto.Text   := '';
  edtValor.Text        := FloatToStrF(cdsProdutosVALOR_VENDA.AsFloat,ffNumber,15,2 );

  if DMVenda.cdsConfG.FieldByName('PULAR_VALOR_UNITARIO_VENDA').AsInteger = 1 then
    begin
      edtQtd.SelectAll;
      edtQtd.SetFocus;
    end
  else
    begin
      edtValor.SelectAll;
      edtValor.SetFocus;
    end;
end;

procedure TVendas.edtCodProdutoExit(Sender: TObject);
begin
  cdsProdutos.Close;
  //Verifica se tem algo Digitado
  if edtCodProduto.Text <> '' then
    begin
      //O Campo Código esta Ativo
      if not (edtCodProduto.ReadOnly) then
        begin
          cdsProdutos.Close;
          cdsProdutos.CommandText := ('select * from produtos '+
                                      'where (       produtos.cdinterno  =       '''+edtCodProduto.Text+''')  '+
                                      '   or (       produtos.cdbarras   =       '''+edtCodProduto.Text+''')  '+
                                      '   or ( upper(produtos.descricao) = upper('''+edtCodProduto.Text+''')) ');
          cdsProdutos.Open;

          if (cdsProdutos.IsEmpty) then
            begin
              cdsProdutos.Close;
              cdsProdutos.CommandText :=('select * from produtos '+'where upper(produtos.descricao) like upper(''%'+edtCodProduto.Text+'%'') ');
              cdsProdutos.Open;
            end;

          if (cdsProdutos.IsEmpty) then
            begin
              cdsProdutos.Close;
              cdsProdutos.CommandText := ('select * from produtos order by produtos.descricao');
              cdsProdutos.Open;
              //PanelCupom.Visible   := True;
              dbgProdutos.Visible  := True;

              //PanelCupom.BringToFront;
              dbgProdutos.SetFocus;
            end
          else
            if cdsProdutos.RecordCount > 1 then
              begin
                MemoCupom.Visible   := False;
                dbgProdutos.Enabled := True;
                dbgProdutos.Visible := True;
                dbgProdutos.BringToFront;
                dbgProdutos.SetFocus;
              end
            else
              Vende;
        end;
    end;
//  cdsProdutos.Close;
//  if edtCodProduto.Text <> '' then
//    begin
//      if not (edtCodProduto.ReadOnly) then
//        begin
//          //Pesquisando pelo Cód Interno
//          cdsProdutos.Close;
//          cdsProdutos.CommandText := ('select * from produtos where produtos.cdinterno = '''+edtCodProduto.Text+''' ');
//          cdsProdutos.Open;
//          //Pesquisando pelo Código de Barras
//          if (cdsProdutos.IsEmpty) or (cdsProdutos.Active = False) then
//            begin
//              cdsProdutos.Close;
//              cdsProdutos.CommandText := ('select * from produtos where produtos.cdbarras = '''+edtCodProduto.Text+''' ');
//              cdsProdutos.Open;
//
//              //Pesquisando pela Descricação
//              if cdsProdutos.IsEmpty then
//                begin
//                  cdsProdutos.Close;
//                  cdsProdutos.CommandText := ('select * from produtos where upper (produtos.descricao) like upper('''+edtCodProduto.Text+''') ');
//                  cdsProdutos.Open;
//
//                  if (cdsProdutos.IsEmpty) then
//                    begin
//                      cdsProdutos.Close;
//                      cdsProdutos.CommandText := ('select * from produtos where upper (produtos.descricao) like upper('''+edtCodProduto.Text+'%'') ');
//                      cdsProdutos.Open;
//                    end;
//
//                  if (cdsProdutos.IsEmpty) then
//                    begin
//                      cdsProdutos.Close;
//                      cdsProdutos.CommandText := ('select * from produtos order by produtos.descricao');
//                      cdsProdutos.Open;
//                      PanelCupom.Visible   := True;
//                      dbgProdutos.Visible  := True;
//
//                      PanelCupom.BringToFront;
//                      dbgProdutos.SetFocus;
//                    end
//                  else
//                    if cdsProdutos.RecordCount > 1 then
//                      begin
//                        MemoCupom.Visible   := False;
//                        dbgProdutos.Visible := True;
//                        dbgProdutos.BringToFront;
//                        dbgProdutos.SetFocus;
//                      end
//                    else
//                      Vende;
//                end
//              else
//                Vende
//            end
//          else
//            Vende;
//        end;
//    end;
end;

procedure TVendas.edtDescontoKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas.edtQtdExit(Sender: TObject);
var wValorVenda, wQtd : Real;
begin
  if StrToFloatDef(edtValor.Text,0)<> 0 then
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
          MemoCupom.Lines.Add( fmLRString(IntToStr(wNumeroItem),3,True,'0')+'  '+
                               cdsProdutosCDBARRAS.AsString                 +'  '+
                               DMVenda.cdsItensTMPDESCRICAO.AsString);
          //Segunda Linha Qtd/Undade/Valot Unit./Valor Total
          MemoCupom.Lines.Add('     '                      + fmLRString(FloatToStr(wQtd),3,True,'0')+
                              '       '                    + DMVenda.cdsItensTMPUNID_SAIDA.AsString +
                              '    x    '                  + FloatToStrF(wValorVenda,ffNumber,15,2) +
                              '                          ' + FloatToStrF(DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat,ffNumber,15,2));
        end;
      {$ENDREGION}

      DMVenda.cdsPedidosTmp.Edit;
      DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat + DMVenda.cdsItensTMPVALOR_TOTAL.AsFloat;

      if DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat < 0 then
        DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat := 0;

      DMVenda.cdsPedidosTmp.Post;
      DMVenda.cdsPedidosTmp.ApplyUpdates(0);

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

      DBgrid1.Visible := True;
      edtCodProduto.Text := '';
      edtValor.Text      := '0,00';
      edtDesconto.Text   := '0';
      edtQtd.Text        := '1';
      edtCodProduto.SetFocus;

    end;

end;

procedure TVendas.edtQtdKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas.edtValorKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas.FormActivate(Sender: TObject);
begin
  DMVenda.cdsConfG.Open;
  DMVenda.cdsConFiscal.Open;
  DMVenda.cdsEmpresa.Open;
  DMVenda.cdsMovimenta.Open;
  cdsProdutos.Open;
  cdsClientes.Open;

  ThreadDataHora.Enabled := True;
  LabelData.Caption      := DateToStr(Date);

  if DMVenda.cdsConfG.FieldByName('MOSTRAR_IMAGEM_VENDA').AsInteger = 1 then
    CarregaImagemVenda;

  if DMVenda.cdsConfG.FieldByName('MOSTRAR_DESCONTO_VENDA').AsInteger = 1 then
    begin
      LabelDesconto.Visible := True;
      edtDesconto.Visible   := True;
    end
  else
    begin
      LabelDesconto.Visible := False;
      edtDesconto.Visible   := False;
    end;

  PanelEsquerda.Enabled := False;

  edtCodProduto.ReadOnly  := True;
  edtValor.ReadOnly       := True;
  edtDesconto.ReadOnly    := True;
  edtQtd.ReadOnly         := True;

  BitBtnCancelaItem.Enabled   := False;
  BitBtnCancelaVenda.Enabled  := False;
  BitBtnFinalizaVenda.Enabled := False;
  BitBtnCancelaItem.Enabled   := False;
  BitBtnCliente.Enabled       := False;

  //Verifica se tem venda Aberta.
  VerificaVendaAberta;

end;

procedure TVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
      BitBtnNovaVenda.Click
  else
    if Key = VK_F2 then
      BitBtnCliente.Click
    else
      if Key = VK_F3 then
        BitBtnProdutos.Click
      else
        if Key = VK_F4 then
          BitBtnCancelaItem.Click
        else
          if Key = VK_F5 then
            BitBtnCancelaVenda.Click
          else
            if Key = VK_F6 then
              BitBtnFinalizaVenda.Click
            else
              if Key = VK_F7 then
                BitBtnAberturaCaixa.Click
              else
                if Key = VK_F8 then
                  Close;
end;

procedure TVendas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TVendas.ThreadDataHoraTimer(Sender: TObject);
begin
  LabelHora.Caption := TimeToStr(Time);
end;

end.

















































