unit TelaSituacaoTributaria_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, StdCtrls,
  DBCtrls, JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, Buttons,
  JvExButtons, JvBitBtn;

type
  TTelaSituacaoTributaria = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
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
    PanelCampos: TPanel;
    DBGrid1: TDBGrid;
    qST: TSQLQuery;
    dspST: TDataSetProvider;
    cdsST: TClientDataSet;
    dsST: TDataSource;
    cdsSTCODIGOST: TStringField;
    cdsSTDESCRICAO: TStringField;
    cdsSTPIS: TStringField;
    cdsSTCOFINS: TStringField;
    cdsSTT_I_S: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtnRelatorios: TJvBitBtn;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaSituacaoTributaria: TTelaSituacaoTributaria;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaSituacaoTributaria.Browse;
begin
  if (VarMeusAcessos[131] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[132] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[133] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[134] = '001' then
    BitBtnRelatorios.Enabled := True;


//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaSituacaoTributaria.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaSituacaoTributaria.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsST.Edit;
end;

procedure TTelaSituacaoTributaria.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsST.Cancel;
end;

procedure TTelaSituacaoTributaria.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsST.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsST.Delete;
          cdsST.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaSituacaoTributaria.BitBtnGeralClick(Sender: TObject);
begin
  cdsST.Filtered := False;
end;

procedure TTelaSituacaoTributaria.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    cdsST.Post;
    cdsST.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaSituacaoTributaria.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsST.Insert;
  DBEdit1.SetFocus;
end;

procedure TTelaSituacaoTributaria.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsST.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsST.Filter := 'CODIGOST  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsST.Filter := 'DESCRICAO LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsST.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaSituacaoTributaria.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaSituacaoTributaria.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[131] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[132] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[133] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[134] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsST.Open;
  Browse;
end;

procedure TTelaSituacaoTributaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
