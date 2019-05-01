unit TelaGeracaoNF_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, JvExControls, JvXPCore, JvXPButtons, Mask, Grids, DBGrids, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls, DateUtils, JvExMask, JvToolEdit, JvDBControls, JvExButtons, JvBitBtn, JvNavigationPane, MidasLib, ACBrBase, ACBrDFe, ACBrNFe, JvImageSquare, IBDatabase, IBCustomDataSet, IBQuery, pcnConversaoNFe;

type
  TTelaGeracaoNF = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label7: TLabel;
    Label9: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelHomologacao: TJvNavPanelHeader;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    Label26: TLabel;
    MaskEditDataI: TMaskEdit;
    MaskEditDataF: TMaskEdit;
    ACBrNFe1: TACBrNFe;
    Label27: TLabel;
    Label28: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtnGerarXML: TJvBitBtn;
    BitBtnEnviarXML: TJvBitBtn;
    CheckBoxCobraFrete: TCheckBox;
    JvNavPanelHeader1: TJvNavPanelHeader;
    PanelCampos: TScrollBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label25: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label48: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    MaskEditPedidoCliente: TMaskEdit;
    DBEdit32: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBox6: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label35: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    SpeedButtonGravar: TSpeedButton;
    SpeedButtonIncluir: TSpeedButton;
    SpeedButtonExcluir: TSpeedButton;
    SpeedButtonCancelar: TSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    GroupBoxGridItens: TGroupBox;
    DBEdit7: TDBEdit;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label6: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit16: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    GroupBoxNFe: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit31: TDBEdit;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure dspNFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
    procedure dspNFIGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
    procedure DBEdit15Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure BitBtnGerarXMLClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnEnviarXMLClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure etfEdit33Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure SpeedButtonGravarClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure SpeedButtonIncluirClick(Sender: TObject);
    procedure SpeedButtonExcluirClick(Sender: TObject);
    procedure SpeedButtonCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure CalculaValotTotalNFe;
    procedure Consiste;
    procedure ConsisteCadastroCliente;
  end;

var
  TelaGeracaoNF: TTelaGeracaoNF;
  VarComponente: string;

implementation

uses
  Principal_p, DMPrincipal_p, Funcoes_p, PesquisaTransportadores_p, PesquisaNaturezaOperacao_p, PerguntaNFE_p, pcnConversao, pcnNFe, pcnNFeW, TelaNFE_p, PesquisaFornecedores_p, DMNFE_p;

{$R *.dfm}

procedure TTelaGeracaoNF.ConsisteCadastroCliente;
var Erro : String;
begin
  Erro := '';

  if Trim(DMNFE.cdsNFCPF_CNPJ.AsString) = '' then
    Erro := Erro + ' ==> CPF/CNPJ do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFIE_RG.AsString) = '' then
    Erro := Erro + ' ==> RG/Inscr. EStadual do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFENDERECO.AsString) = '' then
    Erro := Erro + ' ==> Endereço do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFNUMERO.AsString) = '' then
    Erro := Erro + ' ==> Número do Endereço do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFBAIRRO.AsString) = '' then
    Erro := Erro + ' ==> Bairro do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFCIDADE.AsString) = '' then
    Erro := Erro + ' ==> Cidade do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFCIDADE.AsString) = '' then
    Erro := Erro + ' ==> Cidade do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFCEP.AsString) = '' then
    Erro := Erro + ' ==> Cidade do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFUF.AsString) = '' then
    Erro := Erro + ' ==> Estado do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFCOD_IBGE.AsString) = '' then
    Erro := Erro + ' ==> Código do IBGE da Cidade do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFCOD_PAIS.AsString) = '' then
    Erro := Erro + ' ==> Código do IBGE do País do Cliente Não Cadastrado.'#13;

  if Trim(DMNFE.cdsNFPAIS.AsString) = '' then
    Erro := Erro + ' ==> País do Cliente Não Cadastrado.'#13;

  if Trim(Erro) <> '' then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: As(s) Seguinte(s) Inconsistência(s) Foi/Foram Encontrada(s): '#13#13+ Erro +#13' Favor Corrigir para Continuar.'),'Aviso',mb_OK);
      Abort;
    end;
end;

procedure TTelaGeracaoNF.Consiste;
var Erro : String;
begin
  Erro := '';
  if DMNFE.cdsNFCDTRANSP.AsInteger <> 0 then
    begin
      if Trim(DMNFE.cdsNFPLACA.AsString) = '' then
        Erro := Erro + ' ==> Digite a Placa do Veículo do Transportador.'#13;

      if Trim(DMNFE.cdsNFESTADO_PLACA.AsString) = '' then
        Erro := Erro + ' ==> Digite a UF DA Placa do Veículo do Transportador.'#13;
    end;

  if Trim(Erro) <> '' then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: As(s) Seguinte(s) Inconsistência(s) Foi/Foram Encontrada(s): '#13#13+ Erro +#13' Favor Corrigir para Continuar.'),'Aviso',mb_OK);
      Abort;
    end;
end;

procedure TTelaGeracaoNF.Browse;
begin
  BitBtnIncluir.Enabled := True;
  BitBtnAlterar.Enabled := True;
  BitBtnGravar.Enabled := False;
  BitBtnExcluir.Enabled := True;
  BitBtnSair.Enabled := True;
  BitBtnCancelar.Enabled := False;
  GroupBox2.Enabled := False;
  GroupBox6.Enabled := False;
  GroupBox4.Enabled := False;
  GroupBoxNFe.Enabled := True;
  BitBtnGerarXML.Enabled := True;
  BitBtnEnviarXML.Enabled := True;
end;

procedure TTelaGeracaoNF.Insert;
begin
  BitBtnIncluir.Enabled := False;
  BitBtnAlterar.Enabled := False;
  BitBtnExcluir.Enabled := False;
  BitBtnGravar.Enabled := True;
  BitBtnSair.Enabled := False;
  BitBtnCancelar.Enabled := True;
  GroupBox2.Enabled := True;
  GroupBox6.Enabled := True;
  GroupBox4.Enabled := True;
  GroupBoxNFe.Enabled := False;
  BitBtnGerarXML.Enabled := False;
  BitBtnEnviarXML.Enabled := False;
end;

procedure TTelaGeracaoNF.CalculaValotTotalNFe;
begin
  if DMNFE.cdsNF.State in [dsInsert, dsEdit] then
  begin
    DMNFE.cdsNFVLTOTNF.AsFloat := DMNFE.cdsNFVLTOTMER.AsFloat + DMNFE.cdsNFVLTOTFRE.AsFloat + DMNFE.cdsNFVLSEGURO.AsFloat - DMNFE.cdsNFVLDESC.AsFloat + DMNFE.cdsNFVLOUTRAS_DESPESAS.AsFloat + DMNFE.cdsNFVLTOTIPI.AsFloat;
  end;
end;

procedure TTelaGeracaoNF.RadioGroupPesquisaClick(Sender: TObject);
begin
  case RadioGroupPesquisa.ItemIndex of

    0..2:
      begin
        MaskEditPesquisa.Enabled := True;
        MaskEditPesquisa.TabStop := True;
        Label1.Enabled := False;
        MaskEditDataI.Enabled := False;
        MaskEditDataI.TabStop := False;
        Label2.Enabled := False;
        MaskEditDataF.Enabled := False;
        MaskEditDataF.TabStop := False;
        MaskEditPesquisa.SetFocus;
      end;
    3:
      begin
        MaskEditPesquisa.Enabled := False;
        MaskEditPesquisa.TabStop := False;
        Label1.Enabled := True;
        MaskEditDataI.Enabled := True;
        MaskEditDataI.TabStop := True;
        Label2.Enabled := True;
        MaskEditDataF.Enabled := True;
        MaskEditDataF.TabStop := True;
        MaskEditDataI.SetFocus;
      end;
  end;
end;

procedure TTelaGeracaoNF.SpeedButtonCancelarClick(Sender: TObject);
begin
//  DMNFE.cdsNFI.Cancel;
//  SpeedButtonExcluir.Enabled := True;
//  SpeedButtonIncluir.Enabled := True;
//  SpeedButtonCancelar.Enabled := False;
//  SpeedButtonGravar.Enabled := False;
end;

procedure TTelaGeracaoNF.SpeedButtonExcluirClick(Sender: TObject);
begin
//  DMNFE.cdsNFI.Delete;
//  SpeedButtonExcluir.Enabled := True;
//  SpeedButtonIncluir.Enabled := True;
//  SpeedButtonCancelar.Enabled := False;
//  SpeedButtonGravar.Enabled := False;
end;

procedure TTelaGeracaoNF.SpeedButtonGravarClick(Sender: TObject);
//var
//  VarTotalMercadoria, VarTotalNota, VarBaseCalculo, VarValorICMS, VarValorIPI: Real;
//  i: Integer;
begin
//  VarTotalMercadoria := 0;
//  VarTotalNota := 0;
//  VarBaseCalculo := 0;
//  VarValorICMS := 0;
//  VarValorIPI := 0;
//
//  case Application.MessageBox('Produto da Devolução Gravado com Sucesso.' + #13#10 + 'Deseja Incluir outro Produto nesta NFe de Devolução ?', 'Atenção', MB_YESNO + MB_ICONWARNING) of
//    IDYES:
//      begin
//        DBEdit8.SetFocus;
//      end;
//    IDNO:
//      begin
//             //Valor Total Mercadoria
//        DMNFE.cdsNFI.Filtered := False;
//        DMNFE.cdsNFI.Filter := ('CDNF = ''' + DMNFE.cdsNFCDNF.AsString + ''' ');
//        DMNFE.cdsNFI.Filtered := True;
//
//        for i := 0 to DMNFE.cdsNFI.RecordCount - 1 do
//          begin
//            VarTotalMercadoria := VarTotalMercadoria + DMNFE.cdsNFIVLTOTAL.AsFloat;
//            VarValorICMS       := VarValorICMS       + DMNFE.cdsNFIVLTOTICM.AsFloat;
//            VarValorIPI        := VarValorIPI        + DMNFE.cdsNFIVLTOTIPI.AsFloat;
//          end;
//        DMNFE.cdsNFBASEIPI.AsFloat   := VarTotalMercadoria;
//        DMNFE.cdsNFVLTOTMER.AsFloat  := VarTotalMercadoria;
//        DMNFE.cdsNFVLTOTIPI.AsFloat  := VarValorIPI;
//        DMNFE.cdsNFVLTOTICMS.AsFloat := VarValorICMS;
//        DMNFE.cdsNFBASEICMS.AsFloat  := VarTotalMercadoria;
//      end;
//
//  end;
//  DMNFE.cdsNFI.Post;
//  SpeedButtonExcluir.Enabled := True;
//  SpeedButtonIncluir.Enabled := True;
//  SpeedButtonCancelar.Enabled := False;
//  SpeedButtonGravar.Enabled := False;
end;

procedure TTelaGeracaoNF.SpeedButtonIncluirClick(Sender: TObject);
begin
//  DBEdit8.ReadOnly  := False;
//  DBEdit13.ReadOnly := False;
//  DBEdit24.ReadOnly := False;
//  DBEdit35.ReadOnly := False;
//  DBEdit25.ReadOnly := False;
//  DBEdit36.ReadOnly := False;
//  DBEdit27.ReadOnly := False;
//  DBEdit26.ReadOnly := False;
//  DBEdit30.ReadOnly := False;
//  DBEdit40.ReadOnly := False;
//  DBEdit41.ReadOnly := False;
//  DBEdit37.ReadOnly := False;
//  DBEdit38.ReadOnly := False;
//  DBEdit39.ReadOnly := False;
//
//  if cdsNFI.State = dsBrowse then
//    cdsNFI.Insert;
//
//  SpeedButtonExcluir.Enabled := False;
//  SpeedButtonIncluir.Enabled := False;
//  SpeedButtonCancelar.Enabled := True;
//  SpeedButtonGravar.Enabled := True;
end;

procedure TTelaGeracaoNF.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMNFE.cdsNF.Edit;
end;

procedure TTelaGeracaoNF.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMNFE.cdsNF.Cancel;
end;

procedure TTelaGeracaoNF.BitBtnEnviarXMLClick(Sender: TObject);
begin
  TelaNFe := TTelaNFe.Create(Application);
  TelaNFe.Show;
end;

procedure TTelaGeracaoNF.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMNFE.cdsNF.IsEmpty then
  begin
    Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.', MB_OK);
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Excluir este Registro ?', 'Confirmar Exclusão.', MB_YESNO) = mrYes then
    begin
      DMNFE.cdsNF.Delete;
      DMNFE.cdsNF.ApplyUpdates(0);
    end;
  end;
end;

procedure TTelaGeracaoNF.BitBtnGeralClick(Sender: TObject);
var VarQuery : String;
begin
  DMNFE.cdsNF.DisableControls;
  VarQuery := ('select nf.cdnf, nf.nrnf, nf.serie, nf.dtemisnf, nf.hora_emissao, nf.baseicmsubst, '+
               '       nf.tpdocto, nf.cdpedido, nf.cdcliente, nf.dtsaida, nf.vltotmer,            '+
               '       nf.baseipi, nf.vltotipi,nf.vltotnf,nf.vldesc, nf.pcdesc, nf.vltoticmsubst, '+
               '       nf.vlcomis,nf.cdvended,nf.baseicms,nf.pcicms,nf.vltoticms,natuope.descrnat,'+
               '       nf.cdobsfis, nf.obs_fiscal, nf.cst_ipi, nf.enquadramento_ipi, nf.especie,  '+
               '       nf.quantida, nf.cdnatope, nf.cdtransp, nf.fretec, nf.tipo_tranporte,       '+
               '       nf.placa, nf.estado_placa, nf.pcfrete, nf.vltotfre, nf.pesoliqt,           '+
               '       nf.pesobrut, nf.usuario, nf.indstat, nf.fatura, nf.vldev, nf.icmsfrete,    '+
               '       nf.clifor, nf.vltotservico, nf.vltotiss, nf.valor_total_pis, nf.marca,     '+
               '       nf.valor_total_cofins, nf.referencia_nc, nf.valor_diferimento, nf.chave,   '+
               '       nf.tpemis, nf.versao_nfe, nf.data_cancelamento, nf.refnf, nf.ufembarq,     '+
               '       nf.xlocembarq, nf.resultado_nfe, nf.protocolo_nfe, nf.canhoto_ok,          '+
               '       nf.nrevento, nf.referencia_nf_devolucao, nf.nf_entrada, nf.epec_conciliado,'+
               '       nf.codigo_para_chave_nfe, nf.vlseguro, nf.vloutras_despesas, nf.cdantt,    '+
               '       transportadores.nome as transportador,                                                  '+
               '       transportadores.cpf_cnpj as Transp_cpf_cnpj,                                            '+
               '       transportadores.rg_ie as transp_rg_ie,                                                  '+
               '       transportadores.endereco as transp_endereco,                                            '+
               '       transportadores.numero as transp_numero,                                                '+
               '       Transportadores.cidade as transp_cidade,                                                '+
               '       Transportadores.uf as transp_uf,                                                        '+
               '       Transportadores.tipo_pessoa as transp_tipo_pessoa,                                      '+
               '       vendedores.nome as vendedor,                                                            '+
               '       case when nf.cdcliente is null then ''Consumidor''                                      '+
               '       else ( select nome from ( select c.nome,c.cdpessoa from clientes c union                '+
               '       select f.nome, f.cdpessoa from fornecedores f union                                     '+
               '       select t.nome, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente )                                                         '+
               '       end as cliente,                                                                         '+
               '       ( select cpf_cnpj from ( select c.cpf_cnpj, c.cdpessoa from clientes c union            '+
               '       select f.cpf_cnpj, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cpf_cnpj, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cpf_cnpj,                                            '+
               '       ( select ie_rg from ( select c.ie_rg, c.cdpessoa from clientes c union                  '+
               '       select f.rg_ie, f.cdpessoa from fornecedores f union                                    '+
               '       select t.rg_ie, t.cdpessoa from transportadores t)                                      '+
               '       where cdpessoa = nf.cdcliente ) as ie_rg,                                               '+
               '       ( select endereco from ( select c.endereco, c.cdpessoa from clientes c union            '+
               '       select f.endereco, f.cdpessoa from fornecedores f union                                 '+
               '       select t.endereco, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as endereco,                                            '+
               '       ( select numero from ( select c.numero , c.cdpessoa from clientes c union               '+
               '       select f.numero, f.cdpessoa from fornecedores f union                                   '+
               '       select t.numero, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as numero,                                              '+
               '       ( select bairro from ( select c.bairro, c.cdpessoa from clientes c union                '+
               '       select f.bairro, f.cdpessoa from fornecedores f union                                   '+
               '       select t.bairro, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as bairro,                                              '+
               '       ( select cidade from ( select c.cidade, c.cdpessoa from clientes c union                '+
               '       select f.cidade, f.cdpessoa from fornecedores f union                                   '+
               '       select t.cidade, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as cidade,                                              '+
               '       ( select cep from ( select c.cep, c.cdpessoa from clientes c union                      '+
               '       select f.cep, f.cdpessoa from fornecedores f union                                      '+
               '       select t.cep, t.cdpessoa from transportadores t)                                        '+
               '       where cdpessoa = nf.cdcliente ) as cep,                                                 '+
               '       ( select uf from ( select c.uf, c.cdpessoa from clientes c union                        '+
               '       select f.uf, f.cdpessoa from fornecedores f union                                       '+
               '       select t.uf, t.cdpessoa from transportadores t)                                         '+
               '       where cdpessoa = nf.cdcliente ) as uf,                                                  '+
               '       ( select cod_ibge from ( select c.cod_ibge, c.cdpessoa from clientes c union            '+
               '       select f.cod_ibge, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cod_ibge, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cod_ibge,                                            '+
               '       ( select cod_pais from ( select c.cod_pais, c.cdpessoa from clientes c union            '+
               '       select f.cod_pais, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cod_pais, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cod_pais,                                            '+
               '       ( select pais from ( select c.pais, c.cdpessoa from clientes c union                    '+
               '       select f.pais, f.cdpessoa from fornecedores f union                                     '+
               '       select t.pais, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente ) as pais,                                                '+
               '       ( select fone from ( select c.fone, c.cdpessoa from clientes c union                    '+
               '       select f.fone, f.cdpessoa from fornecedores f union                                     '+
               '       select t.fone, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente) as fone,                                                 '+
               '       ( select tipo_pessoa from ( select c.tipo_pessoa, c.cdpessoa from clientes c union      '+
               '       select f.tipo_pessoa, f.cdpessoa from fornecedores f union                              '+
               '       select t.tipo_pessoa, t.cdpessoa from transportadores t)                                '+
               '       where cdpessoa = nf.cdcliente ) as tipo_pessoa,                                         '+
               '       ( select email_nfe from ( select c.email_nfe, c.cdpessoa from clientes c union          '+
               '       select f.email_nfe, f.cdpessoa from fornecedores f union                                '+
               '       select t.email_nfe, t.cdpessoa from transportadores t)                                  '+
               '       where cdpessoa = nf.cdcliente ) as email_nfe                                            '+
               '       from nf                                                                                 '+
               '       left join natuope on natuope.cdnatope = nf.cdnatope                                     '+
               '       left join transportadores on transportadores.cdtransportador = nf.cdtransp              '+
               '       left join vendedores on vendedores.cdvendedor = nf.cdvended                             '+
               '       left join pedidos on pedidos.cdpedido = nf.cdpedido                                     '+
               '       left join clientes on     (clientes.cdpessoa = pedidos.cdcliente and nf.clifor = ''C'') '+
               '       left join fornecedores on (fornecedores.cdpessoa = nf.cdcliente and nf.clifor = ''F'')  '+
               '       left join transportadores t on (t.cdpessoa = nf.cdcliente and nf.clifor = ''T'')        '+
               '       order by nf.nrnf desc ');

  DMNFE.cdsNF.Close;
  DMNFE.cdsNF.CommandText := VarQuery;
  DMNFE.cdsNF.Open;
  DMNFE.cdsNF.EnableControls;
