unit TelaConsulta_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons, JPeg,
  StdCtrls, Mask, ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd, DB, SqlExpr,
  Provider, DBClient, ComCtrls, pngimage, JvNavigationPane;

type
  TTelaConsulta = class(TForm)
    PanelBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    dsConsulta: TDataSource;
    cdsConsulta: TClientDataSet;
    dspConsulta: TDataSetProvider;
    qConsulta: TSQLQuery;
    cdsConsultaCDCONSULTA: TIntegerField;
    cdsConsultaCDMASCOTE: TIntegerField;
    cdsConsultaDATA: TDateField;
    cdsConsultaDIAGNOSTICO: TStringField;
    cdsConsultaCDVETERINARIO: TIntegerField;
    cdsConsultaCDRACA: TIntegerField;
    cdsConsultaCDTIPO: TIntegerField;
    cdsConsultaCDCLIENTE: TIntegerField;
    cdsConsultaPACIENTE: TStringField;
    cdsConsultaCOR: TStringField;
    cdsConsultaNASCIMENTO: TDateField;
    cdsConsultaOBS: TBlobField;
    cdsConsultaFOTO: TBlobField;
    cdsConsultaFALECIDO: TIntegerField;
    cdsConsultaPELAGEM: TStringField;
    cdsConsultaVETERINARIO: TStringField;
    cdsConsultaCRMV: TStringField;
    cdsConsultaRACAS: TStringField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaCLIENTE: TStringField;
    qCliente: TSQLQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteNOME: TStringField;
    cdsClienteAPELIDO: TStringField;
    cdsClienteCDCLIENTE: TIntegerField;
    dsCliente: TDataSource;
    qMascote: TSQLQuery;
    qMascoteCDMASCOTE: TIntegerField;
    qMascoteCDRACA: TIntegerField;
    qMascoteCDTIPO: TIntegerField;
    qMascoteCDCLIENTE: TIntegerField;
    qMascoteNOME: TStringField;
    qMascoteCOR: TStringField;
    qMascoteNASCIMENTO: TDateField;
    qMascoteOBS: TBlobField;
    qMascoteFOTO: TBlobField;
    qMascoteFALECIDO: TIntegerField;
    qMascotePELAGEM: TStringField;
    qMascoteDATA_CADASTRO: TDateField;
    qMascoteAPELIDO: TStringField;
    qMascoteRACA: TStringField;
    qMascoteTIPO: TStringField;
    qMascoteIDADE: TFloatField;
    dspMascote: TDataSetProvider;
    cdsMascote: TClientDataSet;
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
    cdsMascoteIDADE: TFloatField;
    cdsMascoteFOTO: TBlobField;
    cdsMascoteFALECIDO: TIntegerField;
    cdsMascotePELAGEM: TStringField;
    dsMascote: TDataSource;
    PanelSuperior: TPanel;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Bevel1: TBevel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    cdsConsultaANAMNESE: TBlobField;
    cdsConsultaTIPO_CONSULTA: TStringField;
    cdsConsultaSOLICITADO_EXAME: TIntegerField;
    cdsConsultaSOLICITADO_RX: TIntegerField;
    qConsultaCDCONSULTA: TIntegerField;
    qConsultaCDMASCOTE: TIntegerField;
    qConsultaDATA: TDateField;
    qConsultaDIAGNOSTICO: TStringField;
    qConsultaCDVETERINARIO: TIntegerField;
    qConsultaANAMNESE: TBlobField;
    qConsultaTIPO_CONSULTA: TStringField;
    qConsultaSOLICITADO_EXAME: TIntegerField;
    qConsultaSOLICITADO_RX: TIntegerField;
    qConsultaCDRACA: TIntegerField;
    qConsultaCDTIPO: TIntegerField;
    qConsultaCDCLIENTE: TIntegerField;
    qConsultaPACIENTE: TStringField;
    qConsultaCOR: TStringField;
    qConsultaNASCIMENTO: TDateField;
    qConsultaOBS: TBlobField;
    qConsultaFOTO: TBlobField;
    qConsultaFALECIDO: TIntegerField;
    qConsultaPELAGEM: TStringField;
    qConsultaVETERINARIO: TStringField;
    qConsultaCRMV: TStringField;
    qConsultaRACAS: TStringField;
    qConsultaTIPO: TStringField;
    qConsultaCLIENTE: TStringField;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    JvXPButton1: TJvXPButton;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBEdit10: TDBEdit;
    JvNavPanelHeader2: TJvNavPanelHeader;
    procedure dspConsultaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure cdsMascoteAfterScroll(DataSet: TDataSet);
    procedure cdsConsultaSOLICITADO_EXAMEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsConsultaSOLICITADO_RXGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

