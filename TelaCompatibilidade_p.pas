unit TelaCompatibilidade_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvXPCore, JvXPButtons, Mask, ExtCtrls, JvExButtons,
  JvBitBtn, Buttons, JvExControls, JvNavigationPane, DBCtrls, Grids, DBGrids,
  pngimage, FMTBcd, Provider, DB, DBClient, SqlExpr;

type
  TTelaCompatibilidade = class(TForm)
    JvNavPanelHeader2: TJvNavPanelHeader;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    PanelCampos: TPanel;
    Label11: TLabel;
    Label26: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit24: TDBEdit;
    Label10: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    qCompatibilidade: TSQLQuery;
    cdsCompatibilidade: TClientDataSet;
    dsCompatibilidade: TDataSource;
    dspCompatibilidade: TDataSetProvider;
    qCompatibilidadeCDCOMPATIBILIDADE: TIntegerField;
    qCompatibilidadeCDPRODUTO: TIntegerField;
    qCompatibilidadeCDPRODUTO_FORNECEDOR: TStringField;
    qCompatibilidadeCDFORNECEDOR: TIntegerField;
    qCompatibilidadeCADASTRADO_POR: TStringField;
    qCompatibilidadeCADASTRADO_EM: TSQLTimeStampField;
    qCompatibilidadeALTERADO_POR: TStringField;
    qCompatibilidadeALTERADO_EM: TSQLTimeStampField;
    qCompatibilidadeCDINTERNO: TStringField;
    qCompatibilidadeDESCRICAO: TStringField;
    qCompatibilidadeNOME: TStringField;
    cdsCompatibilidadeCDCOMPATIBILIDADE: TIntegerField;
    cdsCompatibilidadeCDPRODUTO: TIntegerField;
    cdsCompatibilidadeCDPRODUTO_FORNECEDOR: TStringField;
    cdsCompatibilidadeCDFORNECEDOR: TIntegerField;
    cdsCompatibilidadeCADASTRADO_POR: TStringField;
    cdsCompatibilidadeCADASTRADO_EM: TSQLTimeStampField;
    cdsCompatibilidadeALTERADO_POR: TStringField;
    cdsCompatibilidadeALTERADO_EM: TSQLTimeStampField;
    cdsCompatibilidadeCDINTERNO: TStringField;
    cdsCompatibilidadeDESCRICAO: TStringField;
    cdsCompatibilidadeNOME: TStringField;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure dspCompatibilidadeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaCompatibilidade: TTelaCompatibilidade;
  VarComponente : String;


implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaFornecedores_p,
     ConsultaProdutos_p;

{$R *.dfm}

procedure TTelaCompatibilidade.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsCompatibilidade.Edit;
end;

procedure TTelaCompatibilidade.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsCompatibilidade.Cancel;
end;

procedure TTelaCompatibilidade.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsCompatibilidade.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsCompatibilidade.Delete;
          cdsCompatibilidade.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCompatibilidade.BitbtnGeralClick(Sender: TObject);
begin
  cdsCompatibilidade.Filtered := False;
  cdsCompatibilidade.Refresh;
end;

procedure TTelaCompatibilidade.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsCompatibilidade.State = dsInsert then
      begin
        cdsCompatibilidadeCDCOMPATIBILIDADE.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_COMPAT_ID');
        cdsCompatibilidadeCADASTRADO_EM.AsDateTime    := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
        cdsCompatibilidadeCADASTRADO_POR.AsString     := VarNomeUsuario;
      end
    else
      begin
        cdsCompatibilidadeALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
        cdsCompatibilidadeALTERADO_POR.AsString  := VarNomeUsuario;
      end;
    cdsCompatibilidade.Post;
    cdsCompatibilidade.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaCompatibilidade.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsCompatibilidade.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaCompatibilidade.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsCompatibilidade.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCompatibilidade.Filter := 'CDCOMPATIBILIDADE    = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsCompatibilidade.Filter := 'CDINTERNO            = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsCompatibilidade.Filter := 'DESCRICAO LIKE         ''%'+MaskeditPesquisa.Text+'%'' ';
        3 : cdsCompatibilidade.Filter := 'CDPRODUTO_FORNECEDOR = '''+MaskeditPesquisa.Text+''' ';
        4 : cdsCompatibilidade.Filter := 'CDFORNECEDOR         = '''+MaskeditPesquisa.Text+''' ';
        5 : cdsCompatibilidade.Filter := 'NOME      LIKE         ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsCompatibilidade.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaCompatibilidade.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCompatibilidade.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaCompatibilidade.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaCompatibilidade.dspCompatibilidadeGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('NF_FORNECEDOR_COMPAT');
end;

procedure TTelaCompatibilidade.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
//  if VarMeusAcessos[60] <> '001' then
//    BitBtnIncluir.Enabled := False;
//
//  if VarMeusAcessos[61] <> '001' then
//    BitBtnExcluir.Enabled := False;
//
//  if VarMeusAcessos[62] <> '001' then
//    BitBtnAlterar.Enabled := False;
//
//  if VarMeusAcessos[63] <> '001' then
//    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsCompatibilidade.Open;
end;

procedure TTelaCompatibilidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TTelaCompatibilidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit2' then
        begin
          PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
          PesquisaFornecedores.ShowModal;
          cdsCompatibilidadeCDFORNECEDOR.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
          cdsCompatibilidadeNOME.AsString          := PesquisaFornecedores.cdsFornNOME.AsString;
          FreeAndNil(PesquisaFornecedores);
          DBEdit2.SetFocus;
        end;

      if VarComponente = 'DBEdit1' then
        begin
          ConsultaProdutos := TConsultaProdutos.Create(Application);
          ConsultaProdutos.ShowModal;
          cdsCompatibilidadeCDINTERNO.AsString  := ConsultaProdutos.cdsProdutosCDINTERNO.AsString;
          cdsCompatibilidadeCDPRODUTO.AsInteger := ConsultaProdutos.cdsProdutosCDPRODUTO.AsInteger;
          cdsCompatibilidadeDESCRICAO.AsString  := ConsultaProdutos.cdsProdutosDESCRICAO.AsString;
          FreeAndNil(ConsultaProdutos);
          DBEdit1.SetFocus;
        end;
    end;
end;

end.
