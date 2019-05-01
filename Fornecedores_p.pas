unit Fornecedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, DBCtrls, StdCtrls, Mask, DB, Provider,
  DBClient, SqlExpr, Buttons, ExtCtrls, JvExControls, JvXPCore, JvXPButtons,
  Menus, JvExButtons, JvBitBtn, JvExStdCtrls, JvCombobox, JvDBCombobox, pngimage;

type
  TFornecedores = class(TForm)
    PanelBotoes: TPanel;
    BitBtnSair: TBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label7: TLabel;
    Label9: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelGrid: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    BitBtnRelatorios: TJvBitBtn;
    PopupMenu1: TPopupMenu;
    ListagemdeFornecedores1: TMenuItem;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label38: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBComboBoxUF: TDBComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    DBEditCDIBGE: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label18: TLabel;
    DBCheckBox3: TDBCheckBox;
    Label22: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    ComboBoxTipoPessoa: TJvDBComboBox;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    BitBtnContato: TJvXPButton;
    BitBtnFone: TJvXPButton;
    BitBtnCobranca: TJvXPButton;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarClick(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure BitBtnFoneClick(Sender: TObject);
    procedure BitBtnContatoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
    procedure DBComboBoxUFExit(Sender: TObject);
    procedure ListagemdeFornecedores1Click(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure BitBtnCobrancaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  Fornecedores: TFornecedores;

implementation

uses Principal_p, Funcoes_p, DMForncedores_p, TelaFoneFornecedor_p,
     TelaContatoFornecedor_p, DMPrincipal_p, ListagemFornecedores_p,
     TelaEnderecoCobranca_p;

{$R *.dfm}

procedure TFornecedores.Browse;
begin
//  BitBtnIncluir.Enabled    := True;
//  BitBtnAlterar.Enabled    := True;
//  BitBtnExcluir.Enabled    := True;
//  BitBtnRelatorios.Enabled := True;
  if (VarMeusAcessos[40] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[41] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[42] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[43] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TFornecedores.Insert;
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


procedure TFornecedores.BitBtnFoneClick(Sender: TObject);
begin
  DMFornecedores.cdsFoneForn.Open;
  TelaFoneFornecedor := TTelaFoneFornecedor.Create(Application);
  TelaFoneFornecedor.Show;
end;

procedure TFornecedores.BitBtnCobrancaClick(Sender: TObject);
begin
  TelaEnderecoCobranca := TTelaEnderecoCobranca.Create(Application);

  TelaEnderecoCobranca.MaskEditCodigo.Text := DMFornecedores.cdsFornCDPESSOA.AsString;
  TelaEnderecoCobranca.MaskEditNome.Text   := DMFornecedores.cdsFornNOME.AsString;

  TelaEnderecoCobranca.cdsEndCob.Close;
  TelaEnderecoCobranca.cdsEndCob.FetchParams;
  TelaEnderecoCobranca.cdsEndCob.Params.ParamByName('CDPESSOA').AsInteger := DMFornecedores.cdsFornCDPESSOA.AsInteger;
  TelaEnderecoCobranca.cdsEndCob.Open;
  TelaEnderecoCobranca.Show;
end;

procedure TFornecedores.BitBtnContatoClick(Sender: TObject);
begin
  DMFornecedores.cdsContato.Open;
  TelaContatoFornecedor := TTelaContatoFornecedor.Create(Application);
  TelaContatoFornecedor.Show;
end;

procedure TFornecedores.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMFornecedores.cdsForn.Edit;
end;

procedure TFornecedores.BitBtnCancelarClick(Sender: TObject);
begin
  DMFornecedores.cdsForn.Cancel;
end;

procedure TFornecedores.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMFornecedores.cdsForn.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMFornecedores.cdsForn.Delete;
          DMFornecedores.cdsForn.ApplyUpdates(0);
        end;
    end;
end;

procedure TFornecedores.BitBtnGeralClick(Sender: TObject);
begin
  DMFornecedores.cdsForn.Filtered := False;
end;

procedure TFornecedores.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if DMFornecedores.cdsForn.State = dsInsert then
    begin
      DMFornecedores.cdsFornCDFORNECEDOR.AsInteger     := Gerar_id('GEN_FORNECEDORES_ID');
      DMFornecedores.cdsFornCDPESSOA.AsInteger         := Gerar_id('GEN_PESSOA_ID');
      DMFornecedores.cdsFornDATA_CADASTRO.AsDateTime   := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
    end;
  DMFornecedores.cdsForn.Post;
  DMFornecedores.cdsForn.ApplyUpdates(0);

end;

procedure TFornecedores.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMFornecedores.cdsForn.Insert;
  DBEdit2.SetFocus;
end;

procedure TFornecedores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMFornecedores.cdsForn.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMFornecedores.cdsForn.Filter := 'CDPESSOA  = '''+MaskeditPesquisa.Text+''' ';
        1 : DMFornecedores.cdsForn.Filter := 'NOME LIKE   ''%'+MaskeditPesquisa.Text+'%'' ';
        2 : DMFornecedores.cdsForn.Filter := 'CNPJ      = '''+MaskeditPesquisa.Text+''' ';
      end;
      DMFornecedores.cdsForn.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TFornecedores.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFornecedores.CancelarClick(Sender: TObject);
begin
  Browse;
  DMFornecedores.cdsForn.Cancel;
end;

procedure TFornecedores.DBComboBoxUFExit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBoxUF.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TFornecedores.DBEdit12Enter(Sender: TObject);
begin
  case ComboBoxTipoPessoa.ItemIndex of
    0 : DMFornecedores.cdsFornCPF_CNPJ.EditMask := '999.999.999-99;0;_';
    1 : DMFornecedores.cdsFornCPF_CNPJ.EditMask := '99.999999/9999-99;0;_';
  end;
end;

procedure TFornecedores.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if DMFornecedores.cdsForn.FieldByName('ATIVO').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;

  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TFornecedores.DBGrid1TitleClick(Column: TColumn);
var vIndice: string;
    vExiste: boolean;
begin
  if DMFornecedores.cdsForn.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        DMFornecedores.cdsForn.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with DMFornecedores.cdsForn.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      DMFornecedores.cdsForn.IndexName := vIndice;
    end
  else
    DMFornecedores.cdsForn.IndexFieldNames := Column.FieldName;
end;

procedure TFornecedores.DBLookupComboBox1DropDown(Sender: TObject);
begin
  DMFornecedores.cdsSeg.Refresh;
end;

procedure TFornecedores.DBLookupComboBox3Exit(Sender: TObject);
begin
  DMFornecedores.cdsFornCOD_PAIS.AsString := DMPrincipal.cdsPaisCOD_PAIS.AsString;
end;

procedure TFornecedores.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  DMFornecedores.cdsFornCOD_IBGE.AsString := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsString;
end;

procedure TFornecedores.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[40] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[41] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[42] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[43] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMFornecedores.cdsForn.Open;
  DMFornecedores.cdsSeg.Open;
  DMPrincipal.cdsEI.Open;
  DMPrincipal.cdsPais.Open;
end;

procedure TFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TFornecedores.ListagemdeFornecedores1Click(Sender: TObject);
begin
  ListagemFornecedores := TListagemFornecedores.Create(Application);
  ListagemFornecedores.cdsForn.Open;
  ListagemFornecedores.QuickRep1.Preview;
  FreeAndNil(ListagemFornecedores);
end;

end.
