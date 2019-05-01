unit TelaConfiguracaoAgenda_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TTelaConfiguracaoAgenda = class(TForm)
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
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    PanelCampos: TPanel;
    qCA: TSQLQuery;
    dspCA: TDataSetProvider;
    cdsCA: TClientDataSet;
    dsCA: TDataSource;
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaConfiguracaoAgenda: TTelaConfiguracaoAgenda;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaConfiguracaoAgenda.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCA.Edit;
end;

procedure TTelaConfiguracaoAgenda.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCA.Cancel;
end;

procedure TTelaConfiguracaoAgenda.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsCA.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCA.Delete;
          cdsCA.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConfiguracaoAgenda.BitBtnGeralClick(Sender: TObject);
begin
  cdsCA.Filtered := False;
end;

procedure TTelaConfiguracaoAgenda.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsCA.State = dsInsert then
    begin
      cdsCACODIGO.AsInteger := Gerar_id('GEN_CONFIG_AGENDA_ID');
    end;
  cdsCA.Post;
  cdsCA.ApplyUpdates(0);
end;

procedure TTelaConfiguracaoAgenda.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCA.Insert;
  DBComboBox1.SetFocus;
end;

procedure TTelaConfiguracaoAgenda.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConfiguracaoAgenda.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaConfiguracaoAgenda.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;

procedure TTelaConfiguracaoAgenda.FormActivate(Sender: TObject);
begin
  cdsCA.Open;
end;

procedure TTelaConfiguracaoAgenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
