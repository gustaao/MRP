unit TelaNaturezaOperacao_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, DBCtrls, Grids,
  DBGrids, JvExControls, JvXPCore, JvXPButtons, Mask, ExtCtrls, Buttons,
  JvExButtons, JvBitBtn;

type
  TTelaNaturezaOperacao = class(TForm)
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
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    qNO: TSQLQuery;
    dspNO: TDataSetProvider;
    cdsNO: TClientDataSet;
    dsNO: TDataSource;
    cdsNOCDNATOPE: TSmallintField;
    cdsNODESCRNAT: TStringField;
    cdsNOGERADUP: TStringField;
    cdsNOCRIADUP: TStringField;
    cdsNOCDNATOPE2: TSmallintField;
    cdsNOALTERADO_POR: TStringField;
    cdsNOALTERADO_EM: TDateField;
    cdsNONOTA_DE_REMESSA_COM_RETORNO: TStringField;
    cdsNODESATIVADO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    BitBtnRelatorios: TJvBitBtn;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    cdsNOIMPORTACAO: TIntegerField;
    cdsNODEVOLUCAO: TIntegerField;
    cdsNOENTRADA: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaNaturezaOperacao: TTelaNaturezaOperacao;

implementation

uses Principal_p, DMPrincipal_P, Funcoes_p;

{$R *.dfm}



procedure TTelaNaturezaOperacao.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsNO.Edit;
end;

procedure TTelaNaturezaOperacao.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsNO.Cancel;
end;

procedure TTelaNaturezaOperacao.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsNO.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsNO.Delete;
          cdsNO.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaNaturezaOperacao.BitBtnGeralClick(Sender: TObject);
begin
  cdsNO.Filtered := False;
end;

procedure TTelaNaturezaOperacao.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    cdsNO.Post;
    cdsNO.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaNaturezaOperacao.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsNO.Insert;
  DBEdit1.SetFocus;
end;

procedure TTelaNaturezaOperacao.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsNO.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsNO.Filter := 'CDNATOPE  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsNO.Filter := 'DESCRNAT LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsNO.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaNaturezaOperacao.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaNaturezaOperacao.Browse;
begin
  if (VarMeusAcessos[121] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[122] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[123] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[124] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaNaturezaOperacao.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[121] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[122] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[123] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[124] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  cdsNO.Open;
  Browse;
end;

procedure TTelaNaturezaOperacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaNaturezaOperacao.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;








end.
