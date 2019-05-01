unit Mascote_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, DBCtrls, StdCtrls, Mask,
  ExtCtrls, Buttons, Grids, DBGrids, JvExButtons, JvBitBtn, ExtDlgs, JPeg,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TMascote = class(TForm)
    qMascote: TSQLQuery;
    cdsMascote: TClientDataSet;
    dspMascote: TDataSetProvider;
    dsMascote: TDataSource;
    qTipo: TSQLQuery;
    cdsTipo: TClientDataSet;
    dspTipo: TDataSetProvider;
    dsTipo: TDataSource;
    qRaca: TSQLQuery;
    cdsRaca: TClientDataSet;
    dspRaca: TDataSetProvider;
    dsRaca: TDataSource;
    cdsRacaCDRACA: TIntegerField;
    qCliente: TSQLQuery;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    dsCliente: TDataSource;
    qMascoteCDMASCOTE: TIntegerField;
    qMascoteCDRACA: TIntegerField;
    qMascoteCDTIPO: TIntegerField;
    qMascoteCDCLIENTE: TIntegerField;
    qMascoteNOME: TStringField;
    qMascoteCOR: TStringField;
    qMascoteNASCIMENTO: TDateField;
    qMascoteOBS: TBlobField;
    qMascoteDATA_CADASTRO: TDateField;
    qMascoteAPELIDO: TStringField;
    qMascoteRACA: TStringField;
    qMascoteTIPO: TStringField;
    cdsMascoteCDMASCOTE: TIntegerField;
    cdsMascoteCDRACA: TIntegerField;
    cdsMascoteCDTIPO: TIntegerField;
    cdsMascoteCDCLIENTE: TIntegerField;
    cdsMascoteNOME: TStringField;
    cdsMascoteCOR: TStringField;
    cdsMascoteNASCIMENTO: TDateField;
    cdsMascoteOBS: TBlobField;
    cdsMascoteDATA_CADASTRO: TDateField;
    cdsMascoteAPELIDO: TStringField;
    cdsMascoteRACA: TStringField;
    cdsMascoteTIPO: TStringField;
    cdsClienteNOME: TStringField;
    cdsClienteAPELIDO: TStringField;
    cdsClienteCDCLIENTE: TIntegerField;
    cdsTipoCDTIPO: TIntegerField;
    cdsTipoDESCRICAO: TStringField;
    DBGrid1: TDBGrid;
    cdsRacaDESCRICAO: TStringField;
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
    Label8: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    qMascoteIDADE: TFloatField;
    cdsMascoteIDADE: TFloatField;
    Label2: TLabel;
    BitBtnCarregaLogo: TBitBtn;
    BitBtnExcluiLogo: TBitBtn;
    qMascoteFOTO: TBlobField;
    cdsMascoteFOTO: TBlobField;
    OpenPictureDialog: TOpenPictureDialog;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    qMascoteFALECIDO: TIntegerField;
    qMascotePELAGEM: TStringField;
    DBCheckBox1: TDBCheckBox;
    cdsMascoteFALECIDO: TIntegerField;
    cdsMascotePELAGEM: TStringField;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    qMascoteSEXO: TIntegerField;
    qMascotePESO: TFloatField;
    cdsMascoteSEXO: TIntegerField;
    cdsMascotePESO: TFloatField;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label12: TLabel;
    MaskEditIdade: TMaskEdit;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure dspMascoteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnCarregaLogoClick(Sender: TObject);
    procedure BitBtnExcluiLogoClick(Sender: TObject);
    procedure cdsMascoteAfterScroll(DataSet: TDataSet);
    procedure cdsMascoteAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  Mascote: TMascote;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TMascote.Browse;
begin
  if (VarMeusAcessos[141] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[142] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[143] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[144] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TMascote.cdsMascoteAfterOpen(DataSet: TDataSet);
begin
  MaskEditIdade.Text := IdadeN(cdsMascoteNASCIMENTO.AsDateTime,True);
end;

procedure TMascote.cdsMascoteAfterScroll(DataSet: TDataSet);
var Jpeg   : TJPEGImage;
    Stream : TMemoryStream;
begin
    MaskEditIdade.Text := IdadeN(cdsMascoteNASCIMENTO.AsDateTime,True);

  { Verifica se o campo esta vázio. }
  if not cdsMascoteFOTO.IsNull then
  begin
    { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream}
    Jpeg   := TJPEGImage.Create;
    Stream := TMemoryStream.Create;

    { Trata o campo como do tipo BLOB e salva o seu conteudo na memória. }
    TBlobField(cdsMascoteFOTO).SaveToStream(Stream);

    { Ajusta a posicao inicial de leitura da memória }
    Stream.Position := 0;

    { Carrega da memoria os dados, para uma estrutura do tipo TJPEG (a partir da posicao 0)}
    Jpeg.LoadFromStream(Stream);

    { Exibe o jpg no Timage. }
    Image1.Picture.Assign(Jpeg);

    { Libera a memoria utilizada pelos componentes de conversão }
    Jpeg.Free;
    Stream.Free;
  end;
end;

procedure TMascote.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TMascote.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsMascote.Edit;
end;

procedure TMascote.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsMascote.Cancel;
end;

procedure TMascote.BitBtnCarregaLogoClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute then
    Image1.Picture.LoadFromFile(OpenPictureDialog.FileName);
end;

procedure TMascote.BitBtnExcluiLogoClick(Sender: TObject);
begin
  cdsMascoteFOTO.AsString := '';
  Image1.Picture := nil;
end;

procedure TMascote.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsMascote.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsMascote.Delete;
          cdsMascote.ApplyUpdates(0);
        end;
    end;
end;

procedure TMascote.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsMascote.State = dsInsert then
      begin
        cdsMascoteCDMASCOTE.AsInteger      := Gerar_id('GEN_MASCOTE_ID');
        cdsMascoteDATA_CADASTRO.AsDateTime := Date;
      end;

    if (cdsMascoteFOTO.AsString = '') then
      begin
        cdsMascoteFOTO.LoadFromFile(OpenPictureDialog.FileName);
      end;

    cdsMascote.Post;
    cdsMascote.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TMascote.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsMascote.Insert;
  DBLookupComboBox1.SetFocus;
end;

procedure TMascote.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TMascote.dspMascoteGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('MASCOTE');
end;

procedure TMascote.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[141] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[142] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[143] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[144] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsMascote.Open;
  cdsTipo.Open;
  cdsRaca.Open;
  cdsCliente.Open;
  Browse;
end;

procedure TMascote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMascote.FormKeyPress(Sender: TObject; var Key: Char);
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
