unit TelaContasPagar_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient,
  Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons, DateUtils,
  JvNavigationPane, JvComponentBase, JvEnterTab, JvDBLookup, JvExButtons,
  JvBitBtn, ComCtrls, Menus;

type
  TTelaContasPagar = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    dsCtasPagar: TDataSource;
    cdsCtasPagar: TClientDataSet;
    dspCtasPagar: TDataSetProvider;
    qCtasPagar: TSQLQuery;
    cdsCtasPagarCDCTAS_PAGAR: TIntegerField;
    cdsCtasPagarCDFORNECEDOR: TIntegerField;
    cdsCtasPagarNUMERO_DOCUMENTO: TStringField;
    cdsCtasPagarDESCRICAO: TStringField;
    cdsCtasPagarVALOR: TFMTBCDField;
    cdsCtasPagarVALOR_PAGO: TFMTBCDField;
    cdsCtasPagarVENCIMENTO: TDateField;
    cdsCtasPagarDATA_PAGTO: TDateField;
    cdsCtasPagarFORMA_PAGTO: TStringField;
    cdsCtasPagarCADASTRADO_POR: TStringField;
    cdsCtasPagarCADASTRADO_EM: TDateField;
    cdsCtasPagarLIQUIDADO: TIntegerField;
    cdsCtasPagarLIQUIDADO_POR: TStringField;
    cdsCtasPagarLIQUIDADO_EM: TDateField;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    PanelPagamento: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    cdsCtasPagarCDPLANO_CONTAS: TIntegerField;
    cdsCtasPagarCONTA: TStringField;
    qPLContas: TSQLQuery;
    dspPlContas: TDataSetProvider;
    cdsPLContas: TClientDataSet;
    dsPlContas: TDataSource;
    cdsPLContasCDPLANO_CONTAS: TIntegerField;
    cdsPLContasCONTA: TStringField;
    cdsPLContasDESCRICAO_CONTA: TStringField;
    cdsPLContasCONTA_DEBITO: TIntegerField;
    cdsPLContasCONTA_CREDITO: TIntegerField;
    cdsPLContasACEITA_LANCAMENTO: TIntegerField;
    cdsPLContasATIVA: TIntegerField;
    cdsPLContasCDCENTROCUSTO: TIntegerField;
    cdsPLContasCADASTRADO_POR: TStringField;
    cdsPLContasCADASTRADO_EM: TSQLTimeStampField;
    cdsPLContasALTERADO_POR: TStringField;
    cdsPLContasALTERADO_EM: TSQLTimeStampField;
    qFornecedor: TSQLQuery;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsfornecedor: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    JvNavPanelHeader2: TJvNavPanelHeader;
    cdsCtasPagarNOME: TStringField;
    cdsCtasPagarDESCRICAO_CONTA: TStringField;
    Shape2: TShape;
    Label14: TLabel;
    Shape1: TShape;
    Label15: TLabel;
    Shape3: TShape;
    Label16: TLabel;
    BitBtnPagar: TBitBtn;
    qCtasPagarCDCTAS_PAGAR: TIntegerField;
    qCtasPagarCDFORNECEDOR: TIntegerField;
    qCtasPagarNOME: TStringField;
    qCtasPagarNUMERO_DOCUMENTO: TStringField;
    qCtasPagarDESCRICAO: TStringField;
    qCtasPagarVALOR: TFMTBCDField;
    qCtasPagarVALOR_PAGO: TFMTBCDField;
    qCtasPagarVENCIMENTO: TDateField;
    qCtasPagarDATA_PAGTO: TDateField;
    qCtasPagarFORMA_PAGTO: TStringField;
    qCtasPagarCADASTRADO_POR: TStringField;
    qCtasPagarCADASTRADO_EM: TDateField;
    qCtasPagarLIQUIDADO: TIntegerField;
    qCtasPagarLIQUIDADO_POR: TStringField;
    qCtasPagarLIQUIDADO_EM: TDateField;
    qCtasPagarCDPLANO_CONTAS: TIntegerField;
    qCtasPagarDESCRICAO_CONTA: TStringField;
    qCtasPagarCONTA: TStringField;
    dsPagto: TDataSource;
    cdsPagto: TClientDataSet;
    dspPagto: TDataSetProvider;
    qPagto: TSQLQuery;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    cdsPagtoCDPLANO_CONTAS: TIntegerField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    CheckBox1: TCheckBox;
    BitBtnRelatorios: TJvBitBtn;
    Label17: TLabel;
    dsCtasPagarTemp: TDataSource;
    cdsCtasPagarTemp: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField3: TDateField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    DateField4: TDateField;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    UpDown1: TUpDown;
    EditRepetir: TEdit;
    PopupMenu1: TPopupMenu;
    RelatrioContasaPagarnoPerodo1: TMenuItem;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label18: TLabel;
    qBanco: TSQLQuery;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    dsBanco: TDataSource;
    cdsBancoCDCONTA_BANCARIA: TIntegerField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoCONTA: TStringField;
    cdsBancoSALDO: TFMTBCDField;
    cdsBancoDATA_SALDO: TDateField;
    cdsBancoBANCO: TIntegerField;
    cdsBancoNOME_BANCO: TStringField;
    qCtasPagarCDCONTA_BANCARIA: TIntegerField;
    cdsCtasPagarCDCONTA_BANCARIA: TIntegerField;
    cdsPagtoDATA: TDateField;
    cdsPagtoPARCELAMENTO: TIntegerField;
    cdsPagtoGRAVA_CTAS_RECEBER: TIntegerField;
    cdsPagtoGRAVA_CTA_CORRENTE: TIntegerField;
    cdsPagtoPOSSUI_COMPLEMENTO: TIntegerField;
    RelatrioContasPagasnoPerodo1: TMenuItem;
    cdsFornecedorCDFORNECEDOR: TIntegerField;
    cdsFornecedorCDPESSOA: TIntegerField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorAPELIDO: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorNUMERO: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorUF: TStringField;
    cdsFornecedorCONTATO: TStringField;
    cdsFornecedorSITE: TStringField;
    cdsFornecedorMAIL: TStringField;
    cdsFornecedorCPF_CNPJ: TStringField;
    cdsFornecedorRG_IE: TStringField;
    cdsFornecedorCOD_IBGE: TStringField;
    cdsFornecedorDATA_CADASTRO: TDateField;
    cdsFornecedorTIPO_PESSOA: TIntegerField;
    cdsFornecedorFONE: TStringField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorATIVO: TIntegerField;
    cdsFornecedorCODSEGMENTO: TIntegerField;
    cdsFornecedorISO: TIntegerField;
    cdsFornecedorGRAU_IMPORTANCIA: TStringField;
    cdsFornecedorCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    cdsFornecedorREACH_ROHS: TIntegerField;
    cdsFornecedorCOD_PAIS: TStringField;
    cdsFornecedorNASC_FUNDACAO: TDateField;
    cdsFornecedorPAIS: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorEMAIL_NFE: TStringField;
    cdsFornecedorPNG: TIntegerField;
    cdsFornecedorLIMITE_CREDITO: TFloatField;
    RelatrioFluxodeCaixa1: TMenuItem;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dspCtasPagarGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtnPagarClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cdsCtasPagarAfterOpen(DataSet: TDataSet);
    procedure RelatrioContasaPagarnoPerodo1Click(Sender: TObject);
    procedure cdsPagtoAfterScroll(DataSet: TDataSet);
    procedure RelatrioContasPagasnoPerodo1Click(Sender: TObject);
    procedure RelatrioFluxodeCaixa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaContasPagar: TTelaContasPagar;


implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaPlanoContas_p,
     PesquisaFornecedores_p, PerguntaData_p, RelatorioCtasPagarPeriodo_p,
     RelatorioCtasPagasPeriodo_p, RelatorioFluxoCaixa_p;

{$R *.dfm}

procedure TTelaContasPagar.Browse;
begin
  if (VarMeusAcessos[101] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[102] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[103] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[104] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
//  PanelPagamento.Visible := False;
  PanelCampos.Enabled    := False;

end;

procedure TTelaContasPagar.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaContasPagar.cdsCtasPagarAfterOpen(DataSet: TDataSet);
begin
  cdsCtasPagarTemp.CloneCursor(cdsCtasPagar,True,False);
end;

procedure TTelaContasPagar.cdsPagtoAfterScroll(DataSet: TDataSet);
begin
  if cdsPagtoPOSSUI_COMPLEMENTO.AsInteger = 1 then
    begin
      label18.Enabled          := True;
      JvDBLookupCombo2.Enabled := True;
    end
  else
    begin
      label18.Enabled          := False;
      JvDBLookupCombo2.Enabled := False;
    end;
end;



procedure TTelaContasPagar.RelatrioContasaPagarnoPerodo1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioCtasPagarPeriodo := TRelatorioCtasPagarPeriodo.Create(Application);
        RelatorioCtasPagarPeriodo.MontaRelatorio;
        FreeAndNil(RelatorioCtasPagarPeriodo);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasPagar.RelatrioContasPagasnoPerodo1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioCtasPagasPeriodo := TRelatorioCtasPagasPeriodo.Create(Application);
        RelatorioCtasPagasPeriodo.MontaRelatorio;
        FreeAndNil(RelatorioCtasPagasPeriodo);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasPagar.RelatrioFluxodeCaixa1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    PerguntaData.GroupBoxValor.Visible := True;
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioFluxoCaixa := TRelatorioFluxoCaixa.Create(Application);
        RelatorioFluxoCaixa.MontaRelatorio;
        FreeAndNil(RelatorioFluxoCaixa);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasPagar.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) then
    begin
      DMPrincipal.cdsPF.Edit;
      DMPrincipal.cdsPF.FieldByName('OCULTAR_CTAS_PAGAS').AsInteger := 1;
      DMPrincipal.cdsPF.Post;
      DMPrincipal.cdsPF.ApplyUpdates(0);
    end
  else
    begin
      DMPrincipal.cdsPF.Edit;
      DMPrincipal.cdsPF.FieldByName('OCULTAR_CTAS_PAGAS').AsInteger := 0;
      DMPrincipal.cdsPF.Post;
      DMPrincipal.cdsPF.ApplyUpdates(0);
    end;
