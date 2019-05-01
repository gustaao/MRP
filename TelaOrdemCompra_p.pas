unit TelaOrdemCompra_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls,
  JvExButtons, JvBitBtn, Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids, DBCtrls, Menus;

type
  TTelaOrdemCompra = class(TForm)
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
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    qOC: TSQLQuery;
    dspOC: TDataSetProvider;
    cdsOC: TClientDataSet;
    dsOC: TDataSource;
    qOCI: TSQLQuery;
    dspOCI: TDataSetProvider;
    dsOCI: TDataSource;
    qOCCDOC: TIntegerField;
    qOCCDFORNECEDOR: TIntegerField;
    qOCNOME: TStringField;
    qOCDATA_ENTREGA: TDateField;
    qOCVALOR_TOTAL: TFloatField;
    qOCCADASTRADO_POR: TStringField;
    qOCOBS: TBlobField;
    qOCTOTAL_ICMS: TFloatField;
    qOCTOTAL_IPI: TFloatField;
    qOCTOTAL_PIS: TFloatField;
    qOCTOTAL_COFINS: TFloatField;
    qOCTOTAL_ISSQN: TFloatField;
    qOCTOTAL_IRRF: TFloatField;
    qOCALTERADO_POR: TStringField;
    qOCALTERADO_EM: TSQLTimeStampField;
    qOCFRETE: TIntegerField;
    qOCDATA_RECEBIMENTO: TDateField;
    qOCSTATUS: TStringField;
    cdsOCCDOC: TIntegerField;
    cdsOCCDFORNECEDOR: TIntegerField;
    cdsOCDATA_ENTREGA: TDateField;
    cdsOCVALOR_TOTAL: TFloatField;
    cdsOCCADASTRADO_POR: TStringField;
    cdsOCOBS: TBlobField;
    cdsOCTOTAL_ICMS: TFloatField;
    cdsOCTOTAL_IPI: TFloatField;
    cdsOCTOTAL_PIS: TFloatField;
    cdsOCTOTAL_COFINS: TFloatField;
    cdsOCTOTAL_ISSQN: TFloatField;
    cdsOCTOTAL_IRRF: TFloatField;
    cdsOCALTERADO_POR: TStringField;
    cdsOCALTERADO_EM: TSQLTimeStampField;
    cdsOCFRETE: TIntegerField;
    cdsOCDATA_RECEBIMENTO: TDateField;
    cdsOCSTATUS: TStringField;
    cdsOCNOME: TStringField;
    PanelGridItens: TPanel;
    DBGrid2: TDBGrid;
    Label21: TLabel;
    Label22: TLabel;
    qOCCADASTRADO_EM: TDateField;
    cdsOCCADASTRADO_EM: TDateField;
    qPesquisa: TSQLQuery;
    qOCDATA1: TDateField;
    qOCVALOR1: TFloatField;
    qOCDATA2: TDateField;
    qOCVALOR2: TFloatField;
    qOCDATA3: TDateField;
    qOCVALOR3: TFloatField;
    qOCDATA4: TDateField;
    qOCVALOR4: TFloatField;
    qOCDATA5: TDateField;
    qOCVALOR5: TFloatField;
    qOCDATA6: TDateField;
    qOCVALOR6: TFloatField;
    qOCDATA7: TDateField;
    qOCVALOR7: TFloatField;
    qOCDATA8: TDateField;
    qOCVALOR8: TFloatField;
    qOCDATA9: TDateField;
    qOCVALOR9: TFloatField;
    qOCDATA10: TDateField;
    qOCVALOR10: TFloatField;
    qOCDATA11: TDateField;
    qOCVALOR11: TFloatField;
    qOCDATA12: TDateField;
    qOCVALOR12: TFloatField;
    cdsOCDATA1: TDateField;
    cdsOCVALOR1: TFloatField;
    cdsOCDATA2: TDateField;
    cdsOCVALOR2: TFloatField;
    cdsOCDATA3: TDateField;
    cdsOCVALOR3: TFloatField;
    cdsOCDATA4: TDateField;
    cdsOCVALOR4: TFloatField;
    cdsOCDATA5: TDateField;
    cdsOCVALOR5: TFloatField;
    cdsOCDATA6: TDateField;
    cdsOCVALOR6: TFloatField;
    cdsOCDATA7: TDateField;
    cdsOCVALOR7: TFloatField;
    cdsOCDATA8: TDateField;
    cdsOCVALOR8: TFloatField;
    cdsOCDATA9: TDateField;
    cdsOCVALOR9: TFloatField;
    cdsOCDATA10: TDateField;
    cdsOCVALOR10: TFloatField;
    cdsOCDATA11: TDateField;
    cdsOCVALOR11: TFloatField;
    cdsOCDATA12: TDateField;
    cdsOCVALOR12: TFloatField;
    ScrollBoxCampos: TScrollBox;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    MaskEditCodInterno: TMaskEdit;
    MaskEditProduto: TMaskEdit;
    MaskEditTipoUnidade: TMaskEdit;
    MaskEditUnidade: TMaskEdit;
    MaskEditQtd: TMaskEdit;
    MaskEditValorUnitario: TMaskEdit;
    MaskEditCFOP: TMaskEdit;
    MaskEditICMS: TMaskEdit;
    MaskEditIPI: TMaskEdit;
    MaskEditValorTotal: TMaskEdit;
    Label25: TLabel;
    DBEdit9: TDBEdit;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    Label28: TLabel;
    DBEdit12: TDBEdit;
    Label29: TLabel;
    DBEdit13: TDBEdit;
    Label30: TLabel;
    DBEdit14: TDBEdit;
    Label31: TLabel;
    DBEdit15: TDBEdit;
    Label32: TLabel;
    DBEdit16: TDBEdit;
    Label33: TLabel;
    DBEdit17: TDBEdit;
    Label34: TLabel;
    DBEdit18: TDBEdit;
    Label35: TLabel;
    DBEdit19: TDBEdit;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    Label37: TLabel;
    DBEdit22: TDBEdit;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label39: TLabel;
    DBEdit24: TDBEdit;
    Label40: TLabel;
    DBEdit25: TDBEdit;
    Label41: TLabel;
    DBEdit26: TDBEdit;
    Label42: TLabel;
    DBEdit27: TDBEdit;
    Label43: TLabel;
    DBEdit28: TDBEdit;
    Label44: TLabel;
    DBEdit29: TDBEdit;
    Label45: TLabel;
    DBEdit30: TDBEdit;
    Label46: TLabel;
    DBEdit31: TDBEdit;
    Label47: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit20: TDBEdit;
    ComboBoxFrete: TComboBox;
    PopupMenu1: TPopupMenu;
    ImpressoOrdemdeCompra1: TMenuItem;
    cdsOCI: TClientDataSet;
    qOCICDOCI: TIntegerField;
    qOCICDOC: TIntegerField;
    qOCINUMERO_ITEM: TIntegerField;
    qOCICDPRODUTO: TIntegerField;
    qOCICDPLANO_CONTAS: TIntegerField;
    qOCIVALOR_UNITARIO: TFMTBCDField;
    qOCIQTD: TFloatField;
    qOCIVALOR_TOTAL: TFMTBCDField;
    qOCIUNIDADE: TStringField;
    qOCICADASTRADO_POR: TStringField;
    qOCICADASTRADO_EM: TSQLTimeStampField;
    qOCIALTERADO_POR: TStringField;
    qOCIALTERADO_EM: TSQLTimeStampField;
    qOCIVALOR_ICMS: TFMTBCDField;
    qOCIVALOR_IPI: TFMTBCDField;
    qOCIRECEBIDO: TIntegerField;
    qOCIQTD_RECEBIDA: TFloatField;
    qOCICDINTERNO: TStringField;
    qOCICDBARRAS: TStringField;
    qOCIDESCRICAO: TStringField;
    qOCIVALOR_VENDA: TFloatField;
    qOCICFOP: TStringField;
    qOCISIT_TRIBUTARIA: TStringField;
    qOCITIPO_UN_ENTRADA: TStringField;
    qOCIMARCA: TStringField;
    qOCIMODELO: TStringField;
    qOCICONTA: TStringField;
    qOCIDESCRICAO_CONTA: TStringField;
    cdsOCICDOCI: TIntegerField;
    cdsOCICDOC: TIntegerField;
    cdsOCINUMERO_ITEM: TIntegerField;
    cdsOCICDPRODUTO: TIntegerField;
    cdsOCICDPLANO_CONTAS: TIntegerField;
    cdsOCIVALOR_UNITARIO: TFMTBCDField;
    cdsOCIQTD: TFloatField;
    cdsOCIVALOR_TOTAL: TFMTBCDField;
    cdsOCIUNIDADE: TStringField;
    cdsOCICADASTRADO_POR: TStringField;
    cdsOCICADASTRADO_EM: TSQLTimeStampField;
    cdsOCIALTERADO_POR: TStringField;
    cdsOCIALTERADO_EM: TSQLTimeStampField;
    cdsOCIVALOR_ICMS: TFMTBCDField;
    cdsOCIVALOR_IPI: TFMTBCDField;
    cdsOCIRECEBIDO: TIntegerField;
    cdsOCIQTD_RECEBIDA: TFloatField;
    cdsOCICDINTERNO: TStringField;
    cdsOCICDBARRAS: TStringField;
    cdsOCIDESCRICAO: TStringField;
    cdsOCIVALOR_VENDA: TFloatField;
    cdsOCICFOP: TStringField;
    cdsOCISIT_TRIBUTARIA: TStringField;
    cdsOCITIPO_UN_ENTRADA: TStringField;
    cdsOCIMARCA: TStringField;
    cdsOCIMODELO: TStringField;
    cdsOCICONTA: TStringField;
    cdsOCIDESCRICAO_CONTA: TStringField;
    DBEdit8: TDBEdit;
    Label49: TLabel;
    DBEdit34: TDBEdit;
    Label50: TLabel;
    qOCCDCONDICAO_PAGTO: TIntegerField;
    qOCDESCRICAO: TStringField;
    cdsOCCDCONDICAO_PAGTO: TIntegerField;
    cdsOCDESCRICAO: TStringField;
    qOCIICMS: TFMTBCDField;
    qOCIIPI: TFMTBCDField;
    qOCIIRRF: TFMTBCDField;
    qOCIPIS: TFMTBCDField;
    qOCICOFINS: TFMTBCDField;
    qOCIISS: TFMTBCDField;
    cdsOCIICMS: TFMTBCDField;
    cdsOCIIPI: TFMTBCDField;
    cdsOCIIRRF: TFMTBCDField;
    cdsOCIPIS: TFMTBCDField;
    cdsOCICOFINS: TFMTBCDField;
    cdsOCIISS: TFMTBCDField;
    cdsOCITemp: TClientDataSet;
    qOCDESDOBRAMENTO: TIntegerField;
    cdsOCDESDOBRAMENTO: TIntegerField;
    DBMemo1: TDBMemo;
    procedure dspOCGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspOCIGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEditCodInternoExit(Sender: TObject);
    procedure MaskEditQtdExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ImpressoOrdemdeCompra1Click(Sender: TObject);
    procedure cdsOCIAfterScroll(DataSet: TDataSet);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure cdsOCIAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure LimpaCampos;

  end;

