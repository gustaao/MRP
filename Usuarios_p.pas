unit Usuarios_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, DB, Provider, DBClient, SqlExpr,
  Buttons, ExtCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn, CategoryButtons, ImgList, ButtonGroup, StrUtils;

type
  TUsuarios = class(TForm)
    qUsuarios: TSQLQuery;
    cdsUsuarios: TClientDataSet;
    dspUsuarios: TDataSetProvider;
    dsUsuarios: TDataSource;
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
    PanelCorpo: TPanel;
    cdsClone: TClientDataSet;
    cdsUsuariosCDUSUARIO: TIntegerField;
    cdsUsuariosLOGIN: TStringField;
    cdsUsuariosSENHA: TStringField;
    cdsUsuariosNOME: TStringField;
    ImageList1: TImageList;
    PanelPermissoes: TPanel;
    CategoryButtons1: TCategoryButtons;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cdsUsuariosACESSO: TStringField;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsUsuariosAfterScroll(DataSet: TDataSet);
    procedure CategoryButtons1Categories0Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories1Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories2Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories2Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories3Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories4Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories4Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories5Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories5Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories5Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories5Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories5Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories6Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories6Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories6Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories6Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories6Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories7Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories7Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories7Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories7Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories7Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories8Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories8Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories8Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories8Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories8Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories9Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories9Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories9Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories9Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories9Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories10Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories10Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories10Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories10Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories10Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories11Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories11Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories11Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories11Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories11Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories12Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories12Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories12Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories12Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories12Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories13Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories13Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories13Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories13Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories13Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories14Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories14Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories14Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories14Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories14Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories15Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories15Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories15Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories15Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories15Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories16Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories16Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories16Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories16Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories16Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories17Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories17Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories17Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories17Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories17Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories18Items5Click(Sender: TObject);
    procedure CategoryButtons1Categories19Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories19Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories19Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories19Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories19Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories20Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories20Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories20Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories20Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories20Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories21Items5Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories22Items5Click(Sender: TObject);
    procedure CategoryButtons1Categories23Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories23Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories23Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories24Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories24Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories24Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories24Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories24Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories25Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories25Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories25Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories25Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories25Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories26Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories26Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories26Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories26Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories26Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories27Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories27Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories27Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories27Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories27Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories28Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories28Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories28Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories28Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories28Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories29Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories29Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories29Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories29Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories29Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories30Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories30Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories30Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories30Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories30Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items5Click(Sender: TObject);
    procedure CategoryButtons1Categories31Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories32Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories32Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories32Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories32Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories32Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories33Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories33Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories33Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories33Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories33Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories34Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories34Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories34Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories34Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories34Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories35Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories35Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories35Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories35Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories35Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories36Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories36Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories36Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories36Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories36Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories37Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories37Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories37Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories37Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories37Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories38Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories38Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories38Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories38Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories38Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories39Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories39Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories39Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories39Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories0Items6Click(Sender: TObject);
    procedure CategoryButtons1Categories40Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories40Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories40Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories40Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories41Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories41Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories41Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories41Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories41Items4Click(Sender: TObject);
    procedure CategoryButtons1Categories42Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories42Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories42Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories43Items0Click(Sender: TObject);
    procedure CategoryButtons1Categories43Items1Click(Sender: TObject);
    procedure CategoryButtons1Categories43Items2Click(Sender: TObject);
    procedure CategoryButtons1Categories43Items3Click(Sender: TObject);
    procedure CategoryButtons1Categories43Items4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure MarcarPermissoes;
    procedure RecebeAcesso;
    procedure SetPermissoes(VarCat,VarItem,VarHint : Integer);
    procedure DevolveAcesso;
  end;

var
  Usuarios: TUsuarios;

  VarControleAcesso : String;
  //VarAcessos : array[0..999] of string;
implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TUsuarios.SetPermissoes(VarCat,VarItem,VarHint : Integer);
begin
  if cdsUsuarios.State in [dsInsert,dsEdit] then
    begin
      if CategoryButtons1.Categories[VarCat].Items[VarItem].ImageIndex = 0 then
        begin
          CategoryButtons1.Categories[VarCat].Items[VarItem].ImageIndex := 1;
          VarAcessosUsuario[VarHint] := '001';
        end
      else
        begin
          CategoryButtons1.Categories[VarCat].Items[VarItem].ImageIndex := 0;
          VarAcessosUsuario[VarHint] := '000';
        end;
    end;
end;

procedure TUsuarios.RecebeAcesso;
var i,x : Integer;
begin
  x := 1;
  for i := 0 to Length(cdsUsuariosACESSO.AsString) - 1  do
    begin
      VarAcessosUsuario[i] := Copy(cdsUsuariosACESSO.AsString,x,3);
      x := x + 3;
    end;
end;

procedure TUsuarios.DevolveAcesso;
var i,x : Integer;
begin
  VarControleAcesso := '';
  if Length(cdsUsuariosACESSO.AsString) > 0 then
    begin
      x := 1;
      for i := 0 to Length(cdsUsuariosACESSO.AsString) -1 do
        begin
          VarControleAcesso := VarControleAcesso + VarAcessosUsuario[i];
          x := x + 3;
        end;
    end
  else
    begin
      VarControleAcesso := CompletaComZeros(VarControleAcesso,999);
    end;
end;






