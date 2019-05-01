unit TelaAgendamentoRapido_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBCtrls, StdCtrls, Mask, FMTBcd, DB, DBClient,
  Provider, SqlExpr, Buttons;

type
  TTelaAgendamentoRapido = class(TForm)
    PanelCorpo: TPanel;
    PanelBotoes: TPanel;
    MaskeditData: TDateTimePicker;
    MaskeditHora: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEditEspecialista: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    BitBtnAgendar: TBitBtn;
    BitBtnDesmarcar: TBitBtn;
    BitBtnSair: TBitBtn;
    QAG: TSQLQuery;
    QAGCDAGENDA: TIntegerField;
    QAGCDTOSADOR: TIntegerField;
    QAGNOME: TStringField;
    QAGDATA: TDateField;
    QAGHORA: TTimeField;
    QAGCDPROCEDIMENTO: TIntegerField;
    QAGOBSERVACOES: TStringField;
    QAGCADASTRADO_POR: TStringField;
    QAGCADASTRADO_EM: TSQLTimeStampField;
    dspAG: TDataSetProvider;
    cdsAG: TClientDataSet;
    cdsAGCDAGENDA: TIntegerField;
    cdsAGCDTOSADOR: TIntegerField;
    cdsAGNOME: TStringField;
    cdsAGDATA: TDateField;
    cdsAGHORA: TTimeField;
    cdsAGCDPROCEDIMENTO: TIntegerField;
    cdsAGOBSERVACOES: TStringField;
    cdsAGCADASTRADO_POR: TStringField;
    cdsAGCADASTRADO_EM: TSQLTimeStampField;
    dsAG: TDataSource;
    MaskEditOBS: TMaskEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    MaskEditCliente: TMaskEdit;
    MaskEditFone: TMaskEdit;
    Label5: TLabel;
    qProc: TSQLQuery;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    cdsProcCDPROCEDIMENTO: TIntegerField;
    cdsProcDESCRICACAO: TStringField;
    dsProc: TDataSource;
    qCli: TSQLQuery;
    dspCli: TDataSetProvider;
    cdsCli: TClientDataSet;
    dsCli: TDataSource;
    QAGCDCLIENTE: TIntegerField;
    cdsAGCDCLIENTE: TIntegerField;
    QAGDESCRICAO: TStringField;
    cdsAGDESCRICAO: TStringField;
    cdsCliCDCLIENTE: TIntegerField;
    cdsCliCDPESSOA: TIntegerField;
    cdsCliCDMASCOTE: TIntegerField;
    cdsCliNOME: TStringField;
    cdsCliAPELIDO: TStringField;
    cdsCliENDERECO: TStringField;
    cdsCliNUMERO: TStringField;
    cdsCliBAIRRO: TStringField;
    cdsCliCIDADE: TStringField;
    cdsCliCEP: TStringField;
    cdsCliUF: TStringField;
    cdsCliIE_RG: TStringField;
    cdsCliDATA_CADASTRO: TDateField;
    cdsCliTIPO_PESSOA: TIntegerField;
    cdsCliPNG: TIntegerField;
    cdsCliEMAIL: TStringField;
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
    cdsCliALTERADO_POR: TStringField;
    cdsCliCPF_CNPJ: TStringField;
    cdsCliCADASTRADO_EM: TDateField;
    cdsCliALTERADO_EM: TDateField;
    cdsCliLIMITE_CREDITO: TFloatField;
    cdsCliCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    GroupBoxCadastroRapido: TGroupBox;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    BitBtnIncluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    MaskEditProcedimento: TMaskEdit;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnAgendarClick(Sender: TObject);
    procedure MaskEditFoneExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Insert;
    procedure Browse;
  end;

var
  TelaAgendamentoRapido: TTelaAgendamentoRapido;
  VarCodigoTosador : Integer;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaAgendaBanhoeTosa_p;

{$R *.dfm}

procedure TTelaAgendamentoRapido.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;

procedure TTelaAgendamentoRapido.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  BitBtnSair.Enabled     := True;
end;


procedure TTelaAgendamentoRapido.BitBtnAgendarClick(Sender: TObject);
begin
  cdsAG.Insert;
  cdsAGCDAGENDA.AsInteger       := Gerar_id('GEN_AGENDA_ID');
  cdsAGCDTOSADOR.AsInteger      := VarCodigoTosador;
  cdsAGDATA.AsDateTime          := MaskeditData.Date;
  cdsAGHORA.AsDateTime          := MaskeditHora.Time;
  cdsAGCDPROCEDIMENTO.AsInteger := cdsProcCDPROCEDIMENTO.AsInteger;
  cdsAGOBSERVACOES.AsString     := MaskEditOBS.Text;
  cdsAGCDCLIENTE.AsInteger      := cdsCliCDCLIENTE.AsInteger;
  cdsAGCADASTRADO_POR.AsString  := VarNomeUsuario;
  cdsAGCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  cdsAG.Post;
  cdsAg.ApplyUpdates(0);
end;

procedure TTelaAgendamentoRapido.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCli.Cancel;
end;

procedure TTelaAgendamentoRapido.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  cdsCliCDCLIENTE.AsInteger := Gerar_id('GEN_CLIENTES_ID');
  cdsCliCDPESSOA.AsInteger  := Gerar_id('GEN_PESSOA_ID');
  MaskEditCliente.Text      := cdsCliAPELIDO.AsString;
  cdsCli.Post;
  cdsCli.ApplyUpdates(0);
  MaskEditCliente.SetFocus;
end;

procedure TTelaAgendamentoRapido.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCli.Open;
  cdsCli.Insert;
  DBEdit1.SetFocus;
end;

procedure TTelaAgendamentoRapido.BitBtnSairClick(Sender: TObject);
begin
  ModalResult := MrClose;
end;

procedure TTelaAgendamentoRapido.FormActivate(Sender: TObject);
begin
  cdsAG.Open;
  cdsProc.Open;
  MaskeditFone.SetFocus;
end;

procedure TTelaAgendamentoRapido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    Close;
end;

procedure TTelaAgendamentoRapido.MaskEditFoneExit(Sender: TObject);
begin
  cdsCli.Close;
  cdsCli.CommandText := (' select * from clientes where (fone = '''+MaskEditFone.Text+''') or (fone2 = '''+MaskEditFone.Text+''')   ');
  cdsCli.Open;

  if cdsCli.IsEmpty then
    begin
      Application.MessageBox('Cliente Não Encontrado.', 'Atenção', MB_OK + MB_ICONWARNING);
      GroupBoxCadastroRapido.Visible := True;
      Browse;
      GroupBoxCadastroRapido.SetFocus;
    end
  else
    begin
      MaskEditCliente.TabStop := False;
      MaskEditCliente.Text    := cdsCliAPELIDO.AsString;
    end;

end;

end.
