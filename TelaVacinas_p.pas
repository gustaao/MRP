unit TelaVacinas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExButtons, JvBitBtn, StdCtrls, Buttons,
  JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, DB, IBCustomDataSet,
  IBQuery, Provider, DBClient, FMTBcd, SqlExpr, DBCtrls;

type
  TTelaVacinas = class(TForm)
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
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    cdsVacina: TClientDataSet;
    dsVacina: TDataSource;
    dspVacina: TDataSetProvider;
    dspTipos: TDataSetProvider;
    cdsTipos: TClientDataSet;
    dsTipos: TDataSource;
    qVacina: TSQLQuery;
    qTipo: TSQLQuery;
    qVacinaCDVACINA: TIntegerField;
    qVacinaCDTIPO: TIntegerField;
    qVacinaDESCRICAO: TStringField;
    qVacinaDIAS: TIntegerField;
    qVacinaAVISO_DIAS: TIntegerField;
    qVacinaCADASTRADO_POR: TStringField;
    qVacinaCADASTRADO_EM: TSQLTimeStampField;
    qVacinaALTERADO_POR: TStringField;
    qVacinaALTERADO_EM: TSQLTimeStampField;
    qVacinaTIPO: TStringField;
    cdsVacinaCDVACINA: TIntegerField;
    cdsVacinaCDTIPO: TIntegerField;
    cdsVacinaDESCRICAO: TStringField;
    cdsVacinaDIAS: TIntegerField;
    cdsVacinaAVISO_DIAS: TIntegerField;
    cdsVacinaCADASTRADO_POR: TStringField;
    cdsVacinaCADASTRADO_EM: TSQLTimeStampField;
    cdsVacinaALTERADO_POR: TStringField;
    cdsVacinaALTERADO_EM: TSQLTimeStampField;
    cdsVacinaTIPO: TStringField;
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
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    cdsTiposCDTIPO: TIntegerField;
    cdsTiposDESCRICAO: TStringField;
    cdsTiposCADASTRADO_POR: TStringField;
    cdsTiposCADASTRADO_EM: TSQLTimeStampField;
    cdsTiposALTERADO_POR: TStringField;
    cdsTiposALTERADO_EM: TSQLTimeStampField;
    procedure dspVacinaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaVacinas: TTelaVacinas;

implementation

uses Principal_P, DMprincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaVacinas.Browse;
begin
  if (VarMeusAcessos[204] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[205] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[206] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[207] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaVacinas.Insert;
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


procedure TTelaVacinas.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsVacina.Edit;
end;

procedure TTelaVacinas.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsVacina.Cancel;
end;

procedure TTelaVacinas.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsVacina.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsVacina.Delete;
          cdsVacina.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaVacinas.BitBtnGeralClick(Sender: TObject);
begin
  cdsVacina.Filtered := False;
  cdsVacina.Refresh;
end;

procedure TTelaVacinas.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsVacina.State = dsInsert then
      begin
        cdsVacinaCDVACINA.AsInteger       := Gerar_id('GEN_VACINAS_ID');
        cdsVacinaCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsVacinaCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if cdsVacina.State = dsEdit then
        begin
          cdsVacinaALTERADO_POR.AsString  := VarNomeUsuario;
          cdsVacinaALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;
    cdsVacina.Post;
    cdsVacina.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaVacinas.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsVacina.Insert;
  cdsVacinaCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  DBLookupComboBox2.SetFocus;
end;

procedure TTelaVacinas.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsVacina.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsVacina.Filter := 'CODIGO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsVacina.Filter   := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsVacina.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaVacinas.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaVacinas.dspVacinaGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('VACINAS');
end;

procedure TTelaVacinas.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[204] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[205] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[206] <> '001' then
    BitBtnAlterar.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsVacina.Open;
  cdsTipos.Open;
end;

procedure TTelaVacinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
