unit TelaCustosProduto_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, ExtCtrls, JvExControls, JvXPCore,
  JvXPButtons, DBCtrls, DB, JvNavigationPane;

type
  TTelaCustosProduto = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TJvXPButton;
    BitBtnRelatorios: TJvXPButton;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    JvNavPanelHeader2: TJvNavPanelHeader;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Label30: TLabel;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    DBEdit32: TDBEdit;
    Label33: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    Label35: TLabel;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    DBEdit38: TDBEdit;
    Label39: TLabel;
    DBEdit39: TDBEdit;
    Label40: TLabel;
    DBEdit40: TDBEdit;
    Label41: TLabel;
    DBEdit41: TDBEdit;
    Label42: TLabel;
    DBEdit42: TDBEdit;
    Label43: TLabel;
    DBEdit43: TDBEdit;
    Label44: TLabel;
    DBEdit44: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure SomaCusto;
    procedure CalculaImpostos;
    procedure CalculaCustoTotal;
    procedure SomaDemaisDespesas;
  end;

var
  TelaCustosProduto: TTelaCustosProduto;

implementation

uses Principal_p, DMPrincipal_p, DMProduto_p, Funcoes_p, PesquisaClientes_p,
     ConsultaProdutos_p;

{$R *.dfm}

procedure TTelaCustosProduto.CalculaImpostos;
var VarPercentImportacao : Real;
    VarPercentIPI : Real;
    VarPercentPIS : Real;
    VarPercentCofins : Real;
    VarPercentICMS : Real;
    VarAliquotaTotal : Real;
begin
  VarPercentImportacao := 0;
  VarPercentIPI        := 0;
  VarPercentPIS        := 0;
  VarPercentCofins     := 0;
  VarPercentICMS       := 0;

  VarPercentImportacao := (DMProduto.cdsCustoIMPOSTO_IMPORTACAO.AsFloat / 100);
  VarPercentIPI        := (DMProduto.cdsCustoIPI.AsFloat / 100);
  VarPercentPIS        := (DMProduto.cdsCustoPIS.AsFloat / 100);
  VarPercentCofins     := (DMProduto.cdsCustoCOFIN.AsFloat / 100);
  VarPercentICMS       := (DMProduto.cdsCustoICMS.AsFloat / 100);
  VarAliquotaTotal     := ((1+VarPercentICMS*(VarPercentImportacao+VarPercentIPI*(1+VarPercentImportacao)))/
                          ((1-VarPercentPIS-VarPercentCofins)*(1-VarPercentICMS)));

  DMProduto.cdsCustoVALOR_PIS.AsFloat    := VarPercentPIS*(DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat*VarAliquotaTotal);
  DMProduto.cdsCustoVALOR_COFINS.AsFloat := VarPercentCofins*(DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat*VarAliquotaTotal);
  DMProduto.cdsCustoVALOR_ICMS.AsFloat   := (((DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat +
                                               DMProduto.cdsCustoVALOR_IMPOSTO_IMPORTACAO.AsFloat +
                                               DMProduto.cdsCustoVALOR_IPI.AsFloat +
                                               DMProduto.cdsCustoVALOR_PIS.AsFloat +
                                               DMProduto.cdsCustoVALOR_COFINS.AsFloat+
                                               DMProduto.cdsCustoTAXA_SISCOMEX.AsFloat)/0.82)*VarPercentICMS);


end;

procedure TTelaCustosProduto.SomaCusto;
begin
  DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat := DMProduto.cdsCustoVALOR_DAP.AsFloat                 +
                                               DMProduto.cdsCustoFRETE_INERNACIONAL.AsFloat        +
                                               DMProduto.cdsCustoDESPESAS_ORIGEM.AsFloat           +
                                               DMProduto.cdsCustoSEGURO_FRETE_INTERNACIONAL.AsFloat+
                                               DMProduto.cdsCustoTHC.AsFloat;
end;

