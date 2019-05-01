unit RelatorioCtasRecebidasPeriodo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls, ExtCtrls;

type
  TRelatorioCtasRecebidasPeriodo = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    qCtasReceber: TSQLQuery;
    dspCtasReceber: TDataSetProvider;
    cdsCtasReceber: TClientDataSet;
    dsCtasReceber: TDataSource;
    cdsCtasReceberCDCTAS_RECEBER: TIntegerField;
    cdsCtasReceberCDPEDIDO: TIntegerField;
    cdsCtasReceberDATA: TDateField;
    cdsCtasReceberVALOR: TFMTBCDField;
    cdsCtasReceberVENCIMENTO: TDateField;
    cdsCtasReceberTIPO_VENDA: TStringField;
    cdsCtasReceberDATA_RECEBIMENTO: TDateField;
    cdsCtasReceberLIQUIDADO: TIntegerField;
    cdsCtasReceberLIQUIDADO_POR: TStringField;
    cdsCtasReceberLIQUIDADO_EM: TDateField;
    cdsCtasReceberCDPLANO_CONTAS: TIntegerField;
    cdsCtasReceberPARCELA: TIntegerField;
    cdsCtasReceberVALOR_RECEBIDO: TFMTBCDField;
    cdsCtasReceberVALOR_JUROS: TFMTBCDField;
    cdsCtasReceberVALOR_ABATIMENTO: TFMTBCDField;
    cdsCtasReceberCDPORTADOR: TIntegerField;
    cdsCtasReceberCADASTRADO_POR: TStringField;
    cdsCtasReceberCADASTRADO_EM: TSQLTimeStampField;
    cdsCtasReceberCDCONTA_DESTINO: TIntegerField;
    cdsCtasReceberCONTA_DESTINO: TStringField;
    cdsCtasReceberDESCRICAO_CONTA_DESTINO: TStringField;
    cdsCtasReceberNOME: TStringField;
    cdsCtasReceberDESCRICAO_CONTA: TStringField;
    cdsCtasReceberCONTA: TStringField;
    cdsCtasReceberPORTADOR: TStringField;
    QRDBText6: TQRDBText;
    cdsCtasReceberCDPESSOA: TIntegerField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ContasRecebidas;
    procedure ContasaReceber;
    procedure ContasNaoRecebidas;
  end;

var
  RelatorioCtasRecebidasPeriodo: TRelatorioCtasRecebidasPeriodo;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}

