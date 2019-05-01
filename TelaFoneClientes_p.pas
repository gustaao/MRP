unit TelaFoneClientes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls, Grids, DBGrids, JvExButtons, JvBitBtn, JvExControls, JvXPCore,
  JvXPButtons;

type
  TTelaFoneCliente = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaFoneCliente: TTelaFoneCliente;

implementation

uses Principal_p, DMPrincipal_p, Clientes_p, Funcoes_p, DMClientes_p;

{$R *.dfm}

procedure TTelaFoneCliente.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaFoneCliente.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaFoneCliente.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsFoneCli.Edit;
end;

procedure TTelaFoneCliente.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMClientes.cdsFoneCli.Cancel;
end;

procedure TTelaFoneCliente.BitBtnExcluirClick(Sender: TObject);
begin
  if DMClientes.cdsFoneCli.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsFoneCli.Delete;
          DMClientes.cdsFoneCli.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaFoneCliente.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if DMClientes.cdsFoneCli.State = dsInsert then
    begin
      DMClientes.cdsFoneCliCDCLIENTES_FONE.AsInteger := Gerar_id('GEN_CLIENTES_FONE_ID');
    end;

  DMClientes.cdsFoneCli.Post;
  DMClientes.cdsFoneCli.ApplyUpdates(0);
end;

procedure TTelaFoneCliente.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsFoneCli.Insert;
  DBEdit1.SetFocus;
end;

procedure TTelaFoneCliente.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaFoneCliente.FormActivate(Sender: TObject);
begin
  Browse;
end;

procedure TTelaFoneCliente.FormKeyPress(Sender: TObject; var Key: Char);
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
