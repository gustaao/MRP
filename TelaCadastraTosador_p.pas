unit TelaCadastraTosador_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons, ACBrBase,
  ACBrEnterTab, JvExButtons, JvBitBtn;

type
  TTelaCadastraTosador = class(TForm)
    PanelBotoes: TPanel;
    BitBtnSair: TBitBtn;
    qTosador: TSQLQuery;
    cdsTosador: TClientDataSet;
    dspTosador: TDataSetProvider;
    dsTosador: TDataSource;
    cdsTosadorCDTOSADOR: TIntegerField;
    cdsTosadorNOME: TStringField;
    cdsTosadorCOMISSAO: TSingleField;
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
    cdsTosadorESPECIALIDADE: TStringField;
    cdsTosadorATIVO: TIntegerField;
    cdsTosadorCADASTRADO_POR: TStringField;
    cdsTosadorCADASTRADO_EM: TSQLTimeStampField;
    cdsTosadorDESATIVADO_POR: TStringField;
    cdsTosadorDESATIVADO_EM: TSQLTimeStampField;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaCadastraTosador: TTelaCadastraTosador;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaCadastraTosador.Browse;
begin
  if (VarMeusAcessos[6] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[7] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[8] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[9] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnSair.Enabled     := True;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaCadastraTosador.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaCadastraTosador.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsTosador.FieldByName('ATIVO').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;
  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaCadastraTosador.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsTosador.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsTosador.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsTosador.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsTosador.IndexName := vIndice;
    end
  else
    cdsTosador.IndexFieldNames := Column.FieldName;
end;


procedure TTelaCadastraTosador.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsTosador.Edit;
end;

procedure TTelaCadastraTosador.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsTosador.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsTosador.Delete;
          cdsTosador.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCadastraTosador.BitBtnGeralClick(Sender: TObject);
begin
  cdsTosador.Filtered := False;
end;

procedure TTelaCadastraTosador.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsTosador.State = dsInsert then
    begin
      cdsTosadorCDTOSADOR.AsInteger      := Gerar_id('GEN_TOSADOR_ID');
      cdsTosadorCADASTRADO_POR.AsString  := VarNomeUsuario;
      cdsTosadorCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    end
  else
    if (cdsTosador.State = dsEdit) and (cdsTosadorATIVO.AsInteger = 0) then
      begin
        cdsTosadorDESATIVADO_POR.AsString  := VarNomeUsuario;
        cdsTosadorDESATIVADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end;

  cdsTosador.Post;
  cdsTosador.ApplyUpdates(0);
end;

procedure TTelaCadastraTosador.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsTosador.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaCadastraTosador.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsTosador.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsTosador.Filter := 'CDTOSADOR        = ''' + MaskeditPesquisa.Text +''' ';
        1 : cdsTosador.Filter := 'UPPER(NOME)          LIKE UPPER(''%'+ MaskeditPesquisa.Text +'%'') ';
        2 : cdsTosador.Filter := 'UPPER(ESPECIALIDADE) LIKE UPPER(''%'+ MaskeditPesquisa.Text +'%'') ';
      end;
      cdsTosador.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaCadastraTosador.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCadastraTosador.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsTosador.Cancel;
end;

procedure TTelaCadastraTosador.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[6] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[7] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[8] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[9] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsTosador.Open;
end;

procedure TTelaCadastraTosador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaCadastraTosador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( WM_NEXTDLGCTL,0 , 0 );
    end;

end;

end.