end;

procedure TTelaContasPagar.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCtasPagar.Edit;
end;

procedure TTelaContasPagar.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCtasPagar.Cancel;
end;

procedure TTelaContasPagar.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsCtasPagar.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCtasPagar.Delete;
          cdsCtasPagar.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaContasPagar.BitbtnGeralClick(Sender: TObject);
begin
  cdsCtasPagar.Filtered := False;
  if (CheckBox1.Checked) then
    cdsCtasPagar.Filter := 'LIQUIDADO <> 1 ';
  cdsCtasPagar.Filtered := True;
end;

procedure TTelaContasPagar.BitBtnGravarClick(Sender: TObject);
var i : Integer;
begin
  try
    Browse;
    if cdsCtasPagar.State = dsInsert then
      begin
        cdsCtasPagar.FieldByName('CDCTAS_PAGAR').AsInteger := Gerar_id('GEN_CTAS_PAGAR_ID');
        cdsCtasPagarCDPLANO_CONTAS.AsInteger               := cdsPLContasCDPLANO_CONTAS.AsInteger;
        cdsCtasPagarLIQUIDADO.AsInteger                    := 0;
        cdsCtasPagarCADASTRADO_POR.AsString                := VarNomeUsuario;
        cdsCtasPagarCADASTRADO_EM.AsDateTime               := Date;
        cdsCtasPagar.Post;
        if (StrToIntDef(EditRepetir.Text,1) > 1) then
          begin
            cdsCtasPagarTemp.Filtered := False;
            cdsCtasPagarTemp.Filter := 'CDCTAS_PAGAR =' + cdsCtasPagar.FieldByName('CDCTAS_PAGAR').AsString;
            cdsCtasPagarTemp.Filtered := True;

            for i := 1 to StrToIntDef(EditRepetir.Text,1) do
              begin
                cdsCtasPagar.Insert;
                cdsCtasPagar.FieldByName('CDCTAS_PAGAR').AsInteger := Gerar_id('GEN_CTAS_PAGAR_ID');
                cdsCtasPagarLIQUIDADO.AsInteger                    := 0;
                cdsCtasPagarCDFORNECEDOR.AsInteger                 := cdsCtasPagarTemp.FieldByName('CDFORNECEDOR').AsInteger;
                cdsCtasPagarNUMERO_DOCUMENTO.AsString              := 'S/N';
                cdsCtasPagarDESCRICAO.AsString                     := cdsCtasPagarTemp.FieldByName('DESCRICAO').AsString;
                cdsCtasPagarVALOR.AsFloat                          := cdsCtasPagarTemp.FieldByName('VALOR').AsFloat;
                cdsCtasPagarVENCIMENTO.AsDateTime                  := IncMonth(cdsCtasPagarTemp.FieldByName('VENCIMENTO').AsDateTime,i);
                cdsCtasPagarCADASTRADO_POR.AsString                := VarNomeUsuario;
                cdsCtasPagarCADASTRADO_EM.AsDateTime               := Date;
                cdsCtasPagarCONTA.AsString                         := cdsCtasPagarTemp.FieldByName('CONTA').AsString;
                cdsCtasPagar.Post;
              end;
          end;
        cdsCtasPagar.ApplyUpdates(0);
      end
    else
      if cdsCtasPagar.State = dsEdit then
        begin
          cdsCtasPagar.Post;
          cdsCtasPagar.ApplyUpdates(0);
        end;
    cdsCtasPagar.Refresh;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaContasPagar.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCtasPagar.Insert;
  cdsCtasPagarCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  DBedit12.SetFocus;
end;

procedure TTelaContasPagar.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskEditPesquisa.Text) <> '' then
    begin
      cdsCtasPagar.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCtasPagar.Filter   := 'NUMERO_DOCUMENTO  = '''+MaskEditPesquisa.Text+''' ';//Código do Documento
        1 : cdsCtasPagar.Filter   := 'CDFORNECEDOR      = '''+MaskEditPesquisa.Text+''' ';//Código do Fornecedor
        2 : cdsCtasPagar.Filter   := 'UPPER(NOME) LIKE  '+QuotedStr('%'+UpperCase(MaskeditPesquisa.Text)+'%');//Fornecedor
        3 : cdsCtasPagar.Filter   := 'VENCIMENTO = '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskEditPesquisa.Text))+''' ';//Vencimento
      end;
      cdsCtasPagar.Filtered := True;
    end;