procedure TRelatorioCtasRecebidasPeriodo.ContasRecebidas;
begin
  QRLabelTitulo.Caption  := 'Relatório de Contas Recebidas x Período';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

  QRExpr1.Expression     := 'SUM(cdsCtasReceber.VALOR_RECEBIDO)';
  QRLabel7.Left          := QRDBText3.Left;
  QRExpr1.Left           := QRDBText6.Left;

  QRExpr2.Expression     := 'SUM(cdsCtasReceber.VALOR_RECEBIDO)';
  QRLabel6.Left          := QRDBText3.Left;
  QRExpr2.Left           := QRDBText6.Left;


  qCtasReceber.Active := False;
  qCtasReceber.SQL.Clear;
  qCtasReceber.SQL.Add('select ctas_receber.cdctas_receber, ctas_receber.cdpedido,');
  qCtasReceber.SQL.Add('       ctas_receber.data, ctas_receber.valor, ctas_receber.vencimento,');
  qCtasReceber.SQL.Add('       ctas_receber.tipo_venda, ctas_receber.data_recebimento,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado,  ctas_receber.liquidado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado_em, ctas_receber.cdplano_contas,');
  qCtasReceber.SQL.Add('       coalesce(ctas_receber.parcela,1)as parcela, ctas_receber.valor_recebido,');
  qCtasReceber.SQL.Add('       ctas_receber.valor_juros, ctas_receber.valor_abatimento,');
  qCtasReceber.SQL.Add('       ctas_receber.cdportador, ctas_receber.cadastrado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.cadastrado_em, ctas_receber.cdconta_destino,');
  qCtasReceber.SQL.Add('       plc.conta as conta_destino, ctas_receber.cdpessoa,');
  qCtasReceber.SQL.Add('       plc.descricao_conta as descricao_conta_destino,');
  qCtasReceber.SQL.Add('      (select nome from ( select c.nome,c.cdpessoa from clientes c union');
  qCtasReceber.SQL.Add('                          select f.nome, f.cdpessoa from fornecedores f union');
  qCtasReceber.SQL.Add('                          select t.nome, t.cdpessoa from transportadores t)');
  qCtasReceber.SQL.Add('       where cdpessoa = ctas_receber.cdpessoa ),');
  qCtasReceber.SQL.Add('       plano_contas.descricao_conta, plano_contas.conta, portador.portador');
  qCtasReceber.SQL.Add('from ctas_receber   ');
  qCtasReceber.SQL.Add('left join pedidos on pedidos.cdpedido = ctas_receber.cdpedido ');
  qCtasReceber.SQL.Add('left join plano_contas on plano_contas.cdplano_contas = ctas_receber.cdplano_contas');
  qCtasReceber.SQL.Add('left join plano_contas plc on plc.cdplano_contas = ctas_receber.cdconta_destino');
  qCtasReceber.SQL.Add('left join portador on portador.cdportador = ctas_receber.cdportador');
  qCtasReceber.SQL.Add('where ctas_receber.data_recebimento between :dataI and :dataf');
  qCtasReceber.SQL.Add('and (ctas_receber.liquidado = 1)');
  qCtasReceber.Params.ParamByName('DATAI').DataType := ftDate;
  qCtasReceber.Params.ParamByName('DATAF').DataType := ftDate;

  cdsCtasReceber.Close;
  cdsCtasReceber.FetchParams;
  cdsCtasReceber.Params.ParamByName('DATAI').AsDateTime := VarDataI;
  cdsCtasReceber.Params.ParamByName('DATAF').AsDateTime := VarDataF;
  cdsCtasReceber.Open;

  if not(cdsCtasReceber.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

procedure TRelatorioCtasRecebidasPeriodo.ContasaReceber;
begin
  QRLabelTitulo.Caption  := 'Relatório de Contas a Receber x Período';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

  QRGroup1.Expression    := 'cdsCtasReceber.VENCIMENTO';
  QRDBText2.DataField    := 'VENCIMENTO';

  QRExpr1.Expression     := 'SUM(cdsCtasReceber.VALOR)';
  QRLabel7.Left          := QRDBText5.Left;
  QRExpr1.Left           := 465;

  QRLabel6.Left          := QRDBText5.Left;
  QRExpr2.Expression     := 'SUM(cdsCtasReceber.VALOR)';
  QRExpr2.Left           := 465;


  qCtasReceber.Active := False;
  qCtasReceber.SQL.Clear;
  qCtasReceber.SQL.Add('select ctas_receber.cdctas_receber, ctas_receber.cdpedido,');
  qCtasReceber.SQL.Add('       ctas_receber.data, ctas_receber.valor, ctas_receber.vencimento,');
  qCtasReceber.SQL.Add('       ctas_receber.tipo_venda, ctas_receber.data_recebimento,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado,  ctas_receber.liquidado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado_em, ctas_receber.cdplano_contas,');
  qCtasReceber.SQL.Add('       coalesce(ctas_receber.parcela,1)as parcela, ctas_receber.valor_recebido,');
  qCtasReceber.SQL.Add('       ctas_receber.valor_juros, ctas_receber.valor_abatimento,');
  qCtasReceber.SQL.Add('       ctas_receber.cdportador, ctas_receber.cadastrado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.cadastrado_em, ctas_receber.cdconta_destino,');
  qCtasReceber.SQL.Add('       plc.conta as conta_destino, ctas_receber.cdpessoa,');
  qCtasReceber.SQL.Add('       plc.descricao_conta as descricao_conta_destino,');
  qCtasReceber.SQL.Add('      (select nome from ( select c.nome,c.cdpessoa from clientes c union');
  qCtasReceber.SQL.Add('                          select f.nome, f.cdpessoa from fornecedores f union');
  qCtasReceber.SQL.Add('                          select t.nome, t.cdpessoa from transportadores t)');
  qCtasReceber.SQL.Add('       where cdpessoa = ctas_receber.cdpessoa ),');
  qCtasReceber.SQL.Add('       plano_contas.descricao_conta, plano_contas.conta, portador.portador');
  qCtasReceber.SQL.Add('from ctas_receber   ');
  qCtasReceber.SQL.Add('left join pedidos on pedidos.cdpedido = ctas_receber.cdpedido ');
  qCtasReceber.SQL.Add('left join plano_contas on plano_contas.cdplano_contas = ctas_receber.cdplano_contas');
  qCtasReceber.SQL.Add('left join plano_contas plc on plc.cdplano_contas = ctas_receber.cdconta_destino');
  qCtasReceber.SQL.Add('left join portador on portador.cdportador = ctas_receber.cdportador');
  qCtasReceber.SQL.Add('where ctas_receber.vencimento between :dataI and :dataf');
  qCtasReceber.Params.ParamByName('DATAI').DataType := ftDate;
  qCtasReceber.Params.ParamByName('DATAF').DataType := ftDate;

  cdsCtasReceber.Close;
  cdsCtasReceber.FetchParams;
  cdsCtasReceber.Params.ParamByName('DATAI').AsDateTime := VarDataI;
  cdsCtasReceber.Params.ParamByName('DATAF').AsDateTime := VarDataF;
  cdsCtasReceber.Open;

  if not(cdsCtasReceber.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

procedure TRelatorioCtasRecebidasPeriodo.ContasNaoRecebidas;
begin
  QRLabelTitulo.Caption  := 'Relatório de Contas Atrasadas x Período';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);
  QRGroup1.Expression    := 'cdsCtasReceber.VENCIMENTO';
  QRDBText2.DataField    := 'VENCIMENTO';

  QRExpr1.Expression     := 'SUM(cdsCtasReceber.VALOR)';
  QRLabel7.Left          := QRDBText5.Left;
  QRExpr1.Left           := 465;

  QRLabel6.Left          := QRDBText5.Left;
  QRExpr2.Expression     := 'SUM(cdsCtasReceber.VALOR)';
  QRExpr2.Left           := 465;


  qCtasReceber.Active := False;
  qCtasReceber.SQL.Clear;
  qCtasReceber.SQL.Add('select ctas_receber.cdctas_receber, ctas_receber.cdpedido,');
  qCtasReceber.SQL.Add('       ctas_receber.data, ctas_receber.valor, ctas_receber.vencimento,');
  qCtasReceber.SQL.Add('       ctas_receber.tipo_venda, ctas_receber.data_recebimento,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado,  ctas_receber.liquidado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.liquidado_em, ctas_receber.cdplano_contas,');
  qCtasReceber.SQL.Add('       coalesce(ctas_receber.parcela,1)as parcela, ctas_receber.valor_recebido,');
  qCtasReceber.SQL.Add('       ctas_receber.valor_juros, ctas_receber.valor_abatimento,');
  qCtasReceber.SQL.Add('       ctas_receber.cdportador, ctas_receber.cadastrado_por,');
  qCtasReceber.SQL.Add('       ctas_receber.cadastrado_em, ctas_receber.cdconta_destino,');
  qCtasReceber.SQL.Add('       plc.conta as conta_destino, ctas_receber.cdpessoa,');
  qCtasReceber.SQL.Add('       plc.descricao_conta as descricao_conta_destino,');
  qCtasReceber.SQL.Add('      (select nome from ( select c.nome,c.cdpessoa from clientes c union');
  qCtasReceber.SQL.Add('                          select f.nome, f.cdpessoa from fornecedores f union');
  qCtasReceber.SQL.Add('                          select t.nome, t.cdpessoa from transportadores t)');
  qCtasReceber.SQL.Add('       where cdpessoa = ctas_receber.cdpessoa ),');
  qCtasReceber.SQL.Add('       plano_contas.descricao_conta, plano_contas.conta, portador.portador');
  qCtasReceber.SQL.Add('from ctas_receber   ');
  qCtasReceber.SQL.Add('left join pedidos on pedidos.cdpedido = ctas_receber.cdpedido ');
  qCtasReceber.SQL.Add('left join plano_contas on plano_contas.cdplano_contas = ctas_receber.cdplano_contas');
  qCtasReceber.SQL.Add('left join plano_contas plc on plc.cdplano_contas = ctas_receber.cdconta_destino');
  qCtasReceber.SQL.Add('left join portador on portador.cdportador = ctas_receber.cdportador');
  qCtasReceber.SQL.Add('where ctas_receber.vencimento between :dataI and :dataf');
  qCtasReceber.SQL.Add('and (ctas_receber.liquidado <> 1) or (ctas_receber.liquidado is null) ');
  qCtasReceber.Params.ParamByName('DATAI').DataType := ftDate;
  qCtasReceber.Params.ParamByName('DATAF').DataType := ftDate;

  cdsCtasReceber.Close;
  cdsCtasReceber.FetchParams;
  cdsCtasReceber.Params.ParamByName('DATAI').AsDateTime := VarDataI;
  cdsCtasReceber.Params.ParamByName('DATAF').AsDateTime := VarDataF;
  cdsCtasReceber.Open;

  if not(cdsCtasReceber.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;




end.
