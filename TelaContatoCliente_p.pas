unit TelaContatoCliente_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvExButtons, JvBitBtn, pngimage, JvExControls, JvXPCore, JvXPButtons;

type
  TTelaContatoCliente = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    MaskEditDescricaoFone: TMaskEdit;
    MaskEditFone: TMaskEdit;
    Label6: TLabel;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    BitBtnAdd: TJvXPButton;
    BitBtnDelete: TJvXPButton;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    JvXPButton1: TJvXPButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
    procedure BitBtnDeleteClick(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaContatoCliente: TTelaContatoCliente;

implementation

uses Principal_p, DMPrincipal_p, DMClientes_p, Funcoes_p;

{$R *.dfm}

procedure TTelaContatoCliente.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaContatoCliente.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaContatoCliente.JvXPButton1Click(Sender: TObject);
begin
  MaskEditDescricaoFone.Text := '';
  MaskEditFone.Text          := '';
  MaskEditDescricaoFone.SetFocus;
end;

procedure TTelaContatoCliente.BitBtnAddClick(Sender: TObject);
begin
  try
    DMClientes.cdsFoneContato.Insert;
    DMClientes.cdsFoneContatoCDCLIENTE_CONTATO_FONE.AsInteger  := Gerar_id('GEN_CLIENTES_CONTATO_FONE_ID');
    DMClientes.cdsFoneContatoCDCLIENTE_CONTATO.AsInteger       := DMclientes.cdsContatoCliCDCLIENTE_CONTATO.AsInteger;
    DMClientes.cdsFoneContatoDESCRICAO.AsString                := TelaContatoCliente.MaskEditDescricaoFone.Text;
    DMClientes.cdsFoneContatoFONE.AsString                     := TelaContatoCliente.MaskEditFone.Text;
    DMClientes.cdsFoneContatoCADASTRADO_POR.AsString           := VarNomeUsuario;
    DMClientes.cdsFoneContatoCADASTRADO_EM.AsDateTime          := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    DMClientes.cdsFoneContato.Post;
    DMClientes.cdsFoneContato.ApplyUpdates(0);
    DMClientes.cdsFoneContato.Refresh;
    MaskEditDescricaoFone.Clear;
    MaskEditFone.Clear;

  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;

end;

procedure TTelaContatoCliente.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsContatoCli.Edit;
end;

procedure TTelaContatoCliente.BitBtnExcluirClick(Sender: TObject);
begin
  if DMClientes.cdsContatoCli.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsContatoCli.Delete;
          DMClientes.cdsContatoCli.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaContatoCliente.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if DMClientes.cdsContatoCli.State = dsInsert then
    begin
      DMClientes.cdsContatoCliCDCLIENTE_CONTATO.AsInteger := Gerar_id('GEN_CLIENTES_CONTATO_ID');
    end;

  DMClientes.cdsContatoCli.Post;
  DMClientes.cdsContatoCli.ApplyUpdates(0);
end;

procedure TTelaContatoCliente.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsContatoCli.Insert;
  DMClientes.cdsContatoCliCDCLIENTE_CONTATO.AsInteger := Consulta_id('GEN_CLIENTES_CONTATO_ID') + 1;
  DBEdit3.SetFocus;
end;

procedure TTelaContatoCliente.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaContatoCliente.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMClientes.cdsContatoCli.Cancel;
end;

procedure TTelaContatoCliente.BitBtnDeleteClick(Sender: TObject);
begin
  if DMClientes.cdsFoneContato.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsFoneContato.Delete;
          DMClientes.cdsFoneContato.ApplyUpdates(0);
          DMClientes.cdsFoneContato.Refresh;
        end;
    end;
end;

procedure TTelaContatoCliente.FormActivate(Sender: TObject);
begin
  Browse;
end;

procedure TTelaContatoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContatoCliente.FormKeyPress(Sender: TObject; var Key: Char);
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
