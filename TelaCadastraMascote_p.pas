unit TelaCadastraMascote_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, ExtCtrls,
  JvExButtons, JvBitBtn;

type
  TTelaCadastraMascote = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastraMascote: TTelaCadastraMascote;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, DMClientes_p;

{$R *.dfm}

procedure TTelaCadastraMascote.BitBtnAlterarClick(Sender: TObject);
begin
  InsertState(TelaCadastraMascote);
  DMClientes.cdsMascote.Edit;
end;

procedure TTelaCadastraMascote.BitBtnExcluirClick(Sender: TObject);
begin
  if DMClientes.cdsMascote.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsMascote.Delete;
          DMClientes.cdsMascote.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCadastraMascote.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraMascote);
  if DMClientes.cdsMascote.State = dsInsert then
    begin
      DMClientes.cdsMascoteCDMASCOTE.AsInteger      := Gerar_id('GEN_MASCOTE_ID');
      DMClientes.cdsMascoteDATA_CADASTRO.AsDateTime := Date;
    end;

  DMClientes.cdsMascote.Post;
  DMClientes.cdsMascote.ApplyUpdates(0);
end;

procedure TTelaCadastraMascote.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaCadastraMascote);
  DMClientes.cdsMascote.Insert;
  DBLookupComboBox1.SetFocus;
end;

procedure TTelaCadastraMascote.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCadastraMascote.CancelarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraMascote);
  DMClientes.cdsMascote.Cancel;
end;

procedure TTelaCadastraMascote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaCadastraMascote.FormKeyPress(Sender: TObject; var Key: Char);
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
