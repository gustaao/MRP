unit TelaSegmentoTrabalho_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, JvExButtons, JvBitBtn, StdCtrls, Buttons, Mask, DBCtrls,
  ExtCtrls, Grids, DBGrids, DB, DBClient, Provider, SqlExpr, JvExControls,
  JvXPCore, JvXPButtons;

type
  TTelaSegmentoTrabalho = class(TForm)
    qSegTrb: TSQLQuery;
    dspSegTrb: TDataSetProvider;
    cdsSegTrb: TClientDataSet;
    dsSegTrb: TDataSource;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    cdsSegTrbCONTROLE: TIntegerField;
    cdsSegTrbDESCRICAO: TStringField;
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
    procedure FormActivate(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaSegmentoTrabalho: TTelaSegmentoTrabalho;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaSegmentoTrabalho.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsSegTrb.Edit;
end;

procedure TTelaSegmentoTrabalho.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsSegTrb.Cancel;
end;

procedure TTelaSegmentoTrabalho.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsSegTrb.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsSegTrb.Delete;
          cdsSegTrb.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaSegmentoTrabalho.BitBtnGeralClick(Sender: TObject);
begin
  cdsSegTrb.Filtered := False;
  cdsSegTrb.Refresh;
end;

procedure TTelaSegmentoTrabalho.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsSegTrb.State = dsInsert then
      begin
        cdsSegTrbCONTROLE.AsInteger  := Gerar_id('GEN_SEGMENTO_TRABALHO_ID');
      end;
    cdsSegTrb.Post;
    cdsSegTrb.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaSegmentoTrabalho.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsSegTrb.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaSegmentoTrabalho.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsSegTrb.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsSegTrb.Filter := 'CONTROLE  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsSegTrb.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsSegTrb.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaSegmentoTrabalho.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaSegmentoTrabalho.Browse;
begin
  if (VarMeusAcessos[157] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[158] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[159] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[160] = '001' then
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

procedure TTelaSegmentoTrabalho.Insert;
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

procedure TTelaSegmentoTrabalho.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[157] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[158] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[159] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[160] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsSegTrb.Open;
end;

procedure TTelaSegmentoTrabalho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
