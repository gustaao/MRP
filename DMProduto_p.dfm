object DMProduto: TDMProduto
  OldCreateOrder = False
  Height = 485
  Width = 1318
  object dsSubGrupo: TDataSource
    DataSet = cdsSubGrupo
    Left = 696
    Top = 39
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 696
    Top = 85
    object cdsSubGrupoCDSUBGRUPO: TIntegerField
      FieldName = 'CDSUBGRUPO'
      Required = True
    end
    object cdsSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspSubGrupo: TDataSetProvider
    DataSet = qSubGrupo
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 131
  end
  object qSubGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from subgrupos'
      'order by descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 696
    Top = 178
  end
  object qCC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from centro_custo'
      'order by centro_custo')
    SQLConnection = DMPrincipal.SQLCon
    Left = 751
    Top = 178
  end
  object dspCC: TDataSetProvider
    DataSet = qCC
    UpdateMode = upWhereKeyOnly
    Left = 751
    Top = 131
  end
  object cdsCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCC'
    Left = 751
    Top = 85
    object cdsCCCDCENTROCUSTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCENTROCUSTO'
      Required = True
    end
    object cdsCCCODIGO: TStringField
      DisplayLabel = 'Centro Custo'
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 3
    end
    object cdsCCCENTRO_CUSTO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CENTRO_CUSTO'
      Size = 50
    end
  end
  object dsCC: TDataSource
    DataSet = cdsCC
    Left = 751
    Top = 39
  end
  object dsSITIPI: TDataSource
    DataSet = cdsSTIPI
    Left = 288
    Top = 31
  end
  object cdsSTIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSTIPI'
    Left = 288
    Top = 77
    object cdsSTIPICDSITUACAO: TStringField
      FieldName = 'CDSITUACAO'
      FixedChar = True
      Size = 2
    end
    object cdsSTIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspSTIPI: TDataSetProvider
    DataSet = qSTIPI
    Left = 288
    Top = 123
  end
  object qSTIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from situacao_tributaria_ipi stIPI')
    SQLConnection = DMPrincipal.SQLCon
    Left = 288
    Top = 174
  end
  object qSTPC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from st_pis_cofins')
    SQLConnection = DMPrincipal.SQLCon
    Left = 816
    Top = 178
  end
  object dspSTPC: TDataSetProvider
    DataSet = qSTPC
    Left = 816
    Top = 131
  end
  object cdsSTPC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSTPC'
    Left = 816
    Top = 85
    object cdsSTPCCDSITUACAO: TStringField
      FieldName = 'CDSITUACAO'
      FixedChar = True
      Size = 2
    end
    object cdsSTPCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsSTPC: TDataSource
    DataSet = cdsSTPC
    Left = 816
    Top = 40
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from grupo'
      'order by descricao'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 636
    Top = 178
  end
  object dspGrupo: TDataSetProvider
    DataSet = qGrupo
    UpdateMode = upWhereKeyOnly
    Left = 636
    Top = 131
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 636
    Top = 85
    object cdsGrupoCDGRUPO: TIntegerField
      FieldName = 'CDGRUPO'
      Required = True
    end
    object cdsGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 636
    Top = 39
  end
  object dsForn: TDataSource
    DataSet = cdsForn
    Left = 73
    Top = 239
  end
  object cdsForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForn'
    Left = 73
    Top = 285
    object cdsFornCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object cdsFornCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
    object cdsFornNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsFornENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsFornBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsFornCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFornUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 10
    end
    object cdsFornSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornMAIL: TStringField
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsFornCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsFornRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object cdsFornCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsFornDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsFornTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsFornFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsFornFAX: TStringField
      FieldName = 'FAX'
      Size = 11
    end
    object cdsFornATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsFornCODSEGMENTO: TIntegerField
      FieldName = 'CODSEGMENTO'
    end
    object cdsFornISO: TIntegerField
      FieldName = 'ISO'
    end
    object cdsFornGRAU_IMPORTANCIA: TStringField
      FieldName = 'GRAU_IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object cdsFornCDENQUADRAMENTO_IMPOSTO: TIntegerField
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
    object cdsFornREACH_ROHS: TIntegerField
      FieldName = 'REACH_ROHS'
    end
    object cdsFornCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsFornNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsFornPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsFornCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsFornPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsFornLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
  end
  object dspForn: TDataSetProvider
    DataSet = qForn
    UpdateMode = upWhereKeyOnly
    Left = 73
    Top = 331
  end
  object qForn: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from fornecedores'
      'order by apelido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 73
    Top = 378
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select p.cdproduto,'
      '       p.cdfornecedor,'
      '       p.cdinterno,'
      '       p.cdbarras,'
      '       p.cdgrupo,'
      '       p.cdsubgrupo,'
      '       p.descricao,'
      '       p.valor_custo,'
      '       p.valor_venda,'
      '       p.valor_contabil,'
      '       p.margem,'
      '       p.unid_entrada,'
      '       p.unid_saida,'
      '       p.servico,'
      '       p.ipi,'
      '       p.icms,'
      '       p.cfop,'
      '       p.sit_tributaria,'
      '       p.tipo_un_entrada, '
      '       p.tipo_un_saida,'
      '       p.cdcentro_custo,'
      '       p.estoque_qtd,'
      '       p.estoque_minimo,'
      '       p.uso_consumo,'
      '       p.aplicacao,'
      '       p.marca,'
      '       p.ncm,'
      '       p.situacao_ipi_entrada,'
      '       p.situacao_ipi_saida,'
      '       p.enq_ipi_entrada,'
      '       p.enq_ipi_saida,'
      '       p.situacao_pis,'
      '       p.situacao_cofins,'
      '       p.cdorigem,'
      '       p.csosn,'
      '       p.comissao,'
      '       p.imagem,'
      '       grupo.descricao as grupo,'
      '       subgrupos.descricao as subgrupo,'
      '       f.apelido,'
      '       om.descricao as origem,'
      '       spp.descricao as desc_sit_pis,'
      '       stipie.descricao as desc_sit_ipie,'
      '       stipis.descricao as desc_sit_ipis,'
      '       st.descricao as desc_st,'
      '       csosn.descricao as desc_csosn,'
      '       spc.descricao as desc_sit_cofins'
      ''
      ''
      'from produtos p'
      ''
      'left join grupo on grupo.cdgrupo = p.cdgrupo'
      'left join subgrupos on subgrupos.cdsubgrupo = p.cdsubgrupo'
      'left join fornecedores f on f.cdfornecedor = p.cdfornecedor'
      'left join origem_mercadoria om on om.cdorigem = p.cdorigem'
      
        'left join st_pis_cofins spc on spc.cdsituacao = p.situacao_cofin' +
        's'
      'left join st_pis_cofins spp on spp.cdsituacao = p.situacao_pis'
      
        'left join situacao_tributaria_ipi stipie on stipie.cdsituacao = ' +
        'p.situacao_ipi_entrada'
      
        'left join situacao_tributaria_ipi stipis on stipis.cdsituacao = ' +
        'p.situacao_ipi_saida'
      
        'left join situacao_tributaria st on st.codigost = p.sit_tributar' +
        'ia'
      'left join situacao_osn csosn on csosn.csosn = p.csosn'
      
        'left join situacao_tributaria stcofins on stcofins.codigost = p.' +
        'situacao_cofins')
    SQLConnection = DMPrincipal.SQLCon
    Left = 67
    Top = 162
    object qProdutosCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdutosCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosCDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qProdutosCDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qProdutosCDGRUPO: TIntegerField
      FieldName = 'CDGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosCDSUBGRUPO: TIntegerField
      FieldName = 'CDSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qProdutosVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUNID_ENTRADA: TFloatField
      FieldName = 'UNID_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUNID_SAIDA: TFloatField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object qProdutosSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qProdutosTIPO_UN_ENTRADA: TStringField
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qProdutosTIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qProdutosCDCENTRO_CUSTO: TIntegerField
      FieldName = 'CDCENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosESTOQUE_QTD: TFloatField
      FieldName = 'ESTOQUE_QTD'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosESTOQUE_MINIMO: TFloatField
      FieldName = 'ESTOQUE_MINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qProdutosNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qProdutosSITUACAO_PIS: TStringField
      FieldName = 'SITUACAO_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qProdutosSITUACAO_COFINS: TStringField
      FieldName = 'SITUACAO_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qProdutosCDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qProdutosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qProdutosSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qProdutosAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object qProdutosORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = []
      Size = 12
    end
    object qProdutosDESC_SIT_PIS: TStringField
      FieldName = 'DESC_SIT_PIS'
      ProviderFlags = []
      Size = 100
    end
    object qProdutosDESC_ST: TStringField
      FieldName = 'DESC_ST'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object qProdutosDESC_CSOSN: TStringField
      FieldName = 'DESC_CSOSN'
      ProviderFlags = []
      Size = 150
    end
    object qProdutosDESC_SIT_COFINS: TStringField
      FieldName = 'DESC_SIT_COFINS'
      ProviderFlags = []
      Size = 100
    end
    object qProdutosSITUACAO_IPI_ENTRADA: TStringField
      FieldName = 'SITUACAO_IPI_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qProdutosSITUACAO_IPI_SAIDA: TStringField
      FieldName = 'SITUACAO_IPI_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qProdutosENQ_IPI_ENTRADA: TStringField
      FieldName = 'ENQ_IPI_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qProdutosENQ_IPI_SAIDA: TStringField
      FieldName = 'ENQ_IPI_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qProdutosDESC_SIT_IPIE: TStringField
      FieldName = 'DESC_SIT_IPIE'
      ProviderFlags = []
      Size = 50
    end
    object qProdutosDESC_SIT_IPIS: TStringField
      FieldName = 'DESC_SIT_IPIS'
      ProviderFlags = []
      Size = 50
    end
    object qProdutosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    UpdateMode = upWhereKeyOnly
    Left = 67
    Top = 115
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 67
    Top = 69
    object cdsProdutosCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutosCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsProdutosCDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsProdutosCDGRUPO: TIntegerField
      FieldName = 'CDGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCDSUBGRUPO: TIntegerField
      FieldName = 'CDSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsProdutosVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsProdutosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsProdutosVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsProdutosUNID_ENTRADA: TFloatField
      FieldName = 'UNID_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosUNID_SAIDA: TFloatField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cdsProdutosSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsProdutosTIPO_UN_ENTRADA: TStringField
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsProdutosTIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsProdutosCDCENTRO_CUSTO: TIntegerField
      FieldName = 'CDCENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosESTOQUE_QTD: TFloatField
      FieldName = 'ESTOQUE_QTD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosESTOQUE_MINIMO: TFloatField
      FieldName = 'ESTOQUE_MINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsProdutosMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsProdutosNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsProdutosSITUACAO_PIS: TStringField
      FieldName = 'SITUACAO_PIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsProdutosSITUACAO_COFINS: TStringField
      FieldName = 'SITUACAO_COFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsProdutosCDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCOMISSAO: TFloatField
      DisplayLabel = 'Comiss'#227'o:'
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsProdutosGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = []
      Size = 12
    end
    object cdsProdutosDESC_SIT_PIS: TStringField
      FieldName = 'DESC_SIT_PIS'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutosDESC_ST: TStringField
      FieldName = 'DESC_ST'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object cdsProdutosDESC_CSOSN: TStringField
      FieldName = 'DESC_CSOSN'
      ProviderFlags = []
      Size = 150
    end
    object cdsProdutosDESC_SIT_COFINS: TStringField
      FieldName = 'DESC_SIT_COFINS'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutosSITUACAO_IPI_ENTRADA: TStringField
      FieldName = 'SITUACAO_IPI_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsProdutosSITUACAO_IPI_SAIDA: TStringField
      FieldName = 'SITUACAO_IPI_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsProdutosENQ_IPI_ENTRADA: TStringField
      FieldName = 'ENQ_IPI_ENTRADA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsProdutosENQ_IPI_SAIDA: TStringField
      FieldName = 'ENQ_IPI_SAIDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsProdutosDESC_SIT_IPIE: TStringField
      FieldName = 'DESC_SIT_IPIE'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosDESC_SIT_IPIS: TStringField
      FieldName = 'DESC_SIT_IPIS'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 67
    Top = 23
  end
  object qCodigo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from centro_custo'
      'order by centro_custo')
    SQLConnection = DMPrincipal.SQLCon
    Left = 952
    Top = 42
  end
  object dsST: TDataSource
    DataSet = cdsST
    Left = 360
    Top = 40
  end
  object cdsST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspST'
    Left = 360
    Top = 85
    object cdsSTCODIGOST: TStringField
      FieldName = 'CODIGOST'
      FixedChar = True
      Size = 3
    end
    object cdsSTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object cdsSTPIS: TStringField
      FieldName = 'PIS'
      FixedChar = True
      Size = 1
    end
    object cdsSTCOFINS: TStringField
      FieldName = 'COFINS'
      FixedChar = True
      Size = 1
    end
    object cdsSTT_I_S: TStringField
      FieldName = 'T_I_S'
      FixedChar = True
      Size = 1
    end
  end
  object dspST: TDataSetProvider
    DataSet = qST
    Left = 360
    Top = 132
  end
  object qST: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from situacao_tributaria')
    SQLConnection = DMPrincipal.SQLCon
    Left = 360
    Top = 178
  end
  object qCSOSN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from situacao_osn')
    SQLConnection = DMPrincipal.SQLCon
    Left = 424
    Top = 178
  end
  object dspCSOSN: TDataSetProvider
    DataSet = qCSOSN
    Left = 424
    Top = 132
  end
  object cdsCSOSN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCSOSN'
    Left = 424
    Top = 85
    object cdsCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsCSOSNCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 5
    end
  end
  object dsCSOSN: TDataSource
    DataSet = cdsCSOSN
    Left = 424
    Top = 40
  end
  object qOM: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from origem_mercadoria')
    SQLConnection = DMPrincipal.SQLCon
    Left = 880
    Top = 178
  end
  object dspOM: TDataSetProvider
    DataSet = qOM
    Left = 880
    Top = 131
  end
  object cdsOM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOM'
    Left = 880
    Top = 85
    object cdsOMCDORIGEM_MERCADORIA: TIntegerField
      FieldName = 'CDORIGEM_MERCADORIA'
      Required = True
    end
    object cdsOMCDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
    end
    object cdsOMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 12
    end
    object cdsOMESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 150
    end
  end
  object dsOM: TDataSource
    DataSet = cdsOM
    Left = 880
    Top = 40
  end
  object dsEnqIPI: TDataSource
    DataSet = cdsEnqIPI
    Left = 208
    Top = 31
  end
  object cdsEnqIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEnqIPI'
    Left = 208
    Top = 77
    object cdsEnqIPICODIGO_ENQUADRAMENTO: TStringField
      FieldName = 'CODIGO_ENQUADRAMENTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsEnqIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object cdsEnqIPICDSITUACAO_ENTRADA: TIntegerField
      FieldName = 'CDSITUACAO_ENTRADA'
    end
    object cdsEnqIPICDSITUACAO_SAIDA: TIntegerField
      FieldName = 'CDSITUACAO_SAIDA'
    end
  end
  object dspEnqIPI: TDataSetProvider
    DataSet = qEnqIPI
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 208
    Top = 123
  end
  object qEnqIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from enquadramento_ipi')
    SQLConnection = DMPrincipal.SQLCon
    Left = 208
    Top = 170
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from situacao_tributaria_ipi stIPI')
    SQLConnection = DMPrincipal.SQLCon
    Left = 152
    Top = 238
  end
  object qLinha: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from linha_Produtos')
    SQLConnection = DMPrincipal.SQLCon
    Left = 149
    Top = 169
  end
  object cdsLinha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLinha'
    Left = 145
    Top = 71
    object cdsLinhaCDLINHA_PRODUTOS: TIntegerField
      FieldName = 'CDLINHA_PRODUTOS'
      Required = True
    end
    object cdsLinhaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsLinhaCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsLinhaCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsLinhaALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 35
    end
    object cdsLinhaALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
  end
  object dspLinha: TDataSetProvider
    DataSet = qLinha
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 144
    Top = 125
  end
  object dsLinha: TDataSource
    DataSet = cdsLinha
    Left = 143
    Top = 22
  end
  object qCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select cp.cdcusto,'
      '       cp.descricao,'
      '       cp.cdcliente,'
      '       cp.cdproduto,'
      '       cp.valor_dap,'
      '       cp.frete_inernacional,'
      '       cp.despesas_origem,'
      '       cp.seguro_frete_internacional,'
      '       cp.thc,'
      '       cp.imposto_importacao,'
      '       cp.ipi,'
      '       cp.pis,'
      '       cp.cofin,'
      '       cp.taxa_siscomex,'
      '       cp.icms,'
      '       cp.frete_interno,'
      '       cp.comissao,'
      '       cp.sda,'
      '       cp.desembaraco,'
      '       cp.taxa_desconsolidacao,'
      '       cp.taxa_cambio,'
      '       cp.pedagio,'
      '       cp.cadastrado_por,'
      '       cp.cadastrado_em,'
      '       cp.alterado_por,'
      '       cp.alterado_em,'
      '       cp.valor_custo,'
      '       cp.desconto_distribuidor,'
      '       cp.valor_aduaneiro,'
      '       cp.valor_imposto_importacao,'
      '       cp.valor_ipi,'
      '       cp.valor_pis,'
      '       cp.valor_cofins,'
      '       cp.valor_icms,'
      '       cp.custo_subtotal,'
      '       cp.custo_total,'
      '       cp.demais_despesas,'
      '       cp.valor_demais_despesas,'
      '       cp.valor_seguro,'
      '       cp.das,'
      '       cp.valor_das,'
      '       cp.valor_venda,'
      '       cp.lucro,'
      '       cp.desconto,'
      '       cp.valor_venda_desconto,  '
      '       cp.custo_subtotal2,'
      ''
      ''
      ''
      '       clientes.nome,'
      '       produtos.descricao as produto'
      'from custos_produto cp'
      'left join clientes on clientes.cdpessoa = cp.cdcliente'
      'left join produtos on produtos.cdproduto = cp.cdproduto')
    SQLConnection = DMPrincipal.SQLCon
    Left = 539
    Top = 282
    object qCustoCDCUSTO: TIntegerField
      FieldName = 'CDCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCustoCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qCustoCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_DAP: TFloatField
      FieldName = 'VALOR_DAP'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoFRETE_INERNACIONAL: TFloatField
      FieldName = 'FRETE_INERNACIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDESPESAS_ORIGEM: TFloatField
      FieldName = 'DESPESAS_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoSEGURO_FRETE_INTERNACIONAL: TFloatField
      FieldName = 'SEGURO_FRETE_INTERNACIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoTHC: TFloatField
      FieldName = 'THC'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoIMPOSTO_IMPORTACAO: TFloatField
      FieldName = 'IMPOSTO_IMPORTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoPIS: TFloatField
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCOFIN: TFloatField
      FieldName = 'COFIN'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoTAXA_SISCOMEX: TFloatField
      FieldName = 'TAXA_SISCOMEX'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoFRETE_INTERNO: TFloatField
      FieldName = 'FRETE_INTERNO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoSDA: TFloatField
      FieldName = 'SDA'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDESEMBARACO: TFloatField
      FieldName = 'DESEMBARACO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoTAXA_DESCONSOLIDACAO: TFloatField
      FieldName = 'TAXA_DESCONSOLIDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoTAXA_CAMBIO: TFloatField
      FieldName = 'TAXA_CAMBIO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qCustoCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qCustoALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDESCONTO_DISTRIBUIDOR: TFloatField
      FieldName = 'DESCONTO_DISTRIBUIDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_ADUANEIRO: TFloatField
      FieldName = 'VALOR_ADUANEIRO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_IMPOSTO_IMPORTACAO: TFloatField
      FieldName = 'VALOR_IMPOSTO_IMPORTACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qCustoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object qCustoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCUSTO_SUBTOTAL: TFloatField
      FieldName = 'CUSTO_SUBTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCUSTO_TOTAL: TFloatField
      FieldName = 'CUSTO_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDEMAIS_DESPESAS: TStringField
      FieldName = 'DEMAIS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCustoVALOR_DEMAIS_DESPESAS: TFloatField
      FieldName = 'VALOR_DEMAIS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDAS: TFloatField
      FieldName = 'DAS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_DAS: TFloatField
      FieldName = 'VALOR_DAS'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoLUCRO: TFloatField
      FieldName = 'LUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoVALOR_VENDA_DESCONTO: TFloatField
      FieldName = 'VALOR_VENDA_DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCustoCUSTO_SUBTOTAL2: TFloatField
      FieldName = 'CUSTO_SUBTOTAL2'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCusto: TDataSetProvider
    DataSet = qCusto
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspCustoGetTableName
    Left = 539
    Top = 240
  end
  object dsCusto: TDataSource
    DataSet = cdsCusto
    Left = 539
    Top = 143
  end
  object cdsCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCusto'
    Left = 540
    Top = 194
    object cdsCustoCDCUSTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCUSTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCustoDESCRICAO: TStringField
      DisplayLabel = 'Desscri'#231#227'o:'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsCustoCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsCustoCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCustoVALOR_DAP: TFloatField
      DisplayLabel = 'Valor DAP:'
      FieldName = 'VALOR_DAP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoFRETE_INERNACIONAL: TFloatField
      DisplayLabel = 'Valor Frete Internacional:'
      FieldName = 'FRETE_INERNACIONAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDESPESAS_ORIGEM: TFloatField
      DisplayLabel = 'Despesas de Origem:'
      FieldName = 'DESPESAS_ORIGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoSEGURO_FRETE_INTERNACIONAL: TFloatField
      DisplayLabel = 'Pr'#234'mio de Seguro Transporte Internacional:'
      FieldName = 'SEGURO_FRETE_INTERNACIONAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoTHC: TFloatField
      DisplayLabel = 'THC:'
      FieldName = 'THC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoIMPOSTO_IMPORTACAO: TFloatField
      DisplayLabel = '% Imposto Importa'#231#227'o:'
      FieldName = 'IMPOSTO_IMPORTACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoIPI: TFloatField
      DisplayLabel = 'IPI:'
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoPIS: TFloatField
      DisplayLabel = 'PIS:'
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCOFIN: TFloatField
      DisplayLabel = 'COFIN:'
      FieldName = 'COFIN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoTAXA_SISCOMEX: TFloatField
      DisplayLabel = 'Taxa Siscomex'
      FieldName = 'TAXA_SISCOMEX'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoICMS: TFloatField
      DisplayLabel = 'ICMS:'
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoFRETE_INTERNO: TFloatField
      DisplayLabel = 'Frete Interno:'
      FieldName = 'FRETE_INTERNO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCOMISSAO: TFloatField
      DisplayLabel = 'Comiss'#227'o:'
      FieldName = 'COMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoSDA: TFloatField
      DisplayLabel = 'S.D.A.:'
      FieldName = 'SDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDESEMBARACO: TFloatField
      DisplayLabel = 'Desembara'#231'o:'
      FieldName = 'DESEMBARACO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoTAXA_DESCONSOLIDACAO: TFloatField
      DisplayLabel = 'Taxa Desconsolida'#231#227'o:'
      FieldName = 'TAXA_DESCONSOLIDACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoTAXA_CAMBIO: TFloatField
      DisplayLabel = 'Taxa Cambio:'
      FieldName = 'TAXA_CAMBIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.000'
    end
    object cdsCustoPEDAGIO: TFloatField
      DisplayLabel = 'Ped'#225'gio:'
      FieldName = 'PEDAGIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsCustoCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsCustoALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsCustoALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000'
    end
    object cdsCustoVALOR_CUSTO: TFloatField
      DisplayLabel = 'Valor Custo:'
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDESCONTO_DISTRIBUIDOR: TFloatField
      DisplayLabel = 'Desconto Distribuidor:'
      FieldName = 'DESCONTO_DISTRIBUIDOR'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_ADUANEIRO: TFloatField
      DisplayLabel = 'Valor Aduaneiro:'
      FieldName = 'VALOR_ADUANEIRO'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_IMPOSTO_IMPORTACAO: TFloatField
      DisplayLabel = 'Valor Imposto Importa'#231#227'o:'
      FieldName = 'VALOR_IMPOSTO_IMPORTACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_PIS: TFloatField
      DisplayLabel = 'Valor PIS:'
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_IPI: TFloatField
      DisplayLabel = 'Valor IPI:'
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_COFINS: TFloatField
      DisplayLabel = 'Valor Cofins:'
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoNOME: TStringField
      DisplayLabel = 'Cliente:'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsCustoPRODUTO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCustoVALOR_ICMS: TFloatField
      DisplayLabel = 'Valor ICMS:'
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCUSTO_SUBTOTAL: TFloatField
      DisplayLabel = 'Subtotal (Impstos):'
      FieldName = 'CUSTO_SUBTOTAL'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCUSTO_TOTAL: TFloatField
      DisplayLabel = 'Custo Total:'
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDEMAIS_DESPESAS: TStringField
      DisplayLabel = 'Demais Despesas:'
      FieldName = 'DEMAIS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsCustoVALOR_DEMAIS_DESPESAS: TFloatField
      DisplayLabel = 'Valor Demais Despesas:'
      FieldName = 'VALOR_DEMAIS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDAS: TFloatField
      DisplayLabel = 'DAS:'
      FieldName = 'DAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_SEGURO: TFloatField
      DisplayLabel = 'Valor Seguro:'
      FieldName = 'VALOR_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#.0.00'
    end
    object cdsCustoVALOR_DAS: TFloatField
      DisplayLabel = 'Valor DAS:'
      FieldName = 'VALOR_DAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoLUCRO: TFloatField
      DisplayLabel = 'Lucro:'
      FieldName = 'LUCRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoVALOR_VENDA_DESCONTO: TFloatField
      DisplayLabel = 'Valor Venda c/Desconto:'
      FieldName = 'VALOR_VENDA_DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsCustoCUSTO_SUBTOTAL2: TFloatField
      DisplayLabel = 'Subtotal:'
      FieldName = 'CUSTO_SUBTOTAL2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
  end
end
