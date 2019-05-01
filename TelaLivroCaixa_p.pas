unit TelaLivroCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, DB;

type
  TLivroCaixa = class(TForm)
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label111: TLabel;
    Label254: TLabel;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBGrid16: TDBGrid;
    DBEdit79: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit31: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit215: TDBEdit;
    DBEdit217: TDBEdit;
    Panel6: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnIncluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit217Exit(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    Procedure GO_Saldo_Final;
    procedure DBEdit69Enter(Sender: TObject);
    procedure DBEdit70Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LivroCaixa: TLivroCaixa;
  wCodigo : Integer;

implementation

uses UNDMLC, UNFuncoes, UNDMA, UNPrincipal;

{$R *.dfm}

procedure TLivroCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LivroCaixa.Release;
  LivroCaixa := nil;
end;

procedure TLivroCaixa.FormActivate(Sender: TObject);
begin
  DMLC := TDMLC.Create(Self);
  DMLC.cdsCaixa.Open;
  DMLC.cdsPLContas.Open;
  DMLC.cdsCaixa.Open;
  DMLC.cdsCaixa.Last;
  DMLC.cdsSaldo.Open;
end;

procedure TLivroCaixa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TLivroCaixa.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(LivroCaixa);
  DMLC.cdsCaixa.Append;
  DBEdit68.Text := DateToStr(Date);
  DBEdit217.SetFocus;
end;

procedure TLivroCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
end;

procedure TLivroCaixa.DBEdit217Exit(Sender: TObject);
begin
  DBEdit217.Text := ConvertePalavras(DBEdit217.Text);
end;

Procedure TLivroCaixa.GO_Saldo_Final;
var wDebito,wCredito,wSaldo_Final : Real;
Begin
  wSaldo_Final := DMLC.cdsSaldoB022SALDOFINAL.AsCurrency;
  wSaldo_Final := wSaldo_Final + DMLC.cdsCaixaB020CREDITO.AsCurrency - DMLC.cdsCaixaB020DEBITO.AsCurrency;

  DMLC.cdsSaldo.Edit;
  DMLC.cdsSaldoB022SALDOFINAL.AsCurrency := wSaldo_Final;
  DMLC.cdsSaldo.Post;
  DMLC.cdsSaldo.ApplyUpdates(0);
end;


procedure TLivroCaixa.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(LivroCaixa);
  if ( DMLC.cdsCaixa.State = dsInsert ) then
     DMLC.cdsCaixaB020CODIGO.AsInteger := 0;

  GO_Saldo_Final;
  DMLC.cdsCaixaB020SALDO.AsCurrency := DMLC.cdsSaldoB022SALDOFINAL.AsCurrency;
  DMLC.cdsCaixaB020DATA.AsDateTime  := ( Date );
  DMLC.cdsCaixaB020USUARIO.AsString := wNome_do_Usuario;
  DMLC.cdsCaixaB020DATE.AsDateTime  := Date;
  DMLC.cdsCaixaB020HORA.AsDateTime  := Time;
  DMLC.cdsCaixa.Post;
  DMLC.cdsCaixa.ApplyUpdates(0);
  DMLC.cdsCaixa.Refresh;
end;

procedure TLivroCaixa.BitBtnCancelarClick(Sender: TObject);
begin
  BrowseState(LivroCaixa);
  DMLC.cdsCaixa.Cancel;
end;

procedure TLivroCaixa.DBEdit69Enter(Sender: TObject);
begin
  DBEdit69.Text := ('0,00');
  DBEdit69.SelectAll;
end;

procedure TLivroCaixa.DBEdit70Enter(Sender: TObject);
begin
  DBEdit70.Text := ('0,00');
  DBEdit70.SelectAll;
end;

procedure TLivroCaixa.Edit3Exit(Sender: TObject);
begin
  DMLC.cdsPLContas.Locate('B021CODIGO',Edit3.Text,[]);
  DBLookupComboBox4.Field.AsString := DMLC.cdsPLContasB021CONTA.AsString;
end;

procedure TLivroCaixa.Edit2Exit(Sender: TObject);
begin
  DMLC.cdsPLContas.Locate('B021CODIGO',Edit2.Text,[]);
  DBLookupComboBox1.Field.AsString := DMLC.cdsPLContasB021CONTA.AsString;
end;

procedure TLivroCaixa.DBLookupComboBox4Exit(Sender: TObject);
begin
  if Edit3.Text = '0' then
   Edit3.Text := DMLC.cdsPLContasB021CODIGO.AsString;
end;

procedure TLivroCaixa.DBLookupComboBox1Exit(Sender: TObject);
begin
  if Edit2.Text = '0' then
   Edit2.Text := DMLC.cdsPLContasB021CODIGO.AsString;
end;

end.
