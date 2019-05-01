unit TelaSubgrupo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, Provider,
  DBClient, SqlExpr, Grids, DBGrids, JvExButtons, JvBitBtn, JvExControls,
  JvXPCore, JvXPButtons, Menus;

type
  TTelaSubgrupo = class(TForm)
    qSubGrupo: TSQLQuery;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoCDSUBGRUPO: TIntegerField;
    cdsSubGrupoDESCRICAO: TStringField;
    dspSubGrupo: TDataSetProvider;
    dsSubGrupo: TDataSource;
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
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
    PopupMenu1: TPopupMenu;
    ListagemSubGrupo1: TMenuItem;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure ListagemSubGrupo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaSubgrupo: TTelaSubgrupo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, ListagemSubGrupo_p;

{$R *.dfm}

procedure TTelaSubgrupo.Browse;
begin
  if (VarMeusAcessos[50] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[51] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[52] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[53] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled    := True;
//  BitBtnAlterar.Enabled    := True;
  BitBtnGravar.Enabled     := False;
//  BitBtnExcluir.Enabled    := True;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
//  BitBtnRelatorios.Enabled := True;
  PanelCampos.Enabled      := False;
end;

procedure TTelaSubgrupo.Insert;
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


procedure TTelaSubgrupo.ListagemSubGrupo1Click(Sender: TObject);
begin
  ListagemSubGrupo := TListagemSubGrupo.Create(Application);
  ListagemSubGrupo.MontaRelatorio;
  FreeAndNil(ListagemSubGrupo);
end;

procedure TTelaSubgrupo.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsSubGrupo.Edit;
end;

procedure TTelaSubgrupo.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsSubGrupo.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsSubGrupo.Delete;
          cdsSubGrupo.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaSubgrupo.BitBtnGeralClick(Sender: TObject);
begin
  cdsSubGrupo.Filtered := False;
  cdsSubGrupo.Refresh;
end;

procedure TTelaSubgrupo.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsSubGrupo.State = dsInsert then
      begin
        cdsSubGrupoCDSUBGRUPO.AsInteger := Gerar_id('GEN_SUBGRUPOS_ID');
      end;
    cdsSubGrupo.Post;
    cdsSubGrupo.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaSubgrupo.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsSubGrupo.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaSubgrupo.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsSubGrupo.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsSubGrupo.Filter := 'CDSUBGRUPO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsSubGrupo.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsSubGrupo.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaSubgrupo.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaSubgrupo.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsSubGrupo.Cancel;
end;

procedure TTelaSubgrupo.DBGrid1TitleClick(Column: TColumn);
var vIndice: string;
    vExiste: boolean;
begin
  if cdsSubGrupo.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsSubGrupo.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsSubGrupo.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsSubGrupo.IndexName := vIndice;
    end
  else
    cdsSubGrupo.IndexFieldNames := Column.FieldName;
end;

procedure TTelaSubgrupo.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[50] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[51] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[52] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[53] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsSubGrupo.Open;
end;

procedure TTelaSubgrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaSubgrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