type
  TGroupBox = class(StdCtrls.TGroupBox) //declare this before of your form definition
  public
    procedure Paint; override;
  end;

var
  TelaConsulta: TTelaConsulta;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, Themes, PesquisaClientes_p;

{$R *.dfm}


procedure TGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
  CaptionRect,
  OuterRect: TRect;
  Size: TSize;
  Box: TThemedButton;
  Details: TThemedElementDetails;
begin
  with Canvas do
  begin
    Font := Self.Font;

    if ThemeControl(Self) then
    begin
      if Text <> '' then
      begin
        GetTextExtentPoint32(Handle, PChar(Text), Length(Text), Size);
        CaptionRect := Rect(0, 0, Size.cx, Size.cy);
        if not UseRightToLeftAlignment then
          OffsetRect(CaptionRect, 8, 0)
        else
          OffsetRect(CaptionRect, Width - 8 - CaptionRect.Right, 0);
      end
      else
        CaptionRect := Rect(0, 0, 0, 0);

      OuterRect := ClientRect;
      OuterRect.Top := (CaptionRect.Bottom - CaptionRect.Top) div 2;
      with CaptionRect do
        ExcludeClipRect(Handle, Left, Top, Right, Bottom);
      if Enabled then
        Box := tbGroupBoxNormal
      else
        Box := tbGroupBoxDisabled;
      Details := ThemeServices.GetElementDetails(Box);
      //Draw the themed frame
      ThemeServices.DrawElement(Handle, Details, OuterRect);
      SelectClipRgn(Handle, 0);
      if Text <> '' then
      begin
         H := TextHeight('0');
         if not UseRightToLeftAlignment then
           R := Rect(8, 0, 0, H)
         else
           R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
         Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
         //Now using the Windows.DrawText
         DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
         Brush.Color := Color;//background color of the caption
         Font.Color := clRed;//the color of the caption.
         DrawText(Handle, PChar(Text), Length(Text), R, Flags);
      end;
    end
    else
    inherited;   //if the control is not themed then use the original paint method.
  end;
end;


procedure TTelaConsulta.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsConsulta.Edit;
end;

procedure TTelaConsulta.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsConsulta.Cancel;
end;

procedure TTelaConsulta.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsConsulta.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsConsulta.Delete;
          cdsConsulta.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConsulta.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsConsulta.State = dsInsert then
      begin
        cdsConsultaCDCONSULTA.AsInteger := Gerar_id('GEN_CONSULTA_ID');
      end;

    cdsConsulta.Post;
    cdsConsulta.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaConsulta.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsConsulta.Insert;
  cdsConsultaDATA.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  //DBLookupComboBox1.SetFocus;
end;

procedure TTelaConsulta.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConsulta.Browse;
begin
  if (VarMeusAcessos[25] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[26] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[27] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[28] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaConsulta.cdsConsultaSOLICITADO_EXAMEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = 0 then
    Text := 'Não'
  else
    if Sender.AsInteger = 1 then
      Text := 'Sim';
end;

procedure TTelaConsulta.cdsConsultaSOLICITADO_RXGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = 0 then
    Text := 'Não'
  else
    if Sender.AsInteger = 1 then
      Text := 'Sim';
end;

procedure TTelaConsulta.cdsMascoteAfterScroll(DataSet: TDataSet);
var Jpeg   : TJPEGImage;
    Stream : TMemoryStream;
begin
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

procedure TTelaConsulta.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaConsulta.dspConsultaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'CONSULTA';
end;

procedure TTelaConsulta.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[25] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[26] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[27] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[28] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsConsulta.Open;
  cdsCliente.Open;
  cdsMascote.Open;
  Browse;
end;

procedure TTelaConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit10' then
        begin
          PesquisaClientes := TPesquisaClientes.Create(Application);
          PesquisaClientes.ShowModal;
          cdsConsultaCLIENTE.AsString    := Trim(PesquisaClientes.cdsClientesNOME.AsString);
          cdsConsultaCDCLIENTE.AsInteger :=      PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          FreeAndNil(PesquisaClientes);
          DBEdit10.SetFocus;
        end;



    end;
end;

end.
