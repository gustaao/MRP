unit TelaAgendamento_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls,
  Buttons, FMTBcd, DB, DBClient, Provider, SqlExpr, JvExMask, JvToolEdit,
  JvDBControls, DBCtrls;

type
  TTelaAgendamento = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
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
    PanelCorpo: TPanel;
    qCA: TSQLQuery;
    dspCA: TDataSetProvider;
    cdsCA: TClientDataSet;
    cdsCACODIGO: TIntegerField;
    cdsCAQTD_CAMPOS: TIntegerField;
    cdsCANOME_CAMPO1: TStringField;
    cdsCANOME_CAMPO2: TStringField;
    cdsCANOME_CAMPO3: TStringField;
    cdsCANOME_CAMPO4: TStringField;
    cdsCANOME_CAMPO5: TStringField;
    cdsCANOME_CAMPO6: TStringField;
    cdsCAHORARIO_INICIO: TTimeField;
    cdsCAHORARIO_FINAL: TTimeField;
    cdsCACADASTRADO_POR: TStringField;
    cdsCACADASTRADO_EM: TSQLTimeStampField;
    cdsCAINTERVALO: TIntegerField;
    dsCA: TDataSource;
    QAG: TSQLQuery;
    dspAG: TDataSetProvider;
    cdsAG: TClientDataSet;
    dsAG: TDataSource;
    QAGCDAGENDA: TIntegerField;
    QAGCDTOSADOR: TIntegerField;
    QAGNOME: TStringField;
    QAGDATA: TDateField;
    QAGHORA: TTimeField;
    QAGCDPROCEDIMENTO: TIntegerField;
    QAGDESCRICACAO: TStringField;
    QAGOBSERVACOES: TStringField;
    QAGCADASTRADO_POR: TStringField;
    QAGCADASTRADO_EM: TSQLTimeStampField;
    cdsAGCDAGENDA: TIntegerField;
    cdsAGCDTOSADOR: TIntegerField;
    cdsAGNOME: TStringField;
    cdsAGDATA: TDateField;
    cdsAGHORA: TTimeField;
    cdsAGCDPROCEDIMENTO: TIntegerField;
    cdsAGDESCRICACAO: TStringField;
    cdsAGOBSERVACOES: TStringField;
    cdsAGCADASTRADO_POR: TStringField;
    cdsAGCADASTRADO_EM: TSQLTimeStampField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    qEsp: TSQLQuery;
    dspEsp: TDataSetProvider;
    cdsEsp: TClientDataSet;
    dsEsp: TDataSource;
    cdsEspCDTOSADOR: TIntegerField;
    cdsEspNOME: TStringField;
    cdsEspCOMISSAO: TSingleField;
    cdsEspESPECIALIDADE: TStringField;
    cdsEspATIVO: TIntegerField;
    cdsEspCADASTRADO_POR: TStringField;
    cdsEspCADASTRADO_EM: TSQLTimeStampField;
    cdsEspDESATIVADO_POR: TStringField;
    cdsEspDESATIVADO_EM: TSQLTimeStampField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    qProc: TSQLQuery;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    dsProc: TDataSource;
    cdsProcCDPROCEDIMENTO: TIntegerField;
    cdsProcDESCRICACAO: TStringField;
    JvDBDateEdit1: TJvDBDateEdit;
    qCli: TSQLQuery;
    dspCli: TDataSetProvider;
    cdsCli: TClientDataSet;
    dsCli: TDataSource;
    cdsCliCDCLIENTE: TIntegerField;
    cdsCliCDMASCOTE: TIntegerField;
    cdsCliNOME: TStringField;
    cdsCliAPELIDO: TStringField;
    cdsCliENDERECO: TStringField;
    cdsCliNUMERO: TStringField;
    cdsCliBAIRRO: TStringField;
    cdsCliCIDADE: TStringField;
    cdsCliCEP: TStringField;
    cdsCliUF: TStringField;
    cdsCliCPF_CNPJ: TStringField;
    cdsCliIE_RG: TStringField;
    cdsCliDATA_CADASTRO: TDateField;
    cdsCliTIPO_PESSOA: TIntegerField;
    cdsCliPNG: TIntegerField;
    cdsCliEMAIL: TStringField;
    cdsCliLIMITE_CREDITO: TSingleField;
    cdsCliRESTRICAO: TIntegerField;
    cdsCliTIPO_RESTRICAO: TStringField;
    cdsCliFONE: TStringField;
    cdsCliFONE2: TStringField;
    cdsCliNASC_FUNDACAO: TDateField;
    cdsCliCOD_IBGE: TStringField;
    cdsCliPAIS: TStringField;
    cdsCliCOD_PAIS: TStringField;
    cdsCliSITE: TStringField;
    cdsCliEMAIL_NFE: TStringField;
    cdsCliCADASTRADO_POR: TStringField;
    cdsCliCADASTRADO_EM: TSQLTimeStampField;
    cdsCliALTERADO_POR: TStringField;
    cdsCliALTERADO_EM: TSQLTimeStampField;
    QAGCDCLIENTE: TIntegerField;
    cdsAGCDCLIENTE: TIntegerField;
    procedure dspAGGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaAgendamento: TTelaAgendamento;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaAgendamento.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsAG.Edit;
end;

procedure TTelaAgendamento.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsAG.Cancel;
end;

procedure TTelaAgendamento.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsAG.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsAG.Delete;
          cdsAG.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaAgendamento.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsAG.State = dsInsert then
    begin
      cdsAGCDAGENDA.AsInteger       := Gerar_id('GEN_AGENDA_ID');
      cdsAGCADASTRADO_POR.AsString  := VarNomeUsuario;
      cdsAGCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    end;
  cdsAG.Post;
  cdsAG.ApplyUpdates(0);
end;

procedure TTelaAgendamento.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsAG.Insert;
  DBLookupComboBox1.SetFocus;
end;

procedure TTelaAgendamento.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaAgendamento.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaAgendamento.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;



procedure TTelaAgendamento.dspAGGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('AGENDA');
end;

procedure TTelaAgendamento.FormActivate(Sender: TObject);
begin
  cdsAG.Open;
  cdsEsp.Open;
  cdsProc.Open;
end;

procedure TTelaAgendamento.FormKeyPress(Sender: TObject; var Key: Char);
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
