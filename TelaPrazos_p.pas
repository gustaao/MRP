unit TelaPrazos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls,
  JvExButtons, JvBitBtn, Buttons, Grids, DBGrids, FMTBcd, DB, Provider,
  DBClient, SqlExpr, DBCtrls, Menus, JvNavigationPane;

type
  TTelaPrazos = class(TForm)
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
    PanelCampos: TPanel;
    DBGrid1: TDBGrid;
    qCN: TSQLQuery;
    cdsCN: TClientDataSet;
    dspCN: TDataSetProvider;
    dsCN: TDataSource;
    qCNCDCALENDARIO_NEGOCIOS: TIntegerField;
    qCNDESCRICAO: TStringField;
    qCNPRAZO: TIntegerField;
    qCNOBS: TBlobField;
    qCNPRAZO_AVISO: TIntegerField;
    qCNCDPRODUTO: TIntegerField;
    qCNPRODUTO: TStringField;
    qCNCDINTERNO: TStringField;
    cdsCNCDCALENDARIO_NEGOCIOS: TIntegerField;
    cdsCNDESCRICAO: TStringField;
    cdsCNPRAZO: TIntegerField;
    cdsCNOBS: TBlobField;
    cdsCNPRAZO_AVISO: TIntegerField;
    cdsCNCDPRODUTO: TIntegerField;
    cdsCNPRODUTO: TStringField;
    cdsCNCDINTERNO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qCNCADASTRADO_POR: TStringField;
    qCNCADASTRADO_EM: TSQLTimeStampField;
    qCNALTERADO_POR: TStringField;
    qCNALTERADO_EM: TSQLTimeStampField;
    cdsCNCADASTRADO_POR: TStringField;
    cdsCNCADASTRADO_EM: TSQLTimeStampField;
    cdsCNALTERADO_POR: TStringField;
    cdsCNALTERADO_EM: TSQLTimeStampField;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    ListagemdePrazoseGarantias1: TMenuItem;
    JvNavPanelHeader2: TJvNavPanelHeader;
    qPesquisa: TSQLQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure dspCNGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListagemdePrazoseGarantias1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaPrazos: TTelaPrazos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, ConsultaProdutos_p,
  ListagemPrazosGarantias_p;

{$R *.dfm}

procedure TTelaPrazos.Browse;
begin
  if (VarMeusAcessos[152] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[153] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[154] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[155] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled    := True;
//  BitBtnAlterar.Enabled    := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled    := True;
//  BitBtnRelatorios.Enabled := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaPrazos.DBEdit5Exit(Sender: TObject);
begin
  if (not BitBtnCancelar.Focused) then
    begin
      qPesquisa.Active := False;
      qPesquisa.SQL.Clear;
      qPesquisa.SQL.Add('select produtos.cdproduto, ');
      qPesquisa.SQL.Add('       produtos.cdbarras,  ');
      qPesquisa.SQL.Add('       produtos.descricao  ');
      qPesquisa.SQL.Add('from produtos  ');
      qPesquisa.SQL.Add('where produtos.cdinterno = '''+cdsCNCDINTERNO.AsString+''' ');
      qPesquisa.Active := True;

      if (qPesquisa.IsEmpty) then
        begin
          Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );
          DBEdit5.SetFocus;
        end
      else
       begin
         cdsCNPRODUTO.AsString := qPesquisa.FieldByName('DESCRICAO').AsString;
       end;

    end;
end;

procedure TTelaPrazos.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaPrazos.ListagemdePrazoseGarantias1Click(Sender: TObject);
begin
  ListagemPrazosGarantias := TListagemPrazosGarantias.Create(Application);
  ListagemPrazosGarantias.MontaRelatorio;
  FreeAndNil(ListagemPrazosGarantias);
end;

procedure TTelaPrazos.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCN.Edit;
end;

procedure TTelaPrazos.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCN.Cancel;
end;

procedure TTelaPrazos.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsCN.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCN.Delete;
          cdsCN.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaPrazos.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsCN.State = dsInsert then
      begin
        cdsCNCDCALENDARIO_NEGOCIOS.AsInteger := Gerar_id('GEN_FORNECEDORES_ID');
        cdsCNCADASTRADO_EM.AsDateTime        := Date;
      end;
    cdsCN.Post;
    cdsCN.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaPrazos.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCN.Insert;
  DBEdit5.SetFocus;
end;

procedure TTelaPrazos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaPrazos.dspCNGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := 'CALENDARIO_NEGOCIOS';
end;

procedure TTelaPrazos.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[152] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[153] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[154] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[155] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsCN.Open;
  if cdsCN.State = dsBrowse then
    Browse;
end;

procedure TTelaPrazos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaPrazos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit5' then
        begin
          ConsultaProdutos := TConsultaProdutos.Create(Application);
          ConsultaProdutos.Visible := False;
          ConsultaProdutos.ShowModal;
          cdsCNCDINTERNO.AsString  := Trim(ConsultaProdutos.cdsProdutosCDINTERNO.AsString);
          cdsCNCDPRODUTO.AsInteger := ConsultaProdutos.cdsProdutosCDPRODUTO.AsInteger;
          cdsCNPRODUTO.AsString    := ConsultaProdutos.cdsProdutosDESCRICAO.AsString;
          FreeAndNil(ConsultaProdutos);
          DBEdit5.SetFocus;
        end;

    end;
end;

end.
