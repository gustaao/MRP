unit TelaContatoFornecedor_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvExButtons, JvBitBtn;

type
  TTelaContatoFornecedor = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaContatoFornecedor: TTelaContatoFornecedor;

implementation

uses Principal_p, DMPrincipal_p, DMForncedores_p, Funcoes_p;

{$R *.dfm}

procedure TTelaContatoFornecedor.BitBtnAlterarClick(Sender: TObject);
begin
  InsertState(TelaContatoFornecedor);
  DMFornecedores.cdsContato.Edit;
end;

procedure TTelaContatoFornecedor.BitBtnExcluirClick(Sender: TObject);
begin
  if DMFornecedores.cdsContato.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMFornecedores.cdsContato.Delete;
          DMFornecedores.cdsContato.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaContatoFornecedor.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaContatoFornecedor);
  if DMFornecedores.cdsContato.State = dsInsert then
    begin
      DMFornecedores.cdsContatoCDFORNECEDOR_CONTATO.AsInteger := Gerar_id('GEN_FORNECEDORES_CONTATO_ID');
    end;

  DMFornecedores.cdsContato.Post;
  DMFornecedores.cdsContato.ApplyUpdates(0);
end;

procedure TTelaContatoFornecedor.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaContatoFornecedor);
  DMFornecedores.cdsContato.Insert;
  DBEdit3.SetFocus;
end;

procedure TTelaContatoFornecedor.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaContatoFornecedor.BitBtnCancelarClick(Sender: TObject);
begin
  BrowseState(TelaContatoFornecedor);
  DMFornecedores.cdsContato.Cancel;
end;

procedure TTelaContatoFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContatoFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
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