procedure TTelaCustosProduto.CalculaCustoTotal;
begin
  DMProduto.cdsCustoCUSTO_SUBTOTAL.AsFloat := DMProduto.cdsCustoVALOR_IMPOSTO_IMPORTACAO.AsFloat +
                                              DMProduto.cdsCustoVALOR_IPI.AsFloat +
                                              DMProduto.cdsCustoVALOR_PIS.AsFloat +
                                              DMProduto.cdsCustoVALOR_COFINS.AsFloat +
                                              DMProduto.cdsCustoTAXA_SISCOMEX.AsFloat +
                                              DMProduto.cdsCustoVALOR_ICMS.AsFloat +
                                              DMProduto.cdsCustoFRETE_INTERNO.AsFloat +
                                              DMProduto.cdsCustoCOMISSAO.AsFloat +
                                              DMProduto.cdsCustoSDA.AsFloat +
                                              DMProduto.cdsCustoDESEMBARACO.AsFloat +
                                              DMProduto.cdsCustoTAXA_DESCONSOLIDACAO.AsFloat;

  DMProduto.cdsCustoCUSTO_TOTAL.AsFloat := DMProduto.cdsCustoCUSTO_SUBTOTAL.AsFloat + DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat;
end;

procedure TTelaCustosProduto.SomaDemaisDespesas;
begin
  DMProduto.cdsCustoCUSTO_SUBTOTAL2.AsFloat := DMProduto.cdsCustoVALOR_DEMAIS_DESPESAS.AsFloat +
                                               DMProduto.cdsCustoVALOR_SEGURO.AsFloat +
                                               DMProduto.cdsCustoPEDAGIO.AsFloat;
end;

procedure TTelaCustosProduto.Browse;
begin
//  if (VarMeusAcessos[70] = '001') then
//    BitBtnIncluir.Enabled := True;
//
//  if VarMeusAcessos[71] = '001' then
//    BitBtnExcluir.Enabled := True;
//
//  if VarMeusAcessos[72] = '001' then
//    BitBtnAlterar.Enabled := True;
//
//  if VarMeusAcessos[73] = '001' then
//    BitBtnRelatorios.Enabled := True;

  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnRelatorios.Enabled := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaCustosProduto.DBEdit10Exit(Sender: TObject);
begin
  SomaCusto;
end;

procedure TTelaCustosProduto.DBEdit11Exit(Sender: TObject);
begin
  SomaCusto;
end;

procedure TTelaCustosProduto.DBEdit12Exit(Sender: TObject);
begin
  SomaCusto;
end;

procedure TTelaCustosProduto.DBEdit13Exit(Sender: TObject);
begin
  SomaCusto;
end;

procedure TTelaCustosProduto.DBEdit14Exit(Sender: TObject);
begin
  SomaCusto;
end;

procedure TTelaCustosProduto.DBEdit16Exit(Sender: TObject);
begin
  DMProduto.cdsCustoVALOR_IMPOSTO_IMPORTACAO.AsFloat := ((DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat * DMProduto.cdsCustoIMPOSTO_IMPORTACAO.AsFloat)/100);
end;

procedure TTelaCustosProduto.DBEdit18Exit(Sender: TObject);
begin
  DMProduto.cdsCustoVALOR_IPI.AsFloat := (DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat + DMProduto.cdsCustoVALOR_IMPOSTO_IMPORTACAO.AsFloat);
  DMProduto.cdsCustoVALOR_IPI.AsFloat := ((DMProduto.cdsCustoVALOR_IPI.AsFloat * DMProduto.cdsCustoIPI.AsFloat)/100);
end;

procedure TTelaCustosProduto.DBEdit19Exit(Sender: TObject);
begin
//  DMProduto.cdsCustoVALOR_IPI.AsFloat := (DMProduto.cdsCustoVALOR_ADUANEIRO.AsFloat          +
//                                          DMProduto.cdsCustoVALOR_IMPOSTO_IMPORTACAO.AsFloat +
//                                          DMProduto.cdsCustoVALOR_IPI.AsFloat);
//  DMProduto.cdsCustoVALOR_IPI.AsFloat := ((DMProduto.cdsCustoVALOR_IPI.AsFloat * DMProduto.cdsCustoIPI.AsFloat)/100);
end;

