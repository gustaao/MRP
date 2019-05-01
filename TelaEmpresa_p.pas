unit TelaEmpresa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Mask, DBCtrls, jpeg,
  Buttons, ExtCtrls, ExtDlgs, IBDatabase, IBCustomDataSet, IBQuery, JvExMask,
  JvToolEdit, JvDBLookup, JvDBLookupComboEdit, JvExButtons, JvBitBtn, pngimage,
  JvExControls, JvXPCore, JvXPButtons, Menus;

type
  TTelaEmpresa = class(TForm)
    OpenPictureDialog: TOpenPictureDialog;
    pnlBotoes: TPanel;
    PanelCampos: TPanel;
    Bevel1: TBevel;
    ImageLogo: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtnCarregaLogo: TBitBtn;
    BitBtnExcluiLogo: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBoxUF: TDBComboBox;
    JvDBLookupComboEdit1: TJvDBLookupComboEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    BitBtnBanco: TJvXPButton;
    BitBtnSair: TJvXPButton;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    BitBtnSocios: TJvXPButton;
    PopupMenu1: TPopupMenu;
    FichaCadastralEmpresa1: TMenuItem;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtnRelatorios: TJvBitBtn;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnCarregaLogoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsEmpresaAfterScroll(DataSet: TDataSet);
    procedure BitBtnExcluiLogoClick(Sender: TObject);
    procedure DBComboBoxUFExit(Sender: TObject);
    procedure JvDBLookupComboEdit1Exit(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnBancoClick(Sender: TObject);
    procedure BitBtnSociosClick(Sender: TObject);
    procedure FichaCadastralEmpresa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaImagem;
    procedure Insert;
    procedure Browse;
  end;

var
  TelaEmpresa: TTelaEmpresa;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaBanco_p, TelaSocios_p,
     RelatorioFichaCadastral_p;

{$R *.dfm}

procedure TTelaEmpresa.Browse;
begin
  if (VarMeusAcessos[35] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[36] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[37] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[38] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaEmpresa.Insert;
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

procedure TTelaEmpresa.JvDBLookupComboEdit1Exit(Sender: TObject);
begin
  DMPrincipal.cdsEmpresa.FieldByName('CDIBGE').AsInteger := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsInteger;
end;


procedure TTelaEmpresa.CarregaImagem;
var b:TStream;
begin
   b:= DMPrincipal.cdsEmpresa.CreateBlobStream(DMPrincipal.cdsEmpresa.FieldByName('LOGO'),bmRead);
   if b.Size > 0 then
     begin
       try
        ImageLogo.Picture.Bitmap.LoadFromStream(b);
       except
       end;
     end
   else
     begin
       ImageLogo.Picture.Assign(nil);
     end;
   b.Free;
end;

procedure TTelaEmpresa.cdsEmpresaAfterScroll(DataSet: TDataSet);
begin
  CarregaImagem;
end;

procedure TTelaEmpresa.DBComboBoxUFExit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBoxUF.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TTelaEmpresa.BitBtnCarregaLogoClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute then
    ImageLogo.Picture.LoadFromFile(OpenPictureDialog.FileName);
end;

procedure TTelaEmpresa.BitBtnExcluiLogoClick(Sender: TObject);
begin
  DMPrincipal.cdsEmpresaLOGO.AsString := '';
  ImageLogo.Picture := nil;
end;

procedure TTelaEmpresa.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  BitBtnCarregaLogo.Enabled := True;
  BitBtnExcluiLogo.Enabled  := True;
  DMPrincipal.cdsEmpresa.Edit;
end;

procedure TTelaEmpresa.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMPrincipal.cdsEmpresa.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMPrincipal.cdsEmpresa.Delete;
          DMPrincipal.cdsEmpresa.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaEmpresa.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if DMPrincipal.cdsEmpresa.State = dsInsert then
    begin
      DMPrincipal.cdsEmpresaCDEMPRESA.AsInteger := Gerar_id('GEN_EMPRESA_ID');
    end;
  if (DMPrincipal.cdsEmpresaLOGO.AsString <> DMPrincipal.cdsClone.FieldByName('LOGO').AsString) or (DMPrincipal.cdsEmpresaLOGO.AsString = '') then
    begin
      DMPrincipal.cdsEmpresaLOGO.LoadFromFile(OpenPictureDialog.FileName);
    end;
  DMPrincipal.cdsEmpresa.Post;
  DMPrincipal.cdsEmpresa.ApplyUpdates(0);
end;

procedure TTelaEmpresa.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  BitBtnCarregaLogo.Enabled := True;
  BitBtnExcluiLogo.Enabled  := True;
  DMPrincipal.cdsEmpresa.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaEmpresa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaEmpresa.BitBtnSociosClick(Sender: TObject);
begin
  DMPrincipal.cdsSocios.Open;
  TelaSocios := TTelaSocios.Create(Application);
  TelaSocios.ShowModal;
  FreeAndNil(TelaSocios);
end;

procedure TTelaEmpresa.BitBtnBancoClick(Sender: TObject);
begin
  DMPrincipal.cdsBanco.Open;
  TelaBanco := TTelaBanco.Create(Application);
  TelaBanco.ShowModal;
  FreeAndNil(TelaBanco);
end;

procedure TTelaEmpresa.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  BitBtnCarregaLogo.Enabled := False;
  BitBtnExcluiLogo.Enabled  := False;
  DMPrincipal.cdsEmpresa.Cancel;
end;

procedure TTelaEmpresa.FichaCadastralEmpresa1Click(Sender: TObject);
begin
  RelatorioFichaCadastral := TRelatorioFichaCadastral.Create(Application);
  RelatorioFichaCadastral.MontaRelatorio;
  FreeAndNil(RelatorioFichaCadastral);
end;

procedure TTelaEmpresa.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[35] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[36] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[37] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[38] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMprincipal.cdsEI.Open;
  BitBtnCarregaLogo.Enabled := False;
  BitBtnExcluiLogo.Enabled  := False;
  CarregaImagem;
end;

procedure TTelaEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
