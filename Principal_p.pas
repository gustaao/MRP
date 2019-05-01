unit Principal_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, JvComponentBase, JvThreadTimer, ComCtrls, StdCtrls,
  Buttons, JvExControls, JvStarfield, JvExExtCtrls, JvImage, JvImageTransform,
  jpeg, ImgList, JvAnimatedImage, JvGIFCtrl, DateUtils, AppEvnts, pngimage,
  JvXPCore, JvXPButtons, Grids, DBGrids, Mask, JvPageList;

type
  TPrincipal = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    cpVenda: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    StatusBar: TStatusBar;
    CategoryPanel3: TCategoryPanel;
    cpConfiguracoes: TCategoryPanel;
    cpClinica: TCategoryPanel;
    cpBanhoeTosa: TCategoryPanel;
    cpSair: TCategoryPanel;
    cpEspecificos: TCategoryPanel;
    cpServicos: TCategoryPanel;
    cpSuprimentos: TCategoryPanel;
    ApplicationEvents1: TApplicationEvents;
    ImageList1: TImageList;
    BitBtnFormaPagto: TJvXPButton;
    BitBtnPDV: TJvXPButton;
    BitBtnPedidos: TJvXPButton;
    BitBtnNFE: TJvXPButton;
    BitBtnBCaixa: TJvXPButton;
    BitBtnMovimentacao: TJvXPButton;
    BitBtnCarteira: TJvXPButton;
    BitBtnConfigVenda: TJvXPButton;
    BitBtnFechamento: TJvXPButton;
    BitBtnOportunidades: TJvXPButton;
    BitBtnEspecialistas: TJvXPButton;
    BitBtnAgendaBanhoTosa: TJvXPButton;
    BitBtnProcedimentos2: TJvXPButton;
    BitBtnOrdemServico: TJvXPButton;
    BitBtnProcedimentos: TJvXPButton;
    BitBtnConsulta: TJvXPButton;
    BitBtnveterinarios: TJvXPButton;
    BitBtnAgendaClinica: TJvXPButton;
    BitBtnEmpresa: TJvXPButton;
    BitBtnFornecedores: TJvXPButton;
    BitBtnGrupo: TJvXPButton;
    BitBtnSubGrupo: TJvXPButton;
    BitBtnProdutos: TJvXPButton;
    BitBtnPrazos: TJvXPButton;
    BitBtnVendedores: TJvXPButton;
    BitBtnClientes: TJvXPButton;
    BitBtnCargosFuncoes: TJvXPButton;
    BitBtnColaboradores: TJvXPButton;
    BitBtnTransportadores: TJvXPButton;
    BitBtnUsuarios: TJvXPButton;
    BitBtnRejeicao: TJvXPButton;
    BitBtnSegmentoTrabalho: TJvXPButton;
    BitBtnPlanoContas: TJvXPButton;
    BitBtnDespesaConta: TJvXPButton;
    BitBtnContasPagar: TJvXPButton;
    BitBtnContasReceber: TJvXPButton;
    BitBtnLivroCaixa: TJvXPButton;
    BitBtnComissoes: TJvXPButton;
    BitBtnNaturezaOperacao: TJvXPButton;
    BitBtnClassFiscal: TJvXPButton;
    BitBtnSitTributaria: TJvXPButton;
    BitBtnCentroCusto: TJvXPButton;
    BitBtnconfigContabil: TJvXPButton;
    BitBtnVacinas: TJvXPButton;
    BitBtnRacas: TJvXPButton;
    BitBtnConfigADM: TJvXPButton;
    BitBtnTecnica: TJvXPButton;
    BitBtnOC: TJvXPButton;
    BitBtnOC_MSG: TJvXPButton;
    BitBtnSair: TJvXPButton;
    BitBtnSobre: TJvXPButton;
    BitBtnICMS: TJvXPButton;
    BitBtnLinha: TJvXPButton;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    JvImageTransform1: TJvImageTransform;
    BitBtnMascote: TJvXPButton;
    BtnRelatorioVendas: TJvXPButton;
    BitBtnCompatibilidade: TJvXPButton;
    BitBtnENF: TJvXPButton;
    JvXPButton1: TJvXPButton;
    procedure ThreadTimerTimer(Sender: TObject);
    procedure BitBtnProdutosClick(Sender: TObject);
    procedure BitBtnFornecedoresClick(Sender: TObject);
    procedure BitBtnPDVClick(Sender: TObject);
    procedure BitBtnPedidosClick(Sender: TObject);
    procedure BitBtnGrupoClick(Sender: TObject);
    procedure BitBtnSubGrupoClick(Sender: TObject);
    procedure BitBtnClientesClick(Sender: TObject);
    procedure BitBtnEmpresaClick(Sender: TObject);
    procedure BitBtnConfigADMClick(Sender: TObject);
    procedure BitBtnAgendaBanhoTosaClick(Sender: TObject);
    procedure BitBtnAgendaClinicaClick(Sender: TObject);
    procedure BitBtnveterinariosClick(Sender: TObject);
    procedure BitBtnSobreClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRacasClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnEspecialistasClick(Sender: TObject);
    procedure BitBtnBCaixaClick(Sender: TObject);
    procedure BitBtnCarteiraClick(Sender: TObject);
    procedure BitBtnProcedimentosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnLivroCaixaClick(Sender: TObject);
    procedure BitBtnContasPagarClick(Sender: TObject);
    procedure BitBtnMovimentacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnVendedoresClick(Sender: TObject);
    procedure BitBtnPlanoContasClick(Sender: TObject);
    procedure BitBtnSitTributariaClick(Sender: TObject);
    procedure BitBtnNaturezaOperacaoClick(Sender: TObject);
    procedure BitBtnClassFiscalClick(Sender: TObject);
    procedure BitBtnNFEClick(Sender: TObject);
    procedure BitBtnContasReceberClick(Sender: TObject);
    procedure BitBtnDespesaContaClick(Sender: TObject);
    procedure BitBtnColaboradoresClick(Sender: TObject);
    procedure BitBtnCargosFuncoesClick(Sender: TObject);
    procedure BitBtnSegmentoTrabalhoClick(Sender: TObject);
    procedure BitBtnTransportadoresClick(Sender: TObject);
    procedure BitBtnTecnicaClick(Sender: TObject);
    procedure BitBtnConfigVendaClick(Sender: TObject);
    procedure BitBtnOportunidadesClick(Sender: TObject);
    procedure BitBtnPrazosClick(Sender: TObject);
    procedure cpVendaExpand(Sender: TObject);
    procedure cpBanhoeTosaExpand(Sender: TObject);
    procedure cpServicosExpand(Sender: TObject);
    procedure cpClinicaExpand(Sender: TObject);
    procedure CategoryPanel2Expand(Sender: TObject);
    procedure CategoryPanel3Expand(Sender: TObject);
    procedure cpEspecificosExpand(Sender: TObject);
    procedure cpConfiguracoesExpand(Sender: TObject);
    procedure cpSairExpand(Sender: TObject);
    procedure BitBtnOCClick(Sender: TObject);
    procedure BitBtnOC_MSGClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtnUsuariosClick(Sender: TObject);
    procedure BitBtnRejeicaoClick(Sender: TObject);
    procedure BitBtnFormaPagtoClick(Sender: TObject);
    procedure BitBtnProcedimentos2Click(Sender: TObject);
    procedure BitBtnconfigContabilClick(Sender: TObject);
    procedure BitBtnICMSClick(Sender: TObject);
    procedure BitBtnLinhaClick(Sender: TObject);
    procedure BitBtnConsultaClick(Sender: TObject);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure StatusBarClick(Sender: TObject);
    procedure BitBtnComissoesClick(Sender: TObject);
    procedure BitBtnMascoteClick(Sender: TObject);
    procedure BitBtnVacinasClick(Sender: TObject);
    procedure BtnRelatorioVendasClick(Sender: TObject);
    procedure BitBtnCompatibilidadeClick(Sender: TObject);
    procedure BitBtnENFClick(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
  private
    { Private declarations }
    //procedure EnterTAB(var Msg: Tmsg; var Handled : Boolean);
    procedure DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
    Procedure ChamaJanela(Instance: TComponentClass; Ref: TForm);
    procedure RecolhePaineis(Painel: TCategoryPanel);
    procedure CadastraOportunidadeVacinas(VarCodPet, VarDose : Integer);
  end;

var
  Principal: TPrincipal;
  VarVersao : string;
  VarDataVersao : String;
  VarCodigoUsuario : Integer;
  VarDataI, VarDataF : TDateTime;
  VarNomeUsuario : String;

  VarMeusAcessos : array[0..1000] of string;//Acessos do Usuário Logado

  VarAcessosUsuario : array[0..1000] of string;//Acessos do Usuário Pesquisado

  VarComponente: string;

const
   wVersao      = '1.5 - Beta';
   wDataVersao  = '24/05/2016';
   wNomeProjeto = 'MRP Comércio ';


implementation



uses TelaProdutos_p, TelaAcesso_p, Fornecedores_p, Mascote_p, Vendas_p, TelaEmpresa_p, TelaCustosProduto_p,
     Pedidos_p, TelaGrupo_p, TelaSubgrupo_p, Clientes_p, Funcoes_p, TelaConfigAdminstrativa_p,
     DMVenda_p, TelaAgendaBanhoeTosa_p, TelaAgendaClinica_p, TelaVeterinarios_p, TelaDespesaConta_p,
     ConsultaProdutos_p, TelaSobre_p, TelaRacas_p, DMForncedores_p, ConsultaCliente_p, TelaColaboradores_p,
     TelaCadastraTosador_p, DMClientes_p, PerguntaData_p, LivroCaixa_p, TelaContasReceber_p, Transportadores_p,
     RelatorioBoletimCaixa_p, DMPrincipal_p, TelaContaCliente_p, TelaNaturezaOperacao_p, TelaCargos_p, TelaCompatibilidade_p,
     TelaProcedimentos_p, TelaContasPagar_p, TelaMovimentacaoCaixa_p, TelaClassificacaoFiscal_p, Usuarios_p,
     TelaVendedores_p, TelaPlanoContas_p, TelaSituacaoTributaria_p, Vendas2_p, TelaNFE_p, TelaGeracaoNF_p, TelaRelatoriosVendas_p,
     TelaConfiguracaoTecnica_p, TelaConfiguracaoVenda_p, TelaOportunidadeNegocios_p, TelaOrdemCompra_p, TelaVacinas_p,
     TelaPrazos_p, TelaOrdemCompraMsg_p, TelaRecebeNF_p, TelaSegmentoTrabalho_p, TelaRejeicaoNFe_p, TelaComissoes_p,
     TelaFormaPagto_p, TelaConfiguracaoContabil_p, TelaICMSEstado_p, TelaLinhaProdutos_p, TelaConsulta_p,
     TelaCapturaXML_p;


{$R *.dfm}

procedure TPrincipal.CadastraOportunidadeVacinas(VarCodPet, VarDose : Integer);
begin




end;


procedure TPrincipal.DoEnterAsTab(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message  = WM_KEYDOWN then
  begin
    if Msg.wParam = VK_RETURN then
    begin
      keybd_event(VK_TAB, 0, 0, 0);
      Handled := true;
    end;
  end;
end;

procedure TPrincipal.RecolhePaineis(Painel: TCategoryPanel);
var i: Integer;
begin
  for i := 0 to CategoryPanelGroup1.Panels.Count -1 do
    if TCategoryPanel(CategoryPanelGroup1.Panels[i]) <> Painel then
      TCategoryPanel(CategoryPanelGroup1.Panels[i]).Collapse;
end;

procedure TPrincipal.StatusBarClick(Sender: TObject);
begin
  if TelaOportunidadeNegocios = nil then
    begin
      TelaOportunidadeNegocios := TTelaOportunidadeNegocios.Create(Application);
      TelaOportunidadeNegocios.MaskEditDataI.Text := FormatDateTime('dd/mm/yyyy',DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
      TelaOportunidadeNegocios.MaskEditDataF.Text := FormatDateTime('dd/mm/yyyy',DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
      TelaOportunidadeNegocios.BitBtnOK.Click;
      TelaOportunidadeNegocios.Show;
    end
  else
    begin
      TelaOportunidadeNegocios.BringToFront;
      TelaOportunidadeNegocios.WindowState := wsMaximized;
    end;

end;

procedure TPrincipal.StatusBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  with StatusBar.Canvas do
    begin
      FillRect(Rect);
      Font.Name := 'Arial';
      Font.Color := ClNavy;
      Font.Style := [FsBold];
      DMPrincipal.cdsOportunidadesHoje.Close;
      DMPrincipal.cdsOportunidadesHoje.FetchParams;
      DMPrincipal.cdsOportunidadesHoje.Params.ParamByName('DATA').AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
      DMPrincipal.cdsOportunidadesHoje.Open;

      if (DMPrincipal.cdsOportunidadesHoje.IsEmpty) then
        begin
          ImageList1.Draw(StatusBar.Canvas,Rect.Left+5,Rect.Top+1, 5 );
          if Panel.Index = 2 then
            TextOut(Rect.Left + 25, Rect.Top + 1,'Nenhuma Oportunidade de Negócios para Hoje');
        end
      else
        begin
          ImageList1.Draw(StatusBar.Canvas,Rect.Left+5,Rect.Top+1, 6 );
          if Panel.Index = 2 then
            TextOut(Rect.Left + 25, Rect.Top + 1,'Existe(m) Oportunidade(s) de Negócio(s) para Hoje.');
        end;
    end;
end;

procedure TPrincipal.CategoryPanel2Expand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.CategoryPanel3Expand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

Procedure TPrincipal.ChamaJanela(Instance: TComponentClass; Ref: TForm);
var i: integer;
begin
  try
    for i := 0 to MDIChildCount - 1 do
      if(Instance.ClassName = MDIChildren[i].ClassName)then
        begin
          MDIChildren[i].BringToFront;
          exit;
        end;
    Application.CreateForm(Instance, Ref);
  except
    Application.CreateForm(Instance, Ref);
  end;
end;

procedure TPrincipal.cpBanhoeTosaExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpClinicaExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpConfiguracoesExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpEspecificosExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpSairExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpServicosExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.cpVendaExpand(Sender: TObject);
begin
  RecolhePaineis(TCategoryPanel(Sender));
end;

procedure TPrincipal.BitBtnveterinariosClick(Sender: TObject);
begin
  ChamaJanela(TTelaVeterinarios,TelaVeterinarios);
end;

procedure TPrincipal.BtnRelatorioVendasClick(Sender: TObject);
begin
  ChamaJanela(TTelaRelatoriosVendas,TelaRelatoriosVendas);
end;

procedure TPrincipal.BitBtnEspecialistasClick(Sender: TObject);
begin
  ChamaJanela(TTelaCadastraTosador,TelaCadastraTosador);
end;

procedure TPrincipal.BitBtnSegmentoTrabalhoClick(Sender: TObject);
begin
  ChamaJanela(TTelaSegmentoTrabalho,TelaSegmentoTrabalho);
end;

procedure TPrincipal.BitBtnVacinasClick(Sender: TObject);
begin
  ChamaJanela(TTelaVacinas,TelaVacinas);
end;

procedure TPrincipal.BitBtnVendedoresClick(Sender: TObject);
begin
  ChamaJanela(TTelaVendedores,TelaVendedores);
end;

procedure TPrincipal.BitBtnLinhaClick(Sender: TObject);
begin
  ChamaJanela(TTelaLinhaProdutos,TelaLinhaProdutos);
end;

procedure TPrincipal.BitBtnLivroCaixaClick(Sender: TObject);
begin
  ChamaJanela(TLivroCaixa,LivroCaixa);
end;

procedure TPrincipal.BitBtnDespesaContaClick(Sender: TObject);
begin
  ChamaJanela(TTelaDespesaConta,TelaDespesaConta);
end;

procedure TPrincipal.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  try
    DMPrincipal.cdsErro.Insert;
    DMPrincipal.cdsErroCDERRO.AsInteger  := Gerar_id('GEN_ERROS_ID');
    DMPrincipal.cdsErroDATA.AsDateTime   := DMPrincipal.cdsData.FieldByName('current_date').AsDateTime;
    DMPrincipal.cdsErroFORM.AsString     := Screen.activeform.Name;
    DMPrincipal.cdsErroCONTROLE.AsString := Screen.activecontrol.Name;
    DMPrincipal.cdsErroMENSAGEM.AsString := E.MESSAGE;
    DMPrincipal.cdsErroENVIADO.AsString  := 'N';
    DMPrincipal.cdsErroUSUARIO.AsString  := VarNomeUsuario;
    DMPrincipal.cdsErro.Post;
    DMPrincipal.cdsErro.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TPrincipal.BitBtnOC_MSGClick(Sender: TObject);
begin
  ChamaJanela(TTelaOrdemCompraMsg,TelaOrdemCompraMsg);
end;

procedure TPrincipal.BitBtnCargosFuncoesClick(Sender: TObject);
begin
  ChamaJanela(TTelaCargos,TelaCargos);
end;

procedure TPrincipal.BitBtnColaboradoresClick(Sender: TObject);
begin
  ChamaJanela(TTelaColaboradores,TelaColaboradores);
end;

procedure TPrincipal.BitBtnComissoesClick(Sender: TObject);
begin
  ChamaJanela(TTelaCompatibilidade,TelaCompatibilidade);
end;

procedure TPrincipal.BitBtnCompatibilidadeClick(Sender: TObject);
begin
  ChamaJanela(TTelaCompatibilidade,TelaCompatibilidade);
end;

procedure TPrincipal.BitBtn5Click(Sender: TObject);
var i : Integer;
    VarCidade : String;
begin
  DMPrincipal.cdsIBGE.Open;
  DMPrincipal.cdsIBGE.First;
  for i := 0 to DMPrincipal.cdsIBGE.RecordCount -1  do
    begin
      VarCidade := ConvertePalavras(DMPrincipal.cdsIBGENOMEIBGE.AsString);
      DMPrincipal.cdsIBGE.Edit;
      DMPrincipal.cdsIBGENOMEIBGE.AsString := VarCidade;
      DMPrincipal.cdsIBGEPAIS.AsString     := 'Brasil';
      DMPrincipal.cdsIBGE.Post;
      DMPrincipal.cdsIBGE.Next;
    end;
  DMPrincipal.cdsIBGE.ApplyUpdates(0);
  ShowMessage('Tabela Convertida.');
end;

procedure TPrincipal.BitBtnTransportadoresClick(Sender: TObject);
begin
  ChamaJanela(TTransportadores,Transportadores);
end;

procedure TPrincipal.BitBtn7Click(Sender: TObject);
var i : Integer;
    VarSegmento : String;
begin
  DMPrincipal.cdsSegTrab.Open;
  DMPrincipal.cdsSegTrab.First;
  for i := 0 to DMPrincipal.cdsSegTrab.RecordCount -1  do
    begin
      VarSegmento := ConvertePalavras(DMPrincipal.cdsSegTrabDESCRICAO.AsString);
      DMPrincipal.cdsSegTrab.Edit;
      DMPrincipal.cdsSegTrabDESCRICAO.AsString := VarSegmento;
      DMPrincipal.cdsSegTrab.Post;
      DMPrincipal.cdsSegTrab.Next;
    end;
  DMPrincipal.cdsSegTrab.ApplyUpdates(0);
  ShowMessage('Tabela Convertida.');
end;

procedure TPrincipal.BitBtnAgendaBanhoTosaClick(Sender: TObject);
begin
  ChamaJanela(TTelaAgendaBanhoeTosa,TelaAgendaBanhoeTosa);
end;

procedure TPrincipal.BitBtnAgendaClinicaClick(Sender: TObject);
begin
  ChamaJanela(TTelaAgendaClinica,TelaAgendaClinica);
end;

procedure TPrincipal.BitBtnBCaixaClick(Sender: TObject);
begin
//  ChamaJanela(TPerguntaData,PerguntaData);
//  PerguntaData := TPerguntaData.Create(Application);
//  if PerguntaData.Showing = mrOk then
//    begin
//      RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
//      RelatorioBoletimCaixa.cdsCaixa.FetchParams;
//      RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := VarDataI;
//      RelatorioBoletimCaixa.cdsCaixa.Open;
//      RelatorioBoletimCaixa.cdsResumo.FetchParams;
//      RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := VarDataI;
//      RelatorioBoletimCaixa.cdsResumo.Open;
//      RelatorioBoletimCaixa.qTotal.Open;
//      RelatorioBoletimCaixa.QRCompositeReport1.Preview;
//    end;
end;

procedure TPrincipal.BitBtnCarteiraClick(Sender: TObject);
begin
  ChamaJanela(TTelaContaCliente,TelaContaCliente);
end;

procedure TPrincipal.BitBtnClassFiscalClick(Sender: TObject);
begin
  ChamaJanela(TTelaClassificacaoFiscal, TelaClassificacaoFiscal);
end;

procedure TPrincipal.BitBtnClientesClick(Sender: TObject);
begin
  ChamaJanela(TClientes,Clientes);
end;

procedure TPrincipal.BitBtnConfigADMClick(Sender: TObject);
begin
  ChamaJanela(TTelaConfigAdministrativa,TelaConfigAdministrativa);
end;

procedure TPrincipal.BitBtnconfigContabilClick(Sender: TObject);
begin
  ChamaJanela(TTelaConfiguracaoContabil,TelaConfiguracaoContabil);
end;

procedure TPrincipal.BitBtnContasPagarClick(Sender: TObject);
begin
  ChamaJanela(TTelaContasPagar,TelaContasPagar);
end;

procedure TPrincipal.BitBtnContasReceberClick(Sender: TObject);
begin
  ChamaJanela(TTelaContasReceber,TelaContasReceber);
end;

procedure TPrincipal.BitBtnEmpresaClick(Sender: TObject);
begin
  ChamaJanela(TTelaEmpresa,TelaEmpresa);
end;

procedure TPrincipal.BitBtnConfigVendaClick(Sender: TObject);
begin
  ChamaJanela(TTelaConfiguracaoVenda,TelaConfiguracaoVenda);
end;

procedure TPrincipal.BitBtnConsultaClick(Sender: TObject);
begin
  ChamaJanela(TTelaConsulta,TelaConsulta);
end;

procedure TPrincipal.BitBtnFormaPagtoClick(Sender: TObject);
begin
  ChamaJanela(TTelaFormaPagto,TelaFormaPagto);
end;

procedure TPrincipal.BitBtnFornecedoresClick(Sender: TObject);
begin
  ChamaJanela(TFornecedores,Fornecedores);
end;

procedure TPrincipal.BitBtnGrupoClick(Sender: TObject);
begin
  ChamaJanela(TTelaGrupo,TelaGrupo);
end;

procedure TPrincipal.BitBtnICMSClick(Sender: TObject);
begin
  ChamaJanela(TTelaICMSEstado,TelaICMSEstado);
end;

procedure TPrincipal.BitBtnMascoteClick(Sender: TObject);
begin
  ChamaJanela(TMascote,Mascote);
end;

procedure TPrincipal.BitBtnMovimentacaoClick(Sender: TObject);
begin
  ChamaJanela(TTelaMovimentacaoCaixa, TelaMovimentacaoCaixa);
end;

procedure TPrincipal.BitBtnNaturezaOperacaoClick(Sender: TObject);
begin
  ChamaJanela(TTelaNaturezaOperacao, TelaNaturezaOperacao);
end;

procedure TPrincipal.BitBtnNFEClick(Sender: TObject);
begin
  ChamaJanela(TTelaGeracaoNF,TelaGeracaoNF);
end;

procedure TPrincipal.BitBtnOCClick(Sender: TObject);
begin
  ChamaJanela(TTelaOrdemCompra,TelaOrdemCompra);
end;

procedure TPrincipal.BitBtnOportunidadesClick(Sender: TObject);
begin
  ChamaJanela(TTelaOportunidadeNegocios,TelaOportunidadeNegocios);
end;

procedure TPrincipal.BitBtnPDVClick(Sender: TObject);
begin
  if DMPrincipal.cdsEmpresaCDSEGMENTO.AsInteger = 1 then
    begin
      ChamaJanela(TVendas2,Vendas2);
    end
  else
    if Pos(Trim(IntToStr(DMPrincipal.cdsEmpresaCDSEGMENTO.AsInteger)),'2|3|4') <> 0 then
      begin
        ChamaJanela(TVendas2,Vendas2);
        CategoryPanelGroup1.Visible := False;
      end
    else
      begin
        //Comandas do São de Beleza
      end;
end;

procedure TPrincipal.BitBtnPedidosClick(Sender: TObject);
begin
  ChamaJanela(TPedidos,Pedidos);
end;

procedure TPrincipal.BitBtnPlanoContasClick(Sender: TObject);
begin
  ChamaJanela(TTelaPlanoContas,TelaPlanoContas);
end;

procedure TPrincipal.BitBtnPrazosClick(Sender: TObject);
begin
  ChamaJanela(TTelaPrazos,TelaPrazos);
end;

procedure TPrincipal.BitBtnProcedimentos2Click(Sender: TObject);
begin
  ChamaJanela(TTelaProcedimentos,TelaProcedimentos);
end;

procedure TPrincipal.BitBtnProcedimentosClick(Sender: TObject);
begin
  ChamaJanela(TTelaProcedimentos,TelaProcedimentos);
end;

procedure TPrincipal.BitBtnProdutosClick(Sender: TObject);
begin
  ChamaJanela(TTelaProdutos,TelaProdutos);
end;

procedure TPrincipal.BitBtnRacasClick(Sender: TObject);
begin
  ChamaJanela(TTelaRacas,TelaRacas);
end;

procedure TPrincipal.BitBtnRejeicaoClick(Sender: TObject);
begin
  ChamaJanela(TTelaRejeicaoNFe,TelaRejeicaoNFe);
end;

procedure TPrincipal.BitBtnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TPrincipal.BitBtnSitTributariaClick(Sender: TObject);
begin
  ChamaJanela(TTelaSituacaoTributaria,TelaSituacaoTributaria);
end;

procedure TPrincipal.BitBtnSobreClick(Sender: TObject);
begin
  TelaSobre := TTelaSobre.Create(Application);
  TelaSobre.ShowModal;
  TelaSobre.Release;
  TelaSobre := nil;
end;

procedure TPrincipal.BitBtnSubGrupoClick(Sender: TObject);
begin
  ChamaJanela(TTelaSubgrupo,TelaSubgrupo);
end;

procedure TPrincipal.BitBtnTecnicaClick(Sender: TObject);
begin
  ChamaJanela(TTelaConfiguracaoTecnica,TelaConfiguracaoTecnica);
end;

procedure TPrincipal.BitBtnUsuariosClick(Sender: TObject);
begin
  ChamaJanela(TUsuarios,Usuarios);
end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja Realmente Sair do Sistema ?','Confirmar Saida do Sistema.',MB_YESNO) = mrYes then
    Application.Terminate
  else
    Action:=caNone;
end;

procedure TPrincipal.FormCreate(Sender: TObject);
begin
  Application.OnMessage := DoEnterAsTab;
  DMPrincipal.cdsEmpresa.Open;
  DMPrincipal.cdsData.Open;
  VarCodigoUsuario         := 1;
  VarVersao                := wVersao;
  VarDataVersao            := wDataVersao;
  StatusBar.Panels[0].Text := 'Versão do Sistema: ' + VersaoExe;//VarVersao + '  ' +VarDataVersao;

  CategoryPanelGroup1.CollapseAll;


//  DMPrincipal.SQLParametros.Open;
//  DMPrincipal.SQLPF.Open;
//
//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString <> 'PETSHOP' then
//    begin
//      cpBanhoeTosa.Visible  := False;
//      cpClinica.Visible     := False;
//      cpEspecificos.Visible := False;
//      ImageFundo.Picture    := nil;
//      wCaptionFormularios   := 'Software de Gerenciamento Comercial';
//      Principal.Caption     := wCaptionFormularios;
//    end;
////  TelaAcesso := TTelaAcesso.Create(Application);
////  TelaAcesso.ShowModal;
////  FreeAndNil(TelaAcesso);
//
//
end;

procedure TPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    begin
//      Key := #0;
//      Perform(WM_NEXTDLGCTL,0,0);
//    end;
end;

procedure TPrincipal.FormShow(Sender: TObject);
begin
  TelaAcesso := TTelaAcesso.Create(Application);
  if TelaAcesso.ShowModal = MROK Then
    begin
      FreeAndNil(TelaAcesso);
      Principal.BringToFront;
      StatusBar.Panels[1].Text := VarNomeUsuario;

//      DMPrincipal.cdsOportunidades.Close;
//      DMPrincipal.cdsOportunidades.FetchParams;
//      DMPrincipal.cdsOportunidades.Params.ParamByName('DIA').AsInteger := DayOfTheMonth(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
//      DMPrincipal.cdsOportunidades.Params.ParamByName('MES').AsInteger := MonthOfTheYear(DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
//      DMPrincipal.cdsOportunidades.Open;
//      if not (DMPrincipal.cdsOportunidades.IsEmpty) then
//        begin
//          JvGIFAnimator1.Visible := True;
//          JvGIFAnimator1.Animate := True;
//          Image1.Visible         := True;
//          label1.Visible         := True;
//        end
//      else
//        begin
//          JvGIFAnimator1.Visible := False;
//          JvGIFAnimator1.Animate := False;
//          Image1.Visible         := False;
//          label1.Visible         := False;
//        end;
    end
  else
    Application.Terminate;
end;

procedure TPrincipal.JvXPButton1Click(Sender: TObject);
begin
  ChamaJanela(TTelaCustosProduto,TelaCustosProduto);
end;

procedure TPrincipal.BitBtnENFClick(Sender: TObject);
begin
  ChamaJanela(TTelaCapturaXML,TelaCapturaXML);
end;

procedure TPrincipal.ThreadTimerTimer(Sender: TObject);
begin
  StatusBar.Panels[1].Text := TimeToStr(Time);
end;

end.


{ --Códigos--

*****Mensagens de Aviso****

 Application.MessageBox('NF-e Inexistente, Favor Verificar.','Atenção', MB_OK + MB_ICONWARNING);


Somente Numero
********************************************************************************
 Var CharSet: TSysCharSet;
 begin
 CharSet:= [#8, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
********************************************************************************

com virgulas
********************************************************************************
 Var CharSet: TSysCharSet;
 begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
********************************************************************************

****Mensagens****

  Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );




****Perguntas****

  if MessageBox(Application.Handle,PWideChar(),'Pergunta',mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then

****Relatorio****
  if not (cds.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);


****Para Permitir Fechar a tela sem ter valor****
  if not BitBtnFechar.Focused then

  if (not BitBtnCancelar.Focused) then

****Zerar Array****

FillChar(VarValorParcela,SizeOf(VarValorParcela)  , 0);

********************************************************************************


********************************************************************************
//Rotina de Gravação Básica
  try
    Browse;
    if ClientDataSet.State = dsInsert then
      begin

      end;
    ClientDataSet.Post;
    ClientDataSet.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
********************************************************************************

Mascáras
********************************************************************************
###,###,###,#0.00 - DuplayFormat - para Campos Numéricos

(00)0000-00009;0;_ - EditMask    - Campos Telefone sem Gravar a Mascara
(00)0000-00009;1;_ - EditMask    - Campos Telefone Gravando a Mascara
###,###,###,#0.00  - Máscara de Valores
000.000.000-00;1;_ - CPF
00.000-000;1;_       CEP

****Campos Verdadeiro ou Falso****
(OnGetText - do Field )

  if Sender.AsInteger = 0 then
    Text := 'Não'
  else
    if Sender.AsInteger = 1 then
      Text := 'Sim';





}
