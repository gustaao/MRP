unit TelaFoneFornecedor_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn;

type
  TTelaFoneFornecedor = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaFoneFornecedor: TTelaFoneFornecedor;

implementation

uses DMPrincipal_p, Principal_p, Funcoes_p, DMForncedores_p;

{$R *.dfm}

procedure TTelaFoneFornecedor.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaFoneFornecedor.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaFoneFornecedor.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMFornecedores.cdsFoneForn.Edit;
end;

procedure TTelaFoneFornecedor.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMFornecedores.cdsFoneForn.Cancel;
end;

procedure TTelaFoneFornecedor.BitBtnExcluirClick(Sender: TObject);
begin
  if DMFornecedores.cdsFoneForn.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMFornecedores.cdsFoneForn.Delete;
          DMFornecedores.cdsFoneForn.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaFoneFornecedor.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if DMFornecedores.cdsFoneForn.State = dsInsert then
    begin
      DMFornecedores.cdsFoneFornCDFORNECEDORES_FONE.AsInteger := Gerar_id('GEN_FORNECEDORES_FONE_ID');
    end;

  DMFornecedores.cdsFoneForn.Post;
  DMFornecedores.cdsFoneForn.ApplyUpdates(0);
end;

procedure TTelaFoneFornecedor.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMFornecedores.cdsFoneForn.Insert;
  DBEdit3.SetFocus;
end;

procedure TTelaFoneFornecedor.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaFoneFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TTelaFoneFornecedor.FormKeyPress(Sender: TObject; var Key: Char);
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