var
  TelaOrdemCompra: TTelaOrdemCompra;
  VarComponente : String;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaFornecedores_p,
     ConsultaProdutos_p, RelatorioOC_p, PesquisaCondicaoPagto_p;

{$R *.dfm}

procedure TTelaOrdemCompra.LimpaCampos;
begin
  MaskEditCodInterno.Text    := '';
  MaskEditProduto.Text       := '';
  MaskEditValorUnitario.Text := '0';
  MaskEditCFOP.Text          := '0';
  MaskEditICMS.Text          := '0';
  MaskEditIPI.Text           := '0';
  MaskEditTipoUnidade.Text   := '';
  MaskEditUnidade.Text       := '';
  MaskEditQtd.Text           := '';
  MaskEditValorTotal.Text    := '0';
end;

procedure TTelaOrdemCompra.Browse;
begin
  if (VarMeusAcessos[162] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[163] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[164] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[165] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled    := True;
//  BitBtnAlterar.Enabled    := True;
  BitBtnGravar.Enabled     := False;
//  BitBtnExcluir.Enabled    := True;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
//  BitBtnRelatorios.Enabled := True;
  ScrollBoxCampos.Enabled  := False;
end;

procedure TTelaOrdemCompra.cdsOCIAfterOpen(DataSet: TDataSet);
begin
  cdsOCITemp.CloneCursor(cdsOCI,True,False);
end;

procedure TTelaOrdemCompra.cdsOCIAfterScroll(DataSet: TDataSet);
begin
  if cdsOCI.State = dsBrowse then
    begin
      MaskEditCodInterno.Text    := cdsOCICDINTERNO.AsString;
      MaskEditProduto.Text       := cdsOCIDESCRICAO.AsString;
      MaskEditValorUnitario.Text := FormatFloat('###,###,#0.00',cdsOCIVALOR_UNITARIO.AsFloat);
      MaskEditCFOP.Text          := cdsOCICFOP.AsString;
      MaskEditICMS.Text          := FormatFloat('###,###,#0.00',cdsOCIICMS.AsFloat);
      MaskEditIPI.Text           := FormatFloat('###,###,#0.00',cdsOCIIPI.AsFloat);
      MaskEditTipoUnidade.Text   := cdsOCITIPO_UN_ENTRADA.AsString;
      MaskEditUnidade.Text       := cdsOCIUNIDADE.AsString;
      MaskEditQtd.Text           := FormatFloat('###,###,#0.00',cdsOCIQTD.AsFloat);
      MaskEditValorTotal.Text    := FormatFloat('###,###,#0.00',cdsOCIVALOR_TOTAL.AsFloat);
    end;
end;

procedure TTelaOrdemCompra.DBEdit2Exit(Sender: TObject);
begin
  if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if Trim(cdsOCCDFORNECEDOR.AsString) <> '' then
        begin
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select * from fornecedores ');
          qPesquisa.SQL.Add('where fornecedores.cdfornecedor = '''+cdsOCCDFORNECEDOR.AsString+''' ');
          qPesquisa.Active := True;

          if (qPesquisa.IsEmpty) then
            begin
              Application.MessageBox('Registro Não Encontrado!', 'Aviso.',MB_OK );
              MaskEditCodInterno.SetFocus;
            end
          else
            begin
              cdsOCNOME.AsString := qPesquisa.FieldByName('NOME').AsString;
            end;
        end;
    end;
end;

procedure TTelaOrdemCompra.DBEdit4Exit(Sender: TObject);
begin
  if (not (BitBtnSair.Focused)) and (not (BitBtnCancelar.Focused)) then
    begin
      if cdsOCDATA_ENTREGA.AsDateTime < DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime then
        begin
          Application.MessageBox('                   Data de Entrega Inválida.' +
            #13#10 + 'A Data de Entrega não pode ser inferior a Data Atual.',
            'Atenção', MB_OK + MB_ICONWARNING);
          DBEdit4.SetFocus;
        end;
    end;
end;

procedure TTelaOrdemCompra.DBEdit8Exit(Sender: TObject);
var i : Integer;
begin
  if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if Trim(cdsOCCDCONDICAO_PAGTO.AsString) <> '' then
        begin
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select * from condicao_pagto ');
          qPesquisa.SQL.Add('where condicao_pagto.cdcondicao_pagto = '''+cdsOCCDCONDICAO_PAGTO.AsString+''' ');
          qPesquisa.Active := True;

          if (qPesquisa.IsEmpty) then
            begin
              Application.MessageBox('Condição de Pagamento Não Encontrada!', 'Aviso.',MB_OK );
              DBEdit8.SetFocus;
            end
          else
            begin
              cdsOCDESCRICAO.AsString      := qPesquisa.FieldByName('DESCRICAO').AsString;
              cdsOCDESDOBRAMENTO.AsInteger := qPesquisa.FieldByName('DESDOBRAMENTO').AsInteger;

              for i := 1 to qPesquisa.FieldByName('DESDOBRAMENTO').AsInteger do
                begin
                  cdsOC.FieldByName('DATA'+IntToStr(i)).AsDateTime := cdsOCDATA_ENTREGA.AsDateTime + qPesquisa.FieldByName('DDDPAGTO'+IntTostr(i)).AsInteger;
                  cdsOC.FieldByName('VALOR'+IntToStr(i)).AsFloat   := cdsOCVALOR_TOTAL.AsFloat / qPesquisa.FieldByName('DESDOBRAMENTO').AsInteger;
                end;

            end;
        end;
    end;
end;

procedure TTelaOrdemCompra.ImpressoOrdemdeCompra1Click(Sender: TObject);
begin
  RelatorioOC := TRelatorioOC.Create(Application);
  RelatorioOC.MontaRelatorio(cdsOCCDOC.AsInteger);
  RelatorioOC.QuickRep1.Preview;
  FreeandNil(RelatorioOC);
end;

procedure TTelaOrdemCompra.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnAlterar.Enabled    := False;
  BitBtnExcluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  BitBtnRelatorios.Enabled := False;
  ScrollBoxCampos.Enabled  := True;
end;

procedure TTelaOrdemCompra.MaskEditCodInternoExit(Sender: TObject);
begin
  if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if Trim(MaskEditCodInterno.Text) <> '' then
        begin
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select * from produtos ');
          qPesquisa.SQL.Add('where produtos.cdinterno = '''+MaskEditCodInterno.Text+''' ');
          qPesquisa.Active := True;

          if (qPesquisa.IsEmpty) then
            begin
              Application.MessageBox('Produto Não Encontrado!', 'Aviso.',MB_OK );
              MaskEditCodInterno.SetFocus;
            end
          else
            begin
              MaskEditProduto.Text       := qPesquisa.FieldByName('DESCRICAO').AsString;
              MaskEditValorUnitario.Text := FormatFloat('###,###,#0.00', qPesquisa.FieldByName('VALOR_CUSTO').AsFloat);
              MaskEditCFOP.Text          := qPesquisa.FieldByName('CFOP').AsString;
              MaskEditICMS.Text          := qPesquisa.FieldByName('ICMS').AsString;
              MaskEditIPI.Text           := qPesquisa.FieldByName('IPI').AsString;
              MaskEditTipoUnidade.Text   := qPesquisa.FieldByName('TIPO_UN_ENTRADA').AsString;
              MaskEditUnidade.Text       := qPesquisa.FieldByName('UNID_ENTRADA').AsString;
            end;
        end;
    end;
end;

procedure TTelaOrdemCompra.MaskEditQtdExit(Sender: TObject);
var VarQtd : Real;
    VarValorTotal : Real;
begin
  try
    if Trim(MaskeditQtd.Text) = '' then
      MaskeditQtd.Text := '1';

    VarQtd        := StrToFloat(MaskeditQtd.Text);
    VarValorTotal := ((VarQtd * StrToFloat(StringReplace(MaskEditValorUnitario.Text,'.','',[])))* StrToFloat(MaskEditUnidade.Text));

    MaskEditValorTotal.Text  := FormatFloat('###,###,#0.00',VarValorTotal);

    if Application.MessageBox('Deseja  INCLUIR  Este Produto','Inclusão de Produto', MB_YESNO + MB_ICONINFORMATION + MB_TOPMOST) = IDYES then
      begin
        cdsOCVALOR_TOTAL.AsFloat :=  cdsOCVALOR_TOTAL.AsFloat + VarValorTotal;

        cdsOCI.Insert;
        cdsOCICDOCI.AsInteger          := Gerar_id('GEN_ORDEM_COMPRAS_ITENS_ID');
        cdsOCICDOC.AsInteger           := cdsOCCDOC.AsInteger;
        cdsOCINUMERO_ITEM.AsInteger    := 1;
        cdsOCICDPRODUTO.AsInteger      := qPesquisa.FieldByName('CDPRODUTO').AsInteger;
        cdsOCIDESCRICAO.AsString       := qPesquisa.FieldByName('DESCRICAO').AsString;
        cdsOCICDINTERNO.AsString       := qPesquisa.FieldByName('CDINTERNO').AsString;
        cdsOCICFOP.AsString            := MaskEditCFOP.Text;
        cdsOCITIPO_UN_ENTRADA.AsString := qPesquisa.FieldByName('TIPO_UN_ENTRADA').AsString;
        cdsOCICDPLANO_CONTAS.AsInteger := qPesquisa.FieldByName('CDPLANO_CONTAS').AsInteger;
        cdsOCIVALOR_UNITARIO.AsFloat   := StrToFloat(StringReplace(MaskEditValorUnitario.Text,'.','',[]));
        cdsOCIQTD.AsFloat              := StrToFloat(StringReplace(MaskEditQtd.Text,'.','',[]));
        cdsOCIVALOR_TOTAL.AsFloat      := StrToFloat(StringReplace(MaskEditValorTotal.Text,'.','',[]));
        cdsOCIUNIDADE.AsFloat          := StrToFloat(MaskEditUnidade.Text);
        cdsOCICADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsOCICADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        cdsOCIICMS.AsFloat             := StrToFloat(MaskEditICMS.Text);
        cdsOCIIPI.AsFloat              := StrToFloat(MaskEditIPI.Text);
        cdsOCIVALOR_ICMS.AsFloat       := cdsOCIVALOR_TOTAL.AsFloat * (cdsOCIICMS.AsFloat / 100);
        cdsOCIVALOR_IPI.AsFloat        := cdsOCIVALOR_TOTAL.AsFloat * (cdsOCIIPI.AsFloat / 100);
        cdsOCI.Post;
      end;

    if Application.MessageBox('Deseja  INCLUIR  OUTRO Produto','Inclusão de Produto', MB_YESNO + MB_ICONHAND + MB_TOPMOST) = IDYES then
      begin
        LimpaCampos;
        MaskEditCodInterno.SetFocus;
      end
    else
      DBEdit8.SetFocus;
  except
   on E: Exception do
     begin
       Application.MessageBox(PWideChar('Atenção: Não foi posível realizar a operação. '+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
     end;
  end;
end;

procedure TTelaOrdemCompra.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsOC.Edit;
end;

procedure TTelaOrdemCompra.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsOC.Cancel;
end;

procedure TTelaOrdemCompra.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsOC.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsOC.Delete;
          cdsOC.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaOrdemCompra.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsOC.State = dsInsert then
      begin
        cdsOCCDOC.AsInteger           := Gerar_id('GEN_ORDEM_COMPRAS_ID');
        cdsOCCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end;
    cdsOCI.ApplyUpdates(0);

    //Colocar aqui as rotinas para completar os campos da ordem de Compra
    qPesquisa.Active := False;
    qPesquisa.SQL.Clear;
    qPesquisa.SQL.Add('select  sum(oci.valor_total * (oci.icms /100))as ValorICMS, ');
    qPesquisa.SQL.Add('        coalesce(sum(oci.valor_total * (oci.ipi /100)),0)as ValorIPI,');
    qPesquisa.SQL.Add('        sum(oci.valor_total) as ValorTotal ');
    qPesquisa.SQL.Add('from ordem_compras_itens oci ');
    qPesquisa.SQL.Add('where oci.cdoc = '''+cdsOCCDOC.AsString+''' ');
    qPesquisa.Active := True;

    cdsOCVALOR_TOTAL.AsFloat := qPesquisa.FieldByName('VALORTOTAL').AsFloat;
    cdsOCTOTAL_ICMS.AsFloat  := qPesquisa.FieldByName('VALORICMS').AsFloat;
    cdsOCTOTAL_IPI.AsFloat   := qPesquisa.FieldByName('VALORIPI').AsFloat;

    cdsOC.Post;
    cdsOC.ApplyUpdates(0);

  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaOrdemCompra.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsOC.Insert;
  cdsOCCDOC.AsInteger           := Consulta_id('GEN_ORDEM_COMPRAS_ID') + 1;
  cdsOCSTATUS.AsString          := 'G';
  cdsOCCADASTRADO_POR.AsString  := VarNomeUsuario;
  cdsOCCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  cdsOCVALOR_TOTAL.AsFloat      := 0;

  DBEdit2.SetFocus;
end;

procedure TTelaOrdemCompra.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaOrdemCompra.dspOCGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := 'ORDEM_COMPRAS';
end;

procedure TTelaOrdemCompra.dspOCIGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'ORDEM_COMPRAS_ITENS';
end;

procedure TTelaOrdemCompra.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[162] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[163] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[164] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[165] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsOC.Open;
  cdsOCI.Open;
end;

procedure TTelaOrdemCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaOrdemCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    begin
      Key := 0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;


  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit2' then
        begin
          PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
          PesquisaFornecedores.ShowModal;
          cdsOCCDFORNECEDOR.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
          cdsOCNOME.AsString          := PesquisaFornecedores.cdsFornNOME.AsString;
          FreeAndNil(PesquisaFornecedores);
          DBEdit2.SetFocus;
        end;

      if VarComponente = 'MaskEditCodInterno' then
        begin
          ConsultaProdutos := TConsultaProdutos.Create(Application);
          ConsultaProdutos.ShowModal;
          MaskEditCodInterno.Text  := ConsultaProdutos.cdsProdutosCDINTERNO.AsString;
          MaskEditProduto.Text     := ConsultaProdutos.cdsProdutosDESCRICAO.AsString;
          MaskEditTipoUnidade.Text := ConsultaProdutos.cdsProdutosTIPO_UN_ENTRADA.AsString;
          MaskEditUnidade.Text     := ConsultaProdutos.cdsProdutosUNID_ENTRADA.AsString;

          FreeAndNil(ConsultaProdutos);
          MaskEditCodInterno.SetFocus;
        end;

      if VarComponente = 'DBEdit8' then
        begin
          PesquisaCondicaoPagto := TPesquisaCondicaoPagto.Create(Application);
          PesquisaCondicaoPagto.ShowModal;
          cdsOCCDCONDICAO_PAGTO.AsInteger := PesquisaCondicaoPagto.cdsCondPagtoCDCONDICAO_PAGTO.AsInteger;
          cdsOCDESCRICAO.AsString         := PesquisaCondicaoPagto.cdsCondPagtoDESCRICAO.AsString;

          FreeAndNil(PesquisaCondicaoPagto);
          DBEdit8.SetFocus;
        end;



    end;
end;

end.
