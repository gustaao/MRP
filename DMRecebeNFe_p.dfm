object DMRecebeNFe: TDMRecebeNFe
  OldCreateOrder = False
  Height = 438
  Width = 1002
  object qOCI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDOC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select oci.cdoci,'
      '       oci.cdoc,'
      '       oci.numero_item,'
      '       oci.cdproduto,'
      '       oci.cdplano_contas,'
      '       oci.valor_unitario,'
      '       oci.qtd,'
      '       oci.valor_total,'
      '       oci.unidade,'
      '       oci.cadastrado_por,'
      '       oci.cadastrado_em,'
      '       oci.alterado_por,'
      '       oci.alterado_em,'
      '       oci.valor_icms,'
      '       oci.valor_ipi,'
      '       oci.recebido,'
      '       oci.qtd_recebida,'
      '       oci.icms,'
      '       oci.ipi,'
      '       oci.irrf,'
      '       oci.pis,'
      '       oci.cofins,'
      '       oci.iss,'
      '       produtos.cdinterno,'
      '       produtos.cdbarras,'
      '       produtos.descricao,'
      '       produtos.valor_venda,'
      '       produtos.cfop,'
      '       produtos.sit_tributaria,'
      '       produtos.tipo_un_entrada,'
      '       produtos.marca,'
      '       produtos.modelo,'
      '       plano_contas.conta,'
      '       plano_contas.descricao_conta,'
      '       ordem_compras.cdfornecedor,'
      '       ordem_compras.desdobramento,'
      '       ordem_compras.data1,'
      '       ordem_compras.valor1,'
      '       ordem_compras.data2,'
      '       ordem_compras.valor2,'
      '       ordem_compras.data3,'
      '       ordem_compras.valor3,'
      '       ordem_compras.data4,'
      '       ordem_compras.valor4,'
      '       ordem_compras.data5,'
      '       ordem_compras.valor5,'
      '       ordem_compras.data6,'
      '       ordem_compras.valor6,'
      '       ordem_compras.data7,'
      '       ordem_compras.valor7,'
      '       ordem_compras.data8,'
      '       ordem_compras.valor8,'
      '       ordem_compras.data9,'
      '       ordem_compras.valor9,'
      '       ordem_compras.data10,'
      '       ordem_compras.valor10'
      ''
      'from ordem_compras_itens oci'
      'left join ordem_compras on ordem_compras.cdoc = oci.cdoc'
      'left join produtos on produtos.cdproduto = oci.cdproduto'
      
        'left join plano_contas on plano_contas.cdplano_contas = produtos' +
        '.cdplano_contas'
      'where oci.cdoc = :CDOC')
    SQLConnection = DMPrincipal.SQLCon
    Left = 24
    Top = 181
  end
  object dspOCI: TDataSetProvider
    DataSet = qOCI
    Left = 24
    Top = 128
  end
  object cdsOCI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOCI'
    Left = 24
    Top = 80
    object cdsOCICDOCI: TIntegerField
      FieldName = 'CDOCI'
      Required = True
    end
    object cdsOCICDOC: TIntegerField
      FieldName = 'CDOC'
    end
    object cdsOCINUMERO_ITEM: TIntegerField
      FieldName = 'NUMERO_ITEM'
    end
    object cdsOCICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
    end
    object cdsOCICDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsOCIVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object cdsOCIQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOCIVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsOCIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsOCICADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsOCICADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsOCIALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsOCIALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
    object cdsOCIVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object cdsOCIVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object cdsOCIRECEBIDO: TIntegerField
      FieldName = 'RECEBIDO'
    end
    object cdsOCIQTD_RECEBIDA: TFloatField
      FieldName = 'QTD_RECEBIDA'
    end
    object cdsOCIICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object cdsOCIIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
    object cdsOCIIRRF: TFMTBCDField
      FieldName = 'IRRF'
      Precision = 18
      Size = 2
    end
    object cdsOCIPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 18
      Size = 2
    end
    object cdsOCICOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 18
      Size = 2
    end
    object cdsOCIISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 18
      Size = 2
    end
    object cdsOCICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      Size = 8
    end
    object cdsOCICDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      Size = 15
    end
    object cdsOCIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOCIVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object cdsOCICFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsOCISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 10
    end
    object cdsOCITIPO_UN_ENTRADA: TStringField
      FieldName = 'TIPO_UN_ENTRADA'
      FixedChar = True
      Size = 3
    end
    object cdsOCIMARCA: TStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object cdsOCIMODELO: TStringField
      FieldName = 'MODELO'
      Size = 35
    end
    object cdsOCICONTA: TStringField
      FieldName = 'CONTA'
      Size = 30
    end
    object cdsOCIDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 50
    end
    object cdsOCICDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
    end
    object cdsOCIDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
    end
    object cdsOCIDATA1: TDateField
      FieldName = 'DATA1'
    end
    object cdsOCIVALOR1: TFloatField
      FieldName = 'VALOR1'
    end
    object cdsOCIDATA2: TDateField
      FieldName = 'DATA2'
    end
    object cdsOCIVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object cdsOCIDATA3: TDateField
      FieldName = 'DATA3'
    end
    object cdsOCIVALOR3: TFloatField
      FieldName = 'VALOR3'
    end
    object cdsOCIDATA4: TDateField
      FieldName = 'DATA4'
    end
    object cdsOCIVALOR4: TFloatField
      FieldName = 'VALOR4'
    end
    object cdsOCIDATA5: TDateField
      FieldName = 'DATA5'
    end
    object cdsOCIVALOR5: TFloatField
      FieldName = 'VALOR5'
    end
    object cdsOCIDATA6: TDateField
      FieldName = 'DATA6'
    end
    object cdsOCIVALOR6: TFloatField
      FieldName = 'VALOR6'
    end
    object cdsOCIDATA7: TDateField
      FieldName = 'DATA7'
    end
    object cdsOCIVALOR7: TFloatField
      FieldName = 'VALOR7'
    end
    object cdsOCIDATA8: TDateField
      FieldName = 'DATA8'
    end
    object cdsOCIVALOR8: TFloatField
      FieldName = 'VALOR8'
    end
    object cdsOCIDATA9: TDateField
      FieldName = 'DATA9'
    end
    object cdsOCIVALOR9: TFloatField
      FieldName = 'VALOR9'
    end
    object cdsOCIDATA10: TDateField
      FieldName = 'DATA10'
    end
    object cdsOCIVALOR10: TFloatField
      FieldName = 'VALOR10'
    end
  end
  object dsOCI: TDataSource
    DataSet = cdsOCI
    Left = 24
    Top = 32
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMPrincipal.SQLCon
    Left = 109
    Top = 181
  end
  object qENF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select nff.cdnf_fornecedor,'
      '       nff.cdpessoa,'
      '       nff.cdoc,'
      '       nff.nnf,'
      '       nff.serie,'
      '       nff.data_emissao,'
      '       nff.data_entrada,'
      '       nff.valor_juros,'
      '       nff.valor_desconto,'
      '       nff.lancado_por,'
      '       nff.lancado_em,'
      '       nff.total_icms,'
      '       nff.total_ipi,'
      '       nff.total_pis,'
      '       nff.total_cofins,'
      '       nff.total_issqn,'
      '       nff.valor_total_nf,'
      '       nff.valor_mercadoria,'
      '       nff.nota_de_servico,'
      '       nff.total_vretpis,'
      '       nff.total_vretcofins,'
      '       nff.total_vretcsll,'
      '       nff.total_virrf,'
      '       nff.total_vbcirrf,'
      '       nff.total_vbcretprev,'
      '       nff.total_vretprev,'
      '       nff.peso_liquido,'
      '       nff.peso_bruto,'
      '       nff.gera_credito,'
      '       nff.total_seguro,'
      '       nff.total_vfrete,'
      '       nff.total_vdesc,'
      '       nff.datacontabil,'
      '       nff.cfop,'
      '       nff.contabil,'
      '       nff.chave_acesso,'
      '       nff.desdobramento,'
      '       fornecedores.nome,'
      '       fornecedores.cpf_cnpj,'
      '       fornecedores.RG_IE,'
      ''
      '       nff.natureza_operacao,'
      '       nff.protocolo_autorizacao,'
      '       nff.base_calc_icms,'
      '       nff.base_calc_icms_st,'
      '       nff.valor_icms_st,'
      '       nff.outras_despesas'
      ''
      ''
      ''
      'from nf_fornecedor nff'
      'left join fornecedores on fornecedores.cdpessoa = nff.cdpessoa'
      'left join ordem_compras on ordem_compras.cdoc = nff.cdoc'
      'order by nff.cdnf_fornecedor desc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 195
    Top = 181
    object qENFCDNF_FORNECEDOR: TIntegerField
      FieldName = 'CDNF_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qENFCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object qENFCDOC: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object qENFNNF: TStringField
      FieldName = 'NNF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qENFSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object qENFDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qENFDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qENFVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFLANCADO_POR: TStringField
      FieldName = 'LANCADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qENFLANCADO_EM: TSQLTimeStampField
      FieldName = 'LANCADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qENFTOTAL_ICMS: TFMTBCDField
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_IPI: TFMTBCDField
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_PIS: TFMTBCDField
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_COFINS: TFMTBCDField
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_ISSQN: TFMTBCDField
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFVALOR_TOTAL_NF: TFMTBCDField
      FieldName = 'VALOR_TOTAL_NF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFVALOR_MERCADORIA: TFMTBCDField
      FieldName = 'VALOR_MERCADORIA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFNOTA_DE_SERVICO: TIntegerField
      FieldName = 'NOTA_DE_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qENFTOTAL_VRETPIS: TFMTBCDField
      FieldName = 'TOTAL_VRETPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VRETCOFINS: TFMTBCDField
      FieldName = 'TOTAL_VRETCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VRETCSLL: TFMTBCDField
      FieldName = 'TOTAL_VRETCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VIRRF: TFMTBCDField
      FieldName = 'TOTAL_VIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VBCIRRF: TFMTBCDField
      FieldName = 'TOTAL_VBCIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VBCRETPREV: TFMTBCDField
      FieldName = 'TOTAL_VBCRETPREV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VRETPREV: TFMTBCDField
      FieldName = 'TOTAL_VRETPREV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object qENFPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object qENFGERA_CREDITO: TIntegerField
      FieldName = 'GERA_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object qENFTOTAL_SEGURO: TFMTBCDField
      FieldName = 'TOTAL_SEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VFRETE: TFMTBCDField
      FieldName = 'TOTAL_VFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFTOTAL_VDESC: TFMTBCDField
      FieldName = 'TOTAL_VDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFDATACONTABIL: TDateField
      FieldName = 'DATACONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object qENFCFOP: TSmallintField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object qENFCONTABIL: TIntegerField
      FieldName = 'CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object qENFCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 44
    end
    object qENFNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qENFDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qENFNATUREZA_OPERACAO: TStringField
      DisplayLabel = 'Natureza Opera'#231#227'o:'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qENFPROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qENFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object qENFRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object qENFBASE_CALC_ICMS: TFMTBCDField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'BASE_CALC_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFBASE_CALC_ICMS_ST: TFMTBCDField
      DisplayLabel = 'Base Calc. ICMS St.'
      FieldName = 'BASE_CALC_ICMS_ST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFOUTRAS_DESPESAS: TFMTBCDField
      DisplayLabel = 'Outras Despesas:'
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspENF: TDataSetProvider
    DataSet = qENF
    UpdateMode = upWhereKeyOnly
    Left = 195
    Top = 128
  end
  object cdsENF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspENF'
    Left = 195
    Top = 80
    object cdsENFCDNF_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNF_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsENFCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFCDOC: TIntegerField
      DisplayLabel = 'N'#186' O.C.:'
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFNNF: TStringField
      DisplayLabel = 'N'#186' NFe:'
      FieldName = 'NNF'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsENFSERIE: TIntegerField
      DisplayLabel = 'S'#233'rie:'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFDATA_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o:'
      FieldName = 'DATA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsENFDATA_ENTRADA: TDateField
      DisplayLabel = 'Data Entrada:'
      FieldName = 'DATA_ENTRADA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsENFVALOR_JUROS: TFMTBCDField
      DisplayLabel = 'Juros:'
      FieldName = 'VALOR_JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFLANCADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'LANCADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsENFLANCADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Lan'#231'amento:'
      FieldName = 'LANCADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFTOTAL_ICMS: TFMTBCDField
      DisplayLabel = 'Valor ICMS:'
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI:'
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_PIS: TFMTBCDField
      DisplayLabel = 'Valor PIS:'
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_COFINS: TFMTBCDField
      DisplayLabel = 'Valor Cofins:'
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_ISSQN: TFMTBCDField
      DisplayLabel = 'Valor ISSQN:'
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFVALOR_TOTAL_NF: TFMTBCDField
      DisplayLabel = 'Valor NFe:'
      FieldName = 'VALOR_TOTAL_NF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFVALOR_MERCADORIA: TFMTBCDField
      DisplayLabel = 'Valor Produtos'
      FieldName = 'VALOR_MERCADORIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFNOTA_DE_SERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o:'
      FieldName = 'NOTA_DE_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFTOTAL_VRETPIS: TFMTBCDField
      FieldName = 'TOTAL_VRETPIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VRETCOFINS: TFMTBCDField
      FieldName = 'TOTAL_VRETCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VRETCSLL: TFMTBCDField
      FieldName = 'TOTAL_VRETCSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VIRRF: TFMTBCDField
      FieldName = 'TOTAL_VIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VBCIRRF: TFMTBCDField
      FieldName = 'TOTAL_VBCIRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VBCRETPREV: TFMTBCDField
      FieldName = 'TOTAL_VBCRETPREV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VRETPREV: TFMTBCDField
      FieldName = 'TOTAL_VRETPREV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFPESO_LIQUIDO: TFMTBCDField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'PESO_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 3
    end
    object cdsENFPESO_BRUTO: TFMTBCDField
      DisplayLabel = 'Peso Bruto:'
      FieldName = 'PESO_BRUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 3
    end
    object cdsENFGERA_CREDITO: TIntegerField
      FieldName = 'GERA_CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFTOTAL_SEGURO: TFMTBCDField
      DisplayLabel = 'Seguro:'
      FieldName = 'TOTAL_SEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VFRETE: TFMTBCDField
      DisplayLabel = 'Frete:'
      FieldName = 'TOTAL_VFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFTOTAL_VDESC: TFMTBCDField
      FieldName = 'TOTAL_VDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFDATACONTABIL: TDateField
      DisplayLabel = 'Data Cont'#225'bil:'
      FieldName = 'DATACONTABIL'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsENFCFOP: TSmallintField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFCONTABIL: TIntegerField
      DisplayLabel = 'Contabil:'
      FieldName = 'CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFCHAVE_ACESSO: TStringField
      DisplayLabel = 'Chave Acesso:'
      FieldName = 'CHAVE_ACESSO'
      ProviderFlags = [pfInUpdate]
      EditMask = '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;_'
      FixedChar = True
      Size = 44
    end
    object cdsENFNOME: TStringField
      DisplayLabel = 'Fornecedor:'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsENFDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFNATUREZA_OPERACAO: TStringField
      DisplayLabel = 'Natureza de Opera'#231#227'o:'
      FieldName = 'NATUREZA_OPERACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsENFPROTOCOLO_AUTORIZACAO: TStringField
      DisplayLabel = 'Protocolo Autoriza'#231#227'o:'
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsENFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object cdsENFRG_IE: TStringField
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object cdsENFBASE_CALC_ICMS: TFMTBCDField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'BASE_CALC_ICMS'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFBASE_CALC_ICMS_ST: TFMTBCDField
      DisplayLabel = 'Base Calc. ISMS ST'
      FieldName = 'BASE_CALC_ICMS_ST'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFVALOR_ICMS_ST: TFMTBCDField
      DisplayLabel = 'Valor ICMS S.T.'
      FieldName = 'VALOR_ICMS_ST'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFOUTRAS_DESPESAS: TFMTBCDField
      DisplayLabel = 'Outras Despesas:'
      FieldName = 'OUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsENF: TDataSource
    DataSet = cdsENF
    Left = 195
    Top = 32
  end
  object dsENFI: TDataSource
    DataSet = cdsENFI
    Left = 281
    Top = 32
  end
  object cdsENFI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDNF_FORNECEDOR'
    MasterFields = 'CDNF_FORNECEDOR'
    MasterSource = dsENF
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspENFI'
    Left = 281
    Top = 80
    object cdsENFICDNF_FORNECEDOR_ITEM: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNF_FORNECEDOR_ITEM'
      Required = True
    end
    object cdsENFICDNF_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNF_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFIVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_MERCADORIA: TFMTBCDField
      DisplayLabel = 'Valor Mercadoria:'
      FieldName = 'VALOR_MERCADORIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFICDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFIDESCRICAO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsENFINRSEQUEN: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFIESTOQUE: TIntegerField
      DisplayLabel = 'Estoque:'
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsENFIUNIDADE: TStringField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsENFIQUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade:'
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 4
    end
    object cdsENFIICMS: TFMTBCDField
      DisplayLabel = 'ICMS:'
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_ICMS: TFMTBCDField
      DisplayLabel = 'Valor Base ICMS:'
      FieldName = 'VALOR_BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_ICMS: TFMTBCDField
      DisplayLabel = 'Valor ICMS:'
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_IPI: TFMTBCDField
      DisplayLabel = 'Valor Base IPI:'
      FieldName = 'VALOR_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIIPI: TFMTBCDField
      DisplayLabel = 'IPI:'
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI:'
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_PIS: TFMTBCDField
      DisplayLabel = 'Valor Base PIS:'
      FieldName = 'VALOR_BASE_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIPIS: TFMTBCDField
      DisplayLabel = 'PIS:'
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_PIS: TFMTBCDField
      DisplayLabel = 'Valor PIS:'
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_COFINS: TFMTBCDField
      DisplayLabel = 'Valor Base Cofins:'
      FieldName = 'VALOR_BASE_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFICOFINS: TFMTBCDField
      DisplayLabel = 'COFINS:'
      FieldName = 'COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_COFINS: TFMTBCDField
      DisplayLabel = 'Valor Cofins:'
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_ISSQN: TFMTBCDField
      DisplayLabel = 'Valor Base ISSQN:'
      FieldName = 'VALOR_BASE_ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIISSQN: TFMTBCDField
      DisplayLabel = 'ISSQN:'
      FieldName = 'ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_ISSQN: TFMTBCDField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'VALOR_ISSQN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_CSLL: TFMTBCDField
      DisplayLabel = 'Valor CSLL:'
      FieldName = 'VALOR_CSLL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_IRRF: TFMTBCDField
      DisplayLabel = 'Valor IRRF:'
      FieldName = 'VALOR_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_IRRF: TFMTBCDField
      DisplayLabel = 'Valor Base IRRF'
      FieldName = 'VALOR_BASE_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_BASE_INSS: TFMTBCDField
      DisplayLabel = 'Valor Base INSS:'
      FieldName = 'VALOR_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIVALOR_INSS: TFMTBCDField
      DisplayLabel = 'Valor INSS:'
      FieldName = 'VALOR_INSS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsENFIPRODUTO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsENFICFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cdsENFINCM: TStringField
      DisplayLabel = 'NCM:'
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsENFICST: TStringField
      DisplayLabel = 'CST:'
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsENFIORIGEM: TStringField
      DisplayLabel = 'Origem:'
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspENFI: TDataSetProvider
    DataSet = qENFI
    UpdateMode = upWhereChanged
    Left = 281
    Top = 128
  end
  object qENFI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdnf_fornecedor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select nffi.cdnf_fornecedor_item,'
      '       nffi.valor_unitario,'
      '       nffi.valor_mercadoria,'
      '       nffi.cdproduto,'
      '       nffi.descricao,'
      '       nffi.estoque,'
      '       nffi.nrsequen,'
      '       nffi.unidade,'
      '       nffi.quantidade,'
      '       nffi.cfop,'
      '       nffi.icms,'
      '       nffi.valor_base_icms,'
      '       nffi.valor_icms,'
      '       nffi.valor_base_ipi,'
      '       nffi.ipi,'
      '       nffi.valor_ipi,'
      '       nffi.valor_base_pis,'
      '       nffi.pis,'
      '       nffi.valor_pis,'
      '       nffi.valor_base_cofins,'
      '       nffi.cofins,'
      '       nffi.valor_cofins,'
      '       nffi.valor_base_issqn,'
      '       nffi.issqn,'
      '       nffi.valor_issqn,'
      '       nffi.valor_csll,'
      '       nffi.valor_irrf,'
      '       nffi.valor_base_irrf,'
      '       nffi.valor_base_inss,'
      '       nffi.valor_inss,'
      '       nffi.cdnf_fornecedor,'
      '       nffi.ncm,'
      '       nffi.cst,'
      '       nffi.origem,'
      ''
      '       produtos.descricao as produto'
      ''
      'from nf_fornecedor_itens nffi'
      'left join produtos on produtos.cdproduto = nffi.cdproduto'
      'where nffi.cdnf_fornecedor =:cdnf_fornecedor')
    SQLConnection = DMPrincipal.SQLCon
    Left = 281
    Top = 181
    object qENFICDNF_FORNECEDOR_ITEM: TIntegerField
      FieldName = 'CDNF_FORNECEDOR_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qENFIVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_MERCADORIA: TFMTBCDField
      FieldName = 'VALOR_MERCADORIA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qENFIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qENFIESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
    object qENFINRSEQUEN: TIntegerField
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
    end
    object qENFIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qENFIQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 4
    end
    object qENFIICMS: TFMTBCDField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_ICMS: TFMTBCDField
      FieldName = 'VALOR_BASE_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_IPI: TFMTBCDField
      FieldName = 'VALOR_BASE_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIIPI: TFMTBCDField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_PIS: TFMTBCDField
      FieldName = 'VALOR_BASE_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIPIS: TFMTBCDField
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_COFINS: TFMTBCDField
      FieldName = 'VALOR_BASE_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFICOFINS: TFMTBCDField
      FieldName = 'COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_ISSQN: TFMTBCDField
      FieldName = 'VALOR_BASE_ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_ISSQN: TFMTBCDField
      FieldName = 'VALOR_ISSQN'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_CSLL: TFMTBCDField
      FieldName = 'VALOR_CSLL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_IRRF: TFMTBCDField
      FieldName = 'VALOR_IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_IRRF: TFMTBCDField
      FieldName = 'VALOR_BASE_IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_BASE_INSS: TFMTBCDField
      FieldName = 'VALOR_BASE_INSS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFIVALOR_INSS: TFMTBCDField
      FieldName = 'VALOR_INSS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qENFICDNF_FORNECEDOR: TIntegerField
      FieldName = 'CDNF_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qENFIPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object qENFICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object qENFINCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qENFICST: TStringField
      FieldName = 'CST'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qENFIORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object qForn: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'cpf_cnpj'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from fornecedores'
      'where  fornecedores.cpf_cnpj =:cpf_cnpj')
    SQLConnection = DMPrincipal.SQLCon
    Left = 367
    Top = 181
  end
  object cdsForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForn'
    Left = 367
    Top = 80
    object cdsFornCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object cdsFornCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'CDPESSOA'
    end
    object cdsFornNOME: TStringField
      DisplayLabel = 'Nome/Raz'#227'o Social:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornAPELIDO: TStringField
      DisplayLabel = 'Nome Red.:'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsFornENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornNUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsFornBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsFornCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFornUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornCONTATO: TStringField
      DisplayLabel = 'Contato:'
      FieldName = 'CONTATO'
      Size = 10
    end
    object cdsFornSITE: TStringField
      DisplayLabel = 'website:'
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsFornCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ:'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsFornRG_IE: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
    end
    object cdsFornCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE:'
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsFornDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATA_CADASTRO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsFornTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo Pessoa:'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsFornFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      EditMask = '(00)0000-00009;0;_'
      Size = 11
    end
    object cdsFornFAX: TStringField
      DisplayLabel = 'Fax:'
      FieldName = 'FAX'
      EditMask = '(00)0000-00009;0;_'
      Size = 11
    end
    object cdsFornATIVO: TIntegerField
      DisplayLabel = 'Ativo:'
      FieldName = 'ATIVO'
    end
    object cdsFornCODSEGMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Segmento'
      FieldName = 'CODSEGMENTO'
    end
    object cdsFornISO: TIntegerField
      DisplayLabel = 'ISO:'
      FieldName = 'ISO'
    end
    object cdsFornGRAU_IMPORTANCIA: TStringField
      DisplayLabel = 'Grau Import'#226'ncia:'
      FieldName = 'GRAU_IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object cdsFornCDENQUADRAMENTO_IMPOSTO: TIntegerField
      DisplayLabel = 'Enq. Imposto'
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
    object cdsFornREACH_ROHS: TIntegerField
      DisplayLabel = 'REACH/ROHS'
      FieldName = 'REACH_ROHS'
    end
    object cdsFornCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd.Pa'#237's:'
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsFornNASC_FUNDACAO: TDateField
      DisplayLabel = 'Nasc/Funda'#231#227'o'
      FieldName = 'NASC_FUNDACAO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsFornPAIS: TStringField
      DisplayLabel = 'Pa'#237's:'
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsFornCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      Size = 10
    end
    object cdsFornEMAIL_NFE: TStringField
      DisplayLabel = 'e-mail NFe:'
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsFornPNG: TIntegerField
      DisplayLabel = 'PNG:'
      FieldName = 'PNG'
    end
    object cdsFornLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito:'
      FieldName = 'LIMITE_CREDITO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsFornISO_14000: TIntegerField
      FieldName = 'ISO_14000'
    end
  end
  object dspForn: TDataSetProvider
    DataSet = qForn
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 367
    Top = 128
  end
  object dsForn: TDataSource
    DataSet = cdsForn
    Left = 367
    Top = 32
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = -1
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
    Left = 453
    Top = 181
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
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    UpdateMode = upWhereKeyOnly
    Left = 453
    Top = 128
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 453
    Top = 80
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
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 453
    Top = 32
  end
  object dsCompatibilidade: TDataSource
    DataSet = cdsCompatibilidade
    Left = 539
    Top = 32
  end
  object cdsCompatibilidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompatibilidade'
    Left = 539
    Top = 80
    object cdsCompatibilidadeCDCOMPATIBILIDADE: TIntegerField
      FieldName = 'CDCOMPATIBILIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCompatibilidadeCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompatibilidadeCDPRODUTO_FORNECEDOR: TStringField
      FieldName = 'CDPRODUTO_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCompatibilidadeCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompatibilidadeCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCompatibilidadeCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCompatibilidadeALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCompatibilidadeALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCompatibilidade: TDataSetProvider
    DataSet = qCompatibilidade
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspCompatibilidadeGetTableName
    Left = 539
    Top = 128
  end
  object qCompatibilidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from nf_fornecedor_compat')
    SQLConnection = DMPrincipal.SQLCon
    Left = 539
    Top = 181
    object qCompatibilidadeCDCOMPATIBILIDADE: TIntegerField
      FieldName = 'CDCOMPATIBILIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCompatibilidadeCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCompatibilidadeCDPRODUTO_FORNECEDOR: TStringField
      FieldName = 'CDPRODUTO_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCompatibilidadeCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qCompatibilidadeCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCompatibilidadeCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qCompatibilidadeALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCompatibilidadeALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qInsert: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from nf_fornecedor_compat')
    SQLConnection = DMPrincipal.SQLCon
    Left = 109
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'CDCOMPATIBILIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'CDPRODUTO_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object IntegerField3: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object StringField3: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsENFFatura: TDataSource
    DataSet = cdsENFFatura
    Left = 625
    Top = 32
  end
  object cdsENFFatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspENFFatura'
    Left = 625
    Top = 80
    object cdsENFFaturaCDNF_FORNECEDOR_FATURA: TIntegerField
      FieldName = 'CDNF_FORNECEDOR_FATURA'
      Required = True
    end
    object cdsENFFaturaCDNF_FORNECEDOR: TIntegerField
      FieldName = 'CDNF_FORNECEDOR'
    end
    object cdsENFFaturaNUMERO_FTURA: TIntegerField
      FieldName = 'NUMERO_FTURA'
    end
    object cdsENFFaturaVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsENFFaturaVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object dspENFFatura: TDataSetProvider
    DataSet = qENFFatura
    Left = 625
    Top = 128
  end
  object qENFFatura: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from nf_fornecedor_fatura')
    SQLConnection = DMPrincipal.SQLCon
    Left = 625
    Top = 181
  end
  object qCtasPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ctas_pagar.cdctas_pagar,'
      '           ctas_pagar.cdfornecedor,'
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
      '       ctas_pagar.cdconta_bancaria,      '
      '       ctas_pagar.conta,'
      ''
      '       fornecedores.nome,'
      '       plano_contas.descricao_conta'
      'from ctas_pagar'
      
        'left join fornecedores on fornecedores.cdfornecedor = ctas_pagar' +
        '.cdfornecedor'
      
        'left join plano_contas on plano_contas.cdplano_contas = ctas_pag' +
        'ar.cdplano_contas'
      'order by ctas_pagar.vencimento asc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 711
    Top = 181
    object qCtasPagarCDCTAS_PAGAR: TIntegerField
      FieldName = 'CDCTAS_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCtasPagarCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
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
    object qCtasPagarCDCONTA_BANCARIA: TIntegerField
      FieldName = 'CDCONTA_BANCARIA'
      ProviderFlags = [pfInUpdate]
    end
    object qCtasPagarCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 10
    end
    object qCtasPagarNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qCtasPagarDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspCtasPagar: TDataSetProvider
    DataSet = qCtasPagar
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspCtasPagarGetTableName
    Left = 711
    Top = 128
  end
  object cdsCtasPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCtasPagar'
    Left = 711
    Top = 80
    object cdsCtasPagarCDCTAS_PAGAR: TIntegerField
      FieldName = 'CDCTAS_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCtasPagarCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCtasPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsCtasPagarVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsCtasPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarDATA_PAGTO: TDateField
      FieldName = 'DATA_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsCtasPagarCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarCADASTRADO_EM: TDateField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarLIQUIDADO: TIntegerField
      FieldName = 'LIQUIDADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCtasPagarLIQUIDADO_EM: TDateField
      FieldName = 'LIQUIDADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarCDCONTA_BANCARIA: TIntegerField
      FieldName = 'CDCONTA_BANCARIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCtasPagarCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 10
    end
    object cdsCtasPagarNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsCtasPagarDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsCtasPagar: TDataSource
    DataSet = cdsCtasPagar
    Left = 711
    Top = 32
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
    Left = 797
    Top = 181
  end
  object dspMovimenta: TDataSetProvider
    DataSet = qMovimenta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 797
    Top = 128
  end
  object cdsMovimenta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimenta'
    Left = 797
    Top = 80
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
    object cdsMovimentaSALDO_ANTERIOR: TSingleField
      FieldName = 'SALDO_ANTERIOR'
    end
    object cdsMovimentaSAIDA: TSingleField
      FieldName = 'SAIDA'
    end
    object cdsMovimentaSALDO_ATUAL: TSingleField
      FieldName = 'SALDO_ATUAL'
    end
    object cdsMovimentaCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
    end
  end
  object dsMovimenta: TDataSource
    DataSet = cdsMovimenta
    Left = 797
    Top = 32
  end
end
