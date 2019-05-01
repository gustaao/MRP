unit TelaClassificacaoFiscal_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, DBClient, Provider, SqlExpr, Grids,
  DBGrids, JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, DBCtrls,
  JvExButtons, JvBitBtn;

type
  TTelaClassificacaoFiscal = class(TForm)
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
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    qCF: TSQLQuery;
    dspCF: TDataSetProvider;
    cdsCF: TClientDataSet;
    dsCF: TDataSource;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    cdsCFCDCLASSIFICACAO_FISCAL: TIntegerField;
    cdsCFNRCLASS: TLargeintField;
    cdsCFPCAIPI: TFMTBCDField;
    cdsCFDESCRICAO_CNM: TStringField;
    cdsCFDESATIVA: TStringField;
    cdsCFNRCLASS2: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    BitBtnRelatorios: TJvBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaClassificacaoFiscal: TTelaClassificacaoFiscal;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaClassificacaoFiscal.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCF.Edit;
end;

procedure TTelaClassificacaoFiscal.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCF.Cancel;
end;

procedure TTelaClassificacaoFiscal.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsCF.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCF.Delete;
          cdsCF.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaClassificacaoFiscal.BitBtnGeralClick(Sender: TObject);
begin
  cdsCF.Filtered := False;
end;

procedure TTelaClassificacaoFiscal.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsCF.State = dsInsert then
      begin
        cdsCFCDCLASSIFICACAO_FISCAL.AsInteger := Gerar_id('GEN_CLASSIFICACAO_FISCAL_ID');
      end;
    cdsCF.Post;
    cdsCF.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaClassificacaoFiscal.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCF.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaClassificacaoFiscal.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsCF.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCF.Filter := 'CDCLASSIFICACAO_FISCAL  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsCF.Filter := 'NRCLASS                 = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsCF.Filter := 'DESCRICAO_CNM LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsCF.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaClassificacaoFiscal.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaClassificacaoFiscal.Browse;
begin
  if (VarMeusAcessos[126] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[127] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[128] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[129] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaClassificacaoFiscal.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaClassificacaoFiscal.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[126] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[127] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[128] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[129] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsCF.Open;
  Browse;
end;

procedure TTelaClassificacaoFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
