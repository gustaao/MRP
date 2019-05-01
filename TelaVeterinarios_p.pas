unit TelaVeterinarios_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, Buttons, ExtCtrls, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn;

type
  TTelaVeterinarios = class(TForm)
    qVet: TSQLQuery;
    dspVet: TDataSetProvider;
    cdsVet: TClientDataSet;
    cdsVetCDVETERINARIO: TIntegerField;
    cdsVetNOME: TStringField;
    dsVet: TDataSource;
    DBGrid1: TDBGrid;
    cdsVetCRMV: TStringField;
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
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaVeterinarios: TTelaVeterinarios;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaVeterinarios.Browse;
begin
  if (VarMeusAcessos[20] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[21] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[22] = '001' then
    BitBtnAlterar.Enabled := True;

  BitBtnSair.Enabled     := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaVeterinarios.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaVeterinarios.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsVet.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsVet.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsVet.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsVet.IndexName := vIndice;
    end
  else
    cdsVet.IndexFieldNames := Column.FieldName;
end;

procedure TTelaVeterinarios.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsVet.Edit;
end;

procedure TTelaVeterinarios.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsVet.Cancel;
end;

procedure TTelaVeterinarios.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsVet.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsVet.Delete;
          cdsVet.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaVeterinarios.BitBtnGeralClick(Sender: TObject);
begin
  cdsVet.Filtered := False;
end;

procedure TTelaVeterinarios.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsVet.State = dsInsert then
    begin
      cdsVetCDVETERINARIO.AsInteger := Gerar_id('GEN_VETERINARIOS_ID');
    end;
  cdsVet.Post;
  cdsVet.ApplyUpdates(0);
end;

procedure TTelaVeterinarios.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsVet.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaVeterinarios.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsVet.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsVet.Filter := 'CDVETERINARIO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsVet.Filter := 'CRMV           = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsVet.Filter := 'UPPER(NOME) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsVet.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaVeterinarios.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaVeterinarios.FormActivate(Sender: TObject);
begin
  Browse;
  cdsVet.Open;

  {$REGION 'Permissoes'}
  if VarMeusAcessos[20] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[21] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[22] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[23] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}
end;

procedure TTelaVeterinarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaVeterinarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