procedure TTelaCustosProduto.DBEdit22Exit(Sender: TObject);
begin
  CalculaImpostos;
end;

procedure TTelaCustosProduto.DBEdit31Exit(Sender: TObject);
begin
  CalculaCustoTotal;
end;

procedure TTelaCustosProduto.DBEdit35Exit(Sender: TObject);
begin
  SomaDemaisDespesas;
end;

procedure TTelaCustosProduto.DBEdit36Exit(Sender: TObject);
begin
  SomaDemaisDespesas;
end;

procedure TTelaCustosProduto.DBEdit37Exit(Sender: TObject);
begin
  DMProduto.cdsCustoVALOR_DAS.AsFloat := ((DMProduto.cdsCustoCUSTO_TOTAL.AsFloat * DMProduto.cdsCustoDAS.AsFloat)/100);
end;

procedure TTelaCustosProduto.DBEdit39Exit(Sender: TObject);
begin
  DMProduto.cdsCustoVALOR_VENDA.AsFloat := (DMProduto.cdsCustoCUSTO_TOTAL.AsFloat *(1+(DMProduto.cdsCustoLUCRO.AsFloat/100)));
end;

procedure TTelaCustosProduto.DBEdit3Exit(Sender: TObject);
begin
  DMProduto.qPesquisa.Active := False;
  DMProduto.qPesquisa.SQL.Clear;
  DMProduto.qPesquisa.SQL.Add('select clientes.apelido ');
  DMProduto.qPesquisa.SQL.Add('from clientes ');
  DMProduto.qPesquisa.SQL.Add('where clientes.cdpessoa = '''+DMProduto.cdsCustoCDCLIENTE.AsString+''' ');
  DMProduto.qPesquisa.Active := True;
  if Trim(DMProduto.qPesquisa.FieldByName('APELIDO').AsString) = '' then
    begin
      Application.MessageBox('Nenhum Registro Encontrado.', 'Aviso.',MB_OK );
      DBEdit3.SetFocus;
    end
  else
    DMProduto.cdsCustoNOME.AsString := DMProduto.qPesquisa.FieldByName('APELIDO').AsString;
end;

procedure TTelaCustosProduto.DBEdit40Exit(Sender: TObject);
begin
  DMProduto.cdsCustoLUCRO.AsFloat := (DMProduto.cdsCustoVALOR_VENDA.AsFloat - DMProduto.cdsCustoCUSTO_TOTAL.AsFloat);
  DMProduto.cdsCustoLUCRO.AsFloat :=  DMProduto.cdsCustoLUCRO.AsFloat/DMProduto.cdsCustoCUSTO_TOTAL.AsFloat;
  DMProduto.cdsCustoLUCRO.AsFloat :=  DMProduto.cdsCustoLUCRO.AsFloat * 100;
end;

procedure TTelaCustosProduto.DBEdit41Exit(Sender: TObject);
begin
    DMProduto.cdsCustoVALOR_VENDA_DESCONTO.AsFloat := (DMProduto.cdsCustoVALOR_VENDA.AsFloat * ((100 - DMProduto.cdsCustoDESCONTO.AsFloat)/100));
end;

procedure TTelaCustosProduto.DBEdit43Exit(Sender: TObject);
begin
  SomaDemaisDespesas;
end;

procedure TTelaCustosProduto.DBEdit5Exit(Sender: TObject);
begin
  DMProduto.qPesquisa.Active := False;
  DMProduto.qPesquisa.SQL.Clear;
  DMProduto.qPesquisa.SQL.Add('select * ');
  DMProduto.qPesquisa.SQL.Add('from produtos ');
  DMProduto.qPesquisa.SQL.Add('where produtos.cdproduto = '''+DMProduto.cdsCustoCDPRODUTO.AsString+''' ');
  DMProduto.qPesquisa.Active := True;
  if Trim(DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString) = '' then
    begin
      Application.MessageBox('Nenhum Registro Encontrado.', 'Aviso.',MB_OK );
      DBEdit5.SetFocus;
    end
  else
    DMProduto.cdsCustoPRODUTO.AsString := DMProduto.qPesquisa.FieldByName('DESCRICAO').AsString;
end;

procedure TTelaCustosProduto.DBEdit9Exit(Sender: TObject);
var VarValorcompra : Real;
    VarValorDesconto : Real;
begin
  VarValorDesconto := ((DMProduto.cdsCustoVALOR_CUSTO.AsFloat * DMProduto.cdsCustoDESCONTO_DISTRIBUIDOR.AsFloat)/100);
  VarValorcompra   := ((DMProduto.cdsCustoVALOR_CUSTO.AsFloat - VarValorDesconto)*DMProduto.cdsCustoTAXA_CAMBIO.AsFloat);

  DMProduto.cdsCustoVALOR_DAP.AsFloat := VarValorcompra;
end;

procedure TTelaCustosProduto.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaCustosProduto.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMProduto.cdsCusto.Edit;
end;

procedure TTelaCustosProduto.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMProduto.cdsCusto.Cancel;
end;

procedure TTelaCustosProduto.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMProduto.cdsCusto.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMProduto.cdsCusto.Delete;
          DMProduto.cdsCusto.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCustosProduto.BitbtnGeralClick(Sender: TObject);
begin
  DMProduto.cdsCusto.Filtered := False;
  DMProduto.cdsCusto.Refresh;
end;

procedure TTelaCustosProduto.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMProduto.cdsCusto.State = dsInsert then
      begin
        DMProduto.cdsCustoCDCUSTO.AsInteger        := Gerar_id('GEN_CUSTOS_PRODUTO_ID');
        DMProduto.cdsCustoCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if DMProduto.cdsCusto.State = dsEdit then
        begin
          DMProduto.cdsCustoALTERADO_POR.AsString  := VarNomeUsuario;
          DMProduto.cdsCustoALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;
    DMProduto.cdsCusto.Post;
    DMProduto.cdsCusto.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaCustosProduto.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMProduto.cdsCusto.Insert;
  DMProduto.cdsCustoCADASTRADO_POR.AsString := VarNomeUsuario;
  DBEdit2.SetFocus;
end;

procedure TTelaCustosProduto.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMProduto.cdsCusto.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMProduto.cdsCusto.Filter := 'UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        1 : DMProduto.cdsCusto.Filter := 'UPPER(NOME)      LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : DMProduto.cdsCusto.Filter := 'UPPER(PRODUTO)   LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      DMProduto.cdsCusto.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaCustosProduto.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCustosProduto.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
//  if VarMeusAcessos[70] <> '001' then
//    BitBtnIncluir.Enabled := False;
//
//  if VarMeusAcessos[71] <> '001' then
//    BitBtnExcluir.Enabled := False;
//
//  if VarMeusAcessos[72] <> '001' then
//    BitBtnAlterar.Enabled := False;
//
//  if VarMeusAcessos[73] <> '001' then
//    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMProduto.cdsCusto.Open;
end;

procedure TTelaCustosProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaCustosProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit3' then
        begin
          PesquisaClientes := TPesquisaClientes.Create(Application);
          PesquisaClientes.ShowModal;
          DMProduto.cdsCustoNOME.AsString       := Trim(PesquisaClientes.cdsClientesAPELIDO.AsString);
          DMProduto.cdsCustoCDCLIENTE.AsInteger := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          FreeAndNil(PesquisaClientes);
          DBEdit3.SetFocus;
        end;

      if VarComponente = 'DBEdit5' then
        begin
          ConsultaProdutos := TConsultaProdutos.Create(Application);
          ConsultaProdutos.ShowModal;
          DMProduto.cdsCustoPRODUTO.AsString    := Trim(ConsultaProdutos.cdsProdutosDESCRICAO.AsString);
          DMProduto.cdsCustoCDPRODUTO.AsInteger := ConsultaProdutos.cdsProdutosCDPRODUTO.AsInteger;
          FreeAndNil(ConsultaProdutos);
          DBEdit5.SetFocus;
        end;
    end;
end;

end.
