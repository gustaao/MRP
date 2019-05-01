unit TelaVendedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBCtrls, StdCtrls, Mask, DB, DBClient, Provider, SqlExpr,
  Buttons, ExtCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn, Menus;

type
  TTelaVendedores = class(TForm)
    qVendedor: TSQLQuery;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    cdsVendedorCDVENDEDOR: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorAPELIDO: TStringField;
    cdsVendedorREGIAO: TStringField;
    cdsVendedorENDERECO: TStringField;
    cdsVendedorNUMERO: TStringField;
    cdsVendedorBAIRRO: TStringField;
    cdsVendedorCIDADE: TStringField;
    cdsVendedorCEP: TStringField;
    cdsVendedorUF: TStringField;
    cdsVendedorCPF_CNPJ: TStringField;
    cdsVendedorRG_IE: TStringField;
    cdsVendedorNASC_FUNDACAO: TDateField;
    cdsVendedorFONE: TStringField;
    cdsVendedorCELULAR: TStringField;
    cdsVendedorCDIBGE: TFMTBCDField;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    cdsVendedorCADASTRADO_POR: TStringField;
    cdsVendedorCADASTRADO_EM: TSQLTimeStampField;
    cdsVendedorALTERADO_POR: TStringField;
    cdsVendedorALTERADO_EM: TSQLTimeStampField;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label13: TLabel;
    Label14: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBoxUF: TDBComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    DBEditCDIBGE: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cdsVendedorATIVO: TIntegerField;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    PopupMenu1: TPopupMenu;
    ListagemdeVendedores1: TMenuItem;
    cdsVendedorCOD_IBGE: TStringField;
    cdsVendedorCOD_PAIS: TStringField;
    cdsVendedorPAIS: TStringField;
    cdsVendedorCOMISSAO: TFloatField;
    cdsVendedorMETA: TFloatField;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBComboBoxUFExit(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
    procedure ListagemdeVendedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaVendedores: TTelaVendedores;

implementation

uses DMPrincipal_p, Principal_p, Funcoes_p, ListagemVendedores_p;

{$R *.dfm}

procedure TTelaVendedores.Browse;
begin
  if (VarMeusAcessos[60] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[61] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[62] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[63] = '001' then
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

procedure TTelaVendedores.Insert;
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



procedure TTelaVendedores.ListagemdeVendedores1Click(Sender: TObject);
begin
  ListagemVendedores := TListagemVendedores.Create(Application);
  ListagemVendedores.MontaRelatorio;
  FreeAndNil(ListagemVendedores);
end;

procedure TTelaVendedores.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsVendedor.Edit;
end;

procedure TTelaVendedores.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsVendedor.Cancel;
end;

procedure TTelaVendedores.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsVendedor.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsVendedor.Delete;
          cdsVendedor.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaVendedores.BitBtnGeralClick(Sender: TObject);
begin
  cdsVendedor.Filtered := False;
  cdsVendedor.Refresh;
end;

procedure TTelaVendedores.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsVendedor.State = dsInsert then
      begin
        cdsVendedorCDVENDEDOR.AsInteger     := Gerar_id('GEN_VENDEDORES_ID');
        cdsVendedorCADASTRADO_EM.AsDateTime := Date;
      end
    else
      begin
        cdsVendedorALTERADO_EM.AsDateTime := Date;
      end;
    cdsVendedor.Post;
    cdsVendedor.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaVendedores.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsVendedor.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaVendedores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsVendedor.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsVendedor.Filter := 'CDVENDEDOR  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsVendedor.Filter := 'NOME LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
        2 : cdsVendedor.Filter := 'CPF_CNPJ    = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsVendedor.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaVendedores.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaVendedores.DBComboBoxUFExit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBoxUF.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TTelaVendedores.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsVendedor.FieldByName('ATIVO').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;
  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaVendedores.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsVendedor.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsVendedor.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsVendedor.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsVendedor.IndexName := vIndice;
    end
  else
    cdsVendedor.IndexFieldNames := Column.FieldName;
end;

procedure TTelaVendedores.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  cdsVendedor.FieldByName('CDIBGE').AsInteger := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsInteger;
end;

procedure TTelaVendedores.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[60] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[61] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[62] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[63] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsVendedor.Open;
end;

procedure TTelaVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaVendedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    Close;
end;

end.
