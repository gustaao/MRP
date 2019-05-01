Program Visao;

uses
  Forms,
  Principal_p in 'Principal_p.pas' {Principal},
  DMPrincipal_p in 'DMPrincipal_p.pas' {DMPrincipal: TDataModule},
  TelaProdutos_p in 'TelaProdutos_p.pas' {TelaProdutos},
  Funcoes_p in 'Funcoes_p.pas',
  Clientes_p in 'Clientes_p.pas' {Clientes},
  Mascote_p in 'Mascote_p.pas' {Mascote},
  Fornecedores_p in 'Fornecedores_p.pas' {Fornecedores},
  Pedidos_p in 'Pedidos_p.pas' {Pedidos},
  Transportadores_p in 'Transportadores_p.pas' {Transportadores},
  Usuarios_p in 'Usuarios_p.pas' {Usuarios},
  Vendas_p in 'Vendas_p.pas' {Vendas},
  Vendas_Pagamento_p in 'Vendas_Pagamento_p.pas' {Vendas_Pagamento},
  PesquisaClientes_p in 'PesquisaClientes_p.pas' {PesquisaClientes},
  TelaSubgrupo_p in 'TelaSubgrupo_p.pas' {TelaSubgrupo},
  TelaGrupo_p in 'TelaGrupo_p.pas' {TelaGrupo},
  TelaEmpresa_p in 'TelaEmpresa_p.pas' {TelaEmpresa},
  TelaConfigAdminstrativa_p in 'TelaConfigAdminstrativa_p.pas' {TelaConfigAdministrativa},
  DMVenda_p in 'DMVenda_p.pas' {DMVenda: TDataModule},
  TelaAgendaBanhoeTosa_p in 'TelaAgendaBanhoeTosa_p.pas' {TelaAgendaBanhoeTosa},
  TelaCadastraBanho_p in 'TelaCadastraBanho_p.pas' {TelaCadastraBanho},
  TelaAgendaClinica_p in 'TelaAgendaClinica_p.pas' {TelaAgendaClinica},
  TelaVeterinarios_p in 'TelaVeterinarios_p.pas' {TelaVeterinarios},
  TelaCadastraConsulta_p in 'TelaCadastraConsulta_p.pas' {TelaCadastraConsulta},
  TelaProcedimentos_p in 'TelaProcedimentos_p.pas' {TelaProcedimentos},
  ConsultaProdutos_p in 'ConsultaProdutos_p.pas' {ConsultaProdutos},
  TelaServidor_p in 'TelaServidor_p.pas' {TelaServidor},
  TelaSobre_p in 'TelaSobre_p.pas' {TelaSobre},
  TelaFoneFornecedor_p in 'TelaFoneFornecedor_p.pas' {TelaFoneFornecedor},
  TelaRacas_p in 'TelaRacas_p.pas' {TelaRacas},
  TelaFoneClientes_p in 'TelaFoneClientes_p.pas' {TelaFoneCliente},
  DMForncedores_p in 'DMForncedores_p.pas' {DMFornecedores: TDataModule},
  TelaContatoFornecedor_p in 'TelaContatoFornecedor_p.pas' {TelaContatoFornecedor},
  DMClientes_p in 'DMClientes_p.pas' {DMClientes: TDataModule},
  TelaCadastraMascote_p in 'TelaCadastraMascote_p.pas' {TelaCadastraMascote},
  ConsultaCliente_p in 'ConsultaCliente_p.pas' {ConsultaCliente},
  TelaCadastraTosador_p in 'TelaCadastraTosador_p.pas' {TelaCadastraTosador},
  TelaAberturaCaixa_p in 'TelaAberturaCaixa_p.pas' {TelaAberturaCaixa},
  TelaCaixa_p in 'TelaCaixa_p.pas' {TelaCaixa},
  RelatorioBoletimCaixa_p in 'RelatorioBoletimCaixa_p.pas' {RelatorioBoletimCaixa},
  ConsultaProdutoVenda_p in 'ConsultaProdutoVenda_p.pas' {ConsultaProdutoVenda},
  PerguntaData_p in 'PerguntaData_p.pas' {PerguntaData},
  TelaContaCliente_p in 'TelaContaCliente_p.pas' {TelaContaCliente},
  TelaAcesso_p in 'TelaAcesso_p.pas' {TelaAcesso},
  TelaContasPagar_p in 'TelaContasPagar_p.pas' {TelaContasPagar},
  LivroCaixa_p in 'LivroCaixa_p.pas' {LivroCaixa},
  TelaMovimentacaoCaixa_p in 'TelaMovimentacaoCaixa_p.pas' {TelaMovimentacaoCaixa},
  TelaPreVenda_p in '..\Biblioteca de Fontes\programacao\Projetos\TrueSafe - Versão Final\MAXTEL_EVOLUTION\TelaPreVenda_p.pas' {TelaPreVenda},
  TelaAlteraSenha_p in 'TelaAlteraSenha_p.pas' {TelaAlteraSenha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.Title := '4Patas - Software de Controle de PetShop';
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TDMVenda, DMVenda);
  Application.CreateForm(TDMFornecedores, DMFornecedores);
  Application.CreateForm(TDMClientes, DMClientes);
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
