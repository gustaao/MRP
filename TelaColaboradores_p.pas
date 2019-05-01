unit TelaColaboradores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvNavigationPane, StdCtrls, DBCtrls, JvExControls, JvXPCore,
  JvXPButtons, Mask, ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd, DB,
  DBClient, Provider, SqlExpr, JvDBLookup, Grids, DBGrids;

type
  TTelaColaboradores = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    ComboBoxTipoPessoa: TComboBox;
    DBEdit14: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    JvNavPanelHeader2: TJvNavPanelHeader;
    Label3: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    qColaborador: TSQLQuery;
    dspColaborador: TDataSetProvider;
    cdsColaborador: TClientDataSet;
    cdsColaboradorCDCOLABORADOR: TIntegerField;
    cdsColaboradorNOME: TStringField;
    cdsColaboradorRG_IE: TStringField;
    cdsColaboradorCPF_CNPJ: TStringField;
    cdsColaboradorENDERECO: TStringField;
    cdsColaboradorNUMERO: TStringField;
    cdsColaboradorBAIRRO: TStringField;
    cdsColaboradorCIDADE: TStringField;
    cdsColaboradorCEP: TStringField;
    cdsColaboradorUF: TStringField;
    cdsColaboradorCOD_IBGE: TStringField;
    cdsColaboradorTIPO_PESSOA: TIntegerField;
    cdsColaboradorNASC_FUNDACAO: TDateField;
    cdsColaboradorTELEFONE: TStringField;
    cdsColaboradorCELULAR: TStringField;
    cdsColaboradorEMAIL: TStringField;
    cdsColaboradorCADASTRADO_POR: TStringField;
    cdsColaboradorCADASTRADO_EM: TSQLTimeStampField;
    cdsColaboradorALTERADO_POR: TStringField;
    cdsColaboradorALTERADO_EM: TSQLTimeStampField;
    cdsColaboradorCDCARGO: TIntegerField;
    dsColaborador: TDataSource;
    DBGrid1: TDBGrid;
    qCargo: TSQLQuery;
    dspCargo: TDataSetProvider;
    cdsCargo: TClientDataSet;
    dsCargo: TDataSource;
    cdsCargoCDCARGO: TIntegerField;
    cdsCargoDESCRICAO: TStringField;
    DBComboBox1: TDBComboBox;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit12Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaColaboradores: TTelaColaboradores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;


{$R *.dfm}
procedure TTelaColaboradores.Browse;
begin
  if (VarMeusAcessos[75] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[76] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[77] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[78] = '001' then
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

procedure TTelaColaboradores.DBEdit12Enter(Sender: TObject);
begin
  case ComboBoxTipoPessoa.ItemIndex of
    0 : cdsColaboradorCPF_CNPJ.EditMask := '999.999.999-99;0;_';
    1 : cdsColaboradorCPF_CNPJ.EditMask := '99.999999/9999-99;0;_';
  end;
end;

procedure TTelaColaboradores.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaColaboradores.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[75] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[76] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[77] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[78] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsColaborador.Open;
  cdsCargo.Open;
  Browse;
end;

procedure TTelaColaboradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaColaboradores.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsColaborador.Edit;
end;

procedure TTelaColaboradores.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsColaborador.Cancel;
end;

procedure TTelaColaboradores.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsColaborador.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsColaborador.Delete;
          cdsColaborador.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaColaboradores.BitBtnGeralClick(Sender: TObject);
begin
  cdsColaborador.Filtered := False;
end;

procedure TTelaColaboradores.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsColaborador.State = dsInsert then
      begin
        cdsColaboradorCDCOLABORADOR.AsInteger  := Gerar_id('GEN_COLABORADORES_ID');
        cdsColaboradorCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end;
    cdsColaboradorTIPO_PESSOA.AsInteger := ComboBoxTipoPessoa.ItemIndex;
    cdsColaborador.Post;
    cdsColaborador.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaColaboradores.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsColaborador.Insert;
  DBEdit2.SetFocus;
end;




procedure TTelaColaboradores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsColaborador.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsColaborador.Filter := 'CDCOLABORADOR  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsColaborador.Filter := 'NOME LIKE    ''%'+MaskeditPesquisa.Text+'%'' ';
        2 : cdsColaborador.Filter := 'CPF_CNPJ   = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsColaborador.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaColaboradores.BitBtnSairClick(Sender: TObject);
begin
  close;
end;

end.
