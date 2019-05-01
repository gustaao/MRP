unit TelaGrupo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, Mask, DBCtrls, DB, Provider,
  DBClient, SqlExpr, Grids, DBGrids, JvExButtons, JvBitBtn, JvExControls,
  JvXPCore, JvXPButtons, Menus;

type
  TTelaGrupo = class(TForm)
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    qGrupo: TSQLQuery;
    cdsGrupo: TClientDataSet;
    cdsGrupoCDGRUPO: TIntegerField;
    cdsGrupoDESCRICAO: TStringField;
    dspGrupo: TDataSetProvider;
    dsGrupo: TDataSource;
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
    ListagemdeGrupo1: TMenuItem;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure ListagemdeGrupo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaGrupo: TTelaGrupo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, ListagemGrupo_p;

{$R *.dfm}

procedure TTelaGrupo.Browse;
begin
  if (VarMeusAcessos[45] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[46] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[47] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[48] = '001' then
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

procedure TTelaGrupo.Insert;
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


procedure TTelaGrupo.ListagemdeGrupo1Click(Sender: TObject);
begin
  ListagemGrupo := TListagemGrupo.Create(Application);
  ListagemGrupo.MontaRelatorio;
  FreeAndNil(ListagemGrupo);
end;

procedure TTelaGrupo.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsGrupo.Edit;
end;

procedure TTelaGrupo.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsGrupo.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsGrupo.Delete;
          cdsGrupo.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaGrupo.BitBtnGeralClick(Sender: TObject);
begin
  cdsGrupo.Filtered := False;
  cdsGrupo.Refresh;
end;

procedure TTelaGrupo.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsGrupo.State = dsInsert then
      begin
        cdsGrupoCDGRUPO.AsInteger := Gerar_id('GEN_GRUPO_ID');
      end;
    cdsGrupo.Post;
    cdsGrupo.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaGrupo.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsGrupo.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaGrupo.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsGrupo.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsGrupo.Filter := 'CDGRUPO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsGrupo.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsGrupo.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaGrupo.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaGrupo.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsGrupo.Cancel;
end;

procedure TTelaGrupo.DBGrid1TitleClick(Column: TColumn);
var vIndice: string;
    vExiste: boolean;
begin
  if cdsGrupo.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsGrupo.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsGrupo.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsGrupo.IndexName := vIndice;
    end
  else
    cdsGrupo.IndexFieldNames := Column.FieldName;
end;

procedure TTelaGrupo.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[45] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[46] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[47] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[48] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsGrupo.Open;
end;

procedure TTelaGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