end;

procedure TTelaGeracaoNF.BitBtnGerarXMLClick(Sender: TObject);
var
  NFe: TNFe;
  NFeW: TNFeW;
  i: integer;
  s, PedidoCliente: string;
  Validade, Chave: string;
  ReferenciadaTipoNFe: boolean;
  Opcao1: boolean;
  VarDataHora: Real;
begin
  Consiste;
  ConsisteCadastroCliente;

  BitBtnGerarXML.Enabled := False;
  PedidoCliente          := '';

  {$REGION 'Bloqueio para geração de uma nota que já foi transmitida'}
  if Trim(DMNFE.cdsNFRESULTADO_NFE.AsString) <> '' then
    begin
      Application.MessageBox('Atenção: Nota Fiscal já Transmitida. ' + #13 + 'Não é Permitido Regerar o XML desta Nota.', 'Aviso', mb_OK);
      BitBtnGerarXML.SetFocus;
      Abort;
    end;
  {$ENDREGION}

  if DMNFE.cdsNFINDSTAT.AsString = 'G' then
    begin
      if Application.MessageBox(PWideChar('Atenção: Esta Nota Fiscal já foi Gerada, Deseja Continuar?'), 'Pergunta', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrNo then
        begin
          BitBtnGerarXML.SetFocus;
          Abort;
        end;
    end;

  {$REGION 'Identificação da NF'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo das informações de identificação da NF-e  - <ide> - Ocorrência 1-1                                   *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  Opcao1 := True;                                                               // Esta variavel esta sendo usada nesse modelo para indicar os locais onde
                                                                                // devem ser tomadas decissões por parte do programador conforme a regras
                                                                                // de negocio de cada cliente.
  NFe := TNFe.create;
  s := NFe.infNFe.ID;                                                           //ATENÇÃO: Esse campo representa a chave da NFe
                                                                                //Não utilize esse campo para escrita (apenas para leitura)
                                                                                //pois a chave é gerada automaticamente no momento da geração do arquivo

  NFe.Ide.cUF := DMPrincipal.cdsEmpresaCDESTADO.AsInteger;                      // B02 - Código da UF do emitente do Documento Fiscal - Tabela do IBGE
                                                                                // Você pode utilizar a função UFparaCodigo caso não saiba o código da UF
  //**********************Verificar                                             // ex: NFe.Ide.cUF := UFparaCodigo(MinhaUF);
  NFe.Ide.cNF := StrToInt(DMNFE.cdsNFCODIGO_PARA_CHAVE_NFE.AsString);           // B03 - Código Numérico que compõe a Chave de Acesso

                                                                                //         Se nenhum valor for informado será atribuido um valor aleatório
                                                                                //         Se for informado o valor -1; será gerado um valor baseado no numero da NFe
  NFe.Ide.natOp := DMNFE.cdsNFDESCRNAT.AsString;                                // B04 - Descrição da Natureza da Operação
  NFe.Ide.indPag := ipPrazo;                                                    // B05 - Indicador da forma de pagamento (*)
                                                                                //    (0)=ipVista
                                                                                //    (1)=ipPrazo
                                                                                //    (2)=ipOutras
  NFe.Ide.modelo := 55;                                                         // B06 - Código do Modelo do Documento Fiscal Utilizar o código 55 para identificação da NF-e, emitida em substituição ao modelo 1 ou 1A.
  NFe.Ide.serie := 1;                                                           // B07 - Série do Documento Fiscal, informar 0 (zero) para série única.
  NFe.Ide.nNF     := DMNFE.cdsNFNRNF.AsInteger;                                 // B08 - Número do Documento Fiscal
  NFe.Ide.dEmi    := DMNFE.cdsNFDTEMISNF.AsDateTime;                            // B09 - Data de emissão do Documento Fiscal
  NFe.Ide.dSaiEnt := DMNFE.cdsNFDTSAIDA.AsDateTime;                             // B10 - Data de Saída ou da Entrada da Mercadoria/Produto
  Nfe.Ide.hSaiEnt := DMNFE.cdsNFHORA_EMISSAO.AsDateTime;
  case DMNFE.cdsNFFATURA.AsInteger of                                           // B11 - Tipo do Documento Fiscal (*)
    0: NFe.Ide.tpNF := tnEntrada;                                                //(0) = tnEntrada
    1: NFe.Ide.tpNF := tnSaida;                                                  //(1) = tnSaida
  end;

  if Trim(DMPrincipal.cdsEmpresaUF.AsString) = Trim(DMNFE.cdsNFUF.AsString) then
    NFe.Ide.idDest := doInterna                                                 //Idest Tipo de Destino (01 - Estadual 02 - InterEstadual)
  else
    if Trim(DMNFE.cdsNFCOD_PAIS.AsString) = '1058' then
      NFe.Ide.idDest := doInterestadual
    else
      NFe.Ide.idDest := doExterior;

  NFe.Ide.cMunFG := DMPrincipal.cdsEmpresaCDIBGE.AsInteger;                     // B12 - Código do Município de Ocorrência do Fato Gerador do ICMS ( Tab. IBGE )
  NFe.Ide.tpImp := tiRetrato;                                                   // B21 - Formato de Impressão do DANFE (*)
                                                                                //         (2)=tiPaisagem
  if ComboBox1.Text = 'Normal' then                                             // B22 - Forma de Emissão da NF-e (*)
    NFe.Ide.tpEmis := teNormal                                                  //(1)=teNormal
  else
    if ComboBox1.Text = 'Contingencia' then
      NFe.Ide.tpEmis := teContingencia                                          //(2)=teContingencia
    else
      if ComboBox1.Text = 'SCAN' then
        NFe.Ide.tpEmis := teSCAN                                                //(3)=teScan
      else
        if ComboBox1.Text = 'DPEC' then
          NFe.Ide.tpEmis := teDPEC                                              //(4)=teDPEC
        else
          if ComboBox1.Text = 'FSDA' then
            NFe.Ide.tpEmis := teFSDA                                            //(5)=teFSDA
          else
            if ComboBox1.Text = 'EPEC' then
              NFe.Ide.tpEmis := teDPEC;

  // Ex: i := NFe.Ide.cDv;                                                      // B23 - Dígito Verificador da Chave de  Acesso da NF-e
  //homologação x Produção sempre aqui!!!!!!!!!                                 //         pois o digito é gerado automaticamente no momento da geração do arquivo

//------------------------------------------------------------------------------
// IMPORTANTE - INDICA SE É NOTA FISCAL VÁLIDA OU DE TESTE
//------------------------------------------------------------------------------
                                                                                // B24 - Identificação do Ambiente (*)
  if DMPrincipal.cdsParametrosCAMPO6.AsInteger = 0 then
    begin
      NFe.Ide.tpAmb            := taProducao;                                   //taProdução;
      PanelHomologacao.Visible := False;
    end
  else
    begin
      NFe.Ide.tpAmb            := taHomologacao;                                //taHomologacao;
      PanelHomologacao.Visible := True;
    end;

  if ComboBox2.Text = 'Normal' then                                             // B25 - Finalidade de emissão da NF-e (*)
    NFe.Ide.finNFe := fnNormal                                                  //(1)=fnNormal
  else
    if (ComboBox2.Text = 'Complementar') then
      NFe.Ide.finNFe := fnComplementar                                            //(2)=fnComplementar
    else
      if ComboBox2.Text = 'Ajuste' then
        NFe.Ide.finNFe := fnAjuste;                                                 //(3)=fnAjuste

//  if ComboBox2.Text = 'Devolucao de Mercadoria' then
//    begin
//      NFe.Ide.finNFe := fnDevolucao;
//      with NFe.Ide.NFref.Add do
//        begin
//          refNFe := IBQ1.FieldByName('REFERENCIA_NF_DEVOLUCAO').AsString;
//        end;
//    end;
  NFe.Ide.procEmi := peAplicativoContribuinte;                                  // B26 - Processo de emissão da NF-e (*) (0)=peAplicativoContribuinte - emissão de NF-e com aplicativo do contribuinte;
  NFe.Ide.verProc := '3.10';                                                    // B27 - Versão do Processo de emissão da NF-e

  if DMNFE.cdsNFTIPO_PESSOA.AsInteger = 0 then                                  // B29 - Nota para consumidor final
    NFe.Ide.indFinal := cfConsumidorFinal
  else
    NFe.Ide.indFinal := cfNao;

  if (ComboBox1.Text = 'DPEC') or (ComboBox1.Text = 'EPEC') then
    begin
      FormatSettings.ShortDateFormat := 'yyyy/mm/aa';
      NFe.Ide.dhCont                 := now;
      NFe.Ide.xJust                  := 'Justificativa Contingencia: Sistema do Sefaz Inoperante';
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    end;
//***********Verificar*******************
//  if VarTPDOCTO = 'NF' then
//     ReferenciadaTipoNFe := False;
//  if VarTPDOCTO = 'NC' then                                                   // TAG - Informação das NF/NF-e referenciadas - <NFref> - Ocorrência 0-N ********
//     ReferenciadaTipoNFe := True;

  if ReferenciadaTipoNFe then
    begin                                                                         // Se a nota referenciada for um NFe preencher o campo abaixo:
      NFe.Ide.NFref.Add;
      NFe.Ide.NFref[0].refNFe := DMNFE.cdsNFREFERENCIA_NC.AsString;               // B13 - Chave de acesso das NF-e referenciadas
    end;
 {$ENDREGION}

  {$REGION 'Identificação do Emitente'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identificação do emitente da NF-e  - <emit> - Ocorrência 1-1                                      *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

  NFe.Emit.CNPJCPF           := DMPrincipal.cdsEmpresaCNPJ.AsString;            // C02 - CNPJ do emitente / CPF do remetente
  NFe.Emit.xNome             := DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString;    // C03 - Razão Social ou Nome do emitente
  NFe.Emit.xFant             := DMPrincipal.cdsEmpresaAPELIDO.AsString;         // C04 - Nome fantasia
  NFe.Emit.enderEmit.xLgr    := DMPrincipal.cdsEmpresaENDERECO.AsString;        // C06 - Logradouro
  NFe.Emit.enderEmit.nro     := DMPrincipal.cdsEmpresaNUMERO.AsString;          // C07 - Número
  NFe.Emit.enderEmit.xCpl    := '';                                             // C08 - Complemento
  NFe.Emit.enderEmit.xBairro := DMPrincipal.cdsEmpresaBAIRRO.AsString;          // C09 - Bairro
  NFe.Emit.enderEmit.cMun    := DMPrincipal.cdsEmpresaCDIBGE.AsInteger;         // C10 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
  NFe.Emit.enderEmit.xMun    := DMPrincipal.cdsEmpresaCIDADE.AsString;          // C11 - Nome do município   ('EXTERIOR' para operações com o exterior)
  NFe.Emit.enderEmit.UF      := DMPrincipal.cdsEmpresaUF.AsString;              // C12 - Sigla da UF         ('EX' para operações com o exterior.)
  NFe.Emit.enderEmit.CEP     := StrToInt(Trim(DMPrincipal.cdsEmpresaCEP.AsString)); // C13 - Código do CEP
  NFe.Emit.enderEmit.cPais   := DMPrincipal.cdsEmpresaCOD_PAIS.AsInteger;       // C14 - Código do País      (Tabela do BACEN )
  NFe.Emit.enderEmit.xPais   := DMPrincipal.cdsEmpresaPAIS.AsString;            // C15 - Nome do País
  NFe.Emit.enderEmit.fone    := DMPrincipal.cdsEmpresaTELEFONE.AsString;        // C16 - Telefone            ( Código DDD + número do telefone. )
  NFe.Emit.IE                := DMPrincipal.cdsEmpresaIE.AsString;              // C17 - Inscrição Estadual do emitente
  NFe.Emit.IEST              := '';                                             // C18 - Inscrição Estadual do Substituto Tributário da UF de destino da mercadoria, quando houver a retenção do ICMS ST para a UF de destino.
  NFe.Emit.IM                := '';                                             // C19 - Inscrição Municipal (NF-e conjugada, com prestação de serviços sujeitos ao ISSQN e fornecimento de peças sujeitos ao ICMS.)
  NFe.Emit.CNAE              := '';                                             // C20 - CNAE fiscal Este campo deve ser informado quando o campo NFe.Emit.IM for informado.
                                                                                // C21  - Código de Regime Tributário
  case DMPrincipal.cdsEmpresaCRT.AsInteger of
    1 : NFe.Emit.CRT := crtSimplesNacional;                                     //crtSimplesNacional 1 Simples Nacional;
    2 : NFe.Emit.CRT := crtSimplesExcessoReceita;                               //crtSimplesExcessoReceita  2 Simples Nacional excesso de sublimite de receita bruta;
    3 : NFe.Emit.CRT := crtRegimeNormal;                                        //crtRegimeNormal
  end;
  {$ENDREGION}

  {$REGION 'Nota Avulsa'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Identificação do Fisco Emitente da NF-e - <avulsa> - Ocorrência 0-1                               *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
   {
                                    // D01 - Grupo para uso exclusivo do fisco
  NFe.Avulsa.CNPJ := '';
  NFe.Avulsa.xOrgao := '';
  NFe.Avulsa.matr := '';
  NFe.Avulsa.xAgente := '';
  NFe.Avulsa.fone := '';
  NFe.Avulsa.UF := '';
  NFe.Avulsa.nDAR := '';
  NFe.Avulsa.dEmi := null;
  NFe.Avulsa.vDAR := 0;
  NFe.Avulsa.repEmi := '';
  NFe.Avulsa.dPag := null;
    }
  {$ENDREGION}

  {$REGION 'Destinatário'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identificação do Destinatário da NF-e  - <dest> - Ocorrência 1-1                                  *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  NFe.Dest.CNPJCPF           := DMNFE.cdsNFCPF_CNPJ.AsString;                   // E02 - CNPJ do destinatário / CPF do destinatário
  NFe.Dest.xNome             := DMNFE.cdsNFCLIENTE.AsString;                    // E04 - Razão Social ou nome do destinatário
  NFe.Dest.enderDest.xLgr    := DMNFE.cdsNFENDERECO.AsString;                   // E06 - Logradouro
  NFe.Dest.enderDest.nro     := DMNFE.cdsNFNUMERO.AsString;                     // E07 - Número
  NFe.Dest.enderDest.xCpl    := '';                                             // E08 - Complemento
  NFe.Dest.enderDest.xBairro := DMNFE.cdsNFBAIRRO.AsString;                     // E09 - Bairro

  if DMNFE.cdsNFUF.AsString = 'EX' then
    begin
      NFe.Dest.enderDest.cMun := StrToInt('9999999');
      NFe.Dest.enderDest.xMun := 'EXTERIOR';                                    // E11 - Nome do município   ('EXTERIOR' para operações com o exterior)
      NFe.Dest.enderDest.UF   := 'EX';                                          // E12 - Sigla da UF         ('EX' para operações com o exterior.)
      NFe.Dest.enderDest.CEP  := 0;                                             // E13 - Código do CEP
    end
  else
    begin
      NFe.Dest.enderDest.cMun := DMNFE.cdsNFCOD_IBGE.AsInteger;                 // E10 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
      NFe.Dest.enderDest.xMun := DMNFE.cdsNFCIDADE.AsString;                    // E11 - Nome do município   ('EXTERIOR' para operações com o exterior)
      NFe.Dest.enderDest.UF   := DMNFE.cdsNFUF.AsString;                        // E12 - Sigla da UF         ('EX' para operações com o exterior.)
      NFe.Dest.enderDest.CEP  := StrToInt(TiraCharNaoPermitido(DMNFE.cdsNFCEP.AsString)); // E13 - Código do CEP
    end;

  NFe.Dest.enderDest.cPais := DMNFE.cdsNFCOD_PAIS.AsInteger;                    // E14 - Código do País      (Tabela do BACEN )
  NFe.Dest.enderDest.xPais := DMNFE.cdsNFPAIS.AsString;                         // E15 - Nome do País
  NFe.Dest.enderDest.fone  := DMNFE.cdsNFFONE.AsString;                         // E16 - Telefone            ( Código DDD + número do telefone. )
  NFe.Dest.IE              := DMNFE.cdsNFIE_RG.AsString;                        // E17 - Inscrição Estadual do destinatário
  NFe.Dest.ISUF            := '';                                               // E18 - Inscrição na SUFRAMA

  if (DMNFE.cdsNFTIPO_PESSOA.AsInteger = 0) or (NFe.Dest.enderDest.UF = 'EX') then
    NFE.Dest.indIEDest := inNaoContribuinte
  else
    NFE.Dest.indIEDest := inContribuinte;

  if trim(DMNFE.cdsNFIE_RG.AsString) = 'ISENTO' then
    begin
      NFE.Dest.indIEDest := inNaoContribuinte;
      NFe.Dest.IE        := '';
    end;
  {$ENDREGION}

  {$REGION 'Local de Retirada Somente usar quando for diferente do Endereço do Emitente'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identificação do Local de retirada - <retirada> - Ocorrência 0-N                                  *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
                                                                                // Informar os valores desse grupo somente se o  endereço de
                                                                                // retirada for diferente do endereço do remetente.
                                                                                // Assim se retirada.xLgr <> '' o gerador grava o grupo no XML
  //  NFe.Retirada.CNPJ := '';                                                  // F02 - CNPJ
  NFe.Retirada.xLgr    := '';                                                   // F03 - Logradouro
  NFe.Retirada.nro     := '';                                                   // F04 - Número
  NFe.Retirada.xCpl    := '';                                                   // F05 - Complemento
  NFe.Retirada.xBairro := '';                                                   // F06 - Bairro
  NFe.Retirada.cMun    := 0;                                                    // F07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
  NFe.Retirada.xMun    := '';                                                   // F08 - Nome do município   ('EXTERIOR' para operações com o exterior)
  NFe.Retirada.UF      := '';                                                   // F09 - Sigla da UF ('EX' para operações com o exterior.)
  {$ENDREGION}

  {$REGION 'Local de Entrega Somente usar quando for diferente do Endereço do Destinatario'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identificação do Local de entrega - <entrega> - Ocorrência 0-N                                    *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

                              // Informar os valores desse grupo somente se o
                              // endereço de entrega for diferente do endereço do destinatario.
                              // Assim se entrega.xLgr <> '' o gerador grava o grupo no XML

  //  NFe.Entrega.CNPJ := '';     // G02 - CNPJ
  NFe.Entrega.xLgr    := '';      // G03 - Logradouro
  NFe.Entrega.nro     := '';      // G04 - Número
  NFe.Entrega.xCpl    := '';      // G05 - Complemento
  NFe.Entrega.xBairro := '';      // G06 - Bairro
  NFe.Entrega.cMun    := 0;       // G07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
  NFe.Entrega.xMun    := '';      // G08 - Nome do município   ('EXTERIOR' para operações com o exterior)
  NFe.Entrega.UF      := '';      // G09 - Sigla da UF         ('EX' para operações com o exterior.)
  {$ENDREGION}

  {$REGION 'Detalhamento de Produtos e Serviços da NF-e'}
  for i := 0 to DMNFE.cdsNFI.RecordCount - 1 do
  begin
    NFe.Det.Add;
//      if Trim(IBQ1.FieldByName('NFE_LOTE_VALIDADE').Asstring)='S' then          // -     Informações Adicionais do Produto
//        NFe.Det[i].infAdProd   := FormatFloat('0000000000', StrToIntDef(IBQ4.FieldByName('NRPEDIDO').AsString,0))+FormatDateTime('ddmmyyyy',(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime+360))
//      else
    NFe.Det[i].infAdProd     := '';
    NFe.Det[i].Prod.nItem    := 1 + i;                                        // H02 - Número do item DE 1 a 990
    NFe.Det[i].Prod.cProd    := Trim(DMNFE.cdsNFIREFEREN.AsString);                 // I02 - Código do produto ou serviço
    NFe.Det[i].Prod.cEAN     := '';                                           // I03 - GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barra
    NFe.Det[i].Prod.xProd    := Trim(DMNFE.cdsNFIDESCRICAO.AsString);               // I04 - Descrição do produto ou serviço
    NFe.Det[i].Prod.NCM      := DMNFE.cdsNFINCM.AsString;                           // I05 - Código NCM (Em caso de serviço, não incluir a TAG.)
      //NFe.Det[i].Prod.EXTIPI := '';                                           // I06 - Código EX da TIPI  (Em caso de serviço, não incluir a TAG.)
      //NFe.Det[i].Prod.genero := 0;                                            // I07 - Gênero do Produto ou Serviço (Tabela de Capítulos da NCM)(Em caso de serviço, não incluir a TAG.)
    NFe.Det[i].Prod.CFOP     := DMNFE.cdsNFCDNATOPE.AsString;                       // I08 - Código Fiscal de Operações e Prestações
    NFe.Det[i].Prod.uCom     := Trim(DMNFE.cdsNFIUNIDADE.AsString);                 // I09 - Unidade Comercial
    NFe.Det[i].Prod.qCom     := DMNFE.cdsNFIQUANTIDA.Asfloat;                       // I10 - Quantidade Comercial
    NFe.Det[i].Prod.vUnCom   := DMNFE.cdsNFIVLUNIT.AsFloat;                         // I10a  Valor Unitário de comercialização
    NFe.Det[i].Prod.vProd    := DMNFE.cdsNFIVLTOTAL.AsFloat;                        // I11 - Valor Total Bruto dos Produtos ou Serviços
    NFe.Det[i].Prod.uTrib    := Trim(DMNFE.cdsNFIUNIDADE.AsString);                 // I13 - Unidade Tributável
    NFe.Det[i].Prod.qTrib    := DMNFE.cdsNFIQUANTIDA.Asfloat;                       // I14 - Quantidade Tributável
    NFe.Det[i].Prod.vUnTrib  := DMNFE.cdsNFIVLUNIT.AsFloat;                         // I14a  Valor Unitário de tributação
    NFe.Det[i].Prod.xPed     := DMNFE.cdsNFIPEDIDCLI.AsString;                      // Traz o Número do Pedido do Cliente
    NFe.Det[i].Prod.nItemPed := DMNFE.cdsNFIPEDIDCLIITEM.AsString;                  // Traz o Ítem  do Pedido do Cliente
      (* EXEMPLO *)                   // NFe.Det[i].Prod.uCom    := 'CX';
                                      // NFe.Det[i].Prod.qCom    :=    2;   Vendidas 2 caixas ( com 10 unidades cada )
                                      // NFe.Det[i].Prod.vUnCom  :=   50;   R$ 50,00 cada caixa
                                      // NFe.Det[i].Prod.vProd   :=  100;   R$ 100,00 Valor dos produtos
                                      // NFe.Det[i].Prod.uTrib   := 'UN';
                                      // NFe.Det[i].Prod.qTrib   :=   20;   2 caixas X 10 unidades por caixa = 20 unidades
                                      // NFe.Det[i].Prod.vUnTrib :=    5;   R$ 100,00 / 20 unidades = R$ 5,00 cada unidade

      //NFe.Det[i].Prod.cEANTrib := '';                                         // I12 - GTIN (Global Trade Item Number) da unidade tributável,  antigo código EAN ou código de  barras ??

//      if CheckBoxCobraFrete.Checked=True then
//        NFe.Det[i].Prod.vFrete := IBQ1.FieldByName('VLTOTFRE').AsFloat          // I15 - Valor Total do Frete
//      else
    NFe.Det[i].Prod.vFrete   := 0;                                              // I15 - Valor Total do Frete
    NFe.Det[i].Prod.vSeg     := 0;                                               // I16 - Valor Total do Seguro
    NFe.Det[i].Prod.vDesc    := DMNFE.cdsNFVLDESC.AsFloat;                             // I17 - Valor do Desconto

      {$REGION 'Declaração de Importação - <DI>'}
        //for j := 0 to 1 do
        //    begin
        //      NFe.Det[i].Prod.DI.Add;
        //      NFe.Det[i].Prod.DI[j].nDi := '';                  // I19 - Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
        //      NFe.Det[i].Prod.DI[j].dDi := null;                // I20 - Data de Registro da DI/DSI/DA
        //      NFe.Det[i].Prod.DI[j].xLocDesemb := '';           // I21 - Local de desembaraço
        //      NFe.Det[i].Prod.DI[j].UFDesemb := '';             // I22 - Sigla da UF onde ocorreu o Desembaraço Aduaneiro
        //      NFe.Det[i].Prod.DI[j].dDesemb := null;            // I23 - Data do Desembaraço Aduaneiro
        //      NFe.Det[i].Prod.DI[j].cExportador := '';          // I24 - Código do exportador
        //      for k := 0 to 1 do
        //          begin
        //            NFe.Det[i].Prod.DI[j].adi.Add;                  //       Tag de Adições - <adi> - Ocorrência 1-N
        //            NFe.Det[i].Prod.DI[j].adi[k].nAdicao := 0;      // I26 - Numero da adição
        //            NFe.Det[i].Prod.DI[j].adi[k].nSeqAdi := 0;      // I27 - Numero seqüencial do item dentro da adição
        //            NFe.Det[i].Prod.DI[j].adi[k].cFabricante := ''; // I28 - Código do fabricante estrangeiro
        //            NFe.Det[i].Prod.DI[j].adi[k].vDescDI := 0;      // I29 - Valor do desconto do item da DI – adição
        //           end;
        //    end;
        {$ENDREGION}

      {$REGION 'Veículos novos'}
                                                      //       Este grupo será criado no XML somente se o campo <chassi> for informado.
      //NFe.Det[i].prod.veicProd.tpOP := toVendaDireta; // J02 - Tipo da operação
                                                      //         (1)=toVendaConcessionaria
                                                      //         (2)=toFaturamentoDireto
                                                      //         (3)=toVendaDireta
                                                      //         (0)=toOutros
      //NFe.Det[i].prod.veicProd.chassi := '';          // J03 - Chassi do veículo
      //NFe.Det[i].prod.veicProd.cCor := '';            // J04 - Cor
      //NFe.Det[i].prod.veicProd.xCor := '';            // J05 - Descrição da Cor
      //NFe.Det[i].prod.veicProd.pot := '';             // J06 - Potência Motor
      //NFe.Det[i].prod.veicProd.CM3 := '';             // J07 - CM3 (Potência)
      //NFe.Det[i].prod.veicProd.pesoL := '';           // J08 - Peso Líquido
      //NFe.Det[i].prod.veicProd.pesoB := '';           // J09 - Peso Bruto
      //NFe.Det[i].prod.veicProd.nSerie := '';          // J10 - Serial (série)
      //NFe.Det[i].prod.veicProd.tpComb := '';          // J11 - Tipo de combustível
      //NFe.Det[i].prod.veicProd.nMotor := '';          // J12 - Número de Motor
      //NFe.Det[i].prod.veicProd.CMKG := '';            // J13 - CMKG
      //NFe.Det[i].prod.veicProd.dist := '';            // J14 - Distância entre eixos
      //NFe.Det[i].prod.veicProd.RENAVAM := '';         // J15 - RENAVAM            (Não informar a TAG na exportação)
      //NFe.Det[i].prod.veicProd.anoMod := 0;           // J16 - Ano Modelo de Fabricação
      //NFe.Det[i].prod.veicProd.anoFab := 0;           // J17 - Ano de Fabricação
      //NFe.Det[i].prod.veicProd.tpPint := '';          // J18 - Tipo de Pintura
      //NFe.Det[i].prod.veicProd.tpVeic := 0;           // J19 - Tipo de Veículo    (Utilizar Tabela RENAVAM)
      //NFe.Det[i].prod.veicProd.espVeic := 0;          // J20 - Espécie de Veículo (Utilizar Tabela RENAVAM)
      //NFe.Det[i].prod.veicProd.VIN := '';             // J21 - Condição do VIN
      //NFe.Det[i].prod.veicProd.condVeic := cvAcabado; // J22 - Condição do Veículo (1-Acabado; 2-Inacabado; 3-Semi-acabado)
      //NFe.Det[i].prod.veicProd.cMod := 0;             // J23 - Código Marca Modelo (Utilizar Tabela RENAVAM)
      {$ENDREGION}

      {$REGION 'Medicamentos'}
      //for j := 0 to 1 do
      //    begin
      //     NFe.Det[i].prod.med.add;
      //     NFe.Det[i].prod.med[j].nLote := '';  // K02 - Número do Lote do medicamento
      //     NFe.Det[i].prod.med[j].qLote := 0;   // K03 - Quantidade de produto no Lote do medicamento
      //     NFe.Det[i].prod.med[j].dFab := null; // K04 - Data de fabricação
      //     NFe.Det[i].prod.med[j].dVal := null; // K05 - Data de validade
      //     NFe.Det[i].prod.med[j].vPMC := 0;    // K06 - Preço máximo consumidor
      //    end;
      {$ENDREGION}

      {$REGION 'Armamento'}
      //for j := 0 to 1 do
      //     begin
      //      NFe.Det[i].prod.arma.add;
      //      NFe.Det[i].prod.arma[j].tpArma := taUsoPermitido; // L02 - Indicador do tipo de arma de fogo
                                                              //         (0)=taUsoPermitido
                                                              //         (1)=taUsoRestrito
      //      NFe.Det[i].prod.arma[j].nSerie := 0;              // L03 - Número de série da arma
      //      NFe.Det[i].prod.arma[j].nCano := 0;               // L04 - Número de série do cano
      //      NFe.Det[i].prod.arma[j].descr := '';              // L05 - Descrição completa da arma, compreendendo: calibre, marca, capacidade, etc)
      //     end;
      {$ENDREGION}

      {$REGION 'Combustíveis'}
      //        líquidos - <comb> - Ocorrência 0-1
      //        Se for informado algum dos valores abaixo:
      //        a TAG grava o grupo no XML ********************************************
      //NFe.Det[i].prod.comb.cProdANP := 0;                 // L102 - Código de produto da ANP - codificação de produtos do SIMP
      //NFe.Det[i].prod.comb.CODIF := '';                   // L103 - Código de autorização / registro do CODIF
      //NFe.Det[i].prod.comb.qTemp := 0;                    // L104 - Quantidade de combustível faturada à temperatura ambiente.
                                                            //        TAG de grupo da CIDE - <CIDE> - Ocorrência 0-1
      //NFe.Det[i].prod.comb.CIDE.qBCprod := 0;             // L106 - BC da CIDE em quantidad
      //NFe.Det[i].prod.comb.CIDE.vAliqProd := 0;           // L107 - Valor da alíquota da CIDE
      //NFe.Det[i].prod.comb.CIDE.vCIDE := 0;               // L108 - Valor da CIDE
                                                            //        TAG de grupo do ICMS - <ICMS> - Ocorrência 1-1
      //NFe.Det[i].prod.comb.ICMS.vBCICMS := 0;             // L110 - BC do ICMS
      //NFe.Det[i].prod.comb.ICMS.vICMS := 0;               // L111 - Valor do ICMS
      //NFe.Det[i].prod.comb.ICMS.vBCICMSST := 0;           // L112 - BC do ICMS ST retido
      //NFe.Det[i].prod.comb.ICMS.vICMSST := 0;             // L113 - Valor do ICMS ST retido
                                                            //        TAG de grupo do ICMSST de operação interestadual - <ICMSInter> - Ocorrência 0-1
      //NFe.Det[i].prod.comb.ICMSInter.vBCICMSSTDest := 0;  // L115 - BC do ICMS ST da UF de destino
      //NFe.Det[i].prod.comb.ICMSInter.vICMSSTDest := 0;    // L116 - Valor do ICMS ST da UF de destino
                                                            //        TAG de ICMS para consumo em UF diversa da UF de localização do destinatário do produto - <ICMSCons> - Ocorrência 0-1
      //NFe.Det[i].prod.comb.ICMSCons.vBCICMSSTCons := 0;   // L118 - BC do ICMS ST da UF de consumo
      //NFe.Det[i].prod.comb.ICMSCons.vICMSSTCons := 0;     // L119 - Valor do ICMS ST da UF de consumo
      //NFe.Det[i].prod.comb.ICMSCons.UFcons := '';         // L120 - Sigla da UF de consumo
      {$ENDREGION}

      {$REGION 'ICMS para Simples Nacional'}
    if DMPrincipal.cdsEmpresaCRT.AsString = '1' then
    begin

      if Trim(DMNFE.cdsNFICSOSN.AsString) = '101' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn101
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '102' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn101
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '103' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn103
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '201' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn201
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '202' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn202
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '203' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn203
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '300' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn300
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '400' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn400
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '500' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn500
      else if Trim(DMNFE.cdsNFICSOSN.AsString) = '900' then
        NFe.Det[i].Imposto.ICMS.CSOSN := csosn900;

      case nfe.Det[i].Imposto.ICMS.CSOSN of
        csosn101:
          begin
            nfe.Det[i].Imposto.ICMS.pCredSN := 0;              // N29 - Alíquota aplicável de cálculo do crédito (Simples Nacional).
            nfe.Det[i].Imposto.ICMS.vCredICMSSN := 0;              // N30 - Valor crédito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
          end;
        csosn102,                                                               // N10d
        csosn103,
        csosn300,
        csosn400:
          begin
            //Tags ORIG e CSON já criadas antes do case
            //102 - Tributada pelo Simples Nacional sem permissão de crédito.
            //103 ? Isenção do ICMS no Simples Nacional para faixa de receita bruta.
            //300 ? Imune.
            //400 ? Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
          end;
      end;

      case DMNFE.cdsNFICDORIGEM.AsInteger of
        0: NFe.Det[i].Imposto.ICMS.orig := oeNacional;
        1: NFe.Det[i].Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;
        2: NFe.Det[i].Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;
        3: NFe.Det[i].Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
        4: NFe.Det[i].Imposto.ICMS.orig := oeNacionalProcessosBasicos;
        5: NFe.Det[i].Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
        6: NFe.Det[i].Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
        7: NFe.Det[i].Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
        8: NFe.Det[i].Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
      end;
    end;
      {$ENDREGION}

      {$REGION 'ICMS para Empresa de Tributação normal'}
    if DMPrincipal.cdsEmpresaCRT.AsString = '3' then
    begin
      NFe.Det[i].Imposto.ICMS.orig := oeNacional;                           // N11 - Origem da mercadoria
                                                                                //         (0)=oeNacional
                                                                                //         (1)=oeEstrangeiraImportacaoDireta
                                                                                //         (2)=oeEstrangeiraAdquiridaBrasil
      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '000' then
        NFe.Det[i].Imposto.ICMS.CST := cst00;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '001' then
        NFe.Det[i].Imposto.ICMS.CST := cst10;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '020' then
        NFe.Det[i].Imposto.ICMS.CST := cst20;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '004' then
        NFe.Det[i].Imposto.ICMS.CST := cst41;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '040' then
        NFe.Det[i].Imposto.ICMS.CST := cst40;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '041' then
        NFe.Det[i].Imposto.ICMS.CST := cst41;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '050' then
        NFe.Det[i].Imposto.ICMS.CST := cst50;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '060' then
        NFe.Det[i].Imposto.ICMS.CST := cst60;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '051' then
        NFe.Det[i].Imposto.ICMS.CST := cst51;

      if Trim(DMNFE.cdsNFISITUTRI.AsString) = '090' then
        NFe.Det[i].Imposto.ICMS.CST := cst90;

             // N12 - Tributação do ICMS
             //         (00)=cst00
             //         (10)=cst10
             //         (20)=cst20
             //         (30)=cst30
             //         (40)=cst40
             //         (41)=cst41
             //         (50)=cst50
             //         (51)=cst51
             //         (60)=cst60
             //         (70)=cst70
             //         (90)=cst90

      if NFe.Det[i].Imposto.ICMS.CST = cst00 then
      begin
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := DMNFE.cdsNFIPCICM.AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst10 then
      begin
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                               // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := DMNFE.cdsNFIPCICM.AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
        NFe.Det[i].Imposto.ICMS.modBCST := dbisMargemValorAgregado;                     // N18 - Modalidade de determinação da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pMVAST := 0;                                           // N19 - Percentual da margem de valor Adicionado do ICMS ST
        NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                                           // N20 - Percentual da Redução de BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.vBCST := 0;                                           // N21 - Valor da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pICMSST := 0;                                           // N22 - Alíquota do imposto do ICMS ST
        NFe.Det[i].Imposto.ICMS.vICMSST := 0;                                           // N23 - Valor do ICMS ST
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst20 then
      begin
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                              // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pRedBC := 0;                                             // N14 - Percentual da Redução de BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := DMNFE.cdsNFIPCICM.AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst30 then
      begin
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;       // N17 - Valor do ICMS
        NFe.Det[i].Imposto.ICMS.pMVAST := 0;                                         // N19 - Percentual da margem de valor Adicionado do ICMS ST
        NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                                         // N20 - Percentual da Redução de BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.vBCST := 0;                                         // N21 - Valor da BC do ICMS S
        NFe.Det[i].Imposto.ICMS.pICMSST := 0;                                         // N22 - Alíquota do imposto do ICMS ST
        NFe.Det[i].Imposto.ICMS.vICMSST := 0;                                         // N23 - Valor do ICMS ST
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst51 then
      begin                             //aquiiiiiiiiiiiiiiiiiiii anderson duvida
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                                   // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pRedBC := 0;                                                  // N14 - Percentual da Redução de BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := 0; //IBQ4.FieldByName('BASE_CALCULO_ICMS').AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := 0; //IBQ4.FieldByName('PCICM').AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := 0; //IBQ4.FieldByName('VLTOTICM').AsFloat;          // N17 - Valor do ICMS
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst60 then
      begin
        NFe.Det[i].Imposto.ICMS.vBCST := 0;                                             // N21 - Valor da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.vICMSST := 0;                                           // N23 - Valor do ICMS ST
      end;

      if NFe.Det[i].Imposto.ICMS.CST = cst70 then
      begin
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                              // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pRedBC := 0;                                            // N14 - Percentual da Redução de BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := DMNFE.cdsNFIPCICM.AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
        NFe.Det[i].Imposto.ICMS.modBCST := dbisMargemValorAgregado;         // N18 - Modalidade de determinação da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pMVAST := 0;                               // N19 - Percentual da margem de valor Adicionado do ICMS ST
        NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                               // N20 - Percentual da Redução de BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.vBCST := 0;                               // N21 - Valor da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pICMSST := 0;                               // N22 - Alíquota do imposto do ICMS ST
        NFe.Det[i].Imposto.ICMS.vICMSST := 0;                               // N23 - Valor do ICMS ST
      end;
      if NFe.Det[i].Imposto.ICMS.CST = cst90 then
      begin
        NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                // N13 - Modalidade de determinação da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pRedBC := 0;                               // N14 - Percentual da Redução de BC do ICMS
        NFe.Det[i].Imposto.ICMS.vBC := DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
        NFe.Det[i].Imposto.ICMS.pICMS := DMNFE.cdsNFIPCICM.AsFloat;             // N16 - Alíquota do imposto
        NFe.Det[i].Imposto.ICMS.vICMS := DMNFE.cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
        NFe.Det[i].Imposto.ICMS.modBCST := dbisMargemValorAgregado;         // N18 - Modalidade de determinação da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pMVAST := 0;                               // N19 - Percentual da margem de valor Adicionado do ICMS ST
        NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                               // N20 - Percentual da Redução de BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.vBCST := 0;                               // N21 - Valor da BC do ICMS ST
        NFe.Det[i].Imposto.ICMS.pICMSST := 0;                               // N22 - Alíquota do imposto do ICMS ST
        NFe.Det[i].Imposto.ICMS.vICMSST := 0;                               // N23 - Valor do ICMS ST
      end;
                                                                                   // N13 - Modalidade de determinação da BC do ICMS
                                                                                   //         (0)=dbiMargemValorAgregado
                                                                                   //         (1)=dbiPauta
                                                                                   //         (2)=dbiPrecoTabelado
                                                                                   //         (3)=dbiValorOperacao
                                                                                   // N18 - Modalidade de determinação da BC do ICMS ST
                                                                                   //         (0)=dbisPrecoTabelado       – Preço tabelado ou máximo sugerido;
                                                                                   //         (1)=dbisListaNegativa       - Lista Negativa (valor);
                                                                                   //         (2)=dbisListaPositiva       - Lista Positiva (valor);
                                                                                   //         (3)=dbisListaNeutra         - Lista Neutra (valor);
                                                                                   //         (4)=dbisMargemValorAgregado - Margem Valor Agregado (%);
                                                                                   //         (5)=dbisPauta               - Pauta (valor);)
    end;
      {$ENDREGION}

      {$REGION 'IPI'}
      //TAG de grupo do IPI - <IPI> - Ocorrência 0-1
      //NFe.Det[i].Imposto.IPI.clEnq := '';                                     // O02 - Classe de enquadramento do IPI para Cigarros e Bebidas
      //NFe.Det[i].Imposto.IPI.CNPJProd := '';                                  // O03 - CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exportação direta ou indireta.
      //NFe.Det[i].Imposto.IPI.cSelo := '';                                     // O04 - Código do selo de controle IPI
      //NFe.Det[i].Imposto.IPI.qSelo := 0;                                      // O05 - Quantidade de selo de controle


    if Trim(DMNFE.cdsNFIENQ_IPI_SAIDA.AsString) <> '' then
      NFe.Det[i].Imposto.IPI.clEnq := Trim(DMNFE.cdsNFIENQ_IPI_SAIDA.AsString)
    else
      NFe.Det[i].Imposto.IPI.cEnq := '999';                                     // O06 - Código de Enquadramento Legal do IPI (Tabela a ser criada pela RFB, informar 999 enquanto a tabela não for criada)


    case DMNFE.cdsNFISITUACAO_IPI_SAIDA.AsInteger of                                        // O09 - Código da situação tributária do IPI
      0:  NFe.Det[i].Imposto.IPI.CST := ipi00;
      1:  NFe.Det[i].Imposto.IPI.CST := ipi01;
      2:  NFe.Det[i].Imposto.IPI.CST := ipi02;
      3:  NFe.Det[i].Imposto.IPI.CST := ipi03;
      4:  NFe.Det[i].Imposto.IPI.CST := ipi04;
      5:  NFe.Det[i].Imposto.IPI.CST := ipi05;
      49: NFe.Det[i].Imposto.IPI.CST := ipi49;
      50: NFe.Det[i].Imposto.IPI.CST := ipi50;
      51: NFe.Det[i].Imposto.IPI.CST := ipi51;
      52: NFe.Det[i].Imposto.IPI.CST := ipi52;
      53: NFe.Det[i].Imposto.IPI.CST := ipi53;
      54: NFe.Det[i].Imposto.IPI.CST := ipi54;
      55: NFe.Det[i].Imposto.IPI.CST := ipi55;
      99: NFe.Det[i].Imposto.IPI.CST := ipi99;
    end;

    if Trim(DMNFE.cdsNFISITUACAO_IPI_SAIDA.AsString) = '55' then
      NFe.Det[i].Imposto.IPI.CST := ipi55;
      //       (00)=ipi00 - Entrada com recuperação de crédito
      //       (49)=ipi49 - Outras entradas
      //       (50)=ipi50 - Saída tributada
      //       (99)=ipi99 - Outras saídas
      //       (01)=ipi01 - Entrada tributada com alíquota zero
      //       (02)=ipi02 - Entrada isenta
      //       (03)=ipi03 - Entrada não-tributada
      //       (04)=ipi04 - Entrada imune
      //       (05)=ipi05 - Entrada com suspensão
      //       (51)=ipi51 - Saída tributada com alíquota zero
      //       (52)=ipi52 - Saída isenta
      //       (53)=ipi53 - Saída não-tributada
      //       (54)=ipi54 - Saída imune
      //       (55)=ipi55 - Saída com suspensão
    if (NFe.Det[i].Imposto.IPI.CST = ipi00) or (NFe.Det[i].Imposto.IPI.CST = ipi49) or (NFe.Det[i].Imposto.IPI.CST = ipi50) or (NFe.Det[i].Imposto.IPI.CST = ipi99) then
    begin
      if opcao1 then
      begin
        NFe.Det[i].Imposto.IPI.vBC := DMNFE.cdsNFIBASEIPI.AsFloat;            // O10 - Valor da BC do IPI
        NFe.Det[i].Imposto.IPI.pIPI := DMNFE.cdsNFIPCIPI.AsFloat;              // 013 - Alíquota do IPI
        NFe.Det[i].Imposto.IPI.vIPI := DMNFE.cdsNFIVLTOTIPI.AsFloat;           // O14 - Valor do IPI
      end;

      if not opcao1 then
      begin
        NFe.Det[i].Imposto.IPI.qUnid := 0;                               // O11 - Qtde total na unidade padrão para tributação (somente para os produtos tributados por unidade)
        NFe.Det[i].Imposto.IPI.vUnid := 0;                               // O12 - Valor por Unidade Tributável
        NFe.Det[i].Imposto.IPI.vIPI := 0;                               // O14 - Valor do IPI
      end;
    end;
      {$ENDREGION}

      {$REGION 'Imposto de Importação - <II> '}
      //NFe.Det[i].Imposto.II.vBc := 0;             // P02 - Valor da BC do Imposto de Importação
      //NFe.Det[i].Imposto.II.vDespAdu := 0;        // P03 - Valor das despesas aduaneiras
      //NFe.Det[i].Imposto.II.vII := 0;             // P04 - Valor do Imposto de Importação
      //NFe.Det[i].Imposto.II.vIOF := 0;            // P05 - Valor do Imposto sobre Operações Financeiras
      {$ENDREGION}

      {$REGION 'Imposto de PIS'}
    case DMNFE.cdsNFICSTPIS.AsInteger of                                          // Q06 - Código de Situação Tributária do PIS
      1:
        NFe.Det[i].Imposto.PIS.CST := pis01;                             //(01)=pis01 – Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
      2:
        NFe.Det[i].Imposto.PIS.CST := pis02;                             //(02)=pis02 - Operação Tributável (base de cálculo = valor da operação (alíquota diferenciada));
      3:
        NFe.Det[i].Imposto.PIS.CST := pis03;                             //(03)=pis03 - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto )
      4:
        NFe.Det[i].Imposto.PIS.CST := pis04;                             //(04)=pis04 - Operação Tributável (tributação monofásica (alíquota zero));
      5:
        NFe.Det[i].Imposto.PIS.CST := pis05;                             //(06)=pis06 - Operação Tributável (alíquota zero);
      6:
        NFe.Det[i].Imposto.PIS.CST := pis06;                             //(07)=pis07 - Operação Isenta da Contribuição;
      7:
        NFe.Det[i].Imposto.PIS.CST := pis07;                             //(08)=pis08 - Operação Sem Incidência da Contribuição;
      8:
        NFe.Det[i].Imposto.PIS.CST := pis08;                             //(09)=pis09 - Operação com Suspensão da Contribuição;
      9:
        NFe.Det[i].Imposto.PIS.CST := pis09;
      49:
        NFe.Det[i].Imposto.PIS.CST := pis49;
      50:
        NFe.Det[i].Imposto.PIS.CST := pis50;
      51:
        NFe.Det[i].Imposto.PIS.CST := pis51;
      52:
        NFe.Det[i].Imposto.PIS.CST := pis52;
      53:
        NFe.Det[i].Imposto.PIS.CST := pis53;
      54:
        NFe.Det[i].Imposto.PIS.CST := pis54;
      55:
        NFe.Det[i].Imposto.PIS.CST := pis55;
      56:
        NFe.Det[i].Imposto.PIS.CST := pis56;
      60:
        NFe.Det[i].Imposto.PIS.CST := pis60;
      61:
        NFe.Det[i].Imposto.PIS.CST := pis61;
      62:
        NFe.Det[i].Imposto.PIS.CST := pis62;
      63:
        NFe.Det[i].Imposto.PIS.CST := pis63;
      64:
        NFe.Det[i].Imposto.PIS.CST := pis64;
      65:
        NFe.Det[i].Imposto.PIS.CST := pis65;
      66:
        NFe.Det[i].Imposto.PIS.CST := pis66;
      67:
        NFe.Det[i].Imposto.PIS.CST := pis67;
      70:
        NFe.Det[i].Imposto.PIS.CST := pis70;
      71:
        NFe.Det[i].Imposto.PIS.CST := pis71;
      72:
        NFe.Det[i].Imposto.PIS.CST := pis72;
      73:
        NFe.Det[i].Imposto.PIS.CST := pis73;
      74:
        NFe.Det[i].Imposto.PIS.CST := pis74;
      75:
        NFe.Det[i].Imposto.PIS.CST := pis75;
      98:
        NFe.Det[i].Imposto.PIS.CST := pis98;
      99:
        NFe.Det[i].Imposto.PIS.CST := pis99;                             //(99)=pis99 - Outras Operações;
    end;

    if (NFe.Det[i].Imposto.PIS.CST = pis01) or (NFe.Det[i].Imposto.PIS.CST = pis02) then
    begin
      NFe.Det[i].Imposto.PIS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;            // Q07 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PIS.pPIS := DMNFE.cdsNFIPCPIS.AsFloat;              // Q08 - Alíquota do PIS (em percentual)
      NFe.Det[i].Imposto.PIS.qBCProd := DMNFE.cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
      NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PIS.vPIS := DMNFE.cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis50) then
    begin
      NFe.Det[i].Imposto.PIS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;                 // Q07 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PIS.pPIS := DMNFE.cdsNFIPCPIS.AsFloat;                   // Q08 - Alíquota do PIS (em percentual)
      NFe.Det[i].Imposto.PIS.vPIS := DMNFE.cdsNFIVALOR_PIS.AsFloat;               // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis03) then
    begin
      NFe.Det[i].Imposto.PIS.qBCProd := DMNFE.cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
      NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PIS.vPIS := DMNFE.cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis03) and (opcao1) then
    begin
      NFe.Det[i].Imposto.PIS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;                 // Q07 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PIS.pPIS := DMNFE.cdsNFIPCPIS.AsFloat;                   // Q08 - Alíquota do PIS (em percentual)
      NFe.Det[i].Imposto.PIS.vPIS := DMNFE.cdsNFIVALOR_PIS.AsFloat;               // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis03) and (not opcao1) then
    begin
      NFe.Det[i].Imposto.PIS.qBCProd := DMNFE.cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
      NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PIS.vPIS := DMNFE.cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis72) then
    begin
      NFe.Det[i].Imposto.PIS.vBC := 0;                                // Q07 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PIS.qBCProd := 0;                                // Q10 - Quantidade Vendida
      NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PIS.vPIS := 0;                                // Q09 - Valor do PIS
    end;
    if (NFe.Det[i].Imposto.PIS.CST = pis09) then
    begin
      NFe.Det[i].Imposto.PIS.vBC := 0;                              // Q07 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PIS.qBCProd := DMNFE.cdsNFIQUANTIDA.AsFloat;         // Q10 - Quantidade Vendida
      NFe.Det[i].Imposto.PIS.vAliqProd := 0;                              // Q11 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PIS.vPIS := 0;                              // Q09 - Valor do PIS
    end;
      {$ENDREGION}

      {$REGION 'PIS Substituição Tributária'}
    if opcao1 then
    begin
      NFe.Det[i].Imposto.PISST.vBc := 0;        // R02 - Valor da Base de Cálculo do PIS
      NFe.Det[i].Imposto.PISST.pPis := 0;       // R03 - Alíquota do PIS (em percentual)
      NFe.Det[i].Imposto.PISST.vPIS := 0;       // R06 - Valor do PIS
    end;
    if not opcao1 then
    begin
      NFe.Det[i].Imposto.PISST.qBCProd := 0;    // R04 - Quantidade Vendida
      NFe.Det[i].Imposto.PISST.vAliqProd := 0;  // R05 - Alíquota do PIS (em reais)
      NFe.Det[i].Imposto.PISST.vPIS := 0;       // R06 - Valor do PIS
    end;
      {$ENDREGION}

      {$REGION 'Situação Tributária do Cofins'}
    case DMNFE.cdsNFICSTCOFINS.AsInteger of                                         // S06 - Código de Situação Tributária do Cofins
      1:
        NFe.Det[i].Imposto.COFINS.CST := cof01;                            //(01) – Operação Tributável (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
      2:
        NFe.Det[i].Imposto.COFINS.CST := cof02;                            //(02) - Operação Tributável (base de cálculo = valor da operação
      3:
        NFe.Det[i].Imposto.COFINS.CST := cof03;                            //(03) - Operação Tributável (base de cálculo = quantidade vendida x alíquota por unidade de produto);
      4:
        NFe.Det[i].Imposto.COFINS.CST := cof04;                            //(04) - Operação Tributável (tributação monofásica (alíquota zero));
      5:
        NFe.Det[i].Imposto.COFINS.CST := cof05;                            //(06) - Operação Tributável (alíquota zero);
      6:
        NFe.Det[i].Imposto.COFINS.CST := cof06;                            //(7) - Operação Isenta da Contribuição;
      7:
        NFe.Det[i].Imposto.COFINS.CST := cof07;                            //(08) - Operação Sem Incidência da Contribuição;
      8:
        NFe.Det[i].Imposto.COFINS.CST := cof08;                            //(09) - Operação com Suspensão da Contribuição;
      9:
        NFe.Det[i].Imposto.COFINS.CST := cof09;
      49:
        NFe.Det[i].Imposto.COFINS.CST := cof49;
      50:
        NFe.Det[i].Imposto.COFINS.CST := cof50;
      51:
        NFe.Det[i].Imposto.COFINS.CST := cof51;
      52:
        NFe.Det[i].Imposto.COFINS.CST := cof52;
      53:
        NFe.Det[i].Imposto.COFINS.CST := cof53;
      54:
        NFe.Det[i].Imposto.COFINS.CST := cof54;
      55:
        NFe.Det[i].Imposto.COFINS.CST := cof55;
      56:
        NFe.Det[i].Imposto.COFINS.CST := cof56;
      60:
        NFe.Det[i].Imposto.COFINS.CST := cof60;
      61:
        NFe.Det[i].Imposto.COFINS.CST := cof61;
      62:
        NFe.Det[i].Imposto.COFINS.CST := cof62;
      63:
        NFe.Det[i].Imposto.COFINS.CST := cof63;
      64:
        NFe.Det[i].Imposto.COFINS.CST := cof64;
      65:
        NFe.Det[i].Imposto.COFINS.CST := cof65;
      66:
        NFe.Det[i].Imposto.COFINS.CST := cof66;
      67:
        NFe.Det[i].Imposto.COFINS.CST := cof67;
      70:
        NFe.Det[i].Imposto.COFINS.CST := cof70;
      71:
        NFe.Det[i].Imposto.COFINS.CST := cof71;
      72:
        NFe.Det[i].Imposto.COFINS.CST := cof72;
      73:
        NFe.Det[i].Imposto.COFINS.CST := cof73;
      74:
        NFe.Det[i].Imposto.COFINS.CST := cof74;
      75:
        NFe.Det[i].Imposto.COFINS.CST := cof75;
      98:
        NFe.Det[i].Imposto.COFINS.CST := cof98;
      99:
        NFe.Det[i].Imposto.COFINS.CST := cof99;                            //(99) - Outras Operações;
    end;

    if (NFe.Det[i].Imposto.COFINS.CST = cof01) or (NFe.Det[i].Imposto.COFINS.CST = cof02) then
    begin
      NFe.Det[i].Imposto.COFINS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de Cálculo da COFINS
      NFe.Det[i].Imposto.COFINS.pCOFINS := DMNFE.cdsNFIPCCOFINS.AsFloat;          // S08 - Alíquota da COFINS (em percentual)
      NFe.Det[i].Imposto.COFINS.vCOFINS := DMNFE.cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
    end;
    if (NFe.Det[i].Imposto.COFINS.CST = cof50) then
    begin
      NFe.Det[i].Imposto.COFINS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de Cálculo da COFINS
      NFe.Det[i].Imposto.COFINS.pCOFINS := DMNFE.cdsNFIPCCOFINS.AsFloat;          // S08 - Alíquota da COFINS (em percentual)
      NFe.Det[i].Imposto.COFINS.vCOFINS := DMNFE.cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
    end;
    if NFe.Det[i].Imposto.COFINS.CST = cof03 then
    begin
      NFe.Det[i].Imposto.COFINS.vBCProd := DMNFE.cdsNFIQUANTIDA.AsFloat;        // S09 - Quantidade Vendida
      NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Alíquota do COFINS (em reais)
      NFe.Det[i].Imposto.COFINS.vCOFINS := DMNFE.cdsNFIVALOR_COFINS.AsFloat;    // S11 - Valor do COFINS
    end;
    if NFe.Det[i].Imposto.COFINS.CST = cof72 then
    begin
      NFe.Det[i].Imposto.COFINS.vBCProd := 0;                             // S09 - Quantidade Vendida
      NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Alíquota do COFINS (em reais)
      NFe.Det[i].Imposto.COFINS.vCOFINS := 0;                             // S11 - Valor do COFINS
    end;
    if (NFe.Det[i].Imposto.COFINS.CST = cof99) and (opcao1) then
    begin
      NFe.Det[i].Imposto.COFINS.vBC := DMNFE.cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de Cálculo da COFINS
      NFe.Det[i].Imposto.COFINS.pCOFINS := DMNFE.cdsNFIPCCOFINS.AsFloat;          // S08 - Alíquota da COFINS (em percentual
      NFe.Det[i].Imposto.COFINS.vCOFINS := DMNFE.cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
    end;
    if (NFe.Det[i].Imposto.COFINS.CST = cof99) and (not opcao1) then
    begin
      NFe.Det[i].Imposto.COFINS.qBCProd := 0;                             // S09 - Quantidade Vendida
      NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Alíquota do COFINS (em reais)
      NFe.Det[i].Imposto.COFINS.vCOFINS := DMNFE.cdsNFIVALOR_COFINS.AsFloat;    // S11 - Valor do COFINS
    end;
      {$ENDREGION}

//        {$REGION 'COFINS Substituição Tributária'}
//        if opcao1 then
//           begin
//            NFe.Det[i].Imposto.COFINSST.vBC := 0;          // T02 - Valor da Base de Cálculo da COFINS
//            NFe.Det[i].Imposto.COFINSST.pCOFINS := 0;      // T03 - Alíquota da COFINS (em percentual)
//            NFe.Det[i].Imposto.COFINSST.vCOFINS := 0;      // T06 - Valor do COFINS
//           end;
//        if not opcao1 then
//           begin
//            NFe.Det[i].Imposto.COFINSST.qBCProd := 0;      // T04 - Quantidade Vendida
//            NFe.Det[i].Imposto.COFINSST.vAliqProd := 0;    // T05 - Alíquota do COFINS (em reais)
//            NFe.Det[i].Imposto.COFINSST.vCOFINS := 0;      // T06 - Valor do COFINS
//           end;
//        {$ENDREGION}
//
//        {$REGION 'ISSQN'}
//        //NFe.Det[i].Imposto.ISSQN.vBC := 0;               // U02 - Valor da Base de Cálculo do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.vAliq := 0;             // U03 - Alíquota do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.vISSQN := 0;            // U04 - Valor do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.cMunFG := 0;            // U05 - Código do município de ocorrência do fato gerador do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.cListServ := 0;         // U06 - Código da Lista de Serviços
//        {$ENDREGION}
//
    DMNFE.cdsNFI.Next;
  end;
  {$ENDREGION}

  {$REGION 'Valores Totais referentes ao ICMS'}
  NFe.Total.ICMSTot.vBC   := DMNFE.cdsNFBASEICMS.AsFloat;                       // W03 - Base de Cálculo do ICMS
  NFe.Total.ICMSTot.vICMS := DMNFE.cdsNFVLTOTICMS.AsFloat;                      // W04 - Valor Total do ICMS
  NFe.Total.ICMSTot.vBCST := 0;                                                 // W05 - Base de Cálculo do ICMS ST
  NFe.Total.ICMSTot.vST   := 0;                                                 // W06 - Valor Total do ICMS ST
  NFe.Total.ICMSTot.vProd := DMNFE.cdsNFVLTOTMER.AsFloat;                       // W07 - Valor Total dos produtos e serviços

  if CheckBoxCobraFrete.Checked = True then
    NFe.Total.ICMSTot.vFrete := DMNFE.cdsNFVLTOTFRE.AsFloat                           // W08 - Valor Total do Frete
  else
    NFe.Total.ICMSTot.vFrete := DMNFE.cdsNFVLTOTFRE.AsFloat;                          // W08 - Valor Total do Frete

  NFe.Total.ICMSTot.vSeg := 0;                                               // W09 - Valor Total do Seguro
  NFe.Total.ICMSTot.vDesc := DMNFE.cdsNFVLDESC.AsFloat;                             // W10 - Valor Total do Desconto
  //NFe.Total.ICMSTot.vII := 0;                                                 // W11 - Valor Total do II
  NFe.Total.ICMSTot.vIPI := DMNFE.cdsNFVLTOTIPI.AsFloat;                           // W12 - Valor Total do IPI
  NFe.Total.ICMSTot.vPIS := DMNFE.cdsNFVALOR_TOTAL_PIS.AsFloat;                    // W13 - Valor do PIS
  NFe.Total.ICMSTot.vCOFINS := DMNFE.cdsNFVALOR_TOTAL_COFINS.AsFloat;                 // W14 - Valor do COFINS
  NFe.Total.ICMSTot.vOutro := 0;                                               // W15 - Outras Despesas acessórias
  NFe.Total.ICMSTot.vNF := DMNFE.cdsNFVLTOTNF.AsFloat;                            // W16 - Valor Total da NF-e
  {$ENDREGION}

  {$REGION 'Valores Totais referentes ao ISSQN'}
  //NFe.Total.ISSQNtot.vServ := 0;     // W18 - Valor Total dos Serviços sob nãoincidência ou não tributados pelo ICMS
  //NFe.Total.ISSQNtot.vBC := 0;       // W19 - Base de Cálculo do ISS
  //NFe.Total.ISSQNtot.vISS := 0;      // W20 - Valor Total do ISS
  //NFe.Total.ISSQNtot.vPIS := 0;      // W21 - Valor do PIS sobre serviços
  //NFe.Total.ISSQNtot.vCOFINS := 0;   // W22 - Valor do COFINS sobre serviços
  {$ENDREGION}

  {$REGION 'Retenções de Tributos Notas de Serviço'}
  //NFe.Total.retTrib.vRetPIS := 0;    // W24 - Valor Retido de PIS
  //NFe.Total.retTrib.vRetCOFINS := 0; // W25 - Valor Retido de COFINS
  //NFe.Total.retTrib.vRetCSLL := 0;   // W26 - Valor Retido de CSLL
  //NFe.Total.retTrib.vBCIRRF := 0;    // W27 - Base de Cálculo do IRRF
  //NFe.Total.retTrib.vIRRF := 0;      // W28 - Valor Retido do IRRF
  //NFe.Total.retTrib.vBCRetPrev := 0; // W29 - Base de Cálculo da Retenção da Previdência Social
  //NFe.Total.retTrib.vRetPrev := 0;   // W30  - Valor da Retenção da Previdência Social
  {$ENDREGION}

  {$REGION 'Transportadora'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Informações do Transporte da NF-e - <transp> - Ocorrência 1-1                                     *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

  if ((DMNFE.cdsNFFRETEC.AsInteger = 1) or (DMNFE.cdsNFFRETEC.AsInteger = 2)) then
  begin
    case DMNFE.cdsNFFRETEC.AsInteger of                                             //X02 - Modalidade do frete
      1:
        NFe.Transp.modFrete := mfContaEmitente;                             //(0)=mfContaEmitente     – por conta do emitente;
      2:
        NFe.Transp.modFrete := mfContaDestinatario;                         //(1)=mfContaDestinatario – por conta do destinatário)
    end;
    NFe.Transp.Transporta.CNPJCPF := (DMNFE.cdsNFTRANSP_CPF_CNPJ.AsString);         // X05 - Informar o CNPJ ou o CPF do Transportador, preenchendo os zeros não significativos.
    NFe.Transp.Transporta.xNome := DMNFE.cdsNFTRANSPORTADOR.AsString;             // X06 - Razão Social ou nome

    if DMNFE.cdsNFTRANSP_TIPO_PESSOA.AsInteger = 1 then
      NFe.Transp.Transporta.IE := DMNFE.cdsNFTRANSP_RG_IE.AsString                  // X07 - Inscrição Estadual
    else
      NFe.Transp.Transporta.IE := '';

    NFe.Transp.Transporta.xEnder := DMNFE.cdsNFTRANSP_ENDERECO.AsString;           // X08 - Endereço Completo
    NFe.Transp.Transporta.xMun := DMNFE.cdsNFTRANSP_CIDADE.AsString;             // X09 - Nome do município
    NFe.Transp.Transporta.UF := DMNFE.cdsNFTRANSP_UF.AsString;                 // X10 - Sigla da UF
      {                                                                         //       TAG de grupo de Retenção do ICMS do transporte - <retTransp> - Ocorrência 0-1
      NFe.Transp.retTransp.vServ := 0;                                          // X12 - Valor do Serviço
      NFe.Transp.retTransp.vBCRet := 0;                                         // X13 - BC da Retenção do ICMS
      NFe.Transp.retTransp.pICMSRet := 0;                                       // X14 - Alíquota da Retenção
      NFe.Transp.retTransp.vICMSRet := 0;                                       // X15 - Valor do ICMS Retido
      NFe.Transp.retTransp.CFOP := IBQ1.FieldByName('CDNATOPE').AsString;       // X16 - CFOP (Utilizar Tabela de CFOP)
      NFe.Transp.retTransp.cMunFG := IBQ1.FieldByName('COD_IBGE').AsInteger;    // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)
      }                                                                         //       TAG de grupo Veículo - <veicTransp> - Ocorrência 0-1
    NFe.Transp.veicTransp.placa := DMNFE.cdsNFPLACA.AsString; // X19 - Placa do Veículo
    NFe.Transp.veicTransp.UF := DMNFE.cdsNFESTADO_PLACA.AsString;                // X20 - Sigla da UF
    NFe.Transp.veicTransp.RNTC := DMNFE.cdsNFCDANTT.AsString;                      // X21 - Registro Nacional de Transportador de Carga (ANTT)
      {for i := 0 to 1 do
         begin
           NFe.Transp.Reboque.Add;                                              //       TAG de grupo Reboque - <reboque> - Ocorrência 0-2
           NFe.Transp.Reboque[i].placa := '';                                   // X23 - Placa do Veículo
           NFe.Transp.Reboque[i].UF := '';                                      // X24 - Sigla da UF
           NFe.Transp.Reboque[i].RNTC := '';                                    // X25 - Registro Nacional de Transportador de Carga (ANTT)
         end;}
    for i := 0 to 0 do
    begin
      NFe.Transp.Vol.add;                                                   //       TAG de grupo Volumes - <vol> - Ocorrência 0-N
      NFe.Transp.Vol[i].qVol := DMNFE.cdsNFQUANTIDA.AsInteger;                   // X27 - Quantidade de volumes transportados
      NFe.Transp.vol[i].esp := DMNFE.cdsNFESPECIE.AsString;                     // X28 - Espécie dos volumes transportados
      NFe.Transp.Vol[i].marca := DMNFE.cdsNFMARCA.AsString;                       // X29 - Marca dos volumes transportados
      NFe.Transp.Vol[i].nVol := ' ';                                       // X30 - Numeração dos volumes transportados
      NFe.Transp.Vol[i].pesoL := DMNFE.cdsNFPESOLIQT.AsInteger;                   // X31 - Peso Líquido (em kg)
      NFe.Transp.Vol[i].pesoB := DMNFE.cdsNFPESOBRUT.AsInteger;                   // X32 - Peso Bruto (em kg)
          {
          for j := 0 to 1 do
            begin
              NFe.transp.Vol[i].lacres.add;                                     //TAG de grupo de Lacres - <lacres> - Ocorrência 0-N
              NFe.transp.Vol[i].lacres[j].nLacre := '';                         //X34 - Número dos Lacres
                                                                                //Para Combustíveis, um Caminhão (Toco, Truck, Carreta, Bi-Tren) pode ter até 32 bocas.
                                                                                // Ou seja até 32 lacres. Cada lacre pode ser um número de até 8 digitos.
            end;}
    end
  end
  else if DMNFE.cdsNFFRETEC.AsInteger = 9 then
    NFe.Transp.modFrete := mfSemFrete;
  {$ENDREGION}

  {$REGION 'Duplicatas'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Cobrança - <cobr> - Ocorrência 0-1                                                                *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  if DMPrincipal.cdsPNFeIMPRIME_FATURA.AsInteger = 1 then
  begin                                                                       //>>>   TAG de grupo da Fatura - <fat> - Ocorrência 0-1
    NFe.Cobr.Fat.nFat := DMNFE.cdsNFNRNF.AsString;                                 //Y03 - Número da Fatura
    NFe.Cobr.Fat.vOrig := DMNFE.cdsNFVLTOTNF.AsFloat;                               //Y04 - Valor Original da Fatura
    NFe.Cobr.Fat.vDesc := DMNFE.cdsNFVLDESC.AsFloat;                                //Y05 - Valor do desconto
    NFe.Cobr.Fat.vLiq := DMNFE.cdsNFVLTOTNF.AsFloat;                               //Y06 - Valor Líquido da Fatura
    for i := 0 to DMNFE.cdsCTR.RecordCount - 1 do
    begin
      NFe.Cobr.Dup.Add;                                                     //>>>   TAG de grupo da Duplicata - <dup> - Ocorrência 0-N
      NFe.Cobr.Dup[i].nDup  := DMNFE.cdsNFNRNF.AsString + ' - ' + DMNFE.cdsCTRPARCELA.AsString; // Y08 - Número da Duplicata
      NFe.Cobr.Dup[i].dVenc := DMNFE.cdsCTRVENCIMENTO.AsFloat;                    // Y09 - Data de vencimento
      NFe.Cobr.Dup[i].vDup  := DMNFE.cdsCTRVALOR.AsFloat;                         // Y10 - Valor da duplicata
      DMNFE.cdsCTR.Next;
    end;
  end;
  {$ENDREGION}

  {$REGION 'Dados Adicionais'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Informações Adicionais - <infAdic> - Ocorrência 0-1                                               *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  NFe.InfAdic.infAdFisco := '';
   // Z02 - Informações Adicionais de Interesse do Fisco
   //Pedido do cliente e codigo interno do cliente caso o mesmo exiga

//   IBQ8.Active:=False;
//   IBQ8.SQL.Clear;
//   IBQ8.SQL.Add('Select NFITEM.NRNF, NFITEM.NRSEQUEN, NFITEM.PEDIDCLI, NFITEM.SERIE, NFITEM.NRPEDIDO, '''' as CODIGO_CLIENTE');
//
//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      IBQ8.SQL.Add(',PEDIDO.CODIGO_CLIENTE, Pedido.DESCRICAO_CLIENTE, Clientes.NOSSOCODIGO');
//
//   IBQ8.SQL.Add('from NFITEM');
//
//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      Begin
//       IBQ8.SQL.Add('inner join pedido   on (nfitem.nrpedido=pedido.nrpedido)');
//       IBQ8.SQL.Add('inner join Clientes on (Pedido.CDCLIENTE=Clientes.CDCLIENTE)');
//      End;
//   IBQ8.SQL.Add('Where NFITEM.NRNF ='''+IBQ1.FieldByName('NRNF').Asstring+''' and nfitem.SERIE=''1'' and (NFITEM.NR_EMPRESA ='''+IBQ1.FieldByName('NR_EMPRESA').Asstring+''') ');
//   IBQ8.Active:=True;

//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      Begin
//       If PerguntaNFe.CheckBox4.Checked=True Then
//          Begin
//           If Trim(IBQ8.FieldByName('NOSSOCODIGO').Asstring)<>'' Then
//              PedidoCliente := PedidoCliente + ' Nosso Código: ' + Trim(IBQ8.FieldByName('NOSSOCODIGO').Asstring);
//          End;
//      End;
   //Validade do Lote
//   Validade:='';
//   if Trim(IBQ1.FieldByName('NFE_LOTE_VALIDADE').Asstring)='S' then
//      Begin
//       IBQ8.First;
//       While Not IBQ8.Eof do
//             Begin
//              Validade:= Validade+' Item: '+IBQ8.FieldByName('NRSEQUEN').Asstring+ ' Lote: '+FormatFloat('0000000000', StrToIntDef(IBQ4.FieldByName('NRPEDIDO').AsString,0))+' Validade: '+FormatDateTime('ddmmyyyy',(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime)+360);
//              IBQ8.Next;
//             End;
//      End;
  DMNFE.cdsNFI.First;
  while not DMNFE.cdsNFI.Eof do
  begin
    if (Trim(DMNFE.cdsNFIPEDIDCLI.Asstring) <> '') then
    begin
      PedidoCliente := PedidoCliente + ' Item: ' + DMNFE.cdsNFINRSEQUEN.AsString;

      if Trim(DMNFE.cdsNFIPEDIDCLI.Asstring) <> '' then
        PedidoCliente := PedidoCliente + ' Pedido Cliente: ' + DMNFE.cdsNFIPEDIDCLI.Asstring + '  ';

//          if PerguntaNFe.CheckBox3.Checked = True then
//            begin
//                If Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Cód. Cliente: '+Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring);
//            end;
//            If PerguntaNFe.CheckBox1.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Desc. Cliente: '+Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring);
//               End;
    end;
    DMNFE.cdsNFI.Next;
  end;
//   IBQ8.First;

//   If CheckBox2.Checked=True Then
//      Begin
//       PedidoCliente:=PedidoCliente+'  //  ';
//       While Not IBQ8.Eof do
//           Begin
//            If Trim(IBQ8.FieldByName('PEDIDCLI').Asstring)<>'' Then
//               PedidoCliente:=PedidoCliente+' Item: '+IBQ8.FieldByName('NRSEQUEN').Asstring+' Nr. Lote: '+IBQ8.FieldByName('NRPEDIDO').Asstring+'  ';
//            If PerguntaNFe.CheckBox3.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Cód. Cliente: '+Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring);
//               End;
//            If PerguntaNFe.CheckBox1.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Desc. Cliente: '+Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring);
//               End;
//            IBQ8.Next;
//           End;
//      End;

  NFe.InfAdic.infCpl := PedidoCliente;
  NFe.InfAdic.infCpl := DMNFE.cdsNFOBS_FISCAL.AsString;
  //+' '+
                        //Validade      +
                        //'. Local de entrega: '+IBQ1.FieldByName('LOCENT').AsString;// Z03 - Informações Complementares de interesse do Contribuinte
  {for i := 0 to 9 do
  begin
    NFe.InfAdic.obsCont.Add;                                                    // >>>   TAG de grupo do campo de uso livre do contribuinte - <obsCont> - Ocorrência 0-10
    NFe.InfAdic.obsCont[i].xCampo := '';                                        // Z05 - Identificação do campo (TAM : 1-20)
    NFe.InfAdic.obsCont[i].xTexto := '';                                        // Z06 - Conteúdo do campo (TAM : 1-60)
  end;
  for i := 0 to 9 do
  begin
    NFe.InfAdic.obsFisco.Add;                                                   // >>>   TAG de grupo do campo de uso livre do Fisco - <obsFisco> - Ocorrência 0-10
    NFe.InfAdic.obsFisco[i].xCampo := '';                                       // Z08 - Identificação do campo (TAM : 1-20)
    NFe.InfAdic.obsFisco[i].xTexto := '';                                       // Z09 - Conteúdo do campo (TAM : 1-60)
  end;
  for i := 0 to 1 do
  begin
    NFe.InfAdic.procRef.Add;                                                    // >>>   Tag de grupo do processo referenciado - <procRef> - Ocorrência 0-N
    NFe.InfAdic.procRef[i].nProc := '';                                         // Z08 - Indentificador do processo ou ato concessório
    NFe.InfAdic.procRef[i].indProc := ipSEFAZ;                                  // Z09 - Indicador da origem do processo  (0 - SEFAZ; 1 - Justiça Federal; 2 - Justiça Estadual; 3 - Secex/RFB; 9 - Outros)
  end;}
  {$ENDREGION}

  {$REGION 'Expotação ****Implementar****'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG do Grupo de Exportação - <exporta> - Ocorrência 0-1                                                           *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

  if Copy(DMNFE.cdsNFCDNATOPE.AsString, 1, 1) = '7' then //O grupo sera gravado se um dos campos abaixo for preenchido
  begin
    NFe.exporta.UFSaidaPais := Trim(DMNFE.cdsNFUFEMBARQ.AsString);                  // ZA02 - Sigla da UF onde ocorrerá o Embarque dos produtos
    NFe.exporta.xLocExporta := Trim(DMNFE.cdsNFXLOCEMBARQ.AsString);                // ZA03 - Local onde ocorrerá o Embarque dos produtos

//      if IBQ1.FieldByName('COD_PAIS').AsInteger=5860 Then
//         NFe.exporta.xLocDespacho:='PT DA AMIZADE(BRASIL-PARAGUAY)Foz do Iguaçu/PR 9.50.19.01-4';
  end;
  {$ENDREGION}

  {$REGION 'Compras ****Implementar****'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG do Grupo de Compra - <compra> - Ocorrência 0-1                                                                *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
                          //        O grupo sera gravado se um dos campos abaixo for preenchido
//  NFe.compra.xNEmp := '';                                      // ZB02 - Nota de Empenho quando se tratar de compras públicas
//  NFe.compra.xPed  := IBQ4.FieldByName('PEDIDCLI').AsString;  // ZB03 - Pedido do Cliente
//  NFe.compra.xCont := ''; // ZB04 - Contrato de Compra
  {$ENDREGION}

  {$REGION 'Geração do XML'}
  (* ------------------------------------------------------------------------ *)
  (* TAG do Assinatura - <signature>                                          *)
  (* ------------------------------------------------------------------------ *)
  //        Opcionalmente pode gerar o template da assinatura - Isso não sginifica assinar o arquivo!
  NFe.signature.URI := NFe.infNFe.Id;
  (****************************************************************************)
  (*                G E R A R   O   A R Q U I V O   X M L                     *)
  (****************************************************************************)
  // Criar a class TNFeW para a geração do arquivo conforme os dados inseridos
  // em NFe passar o objeto que contém os dados para a geração do arquivo xml
  NFE.infNFe.Versao := 3.10;
  NFeW := TNFeW.Create(NFe);
  // Informa as opções especificas de TNFeW
  //NFeW.schema := tsPL005C;
  NFeW.Opcoes.AjustarTagNro               := True;                              // Ajusta o tamanho do campo para 3 posições com zero a esquerda
  NFew.Opcoes.GerarTagIPIparaNaoTributado := True;                              // No caso de produto não tributado gera a TAG especifica
  NFeW.Opcoes.GerarTXTSimultaneamente     := False;                             // Possibilita gerar um arquivo TXT do formato do programa SEFAZ-SP
  NFeW.Opcoes.NormatizarMunicipios        := False;                             // Realiza a normatização do nome do municipio conforme a tabela do IBGE
  NFeW.Opcoes.PathArquivoMunicipios       := 'C:\Documents and Settings\administrador\Desktop\0.6.0\MunIBGE'; // Indicar para aonde estão os arquivo com os nomes dos municipios
  NFeW.Opcoes.GerarTagAssinatura          := taNunca;                           // Opção de gerar o template da assinature em branco
  NFeW.Opcoes.ValidarInscricoes           := False;                             // Valida as Inscrições. (É melhor quando essa validação é feita no ERP)
  NFeW.Gerador.Opcoes.IdentarXML          := False;                             // Os arquivos que serão enviados para o SEFAZ não devem estar identados
  NFeW.Gerador.Opcoes.TamanhoIdentacao    := 3;                                 // Tamanho da identação do arquivo
  NFeW.Gerador.Opcoes.FormatoAlerta       := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // Formato em que a mensagem vai ser gravada a ListaDeAlertas
  NFeW.Gerador.Opcoes.RetirarEspacos      := True;                              // Retira os espaços em branco duplos nas tag do xml
  NFeW.Gerador.Opcoes.SuprimirDecimais    := False;                             // Ignora valores não significativos nas casa decimais
  NFeW.Gerador.Opcoes.SomenteValidar      := False;                             // Não gera o arquivo apenas valida as informações
  // Gerar o arquivo XML
  NFeW.GerarXml;
  // Carrega erros
  // if NFeW.Gerador.ListaDeAlertas.Count > 0 then
  //  memo1.Lines.Add(NFeW.gerador.ListaDeAlertas.Text);
  // Gravar o arquivo no HD
  //if NFeW.Gerador.ListaDeAlertas.Count = 0 then // Se não contiver nenhum erro, grava
  //begin

  NFeW.gerador.SalvarArquivo(Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString) + NFeW.ObterNomeArquivo); // Não é necessário informar o parametro fpXML pois ele é default

  if NFeW.Opcoes.GerarTXTSimultaneamente then
    NFeW.gerador.SalvarArquivo(Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString) + NFeW.ObterNomeArquivo + '.txt', fgTXT); // Informar o parametro fgTXT para gerar o arquivo no formato TEXTO

  Chave := NFeW.ObterNomeArquivo;
  NFeW.Free;
  NFe.Free;
  {$ENDREGION}

  {$REGION 'Atualiza Tipo de Emissão'}
  DMNFE.cdsNF.Edit;
  DMNFE.cdsNFNREVENTO.AsInteger := 0;
  DMNFE.cdsNFCHAVE.AsString := Copy(Chave, 0, 44);

  if Trim(ComboBox1.Text) = 'Normal' then
    DMNFE.cdsNFTPEMIS.AsFloat := 1
  else if Trim(ComboBox1.Text) = 'Contingencia' then
    DMNFE.cdsNFTPEMIS.AsFloat := 2
  else if Trim(ComboBox1.Text) = 'SCAN' then
    DMNFE.cdsNFTPEMIS.AsFloat := 3
  else if (Trim(ComboBox1.Text) = 'DPEC') or (Trim(ComboBox1.Text) = 'EPEC') then
    DMNFE.cdsNFTPEMIS.AsFloat := 4
  else if Trim(ComboBox1.Text) = 'FSDA' then
    DMNFE.cdsNFTPEMIS.AsFloat := 5;

  DMNFE.cdsNF.Post;
  DMNFE.cdsNF.ApplyUpdates(0);
  {$ENDREGION}

  BitBtnGerarXML.Enabled := True;
//  PerguntaNFE := TPerguntaNFE.Create(Application);
//  PerguntaNFE.ShowModal;
//  FreeAndNil(PerguntaNFE);
end;

procedure TTelaGeracaoNF.BitBtnGravarClick(Sender: TObject);
begin



  Browse;

  if DMNFE.cdsNF.State = dsInsert then
  begin
    DMNFE.cdsNFCDNF.AsInteger                 := Gerar_id('GEN_NF_ID');
    DMNFE.cdsNFNRNF.AsInteger                 := Gerar_id('GEN_NRNF_ID');
    DMNFE.cdsNFSERIE.AsInteger                := 1;
    DMNFE.cdsNFDTSAIDA.AsDateTime             := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    DMNFE.cdsNFCODIGO_PARA_CHAVE_NFE.AsString := FormatFloat('00000000', Random(99999999));
    DMNFE.cdsNFHORA_EMISSAO.AsDateTime        := DMPrincipal.cdsData.FieldByName('CURRENT_TIME').AsDateTime;
    DMNFE.cdsNFTPDOCTO.AsString               := 'NF';

    DMNFE.cdsICMS.Close;
    DMNFE.cdsICMS.FetchParams;
    DMNFE.cdsICMS.Params.ParamByName('ANO').AsString := IntToStr(YearOf(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime));
    DMNFE.cdsICMS.Params.ParamByName('ESTADO').AsString := DMNFE.cdsNFUF.AsString;
    DMNFE.cdsICMS.Open;
    DMNFE.cdsNFPCICMS.AsInteger := DMNFE.cdsICMSALIQ.AsInteger;
  end;

  CalculaValotTotalNFe;

  DMNFE.cdsNF.Post;
  DMNFE.cdsNF.ApplyUpdates(0);
  DMNFE.cdsNFI.ApplyUpdates(0);
  DMNFE.cdsNF.Refresh;
  DMNFE.cdsNFI.Refresh;
end;

procedure TTelaGeracaoNF.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMNFE.cdsNF.Insert;
  DMNFE.cdsNFNRNF.AsInteger   := Consulta_id('GEN_NRNF_ID') + 1;
  DMNFE.cdsNFCDNF.AsInteger   := Consulta_id('GEN_NF_ID') + 1;
  DMNFE.cdsNFSERIE.AsInteger  := 1;
  DMNFE.cdsNFUSUARIO.AsString := VarNomeUsuario;
  DMNFE.cdsNFINDSTAT.AsString := 'G';
  DBComboBox1.SetFocus;
end;

procedure TTelaGeracaoNF.BitBtnOKClick(Sender: TObject);
var VarQuery : String;
begin
  if (Trim(MaskeditPesquisa.Text) <> '') or ((RadioGroupPesquisa.ItemIndex = 5) and (MaskEditDataI.Text <> '  /  /    ')) then
  begin
  VarQuery := ('select nf.cdnf, nf.nrnf, nf.serie, nf.dtemisnf, nf.hora_emissao, nf.baseicmsubst, '+
               '       nf.tpdocto, nf.cdpedido, nf.cdcliente, nf.dtsaida, nf.vltotmer,            '+
               '       nf.baseipi, nf.vltotipi,nf.vltotnf,nf.vldesc, nf.pcdesc, nf.vltoticmsubst, '+
               '       nf.vlcomis,nf.cdvended,nf.baseicms,nf.pcicms,nf.vltoticms,natuope.descrnat,'+
               '       nf.cdobsfis, nf.obs_fiscal, nf.cst_ipi, nf.enquadramento_ipi, nf.especie,  '+
               '       nf.quantida, nf.cdnatope, nf.cdtransp, nf.fretec, nf.tipo_tranporte,       '+
               '       nf.placa, nf.estado_placa, nf.pcfrete, nf.vltotfre, nf.pesoliqt,           '+
               '       nf.pesobrut, nf.usuario, nf.indstat, nf.fatura, nf.vldev, nf.icmsfrete,    '+
               '       nf.clifor, nf.vltotservico, nf.vltotiss, nf.valor_total_pis, nf.marca,     '+
               '       nf.valor_total_cofins, nf.referencia_nc, nf.valor_diferimento, nf.chave,   '+
               '       nf.tpemis, nf.versao_nfe, nf.data_cancelamento, nf.refnf, nf.ufembarq,     '+
               '       nf.xlocembarq, nf.resultado_nfe, nf.protocolo_nfe, nf.canhoto_ok,          '+
               '       nf.nrevento, nf.referencia_nf_devolucao, nf.nf_entrada, nf.epec_conciliado,'+
               '       nf.codigo_para_chave_nfe, nf.vlseguro, nf.vloutras_despesas, nf.cdantt,    '+
               '       transportadores.nome as transportador,                                                  '+
               '       transportadores.cpf_cnpj as Transp_cpf_cnpj,                                            '+
               '       transportadores.rg_ie as transp_rg_ie,                                                  '+
               '       transportadores.endereco as transp_endereco,                                            '+
               '       transportadores.numero as transp_numero,                                                '+
               '       Transportadores.cidade as transp_cidade,                                                '+
               '       Transportadores.uf as transp_uf,                                                        '+
               '       Transportadores.tipo_pessoa as transp_tipo_pessoa,                                      '+
               '       vendedores.nome as vendedor,                                                            '+
               '       case when nf.cdcliente is null then ''Consumidor''                                      '+
               '       else ( select nome from ( select c.nome,c.cdpessoa from clientes c union                '+
               '       select f.nome, f.cdpessoa from fornecedores f union                                     '+
               '       select t.nome, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente )                                                         '+
               '       end as cliente,                                                                         '+
               '       ( select cpf_cnpj from ( select c.cpf_cnpj, c.cdpessoa from clientes c union            '+
               '       select f.cpf_cnpj, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cpf_cnpj, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cpf_cnpj,                                            '+
               '       ( select ie_rg from ( select c.ie_rg, c.cdpessoa from clientes c union                  '+
               '       select f.rg_ie, f.cdpessoa from fornecedores f union                                    '+
               '       select t.rg_ie, t.cdpessoa from transportadores t)                                      '+
               '       where cdpessoa = nf.cdcliente ) as ie_rg,                                               '+
               '       ( select endereco from ( select c.endereco, c.cdpessoa from clientes c union            '+
               '       select f.endereco, f.cdpessoa from fornecedores f union                                 '+
               '       select t.endereco, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as endereco,                                            '+
               '       ( select numero from ( select c.numero , c.cdpessoa from clientes c union               '+
               '       select f.numero, f.cdpessoa from fornecedores f union                                   '+
               '       select t.numero, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as numero,                                              '+
               '       ( select bairro from ( select c.bairro, c.cdpessoa from clientes c union                '+
               '       select f.bairro, f.cdpessoa from fornecedores f union                                   '+
               '       select t.bairro, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as bairro,                                              '+
               '       ( select cidade from ( select c.cidade, c.cdpessoa from clientes c union                '+
               '       select f.cidade, f.cdpessoa from fornecedores f union                                   '+
               '       select t.cidade, t.cdpessoa from transportadores t)                                     '+
               '       where cdpessoa = nf.cdcliente ) as cidade,                                              '+
               '       ( select cep from ( select c.cep, c.cdpessoa from clientes c union                      '+
               '       select f.cep, f.cdpessoa from fornecedores f union                                      '+
               '       select t.cep, t.cdpessoa from transportadores t)                                        '+
               '       where cdpessoa = nf.cdcliente ) as cep,                                                 '+
               '       ( select uf from ( select c.uf, c.cdpessoa from clientes c union                        '+
               '       select f.uf, f.cdpessoa from fornecedores f union                                       '+
               '       select t.uf, t.cdpessoa from transportadores t)                                         '+
               '       where cdpessoa = nf.cdcliente ) as uf,                                                  '+
               '       ( select cod_ibge from ( select c.cod_ibge, c.cdpessoa from clientes c union            '+
               '       select f.cod_ibge, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cod_ibge, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cod_ibge,                                            '+
               '       ( select cod_pais from ( select c.cod_pais, c.cdpessoa from clientes c union            '+
               '       select f.cod_pais, f.cdpessoa from fornecedores f union                                 '+
               '       select t.cod_pais, t.cdpessoa from transportadores t)                                   '+
               '       where cdpessoa = nf.cdcliente ) as cod_pais,                                            '+
               '       ( select pais from ( select c.pais, c.cdpessoa from clientes c union                    '+
               '       select f.pais, f.cdpessoa from fornecedores f union                                     '+
               '       select t.pais, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente ) as pais,                                                '+
               '       ( select fone from ( select c.fone, c.cdpessoa from clientes c union                    '+
               '       select f.fone, f.cdpessoa from fornecedores f union                                     '+
               '       select t.fone, t.cdpessoa from transportadores t)                                       '+
               '       where cdpessoa = nf.cdcliente) as fone,                                                 '+
               '       ( select tipo_pessoa from ( select c.tipo_pessoa, c.cdpessoa from clientes c union      '+
               '       select f.tipo_pessoa, f.cdpessoa from fornecedores f union                              '+
               '       select t.tipo_pessoa, t.cdpessoa from transportadores t)                                '+
               '       where cdpessoa = nf.cdcliente ) as tipo_pessoa,                                         '+
               '       ( select email_nfe from ( select c.email_nfe, c.cdpessoa from clientes c union          '+
               '       select f.email_nfe, f.cdpessoa from fornecedores f union                                '+
               '       select t.email_nfe, t.cdpessoa from transportadores t)                                  '+
               '       where cdpessoa = nf.cdcliente ) as email_nfe                                            '+
               '       from nf                                                                                 '+
               '       left join natuope on natuope.cdnatope = nf.cdnatope                                     '+
               '       left join transportadores on transportadores.cdtransportador = nf.cdtransp              '+
               '       left join vendedores on vendedores.cdvendedor = nf.cdvended                             '+
               '       left join pedidos on pedidos.cdpedido = nf.cdpedido                                     '+
               '       left join clientes on     (clientes.cdpessoa = pedidos.cdcliente and nf.clifor = ''C'') '+
               '       left join fornecedores on (fornecedores.cdpessoa = nf.cdcliente and nf.clifor = ''F'')  '+
               '       left join transportadores t on (t.cdpessoa = nf.cdcliente and nf.clifor = ''T'')        ');
    case RadioGroupPesquisa.ItemIndex of
      0: VarQuery := VarQuery + ' where nf.nrnf = ''' + MaskeditPesquisa.Text + ''' ';
      1: VarQuery := VarQuery + ' where nf.cdpedido = ''' + MaskeditPesquisa.Text + ''' ';
      2: VarQuery := VarQuery + ' where UPPER(cliente) LIKE UPPER(''%' + MaskeditPesquisa.Text + '%'') ';
      3: VarQuery := VarQuery + ' where (nf.DTEMISNF >= ''' + FormatDateTime('DD/MM/YYYY', StrToDate(MaskeditDataI.Text)) + ''' and nf.DTEMISNF <= ''' + FormatDateTime('DD/MM/YYYY', StrToDate(MaskeditDataF.Text)) + ''' ) ';
    end;
    DMNFE.cdsNF.Close;
    DMNFE.cdsNF.CommandText := VarQuery;
    DMNFE.cdsNF.Open;


//    DMNFE.cdsNF.Filtered := False;
//    case RadioGroupPesquisa.ItemIndex of
//      0:
//        DMNFE.cdsNF.Filter := 'NRNF     = ''' + MaskeditPesquisa.Text + ''' ';
//      1:
//        DMNFE.cdsNF.Filter := 'CDPEDIDO = ''' + MaskeditPesquisa.Text + ''' ';
//      2:
//        DMNFE.cdsNF.Filter := 'UPPER(CLIENTE) LIKE UPPER(''%' + MaskeditPesquisa.Text + '%'') ';
//      3:
//        DMNFE.cdsNF.Filter := '(DTEMISNF >= ''' + FormatDateTime('DD/MM/YYYY', StrToDate(MaskeditDataI.Text)) + ''' and DTEMISNF- <= ''' + FormatDateTime('DD/MM/YYYY', StrToDate(MaskeditDataF.Text)) + ''' ) ';
//    end;
//    DMNFE.cdsNF.Filtered := True;
    MaskeditPesquisa.Clear;
  end;
end;

procedure TTelaGeracaoNF.BitBtnSairClick(Sender: TObject);
begin
  DMNFE.cdsNF.Close;
  DMNFE.cdsNFI.Close;
  Close;
end;

procedure TTelaGeracaoNF.DBComboBox2Exit(Sender: TObject);
begin
  if DMNFE.cdsNFFRETEC.AsString = '0' then
  begin
    Label37.Font.Color := clRed;
    DBEdit15.TabStop := True;
    DBEdit15.SetFocus;
  end
  else
  begin
    Label37.Font.Color := clBlack;
    DBEdit15.TabStop := False;
  end;

end;

procedure TTelaGeracaoNF.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text = '' then
    DBEdit10.Text := '0,00';

  CalculaValotTotalNFe;
end;

procedure TTelaGeracaoNF.DBEdit11Exit(Sender: TObject);
begin
  if DBEdit11.Text = '' then
    DBEdit11.Text := '0,00';

  CalculaValotTotalNFe;
end;

procedure TTelaGeracaoNF.DBEdit12Exit(Sender: TObject);
begin
  if DBEdit12.Text = '' then
    DBEdit12.Text := '0,00';
  CalculaValotTotalNFe;
end;

procedure TTelaGeracaoNF.DBEdit15Exit(Sender: TObject);
begin
  if (not BitBtnCancelar.Focused) and (DMNFE.cdsNFCDTRANSP.AsInteger <> 0) then
  begin
    DMNFE.cdsTransp.Open;
    DMNFE.cdsTransp.Filtered := False;
    DMNFE.cdsTransp.Filter := ('CDTRANSPORTADOR = ''' + DMNFE.cdsNFCDTRANSP.AsString + ''' ');
    DMNFE.cdsTransp.Filtered := True;

    if DMNFE.cdsTransp.IsEmpty then
    begin
      Application.MessageBox('Transportador Inexistente, Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
      DBEdit15.SetFocus;
    end
    else
    begin
      DMNFE.cdsNFFRETEC.AsString        := '1';
      DMNFE.cdsNFTRANSPORTADOR.AsString := DMNFE.cdsTranspNOME.AsString;
      DMNFE.cdsNFCDANTT.AsInteger       := StrToIntDef(Trim(DMNFE.cdsTranspANTT.AsString), 0);
      DMNFE.cdsNFPLACA.AsString         := TiraCharNaoPermitido(DMNFE.cdsTranspPLACA.AsString);
      DMNFE.cdsNFESTADO_PLACA.AsString  := DMNFE.cdsTranspESTADO_PLACA.AsString;
    end;
  end;
end;

procedure TTelaGeracaoNF.DBEdit26Exit(Sender: TObject);
begin
  DMNFE.cdsNFIVLTOTAL.AsFloat := DMNFE.cdsNFIVLUNIT.AsFloat * DMNFE.cdsNFIQUANTIDA.AsFloat;
end;

procedure TTelaGeracaoNF.DBEdit2Exit(Sender: TObject);
var
  i: Integer;
  VarBaseCalcICMS: Real;
  VarBaseCalcIPI: Real;
  VarValorICMS: Real;
  VarValorIPI: Real;
begin
  if not BitBtnCancelar.Focused then
  begin
    {$REGION 'Zerando as Variaveis'}
    VarValorICMS    := 0;
    VarBaseCalcICMS := 0;
    VarBaseCalcIPI  := 0;
    VarValorIPI     := 0;
    {$ENDREGION}

    DMNFE.cdsPedido.Close;
    DMNFE.cdsPedido.FetchParams;
    DMNFE.cdsPedido.Params.ParamByName('CDPEDIDO').AsInteger := DMNFE.cdsNFCDPEDIDO.AsInteger;
    DMNFE.cdsPedido.Open;

    if DMNFE.cdsPedido.IsEmpty then
      begin
        Application.MessageBox('Pedido Inexistente, Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
        DBEdit2.SetFocus;
        Abort;
      end
    else
      begin
        {$REGION 'Consiste Cliente Consumidor'}
        if (DMNFE.cdsPedidoCDCLIENTE.AsInteger = 0) then
          begin
            Application.MessageBox('Pedido para Cliente Consumidor, Não é Possível a Emissão de NFe.', 'Atenção', MB_OK + MB_ICONWARNING);
            DBEdit2.SetFocus;
            Abort
          end;
        {$ENDREGION}

        {$REGION 'Consistencia "Tipo de Venda" '}
        if (Trim(DMNFE.cdsPedidoTIPO.AsString) = 'O') then
          begin
            Application.MessageBox('Atenção: Este Pedido é de Orçamento e Não pode ser Gerado uma NFe, Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
            DBEdit2.SetFocus;
            Abort;
          end
        else
          if (Trim(DMNFE.cdsPedidoTIPO.AsString) = 'D') and (DMNFE.cdsNODEVOLUCAO.AsInteger <> 1) then
            begin
              Application.MessageBox('Atenção: Este Pedido é de Devolução, A CFOP é Incompativel com esta Operação. Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
              DBEdit2.SetFocus;
              Abort;
            end;
        {$ENDREGION}

        {$REGION 'Dados do Cliente'}
        DMNFE.cdsNFCDCLIENTE.AsInteger := DMNFE.cdsPedidoCDCLIENTE.AsInteger;
        DMNFE.cdsNFCLIENTE.AsString    := DMNFE.cdsPedidoCLIENTE.AsString;
        DMNFE.cdsNFCPF_CNPJ.AsString   := DMNFE.cdsPedidoCPF_CNPJ.AsString;
        DMNFE.cdsNFENDERECO.AsString   := DMNFE.cdsPedidoENDERECO.AsString;
        DMNFE.cdsNFBAIRRO.AsString     := DMNFE.cdsPedidoBAIRRO.AsString;
        DMNFE.cdsNFCEP.AsString        := DMNFE.cdsPedidoCEP.AsString;
        DMNFE.cdsNFCIDADE.AsString     := DMNFE.cdsPedidoCIDADE.AsString;
        DMNFE.cdsNFFONE.AsString       := DMNFE.cdsPedidoFONE.AsString;
        DMNFE.cdsNFUF.AsString         := DMNFE.cdsPedidoUF.AsString;
        DMNFE.cdsNFIE_RG.AsString      := DMNFE.cdsPedidoRG_IE.AsString;
        {$ENDREGION}

        DMNFE.cdsPedidoI.Open;
        {$REGION 'Dados do Item'}
        for i := 0 to DMNFE.cdsPedidoI.RecordCount - 1 do
          begin
            DMNFE.cdsNFI.Insert;
            DMNFE.cdsNFICDNFITEM.AsInteger  := Gerar_id('GEN_NFITEM_ID');
            DMNFE.cdsNFINRNF.AsInteger      := DMNFE.cdsNFNRNF.AsInteger;
            DMNFE.cdsNFISERIE.AsInteger     := 1;
            DMNFE.cdsNFINRSEQUEN.AsInteger  := DMNFE.cdsPedidoICONTADOR.AsInteger;
            DMNFE.cdsNFICDNF.AsInteger      := DMNFE.cdsNFCDNF.AsInteger;
            DMNFE.cdsNFICDPEDIDO.AsInteger  := DMNFE.cdsPedidoCDPEDIDO.AsInteger;      //Numero do Pedido de Vendas
            DMNFE.cdsNFITIPO_BAIXA.AsString := 'T';                                    //Tipo de Baixa Fixa em (T) Total
            DMNFE.cdsNFIQUANTIDA.AsFloat    := DMNFE.cdsPedidoIQTD.AsFloat;            //Quantidade do Produto
            DMNFE.cdsNFIVLUNIT.AsFloat      := DMNFE.cdsPedidoIVALOR_UNITARIO.AsFloat; //Valor Unitário do Produto
            DMNFE.cdsNFIVLTOTAL.AsFloat     := DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat;    //Valor Total do Produto
            DMNFE.cdsNFICDTRIBUT.AsInteger  := 0;                                      //Sem Valor Definido
            DMNFE.cdsNFIUNIDADE.AsString    := DMNFE.cdsPedidoITIPO_UN_SAIDA.AsString; //Unidade do Produto
            DMNFE.cdsNFINCM.AsString        := DMNFE.cdsPedidoINCM.AsString;           //NCM

            {$REGION 'Classificação Fiscal'}
            DMPrincipal.cdsClassFiscal.Close;
            DMPrincipal.cdsClassFiscal.FetchParams;
            DMPrincipal.cdsClassFiscal.Params.ParamByName('NRCLASS').AsInteger := DMNFE.cdsPedidoINCM.AsInteger;
            DMPrincipal.cdsClassFiscal.Open;

            DMNFE.cdsNFIIDCLASS.AsInteger   := DMPrincipal.cdsClassFiscalCDCLASSIFICACAO_FISCAL.AsInteger; //Class Fiscal (NCM)
            DMNFE.cdsNFIPCIPI.AsInteger     := DMPrincipal.cdsClassFiscalPCAIPI.AsInteger;

            if DMPrincipal.cdsClassFiscalPCAIPI.AsInteger > 0 then
              DMNFE.cdsNFIVLTOTIPI.AsFloat := ((DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat * DMPrincipal.cdsClassFiscalPCAIPI.AsInteger) / 100)
            else
              begin
                DMNFE.cdsNFIVLTOTIPI.AsFloat := DMPrincipal.cdsClassFiscalPCAIPI.AsInteger;
                DMNFE.cdsNFIBASEIPI.AsFloat  := 0;
              end;
            {$ENDREGION}

            DMNFE.cdsNFICDBENEF.AsInteger   := 0;                                       //Sem Valor REcebendo 0
            DMNFE.cdsNFICDPRODUTO.AsInteger := DMNFE.cdsPedidoICDPRODUTO.AsInteger;     //Código do Produto
            DMNFE.cdsNFIREFEREN.AsString    := DMNFE.cdsPedidoICDINTERNO.AsString;      //Código do Produto na NF
            DMNFE.cdsNFIDESCPRO.AsString    := DMNFE.cdsPedidoIDESCRICAO.AsString;      //Descrição do Produto
            DMNFE.cdsNFIPEDIDCLI.AsString   := MaskEditPedidoCliente.Text;              //Pedido Cliente
            DMNFE.cdsNFISITUTRI.AsString    := DMNFE.cdsPedidoISIT_TRIBUTARIA.AsString; //Situação Tributária do Ítem - Busca Cadastro de Produto
            DMNFE.cdsNFIVLDESCI.AsFloat     := 0;                                       //Valor Desconto do Item - Não Implementado.

            if DMNFE.cdsPedidoIICMS.AsInteger > 0 then                                  //ICMS
              begin
                DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat := DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat;

                DMNFE.cdsICMS.Close;
                DMNFE.cdsICMS.FetchParams;
                DMNFE.cdsICMS.Params.ParamByName('ANO').AsString    := IntToStr(YearOf(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime));
                DMNFE.cdsICMS.Params.ParamByName('ESTADO').AsString := DMNFE.cdsPedidoUF.AsString;
                DMNFE.cdsICMS.Open;

                DMNFE.cdsNFIPCICM.AsInteger  := DMNFE.cdsICMSALIQ.AsInteger;
                DMNFE.cdsNFIVLTOTICM.AsFloat := ((DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat * DMNFE.cdsICMSALIQ.AsInteger) / 100);
              end
            else
              begin
                DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat := 0;
                DMNFE.cdsNFIPCICM.AsInteger           := 0;
                DMNFE.cdsNFIVLTOTICM.AsFloat           := 0;
              end;

            DMNFE.cdsST.Close;
            DMNFE.cdsST.FetchParams;
            DMNFE.cdsST.Params.ParamByName('CODIGOST').AsString := DMNFE.cdsNFISITUTRI.AsString;
            DMNFE.cdsST.Open;

            {$REGION 'PIS'}
            if DMNFE.cdsSTPIS.AsString = 'S' then
              begin
                DMNFE.cdsNFIPCPIS.AsFloat     := 1.65;
                DMNFE.cdsNFIVALOR_PIS.AsFloat := ((DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat * 1.65) / 100);
              end
            else
              begin
                DMNFE.cdsNFIPCPIS.AsFloat     := 0;
                DMNFE.cdsNFIVALOR_PIS.AsFloat := 0;
              end;
            {$ENDREGION}

            {$REGION 'Cofins'}
            if DMNFE.cdsSTCOFINS.AsString = 'S' then
              begin
                DMNFE.cdsNFIPCCOFINS.AsFloat     := 7.6;
                DMNFE.cdsNFIVALOR_COFINS.AsFloat := ((DMNFE.cdsPedidoIVALOR_TOTAL.AsFloat * 7.6) / 100);
              end
            else
              begin
                DMNFE.cdsNFIPCCOFINS.AsFloat     := 0;
                DMNFE.cdsNFIVALOR_COFINS.AsFloat := 0;
              end;
            {$ENDREGION}

            DMNFE.cdsNFISERVICO_PRODUTO.AsString := DMNFE.cdsPedidoISERVICO.AsString;     //Servico ou Produto 0 = Produto 1 = Serviço
            DMNFE.cdsNFICDNATOPEITEM.AsString    := DMNFE.cdsNFCDNATOPE.AsString;
            DMNFE.cdsNFICSTPIS.AsString          := DMNFE.cdsPedidoISITUACAO_PIS.AsString;
            DMNFE.cdsNFICSTIPI.AsString          := DMNFE.cdsPedidoISITUACAO_IPI_SAIDA.AsString;
            DMNFE.cdsNFICSTCOFINS.AsString       := DMNFE.cdsPedidoISITUACAO_COFINS.AsString;
            DMNFE.cdsNFI.Post;

            VarValorICMS    := VarValorICMS    + DMNFE.cdsNFIVLTOTICM.AsFloat;
            VarBaseCalcICMS := VarBaseCalcICMS + DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat;
            VarBaseCalcIPI  := VarBaseCalcIPI  + DMNFE.cdsNFIVLTOTIPI.AsFloat;
            VarValorIPI     := VarValorIPI     + DMNFE.cdsNFIVLTOTIPI.AsFloat;

            DMNFE.cdsPedidoi.Next;
          end;
          {$ENDREGION}

        DMNFE.cdsNFCDVENDED.AsInteger    := DMNFE.cdsPedidoCDVENDEDOR.AsInteger;
        DMNFE.cdsNFBASEICMS.AsFloat      := VarBaseCalcICMS;
        DMNFE.cdsNFVLTOTICMS.AsFloat     := VarValorICMS;
        DMNFE.cdsNFPCICMS.AsFloat        := DMNFE.cdsPedidoIICMS.AsInteger;
        DMNFE.cdsNFBASEICMSUBST.AsFloat  := 0;
        DMNFE.cdsNFVLTOTICMSUBST.AsFloat := 0;
        DMNFE.cdsNFVLTOTMER.AsFloat      := DMNFE.cdsPedidoVALOR_TOTAL.AsFloat;
        DMNFE.cdsNFBASEIPI.AsFloat       := VarBaseCalcIPI;
        DMNFE.cdsNFVLTOTIPI.AsFloat      := VarValorIPI;
        DMNFE.cdsNFVLTOTNF.AsFloat       := DMNFE.cdsPedidoVALOR_TOTAL.AsFloat;
        DMNFE.cdsNFCLIFOR.AsString       := 'C';
      end;
  end;
end;

procedure TTelaGeracaoNF.etfEdit33Exit(Sender: TObject);
begin
  DBEdit8.SetFocus;
end;

procedure TTelaGeracaoNF.DBEdit34Exit(Sender: TObject);
begin
  if not BitBtnCancelar.Focused then
  begin
    if DMNFE.cdsNODEVOLUCAO.AsInteger = 1 then
    begin
      DMNFE.cdsFornecedor.Open;
      DMNFE.cdsFornecedor.Filtered := False;
      DMNFE.cdsFornecedor.Filter := ('CDFORNECEDOR = ''' + DMNFE.cdsNFCDCLIENTE.AsString + ''' ');
      DMNFE.cdsFornecedor.Filtered := True;

      if DMNFE.cdsFornecedor.IsEmpty then
      begin
        Application.MessageBox('Fornecedor Inexistente, Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
        DBEdit34.SetFocus;
      end
      else
      begin
        DMNFE.cdsNFCLIENTE.AsString  := DMNFE.cdsFornecedorNOME.AsString;
        DMNFE.cdsNFCPF_CNPJ.AsString := DMNFE.cdsFornecedorCPF_CNPJ.AsString;
        DMNFE.cdsNFIE_RG.AsString    := DMNFE.cdsFornecedorRG_IE.AsString;
        DMNFE.cdsNFENDERECO.AsString := DMNFE.cdsFornecedorENDERECO.AsString + ', ' + DMNFE.cdsFornecedorNUMERO.AsString;
        DMNFE.cdsNFBAIRRO.AsString   := DMNFE.cdsFornecedorBAIRRO.AsString;
        DMNFE.cdsNFCEP.AsString      := DMNFE.cdsFornecedorCEP.AsString;
        DMNFE.cdsNFCIDADE.AsString   := DMNFE.cdsFornecedorCIDADE.AsString;
        DMNFE.cdsNFFONE.AsString     := DMNFE.cdsFornecedorFONE.AsString;
        DMNFE.cdsNFUF.AsString       := DMNFE.cdsFornecedorUF.AsString;
        DMNFE.cdsNFCLIFOR.AsString   := 'F';
      end;
    end;
  end;
end;

procedure TTelaGeracaoNF.DBEdit40Exit(Sender: TObject);
begin
  //Calculo do ICMS
  if DMNFE.cdsNFIPCICM.AsFloat > 0 then
    begin
      DMNFE.cdsNFIVLTOTICM.AsFloat := ((DMNFE.cdsNFIVLTOTAL.AsFloat * DMNFE.cdsNFIPCICM.AsFloat) / 100);
      DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat := DMNFE.cdsNFIVLTOTAL.AsFloat;
    end
  else
    begin
      DMNFE.cdsNFIVLTOTIPI.AsFloat := DMNFE.cdsNFIPCICM.AsFloat;
      DMNFE.cdsNFIBASE_CALCULO_ICMS.AsFloat := 0;
    end;
end;

procedure TTelaGeracaoNF.DBEdit41Exit(Sender: TObject);
begin
  //Calculo do IPI
  if DMNFE.cdsNFIPCIPI.AsFloat > 0 then
    DMNFE.cdsNFIVLTOTIPI.AsFloat := ((DMNFE.cdsNFIVLTOTAL.AsFloat * DMNFE.cdsNFIPCIPI.AsFloat) / 100)
  else
    begin
      DMNFE.cdsNFIVLTOTIPI.AsFloat := DMNFE.cdsNFIPCIPI.AsFloat;
      DMNFE.cdsNFIBASEIPI.AsFloat := 0;
    end;
end;

procedure TTelaGeracaoNF.DBEdit4Exit(Sender: TObject);
begin
  if not BitBtnCancelar.Focused then
    begin
      DMNFE.cdsNO.Open;
      DMNFE.cdsNO.Filtered := False;
      DMNFE.cdsNO.Filter := ('CDNATOPE = ''' + DMNFE.cdsNFCDNATOPE.AsString + ''' ');
      DMNFE.cdsNO.Filtered := True;

      if DMNFE.cdsNO.IsEmpty then
      begin
        Application.MessageBox('Natureza de Operação Inexistente, Favor Verificar.', 'Atenção', MB_OK + MB_ICONWARNING);
        DBEdit4.SetFocus;
      end
      else
      begin
        DMNFE.cdsNFDESCRNAT.AsString := DMNFE.cdsNODESCRNAT.AsString;

        if DMNFE.cdsNOIMPORTACAO.AsInteger = 1 then
        begin
          Label17.Enabled := True;
          Label18.Enabled := True;
          DBComboBox3.Enabled := True;
          DBEdit32.Enabled := True;
        end
        else
        begin
          Label17.Enabled := False;
          Label18.Enabled := False;
          DBComboBox3.Enabled := False;
          DBEdit32.Enabled := False;
        end;

  //      if DMNFE.cdsNODEVOLUCAO.AsInteger = 1 then
  //      begin
  //        Label16.Enabled := True;
  //        DBEdit33.Enabled := True;
  //        Label48.Font.Color := clRed;                           //Label Código do Fornecedor
  //        DBedit34.ReadOnly := False;                           //Código do Fornecedor
  //        Label2.Enabled := False;                           //Label Nº Pedido
  //        DBedit2.Enabled := False;                           //Nº Pedido
  //        Label15.Enabled := False;                           //Label OC Cliente
  //        MaskEditPedidoCliente.Enabled := False;
  //
  //        SpeedButtonIncluir.Visible := True;
  //        SpeedButtonGravar.Visible := True;
  //        SpeedButtonExcluir.Visible := True;
  //        SpeedButtonCancelar.Visible := True;
  //        cdsNFCDPEDIDO.AsInteger := 0;
  //      end
  //      else
  //      begin
  //        Label16.Enabled := False;
  //        DBEdit33.Enabled := False;
  //        Label48.Font.Color := clBlue;
  //        DBedit34.ReadOnly := True;
  //        Label2.Enabled := True;                                       //Label Nº Pedido
  //        DBedit2.Enabled := True;                                       //Nº Pedido
  //        Label15.Enabled := True;                                       //Label OC Cliente
  //        MaskEditPedidoCliente.Enabled := True;
  //
  //        SpeedButtonIncluir.Visible := False;
  //        SpeedButtonGravar.Visible := False;
  //        SpeedButtonExcluir.Visible := False;
  //        SpeedButtonCancelar.Visible := False;
  //      end;
      end;

    end;
end;

procedure TTelaGeracaoNF.DBEdit8Exit(Sender: TObject);
begin
  DMNFE.cdsProdutos.Open;
  DMNFE.cdsProdutos.Filtered := False;
  DMNFE.cdsProdutos.Filter := ('CDINTERNO = ''' + DMNFE.cdsNFIREFEREN.AsString + ''' ');
  DMNFE.cdsProdutos.Filtered := True;
  if DMNFE.cdsProdutos.IsEmpty then
  begin
    case Application.MessageBox('    Produto Não Encontrado no Cadastro.' + #13#10 + 'Deseja Inserir as informações manualmente?', 'Atenção', MB_YESNO + MB_ICONWARNING) of
      IDYES:
        begin
          DMNFE.cdsNFICDNFITEM.AsInteger := Gerar_id('GEN_NFITEM_ID');
          DMNFE.cdsNFICDNF.AsInteger := DMNFE.cdsNFCDNF.AsInteger;
          DMNFE.cdsNFINRNF.AsInteger := DMNFE.cdsNFNRNF.AsInteger;
          DMNFE.cdsNFISERIE.AsInteger := 1;
          DMNFE.cdsNFINRSEQUEN.AsInteger := 1;                           //****Verificar Sequencia*****
          DMNFE.cdsNFICDPEDIDO.AsInteger := 0;                           //Sem Pedido NFe - Devolução
          DMNFE.cdsNFITIPO_BAIXA.AsString := 'T';                         //Tipo de Baixa Fixa em (T) Total
        end;
      IDNO:
        begin
          DBEdit8.SetFocus;
        end;
    end;
  end
  else
  begin
    {$REGION 'Dados do Item'}
    DMNFE.cdsNFICDNFITEM.AsInteger := Gerar_id('GEN_NFITEM_ID');
    DMNFE.cdsNFICDNF.AsInteger := DMNFE.cdsNFCDNF.AsInteger;
    DMNFE.cdsNFINRNF.AsInteger := DMNFE.cdsNFNRNF.AsInteger;
    DMNFE.cdsNFISERIE.AsInteger := 1;
    DMNFE.cdsNFINRSEQUEN.AsInteger := 1;                                  //****Verificar Sequencia*****
    DMNFE.cdsNFICDPEDIDO.AsInteger := 0;                                  //Sem Pedido NFe - Devolução
    DMNFE.cdsNFITIPO_BAIXA.AsString := 'T';                                //Tipo de Baixa Fixa em (T) Total
    DMNFE.cdsNFIVLUNIT.AsFloat := DMNFE.cdsProdutosVALOR_VENDA.AsFloat; //Valor Unitário do Produto

    DMPrincipal.cdsClassFiscal.Close;
    DMPrincipal.cdsClassFiscal.FetchParams;
    DMPrincipal.cdsClassFiscal.Params.ParamByName('NRCLASS').AsInteger := StrToInt(DMNFE.cdsProdutosNCM.AsString);
    DMPrincipal.cdsClassFiscal.Open;

    DMNFE.cdsNFIIDCLASS.AsInteger := DMPrincipal.cdsClassFiscalCDCLASSIFICACAO_FISCAL.AsInteger; //Class Fiscal (NCM)
    DMNFE.cdsNFIPCIPI.AsInteger := DMPrincipal.cdsClassFiscalPCAIPI.AsInteger;
    case DMPrincipal.cdsEmpresaCRT.AsInteger of
      1 : DMNFE.cdsNFISITUTRI.AsString := DMNFE.cdsProdutosSIT_TRIBUTARIA.AsString;
    end;
    DMNFE.cdsNFICFOP.AsString := DMNFE.cdsNFCDNATOPE.AsString;
    DMNFE.cdsNFICDTRIBUT.AsInteger := 0;
    DMNFE.cdsNFIUNIDADE.AsString := DMNFE.cdsProdutosTIPO_UN_SAIDA.AsString; //Unidade do Produto
    DMNFE.cdsNFIDESCPRO.AsString := DMNFE.cdsProdutosDESCRICAO.AsString; //Descrição do Produto
    DMNFE.cdsNFINCM.AsString := DMNFE.cdsProdutosNCM.AsString;      //NCM (Nome Comum Mercosul)
    DMNFE.cdsNFICDNATOPEITEM.AsString := DMNFE.cdsProdutosCFOP.AsString;     //CFOP Produto
      {$ENDREGION}
  end;
end;

procedure TTelaGeracaoNF.DBEdit9Exit(Sender: TObject);
begin
  if DBEdit9.Text = '' then
    DBEdit9.Text := '0,00';

  DMNFE.cdsNFVLTOTNF.AsFloat := DMNFE.cdsNFVLTOTNF.AsFloat + DMNFE.cdsNFVLTOTFRE.AsFloat;
end;

procedure TTelaGeracaoNF.dspNFGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('NF');
end;

procedure TTelaGeracaoNF.dspNFIGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('NFITEM');
end;

procedure TTelaGeracaoNF.FormActivate(Sender: TObject);
begin
  Browse;
  DMNFE.cdsNF.Open;
  DMNFE.cdsNFI.Open;
  DMNFE.cdsCTR.Open;
  DMNFE.cdsEspecie.Open;
  if DMPrincipal.cdsParametrosCAMPO6.AsInteger = 1 then
    PanelHomologacao.Visible := True
  else
    PanelHomologacao.Visible := False;
end;

procedure TTelaGeracaoNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMNFE.cdsNF.Close;
  DMNFE.cdsNFI.Close;
  DMNFE.cdsCTR.Close;
  DMNFE.cdsEspecie.Close;
  Action := CaFree;
end;

procedure TTelaGeracaoNF.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
  begin
    VarComponente := Screen.ActiveControl.Name;
    if VarComponente = 'DBEdit15' then
    begin
      PesquisaTransportadores := TPesquisaTransportadores.Create(Application);
      PesquisaTransportadores.ShowModal;
      DMNFE.cdsNFCDTRANSP.AsInteger := PesquisaTransportadores.cdsTranspCDTRANSPORTADOR.AsInteger;
      DMNFE.cdsNFTRANSPORTADOR.AsString := Trim(PesquisaTransportadores.cdsTranspNOME.AsString);
      FreeAndNil(PesquisaTransportadores);
      DBEdit15.SetFocus;
    end;

    if VarComponente = 'DBEdit4' then
    begin
      PesquisaNaturezaOperacao := TPesquisaNaturezaOperacao.Create(Application);

      PesquisaNaturezaOperacao.cdsNO.Close;
      PesquisaNaturezaOperacao.cdsNO.FetchParams;
      PesquisaNaturezaOperacao.cdsNO.Params.ParamByName('ENTRADA').AsInteger := StrToInt(DMNFE.cdsNFFATURA.AsString);
      PesquisaNaturezaOperacao.cdsNO.Open;

      PesquisaNaturezaOperacao.ShowModal;
      DMNFE.cdsNFCDNATOPE.AsInteger := PesquisaNaturezaOperacao.cdsNOCDNATOPE.AsInteger;
      DMNFE.cdsNFDESCRNAT.AsString := Trim(PesquisaNaturezaOperacao.cdsNODESCRNAT.AsString);
      FreeAndNil(PesquisaNaturezaOperacao);
      DBEdit4.SetFocus;
    end;

    if VarComponente = 'DBEdit34' then
    begin
      PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
      PesquisaFornecedores.ShowModal;
      DMNFE.cdsNFCDCLIENTE.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
      DMNFE.cdsNFCLIENTE.AsString := Trim(PesquisaFornecedores.cdsFornNOME.AsString);
      DMNFE.cdsNFCLIFOR.AsString := 'F';
      FreeAndNil(PesquisaFornecedores);
      DBEdit4.SetFocus;
    end;

  end;

end;

end.


