object DMVenda: TDMVenda
  OldCreateOrder = False
  Height = 480
  Width = 1219
  object qConfG: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_gerais'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 39
    Top = 160
  end
  object dspConfG: TDataSetProvider
    DataSet = qConfG
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 36
    Top = 114
  end
  object cdsConfG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfG'
    Left = 38
    Top = 65
  end
  object dsConfG: TDataSource
    DataSet = cdsConfG
    Left = 36
    Top = 18
  end
  object qEmpresa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from empresa')
    SQLConnection = DMPrincipal.SQLCon
    Left = 109
    Top = 163
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qEmpresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 109
    Top = 120
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 110
    Top = 67
    object cdsEmpresaCDEMPRESA: TIntegerField
      FieldName = 'CDEMPRESA'
      Required = True
    end
    object cdsEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object cdsEmpresaAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 13
    end
    object cdsEmpresaIE: TStringField
      FieldName = 'IE'
      Size = 10
    end
    object cdsEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Size = 1
    end
    object cdsEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      FixedChar = True
      Size = 8
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 106
    Top = 20
  end
  object qItensTMP: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select'
      '       pit.cdpedido_itens_temp,'
      '       pit.cdpedido_temp,'
      '       pit.cdproduto,'
      '       pit.valor_unitario,'
      '       pit.qtd,'
      '       pit.valor_total,'
      '       pit.subtotal,'
      '       pit.desconto,'
      '       pit.acrescimo,'
      '       pit.cdvendedor,'
      '       pit.contador,'
      '       produtos.descricao,'
      '       produtos.unid_saida,'
      '       produtos.tipo_un_saida,'
      '       produtos.cdbarras'
      'from pedido_itens_temp pit'
      'inner join produtos on produtos.cdproduto = pit.cdproduto'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 327
    Top = 163
    object qItensTMPCDPEDIDO_ITENS_TEMP: TIntegerField
      FieldName = 'CDPEDIDO_ITENS_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qItensTMPCDPEDIDO_TEMP: TIntegerField
      FieldName = 'CDPEDIDO_TEMP'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qItensTMPCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qItensTMPQTD: TFloatField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qItensTMPSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qItensTMPDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object qItensTMPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qItensTMPUNID_SAIDA: TFloatField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object qItensTMPTIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qItensTMPCDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
  end
  object dspItensTMP: TDataSetProvider
    DataSet = qItensTMP
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspItensTMPGetTableName
    Left = 323
    Top = 114
  end
  object cdsItensTMP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensTMP'
    AfterOpen = cdsItensTMPAfterOpen
    Left = 324
    Top = 70
    object cdsItensTMPCDPEDIDO_ITENS_TEMP: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPEDIDO_ITENS_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItensTMPCDPEDIDO_TEMP: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO_TEMP'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsItensTMPCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItensTMPVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTMPQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensTMPVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTMPSUBTOTAL: TFMTBCDField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTMPDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensTMPACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensTMPCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItensTMPCONTADOR: TIntegerField
      DisplayLabel = 'Contador:'
      FieldName = 'CONTADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsItensTMPDESCRICAO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsItensTMPUNID_SAIDA: TFloatField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object cdsItensTMPTIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsItensTMPCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras:'
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
  end
  object dsItensTMP: TDataSource
    DataSet = cdsItensTMP
    Left = 323
    Top = 28
  end
  object qConFiscal: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_financeira'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 39
    Top = 360
  end
  object dspConFiscal: TDataSetProvider
    DataSet = qConFiscal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 36
    Top = 314
  end
  object cdsConFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConFiscal'
    Left = 38
    Top = 265
    object cdsConFiscalCDCONFIG_FINANCEIRA: TIntegerField
      FieldName = 'CDCONFIG_FINANCEIRA'
      Required = True
    end
    object cdsConFiscalIMPRESSORA_FICAL: TIntegerField
      FieldName = 'IMPRESSORA_FICAL'
    end
    object cdsConFiscalTIPO_IMPRESSORA: TStringField
      FieldName = 'TIPO_IMPRESSORA'
      Size = 35
    end
  end
  object dsConFiscal: TDataSource
    DataSet = cdsConFiscal
    Left = 36
    Top = 218
  end
  object QEmpty: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select pedidos_temp.cdpedido_temp,'
      '       pedidos_temp.cdcaixa,'
      '       pedidos_temp.cdvendedor,'
      '       pedidos_temp.cdusuario,'
      '       pedidos_temp.cdcliente,'
      '       Pedidos_temp.data,'
      '       pedidos_temp.hora,'
      '       pedidos_temp.qtd,'
      '       pedidos_temp.valor_venda,'
      '       pedidos_temp.subtotal,'
      '       pedidos_temp.desconto,'
      '       pedidos_temp.acrescimo,'
      '       pedidos_temp.valortotal,'
      '       pedidos_temp.nf_emitida,'
      '       pedidos_temp.cdpagamento,'
      '       vendedores.nome as vendedor,'
      '       vendedores.comissao,'
      '       usuarios.nome as usuario,'
      '       clientes.apelido'
      'from pedidos_temp'
      
        'inner join vendedores on vendedores.cdvendedor = pedidos_temp.cd' +
        'vendedor'
      
        'inner join usuarios on usuarios.cdusuario = pedidos_temp.cdusuar' +
        'io'
      
        'inner join clientes on clientes.cdcliente = pedidos_temp.cdusuar' +
        'io'
      ''
      ''
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 172
    Top = 22
    object IntegerField1: TIntegerField
      FieldName = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField2: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object TimeField1: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object SingleField1: TSingleField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object SingleField2: TSingleField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object SingleField3: TSingleField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object IntegerField4: TIntegerField
      FieldName = 'NF_EMITIDA'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField5: TIntegerField
      FieldName = 'CDPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object SingleField4: TSingleField
      FieldName = 'COMISSAO'
      ProviderFlags = []
    end
    object StringField2: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = []
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'CDPEDIDO_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'CDCAIXA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qMovimenta: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select mp.cdmovimento,'
      '       mp.cdproduto,'
      '       mp.data,'
      '       mp.hora,'
      '       mp.movimento,'
      '       mp.saldo_anterior,'
      '       mp.saida,'
      '       mp.saldo_atual,'
      '       mp.cdusuario'
      'from movimentacao_produto mp')
    SQLConnection = DMPrincipal.SQLCon
    Left = 485
    Top = 161
  end
  object dspMovimenta: TDataSetProvider
    DataSet = qMovimenta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 484
    Top = 113
  end
  object cdsMovimenta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimenta'
    Left = 484
    Top = 62
    object cdsMovimentaCDMOVIMENTO: TIntegerField
      FieldName = 'CDMOVIMENTO'
      Required = True
    end
    object cdsMovimentaCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
    end
    object cdsMovimentaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsMovimentaHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsMovimentaMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 35
    end
    object cdsMovimentaSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
    end
    object cdsMovimentaSAIDA: TFloatField
      FieldName = 'SAIDA'
    end
    object cdsMovimentaSALDO_ATUAL: TFloatField
      FieldName = 'SALDO_ATUAL'
    end
    object cdsMovimentaCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
    end
  end
  object dsMovimenta: TDataSource
    DataSet = cdsMovimenta
    Left = 483
    Top = 20
  end
  object qPedidosPag: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pp.cdpedidos_pagamento,'
      '       pp.cdpedido,'
      '       pp.cdpagamento,'
      '       pp.valor_pago,'
      '       pp.data,'
      '       tp.pagamento'
      'from pedidos_pagamento pp'
      
        'left join pagamentos tp on tp.cdpagamento = pp.cdpedidos_pagamen' +
        'to'
      'where pp.cdpedido = :cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 231
    Top = 366
    object qPedidosPagCDPEDIDOS_PAGAMENTO: TIntegerField
      FieldName = 'CDPEDIDOS_PAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidosPagCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosPagCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosPagVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qPedidosPagPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      ProviderFlags = []
      Size = 35
    end
    object qPedidosPagDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
  end
  object cdsPedidosPag: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDPEDIDO'
    MasterFields = 'CDPEDIDO_TEMP'
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPedidosPag'
    Left = 229
    Top = 265
    object cdsPedidosPagCDPEDIDOS_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPEDIDOS_PAGAMENTO'
      Required = True
    end
    object cdsPedidosPagCDPEDIDO: TIntegerField
      DisplayLabel = 'C'#243'd. Pedido'
      FieldName = 'CDPEDIDO'
    end
    object cdsPedidosPagCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento'
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPedidosPagVALOR_PAGO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '##,###,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPedidosPagPAGAMENTO: TStringField
      DisplayLabel = 'Pagamento'
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object cdsPedidosPagDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
  end
  object dspPedidosPag: TDataSetProvider
    DataSet = qPedidosPag
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 231
    Top = 321
  end
  object dsPedidosPag: TDataSource
    DataSet = cdsPedidosPag
    Left = 230
    Top = 217
  end
  object qTP: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Pagamentos'
      ''
      ''
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 616
    Top = 175
  end
  object cdsTP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTP'
    Left = 616
    Top = 82
    object cdsTPCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
      Required = True
    end
    object cdsTPPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object cdsTPCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsTPDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsTPPARCELAMENTO: TIntegerField
      FieldName = 'PARCELAMENTO'
    end
    object cdsTPGRAVA_CTAS_RECEBER: TIntegerField
      FieldName = 'GRAVA_CTAS_RECEBER'
    end
  end
  object dspTP: TDataSetProvider
    DataSet = qTP
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 614
    Top = 128
  end
  object dsTP: TDataSource
    DataSet = cdsTP
    Left = 619
    Top = 31
  end
  object qTroco: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Tipo_Pagamento')
    SQLConnection = DMPrincipal.SQLCon
    Left = 544
    Top = 175
  end
  object jvmPagamento: TJvMemoryData
    FieldDefs = <
      item
        Name = 'CDPEDIDOS_PAGAMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CDPEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'CDPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'PAGAMENTO'
        DataType = ftString
        Size = 35
      end>
    DataSet = cdsParcela
    LoadStructure = True
    AfterOpen = jvmPagamentoAfterOpen
    Left = 1131
    Top = 270
  end
  object dsPagamento: TDataSource
    DataSet = jvmPagamento
    Left = 1131
    Top = 223
  end
  object qCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.cdcaixa,'
      '       c.data,'
      '       c.cdusuario,'
      '       c.descricao,'
      '       c.credito,'
      '       c.debito,'
      '       c.numero_pdv,'
      '       c.cdpedido,'
      '       u.nome,'
      '       c.cdmovimentacao,'
      '       m.movimentacao'
      'from caixa c'
      'join usuarios u on u.cdusuario = c.cdusuario'
      'join movimentacao m on m.cdmovimentacao = c.cdmovimentacao'
      'where c.data=:data')
    SQLConnection = DMPrincipal.SQLCon
    Left = 758
    Top = 182
    object qCaixaCDCAIXA: TIntegerField
      FieldName = 'CDCAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCaixaDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qCaixaCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qCaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCaixaCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qCaixaDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qCaixaNUMERO_PDV: TIntegerField
      FieldName = 'NUMERO_PDV'
      ProviderFlags = [pfInUpdate]
    end
    object qCaixaCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qCaixaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCaixaCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qCaixaMOVIMENTACAO: TStringField
      FieldName = 'MOVIMENTACAO'
      ProviderFlags = []
      Size = 35
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 763
    Top = 83
    object cdsCaixaCDCAIXA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCAIXA'
      Required = True
    end
    object cdsCaixaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
      EditMask = '00/00/0000;1;_'
    end
    object cdsCaixaCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'CDUSUARIO'
    end
    object cdsCaixaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object cdsCaixaCREDITO: TFMTBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsCaixaDEBITO: TFMTBCDField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsCaixaNUMERO_PDV: TIntegerField
      DisplayLabel = 'N'#186' PDV'
      FieldName = 'NUMERO_PDV'
    end
    object cdsCaixaCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCaixaNOME: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCaixaCDMOVIMENTACAO: TIntegerField
      FieldName = 'CDMOVIMENTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCaixaMOVIMENTACAO: TStringField
      FieldName = 'MOVIMENTACAO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qCaixa
    UpdateMode = upWhereKeyOnly
    Left = 759
    Top = 135
  end
  object dsCaixa: TDataSource
    DataSet = cdsCaixa
    Left = 765
    Top = 27
  end
  object qContaCliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from conta_corrente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 437
    Top = 377
  end
  object dspContaCliente: TDataSetProvider
    DataSet = qContaCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 436
    Top = 329
  end
  object cdsContaCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaCliente'
    Left = 436
    Top = 278
    object cdsContaClienteCDCONTA_CORRENTE: TIntegerField
      FieldName = 'CDCONTA_CORRENTE'
      Required = True
    end
    object cdsContaClienteCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
    end
    object cdsContaClienteCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object cdsContaClienteDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsContaClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 10
    end
    object cdsContaClienteDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      Precision = 18
      Size = 2
    end
    object cdsContaClienteCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 18
      Size = 2
    end
    object cdsContaClienteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object cdsContaClienteCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
    end
  end
  object dsContaCliente: TDataSource
    DataSet = cdsContaCliente
    Left = 435
    Top = 235
  end
  object qConfig_Venda: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_venda')
    SQLConnection = DMPrincipal.SQLCon
    Left = 118
    Top = 366
  end
  object cdsConfig_Venda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig_Venda'
    Left = 117
    Top = 275
    object cdsConfig_VendaMOSTRAR_CUPOM_TELA: TIntegerField
      FieldName = 'MOSTRAR_CUPOM_TELA'
    end
    object cdsConfig_VendaMOSTRAR_OF: TIntegerField
      FieldName = 'MOSTRAR_OF'
    end
    object cdsConfig_VendaGRAVAR_COMISSAO_CTAS_PAGAR: TIntegerField
      FieldName = 'GRAVAR_COMISSAO_CTAS_PAGAR'
    end
    object cdsConfig_VendaCOMISSAO_CONFORME_RECEBIMENTO: TIntegerField
      FieldName = 'COMISSAO_CONFORME_RECEBIMENTO'
    end
    object cdsConfig_VendaIMAGEM_VENDA: TBlobField
      FieldName = 'IMAGEM_VENDA'
      Size = 1
    end
    object cdsConfig_VendaMOSTRAR_DESCONTO_VENDA: TIntegerField
      FieldName = 'MOSTRAR_DESCONTO_VENDA'
    end
    object cdsConfig_VendaPULAR_VALOR_UNITARIO_VENDA: TIntegerField
      FieldName = 'PULAR_VALOR_UNITARIO_VENDA'
    end
  end
  object dspConfig_Venda: TDataSetProvider
    DataSet = qConfig_Venda
    UpdateMode = upWhereKeyOnly
    Left = 119
    Top = 323
  end
  object dsConfig_Venda: TDataSource
    DataSet = cdsConfig_Venda
    Left = 117
    Top = 227
  end
  object qReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from ctas_receber')
    SQLConnection = DMPrincipal.SQLCon
    Left = 614
    Top = 382
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceber'
    Left = 612
    Top = 293
    object cdsReceberCDCTAS_RECEBER: TIntegerField
      FieldName = 'CDCTAS_RECEBER'
      Required = True
    end
    object cdsReceberCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object cdsReceberDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsReceberVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsReceberVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsReceberTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 35
    end
    object cdsReceberDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsReceberLIQUIDADO: TIntegerField
      FieldName = 'LIQUIDADO'
    end
    object cdsReceberLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      Size = 10
    end
    object cdsReceberLIQUIDADO_EM: TDateField
      FieldName = 'LIQUIDADO_EM'
    end
    object cdsReceberCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qReceber
    UpdateMode = upWhereKeyOnly
    Left = 613
    Top = 338
  end
  object dsReceber: TDataSource
    DataSet = cdsReceber
    Left = 613
    Top = 249
  end
  object qParcela: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from parcelamento')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1134
    Top = 168
  end
  object cdsParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParcela'
    Left = 1132
    Top = 81
    object cdsParcelaVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object cdsParcelaPARCELA: TIntegerField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'PARCELA'
    end
    object cdsParcelaCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsParcelaVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsParcelaCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
    end
    object cdsParcelaPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
  end
  object dspParcela: TDataSetProvider
    DataSet = qParcela
    UpdateMode = upWhereKeyOnly
    Left = 1133
    Top = 124
  end
  object dsParcela: TDataSource
    DataSet = cdsParcela
    Left = 1133
    Top = 35
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select produtos.cdproduto,'
      '       produtos.cdfornecedor,'
      '       fornecedores.nome as fornecedor,'
      '       produtos.cdinterno,'
      '       produtos.cdbarras,'
      '       produtos.cdgrupo,'
      '       grupo.descricao as grupo,'
      '       produtos.cdsubgrupo,'
      '       subgrupos.descricao as subgrupo,'
      '       produtos.descricao,'
      '       produtos.valor_custo,'
      '       produtos.valor_venda,'
      '       produtos.valor_contabil,'
      '       produtos.margem,'
      '       produtos.unid_entrada,'
      '       produtos.unid_saida,'
      '       produtos.servico,'
      '       produtos.ipi,'
      '       produtos.icms,'
      '       produtos.cfop,'
      '       produtos.sit_tributaria,'
      '       produtos.comissao,'
      '       produtos.desconto,'
      '       produtos.qtd_desconto,'
      '       produtos.aplicacao,'
      '       produtos.tipo_un_entrada,'
      '       produtos.tipo_un_saida,'
      '       produtos.estoque_qtd,'
      '       produtos.estoque_minimo,'
      '       produtos.cdcentro_custo,'
      '       produtos.uso_consumo,'
      '       produtos.marca                         ,'
      '       produtos.modelo,'
      '       produtos.cdplano_contas,'
      '       plano_contas.conta,'
      '       produtos.codigost'
      'from produtos'
      'left join grupo on grupo.cdgrupo = produtos.cdgrupo'
      
        'left join subgrupos on subgrupos.cdsubgrupo = produtos.cdsubgrup' +
        'o'
      
        'left join plano_contas on plano_contas.cdplano_contas = produtos' +
        '.cdplano_contas'
      
        'left Join fornecedores on fornecedores.cdfornecedor = produtos.c' +
        'dfornecedor'
      'order by descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 764
    Top = 382
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 763
    Top = 333
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 761
    Top = 290
    object cdsProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object cdsProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
    end
    object cdsProdutosCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CDBARRAS'
      Size = 15
    end
    object cdsProdutosCDGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd Grupo'
      FieldName = 'CDGRUPO'
    end
    object cdsProdutosCDSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo'
      FieldName = 'CDSUBGRUPO'
    end
    object cdsProdutosDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutosVALOR_CUSTO: TSingleField
      DisplayLabel = 'Valor Custo'
      FieldName = 'VALOR_CUSTO'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosVALOR_VENDA: TSingleField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VALOR_VENDA'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosVALOR_CONTABIL: TSingleField
      DisplayLabel = 'Valor Cont'#225'bil'
      FieldName = 'VALOR_CONTABIL'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosMARGEM: TSingleField
      DisplayLabel = 'Margem'
      FieldName = 'MARGEM'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosUNID_ENTRADA: TSingleField
      DisplayLabel = 'Uni. Entrada'
      FieldName = 'UNID_ENTRADA'
    end
    object cdsProdutosUNID_SAIDA: TSingleField
      DisplayLabel = 'Un. Saida'
      FieldName = 'UNID_SAIDA'
    end
    object cdsProdutosSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
    end
    object cdsProdutosIPI: TSingleField
      FieldName = 'IPI'
    end
    object cdsProdutosICMS: TSingleField
      FieldName = 'ICMS'
    end
    object cdsProdutosCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsProdutosSIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit Tribut'#225'ria'
      FieldName = 'SIT_TRIBUTARIA'
      Size = 10
    end
    object cdsProdutosCOMISSAO: TSingleField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
    end
    object cdsProdutosDESCONTO: TSingleField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
    end
    object cdsProdutosQTD_DESCONTO: TSingleField
      DisplayLabel = 'Qtd. Desconto'
      FieldName = 'QTD_DESCONTO'
    end
    object cdsProdutosAPLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      Size = 100
    end
    object cdsProdutosTIPO_UN_ENTRADA: TStringField
      DisplayLabel = 'Tipo Un. Entrada'
      FieldName = 'TIPO_UN_ENTRADA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosTIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo Un. Sa'#237'da'
      FieldName = 'TIPO_UN_SAIDA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosESTOQUE_QTD: TSingleField
      FieldName = 'ESTOQUE_QTD'
    end
    object cdsProdutosESTOQUE_MINIMO: TSingleField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object cdsProdutosCDCENTRO_CUSTO: TIntegerField
      FieldName = 'CDCENTRO_CUSTO'
    end
    object cdsProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
    end
    object cdsProdutosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Size = 35
    end
    object cdsProdutosCDINTERNO: TStringField
      DisplayLabel = 'C'#243'd Interno'
      FieldName = 'CDINTERNO'
      Size = 5
    end
    object cdsProdutosMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Size = 35
    end
    object cdsProdutosGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Size = 50
    end
    object cdsProdutosSUBGRUPO: TStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'SUBGRUPO'
      Size = 50
    end
    object cdsProdutosCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd Plano Contas'
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsProdutosCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsProdutosCODIGOST: TStringField
      DisplayLabel = 'C'#243'd. Sit. Tributaria'
      FieldName = 'CODIGOST'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Size = 50
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 760
    Top = 241
  end
  object qVendedor: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from vendedores'
      'order by apelido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 833
    Top = 187
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 836
    Top = 80
    object cdsVendedorCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      Required = True
    end
    object cdsVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsVendedorAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 35
    end
    object cdsVendedorREGIAO: TStringField
      FieldName = 'REGIAO'
      Size = 35
    end
    object cdsVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 35
    end
    object cdsVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsVendedorCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cdsVendedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsVendedorCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsVendedorRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object cdsVendedorNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsVendedorCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsVendedorCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsVendedorALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsVendedorALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
    object cdsVendedorFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 11
    end
    object cdsVendedorCDIBGE: TFMTBCDField
      FieldName = 'CDIBGE'
      Precision = 18
      Size = 0
    end
    object cdsVendedorATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsVendedorCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object cdsVendedorCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Size = 4
    end
    object cdsVendedorPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsVendedorCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object cdsVendedorMETA: TFloatField
      FieldName = 'META'
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qVendedor
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 832
    Top = 135
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 837
    Top = 30
  end
  object qCtasPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ctas_pagar.cdctas_pagar,'
      '       ctas_pagar.cdfornecedor,'
      '       fornecedores.nome,'
      '       ctas_pagar.numero_documento,'
      '       ctas_pagar.descricao,'
      '       ctas_pagar.valor,'
      '       ctas_pagar.valor_pago,'
      '       ctas_pagar.vencimento,'
      '       ctas_pagar.data_pagto,'
      '       ctas_pagar.forma_pagto,'
      '       ctas_pagar.cadastrado_por,'
      '       ctas_pagar.cadastrado_em,'
      '       ctas_pagar.liquidado,'
      '       ctas_pagar.liquidado_por,'
      '       ctas_pagar.liquidado_em,'
      '       ctas_pagar.cdplano_contas,'
      '      ctas_pagar.cdconta_bancaria,      '
      '       plano_contas.descricao_conta,'
      '       ctas_pagar.conta'
      'from ctas_pagar'
      
        'left join fornecedores on fornecedores.cdfornecedor = ctas_pagar' +
        '.cdfornecedor'
      
        'left join plano_contas on plano_contas.cdplano_contas = ctas_pag' +
        'ar.cdplano_contas'
      'order by ctas_pagar.vencimento asc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 908
    Top = 188
    object qCtasPagarCDCTAS_PAGAR: TIntegerField
      FieldName = 'CDCTAS_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCtasPagarCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qCtasPagarNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qCtasPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCtasPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qCtasPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qCtasPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCtasPagarCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qCtasPagarCADASTRADO_EM: TDateField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarLIQUIDADO: TIntegerField
      FieldName = 'LIQUIDADO'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qCtasPagarLIQUIDADO_EM: TDateField
      FieldName = 'LIQUIDADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object qCtasPagarCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qCtasPagarCDCONTA_BANCARIA: TIntegerField
      FieldName = 'CDCONTA_BANCARIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCtasPagar: TDataSetProvider
    DataSet = qCtasPagar
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 909
    Top = 142
  end
  object cdsCtasPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCtasPagar'
    Left = 908
    Top = 83
    object cdsCtasPagarCDCTAS_PAGAR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCTAS_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCtasPagarCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarNUMERO_DOCUMENTO: TStringField
      DisplayLabel = 'N'#186' Doc.:'
      FieldName = 'NUMERO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCtasPagarVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsCtasPagarVALOR_PAGO: TFMTBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsCtasPagarVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsCtasPagarDATA_PAGTO: TDateField
      DisplayLabel = 'Data Pagto'
      FieldName = 'DATA_PAGTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsCtasPagarFORMA_PAGTO: TStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCtasPagarCADASTRADO_POR: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsCtasPagarLIQUIDADO: TIntegerField
      DisplayLabel = 'Liquidado'
      FieldName = 'LIQUIDADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarLIQUIDADO_EM: TDateField
      DisplayLabel = 'Data Liquida'#231#227'o'
      FieldName = 'LIQUIDADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsCtasPagarCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      EditMask = '000.00.00;1;_'
      Size = 10
    end
    object cdsCtasPagarNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsCtasPagarDESCRICAO_CONTA: TStringField
      DisplayLabel = 'Nome Conta'
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object cdsCtasPagarCDCONTA_BANCARIA: TIntegerField
      FieldName = 'CDCONTA_BANCARIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsCtasPagar: TDataSource
    DataSet = cdsCtasPagar
    Left = 909
    Top = 29
  end
  object qComissao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from comissoes')
    SQLConnection = DMPrincipal.SQLCon
    Left = 980
    Top = 180
  end
  object dspComissao: TDataSetProvider
    DataSet = qComissao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 981
    Top = 134
  end
  object cdsComissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComissao'
    Left = 980
    Top = 75
    object cdsComissaoCDCOMISSAO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCOMISSAO'
      Required = True
    end
    object cdsComissaoCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
    end
    object cdsComissaoCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
    end
    object cdsComissaoDATA: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA'
      EditMask = '00/00/0000;1;_'
    end
    object cdsComissaoVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento:'
      FieldName = 'VENCIMENTO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsComissaoPAGO: TIntegerField
      DisplayLabel = 'Pago:'
      FieldName = 'PAGO'
    end
    object cdsComissaoCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsComissaoCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsComissaoALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'ALTERADO_POR'
      Size = 35
    end
    object cdsComissaoALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsComissaoDATA_PAGTO: TDateField
      DisplayLabel = 'Data Pagamento:'
      FieldName = 'DATA_PAGTO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsComissaoVALOR: TFloatField
      DisplayLabel = 'Valor:'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,#0.00'
    end
  end
  object dsComissao: TDataSource
    DataSet = cdsComissao
    Left = 981
    Top = 21
  end
  object qPedidosTmp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pt.cdpedido_temp,'
      '       pt.cdvendedor,'
      '       pt.cdusuario,'
      '       pt.cdcliente,'
      '       pt.data,'
      '       pt.hora,'
      '       pt.desconto,'
      '       pt.acrescimo,'
      '       pt.nf_emitida,'
      '       pt.cdpagamento,'
      '       pt.numero_pdv,'
      '       pt.cdplano_contas,'
      '       pt.subtotal,'
      '       pt.valor_total,'
      '       pt.valor_pago,'
      '       pt.tipo,'
      '       pt.data_validade,'
      '       pt.dias_aviso,'
      '       vendedores.nome as vendedor,'
      '       clientes.nome as cliente,'
      '       plano_contas.descricao_conta,'
      '       pagamentos.pagamento'
      'from pedidos_temp pt'
      'left join vendedores on vendedores.cdvendedor = pt.cdvendedor'
      'left join clientes on clientes.cdcliente = pt.cdcliente'
      
        'left join plano_contas on plano_contas.cdplano_contas = pt.cdpla' +
        'no_contas'
      'left join pagamentos on pagamentos.cdpagamento = pt.cdpagamento'
      ' ')
    SQLConnection = DMPrincipal.SQLCon
    Left = 232
    Top = 160
    object qPedidosTmpCDPEDIDO_TEMP: TIntegerField
      FieldName = 'CDPEDIDO_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidosTmpCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpNF_EMITIDA: TIntegerField
      FieldName = 'NF_EMITIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpNUMERO_PDV: TIntegerField
      FieldName = 'NUMERO_PDV'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qPedidosTmpDATA_VALIDADE: TDateField
      DisplayLabel = 'Validade:'
      FieldName = 'DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpDIAS_AVISO: TIntegerField
      FieldName = 'DIAS_AVISO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidosTmpVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qPedidosTmpCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qPedidosTmpDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object qPedidosTmpPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspPedidosTmp: TDataSetProvider
    DataSet = qPedidosTmp
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspPedidosTmpGetTableName
    Left = 232
    Top = 119
  end
  object cdsPedidosTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidosTmp'
    Left = 232
    Top = 71
    object cdsPedidosTmpCDPEDIDO_TEMP: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPEDIDO_TEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidosTmpCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo Vendedor'
      FieldName = 'CDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsPedidosTmpHORA: TTimeField
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cdsPedidosTmpDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosTmpACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo'
      FieldName = 'ACRESCIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosTmpNF_EMITIDA: TIntegerField
      DisplayLabel = 'NFe Emitida'
      FieldName = 'NF_EMITIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento'
      FieldName = 'CDPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpNUMERO_PDV: TIntegerField
      DisplayLabel = 'N'#186' PDV'
      FieldName = 'NUMERO_PDV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Contas'
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal'
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosTmpVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosTmpVALOR_PAGO: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosTmpTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPedidosTmpDATA_VALIDADE: TDateField
      DisplayLabel = 'Validade:'
      FieldName = 'DATA_VALIDADE'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsPedidosTmpDIAS_AVISO: TIntegerField
      DisplayLabel = 'Aviso (Dias):'
      FieldName = 'DIAS_AVISO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidosTmpVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedidosTmpCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedidosTmpDESCRICAO_CONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object cdsPedidosTmpPAGAMENTO: TStringField
      DisplayLabel = 'Pagamento'
      FieldName = 'PAGAMENTO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsPedidosTmp: TDataSource
    DataSet = cdsPedidosTmp
    Left = 232
    Top = 24
  end
end
