unit TelaPlanoContas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls,
  Buttons, Grids, DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr, DBCtrls,
  JvExButtons, JvBitBtn, Menus;

type
  TTelaPlanoContas = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    PanelCampos: TPanel;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    qPlContas: TSQLQuery;
    cdsPlContas: TClientDataSet;
    dspPlContas: TDataSetProvider;
    dsPlcontas: TDataSource;
    cdsPlContasCDPLANO_CONTAS: TIntegerField;
    cdsPlContasCONTA: TStringField;
    cdsPlContasDESCRICAO_CONTA: TStringField;
    cdsPlContasCONTA_DEBITO: TIntegerField;
    cdsPlContasCONTA_CREDITO: TIntegerField;
    cdsPlContasACEITA_LANCAMENTO: TIntegerField;
    cdsPlContasATIVA: TIntegerField;
    cdsPlContasCDCENTROCUSTO: TIntegerField;
    cdsPlContasCADASTRADO_POR: TStringField;
    cdsPlContasALTERADO_POR: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    BitBtnRelatorios: TJvBitBtn;
    PopupMenu1: TPopupMenu;
    ListagemdePlanodeContas1: TMenuItem;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    qPlContasCDPLANO_CONTAS: TIntegerField;
    qPlContasCONTA: TStringField;
    qPlContasDESCRICAO_CONTA: TStringField;
    qPlContasCONTA_DEBITO: TIntegerField;
    qPlContasCONTA_CREDITO: TIntegerField;
    qPlContasACEITA_LANCAMENTO: TIntegerField;
    qPlContasATIVA: TIntegerField;
    qPlContasCDCENTROCUSTO: TIntegerField;
    qPlContasCADASTRADO_POR: TStringField;
    qPlContasCADASTRADO_EM: TDateField;
    qPlContasALTERADO_POR: TStringField;
    qPlContasALTERADO_EM: TDateField;
    qPlContasNOME: TStringField;
    cdsPlContasNOME: TStringField;
    cdsPlContasCADASTRADO_EM: TDateField;
    cdsPlContasALTERADO_EM: TDateField;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    cdsClientesCDCLIENTE: TIntegerField;
    cdsClientesCDMASCOTE: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesDATA_CADASTRO: TDateField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesPNG: TIntegerField;
    cdsClientesEMAIL: TStringField;
    cdsClientesLIMITE_CREDITO: TSingleField;
    cdsClientesRESTRICAO: TIntegerField;
    cdsClientesTIPO_RESTRICAO: TStringField;
    cdsClientesFONE: TStringField;
    cdsClientesFONE2: TStringField;
    cdsClientesNASC_FUNDACAO: TDateField;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    DBEdit5: TDBEdit;
    R1: TMenuItem;
    qPlContasCDPESSOA: TIntegerField;
    cdsPlContasCDPESSOA: TIntegerField;
    qPessoa: TSQLQuery;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    cdsPessoaNOME: TStringField;
    cdsPessoaCDPESSOA: TIntegerField;
    cdsPessoaTIPO: TStringField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qPlContasCODIGO_EXTENDIDO: TStringField;
    cdsPlContasCODIGO_EXTENDIDO: TStringField;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure ListagemdePlanodeContas1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure dspPlContasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure DBEdit4Exit(Sender: TObject);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaPlanoContas: TTelaPlanoContas;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, ListagemPlanoContas_p, PerguntaData_p,
     RelatorioDemosntrativoConta_p;

{$R *.dfm}

procedure TTelaPlanoContas.Browse;
begin
  if (VarMeusAcessos[91] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[92] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[93] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[94] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaPlanoContas.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaPlanoContas.ListagemdePlanodeContas1Click(Sender: TObject);
begin
  ListagemPlanoContas := TListagemPlanoContas.Create(Application);
  ListagemPlanoContas.MontaRelatorio;
  FreeAndNil(ListagemPlanoContas);
end;

procedure TTelaPlanoContas.R1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    PerguntaData.GroupBoxData.Visible := False;
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioDemonstrativoConta := TRelatorioDemonstrativoConta.Create(Application);
        RelatorioDemonstrativoConta.MontaRelatorio;
        FreeAndNil(RelatorioDemonstrativoConta);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaPlanoContas.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsPlContas.Edit;
end;

procedure TTelaPlanoContas.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsPlContas.Cancel;
end;

procedure TTelaPlanoContas.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsPlContas.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsPlContas.Delete;
          cdsPlContas.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaPlanoContas.BitBtnGeralClick(Sender: TObject);
begin
  cdsPlContas.Filtered := False;
  cdsPlContas.refresh;
end;

procedure TTelaPlanoContas.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsPlContas.State = dsInsert then
      begin
        cdsPlContasCDPLANO_CONTAS.AsInteger := Gerar_id('GEN_FORNECEDORES_ID');
        cdsPlContasCADASTRADO_EM.AsDateTime := Date;
      end;
    cdsPlContas.Post;
    cdsPlContas.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaPlanoContas.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsPlContas.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaPlanoContas.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      CdsPlcontas.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsplcontas.Filter := 'CDPLANO_CONTAS  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsplcontas.Filter := 'CONTA           = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsplcontas.Filter := 'DESCRICAO_CONTA LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
        3 : cdsplcontas.Filter := 'CODIGO_EXTENDIDO LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsPlContas.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaPlanoContas.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaPlanoContas.DBEdit4Exit(Sender: TObject);
begin
  if Trim(cdsPlContasCDPESSOA.AsString) <> '' then
    begin
      cdsPessoa.Open;
      cdsPessoa.Filtered := False;
      cdsPessoa.Filter := 'CDPESSOA  = '''+cdsPlContasCDPESSOA.AsString+''' ';
      cdsPessoa.Filtered := True;
      cdsPlContasNOME.AsString := cdsPessoaNOME.AsString;
    end;
end;

procedure TTelaPlanoContas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsPlContas.FieldByName('ATIVA').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;
  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaPlanoContas.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if cdsPlContas.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsPlContas.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsPlContas.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsPlContas.IndexName := vIndice;
    end
  else
    cdsPlContas.IndexFieldNames := Column.FieldName;
end;

procedure TTelaPlanoContas.dspPlContasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'PLANO_CONTAS';
end;

procedure TTelaPlanoContas.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[91] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[92] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[93] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[94] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  cdsPlContas.Open;
  cdsPlContasCONTA.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  Browse;
end;

procedure TTelaPlanoContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
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
