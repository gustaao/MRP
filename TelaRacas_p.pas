unit TelaRacas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, Provider, DBClient, SqlExpr,
  Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn, Menus;

type
  TTelaRacas = class(TForm)
    qRaca: TSQLQuery;
    cdsRaca: TClientDataSet;
    dspRaca: TDataSetProvider;
    dsRaca: TDataSource;
    DBGrid1: TDBGrid;
    cdsRacaCDRACA: TIntegerField;
    cdsRacaDESCRICAO: TStringField;
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
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cdsRacaCADASTRADO_POR: TStringField;
    cdsRacaCADASTRADO_EM: TSQLTimeStampField;
    cdsRacaALTERADO_POR: TStringField;
    cdsRacaALTERADO_EM: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LR: TMenuItem;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaRacas: TTelaRacas;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p, ListagemRacas_p;

{$R *.dfm}

procedure TTelaRacas.Browse;
begin
  if (VarMeusAcessos[146] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[147] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[148] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[149] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaRacas.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaRacas.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsRaca.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsRaca.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsRaca.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsRaca.IndexName := vIndice;
    end
  else
    cdsRaca.IndexFieldNames := Column.FieldName;
end;

procedure TTelaRacas.LRClick(Sender: TObject);
begin
  ListagemRacas := TListagemRacas.Create(Application);
  ListagemRacas.MontaRelatorio;
  FreeAndNil(ListagemRacas);
end;

procedure TTelaRacas.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsRaca.Edit;
end;

procedure TTelaRacas.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsRaca.Cancel;
end;

procedure TTelaRacas.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsRaca.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsRaca.Delete;
          cdsRaca.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaRacas.BitBtnGeralClick(Sender: TObject);
begin
  cdsRaca.Filtered := False;
  cdsRaca.Refresh;
end;

procedure TTelaRacas.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsRaca.State = dsInsert then
      begin
        cdsRacaCDRACA.AsInteger         := Gerar_id('GEN_RACAS_ID');
        cdsRacaCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsRacaCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if cdsRaca.State = dsEdit then
        begin
          cdsRacaALTERADO_POR.AsString  := VarNomeUsuario;
          cdsRacaALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;
    cdsRaca.Post;
    cdsRaca.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaRacas.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsRaca.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaRacas.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsRaca.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsRaca.Filter := 'CDRACA       = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsRaca.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsRaca.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaRacas.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaRacas.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[146] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[147] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[148] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[149] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsRaca.Open;
end;

procedure TTelaRacas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaRacas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
