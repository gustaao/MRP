unit TelaMovimentacaoCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  DBCtrls, Grids, DBGrids, Mask, JvExButtons, JvBitBtn;

type
  TTelaMovimentacaoCaixa = class(TForm)
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    qMovimenta: TSQLQuery;
    cdsMovimenta: TClientDataSet;
    cdsMovimentaCDMOVIMENTACAO: TIntegerField;
    cdsMovimentaMOVIMENTACAO: TStringField;
    cdsMovimentaENTRADA: TIntegerField;
    cdsMovimentaSAIDA: TIntegerField;
    dspMovimenta: TDataSetProvider;
    dsMovimenta: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    BitBtnRelatorios: TJvBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaMovimentacaoCaixa: TTelaMovimentacaoCaixa;

implementation

{$R *.dfm}

uses Principal_p, DMPrincipal_p, Funcoes_p;

procedure TTelaMovimentacaoCaixa.BitBtnAlterarClick(Sender: TObject);
begin
  cdsMovimenta.Edit;
  BitBtnIncluir.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnCancelar.Enabled := True;
  BitBtnAlterar.Enabled  := False;
end;

procedure TTelaMovimentacaoCaixa.BitBtnCancelarClick(Sender: TObject);
begin
  cdsMovimenta.Cancel;
  BitBtnIncluir.Enabled  := True;
  BitBtnExcluir.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  BitBtnAlterar.Enabled  := True;
end;

procedure TTelaMovimentacaoCaixa.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsMovimenta.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsMovimenta.Delete;
          cdsMovimenta.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaMovimentacaoCaixa.BitBtnGravarClick(Sender: TObject);
begin
  if cdsMovimenta.State = dsInsert then
    begin
      cdsMovimenta.FieldByName('CDMOVIMENTACAO').AsInteger := Gerar_id('GEN_MOVIMENTACAO_ID');
    end;

  cdsMovimenta.Post;
  cdsMovimenta.ApplyUpdates(0);

  BitBtnIncluir.Enabled  := True;
  BitBtnExcluir.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  BitBtnAlterar.Enabled  := True;
end;

procedure TTelaMovimentacaoCaixa.BitBtnIncluirClick(Sender: TObject);
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnCancelar.Enabled := True;
  BitBtnAlterar.Enabled  := False;
  cdsMovimenta.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaMovimentacaoCaixa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaMovimentacaoCaixa.FormActivate(Sender: TObject);
begin
  cdsMovimenta.Open;
  BitBtnIncluir.Enabled  := True;
  BitBtnExcluir.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  BitBtnAlterar.Enabled  := True;
end;

procedure TTelaMovimentacaoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaMovimentacaoCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
