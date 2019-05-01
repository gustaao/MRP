unit TelaDespesaConta_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids, JvExControls,
  JvNavigationPane, JvExButtons, JvBitBtn, Buttons, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, JvDBLookup;

type
  TTelaDespesaConta = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    JvNavPanelHeader2: TJvNavPanelHeader;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    qCtasPagar: TSQLQuery;
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
    qCtasPagarCDCONTA_BANCARIA: TIntegerField;
    dspCtasPagar: TDataSetProvider;
    cdsCtasPagar: TClientDataSet;
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
    cdsCtasPagarCDPLANO_CONTAS: TIntegerField;
    cdsCtasPagarCONTA: TStringField;
    cdsCtasPagarNOME: TStringField;
    cdsCtasPagarDESCRICAO_CONTA: TStringField;
    cdsCtasPagarCDCONTA_BANCARIA: TIntegerField;
    dsCtasPagar: TDataSource;
    qPLContas: TSQLQuery;
    dspPlContas: TDataSetProvider;
    cdsPLContas: TClientDataSet;
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
    dsPlContas: TDataSource;
    qBanco: TSQLQuery;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoCDCONTA_BANCARIA: TIntegerField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoCONTA: TStringField;
    cdsBancoSALDO: TFMTBCDField;
    cdsBancoDATA_SALDO: TDateField;
    cdsBancoBANCO: TIntegerField;
    cdsBancoNOME_BANCO: TStringField;
    dsBanco: TDataSource;
    qPagto: TSQLQuery;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    cdsPagtoCDPLANO_CONTAS: TIntegerField;
    cdsPagtoDATA: TDateField;
    cdsPagtoPARCELAMENTO: TIntegerField;
    cdsPagtoGRAVA_CTAS_RECEBER: TIntegerField;
    cdsPagtoGRAVA_CTA_CORRENTE: TIntegerField;
    cdsPagtoPOSSUI_COMPLEMENTO: TIntegerField;
    dsPagto: TDataSource;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    qColaborador: TSQLQuery;
    dspColaborador: TDataSetProvider;
    cdsColaborador: TClientDataSet;
    dsColaborador: TDataSource;
    cdsColaboradorCDCOLABORADOR: TIntegerField;
    cdsColaboradorNOME: TStringField;
    cdsColaboradorRG_IE: TStringField;
    cdsColaboradorCPF_CNPJ: TStringField;
    cdsColaboradorENDERECO: TStringField;
    cdsColaboradorNUMERO: TStringField;
    cdsColaboradorBAIRRO: TStringField;
    cdsColaboradorCIDADE: TStringField;
    cdsColaboradorCEP: TStringField;
    cdsColaboradorUF: TStringField;
    cdsColaboradorCOD_IBGE: TStringField;
    cdsColaboradorTIPO_PESSOA: TIntegerField;
    cdsColaboradorNASC_FUNDACAO: TDateField;
    cdsColaboradorTELEFONE: TStringField;
    cdsColaboradorCELULAR: TStringField;
    cdsColaboradorEMAIL: TStringField;
    cdsColaboradorCADASTRADO_POR: TStringField;
    cdsColaboradorCADASTRADO_EM: TSQLTimeStampField;
    cdsColaboradorALTERADO_POR: TStringField;
    cdsColaboradorALTERADO_EM: TSQLTimeStampField;
    cdsColaboradorCDCARGO: TIntegerField;
    qCtasPagarCDCOLABORADOR: TIntegerField;
    cdsCtasPagarCDCOLABORADOR: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure cdsPagtoAfterScroll(DataSet: TDataSet);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaDespesaConta: TTelaDespesaConta;
  VarComponente : String;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaPlanoContas_p,
  PesquisaFornecedores_p;

{$R *.dfm}

procedure TTelaDespesaConta.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCtasPagar.Edit;
end;

procedure TTelaDespesaConta.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCtasPagar.Cancel;
end;

procedure TTelaDespesaConta.BitBtnExcluirClick(Sender: TObject);
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

procedure TTelaDespesaConta.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsCtasPagar.State = dsInsert then
      begin
        cdsCtasPagar.FieldByName('CDCTAS_PAGAR').AsInteger := Gerar_id('GEN_CTAS_PAGAR_ID');
        cdsCtasPagarCDPLANO_CONTAS.AsInteger               := cdsPLContasCDPLANO_CONTAS.AsInteger;
        cdsCtasPagarLIQUIDADO.AsInteger                    := 1;
        cdsCtasPagarLIQUIDADO_POR.AsString                 := VarNomeUsuario;
        cdsCtasPagarLIQUIDADO_EM.AsDateTime                := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
      end;
    cdsCtasPagar.Post;
    cdsCtasPagar.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaDespesaConta.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCtasPagar.Insert;
  cdsCtasPagarCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  cdsCtasPagarCADASTRADO_POR.AsString  := VarNomeUsuario;
  DBedit12.SetFocus;
end;

procedure TTelaDespesaConta.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaDespesaConta.Browse;
begin
  if (VarMeusAcessos[96] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[97] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[98] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[99] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaDespesaConta.cdsPagtoAfterScroll(DataSet: TDataSet);
begin
//  if cdsPagtoPOSSUI_COMPLEMENTO.AsInteger = 1 then
//    begin
//      label18.Enabled          := True;
//      JvDBLookupCombo2.Enabled := True;
//    end
//  else
//    begin
//      label18.Enabled          := False;
//      JvDBLookupCombo2.Enabled := False;
//    end;
end;

procedure TTelaDespesaConta.DBEdit2Exit(Sender: TObject);
begin
  if cdsCtasPagarCDFORNECEDOR.AsInteger = 0 then
    cdsCtasPagarNOME.AsString := 'Sem Fornecedor Definido';
end;

procedure TTelaDespesaConta.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[96] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[97] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[98] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[99] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  cdsCtasPagar.Open;
  cdsCtasPagarCONTA.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  cdsPLContas.Open;
  cdsPagto.Open;
  cdsBanco.Open;
  cdsColaborador.Open;
end;

procedure TTelaDespesaConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaDespesaConta.FormKeyDown(Sender: TObject; var Key: Word;
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
          cdsCtasPagarDESCRICAO_CONTA.AsString := PesquisaPlanoContas.cdsPlContasDESCRICAO_CONTA.AsString;
          FreeAndNil(PesquisaPlanoContas);
          DBEdit12.SetFocus;
        end;

      if VarComponente = 'DBEdit2' then
        begin
          PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
          PesquisaFornecedores.ShowModal;
          cdsCtasPagarCDFORNECEDOR.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
          cdsCtasPagarNOME.AsString          := PesquisaFornecedores.cdsFornNOME.AsString;
          FreeAndNil(PesquisaFornecedores);
          DBEdit2.SetFocus;
        end;
    end;
end;

procedure TTelaDespesaConta.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;



end.
