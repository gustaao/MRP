unit TelaICMSEstado_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, JvExControls, JvXPCore, JvXPButtons, StdCtrls,
  Mask, ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd, DBCtrls, DB, DBClient,
  Provider, SqlExpr;

type
  TTelaICMSEstado = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PopupMenu1: TPopupMenu;
    ListagemdePlanodeContas1: TMenuItem;
    R1: TMenuItem;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    qICMS: TSQLQuery;
    dspICMS: TDataSetProvider;
    cdsICMS: TClientDataSet;
    dsICMS: TDataSource;
    cdsICMSANO: TStringField;
    cdsICMSESTADO: TStringField;
    cdsICMSALIQ: TFMTBCDField;
    cdsICMSBASERED: TFMTBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    cdsICMSCADASTRADO_POR: TStringField;
    cdsICMSCADASTRADO_EM: TSQLTimeStampField;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaICMSEstado: TTelaICMSEstado;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaICMSEstado.Browse;
begin
  if (VarMeusAcessos[191] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[192] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[193] = '001' then
    BitBtnAlterar.Enabled := True;

  BitBtnRelatorios.Enabled := False;
  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaICMSEstado.Insert;
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

procedure TTelaICMSEstado.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsICMS.Edit;
end;

procedure TTelaICMSEstado.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsICMS.Cancel;
end;

procedure TTelaICMSEstado.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsICMS.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsICMS.Delete;
          cdsICMS.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaICMSEstado.BitBtnGeralClick(Sender: TObject);
begin
  cdsICMS.Filtered := False;
  cdsICMS.Refresh;
end;

procedure TTelaICMSEstado.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsICMS.State = dsInsert then
      begin
        cdsICMSCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsICMSCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end;
    cdsICMS.Post;
    cdsICMS.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaICMSEstado.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsICMS.Insert;
  DBEdit1.SetFocus;
end;

procedure TTelaICMSEstado.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsICMS.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsICMS.Filter := 'ANO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsICMS.Filter := 'ESTADO  = '''+MaskeditPesquisa.Text+''' ';
        //1 : cdsICMS.Filter := 'ESTADO LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsICMS.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaICMSEstado.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaICMSEstado.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[191] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[192] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[193] <> '001' then
    BitBtnAlterar.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsICMS.Open;
end;

procedure TTelaICMSEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
