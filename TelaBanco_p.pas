unit TelaBanco_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, JvExControls, JvXPCore, JvXPButtons, ExtCtrls, StdCtrls,
  DBCtrls, Grids, DBGrids, Mask, DB;

type
  TTelaBanco = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TJvXPButton;
    BitBtnRelatorios: TJvXPButton;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;

  end;

var
  TelaBanco: TTelaBanco;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaBanco.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMPrincipal.cdsBanco.Edit;
end;

procedure TTelaBanco.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMPrincipal.cdsBanco.Cancel;
end;

procedure TTelaBanco.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMPrincipal.cdsBanco.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMPrincipal.cdsBanco.Delete;
          DMPrincipal.cdsBanco.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaBanco.BitbtnGeralClick(Sender: TObject);
begin
  DMprincipal.cdsBanco.Filtered := False;
  DMprincipal.cdsBanco.Refresh;
end;

procedure TTelaBanco.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMPrincipal.cdsBanco.State = dsInsert then
      begin
        DMPrincipal.cdsBancoCDEMPRESA_BANCO.AsInteger := Gerar_id('GEN_EMPRESA_BANCO_ID');
        DMPrincipal.cdsBancoCDEMPRESA.AsInteger       := DMPrincipal.cdsEmpresaCDEMPRESA.AsInteger;
        DMPrincipal.cdsBancoCADASTRADO_POR.AsString   := VarNomeUsuario;
        DMPrincipal.cdsBancoCADASTRADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if DMPrincipal.cdsBanco.State = dsEdit then
        begin
          DMPrincipal.cdsBancoALTERADO_POR.AsString   := VarNomeUsuario;
          DMPrincipal.cdsBancoALTERADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;

    DMPrincipal.cdsBanco.Post;
    DMPrincipal.cdsBanco.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaBanco.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMPrincipal.cdsBanco.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaBanco.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMPrincipal.cdsBanco.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMPrincipal.cdsBanco.Filter := 'CDEMPRESA_BANCO  = '''+MaskeditPesquisa.Text+''' ';
        1 : DMPrincipal.cdsBanco.Filter := 'UPPER(NOME_BANCO) LIKE    UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      DMPrincipal.cdsBanco.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaBanco.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaBanco.Browse;
begin
  //if (VarMeusAcessos[35] = '001') then
    BitBtnIncluir.Enabled := True;

  //if VarMeusAcessos[36] = '001' then
    BitBtnExcluir.Enabled := True;

  //if VarMeusAcessos[37] = '001' then
    BitBtnAlterar.Enabled := True;

  //if VarMeusAcessos[38] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaBanco.FormActivate(Sender: TObject);
begin
  Browse;
end;

procedure TTelaBanco.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnAlterar.Enabled    := False;
  BitBtnExcluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  BitBtnRelatorios.Enabled := False;
  PanelCampos.Enabled      := True;
end;


end.
