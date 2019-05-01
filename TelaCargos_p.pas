unit TelaCargos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls, Grids, DBGrids,
  JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls, JvExButtons,
  JvBitBtn, Buttons, Menus;

type
  TTelaCargos = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qCargo: TSQLQuery;
    dspCargo: TDataSetProvider;
    cdsCargo: TClientDataSet;
    cdsCargoCDCARGO: TIntegerField;
    cdsCargoDESCRICAO: TStringField;
    dsCargo: TDataSource;
    cdsCargoCADASTRADO_POR: TStringField;
    cdsCargoCADASTRADO_EM: TSQLTimeStampField;
    cdsCargoALTERADO_POR: TStringField;
    cdsCargoALTERADO_EM: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    ListagemdeCargoseFunes1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure ListagemdeCargoseFunes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaCargos: TTelaCargos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, ListagemCargoseFuncoes_p;

{$R *.dfm}

procedure TTelaCargos.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCargo.Edit;
end;

procedure TTelaCargos.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCargo.Cancel;
end;

procedure TTelaCargos.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsCargo.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCargo.Delete;
          cdsCargo.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCargos.BitBtnGeralClick(Sender: TObject);
begin
  cdsCargo.Filtered := False;
  cdsCargo.Refresh;
end;

procedure TTelaCargos.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsCargo.State = dsInsert then
      begin
        cdsCargoCDCARGO.AsInteger        := Gerar_id('GEN_CARGOS_ID');
        cdsCargoCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if cdsCargo.State = dsEdit then
        begin
          cdsCargoALTERADO_POR.AsString  := VarNomeUsuario;
          cdsCargoALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;
    cdsCargo.Post;
    cdsCargo.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaCargos.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCargo.Insert;
  cdsCargoCADASTRADO_POR.AsString := VarNomeUsuario;
  DBEdit2.SetFocus;
end;

procedure TTelaCargos.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsCargo.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCargo.Filter := 'CDCARGO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsCargo.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsCargo.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaCargos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCargos.Browse;
begin
  if (VarMeusAcessos[70] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[71] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[72] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[73] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
//  BitBtnRelatorios.Enabled := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaCargos.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaCargos.ListagemdeCargoseFunes1Click(Sender: TObject);
begin
  ListagemCargoseFuncoes := TListagemCargoseFuncoes.Create(Application);
  ListagemCargoseFuncoes.MontaRelatorio;
  FreeAndNil(ListagemCargoseFuncoes);
end;

procedure TTelaCargos.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[70] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[71] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[72] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[73] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsCargo.Open;
end;

procedure TTelaCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
