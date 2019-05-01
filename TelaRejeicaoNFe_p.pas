unit TelaRejeicaoNFe_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, JvExButtons, JvBitBtn,
  StdCtrls, Buttons, JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, Grids,
  DBGrids, DBCtrls;

type
  TTelaRejeicaoNFe = class(TForm)
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
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    qRejeicao: TSQLQuery;
    dspRejeicao: TDataSetProvider;
    cdsRejeicao: TClientDataSet;
    dsRejeicao: TDataSource;
    cdsRejeicaoCDNFE_REJEICAO: TIntegerField;
    cdsRejeicaoCODIGO: TIntegerField;
    cdsRejeicaoDESCRICAO: TStringField;
    cdsRejeicaoCADASTRADO_POR: TStringField;
    cdsRejeicaoCADASTRADO_EM: TSQLTimeStampField;
    cdsRejeicaoACAO: TStringField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Insert;
    procedure Browse;
  end;

var
  TelaRejeicaoNFe: TTelaRejeicaoNFe;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}
procedure TTelaRejeicaoNFe.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsRejeicao.Edit;
end;

procedure TTelaRejeicaoNFe.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsRejeicao.Cancel;
end;

procedure TTelaRejeicaoNFe.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsRejeicao.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsRejeicao.Delete;
          cdsRejeicao.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaRejeicaoNFe.BitBtnGeralClick(Sender: TObject);
begin
  cdsRejeicao.Filtered := False;
  cdsRejeicao.Refresh;
end;

procedure TTelaRejeicaoNFe.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsRejeicao.State = dsInsert then
      begin
        cdsRejeicaoCDNFE_REJEICAO.AsInteger := Gerar_id('GEN_NFE_REJEICAO_ID');
        cdsRejeicaoCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsRejeicaoCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end;
    cdsRejeicao.Post;
    cdsRejeicao.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaRejeicaoNFe.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsRejeicao.Insert;
  DBEdit3.SetFocus;
end;

procedure TTelaRejeicaoNFe.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsRejeicao.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsRejeicao.Filter := 'CDNFE_REJEICAO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsRejeicao.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : cdsRejeicao.Filter := 'CODIGO  = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsRejeicao.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaRejeicaoNFe.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaRejeicaoNFe.Browse;
begin
  if (VarMeusAcessos[177] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[178] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[179] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[180] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaRejeicaoNFe.DBGrid1TitleClick(Column: TColumn);
var vIndice: string;
    vExiste: boolean;
begin
  if cdsRejeicao.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsRejeicao.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsRejeicao.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsRejeicao.IndexName := vIndice;
    end
  else
    cdsRejeicao.IndexFieldNames := Column.FieldName;
end;

procedure TTelaRejeicaoNFe.Insert;
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


procedure TTelaRejeicaoNFe.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[177] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[178] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[179] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[180] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsRejeicao.Open;
end;

procedure TTelaRejeicaoNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