end;

procedure TTelaContasPagar.BitBtnPagarClick(Sender: TObject);
begin
  insert;
  cdsCtasPagar.Edit;
  PanelCampos.Enabled  := False;
  PanelPagamento.Visible := True;
  cdsCtasPagarLIQUIDADO.AsInteger     := 1;
  cdsCtasPagarLIQUIDADO_POR.AsString  := VarNomeUsuario;
  cdsCtasPagarLIQUIDADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  DBEdit8.SetFocus;
end;

procedure TTelaContasPagar.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaContasPagar.DBEdit12Exit(Sender: TObject);
begin
  cdsPLContas.Filtered := False;
  cdsPLContas.Filter := ' CONTA = '''+cdsCtasPagarCONTA.AsString+''' ';
  cdsPLContas.Filtered := True;
  MaskEdit1.Text := cdsPLContasDESCRICAO_CONTA.AsString;
end;

procedure TTelaContasPagar.DBEdit2Exit(Sender: TObject);
begin
  try
    if not (BitBtnCancelar.Focused) then
      begin
        if Trim(cdsCtasPagarCDFORNECEDOR.AsString) <> '' then
          begin
            cdsFornecedor.Filtered := False;
            cdsFornecedor.Filter := ' CDFORNECEDOR = '''+cdsCtasPagarCDFORNECEDOR.AsString+''' ';
            cdsFornecedor.Filtered := True;
            Maskedit2.Text := cdsFornecedorNOME.AsString;
          end;
      end;
  except

  end;
end;

procedure TTelaContasPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsCtasPagar.FieldByName('VENCIMENTO').AsDateTime > DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime then
    cor := clGreen
  else
    if cdsCtasPagar.FieldByName('VENCIMENTO').AsDateTime = DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime then
      cor := clBlue
    else
      if cdsCtasPagar.FieldByName('VENCIMENTO').AsDateTime < DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime then
        Cor := clRed;

  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaContasPagar.dspCtasPagarGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('CTAS_PAGAR');
end;

procedure TTelaContasPagar.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[101] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[102] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[103] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[104] <> '001' then
    BitBtnRelatorios.Enabled := False;

  if VarMeusAcessos[105] <> '001' then
    BitBtnPagar.Visible := False;
  {$ENDREGION}

  if DMPrincipal.cdsPF.FieldByName('OCULTAR_CTAS_PAGAS').AsInteger = 1 then
    CheckBox1.Checked := True
  else
    CheckBox1.Checked := False;

  BitBtnGeral.click;
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  cdsCtasPagar.Open;
  cdsCtasPagarCONTA.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  cdsPlContas.Open;
  cdsFornecedor.Open;
  cdsPagto.Open;
  cdsBanco.Open;
  Browse;
//  BitBtnIncluir.Enabled  := True;
//  BitBtnExcluir.Enabled  := True;
//  BitBtnGravar.Enabled   := False;
//  BitBtnCancelar.Enabled := False;
//  BitBtnAlterar.Enabled  := True;
end;

procedure TTelaContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContasPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit12' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          cdsCtasPagarCONTA.AsString           := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
          cdsCtasPagarCDPLANO_CONTAS.AsInteger := PesquisaPlanoContas.cdsPlContasCDPLANO_CONTAS.AsInteger;
          FreeAndNil(PesquisaPlanoContas);
          DBEdit12.SetFocus;
        end;
      if VarComponente = 'DBEdit2' then
        begin
          PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
          PesquisaFornecedores.ShowModal;
          cdsCtasPagarCDFORNECEDOR.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
          FreeAndNil(PesquisaFornecedores);
          DBEdit2.SetFocus;
        end;
    end;
//  if Key = VK_F2 then
//    begin
//      PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
//      PesquisaPlanoContas.ShowModal;
//      cdsCtasPagarCONTA.AsString           := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
//      cdsCtasPagarCDPLANO_CONTAS.AsInteger := PesquisaPlanoContas.cdsPlContasCDPLANO_CONTAS.AsInteger;
//      FreeAndNil(PesquisaPlanoContas);
//      DBEdit12.SetFocus;
//    end;

//  if Key = VK_F3 then
//    begin
//      PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
//      PesquisaFornecedores.ShowModal;
//      cdsCtasPagarCDFORNECEDOR.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
//      FreeAndNil(PesquisaFornecedores);
//      DBEdit12.SetFocus;
//    end;
end;

procedure TTelaContasPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    Close;
end;

end.
