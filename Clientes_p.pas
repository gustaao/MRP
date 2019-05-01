unit Clientes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr, Mask, DBCtrls, Grids, DBGrids, JvExControls, JvXPCore,
  JvXPButtons, JvExButtons, JvBitBtn, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Menus, pngimage;

type
  TClientes = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelGrade: TPanel;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBoxFinanceiro: TGroupBox;
    Label11: TLabel;
    Label17: TLabel;
    DBCheckBoxPNG: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    BitBtnMascote: TBitBtn;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBGrid2: TDBGrid;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label23: TLabel;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    DBEditCDIBGE: TDBEdit;
    Label25: TLabel;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Label26: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    PopupMenu1: TPopupMenu;
    ListagemClientes1: TMenuItem;
    DBLookupComboBox3: TDBLookupComboBox;
    Label27: TLabel;
    DBGrid3: TDBGrid;
    BitBtnAdd: TJvXPButton;
    BitBtnDelete: TJvXPButton;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    ComboBoxTipoPessoa: TJvDBComboBox;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    BitBtnRelatorios: TJvBitBtn;
    BitBtnCobranca: TJvXPButton;
    BitBtnFone: TJvXPButton;
    BitBtnContato: TJvXPButton;
    procedure psKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnMascoteClick(Sender: TObject);
    procedure BitBtnFoneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure BitBtnContatoClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
    procedure ListagemClientes1Click(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure PanelCamposClick(Sender: TObject);
    procedure BitBtnCobrancaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  Clientes: TClientes;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, Mascote_p, DMClientes_p,
     TelaFoneClientes_p, TelaCadastraMascote_p, TelaContatoCliente_p,
     ListagemClientes_p, TelaEnderecoCobranca_p;

{$R *.dfm}

procedure TClientes.Browse;
begin
  if (VarMeusAcessos[65] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[66] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[67] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[68] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TClientes.Insert;
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


procedure TClientes.ListagemClientes1Click(Sender: TObject);
begin
  ListagemClientes := TListagemClientes.Create(Application);
  ListagemClientes.MontaRelatorio;
  FreeAndNil(ListagemClientes);
end;

procedure TClientes.PanelCamposClick(Sender: TObject);
begin
  if DMClientes.cdsLinha.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsLinha.Delete;
          DMClientes.cdsLinha.ApplyUpdates(0);
          DMClientes.cdsLinha.Refresh;
        end;
    end;
end;

procedure TClientes.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMPrincipal.cdsIBGE.Close;
  DMClientes.cdsClientes.Insert;
  DMClientes.cdsClientesCDCLIENTE.AsInteger := Consulta_id('GEN_CLIENTES_ID') + 1;
  DBEdit2.SetFocus;
end;

procedure TClientes.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMClientes.cdsClientes.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsClientes.Delete;
          DMClientes.cdsClientes.ApplyUpdates(0);
        end;
    end;
end;

procedure TClientes.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMClientes.cdsClientes.Cancel;
end;

procedure TClientes.BitBtnContatoClick(Sender: TObject);
begin
  DMClientes.cdsContatoCli.Open;
  DMClientes.cdsFoneContato.Open;
  TelaContatoCliente := TTelaContatoCliente.Create(Application);
  TelaContatoCliente.Show;
end;

procedure TClientes.BitBtnMascoteClick(Sender: TObject);
begin
  TelaCadastraMascote := TTelaCadastraMascote.Create(Application);
  DMClientes.cdsMascote.Open;
  DMClientes.cdsTipo.Open;
  DMClientes.cdsRacas.Open;
  DMClientes.cdsClientes.Open;
  BrowseState(TelaCadastraMascote);
  TelaCadastraMascote.Show;
end;

procedure TClientes.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMClientes.cdsClientes.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMClientes.cdsClientes.Filter := 'CDPESSOA  = '''+MaskeditPesquisa.Text+''' ';
        1 : DMClientes.cdsClientes.Filter := 'UPPER(NOME) LIKE    UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : DMClientes.cdsClientes.Filter := 'CPF_CNPJ   = '''+MaskeditPesquisa.Text+''' ';
      end;
      DMClientes.cdsClientes.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TClientes.BitBtnCobrancaClick(Sender: TObject);
begin
  TelaEnderecoCobranca := TTelaEnderecoCobranca.Create(Application);

  TelaEnderecoCobranca.MaskEditCodigo.Text := DMClientes.cdsClientesCDPESSOA.AsString;
  TelaEnderecoCobranca.MaskEditNome.Text   := DMClientes.cdsClientesNOME.AsString;

  TelaEnderecoCobranca.cdsEndCob.Close;
  TelaEnderecoCobranca.cdsEndCob.FetchParams;
  TelaEnderecoCobranca.cdsEndCob.Params.ParamByName('CDPESSOA').AsInteger := DMClientes.cdsClientesCDPESSOA.AsInteger;
  TelaEnderecoCobranca.cdsEndCob.Open;
  TelaEnderecoCobranca.ShowModal;
  FreeAndNil(TelaEnderecoCobranca);
end;

procedure TClientes.BitBtnFoneClick(Sender: TObject);
begin
  DMClientes.cdsFoneCli.Open;
  TelaFoneCliente := TTelaFoneCliente.Create(Application);
  TelaFoneCliente.Show;
end;

procedure TClientes.BitBtnAddClick(Sender: TObject);
begin
  try
    DMClientes.cdsClienteLinha.Insert;
    DMClientes.cdsClienteLinhaCDCLIENTE_LINHA.AsInteger  := Gerar_id('GEN_CLIENTES_LINHA_ID');
    DMClientes.cdsClienteLinhaCDCLIENTE.AsInteger        := DMclientes.cdsClientesCDCLIENTE.AsInteger;
    DMClientes.cdsClienteLinhaCDLINHA_PRODUTOS.AsInteger := DMClientes.cdsLinhaCDLINHA_PRODUTOS.AsInteger;
    DMClientes.cdsClienteLinhaCADASTRADO_POR.AsString    := VarNomeUsuario;
    DMClientes.cdsClienteLinhaCADASTRADO_EM.AsDateTime   := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    DMClientes.cdsClienteLinha.Post;
    DMClientes.cdsClienteLinha.ApplyUpdates(0);
    DMClientes.cdsClienteLinha.Refresh;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TClientes.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsClientes.Edit;
end;

procedure TClientes.BitBtnGeralClick(Sender: TObject);
begin
  DMClientes.cdsClientes.Filtered := False;
  DMClientes.cdsClientes.Refresh;
end;

procedure TClientes.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMClientes.cdsClientes.State = dsInsert then
      begin
        DMClientes.cdsClientesCDCLIENTE.AsInteger       := Gerar_id('GEN_CLIENTES_ID');
        DMClientes.cdsClientesCDPESSOA.AsInteger        := Gerar_id('GEN_PESSOA_ID');
        DMClientes.cdsClientesDATA_CADASTRO.AsDateTime  := Date;
      end;
    DMClientes.cdsClientesPAIS.AsString         := ConvertePalavras(DMPrincipal.cdsPaisPAIS.AsString);
    //DMClientes.cdsClientesTIPO_PESSOA.AsInteger := ComboBoxTipoPessoa.ItemIndex;
    DMClientes.cdsClientes.Post;
    DMClientes.cdsClientes.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;

//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'PETSHOP' then
//    begin
//      if Application.MessageBox('Deseja incluir o Mascote deste cliente ?','Inclusão de Mascote.',MB_YESNO) = mrYes then
//        begin
//          TelaCadastraMascote := TTelaCadastraMascote.Create(Application);
//          DMClientes.cdsMascote.Open;
//          DMClientes.cdsTipo.Open;
//          DMClientes.cdsRacas.Open;
//          DMClientes.cdsClientes.Open;
//          BrowseState(TelaCadastraMascote);
//          TelaCadastraMascote.Show;
//        end;
//    end;
end;

procedure TClientes.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TClientes.DBComboBox1Exit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBox1.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TClientes.DBEdit12Enter(Sender: TObject);
begin
  case ComboBoxTipoPessoa.ItemIndex of
    0 : DMClientes.cdsClientesCPF_CNPJ.EditMask := '999.999.999-99;0;_';
    1 : DMClientes.cdsClientesCPF_CNPJ.EditMask := '99.999999/9999-99;0;_';
  end;
end;

procedure TClientes.DBGrid1TitleClick(Column: TColumn);
var
  vIndice: string;
  vExiste: boolean;
begin
  if DMClientes.cdsClientes.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        DMClientes.cdsClientes.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with DMClientes.cdsClientes.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      DMClientes.cdsClientes.IndexName := vIndice;
    end
  else
    DMClientes.cdsClientes.IndexFieldNames := Column.FieldName;
end;

procedure TClientes.DBLookupComboBox3Click(Sender: TObject);
begin
  DMClientes.cdsLinha.Refresh;
end;

procedure TClientes.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  DMClientes.cdsClientesCIDADE.AsString    := ConvertePalavras(DMPrincipal.cdsIBGE.FieldByName('NOMEIBGE').AsString);
  DMClientes.cdsClientesCOD_IBGE.AsInteger := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsInteger;
end;

procedure TClientes.Excluir1Click(Sender: TObject);
begin
  if DMClientes.cdsClienteLinha.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsClienteLinha.Delete;
          DMClientes.cdsClienteLinha.ApplyUpdates(0);
        end;
    end;
end;

procedure TClientes.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[65] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[66] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[67] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[68] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMClientes.cdsClientes.Open;
  DMClientes.cdsLinha.Open;
  DMClientes.cdsClienteLinha.Open;

  DMPrincipal.cdsPais.Close;
  DMPrincipal.cdsPais.CommandText := ('select  * from paisibge order by (case when paisibge.cod_pais = ''1058'' then 1 else paisibge.pais end) ');
  DMPrincipal.cdsPais.Open;

  DMPrincipal.cdsIBGE.Open;
  DMPrincipal.cdsEI.Open;
end;

procedure TClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TClientes.FormCreate(Sender: TObject);
begin
//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'PETSHOP' then
//    begin
//      DMClientes.cdsMascote.Open;
//      Clientes.BitBtnMascote.Visible := True;
//    end
//  else
//    begin
//      BitBtnMascote.Visible := False;
//      Clientes.Caption      := 'Clientes';
//    end;
end;

procedure TClientes.psKeyPress(Sender: TObject; var Key: Char);
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
