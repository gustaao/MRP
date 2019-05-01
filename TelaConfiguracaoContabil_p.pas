unit TelaConfiguracaoContabil_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Mask, DBCtrls;

type
  TTelaConfiguracaoContabil = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    qConfigContabil: TSQLQuery;
    dspConfigContabil: TDataSetProvider;
    cdsConfigContabil: TClientDataSet;
    dsConfigContabil: TDataSource;
    cdsConfigContabilSALDO_LIVROCAIXA: TFMTBCDField;
    cdsConfigContabilMASCARA_PLCONTAS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Insert;
    procedure Browse;
  end;

var
  TelaConfiguracaoContabil: TTelaConfiguracaoContabil;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaConfiguracaoContabil.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;

procedure TTelaConfiguracaoContabil.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsConfigContabil.Edit;
end;

procedure TTelaConfiguracaoContabil.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsConfigContabil.Cancel;
end;

procedure TTelaConfiguracaoContabil.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsConfigContabil.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsConfigContabil.Delete;
          cdsConfigContabil.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConfiguracaoContabil.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  cdsConfigContabilMASCARA_PLCONTAS.AsString := cdsConfigContabilMASCARA_PLCONTAS.AsString + ';1;_';
  cdsConfigContabil.Post;
  cdsConfigContabil.ApplyUpdates(0);
end;

procedure TTelaConfiguracaoContabil.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsConfigContabil.Insert;
end;

procedure TTelaConfiguracaoContabil.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConfiguracaoContabil.Browse;
begin
  if (cdsConfigContabil.IsEmpty) then
    BitBtnIncluir.Enabled  := True
  else
    BitBtnIncluir.Enabled  := False;

  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;



procedure TTelaConfiguracaoContabil.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[187] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[188] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[189] <> '001' then
    BitBtnAlterar.Enabled := False;

  BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsConfigContabil.Open;
  Browse;
end;

procedure TTelaConfiguracaoContabil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
