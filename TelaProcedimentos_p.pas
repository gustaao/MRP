unit TelaProcedimentos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, Provider,
  DBClient, SqlExpr, Grids, DBGrids, JvExButtons, JvBitBtn, JvExControls,
  JvXPCore, JvXPButtons;

type
  TTelaProcedimentos = class(TForm)
    qProc: TSQLQuery;
    cdsProc: TClientDataSet;
    dspProc: TDataSetProvider;
    dsProc: TDataSource;
    cdsProcCDPROCEDIMENTO: TIntegerField;
    DBGrid1: TDBGrid;
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
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cdsProcDESCRICAO: TStringField;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaProcedimentos: TTelaProcedimentos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaProcedimentos.Browse;
begin
  if (VarMeusAcessos[30] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[31] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[32] = '001' then
    BitBtnAlterar.Enabled := True;

  BitBtnSair.Enabled     := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaProcedimentos.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsProc.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsProc.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsProc.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsProc.IndexName := vIndice;
    end
  else
    cdsProc.IndexFieldNames := Column.FieldName;
end;

procedure TTelaProcedimentos.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaProcedimentos.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsProc.Edit;
end;

procedure TTelaProcedimentos.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsProc.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsProc.Delete;
          cdsProc.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaProcedimentos.BitBtnGeralClick(Sender: TObject);
begin
  cdsProc.Filtered := False;
end;

procedure TTelaProcedimentos.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsProc.State = dsInsert then
    begin
      cdsProcCDPROCEDIMENTO.AsInteger := Gerar_id('GEN_PROCEDIMENTOS_ID');
    end;
  cdsProc.Post;
  cdsProc.ApplyUpdates(0);
end;

procedure TTelaProcedimentos.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsProc.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaProcedimentos.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsProc.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsProc.Filter := 'CDPROCEDIMENTO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsProc.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsProc.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaProcedimentos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaProcedimentos.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsProc.Cancel;
end;

procedure TTelaProcedimentos.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[30] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[31] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[32] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[33] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}
  Browse;
  cdsProc.Open;

end;

procedure TTelaProcedimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaProcedimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;

end;


end.
