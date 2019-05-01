unit TelaProdutos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FMTBcd, DB, Provider, DBClient, SqlExpr,
  Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons, jpeg,
  JvExButtons, JvBitBtn, Menus, ComCtrls, ExtDlgs, JvDBImage;

type
  TTelaProdutos = class(TForm)
    PanelButton: TPanel;
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitbtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label27: TLabel;
    Label28: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelGrid: TPanel;
    DBGrid1: TDBGrid;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    GroupBoxImpostos: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label29: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    cbUso_Consumo: TDBCheckBox;
    DBEdit20: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit6: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    DBEdit12: TDBEdit;
    Label35: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label33: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit33: TDBEdit;
    Label39: TLabel;
    DBEdit36: TDBEdit;
    PopupMenu1: TPopupMenu;
    ListagemdeProdutos1: TMenuItem;
    DBLookupComboBox5: TDBLookupComboBox;
    Label40: TLabel;
    MovimentaodeProduto1: TMenuItem;
    PopupMenu2: TPopupMenu;
    AdicionarImagem1: TMenuItem;
    Excluir1: TMenuItem;
    GroupBoxUnidade: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBoxFinanceiro: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    Bevel1: TBevel;
    OpenPictureDialog1: TOpenPictureDialog;
    JvDBImage1: TJvDBImage;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitbtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure ListagemdeProdutos1Click(Sender: TObject);
    procedure MovimentaodeProduto1Click(Sender: TObject);
    procedure AdicionarImagem1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaProdutos: TTelaProdutos;

implementation

uses Principal_p, DMProduto_p, DMPrincipal_p, Funcoes_p, PesquisaSituacaoTributaria_p,
     PesquisaOrigemProduto_p, PesquisaCSOSN_p, PesquisaSTIPI_p, PesquisaSTPis_Cofins_p,
     PesquisaEnqIPI_p, ListagemProdutos_p, RelatorioMovimentacaoProduto_p, PerguntaData_p;

{$R *.dfm}

