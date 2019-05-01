unit TelaCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids, DBCtrls,
  StdCtrls, Mask, Buttons, ExtCtrls, JvExButtons, JvBitBtn, JvExControls,
  JvXPCore, JvXPButtons;

type
  TTelaCaixa = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    qAbertura: TSQLQuery;
    qAberturaCDCAIXA: TIntegerField;
    qAberturaDATA: TDateField;
    qAberturaCDUSUARIO: TIntegerField;
    qAberturaDESCRICAO: TStringField;
    qAberturaCREDITO: TFMTBCDField;
    qAberturaDEBITO: TFMTBCDField;
    qAberturaNUMERO_PDV: TIntegerField;
    qAberturaNOME: TStringField;
    cdsAbertura: TClientDataSet;
    cdsAberturaCDCAIXA: TIntegerField;
    cdsAberturaDATA: TDateField;
    cdsAberturaCDUSUARIO: TIntegerField;
    cdsAberturaDESCRICAO: TStringField;
    cdsAberturaCREDITO: TFMTBCDField;
    cdsAberturaDEBITO: TFMTBCDField;
    cdsAberturaNUMERO_PDV: TIntegerField;
    cdsAberturaNOME: TStringField;
    dspAbertura: TDataSetProvider;
    dsAbertura: TDataSource;
    qUsuario: TSQLQuery;
    cdsUsuario: TClientDataSet;
    cdsUsuarioCDUSUARIO: TIntegerField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioNOME: TStringField;
    dspUsuario: TDataSetProvider;
    dsUsuario: TDataSource;
    qMovimenta: TSQLQuery;
    cdsMovimenta: TClientDataSet;
    dspMovimenta: TDataSetProvider;
    dsMovimenta: TDataSource;
    cdsMovimentaCDMOVIMENTACAO: TIntegerField;
    cdsMovimentaMOVIMENTACAO: TStringField;
    cdsMovimentaENTRADA: TIntegerField;
    cdsMovimentaSAIDA: TIntegerField;
    qAberturaCDMOVIMENTACAO: TIntegerField;
    cdsAberturaCDMOVIMENTACAO: TIntegerField;
    BitBtnRelatorios: TJvBitBtn;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dspAberturaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaCaixa: TTelaCaixa;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaCaixa.Browse;
begin
  BitBtnIncluir.Enabled    := True;
  BitBtnAlterar.Enabled    := True;
  BitBtnGravar.Enabled     := False;
  BitBtnExcluir.Enabled    := True;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  BitBtnRelatorios.Enabled := True;
  PanelCampos.Enabled      := False;
end;

procedure TTelaCaixa.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnAlterar.Enabled    := False;
  BitBtnExcluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  BitBtnRelatorios.Enabled := False;
  PanelCampos.Enabled      := True;
end;


procedure TTelaCaixa.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsAbertura.Edit;
end;

procedure TTelaCaixa.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsAbertura.Cancel;
end;

procedure TTelaCaixa.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsAbertura.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsAbertura.Delete;
          cdsAbertura.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCaixa.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsAbertura.State = dsInsert then
    begin
      cdsAberturaCDCAIXA.AsInteger := Gerar_id('GEN_CAIXA_ID');
    end;
  cdsAbertura.Post;
  cdsAbertura.ApplyUpdates(0);
end;

procedure TTelaCaixa.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsAbertura.Insert;
  cdsAberturaDATA.AsDateTime := Date;
  cdsAberturaCREDITO.AsFloat := 0;
  cdsAberturaDEBITO.AsFloat  := 0;

  if cdsUsuario.Locate('NOME',VarNomeUsuario,[]) then
    cdsAberturaCDUSUARIO.AsInteger := cdsUsuarioCDUSUARIO.AsInteger;

  DBEdit2.SelectAll;
  DBEdit2.SetFocus;
end;

procedure TTelaCaixa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCaixa.DBLookupComboBox2Exit(Sender: TObject);
begin
  if cdsMovimentaENTRADA.AsInteger = 1 then
    DBEdit5.ReadOnly := False
  else
    begin
      DBEdit5.ReadOnly           := True;
      cdsAberturaCREDITO.AsFloat := 0;
    end;

  if cdsMovimentaSAIDA.AsInteger = 1 then
    DBEdit6.ReadOnly := False
  else
    begin
      DBEdit6.ReadOnly           := True;
      cdsAberturaDEBITO.AsFloat := 0;
    end;
end;

procedure TTelaCaixa.dspAberturaGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('CAIXA');
end;

procedure TTelaCaixa.FormActivate(Sender: TObject);
begin
  Browse;
  cdsUsuario.Open;
  cdsAbertura.Open;
end;

procedure TTelaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