procedure TUsuarios.MarcarPermissoes;
begin
{*******Rotina de Marcar as Permissoes *****************************************
 Esta Rotina pode-se dizer que é puramente de embelezamento, ela verifica se o
 usuário tem acesso a determinado menu e troca dentro do componente o indice da
 imagem. }
  //Vendas
  CategoryButtons1.Categories[0].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[000],0);//Ponto de Venda
  CategoryButtons1.Categories[0].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[001],0);//Pedidos
  CategoryButtons1.Categories[0].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[002],0);//NFe
  CategoryButtons1.Categories[0].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[003],0);//Boletim de Caixa
  CategoryButtons1.Categories[0].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[004],0);//Movimentação de Caixa
  CategoryButtons1.Categories[0].Items[5].ImageIndex := StrToIntDef(VarAcessosUsuario[004],0);//Configuração Venda
  CategoryButtons1.Categories[0].Items[6].ImageIndex := StrToIntDef(VarAcessosUsuario[194],0);//Excutar Cancelamento de Venda
  //Especialistas
  CategoryButtons1.Categories[1].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[005],0);//Visualizar
  CategoryButtons1.Categories[1].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[006],0);//Incluir
  CategoryButtons1.Categories[1].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[007],0);//Excluir
  CategoryButtons1.Categories[1].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[008],0);//Alterar
  CategoryButtons1.Categories[1].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[009],0);//Relatórios
  //Agenda - Salão
  CategoryButtons1.Categories[2].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[010],0);//Visualizar
  CategoryButtons1.Categories[2].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[011],0);//Agendar Horários
  //Ordem de serviço
  CategoryButtons1.Categories[3].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[012],0);//Visualizar
  CategoryButtons1.Categories[3].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[013],0);//Incluir
  CategoryButtons1.Categories[3].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[014],0);//Excluir
  CategoryButtons1.Categories[3].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[015],0);//Alterar
  CategoryButtons1.Categories[3].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[016],0);//Relatórios
  //Agenda - Clinica
  CategoryButtons1.Categories[4].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[017],0);//Visualizar
  CategoryButtons1.Categories[4].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[018],0);//Agendar Horários
  //Profissionais
  CategoryButtons1.Categories[5].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[019],0);//Visualizar
  CategoryButtons1.Categories[5].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[020],0);//Incluir
  CategoryButtons1.Categories[5].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[021],0);//Excluir
  CategoryButtons1.Categories[5].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[022],0);//Alterar
  CategoryButtons1.Categories[5].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[023],0);//Relatórios
  //Consulta
  CategoryButtons1.Categories[6].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[024],0);//Visualizar
  CategoryButtons1.Categories[6].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[025],0);//Incluir
  CategoryButtons1.Categories[6].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[026],0);//Excluir
  CategoryButtons1.Categories[6].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[027],0);//Alterar
  CategoryButtons1.Categories[6].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[028],0);//Relatórios
  //Procedimentos
  CategoryButtons1.Categories[7].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[029],0);//Visualizar
  CategoryButtons1.Categories[7].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[030],0);//Incluir
  CategoryButtons1.Categories[7].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[031],0);//Excluir
  CategoryButtons1.Categories[7].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[032],0);//Alterar
  CategoryButtons1.Categories[7].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[033],0);//Relatórios
  //Empresa
  CategoryButtons1.Categories[8].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[034],0);//Visualizar
  CategoryButtons1.Categories[8].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[035],0);//Incluir
  CategoryButtons1.Categories[8].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[036],0);//Excluir
  CategoryButtons1.Categories[8].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[037],0);//Alterar
  CategoryButtons1.Categories[8].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[038],0);//Relatórios
  //Fornecedores
  CategoryButtons1.Categories[9].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[039],0);//Visualizar
  CategoryButtons1.Categories[9].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[040],0);//Incluir
  CategoryButtons1.Categories[9].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[041],0);//Excluir
  CategoryButtons1.Categories[9].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[042],0);//Alterar
  CategoryButtons1.Categories[9].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[043],0);//Relatórios
  //Grupo
  CategoryButtons1.Categories[10].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[044],0);//Visualizar
  CategoryButtons1.Categories[10].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[045],0);//Incluir
  CategoryButtons1.Categories[10].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[046],0);//Excluir
  CategoryButtons1.Categories[10].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[047],0);//Alterar
  CategoryButtons1.Categories[10].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[048],0);//Relatórios
  //SubGrupo
  CategoryButtons1.Categories[11].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[049],0);//Visualizar
  CategoryButtons1.Categories[11].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[050],0);//Incluir
  CategoryButtons1.Categories[11].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[051],0);//Excluir
  CategoryButtons1.Categories[11].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[052],0);//Alterar
  CategoryButtons1.Categories[11].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[053],0);//Relatórios
  //Produtos
  CategoryButtons1.Categories[12].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[054],0);//Visualizar
  CategoryButtons1.Categories[12].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[055],0);//Incluir
  CategoryButtons1.Categories[12].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[056],0);//Excluir
  CategoryButtons1.Categories[12].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[057],0);//Alterar
  CategoryButtons1.Categories[12].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[058],0);//Relatórios
  //Vendedores
  CategoryButtons1.Categories[13].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[059],0);//Visualizar
  CategoryButtons1.Categories[13].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[060],0);//Incluir
  CategoryButtons1.Categories[13].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[061],0);//Excluir
  CategoryButtons1.Categories[13].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[062],0);//Alterar
  CategoryButtons1.Categories[13].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[063],0);//Relatórios
  //Clientes
  CategoryButtons1.Categories[14].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[064],0);//Visualizar
  CategoryButtons1.Categories[14].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[065],0);//Incluir
  CategoryButtons1.Categories[14].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[066],0);//Excluir
  CategoryButtons1.Categories[14].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[067],0);//Alterar
  CategoryButtons1.Categories[14].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[068],0);//Relatórios
  //Cargos e Funções
  CategoryButtons1.Categories[15].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[069],0);//Visualizar
  CategoryButtons1.Categories[15].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[070],0);//Incluir
  CategoryButtons1.Categories[15].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[071],0);//Excluir
  CategoryButtons1.Categories[15].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[072],0);//Alterar
  CategoryButtons1.Categories[15].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[073],0);//Relatórios
  //Colaboradores
  CategoryButtons1.Categories[16].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[074],0);//Visualizar
  CategoryButtons1.Categories[16].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[075],0);//Incluir
  CategoryButtons1.Categories[16].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[076],0);//Excluir
  CategoryButtons1.Categories[16].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[077],0);//Alterar
  CategoryButtons1.Categories[16].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[078],0);//Relatórios
  //Transportadores
  CategoryButtons1.Categories[17].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[079],0);//Visualizar
  CategoryButtons1.Categories[17].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[080],0);//Incluir
  CategoryButtons1.Categories[17].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[081],0);//Excluir
  CategoryButtons1.Categories[17].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[082],0);//Alterar
  CategoryButtons1.Categories[17].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[083],0);//Relatórios
  //Usuários
  CategoryButtons1.Categories[18].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[084],0);//Visualizar
  CategoryButtons1.Categories[18].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[085],0);//Incluir
  CategoryButtons1.Categories[18].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[086],0);//Excluir
  CategoryButtons1.Categories[18].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[087],0);//Alterar
  CategoryButtons1.Categories[18].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[088],0);//Relatórios
  CategoryButtons1.Categories[18].Items[5].ImageIndex := StrToIntDef(VarAcessosUsuario[089],0);//Permissões
  //Plano de Contas
  CategoryButtons1.Categories[19].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[090],0);//Visualizar
  CategoryButtons1.Categories[19].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[091],0);//Incluir
  CategoryButtons1.Categories[19].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[092],0);//Excluir
  CategoryButtons1.Categories[19].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[093],0);//Alterar
  CategoryButtons1.Categories[19].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[094],0);//Relatórios
  //Despesa em Conta
  CategoryButtons1.Categories[20].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[095],0);//Visualizar
  CategoryButtons1.Categories[20].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[096],0);//Incluir
  CategoryButtons1.Categories[20].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[097],0);//Excluir
  CategoryButtons1.Categories[20].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[098],0);//Alterar
  CategoryButtons1.Categories[20].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[099],0);//Relatórios
  //Contas a Pagar
  CategoryButtons1.Categories[21].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[100],0);//Visualizar
  CategoryButtons1.Categories[21].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[101],0);//Incluir
  CategoryButtons1.Categories[21].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[102],0);//Excluir
  CategoryButtons1.Categories[21].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[103],0);//Alterar
  CategoryButtons1.Categories[21].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[104],0);//Relatórios
  CategoryButtons1.Categories[21].Items[5].ImageIndex := StrToIntDef(VarAcessosUsuario[105],0);//Pagamento/Baixa
  //Contas a Receber
  CategoryButtons1.Categories[22].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[106],0);//Visualizar
  CategoryButtons1.Categories[22].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[107],0);//Incluir
  CategoryButtons1.Categories[22].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[108],0);//Excluir
  CategoryButtons1.Categories[22].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[109],0);//Alterar
  CategoryButtons1.Categories[22].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[110],0);//Relatórios
  CategoryButtons1.Categories[22].Items[5].ImageIndex := StrToIntDef(VarAcessosUsuario[111],0);//Recebimento/Baixa
  //Livro Caixa
  CategoryButtons1.Categories[23].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[112],0);//Visualizar
  CategoryButtons1.Categories[23].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[113],0);//Incluir
  CategoryButtons1.Categories[23].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[114],0);//Relatórios
  //Comissoes
  CategoryButtons1.Categories[24].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[115],0);//Visualizar
  CategoryButtons1.Categories[24].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[116],0);//Incluir
  CategoryButtons1.Categories[24].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[117],0);//Excluir
  CategoryButtons1.Categories[24].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[118],0);//Alterar
  CategoryButtons1.Categories[24].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[119],0);//Relatórios
  //Natureza de Operação
  CategoryButtons1.Categories[25].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[120],0);//Visualizar
  CategoryButtons1.Categories[25].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[121],0);//Incluir
  CategoryButtons1.Categories[25].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[122],0);//Excluir
  CategoryButtons1.Categories[25].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[123],0);//Alterar
  CategoryButtons1.Categories[25].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[124],0);//Relatórios
  //Classificação Fiscal
  CategoryButtons1.Categories[26].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[125],0);//Visualizar
  CategoryButtons1.Categories[26].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[126],0);//Incluir
  CategoryButtons1.Categories[26].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[127],0);//Excluir
  CategoryButtons1.Categories[26].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[128],0);//Alterar
  CategoryButtons1.Categories[26].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[129],0);//Relatórios
  //Situação Tributária
  CategoryButtons1.Categories[27].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[130],0);//Visualizar
  CategoryButtons1.Categories[27].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[131],0);//Incluir
  CategoryButtons1.Categories[27].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[132],0);//Excluir
  CategoryButtons1.Categories[27].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[133],0);//Alterar
  CategoryButtons1.Categories[27].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[134],0);//Relatórios
  //Centro de custo
  CategoryButtons1.Categories[28].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[135],0);//Visualizar
  CategoryButtons1.Categories[28].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[136],0);//Incluir
  CategoryButtons1.Categories[28].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[137],0);//Excluir
  CategoryButtons1.Categories[28].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[138],0);//Alterar
  CategoryButtons1.Categories[28].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[139],0);//Relatórios
  //Mascote
  CategoryButtons1.Categories[29].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[140],0);//Visualizar
  CategoryButtons1.Categories[29].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[141],0);//Incluir
  CategoryButtons1.Categories[29].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[142],0);//Excluir
  CategoryButtons1.Categories[29].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[143],0);//Alterar
  CategoryButtons1.Categories[29].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[144],0);//Relatórios
  //Mascote
  CategoryButtons1.Categories[30].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[145],0);//Visualizar
  CategoryButtons1.Categories[30].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[146],0);//Incluir
  CategoryButtons1.Categories[30].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[147],0);//Excluir
  CategoryButtons1.Categories[30].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[148],0);//Alterar
  CategoryButtons1.Categories[30].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[149],0);//Relatórios
  //Oportunidade de Negócios
  CategoryButtons1.Categories[31].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[150],0);//Visualizar
  //Prazos e Garantias
  CategoryButtons1.Categories[32].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[151],0);//Visualizar
  CategoryButtons1.Categories[32].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[152],0);//Incluir
  CategoryButtons1.Categories[32].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[153],0);//Excluir
  CategoryButtons1.Categories[32].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[154],0);//Alterar
  CategoryButtons1.Categories[32].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[155],0);//Relatórios
  //Segmento de Trabalho
  CategoryButtons1.Categories[33].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[156],0);//Visualizar
  CategoryButtons1.Categories[33].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[157],0);//Incluir
  CategoryButtons1.Categories[33].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[158],0);//Excluir
  CategoryButtons1.Categories[33].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[159],0);//Alterar
  CategoryButtons1.Categories[33].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[160],0);//Relatórios
  //Ordem de Compras
  CategoryButtons1.Categories[34].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[161],0);//Visualizar
  CategoryButtons1.Categories[34].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[162],0);//Incluir
  CategoryButtons1.Categories[34].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[163],0);//Excluir
  CategoryButtons1.Categories[34].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[164],0);//Alterar
  CategoryButtons1.Categories[34].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[165],0);//Relatórios
  //Entrada NFe
  CategoryButtons1.Categories[35].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[166],0);//Visualizar
  CategoryButtons1.Categories[35].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[167],0);//Incluir
  CategoryButtons1.Categories[35].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[168],0);//Excluir
  CategoryButtons1.Categories[35].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[169],0);//Alterar
  CategoryButtons1.Categories[35].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[170],0);//Relatórios
  //Mensagens Ordem de Compra
  CategoryButtons1.Categories[36].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[171],0);//Visualizar
  CategoryButtons1.Categories[36].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[172],0);//Incluir
  CategoryButtons1.Categories[36].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[173],0);//Excluir
  CategoryButtons1.Categories[36].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[174],0);//Alterar
  CategoryButtons1.Categories[36].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[175],0);//Relatórios
  //Código Rejeições NFe
  CategoryButtons1.Categories[37].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[176],0);//Visualizar
  CategoryButtons1.Categories[37].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[177],0);//Incluir
  CategoryButtons1.Categories[37].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[178],0);//Excluir
  CategoryButtons1.Categories[37].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[179],0);//Alterar
  CategoryButtons1.Categories[37].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[180],0);//Relatórios
  //Formas de Pagamento
  CategoryButtons1.Categories[38].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[181],0);//Visualizar
  CategoryButtons1.Categories[38].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[182],0);//Incluir
  CategoryButtons1.Categories[38].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[183],0);//Excluir
  CategoryButtons1.Categories[38].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[184],0);//Alterar
  CategoryButtons1.Categories[38].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[185],0);//Relatórios
  //Configuração Contábil
  CategoryButtons1.Categories[39].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[186],0);//Visualizar
  CategoryButtons1.Categories[39].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[187],0);//Incluir
  CategoryButtons1.Categories[39].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[188],0);//Excluir
  CategoryButtons1.Categories[39].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[189],0);//Alterar
  //ICMS
  CategoryButtons1.Categories[40].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[190],0);//Visualizar
  CategoryButtons1.Categories[40].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[191],0);//Incluir
  CategoryButtons1.Categories[40].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[192],0);//Excluir
  CategoryButtons1.Categories[40].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[193],0);//Alterar
  //Linha de Produtos
  CategoryButtons1.Categories[41].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[195],0);//Visualizar
  CategoryButtons1.Categories[41].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[196],0);//Incluir
  CategoryButtons1.Categories[41].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[197],0);//Excluir
  CategoryButtons1.Categories[41].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[198],0);//Alterar
  CategoryButtons1.Categories[41].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[199],0);//Relatórios
  //Rotinas de Backup
  CategoryButtons1.Categories[42].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[200],0);//Configurar Backup
  CategoryButtons1.Categories[42].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[201],0);//Executar Backup
  CategoryButtons1.Categories[42].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[202],0);//Executar Restore
  //Vacinas
  CategoryButtons1.Categories[43].Items[0].ImageIndex := StrToIntDef(VarAcessosUsuario[203],0);//Visualizar
  CategoryButtons1.Categories[43].Items[1].ImageIndex := StrToIntDef(VarAcessosUsuario[204],0);//Incluir
  CategoryButtons1.Categories[43].Items[2].ImageIndex := StrToIntDef(VarAcessosUsuario[205],0);//Excluir
  CategoryButtons1.Categories[43].Items[3].ImageIndex := StrToIntDef(VarAcessosUsuario[206],0);//Alterar
  CategoryButtons1.Categories[43].Items[4].ImageIndex := StrToIntDef(VarAcessosUsuario[207],0);//Relatórios

