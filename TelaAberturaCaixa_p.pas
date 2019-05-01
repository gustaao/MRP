unit TelaAberturaCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, Grids, DBGrids, JvExButtons, JvBitBtn;

type
  TTelaAberturaCaixa = class(TForm)
    qAbertura: TSQLQuery;
    cdsAbertura: TClientDataSet;
    dspAbertura: TDataSetProvider;
    dsAbertura: TDataSource;
    qAberturaCDCAIXA: TIntegerField;
    qAberturaDATA: TDateField;
    qAberturaCDUSUARIO: TIntegerField;
    qAberturaDESCRICAO: TStringField;
    qAberturaCREDITO: TFMTBCDField;
    qAberturaDEBITO: TFMTBCDField;
    qAberturaNUMERO_PDV: TIntegerField;
    qAberturaNOME: TStringField;
    cdsAberturaCDCAIXA: TIntegerField;
    cdsAberturaDATA: TDateField;
    cdsAberturaCDUSUARIO: TIntegerField;
    cdsAberturaDESCRICAO: TStringField;
    cdsAberturaCREDITO: TFMTBCDField;
    cdsAberturaDEBITO: TFMTBCDField;
    cdsAberturaNUMERO_PDV: TIntegerField;
    cdsAberturaNOME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    qUsuario: TSQLQuery;
    cdsUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    dsUsuario: TDataSource;
    cdsUsuarioCDUSUARIO: TIntegerField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioNOME: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    procedure dspAberturaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaAberturaCaixa: TTelaAberturaCaixa;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaAberturaCaixa.BitBtnAlterarClick(Sender: TObject);
begin
  BrowseState(TelaAberturaCaixa);
  cdsAbertura.Cancel;
end;

procedure TTelaAberturaCaixa.BitBtnCancelarClick(Sender: TObject);
begin
  InsertState(TelaAberturaCaixa);
  cdsAbertura.Edit;
end;

procedure TTelaAberturaCaixa.BitBtnExcluirClick(Sender: TObject);
begin
  BrowseState(TelaAberturaCaixa);
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

procedure TTelaAberturaCaixa.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaAberturaCaixa);
  if cdsAbertura.State = dsInsert then
    begin
      cdsAberturaCDCAIXA.AsInteger := Gerar_id('GEN_CDCAIXA_ID');
    end;
  cdsAbertura.Post;
  cdsAbertura.ApplyUpdates(0);
end;

procedure TTelaAberturaCaixa.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaAberturaCaixa);
  cdsAbertura.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaAberturaCaixa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaAberturaCaixa.dspAberturaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('CAIXA');
end;

procedure TTelaAberturaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