procedure TTelaProdutos.Browse;
begin
  if (VarMeusAcessos[55] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[56] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[57] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[58] = '001' then
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

procedure TTelaProdutos.Insert;
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


procedure TTelaProdutos.ListagemdeProdutos1Click(Sender: TObject);
begin
  ListagemProdutos := TListagemProdutos.Create(Application);
  ListagemProdutos.MontaRelatorio;
  FreeAndNil(ListagemProdutos);
end;

procedure TTelaProdutos.MovimentaodeProduto1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    PerguntaData.GroupBoxItem.Visible := True;
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioMovimentacaoProduto := TRelatorioMovimentacaoProduto.Create(Application);
        RelatorioMovimentacaoProduto.MontaRelatorio;
        FreeAndNil(RelatorioMovimentacaoProduto);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;

end;

procedure TTelaProdutos.AdicionarImagem1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    JvDBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TTelaProdutos.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMProduto.cdsProdutos.Edit;
end;

procedure TTelaProdutos.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMProduto.cdsProdutos.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMProduto.cdsProdutos.Delete;
          DMProduto.cdsProdutos.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaProdutos.BitBtnGeralClick(Sender: TObject);
begin
  DMProduto.cdsProdutos.Filtered := False;
end;

procedure TTelaProdutos.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMProduto.cdsProdutos.State = dsInsert then
      begin
        DMProduto.cdsProdutosCDPRODUTO.AsInteger := Gerar_id('GEN_PRODUTOS_ID');
      end;

    if (DMProduto.cdsProdutosIMAGEM.AsString = '') then
      begin
        DMProduto.cdsProdutosIMAGEM.LoadFromFile(OpenPictureDialog1.FileName);
      end;

    DMProduto.cdsProdutos.Post;
    DMProduto.cdsProdutos.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaProdutos.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMProduto.cdsProdutos.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaProdutos.BitBtnOKClick(Sender: TObject);
begin
  DMProduto.cdsProdutos.Filtered := False;
  case RadioGroupPesquisa.ItemIndex of
    0 : DMProduto.cdsProdutos.Filter := 'CDINTERNO  = '''+MaskeditPesquisa.Text+''' ';
    1 : DMProduto.cdsProdutos.Filter := 'CDBARRAS   = '''+MaskeditPesquisa.Text+''' ';
    2 : DMProduto.cdsProdutos.Filter := 'UPPER(DESCRICAO)  LIKE ''%'+UpperCase(MaskeditPesquisa.Text)+'%'' ';
    3 : DMProduto.cdsProdutos.Filter := 'UPPER(MARCA)      LIKE ''%'+UpperCase(MaskeditPesquisa.Text)+'%'' ';
    4 : DMProduto.cdsProdutos.Filter := 'UPPER(FORNECEDOR) LIKE ''%'+UpperCase(MaskeditPesquisa.Text)+'%'' ';
    5 : DMProduto.cdsProdutos.Filter := 'SERVICO = ''1'' ';
  end;
  DMProduto.cdsProdutos.Filtered := True;
  MaskeditPesquisa.Clear;
end;

procedure TTelaProdutos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaProdutos.BitbtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMProduto.cdsProdutos.Cancel;
end;

procedure TTelaProdutos.DBEdit23Exit(Sender: TObject);
begin
  DMProduto.qPesquisa.Active := False;
  DMProduto.qPesquisa.SQL.Clear;
  DMProduto.qPesquisa.SQL.Add('select *  ');
  DMProduto.qPesquisa.SQL.Add('from st_pis_cofins ');
  DMProduto.qPesquisa.SQL.Add('where cdsituacao = '''+DMProduto.cdsProdutosSITUACAO_PIS.AsString+''' ');
  DMProduto.qPesquisa.Active := True;
  if DMProduto.qPesquisa.IsEmpty then
    begin
      Application.MessageBox('Situação Tributária do PIS Não Encontrada! Favor Verificar.',
        'Atenção', MB_OK + MB_ICONWARNING);
    end
  else
    DMProduto.cdsProdutosDESC_SIT_PIS.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
end;

procedure TTelaProdutos.DBEdit25Exit(Sender: TObject);
begin
  DMProduto.qPesquisa.Active := False;
  DMProduto.qPesquisa.SQL.Clear;
  DMProduto.qPesquisa.SQL.Add('select *  ');
  DMProduto.qPesquisa.SQL.Add('from situacao_tributaria_ipi ');
  DMProduto.qPesquisa.SQL.Add('where  cdsituacao = '''+DMProduto.cdsProdutosSITUACAO_IPI_ENTRADA.AsString+''' ');
  DMProduto.qPesquisa.Active := True;
  if DMProduto.qPesquisa.IsEmpty then
    begin
      Application.MessageBox('Situação Tributária do IPI Não Encontrada! Favor Verificar.',
        'Atenção', MB_OK + MB_ICONWARNING);
    end
  else
    DMProduto.cdsProdutosDESC_SIT_IPIE.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
end;

procedure TTelaProdutos.DBEdit27Exit(Sender: TObject);
begin
  if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
    begin
      DMProduto.qPesquisa.Active := False;
      DMProduto.qPesquisa.SQL.Clear;
      DMProduto.qPesquisa.SQL.Add('select *  ');
      DMProduto.qPesquisa.SQL.Add('from situacao_tributaria ');
      DMProduto.qPesquisa.SQL.Add('where codigost = '''+DMProduto.cdsProdutosSIT_TRIBUTARIA.AsString+''' ');
      DMProduto.qPesquisa.Active := True;
      if DMProduto.qPesquisa.IsEmpty then
        begin
          Application.MessageBox('Situação Tributária Não Encontrada! Favor Verificar.',
            'Atenção', MB_OK + MB_ICONWARNING);
        end
      else
        DMProduto.cdsProdutosDESC_ST.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TTelaProdutos.DBEdit29Exit(Sender: TObject);
begin
  if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
    begin
      DMProduto.qPesquisa.Active := False;
      DMProduto.qPesquisa.SQL.Clear;
      DMProduto.qPesquisa.SQL.Add('select *  ');
      DMProduto.qPesquisa.SQL.Add('from situacao_osn ');
      DMProduto.qPesquisa.SQL.Add('where csosn = '''+DMProduto.cdsProdutosCSOSN.AsString+''' ');
      DMProduto.qPesquisa.Active := True;
      if DMProduto.qPesquisa.IsEmpty then
        begin
          Application.MessageBox('Código da Situação de Operação d0 Simples Nacional Não Encontrada! Favor Verificar.',
            'Atenção', MB_OK + MB_ICONWARNING);
        end
      else
        DMProduto.cdsProdutosDESC_CSOSN.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TTelaProdutos.DBEdit2Exit(Sender: TObject);
begin
  if not BitbtnCancelar.Focused then
    begin
      if (DMProduto.cdsProdutos.State in [dsInsert,dsEdit]) then
        begin
          DMProduto.qCodigo.Active := False;
          DMProduto.qCodigo.SQL.Clear;
          DMProduto.qCodigo.SQL.Add('select * from produtos where cdinterno = '''+DBEdit2.Text+''' ');
          DMProduto.qCodigo.Active := True;
          if not(DMProduto.qCodigo.IsEmpty) then
            begin
              Application.MessageBox('Código Interno Existente.  Digite outro Código', 'Aviso.',MB_OK );
              DBEdit2.SetFocus;
            end;
        end;
    end;
end;

procedure TTelaProdutos.DBEdit31Exit(Sender: TObject);
begin
  if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
    begin
      DMProduto.qPesquisa.Active := False;
      DMProduto.qPesquisa.SQL.Clear;
      DMProduto.qPesquisa.SQL.Add('select *  ');
      DMProduto.qPesquisa.SQL.Add('from st_pis_cofins ');
      DMProduto.qPesquisa.SQL.Add('where cdsituacao = '''+DMProduto.cdsProdutosSITUACAO_COFINS.AsString+''' ');
      DMProduto.qPesquisa.Active := True;
      if DMProduto.qPesquisa.IsEmpty then
        begin
          Application.MessageBox('Situação Tributária do Cofins Não Encontrada! Favor Verificar.',
            'Atenção', MB_OK + MB_ICONWARNING);
        end
      else
        DMProduto.cdsProdutosDESC_SIT_COFINS.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TTelaProdutos.DBEdit34Exit(Sender: TObject);
begin
  if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
    begin
      DMProduto.qPesquisa.Active := False;
      DMProduto.qPesquisa.SQL.Clear;
      DMProduto.qPesquisa.SQL.Add('select *  ');
      DMProduto.qPesquisa.SQL.Add('from situacao_tributaria_ipi ');
      DMProduto.qPesquisa.SQL.Add('where  cdsituacao = '''+DMProduto.cdsProdutosSITUACAO_IPI_SAIDA.AsString+''' ');
      DMProduto.qPesquisa.Active := True;
      if DMProduto.qPesquisa.IsEmpty then
        begin
          Application.MessageBox('Situação Tributária do IPI Não Encontrada! Favor Verificar.',
            'Atenção', MB_OK + MB_ICONWARNING);
        end
      else
        DMProduto.cdsProdutosDESC_SIT_IPIS.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
    end;
end;

procedure TTelaProdutos.DBEdit3Exit(Sender: TObject);
begin
  if (DMProduto.cdsProdutos.State in [dsInsert,dsEdit]) then
    begin
      DMProduto.qCodigo.Active := False;
      DMProduto.qCodigo.SQL.Clear;
      DMProduto.qCodigo.SQL.Add('select * from produtos where cdinterno = '''+DBEdit3.Text+''' ');
      DMProduto.qCodigo.Active := True;
      if not(DMProduto.qCodigo.IsEmpty) then
        begin
          Application.MessageBox('Código de Barras Existente.  Digite outro Código', 'Aviso.',MB_OK );
          DBEdit3.SetFocus;
        end;
    end;
end;

procedure TTelaProdutos.DBEdit7Exit(Sender: TObject);
begin
  DMProduto.cdsProdutosVALOR_VENDA.AsFloat := ((DMProduto.cdsProdutosVALOR_CUSTO.AsFloat * (DMProduto.cdsProdutosMARGEM.AsFloat /100 ))+
                                                DMProduto.cdsProdutosVALOR_CUSTO.AsFloat);
end;

procedure TTelaProdutos.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if DMProduto.cdsProdutos.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        DMProduto.cdsProdutos.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with DMProduto.cdsProdutos.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      DMProduto.cdsProdutos.IndexName := vIndice;
    end
  else
    DMProduto.cdsProdutos.IndexFieldNames := Column.FieldName;
end;

procedure TTelaProdutos.Excluir1Click(Sender: TObject);
begin
  DMProduto.cdsProdutosIMAGEM.AsString := '';
  JvDBImage1.Picture := nil;
end;

procedure TTelaProdutos.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[55] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[56] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[57] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[58] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMProduto.cdsProdutos.Open;

  DMProduto.cdsForn.Open;
  DMProduto.cdsForn.Refresh;

  DMProduto.cdsGrupo.Open;
  DMProduto.cdsGrupo.Refresh;


  DMProduto.cdsSubGrupo.Open;
  DMProduto.cdsSubGrupo.Refresh;

  DMProduto.cdsCC.Open;
  DMProduto.cdsCC.Refresh;

  DMProduto.cdsSTIPI.Open;
  DMProduto.cdsSTIPI.Refresh;

  DMProduto.cdsSTPC.Open;
  DMProduto.cdsSTPC.Refresh;

  DMProduto.cdsSTPC.Open;
  DMProduto.cdsSTPC.Refresh;

  DMProduto.cdsOM.Open;
  DMProduto.cdsOM.Refresh;

  DMProduto.cdsST.Open;
  DMProduto.cdsST.Refresh;

  DMProduto.cdsCSOSN.Open;
  DMProduto.cdsCSOSN.Refresh;
end;

procedure TTelaProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      {$REGION 'Origem do Produto'}
      if VarComponente = 'DBEdit12' then
        begin
          PesquisaOrigemProduto := TPesquisaOrigemProduto.Create(Application);
          PesquisaOrigemProduto.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosCDORIGEM.AsInteger := PesquisaOrigemProduto.cdsOMCDORIGEM.AsInteger;
              DMProduto.cdsProdutosORIGEM.AsString    := PesquisaOrigemProduto.cdsOMDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaOrigemProduto);
          DBEdit12.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Situação Tributária'}
      if VarComponente = 'DBEdit27' then
        begin
          PesquisaSituacaoTributaria := TPesquisaSituacaoTributaria.Create(Application);
          PesquisaSituacaoTributaria.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosSIT_TRIBUTARIA.AsString := Trim(PesquisaSituacaoTributaria.cdsSTCODIGOST.AsString);
              DMProduto.cdsProdutosDESC_ST.AsString        := PesquisaSituacaoTributaria.cdsSTDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaSituacaoTributaria);
          DBEdit27.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'CSOSN'}
      if VarComponente = 'DBEdit29' then
        begin
          PesquisaCSOSN := TPesquisaCSOSN.Create(Application);
          PesquisaCSOSN.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosCSOSN.AsString      := Trim(PesquisaCSOSN.cdsCSOSNCSOSN.AsString);
              DMProduto.cdsProdutosDESC_CSOSN.AsString := PesquisaCSOSN.cdsCSOSNDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaCSOSN);
          DBEdit29.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Situação Tributário IPI Entrada'}
      if VarComponente = 'DBEdit25' then
        begin
          PesquisaSTIPI := TPesquisaSTIPI.Create(Application);
          PesquisaSTIPI.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosSITUACAO_IPI_ENTRADA.AsString := Trim(PesquisaSTIPI.cdsSTIPICDSITUACAO.AsString);
              DMProduto.cdsProdutosDESC_SIT_IPIE.AsString        := PesquisaSTIPI.cdsSTIPIDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaSTIPI);
          DBEdit25.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Situação Tributário IPI Saida'}
      if VarComponente = 'DBEdit34' then
        begin
          PesquisaSTIPI := TPesquisaSTIPI.Create(Application);
          PesquisaSTIPI.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosSITUACAO_IPI_SAIDA.AsString := Trim(PesquisaSTIPI.cdsSTIPICDSITUACAO.AsString);
              DMProduto.cdsProdutosDESC_SIT_IPIS.AsString      := PesquisaSTIPI.cdsSTIPIDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaSTIPI);
          DBEdit34.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Situação Tributário do Pis'}
      if VarComponente = 'DBEdit23' then
        begin
          PesquisaSTPIS_Cofins := TPesquisaSTPIS_Cofins.Create(Application);
          PesquisaSTPIS_Cofins.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosSITUACAO_PIS.AsString := Trim(PesquisaSTPIS_Cofins.cdsSTPisCofinsCDSITUACAO.AsString);
              DMProduto.cdsProdutosDESC_SIT_PIS.AsString := PesquisaSTPIS_Cofins.cdsSTPisCofinsDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaSTIPI);
          DBEdit23.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Situação Tributária do Cofins'}
      if VarComponente = 'DBEdit31' then
        begin
          PesquisaSTPIS_Cofins := TPesquisaSTPIS_Cofins.Create(Application);
          PesquisaSTPIS_Cofins.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            begin
              DMProduto.cdsProdutosSITUACAO_COFINS.AsString := Trim(PesquisaSTPIS_Cofins.cdsSTPisCofinsCDSITUACAO.AsString);
              DMProduto.cdsProdutosDESC_SIT_COFINS.AsString := PesquisaSTPIS_Cofins.cdsSTPisCofinsDESCRICAO.AsString;
            end;
          FreeAndNil(PesquisaSTIPI);
          DBEdit31.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Enquadramento do IPI Entrada'}
      if VarComponente = 'DBEdit33' then
        begin
          PesquisaEnqIPI := TPesquisaEnqIPI.Create(Application);

          PesquisaEnqIPI.cdsEnqIPI.Close;
          PesquisaEnqIPI.cdsEnqIPI.CommandText := (' SELECT * FROM ENQUADRAMENTO_IPI WHERE CDSITUACAO_ENTRADA = '''+DBEdit25.Text+''' ');
          PesquisaEnqIPI.cdsEnqIPI.Open;

          if (PesquisaEnqIPI.cdsEnqIPI.IsEmpty) then
            begin
              PesquisaEnqIPI.cdsEnqIPI.Close;
              PesquisaEnqIPI.cdsEnqIPI.CommandText := (' SELECT * FROM ENQUADRAMENTO_IPI WHERE CDSITUACAO_ENTRADA IS NULL ');
              PesquisaEnqIPI.cdsEnqIPI.Open;
            end;
          PesquisaEnqIPI.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            DMProduto.cdsProdutosENQ_IPI_ENTRADA.AsString := Trim(PesquisaEnqIPI.cdsEnqIPICODIGO_ENQUADRAMENTO.AsString);

          FreeAndNil(PesquisaEnqIPI);
          DBEdit33.SetFocus;
        end;
      {$ENDREGION}

      {$REGION 'Enquadramento do IPI Entrada'}
      if VarComponente = 'DBEdit36' then
        begin
          PesquisaEnqIPI := TPesquisaEnqIPI.Create(Application);

          PesquisaEnqIPI.cdsEnqIPI.Close;
          PesquisaEnqIPI.cdsEnqIPI.CommandText := (' SELECT * FROM ENQUADRAMENTO_IPI WHERE CDSITUACAO_SAIDA = '''+DBEdit34.Text+''' ');
          PesquisaEnqIPI.cdsEnqIPI.Open;

          if (PesquisaEnqIPI.cdsEnqIPI.IsEmpty) then
            begin
              PesquisaEnqIPI.cdsEnqIPI.Close;
              PesquisaEnqIPI.cdsEnqIPI.CommandText := (' SELECT * FROM ENQUADRAMENTO_IPI WHERE CDSITUACAO_SAIDA IS NULL ');
              PesquisaEnqIPI.cdsEnqIPI.Open;
            end;
          PesquisaEnqIPI.ShowModal;
          if DMProduto.cdsProdutos.State in ([dsInsert,dsEdit]) then
            DMProduto.cdsProdutosENQ_IPI_SAIDA.AsString := Trim(PesquisaEnqIPI.cdsEnqIPICODIGO_ENQUADRAMENTO.AsString);
          FreeAndNil(PesquisaEnqIPI);
          DBEdit33.SetFocus;
        end;
      {$ENDREGION}
    end;
end;

end.