end;

procedure TUsuarios.Browse;
begin
  if (VarMeusAcessos[85] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[86] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[87] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[88] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TUsuarios.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TUsuarios.CategoryButtons1Categories0Items0Click(Sender: TObject);
begin
  SetPermissoes(0,0,0);
end;

procedure TUsuarios.CategoryButtons1Categories0Items1Click(Sender: TObject);
begin
  SetPermissoes(0,1,1);
end;

procedure TUsuarios.CategoryButtons1Categories0Items2Click(Sender: TObject);
begin
  SetPermissoes(0,2,2);
end;

procedure TUsuarios.CategoryButtons1Categories0Items3Click(Sender: TObject);
begin
  SetPermissoes(0,3,3);
end;

procedure TUsuarios.CategoryButtons1Categories0Items4Click(Sender: TObject);
begin
  SetPermissoes(0,4,4);
end;

procedure TUsuarios.CategoryButtons1Categories0Items5Click(Sender: TObject);
begin
  SetPermissoes(0,5,150);
end;

procedure TUsuarios.CategoryButtons1Categories0Items6Click(Sender: TObject);
begin
  SetPermissoes(0,6,194);
end;

procedure TUsuarios.CategoryButtons1Categories10Items0Click(Sender: TObject);
begin
  SetPermissoes(10,0,44);
end;

procedure TUsuarios.CategoryButtons1Categories10Items1Click(Sender: TObject);
begin
  SetPermissoes(10,1,45);
end;

procedure TUsuarios.CategoryButtons1Categories10Items2Click(Sender: TObject);
begin
  SetPermissoes(10,2,46);
end;

procedure TUsuarios.CategoryButtons1Categories10Items3Click(Sender: TObject);
begin
  SetPermissoes(10,3,47);
end;

procedure TUsuarios.CategoryButtons1Categories10Items4Click(Sender: TObject);
begin
  SetPermissoes(10,4,48);
end;

procedure TUsuarios.CategoryButtons1Categories11Items0Click(Sender: TObject);
begin
  SetPermissoes(11,0,49);
end;

procedure TUsuarios.CategoryButtons1Categories11Items1Click(Sender: TObject);
begin
  SetPermissoes(11,1,50);
end;

procedure TUsuarios.CategoryButtons1Categories11Items2Click(Sender: TObject);
begin
  SetPermissoes(11,2,51);
end;

procedure TUsuarios.CategoryButtons1Categories11Items3Click(Sender: TObject);
begin
  SetPermissoes(11,3,52);
end;

procedure TUsuarios.CategoryButtons1Categories11Items4Click(Sender: TObject);
begin
  SetPermissoes(11,4,53);
end;

procedure TUsuarios.CategoryButtons1Categories12Items0Click(Sender: TObject);
begin
  SetPermissoes(12,0,54);
end;

procedure TUsuarios.CategoryButtons1Categories12Items1Click(Sender: TObject);
begin
  SetPermissoes(12,1,55);
end;

procedure TUsuarios.CategoryButtons1Categories12Items2Click(Sender: TObject);
begin
  SetPermissoes(12,2,56);
end;

procedure TUsuarios.CategoryButtons1Categories12Items3Click(Sender: TObject);
begin
  SetPermissoes(12,3,57);
end;

procedure TUsuarios.CategoryButtons1Categories12Items4Click(Sender: TObject);
begin
  SetPermissoes(12,4,58);
end;

procedure TUsuarios.CategoryButtons1Categories13Items0Click(Sender: TObject);
begin
  SetPermissoes(13,0,59);
end;

procedure TUsuarios.CategoryButtons1Categories13Items1Click(Sender: TObject);
begin
  SetPermissoes(13,1,60);
end;

procedure TUsuarios.CategoryButtons1Categories13Items2Click(Sender: TObject);
begin
  SetPermissoes(13,2,61);
end;

procedure TUsuarios.CategoryButtons1Categories13Items3Click(Sender: TObject);
begin
  SetPermissoes(13,3,62);
end;

procedure TUsuarios.CategoryButtons1Categories13Items4Click(Sender: TObject);
begin
  SetPermissoes(13,4,63);
end;

procedure TUsuarios.CategoryButtons1Categories14Items0Click(Sender: TObject);
begin
  SetPermissoes(14,0,64);
end;

procedure TUsuarios.CategoryButtons1Categories14Items1Click(Sender: TObject);
begin
  SetPermissoes(14,1,65);
end;

procedure TUsuarios.CategoryButtons1Categories14Items2Click(Sender: TObject);
begin
  SetPermissoes(14,2,66);
end;

procedure TUsuarios.CategoryButtons1Categories14Items3Click(Sender: TObject);
begin
  SetPermissoes(14,3,67);
end;

procedure TUsuarios.CategoryButtons1Categories14Items4Click(Sender: TObject);
begin
  SetPermissoes(14,4,68);
end;

procedure TUsuarios.CategoryButtons1Categories15Items0Click(Sender: TObject);
begin
  SetPermissoes(15,0,69);
end;

procedure TUsuarios.CategoryButtons1Categories15Items1Click(Sender: TObject);
begin
  SetPermissoes(15,1,70);
end;

procedure TUsuarios.CategoryButtons1Categories15Items2Click(Sender: TObject);
begin
  SetPermissoes(15,2,71);
end;

procedure TUsuarios.CategoryButtons1Categories15Items3Click(Sender: TObject);
begin
  SetPermissoes(15,3,72);
end;

procedure TUsuarios.CategoryButtons1Categories15Items4Click(Sender: TObject);
begin
  SetPermissoes(15,4,73);
end;

procedure TUsuarios.CategoryButtons1Categories16Items0Click(Sender: TObject);
begin
  SetPermissoes(16,0,74);
end;

procedure TUsuarios.CategoryButtons1Categories16Items1Click(Sender: TObject);
begin
  SetPermissoes(16,1,75);
end;

procedure TUsuarios.CategoryButtons1Categories16Items2Click(Sender: TObject);
begin
  SetPermissoes(16,2,76);
end;

procedure TUsuarios.CategoryButtons1Categories16Items3Click(Sender: TObject);
begin
  SetPermissoes(16,3,77);
end;

procedure TUsuarios.CategoryButtons1Categories16Items4Click(Sender: TObject);
begin
  SetPermissoes(16,4,78);
end;

procedure TUsuarios.CategoryButtons1Categories17Items0Click(Sender: TObject);
begin
  SetPermissoes(17,0,79);
end;

procedure TUsuarios.CategoryButtons1Categories17Items1Click(Sender: TObject);
begin
  SetPermissoes(17,1,80);
end;

procedure TUsuarios.CategoryButtons1Categories17Items2Click(Sender: TObject);
begin
  SetPermissoes(17,2,81);
end;

procedure TUsuarios.CategoryButtons1Categories17Items3Click(Sender: TObject);
begin
  SetPermissoes(17,3,82);
end;

procedure TUsuarios.CategoryButtons1Categories17Items4Click(Sender: TObject);
begin
  SetPermissoes(17,4,83);
end;

procedure TUsuarios.CategoryButtons1Categories18Items0Click(Sender: TObject);
begin
  SetPermissoes(18,0,84);
end;

procedure TUsuarios.CategoryButtons1Categories18Items1Click(Sender: TObject);
begin
  SetPermissoes(18,1,85);
end;

procedure TUsuarios.CategoryButtons1Categories18Items2Click(Sender: TObject);
begin
  SetPermissoes(18,2,86);
end;

procedure TUsuarios.CategoryButtons1Categories18Items3Click(Sender: TObject);
begin
  SetPermissoes(18,3,87);
end;

procedure TUsuarios.CategoryButtons1Categories18Items4Click(Sender: TObject);
begin
  SetPermissoes(18,4,88);
end;

procedure TUsuarios.CategoryButtons1Categories18Items5Click(Sender: TObject);
begin
  SetPermissoes(18,5,89);
end;

procedure TUsuarios.CategoryButtons1Categories19Items0Click(Sender: TObject);
begin
  SetPermissoes(19,0,90);
end;

procedure TUsuarios.CategoryButtons1Categories19Items1Click(Sender: TObject);
begin
  SetPermissoes(19,1,91);
end;

procedure TUsuarios.CategoryButtons1Categories19Items2Click(Sender: TObject);
begin
  SetPermissoes(19,2,92);
end;

procedure TUsuarios.CategoryButtons1Categories19Items3Click(Sender: TObject);
begin
  SetPermissoes(19,3,93);
end;

procedure TUsuarios.CategoryButtons1Categories19Items4Click(Sender: TObject);
begin
  SetPermissoes(19,4,94);
end;

procedure TUsuarios.CategoryButtons1Categories1Items0Click(Sender: TObject);
begin
  SetPermissoes(1,0,5);
end;

procedure TUsuarios.CategoryButtons1Categories1Items1Click(Sender: TObject);
begin
  SetPermissoes(1,1,6);
end;

procedure TUsuarios.CategoryButtons1Categories1Items2Click(Sender: TObject);
begin
  SetPermissoes(1,2,7);
end;

procedure TUsuarios.CategoryButtons1Categories1Items3Click(Sender: TObject);
begin
  SetPermissoes(1,3,8);
end;

procedure TUsuarios.CategoryButtons1Categories1Items4Click(Sender: TObject);
begin
  SetPermissoes(1,4,9);
end;

procedure TUsuarios.CategoryButtons1Categories20Items0Click(Sender: TObject);
begin
  SetPermissoes(20,0,95);
end;

procedure TUsuarios.CategoryButtons1Categories20Items1Click(Sender: TObject);
begin
  SetPermissoes(20,1,96);
end;

procedure TUsuarios.CategoryButtons1Categories20Items2Click(Sender: TObject);
begin
  SetPermissoes(20,2,97);
end;

procedure TUsuarios.CategoryButtons1Categories20Items3Click(Sender: TObject);
begin
  SetPermissoes(20,3,98);
end;

procedure TUsuarios.CategoryButtons1Categories20Items4Click(Sender: TObject);
begin
  SetPermissoes(20,4,99);
end;

procedure TUsuarios.CategoryButtons1Categories21Items0Click(Sender: TObject);
begin
  SetPermissoes(21,0,100);
end;

procedure TUsuarios.CategoryButtons1Categories21Items1Click(Sender: TObject);
begin
  SetPermissoes(21,1,101);
end;

procedure TUsuarios.CategoryButtons1Categories21Items2Click(Sender: TObject);
begin
  SetPermissoes(21,2,102);
end;

procedure TUsuarios.CategoryButtons1Categories21Items3Click(Sender: TObject);
begin
  SetPermissoes(21,3,103);
end;

procedure TUsuarios.CategoryButtons1Categories21Items4Click(Sender: TObject);
begin
  SetPermissoes(21,4,104);
end;

procedure TUsuarios.CategoryButtons1Categories21Items5Click(Sender: TObject);
begin
  SetPermissoes(21,5,105);
end;

procedure TUsuarios.CategoryButtons1Categories22Items0Click(Sender: TObject);
begin
  SetPermissoes(22,0,106);
end;

procedure TUsuarios.CategoryButtons1Categories22Items1Click(Sender: TObject);
begin
  SetPermissoes(22,1,107);
end;

procedure TUsuarios.CategoryButtons1Categories22Items2Click(Sender: TObject);
begin
  SetPermissoes(22,2,108);
end;

procedure TUsuarios.CategoryButtons1Categories22Items3Click(Sender: TObject);
begin
  SetPermissoes(22,3,109);
end;

procedure TUsuarios.CategoryButtons1Categories22Items4Click(Sender: TObject);
begin
  SetPermissoes(22,4,110);
end;

procedure TUsuarios.CategoryButtons1Categories22Items5Click(Sender: TObject);
begin
  SetPermissoes(22,5,111);
end;

procedure TUsuarios.CategoryButtons1Categories23Items0Click(Sender: TObject);
begin
  SetPermissoes(23,0,112);
end;

procedure TUsuarios.CategoryButtons1Categories23Items1Click(Sender: TObject);
begin
  SetPermissoes(23,1,113);
end;

procedure TUsuarios.CategoryButtons1Categories23Items2Click(Sender: TObject);
begin
  SetPermissoes(23,2,114);
end;

procedure TUsuarios.CategoryButtons1Categories24Items0Click(Sender: TObject);
begin
  SetPermissoes(24,0,115);
end;

procedure TUsuarios.CategoryButtons1Categories24Items1Click(Sender: TObject);
begin
  SetPermissoes(24,1,116);
end;

procedure TUsuarios.CategoryButtons1Categories24Items2Click(Sender: TObject);
begin
  SetPermissoes(24,2,117);
end;

procedure TUsuarios.CategoryButtons1Categories24Items3Click(Sender: TObject);
begin
  SetPermissoes(24,3,118);
end;

procedure TUsuarios.CategoryButtons1Categories24Items4Click(Sender: TObject);
begin
  SetPermissoes(24,4,119);
end;

procedure TUsuarios.CategoryButtons1Categories25Items0Click(Sender: TObject);
begin
  SetPermissoes(25,0,120);
end;

procedure TUsuarios.CategoryButtons1Categories25Items1Click(Sender: TObject);
begin
  SetPermissoes(25,1,121);
end;

procedure TUsuarios.CategoryButtons1Categories25Items2Click(Sender: TObject);
begin
  SetPermissoes(25,2,122);
end;

procedure TUsuarios.CategoryButtons1Categories25Items3Click(Sender: TObject);
begin
  SetPermissoes(25,3,123);
end;

procedure TUsuarios.CategoryButtons1Categories25Items4Click(Sender: TObject);
begin
  SetPermissoes(25,4,124);
end;

procedure TUsuarios.CategoryButtons1Categories26Items0Click(Sender: TObject);
begin
  SetPermissoes(26,0,125);
end;

procedure TUsuarios.CategoryButtons1Categories26Items1Click(Sender: TObject);
begin
  SetPermissoes(26,1,126);
end;

procedure TUsuarios.CategoryButtons1Categories26Items2Click(Sender: TObject);
begin
  SetPermissoes(26,2,127);
end;

procedure TUsuarios.CategoryButtons1Categories26Items3Click(Sender: TObject);
begin
  SetPermissoes(26,3,128);
end;

procedure TUsuarios.CategoryButtons1Categories26Items4Click(Sender: TObject);
begin
  SetPermissoes(26,4,129);
end;

procedure TUsuarios.CategoryButtons1Categories27Items0Click(Sender: TObject);
begin
  SetPermissoes(27,0,130);
end;

procedure TUsuarios.CategoryButtons1Categories27Items1Click(Sender: TObject);
begin
  SetPermissoes(27,1,131);
end;

procedure TUsuarios.CategoryButtons1Categories27Items2Click(Sender: TObject);
begin
  SetPermissoes(27,2,132);
end;

procedure TUsuarios.CategoryButtons1Categories27Items3Click(Sender: TObject);
begin
  SetPermissoes(27,3,133);
end;

procedure TUsuarios.CategoryButtons1Categories27Items4Click(Sender: TObject);
begin
  SetPermissoes(27,4,134);
end;

procedure TUsuarios.CategoryButtons1Categories28Items0Click(Sender: TObject);
begin
  SetPermissoes(28,0,135);
end;

procedure TUsuarios.CategoryButtons1Categories28Items1Click(Sender: TObject);
begin
  SetPermissoes(28,1,136);
end;

procedure TUsuarios.CategoryButtons1Categories28Items2Click(Sender: TObject);
begin
  SetPermissoes(28,2,137);
end;

procedure TUsuarios.CategoryButtons1Categories28Items3Click(Sender: TObject);
begin
  SetPermissoes(28,3,138);
end;

procedure TUsuarios.CategoryButtons1Categories28Items4Click(Sender: TObject);
begin
  SetPermissoes(28,4,139);
end;

procedure TUsuarios.CategoryButtons1Categories29Items0Click(Sender: TObject);
begin
  SetPermissoes(29,0,140);
end;

procedure TUsuarios.CategoryButtons1Categories29Items1Click(Sender: TObject);
begin
  SetPermissoes(29,1,141);
end;

procedure TUsuarios.CategoryButtons1Categories29Items2Click(Sender: TObject);
begin
  SetPermissoes(29,2,142);
end;

procedure TUsuarios.CategoryButtons1Categories29Items3Click(Sender: TObject);
begin
  SetPermissoes(29,3,143);
end;

procedure TUsuarios.CategoryButtons1Categories29Items4Click(Sender: TObject);
begin
  SetPermissoes(29,4,144);
end;

procedure TUsuarios.CategoryButtons1Categories2Items0Click(Sender: TObject);
begin
  SetPermissoes(2,0,10);
end;

procedure TUsuarios.CategoryButtons1Categories2Items1Click(Sender: TObject);
begin
  SetPermissoes(2,1,11);
end;

procedure TUsuarios.CategoryButtons1Categories30Items0Click(Sender: TObject);
begin
  SetPermissoes(30,0,145);
end;

procedure TUsuarios.CategoryButtons1Categories30Items1Click(Sender: TObject);
begin
  SetPermissoes(30,1,146);
end;

procedure TUsuarios.CategoryButtons1Categories30Items2Click(Sender: TObject);
begin
  SetPermissoes(30,2,147);
end;

procedure TUsuarios.CategoryButtons1Categories30Items3Click(Sender: TObject);
begin
  SetPermissoes(30,3,148);
end;

procedure TUsuarios.CategoryButtons1Categories30Items4Click(Sender: TObject);
begin
  SetPermissoes(30,4,149);
end;

procedure TUsuarios.CategoryButtons1Categories31Items0Click(Sender: TObject);
begin
  SetPermissoes(31,0,150);
end;

procedure TUsuarios.CategoryButtons1Categories32Items0Click(Sender: TObject);
begin
  SetPermissoes(32,0,151);
end;

procedure TUsuarios.CategoryButtons1Categories32Items1Click(Sender: TObject);
begin
  SetPermissoes(32,1,152);
end;

procedure TUsuarios.CategoryButtons1Categories32Items2Click(Sender: TObject);
begin
  SetPermissoes(32,2,153);
end;

procedure TUsuarios.CategoryButtons1Categories32Items3Click(Sender: TObject);
begin
  SetPermissoes(32,3,154);
end;

procedure TUsuarios.CategoryButtons1Categories32Items4Click(Sender: TObject);
begin
  SetPermissoes(32,4,155);
end;

procedure TUsuarios.CategoryButtons1Categories33Items0Click(Sender: TObject);
begin
  SetPermissoes(33,0,156);
end;

procedure TUsuarios.CategoryButtons1Categories33Items1Click(Sender: TObject);
begin
  SetPermissoes(33,1,157);
end;

procedure TUsuarios.CategoryButtons1Categories33Items2Click(Sender: TObject);
begin
  SetPermissoes(33,2,158);
end;

procedure TUsuarios.CategoryButtons1Categories33Items3Click(Sender: TObject);
begin
  SetPermissoes(33,3,159);
end;

procedure TUsuarios.CategoryButtons1Categories33Items4Click(Sender: TObject);
begin
  SetPermissoes(33,4,160);
end;

procedure TUsuarios.CategoryButtons1Categories34Items0Click(Sender: TObject);
begin
  SetPermissoes(34,0,161);
end;

procedure TUsuarios.CategoryButtons1Categories34Items1Click(Sender: TObject);
begin
  SetPermissoes(34,1,162);
end;

procedure TUsuarios.CategoryButtons1Categories34Items2Click(Sender: TObject);
begin
  SetPermissoes(34,2,163);
end;

procedure TUsuarios.CategoryButtons1Categories34Items3Click(Sender: TObject);
begin
  SetPermissoes(34,3,164);
end;

procedure TUsuarios.CategoryButtons1Categories34Items4Click(Sender: TObject);
begin
  SetPermissoes(34,4,165);
end;

procedure TUsuarios.CategoryButtons1Categories35Items0Click(Sender: TObject);
begin
  SetPermissoes(35,0,166);
end;

procedure TUsuarios.CategoryButtons1Categories35Items1Click(Sender: TObject);
begin
  SetPermissoes(35,1,167);
end;

procedure TUsuarios.CategoryButtons1Categories35Items2Click(Sender: TObject);
begin
  SetPermissoes(35,2,168);
end;

procedure TUsuarios.CategoryButtons1Categories35Items3Click(Sender: TObject);
begin
  SetPermissoes(35,3,169);
end;

procedure TUsuarios.CategoryButtons1Categories35Items4Click(Sender: TObject);
begin
  SetPermissoes(35,4,170);
end;

procedure TUsuarios.CategoryButtons1Categories36Items0Click(Sender: TObject);
begin
  SetPermissoes(36,0,171);
end;

procedure TUsuarios.CategoryButtons1Categories36Items1Click(Sender: TObject);
begin
  SetPermissoes(36,1,172);
end;

procedure TUsuarios.CategoryButtons1Categories36Items2Click(Sender: TObject);
begin
  SetPermissoes(36,2,173);
end;

procedure TUsuarios.CategoryButtons1Categories36Items3Click(Sender: TObject);
begin
  SetPermissoes(36,3,174);
end;

procedure TUsuarios.CategoryButtons1Categories36Items4Click(Sender: TObject);
begin
  SetPermissoes(36,4,175);
end;

procedure TUsuarios.CategoryButtons1Categories37Items0Click(Sender: TObject);
begin
  SetPermissoes(37,0,176);
end;

procedure TUsuarios.CategoryButtons1Categories37Items1Click(Sender: TObject);
begin
  SetPermissoes(37,1,177);
end;

procedure TUsuarios.CategoryButtons1Categories37Items2Click(Sender: TObject);
begin
  SetPermissoes(37,2,178);
end;

procedure TUsuarios.CategoryButtons1Categories37Items3Click(Sender: TObject);
begin
  SetPermissoes(37,3,179);
end;

procedure TUsuarios.CategoryButtons1Categories37Items4Click(Sender: TObject);
begin
  SetPermissoes(37,4,180);
end;

procedure TUsuarios.CategoryButtons1Categories38Items0Click(Sender: TObject);
begin
  SetPermissoes(38,0,181);
end;

procedure TUsuarios.CategoryButtons1Categories38Items1Click(Sender: TObject);
begin
  SetPermissoes(38,1,182);
end;

procedure TUsuarios.CategoryButtons1Categories38Items2Click(Sender: TObject);
begin
  SetPermissoes(38,2,183);
end;

procedure TUsuarios.CategoryButtons1Categories38Items3Click(Sender: TObject);
begin
  SetPermissoes(38,3,184);
end;

procedure TUsuarios.CategoryButtons1Categories38Items4Click(Sender: TObject);
begin
  SetPermissoes(38,4,185);
end;

procedure TUsuarios.CategoryButtons1Categories39Items0Click(Sender: TObject);
begin
  SetPermissoes(39,0,186);
end;

procedure TUsuarios.CategoryButtons1Categories39Items1Click(Sender: TObject);
begin
  SetPermissoes(39,1,187);
end;

procedure TUsuarios.CategoryButtons1Categories39Items2Click(Sender: TObject);
begin
  SetPermissoes(39,2,188);
end;

procedure TUsuarios.CategoryButtons1Categories39Items3Click(Sender: TObject);
begin
  SetPermissoes(39,3,189);
end;

procedure TUsuarios.CategoryButtons1Categories3Items0Click(Sender: TObject);
begin
  SetPermissoes(3,0,12);
end;

procedure TUsuarios.CategoryButtons1Categories3Items1Click(Sender: TObject);
begin
  SetPermissoes(3,1,13);
end;

procedure TUsuarios.CategoryButtons1Categories3Items2Click(Sender: TObject);
begin
  SetPermissoes(3,2,14);
end;

procedure TUsuarios.CategoryButtons1Categories3Items3Click(Sender: TObject);
begin
  SetPermissoes(3,3,15);
end;

procedure TUsuarios.CategoryButtons1Categories3Items4Click(Sender: TObject);
begin
  SetPermissoes(3,4,16);
end;

procedure TUsuarios.CategoryButtons1Categories40Items0Click(Sender: TObject);
begin
  SetPermissoes(40,0,190);
end;

procedure TUsuarios.CategoryButtons1Categories40Items1Click(Sender: TObject);
begin
  SetPermissoes(40,1,191);
end;

procedure TUsuarios.CategoryButtons1Categories40Items2Click(Sender: TObject);
begin
  SetPermissoes(40,2,192);
end;

procedure TUsuarios.CategoryButtons1Categories40Items3Click(Sender: TObject);
begin
  SetPermissoes(40,3,193);
end;

procedure TUsuarios.CategoryButtons1Categories41Items0Click(Sender: TObject);
begin
  SetPermissoes(41,0,195);
end;

procedure TUsuarios.CategoryButtons1Categories41Items1Click(Sender: TObject);
begin
  SetPermissoes(41,1,196);
end;

procedure TUsuarios.CategoryButtons1Categories41Items2Click(Sender: TObject);
begin
  SetPermissoes(41,2,197);
end;

procedure TUsuarios.CategoryButtons1Categories41Items3Click(Sender: TObject);
begin
  SetPermissoes(41,3,198);
end;

procedure TUsuarios.CategoryButtons1Categories41Items4Click(Sender: TObject);
begin
  SetPermissoes(41,4,199);
end;

procedure TUsuarios.CategoryButtons1Categories42Items0Click(Sender: TObject);
begin
  SetPermissoes(42,0,200);
end;

procedure TUsuarios.CategoryButtons1Categories42Items1Click(Sender: TObject);
begin
  SetPermissoes(42,1,201);
end;

procedure TUsuarios.CategoryButtons1Categories42Items2Click(Sender: TObject);
begin
  SetPermissoes(42,2,202);
end;

procedure TUsuarios.CategoryButtons1Categories43Items0Click(Sender: TObject);
begin
  SetPermissoes(43,0,203);
end;

procedure TUsuarios.CategoryButtons1Categories43Items1Click(Sender: TObject);
begin
  SetPermissoes(43,1,204);
end;

procedure TUsuarios.CategoryButtons1Categories43Items2Click(Sender: TObject);
begin
  SetPermissoes(43,2,205);
end;

procedure TUsuarios.CategoryButtons1Categories43Items3Click(Sender: TObject);
begin
  SetPermissoes(43,3,206);
end;

procedure TUsuarios.CategoryButtons1Categories43Items4Click(Sender: TObject);
begin
  SetPermissoes(43,4,207);
end;

procedure TUsuarios.CategoryButtons1Categories4Items0Click(Sender: TObject);
begin
  SetPermissoes(4,0,17);
end;

procedure TUsuarios.CategoryButtons1Categories4Items1Click(Sender: TObject);
begin
  SetPermissoes(4,1,18);
end;

procedure TUsuarios.CategoryButtons1Categories5Items0Click(Sender: TObject);
begin
  SetPermissoes(5,0,19);
end;

procedure TUsuarios.CategoryButtons1Categories5Items1Click(Sender: TObject);
begin
  SetPermissoes(5,1,20);
end;

procedure TUsuarios.CategoryButtons1Categories5Items2Click(Sender: TObject);
begin
  SetPermissoes(5,2,21);
end;

procedure TUsuarios.CategoryButtons1Categories5Items3Click(Sender: TObject);
begin
  SetPermissoes(5,3,22);
end;

procedure TUsuarios.CategoryButtons1Categories5Items4Click(Sender: TObject);
begin
  SetPermissoes(5,4,23);
end;

procedure TUsuarios.CategoryButtons1Categories6Items0Click(Sender: TObject);
begin
  SetPermissoes(6,0,24);
end;

procedure TUsuarios.CategoryButtons1Categories6Items1Click(Sender: TObject);
begin
  SetPermissoes(6,1,25);
end;

procedure TUsuarios.CategoryButtons1Categories6Items2Click(Sender: TObject);
begin
  SetPermissoes(6,2,26);
end;

procedure TUsuarios.CategoryButtons1Categories6Items3Click(Sender: TObject);
begin
  SetPermissoes(6,3,27);
end;

procedure TUsuarios.CategoryButtons1Categories6Items4Click(Sender: TObject);
begin
  SetPermissoes(6,4,28);
end;

procedure TUsuarios.CategoryButtons1Categories7Items0Click(Sender: TObject);
begin
  SetPermissoes(7,0,29);
end;

procedure TUsuarios.CategoryButtons1Categories7Items1Click(Sender: TObject);
begin
  SetPermissoes(7,1,30);
end;

procedure TUsuarios.CategoryButtons1Categories7Items2Click(Sender: TObject);
begin
  SetPermissoes(7,2,31);
end;

procedure TUsuarios.CategoryButtons1Categories7Items3Click(Sender: TObject);
begin
  SetPermissoes(7,3,32);
end;

procedure TUsuarios.CategoryButtons1Categories7Items4Click(Sender: TObject);
begin
  SetPermissoes(7,4,33);
end;

procedure TUsuarios.CategoryButtons1Categories8Items0Click(Sender: TObject);
begin
  SetPermissoes(8,0,34);
end;

procedure TUsuarios.CategoryButtons1Categories8Items1Click(Sender: TObject);
begin
  SetPermissoes(8,1,35);
end;

procedure TUsuarios.CategoryButtons1Categories8Items2Click(Sender: TObject);
begin
  SetPermissoes(8,2,36);
end;

procedure TUsuarios.CategoryButtons1Categories8Items3Click(Sender: TObject);
begin
  SetPermissoes(8,3,37);
end;

procedure TUsuarios.CategoryButtons1Categories8Items4Click(Sender: TObject);
begin
  SetPermissoes(8,4,38);
end;

procedure TUsuarios.CategoryButtons1Categories9Items0Click(Sender: TObject);
begin
  SetPermissoes(9,0,39);
end;

procedure TUsuarios.CategoryButtons1Categories9Items1Click(Sender: TObject);
begin
  SetPermissoes(9,1,40);
end;

procedure TUsuarios.CategoryButtons1Categories9Items2Click(Sender: TObject);
begin
  SetPermissoes(9,2,41);
end;

procedure TUsuarios.CategoryButtons1Categories9Items3Click(Sender: TObject);
begin
  SetPermissoes(9,3,42);
end;

procedure TUsuarios.CategoryButtons1Categories9Items4Click(Sender: TObject);
begin
  SetPermissoes(9,4,43);
end;

procedure TUsuarios.cdsUsuariosAfterScroll(DataSet: TDataSet);
begin
  RecebeAcesso;
  MarcarPermissoes;
  cdsClone.CloneCursor(cdsUsuarios,True,False);
end;

procedure TUsuarios.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsUsuarios.Edit;
end;

procedure TUsuarios.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsUsuarios.Cancel;
end;

procedure TUsuarios.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsUsuarios.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsUsuarios.Delete;
          cdsUsuarios.ApplyUpdates(0);
        end;
    end;
end;

procedure TUsuarios.BitBtnGravarClick(Sender: TObject);
var VarAcessoZero : String;
begin
  try
    Browse;
    if cdsUsuarios.State = dsInsert then
      begin
        cdsUsuariosCDUSUARIO.AsInteger := Gerar_id('GEN_USUARIOS_ID');
        cdsUsuariosACESSO.AsString := CompletaComZeros(VarAcessoZero,999);
      end;

    {$REGION 'Alteração de Senha'}
    if cdsUsuariosSENHA.AsString <> cdsClone.FieldByName('SENHA').AsString then
      cdsUsuariosSENHA.AsString := Criptografa(DBEdit3.Text,136);
    {$ENDREGION}

    DevolveAcesso;

    if Trim(cdsUsuariosACESSO.AsString) <> VarControleAcesso then
      begin
        cdsUsuariosACESSO.AsString := VarControleAcesso;
      end;

    cdsUsuarios.Post;
    cdsUsuarios.ApplyUpdates(0);
    cdsUsuarios.Refresh;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TUsuarios.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsUsuarios.Insert;
  FillChar(VarAcessosUsuario,SizeOf(VarAcessosUsuario),0);
  DBEdit2.SetFocus;
end;

procedure TUsuarios.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TUsuarios.FormActivate(Sender: TObject);
begin
  cdsUsuarios.Open;

  {$REGION 'Permissoes'}
  if VarMeusAcessos[85] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[86] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[87] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[88] <> '001' then
    BitBtnRelatorios.Enabled := False;

  if VarMeusAcessos[89] <> '001' then
    CategoryButtons1.Visible := False;
  {$ENDREGION}

  Browse;
end;

procedure TUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
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
