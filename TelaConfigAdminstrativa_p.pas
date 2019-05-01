unit TelaConfigAdminstrativa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ExtDlgs, FMTBcd, DB, SqlExpr, jpeg,
  Provider, DBClient;

type
  TTelaConfigAdministrativa = class(TForm)
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    Cancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    ImageVenda: TImage;
    Label1: TLabel;
    BitBtnCarregaLogo: TBitBtn;
    BitBtnExcluiLogo: TBitBtn;
    Bevel1: TBevel;
    OpenPictureDialog: TOpenPictureDialog;
    dsConfAdm: TDataSource;
    cdsConfAdm: TClientDataSet;
    dspConfAdm: TDataSetProvider;
    qConfAdm: TSQLQuery;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    procedure BitBtnCarregaLogoClick(Sender: TObject);
    procedure cdsConfAdmAfterScroll(DataSet: TDataSet);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaImagem;
  end;

var
  TelaConfigAdministrativa: TTelaConfigAdministrativa;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaConfigAdministrativa.BitBtnExcluirClick(Sender: TObject);
begin
  BrowseState(TelaConfigAdministrativa);
  if cdsConfAdm.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsConfAdm.Delete;
          cdsConfAdm.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConfigAdministrativa.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaConfigAdministrativa);
  if cdsConfAdm.State = dsInsert then
    begin
      cdsConfAdm.FieldByName('CDCONFIG_GERAL').AsInteger := Gerar_id('GEN_CONFIG_GERAIS_ID');
    end;
  cdsConfAdm.Post;
  cdsConfAdm.ApplyUpdates(0);
  BitBtnCarregaLogo.Enabled := False;
  BitBtnExcluiLogo.Enabled  := False;
end;

procedure TTelaConfigAdministrativa.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaConfigAdministrativa);
  BitBtnCarregaLogo.Enabled := True;
  BitBtnExcluiLogo.Enabled  := True;
  cdsConfAdm.Insert;
end;

procedure TTelaConfigAdministrativa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConfigAdministrativa.CancelarClick(Sender: TObject);
begin
  BrowseState(TelaConfigAdministrativa);
  cdsConfAdm.Cancel;
  BitBtnCarregaLogo.Enabled := False;
  BitBtnExcluiLogo.Enabled  := False;
end;

procedure TTelaConfigAdministrativa.CarregaImagem;
var Imagem :TStream;
    Jpg: TJpegImage;
begin
  Jpg := nil;
  Imagem := cdsConfAdm.CreateBlobStream( cdsConfAdm.FieldByName('VENDA_IMAGEM'),bmRead );
  if Imagem.Size > 0 then
    begin
      try
        Jpg := TJpegImage.Create;
        Jpg.LoadFromStream(Imagem);
        ImageVenda.Picture.Assign(Jpg);
      except
      end;
    end
  else
    begin
      ImageVenda.Picture.Assign(nil);
      jpg.Free;
      Imagem.Destroy;
    end;
end;


procedure TTelaConfigAdministrativa.cdsConfAdmAfterScroll(DataSet: TDataSet);
begin
  CarregaImagem;
end;

procedure TTelaConfigAdministrativa.FormActivate(Sender: TObject);
begin
  cdsConfAdm.Open;
end;

procedure TTelaConfigAdministrativa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaConfigAdministrativa.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TTelaConfigAdministrativa.BitBtnAlterarClick(Sender: TObject);
begin
  InsertState(TelaConfigAdministrativa);
  BitBtnCarregaLogo.Enabled := True;
  BitBtnExcluiLogo.Enabled  := True;
  cdsConfAdm.Edit;
end;

procedure TTelaConfigAdministrativa.BitBtnCarregaLogoClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute then
    begin
      ImageVenda.Picture.LoadFromFile(OpenPictureDialog.FileName);
      TBlobField(cdsConfAdm.FieldByName('VENDA_IMAGEM')).LoadFromFile(OpenPictureDialog.FileName);
    end;
end;

end.

















