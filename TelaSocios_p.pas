unit TelaSocios_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, ExtCtrls, JvExControls, JvXPCore,
  JvXPButtons, DBCtrls, db, FMTBcd, Provider, DBClient, SqlExpr;

type
  TTelaSocios = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TJvXPButton;
    BitBtnRelatorios: TJvXPButton;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    PanelCampos: TPanel;
    DBGrid1: TDBGrid;
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
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Label26: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    qIBGE2: TSQLQuery;
    cdsIBGE2: TClientDataSet;
    cdsIBGE2CDIBGE: TFMTBCDField;
    cdsIBGE2NOMEIBGE: TStringField;
    cdsIBGE2ESTADOIBGE: TStringField;
    cdsIBGE2COD_PAIS: TStringField;
    cdsIBGE2PAIS: TStringField;
    dspIBGE2: TDataSetProvider;
    dsIBGE2: TDataSource;
    procedure DBComboBox1Exit(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaSocios: TTelaSocios;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaSocios.Browse;
begin
  //if (VarMeusAcessos[35] = '001') then
    BitBtnIncluir.Enabled := True;

  //if VarMeusAcessos[36] = '001' then
    BitBtnExcluir.Enabled := True;

  //if VarMeusAcessos[37] = '001' then
    BitBtnAlterar.Enabled := True;

  //if VarMeusAcessos[38] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaSocios.Insert;
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

procedure TTelaSocios.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMPrincipal.cdsSocios.Edit;
end;

procedure TTelaSocios.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMPrincipal.cdsSocios.Cancel;
end;

procedure TTelaSocios.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMPrincipal.cdsSocios.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMPrincipal.cdsSocios.Delete;
          DMPrincipal.cdsSocios.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaSocios.BitbtnGeralClick(Sender: TObject);
begin
  DMPrincipal.cdsSocios.Filtered := False;
  DMPrincipal.cdsSocios.Refresh;
end;

procedure TTelaSocios.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMPrincipal.cdsSocios.State = dsInsert then
      begin
        DMPrincipal.cdsSociosCDEMPRESA_SOCIO.AsInteger := Gerar_id('GEN_EMPRESA_SOCIOS_ID');
        DMPrincipal.cdsSociosCDEMPRESA.AsInteger       := DMPrincipal.cdsEmpresaCDEMPRESA.AsInteger;
        DMPrincipal.cdsSociosCADASTRADO_POR.AsString   := VarNomeUsuario;
        DMPrincipal.cdsSociosCADASTRADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if DMPrincipal.cdsSocios.State = dsEdit then
        begin
          DMPrincipal.cdsSociosALTERADO_POR.AsString   := VarNomeUsuario;
          DMPrincipal.cdsSociosALTERADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;

    DMPrincipal.cdsSocios.Post;
    DMPrincipal.cdsSocios.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaSocios.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsIBGE2.Close;
  DMPrincipal.cdsSocios.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaSocios.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMPrincipal.cdsSocios.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMPrincipal.cdsSocios.Filter := 'CDEMPRESA_SOCIO  = '''+MaskeditPesquisa.Text+''' ';
        1 : DMPrincipal.cdsSocios.Filter := 'UPPER(NOME) LIKE    UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : DMPrincipal.cdsSocios.Filter := 'CPF   = '''+MaskeditPesquisa.Text+''' ';
        3 : DMPrincipal.cdsSocios.Filter := 'RG   = '''+MaskeditPesquisa.Text+''' ';
      end;
      DMPrincipal.cdsSocios.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaSocios.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaSocios.DBComboBox1Exit(Sender: TObject);
begin
  if DMPrincipal.cdsSociosUF.AsString <> '' then
    begin
      qIBGE2.Active := False;
      qIBGE2.SQL.Clear;
      qIBGE2.SQL.Add('select * from cidadeibge ');
      qIBGE2.SQL.Add('Where ESTADOIBGE = ''' + DBComboBox1.Text + ''' ');
      cdsIBGE2.Close;
      cdsIBGE2.Open;
    end;
end;

procedure TTelaSocios.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  DMPrincipal.cdsSociosCIDADE.AsString    := ConvertePalavras(cdsIBGE2.FieldByName('NOMEIBGE').AsString);
  DMPrincipal.cdsSociosCOD_IBGE.AsInteger := cdsIBGE2.FieldByName('CDIBGE').AsInteger;
end;

procedure TTelaSocios.FormActivate(Sender: TObject);
begin
  Browse;
end;

end.
