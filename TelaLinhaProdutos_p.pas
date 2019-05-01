unit TelaLinhaProdutos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls, Grids, DBGrids,
  JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls, JvExButtons,
  JvBitBtn, Buttons, Menus;

type
  TTelaLinhaProdutos = class(TForm)
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
    Label21: TLabel;
    Label22: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    qLinha: TSQLQuery;
    dspLinha: TDataSetProvider;
    cdsLinha: TClientDataSet;
    dsLinha: TDataSource;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    cdsLinhaCDLINHA_PRODUTOS: TIntegerField;
    cdsLinhaDESCRICAO: TStringField;
    cdsLinhaCADASTRADO_POR: TStringField;
    cdsLinhaCADASTRADO_EM: TSQLTimeStampField;
    cdsLinhaALTERADO_POR: TStringField;
    cdsLinhaALTERADO_EM: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    ListagemdeLinhadeProdutos1: TMenuItem;
    cdsLinhaORDEM: TIntegerField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListagemdeLinhadeProdutos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;


var
  TelaLinhaProdutos: TTelaLinhaProdutos;

implementation

uses Principal_P, DMPrincipal_p, Funcoes_p, ListagemLinhaProdutos_p;

{$R *.dfm}

procedure TTelaLinhaProdutos.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsLinha.Edit;
end;

procedure TTelaLinhaProdutos.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsLinha.Cancel;
end;

procedure TTelaLinhaProdutos.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsLinha.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsLinha.Delete;
          cdsLinha.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaLinhaProdutos.BitBtnGeralClick(Sender: TObject);
var VarQuery : String;
begin
  Varquery := ('select lp.cdlinha_produtos, lp.descricao, lp.cadastrado_por, ' +
               '       lp.cadastrado_em, lp.ordem,    lp.alterado_por, lp.alterado_em  ' +
               'from linha_produtos lp order by lp.ordem, lp.descricao');
  cdsLinha.Close;
  cdsLinha.CommandText := Varquery;
  cdsLinha.Open;
  cdsLinha.Refresh;
end;

procedure TTelaLinhaProdutos.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsLinha.State = dsInsert then
      begin
        cdsLinhaCDLINHA_PRODUTOS.AsInteger := Gerar_id('GEN_LINHA_PRODUTOS_ID');
        cdsLinhaCADASTRADO_POR.AsString    := VarNomeUsuario;
        cdsLinhaCADASTRADO_EM.AsDateTime   := Date;
      end;
    cdsLinha.Post;
    cdsLinha.ApplyUpdates(0);
    cdsLinha.Refresh;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaLinhaProdutos.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsLinha.Insert;
  cdsLinhaCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  DBEdit3.SetFocus;
end;

procedure TTelaLinhaProdutos.BitBtnOKClick(Sender: TObject);
var VarQuery : String;
begin
  Varquery := ('select lp.cdlinha_produtos, lp.descricao, lp.cadastrado_por, ' +
               '       lp.cadastrado_em, lp.ordem, lp.alterado_por, lp.alterado_em  ' +
               'from linha_produtos lp  ');
  cdsLinha.Close;
  case RadioGroupPesquisa.ItemIndex of
    0 : VarQuery := VarQuery + ' where lp.cdlinha_produtos = '''+MaskEditPesquisa.Text+''' ';
    1 : VarQuery := VarQuery + ' where lp.descricao like     ''%'+MaskeditPesquisa.Text+'%'' ';
  end;
  VarQuery := VarQuery + '   order by lp.ordem, lp.descricao';
  cdsLinha.CommandText := Varquery;
  cdsLinha.Open;
end;

procedure TTelaLinhaProdutos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaLinhaProdutos.Browse;
begin
  if (VarMeusAcessos[196] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[197] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[198] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[199] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled   := False;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaLinhaProdutos.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[196] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[197] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[198] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[199] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsLinha.Open;
  if cdsLinha.State = dsBrowse then
    Browse;
end;

procedure TTelaLinhaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaLinhaProdutos.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaLinhaProdutos.ListagemdeLinhadeProdutos1Click(Sender: TObject);
begin
  ListagemLinhaProdutos := TListagemLinhaProdutos.Create(Application);
  ListagemLinhaProdutos.MontaRelatorio;
  FreeAndNil(ListagemLinhaProdutos);
end;

end.
