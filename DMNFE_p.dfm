object DMNFE: TDMNFE
  OldCreateOrder = False
  Height = 526
  Width = 1326
  object qNFE: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_nfe'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'serie'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cdempresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select nf_e.cdempresa,'
      '       nf_e.cod_nfe,'
      '       nf_e.serie,'
      '       nf_e.xml,'
      '       nf_e.xml2'
      'from nf_e'
      'Where nf_e.cod_nfe = :cod_nfe'
      'and   nf_e.serie =:serie'
      'and  nf_e.cdempresa = :cdempresa')
    SQLConnection = DMPrincipal.SQLCon
    Left = 254
    Top = 395
  end
  object cdsNFE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFE'
    Left = 254
    Top = 304
    object cdsNFECDEMPRESA: TIntegerField
      FieldName = 'CDEMPRESA'
      Required = True
    end
    object cdsNFECOD_NFE: TIntegerField
      FieldName = 'COD_NFE'
      Required = True
    end
    object cdsNFESERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsNFEXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFEXML2: TBlobField
      FieldName = 'XML2'
      Size = 1
    end
  end
  object dspNFE: TDataSetProvider
    DataSet = qNFE
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 253
    Top = 349
  end
  object dsNFE: TDataSource
    DataSet = cdsNFE
    Left = 256
    Top = 252
  end
  object qNF: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select '
      '       nf.cdnf,'
      '       nf.nrnf,'
      '       nf.serie,'
      '       nf.dtemisnf,'
      '       nf.hora_emissao,'
      '       nf.tpdocto,'
      '       nf.cdpedido,'
      '       nf.cdcliente,'
      '       nf.dtsaida,'
      '       nf.vltotmer,'
      '       nf.baseipi,'
      '       nf.vltotipi,'
      '       nf.vltotnf,'
      '       nf.vldesc,'
      '       nf.pcdesc,'
      '       nf.vlcomis,'
      '       nf.cdvended,'
      '       nf.baseicms,'
      '       nf.pcicms,'
      '       nf.vltoticms,'
      '       nf.cdobsfis,'
      '       nf.obs_fiscal,'
      '       nf.cst_ipi,'
      '       nf.enquadramento_ipi,'
      '       nf.quantida,'
      '       nf.cdnatope,'
      '       nf.cdtransp,'
      '       nf.fretec,'
      '       nf.tipo_tranporte,'
      '       nf.placa,'
      '       nf.estado_placa,'
      '       nf.pcfrete,'
      '       nf.vltotfre,'
      '       nf.pesoliqt,'
      '       nf.pesobrut,'
      '       nf.usuario,'
      '       nf.indstat,'
      '       nf.fatura,'
      '       nf.vldev,'
      '       nf.icmsfrete,'
      '       nf.clifor,'
      '       nf.vltotservico,'
      '       nf.vltotiss,'
      '       nf.valor_total_pis,'
      '       nf.valor_total_cofins,'
      '       nf.referencia_nc,'
      '       nf.valor_diferimento,'
      '       nf.chave,'
      '       nf.tpemis,'
      '       nf.versao_nfe,'
      '       nf.data_cancelamento,'
      '       nf.refnf,'
      '       nf.ufembarq,'
      '       nf.xlocembarq,'
      '       nf.resultado_nfe,'
      '       nf.protocolo_nfe,'
      '       nf.canhoto_ok,'
      '       nf.nrevento,'
      '       nf.referencia_nf_devolucao,'
      '       nf.nf_entrada,'
      '       nf.epec_conciliado,'
      '       nf.codigo_para_chave_nfe,'
      '       nf.vlseguro,'
      '       nf.vloutras_despesas,'
      '       nf.cdantt,'
      '       nf.baseicmsubst,'
      '       nf.vltoticmsubst,'
      '       nf.especie,'
      '       nf.marca,'
      ''
      '       natuope.descrnat,'
      '      '
      '       transportadores.nome as transportador,'
      '       transportadores.cpf_cnpj as Transp_cpf_cnpj,'
      '       transportadores.rg_ie as transp_rg_ie,'
      '       transportadores.endereco as transp_endereco,'
      '       transportadores.numero as transp_numero,'
      '       Transportadores.cidade as transp_cidade,'
      '       Transportadores.uf as transp_uf,'
      '       Transportadores.tipo_pessoa as transp_tipo_pessoa,'
      '       vendedores.nome as vendedor,'
      ''
      '       case when nf.cdcliente is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                               select f.nome, f.' +
        'cdpessoa from fornecedores f union'
      
        '                                               select t.nome, t.' +
        'cdpessoa from transportadores t)'
      '                 where cdpessoa = nf.cdcliente )'
      '       end as cliente,'
      ' '
      
        '       ( select cpf_cnpj from ( select c.cpf_cnpj, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                             select f.cpf_cnpj, ' +
        'f.cdpessoa from fornecedores f union'
      
        '                                             select t.cpf_cnpj, ' +
        't.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cpf_cnpj,'
      ''
      
        '       ( select ie_rg from ( select c.ie_rg, c.cdpessoa from cli' +
        'entes c union'
      
        '                                        select f.rg_ie, f.cdpess' +
        'oa from fornecedores f union'
      
        '                                        select t.rg_ie, t.cdpess' +
        'oa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as ie_rg,'
      ''
      
        '       ( select endereco from ( select c.endereco, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                              select f.endereco,' +
        ' f.cdpessoa from fornecedores f union'
      
        '                                              select t.endereco,' +
        ' t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as endereco,'
      ''
      
        '       ( select numero from ( select c.numero , c.cdpessoa from ' +
        'clientes c union'
      
        '                                           select f.numero, f.cd' +
        'pessoa from fornecedores f union'
      
        '                                           select t.numero, t.cd' +
        'pessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as numero,'
      ''
      
        '       ( select bairro from ( select c.bairro, c.cdpessoa from c' +
        'lientes c union'
      
        '                                         select f.bairro, f.cdpe' +
        'ssoa from fornecedores f union'
      
        '                                         select t.bairro, t.cdpe' +
        'ssoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as bairro,'
      ''
      
        '       ( select cidade from ( select c.cidade, c.cdpessoa from c' +
        'lientes c union'
      
        '                                          select f.cidade, f.cdp' +
        'essoa from fornecedores f union'
      
        '                                          select t.cidade, t.cdp' +
        'essoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cidade,'
      ''
      
        '       ( select cep from ( select c.cep, c.cdpessoa from cliente' +
        's c union'
      
        '                                     select f.cep, f.cdpessoa fr' +
        'om fornecedores f union'
      
        '                                     select t.cep, t.cdpessoa fr' +
        'om transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cep,'
      ''
      
        '       ( select uf from ( select c.uf, c.cdpessoa from clientes ' +
        'c union'
      
        '                                   select f.uf, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                   select t.uf, t.cdpessoa from ' +
        'transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as uf,'
      ''
      
        '       ( select cod_ibge from ( select c.cod_ibge, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                              select f.cod_ibge,' +
        ' f.cdpessoa from fornecedores f union'
      
        '                                              select t.cod_ibge,' +
        ' t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cod_ibge,'
      ''
      
        '       ( select cod_pais from ( select c.cod_pais, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                             select f.cod_pais, ' +
        'f.cdpessoa from fornecedores f union'
      
        '                                             select t.cod_pais, ' +
        't.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cod_pais,'
      ''
      
        '       ( select pais from ( select c.pais, c.cdpessoa from clien' +
        'tes c union'
      
        '                                      select f.pais, f.cdpessoa ' +
        'from fornecedores f union'
      
        '                                      select t.pais, t.cdpessoa ' +
        'from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as pais,'
      ''
      
        '       ( select fone from ( select c.fone, c.cdpessoa from clien' +
        'tes c union'
      
        '                                       select f.fone, f.cdpessoa' +
        ' from fornecedores f union'
      
        '                                       select t.fone, t.cdpessoa' +
        ' from transportadores t)'
      '         where cdpessoa = nf.cdcliente) as fone,'
      ''
      
        '       ( select tipo_pessoa from ( select c.tipo_pessoa, c.cdpes' +
        'soa from clientes c union'
      
        '                                                  select f.tipo_' +
        'pessoa, f.cdpessoa from fornecedores f union'
      
        '                                                  select t.tipo_' +
        'pessoa, t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as tipo_pessoa,'
      ''
      
        '       ( select email_nfe from ( select c.email_nfe, c.cdpessoa ' +
        'from clientes c union'
      
        '                                               select f.email_nf' +
        'e, f.cdpessoa from fornecedores f union'
      
        '                                               select t.email_nf' +
        'e, t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as email_nfe'
      ''
      'from nf'
      'left join natuope on natuope.cdnatope = nf.cdnatope'
      
        'left join transportadores on transportadores.cdtransportador = n' +
        'f.cdtransp'
      'left join vendedores on vendedores.cdvendedor = nf.cdvended'
      'left join pedidos on pedidos.cdpedido = nf.cdpedido'
      
        'left join clientes on     (clientes.cdpessoa = pedidos.cdcliente' +
        ' and nf.clifor = '#39'C'#39')'
      
        'left join fornecedores on (fornecedores.cdpessoa = nf.cdcliente ' +
        'and nf.clifor = '#39'F'#39')'
      
        'left join transportadores t on (t.cdpessoa = nf.cdcliente and nf' +
        '.clifor = '#39'T'#39')'
      'order by nf.nrnf desc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 86
    Top = 171
    object qNFCDNF: TIntegerField
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNFNRNF: TIntegerField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFDTEMISNF: TDateField
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFTPDOCTO: TStringField
      FieldName = 'TPDOCTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTMER: TFloatField
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTIPI: TFloatField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTNF: TFloatField
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLDESC: TFloatField
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPCDESC: TFloatField
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLCOMIS: TFloatField
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDVENDED: TSmallintField
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPCICMS: TFloatField
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTICMS: TFloatField
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDOBSFIS: TSmallintField
      FieldName = 'CDOBSFIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFOBS_FISCAL: TStringField
      FieldName = 'OBS_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object qNFCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object qNFENQUADRAMENTO_IPI: TSmallintField
      FieldName = 'ENQUADRAMENTO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFQUANTIDA: TFloatField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object qNFFRETEC: TStringField
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFTIPO_TRANPORTE: TStringField
      FieldName = 'TIPO_TRANPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object qNFPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object qNFESTADO_PLACA: TStringField
      FieldName = 'ESTADO_PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFPCFRETE: TFloatField
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTFRE: TFloatField
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPESOLIQT: TFloatField
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPESOBRUT: TFloatField
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFINDSTAT: TStringField
      FieldName = 'INDSTAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFVLDEV: TFloatField
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFVLTOTSERVICO: TFloatField
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTISS: TFloatField
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVALOR_TOTAL_PIS: TFloatField
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVALOR_TOTAL_COFINS: TFloatField
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFVALOR_DIFERIMENTO: TFloatField
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 44
    end
    object qNFTPEMIS: TSmallintField
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVERSAO_NFE: TStringField
      FieldName = 'VERSAO_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFDATA_CANCELAMENTO: TDateField
      FieldName = 'DATA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFNF: TIntegerField
      FieldName = 'REFNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qNFXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNFRESULTADO_NFE: TStringField
      FieldName = 'RESULTADO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNFPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qNFCANHOTO_OK: TStringField
      FieldName = 'CANHOTO_OK'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFNREVENTO: TIntegerField
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFNF_ENTRADA: TIntegerField
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFEPEC_CONCILIADO: TStringField
      FieldName = 'EPEC_CONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFCODIGO_PARA_CHAVE_NFE: TStringField
      FieldName = 'CODIGO_PARA_CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qNFVLSEGURO: TFloatField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLOUTRAS_DESPESAS: TFloatField
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDANTT: TIntegerField
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEICMSUBST: TFloatField
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTICMSUBST: TFloatField
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object qNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qNFMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qNFDESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      ProviderFlags = []
      Size = 40
    end
    object qNFTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      ProviderFlags = []
      Size = 50
    end
    object qNFTRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object qNFTRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object qNFTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNFTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object qNFTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object qNFTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFTRANSP_TIPO_PESSOA: TIntegerField
      FieldName = 'TRANSP_TIPO_PESSOA'
      ProviderFlags = []
    end
    object qNFVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qNFCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qNFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object qNFIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = []
    end
    object qNFENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNFNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 50
    end
    object qNFBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object qNFCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object qNFCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object qNFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      ProviderFlags = []
      Size = 7
    end
    object qNFCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qNFPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = []
      Size = 60
    end
    object qNFFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 15
    end
    object qNFTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      ProviderFlags = []
    end
    object qNFEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 86
    Top = 79
    object cdsNFCDNF: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFNRNF: TIntegerField
      DisplayLabel = 'N'#186' NFe:'
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFSERIE: TIntegerField
      DisplayLabel = 'S'#233'rie:'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFDTEMISNF: TDateField
      DisplayLabel = 'Data Emiss'#227'o:'
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsNFHORA_EMISSAO: TTimeField
      DisplayLabel = 'Hora Emiss'#227'o:'
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cdsNFTPDOCTO: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TPDOCTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186'  Pedido:'
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDTSAIDA: TDateField
      DisplayLabel = 'Data Sa'#237'da:'
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsNFVLTOTMER: TFloatField
      DisplayLabel = 'Valor Mercadoria:'
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFBASEIPI: TFloatField
      DisplayLabel = 'Base IPI:'
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTIPI: TFloatField
      DisplayLabel = 'Valor IPI:'
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTNF: TFloatField
      DisplayLabel = 'Total NFe:'
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLDESC: TFloatField
      DisplayLabel = 'Valor Desconto:'
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFPCDESC: TFloatField
      DisplayLabel = '% Desconto:'
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLCOMIS: TFloatField
      DisplayLabel = 'Valor Comiss'#227'o:'
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFCDVENDED: TSmallintField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEICMS: TFloatField
      DisplayLabel = 'Base Calc. ICMS:'
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFPCICMS: TFloatField
      DisplayLabel = '% ICMS:'
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTICMS: TFloatField
      DisplayLabel = 'Valor Total ICMS:'
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFCDOBSFIS: TSmallintField
      DisplayLabel = 'C'#243'd Obs Fiscal:'
      FieldName = 'CDOBSFIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFOBS_FISCAL: TStringField
      DisplayLabel = 'Obs. Fiscal:'
      FieldName = 'OBS_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object cdsNFCST_IPI: TStringField
      DisplayLabel = 'C'#243'd. Sit. Trib. IPI:'
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsNFENQUADRAMENTO_IPI: TSmallintField
      DisplayLabel = 'Enq. IPI:'
      FieldName = 'ENQUADRAMENTO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFQUANTIDA: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDNATOPE: TSmallintField
      DisplayLabel = 'C'#243'd. Nat. Opera'#231#227'o:'
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDTRANSP: TSmallintField
      DisplayLabel = 'C'#243'd.Transportador:'
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFFRETEC: TStringField
      DisplayLabel = 'Frete:'
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFTIPO_TRANPORTE: TStringField
      DisplayLabel = 'Tipo Transp:'
      FieldName = 'TIPO_TRANPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cdsNFPLACA: TStringField
      DisplayLabel = 'Placa:'
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object cdsNFESTADO_PLACA: TStringField
      DisplayLabel = 'UF (Placa):'
      FieldName = 'ESTADO_PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFPCFRETE: TFloatField
      DisplayLabel = '% Frete:'
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTFRE: TFloatField
      DisplayLabel = 'Total Frete:'
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFPESOLIQT: TFloatField
      DisplayLabel = 'Peso Liquido:'
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFPESOBRUT: TFloatField
      DisplayLabel = 'Peso Bruto:'
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFINDSTAT: TStringField
      DisplayLabel = 'Status:'
      FieldName = 'INDSTAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFFATURA: TStringField
      DisplayLabel = 'Fatura:'
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFVLDEV: TFloatField
      DisplayLabel = 'Valor Devolu'#231#227'o:'
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFICMSFRETE: TFloatField
      DisplayLabel = 'ICMS Frete:'
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFCLIFOR: TStringField
      DisplayLabel = 'C/F'
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFVLTOTSERVICO: TFloatField
      DisplayLabel = 'Valor Total Servi'#231'o:'
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTISS: TFloatField
      DisplayLabel = 'Total ISS'
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVALOR_TOTAL_PIS: TFloatField
      DisplayLabel = 'Total PIS:'
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVALOR_TOTAL_COFINS: TFloatField
      DisplayLabel = 'Total Cofins'
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFREFERENCIA_NC: TStringField
      DisplayLabel = 'NC Referencial:'
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFVALOR_DIFERIMENTO: TFloatField
      DisplayLabel = 'Valor Diferimento:'
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      EditMask = '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;_'
      FixedChar = True
      Size = 44
    end
    object cdsNFTPEMIS: TSmallintField
      DisplayLabel = 'Tipo Emiss'#227'o:'
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVERSAO_NFE: TStringField
      DisplayLabel = 'Vers'#227'o NFe:'
      FieldName = 'VERSAO_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFDATA_CANCELAMENTO: TDateField
      DisplayLabel = 'Data Cancelamento:'
      FieldName = 'DATA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsNFREFNF: TIntegerField
      DisplayLabel = 'Ref. NFe:'
      FieldName = 'REFNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFUFEMBARQ: TStringField
      DisplayLabel = 'UF (Embarque):'
      FieldName = 'UFEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNFXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFRESULTADO_NFE: TStringField
      DisplayLabel = 'Retorno NFe:'
      FieldName = 'RESULTADO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFPROTOCOLO_NFE: TStringField
      DisplayLabel = 'Protocolo NFe:'
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsNFCANHOTO_OK: TStringField
      DisplayLabel = 'Canhoto:'
      FieldName = 'CANHOTO_OK'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFNREVENTO: TIntegerField
      DisplayLabel = 'N'#186' Evento:'
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFREFERENCIA_NF_DEVOLUCAO: TStringField
      DisplayLabel = 'Referencia NFe Devolu'#231#227'o:'
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFNF_ENTRADA: TIntegerField
      DisplayLabel = 'NFe Entrada:'
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFEPEC_CONCILIADO: TStringField
      DisplayLabel = 'EPEC (Conciliado):'
      FieldName = 'EPEC_CONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFCODIGO_PARA_CHAVE_NFE: TStringField
      DisplayLabel = 'C'#243'd. Chave NFe:'
      FieldName = 'CODIGO_PARA_CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object cdsNFVLSEGURO: TFloatField
      DisplayLabel = 'Valor Seguro:'
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLOUTRAS_DESPESAS: TFloatField
      DisplayLabel = 'Outras Despesas:'
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFCDANTT: TIntegerField
      DisplayLabel = 'ANTT:'
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEICMSUBST: TFloatField
      DisplayLabel = 'Base ICMS Subst.:'
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFVLTOTICMSUBST: TFloatField
      DisplayLabel = 'Valor ICMS Subst:'
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsNFESPECIE: TStringField
      DisplayLabel = 'Esp'#233'cie:'
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNFMARCA: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNFDESCRNAT: TStringField
      DisplayLabel = 'Natureza Opera'#231#227'o:'
      FieldName = 'DESCRNAT'
      ProviderFlags = []
      Size = 40
    end
    object cdsNFTRANSPORTADOR: TStringField
      DisplayLabel = 'Transportador:'
      FieldName = 'TRANSPORTADOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFTRANSP_CPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ (Transportador):'
      FieldName = 'TRANSP_CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object cdsNFTRANSP_RG_IE: TStringField
      DisplayLabel = 'RG/Insc. Estadual (Transportador):'
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object cdsNFTRANSP_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFTRANSP_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'TRANSP_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFTRANSP_CIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFTRANSP_UF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFTRANSP_TIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo '
      FieldName = 'TRANSP_TIPO_PESSOA'
      ProviderFlags = []
    end
    object cdsNFVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCLIENTE: TStringField
      DisplayLabel = 'Cliente:'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object cdsNFIE_RG: TStringField
      DisplayLabel = 'RG/Inscr. Estadual:'
      FieldName = 'IE_RG'
      ProviderFlags = []
    end
    object cdsNFENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFNUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      ProviderFlags = []
      EditMask = '00.000-000;1;_'
      Size = 10
    end
    object cdsNFUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE:'
      FieldName = 'COD_IBGE'
      ProviderFlags = []
      Size = 7
    end
    object cdsNFCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd. Pa'#237's:'
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsNFPAIS: TStringField
      DisplayLabel = 'Pa'#237's:'
      FieldName = 'PAIS'
      ProviderFlags = []
      Size = 60
    end
    object cdsNFFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 15
    end
    object cdsNFTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_PESSOA'
      ProviderFlags = []
    end
    object cdsNFEMAIL_NFE: TStringField
      DisplayLabel = 'email NFe:'
      FieldName = 'EMAIL_NFE'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspNF: TDataSetProvider
    DataSet = qNF
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspNFGetTableName
    Left = 85
    Top = 125
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 88
    Top = 30
  end
  object qConsultaNFE: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'nrnf'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from nf'
      'where nrnf =:nrnf')
    SQLConnection = DMPrincipal.SQLCon
    Left = 262
    Top = 171
  end
  object cdsConsultaNFE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 262
    Top = 79
    object cdsConsultaNFECDNF: TIntegerField
      FieldName = 'CDNF'
      Required = True
    end
    object cdsConsultaNFENRNF: TIntegerField
      FieldName = 'NRNF'
      Required = True
    end
    object cdsConsultaNFESERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsConsultaNFEDTEMISNF: TDateField
      FieldName = 'DTEMISNF'
    end
    object cdsConsultaNFEHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object cdsConsultaNFETPDOCTO: TStringField
      FieldName = 'TPDOCTO'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaNFECDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object cdsConsultaNFECDCLIENTE: TFMTBCDField
      FieldName = 'CDCLIENTE'
      Precision = 18
      Size = 0
    end
    object cdsConsultaNFEDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsConsultaNFEVLTOTMER: TFMTBCDField
      FieldName = 'VLTOTMER'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEBASEIPI: TFMTBCDField
      FieldName = 'BASEIPI'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTIPI: TFMTBCDField
      FieldName = 'VLTOTIPI'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTNF: TFMTBCDField
      FieldName = 'VLTOTNF'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLDESC: TFMTBCDField
      FieldName = 'VLDESC'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEPCDESC: TFMTBCDField
      FieldName = 'PCDESC'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLCOMIS: TFMTBCDField
      FieldName = 'VLCOMIS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFECDVENDED: TSmallintField
      FieldName = 'CDVENDED'
    end
    object cdsConsultaNFEBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEPCICMS: TFMTBCDField
      FieldName = 'PCICMS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTICMS: TFMTBCDField
      FieldName = 'VLTOTICMS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFECDOBSFIS: TSmallintField
      FieldName = 'CDOBSFIS'
    end
    object cdsConsultaNFEOBS_FISCAL: TStringField
      FieldName = 'OBS_FISCAL'
      Size = 800
    end
    object cdsConsultaNFECST_IPI: TStringField
      FieldName = 'CST_IPI'
      FixedChar = True
      Size = 5
    end
    object cdsConsultaNFEENQUADRAMENTO_IPI: TSmallintField
      FieldName = 'ENQUADRAMENTO_IPI'
    end
    object cdsConsultaNFEQUANTIDA: TFMTBCDField
      FieldName = 'QUANTIDA'
      Precision = 18
      Size = 0
    end
    object cdsConsultaNFECDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
    end
    object cdsConsultaNFECDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
    end
    object cdsConsultaNFEFRETEC: TStringField
      FieldName = 'FRETEC'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFETIPO_TRANPORTE: TStringField
      FieldName = 'TIPO_TRANPORTE'
      FixedChar = True
      Size = 9
    end
    object cdsConsultaNFEPLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaNFEESTADO_PLACA: TStringField
      FieldName = 'ESTADO_PLACA'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaNFEPCFRETE: TFMTBCDField
      FieldName = 'PCFRETE'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTFRE: TFMTBCDField
      FieldName = 'VLTOTFRE'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEPESOLIQT: TFMTBCDField
      FieldName = 'PESOLIQT'
      Precision = 18
      Size = 0
    end
    object cdsConsultaNFEPESOBRUT: TFMTBCDField
      FieldName = 'PESOBRUT'
      Precision = 18
      Size = 0
    end
    object cdsConsultaNFEUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsConsultaNFEINDSTAT: TStringField
      FieldName = 'INDSTAT'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEFATURA: TStringField
      FieldName = 'FATURA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEVLDEV: TFMTBCDField
      FieldName = 'VLDEV'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEICMSFRETE: TFMTBCDField
      FieldName = 'ICMSFRETE'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFECLIFOR: TStringField
      FieldName = 'CLIFOR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEVLTOTSERVICO: TFMTBCDField
      FieldName = 'VLTOTSERVICO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTISS: TFMTBCDField
      FieldName = 'VLTOTISS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVALOR_TOTAL_PIS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PIS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVALOR_TOTAL_COFINS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_COFINS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      Size = 44
    end
    object cdsConsultaNFEVALOR_DIFERIMENTO: TFMTBCDField
      FieldName = 'VALOR_DIFERIMENTO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFECHAVE: TStringField
      FieldName = 'CHAVE'
      FixedChar = True
      Size = 44
    end
    object cdsConsultaNFETPEMIS: TSmallintField
      FieldName = 'TPEMIS'
    end
    object cdsConsultaNFEVERSAO_NFE: TStringField
      FieldName = 'VERSAO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFEDATA_CANCELAMENTO: TDateField
      FieldName = 'DATA_CANCELAMENTO'
    end
    object cdsConsultaNFEREFNF: TIntegerField
      FieldName = 'REFNF'
    end
    object cdsConsultaNFEUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      Size = 2
    end
    object cdsConsultaNFEXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Size = 60
    end
    object cdsConsultaNFERESULTADO_NFE: TStringField
      FieldName = 'RESULTADO_NFE'
      Size = 60
    end
    object cdsConsultaNFEPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Size = 30
    end
    object cdsConsultaNFECANHOTO_OK: TStringField
      FieldName = 'CANHOTO_OK'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFENREVENTO: TIntegerField
      FieldName = 'NREVENTO'
    end
    object cdsConsultaNFEREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      Size = 44
    end
    object cdsConsultaNFENF_ENTRADA: TFMTBCDField
      FieldName = 'NF_ENTRADA'
      Precision = 18
      Size = 0
    end
    object cdsConsultaNFEEPEC_CONCILIADO: TStringField
      FieldName = 'EPEC_CONCILIADO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaNFECODIGO_PARA_CHAVE_NFE: TStringField
      FieldName = 'CODIGO_PARA_CHAVE_NFE'
      FixedChar = True
      Size = 8
    end
    object cdsConsultaNFEVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VLOUTRAS_DESPESAS'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFECDANTT: TIntegerField
      FieldName = 'CDANTT'
    end
    object cdsConsultaNFEBASEICMSUBST: TFMTBCDField
      FieldName = 'BASEICMSUBST'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEVLTOTICMSUBST: TFMTBCDField
      FieldName = 'VLTOTICMSUBST'
      Precision = 18
      Size = 2
    end
    object cdsConsultaNFEESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object cdsConsultaNFEMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object cdsConsultaNFEDESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      Size = 40
    end
    object cdsConsultaNFETRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      Size = 50
    end
    object cdsConsultaNFETRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      Size = 17
    end
    object cdsConsultaNFETRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      Size = 18
    end
    object cdsConsultaNFETRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 50
    end
    object cdsConsultaNFETRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Size = 10
    end
    object cdsConsultaNFETRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 50
    end
    object cdsConsultaNFETRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaNFETRANSP_TIPO_PESSOA: TIntegerField
      FieldName = 'TRANSP_TIPO_PESSOA'
    end
    object cdsConsultaNFEVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object cdsConsultaNFECLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object cdsConsultaNFECPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsConsultaNFEIE_RG: TStringField
      FieldName = 'IE_RG'
    end
    object cdsConsultaNFEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsConsultaNFENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsConsultaNFEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsConsultaNFECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsConsultaNFECEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsConsultaNFEUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConsultaNFECOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsConsultaNFECOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsConsultaNFEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsConsultaNFEFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsConsultaNFETIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
  end
  object dspConsultaNFE: TDataSetProvider
    DataSet = qConsultaNFE
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 261
    Top = 125
  end
  object dsConsultaNFE: TDataSource
    DataSet = cdsConsultaNFE
    Left = 264
    Top = 30
  end
  object qConfigNFE: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from parametros_nfe')
    SQLConnection = DMPrincipal.SQLCon
    Left = 366
    Top = 171
  end
  object cdsConfigNFE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfigNFE'
    Left = 366
    Top = 77
    object cdsConfigNFENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsConfigNFENFE: TIntegerField
      FieldName = 'NFE'
    end
    object cdsConfigNFECASAS_DECIMAIS_VALOR_UNITARIO: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR_UNITARIO'
    end
    object cdsConfigNFENUMERO_COPIAS: TIntegerField
      FieldName = 'NUMERO_COPIAS'
    end
  end
  object dspConfigNFE: TDataSetProvider
    DataSet = qConfigNFE
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 365
    Top = 125
  end
  object dsConfigNFE: TDataSource
    DataSet = cdsConfigNFE
    Left = 368
    Top = 28
  end
  object qCliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from clientes')
    SQLConnection = DMPrincipal.SQLCon
    Left = 446
    Top = 171
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 446
    Top = 77
    object cdsClienteCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsClienteCDMASCOTE: TIntegerField
      FieldName = 'CDMASCOTE'
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsClienteIE_RG: TStringField
      FieldName = 'IE_RG'
    end
    object cdsClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsClienteTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsClientePNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsClienteLIMITE_CREDITO: TSingleField
      FieldName = 'LIMITE_CREDITO'
    end
    object cdsClienteRESTRICAO: TIntegerField
      FieldName = 'RESTRICAO'
    end
    object cdsClienteTIPO_RESTRICAO: TStringField
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
    object cdsClienteFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsClienteFONE2: TStringField
      FieldName = 'FONE2'
      Size = 11
    end
    object cdsClienteNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsClienteCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsClientePAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsClienteCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsClienteSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object cdsClienteEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsClienteCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsClienteCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsClienteALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsClienteALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 445
    Top = 125
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 448
    Top = 28
  end
  object qFornecedor: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from fornecedores')
    SQLConnection = DMPrincipal.SQLCon
    Left = 518
    Top = 171
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 518
    Top = 77
    object cdsFornecedorCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object cdsFornecedorCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornecedorAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFornecedorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 10
    end
    object cdsFornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornecedorMAIL: TStringField
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsFornecedorCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsFornecedorRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object cdsFornecedorCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsFornecedorDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsFornecedorTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsFornecedorFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 11
    end
    object cdsFornecedorATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsFornecedorCODSEGMENTO: TIntegerField
      FieldName = 'CODSEGMENTO'
    end
    object cdsFornecedorISO: TIntegerField
      FieldName = 'ISO'
    end
    object cdsFornecedorGRAU_IMPORTANCIA: TStringField
      FieldName = 'GRAU_IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object cdsFornecedorCDENQUADRAMENTO_IMPOSTO: TIntegerField
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
    object cdsFornecedorREACH_ROHS: TIntegerField
      FieldName = 'REACH_ROHS'
    end
    object cdsFornecedorCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsFornecedorNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsFornecedorPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsFornecedorPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsFornecedorLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qFornecedor
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 517
    Top = 125
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 515
    Top = 28
  end
  object qNO: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from natuope')
    SQLConnection = DMPrincipal.SQLCon
    Left = 582
    Top = 171
  end
  object cdsNO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNO'
    Left = 582
    Top = 77
    object cdsNOCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
    end
    object cdsNODESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      Size = 40
    end
    object cdsNOGERADUP: TStringField
      FieldName = 'GERADUP'
      FixedChar = True
      Size = 1
    end
    object cdsNOCRIADUP: TStringField
      FieldName = 'CRIADUP'
      FixedChar = True
      Size = 1
    end
    object cdsNOCDNATOPE2: TSmallintField
      FieldName = 'CDNATOPE2'
    end
    object cdsNOALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsNOALTERADO_EM: TDateField
      FieldName = 'ALTERADO_EM'
    end
    object cdsNONOTA_DE_REMESSA_COM_RETORNO: TStringField
      FieldName = 'NOTA_DE_REMESSA_COM_RETORNO'
      FixedChar = True
      Size = 1
    end
    object cdsNODESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
    object cdsNOIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object cdsNODEVOLUCAO: TIntegerField
      FieldName = 'DEVOLUCAO'
    end
    object cdsNOENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
  end
  object dspNO: TDataSetProvider
    DataSet = qNO
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 581
    Top = 125
  end
  object dsNO: TDataSource
    DataSet = cdsNO
    Left = 579
    Top = 28
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select p.cdproduto, p.cdfornecedor, p.cdinterno,'
      '       p.cdbarras, p.cdgrupo, p.cdsubgrupo, p.descricao,'
      '       p.valor_custo, p.valor_venda, p.valor_contabil,'
      '       p.margem, p.unid_entrada, p.unid_saida, p.servico,'
      
        '       p.ipi, p.icms, p.cfop, p.sit_tributaria, grupo.descricao ' +
        'as grupo,'
      
        '       subgrupos.descricao as subgrupo, f.apelido, p.tipo_un_ent' +
        'rada, '
      
        '       p.tipo_un_saida, p.cdcentro_custo, p.estoque_qtd, p.estoq' +
        'ue_minimo,'
      
        '       p.uso_consumo, p.aplicacao, p.marca, p.ncm, p.situacao_ip' +
        'i,'
      
        '       p.situacao_pis, p.situacao_cofins, p.cdorigem, p.csosn   ' +
        '  '
      ''
      'from produtos p'
      'inner join grupo on grupo.cdgrupo = p.cdgrupo'
      'inner join subgrupos on subgrupos.cdsubgrupo = p.cdsubgrupo'
      'inner join fornecedores f on f.cdfornecedor = p.cdfornecedor'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 659
    Top = 178
    object qProdutosCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdutosCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
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
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qProdutosVALOR_CUSTO: TSingleField
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosVALOR_VENDA: TSingleField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosVALOR_CONTABIL: TSingleField
      FieldName = 'VALOR_CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosMARGEM: TSingleField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUNID_ENTRADA: TSingleField
      FieldName = 'UNID_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUNID_SAIDA: TSingleField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosIPI: TSingleField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosICMS: TSingleField
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
    object qProdutosCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CDBARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qProdutosCDCENTRO_CUSTO: TIntegerField
      FieldName = 'CDCENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosESTOQUE_QTD: TSingleField
      FieldName = 'ESTOQUE_QTD'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosESTOQUE_MINIMO: TSingleField
      FieldName = 'ESTOQUE_MINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object qProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
    end
    object qProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object qProdutosCDINTERNO: TStringField
      DisplayWidth = 8
      FieldName = 'CDINTERNO'
      Size = 8
    end
    object qProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 35
    end
    object qProdutosSITUACAO_IPI: TStringField
      FieldName = 'SITUACAO_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
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
    object qProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    UpdateMode = upWhereKeyOnly
    Left = 659
    Top = 131
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 659
    Top = 85
    object cdsProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCDGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'CDGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosCDSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo'
      FieldName = 'CDSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsProdutosVALOR_CUSTO: TSingleField
      DisplayLabel = 'Valor Custo'
      FieldName = 'VALOR_CUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.00 '
    end
    object cdsProdutosVALOR_VENDA: TSingleField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.00 '
    end
    object cdsProdutosVALOR_CONTABIL: TSingleField
      DisplayLabel = 'Valor Cont'#225'bil'
      FieldName = 'VALOR_CONTABIL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.00 '
    end
    object cdsProdutosMARGEM: TSingleField
      DisplayLabel = 'Margem'
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.00 '
    end
    object cdsProdutosUNID_ENTRADA: TSingleField
      DisplayLabel = 'Unid. Entrada'
      FieldName = 'UNID_ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosUNID_SAIDA: TSingleField
      DisplayLabel = 'Unid. Saida'
      FieldName = 'UNID_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosIPI: TSingleField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosICMS: TSingleField
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
      DisplayLabel = 'Sit. Tribut'#225'ria'
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsProdutosGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosSUBGRUPO: TStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'SUBGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutosAPELIDO: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
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
    object cdsProdutosCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CDBARRAS'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsProdutosCDCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C'#243'd. Centro Custo'
      FieldName = 'CDCENTRO_CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosESTOQUE_QTD: TSingleField
      DisplayLabel = 'Qtd.'
      FieldName = 'ESTOQUE_QTD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosESTOQUE_MINIMO: TSingleField
      DisplayLabel = 'Qtd. M'#237'nima'
      FieldName = 'ESTOQUE_MINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosAPLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object cdsProdutosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Size = 35
    end
    object cdsProdutosCDINTERNO: TStringField
      DisplayWidth = 8
      FieldName = 'CDINTERNO'
      Size = 8
    end
    object cdsProdutosNCM: TStringField
      FieldName = 'NCM'
      Size = 35
    end
    object cdsProdutosSITUACAO_IPI: TStringField
      FieldName = 'SITUACAO_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
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
    object cdsProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 659
    Top = 39
  end
  object qTransp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from transportadores')
    SQLConnection = DMPrincipal.SQLCon
    Left = 749
    Top = 180
  end
  object dspTransp: TDataSetProvider
    DataSet = qTransp
    Left = 749
    Top = 127
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransp'
    Left = 749
    Top = 82
    object cdsTranspCDTRANSPORTADOR: TIntegerField
      FieldName = 'CDTRANSPORTADOR'
      Required = True
    end
    object cdsTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTranspAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsTranspCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsTranspRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 18
    end
    object cdsTranspFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsTranspENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsTranspNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsTranspBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsTranspCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTranspUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsTranspPLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object cdsTranspESTADO_PLACA: TStringField
      FieldName = 'ESTADO_PLACA'
      FixedChar = True
      Size = 2
    end
    object cdsTranspANTT: TStringField
      FieldName = 'ANTT'
      FixedChar = True
      Size = 14
    end
    object cdsTranspTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsTranspCGMAXIMA: TFMTBCDField
      FieldName = 'CGMAXIMA'
      Precision = 18
      Size = 0
    end
    object cdsTranspCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Required = True
      Size = 10
    end
    object cdsTranspCADASTRADO_EM: TDateField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsTranspALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsTranspALTERADO_EM: TDateField
      FieldName = 'ALTERADO_EM'
    end
    object cdsTranspATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsTranspOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsTranspCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object cdsTranspEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsTranspWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Size = 50
    end
    object cdsTranspNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
  end
  object dsTransp: TDataSource
    DataSet = cdsTransp
    Left = 749
    Top = 37
  end
  object dsEspecie: TDataSource
    DataSet = cdsEspecie
    Left = 821
    Top = 45
  end
  object cdsEspecie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEspecie'
    Left = 821
    Top = 90
    object cdsEspecieCDESPECIE: TIntegerField
      FieldName = 'CDESPECIE'
      Required = True
    end
    object cdsEspecieDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsEspecieATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsEspecieCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsEspecieCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsEspecieALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 35
    end
    object cdsEspecieALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
  end
  object dspEspecie: TDataSetProvider
    DataSet = qEspecie
    Left = 821
    Top = 135
  end
  object qEspecie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from nf_especie'
      'where nf_especie.ativo = 1'
      'order by nf_especie.descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 821
    Top = 180
  end
  object qICMS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from icms'
      'where icms.ano =:ano'
      'and   icms.estado =:estado')
    SQLConnection = DMPrincipal.SQLCon
    Left = 885
    Top = 180
  end
  object dspICMS: TDataSetProvider
    DataSet = qICMS
    Left = 885
    Top = 135
  end
  object cdsICMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspICMS'
    Left = 885
    Top = 90
    object cdsICMSANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object cdsICMSESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsICMSALIQ: TFMTBCDField
      FieldName = 'ALIQ'
      Precision = 18
      Size = 2
    end
    object cdsICMSBASERED: TFMTBCDField
      FieldName = 'BASERED'
      Precision = 18
      Size = 2
    end
  end
  object dsICMS: TDataSource
    DataSet = cdsICMS
    Left = 885
    Top = 45
  end
  object qCTR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from ctas_receber'
      'where ctas_receber.cdpedido =:cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 949
    Top = 180
  end
  object dspCTR: TDataSetProvider
    DataSet = qCTR
    Left = 949
    Top = 135
  end
  object cdsCTR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCTR'
    Left = 949
    Top = 90
    object cdsCTRCDCTAS_RECEBER: TIntegerField
      FieldName = 'CDCTAS_RECEBER'
      Required = True
    end
    object cdsCTRCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object cdsCTRDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCTRVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCTRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsCTRTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 35
    end
    object cdsCTRDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsCTRLIQUIDADO: TIntegerField
      FieldName = 'LIQUIDADO'
    end
    object cdsCTRLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      Size = 10
    end
    object cdsCTRLIQUIDADO_EM: TDateField
      FieldName = 'LIQUIDADO_EM'
    end
    object cdsCTRCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsCTRPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsCTRVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object cdsCTRVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 18
      Size = 2
    end
    object cdsCTRVALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'VALOR_ABATIMENTO'
      Precision = 18
      Size = 2
    end
    object cdsCTRCDPORTADOR: TIntegerField
      FieldName = 'CDPORTADOR'
    end
    object cdsCTRCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCTRCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
  end
  object dsCTR: TDataSource
    DataSet = cdsCTR
    Left = 949
    Top = 45
  end
  object qST: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigost'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from situacao_tributaria'
      'where situacao_tributaria.codigost=:codigost')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1008
    Top = 186
  end
  object dspST: TDataSetProvider
    DataSet = qST
    Left = 1008
    Top = 140
  end
  object cdsST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspST'
    Left = 1008
    Top = 93
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
  object dsST: TDataSource
    DataSet = cdsST
    Left = 1008
    Top = 48
  end
  object qPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select p.cdpedido,'
      '       p.cdvendedor,'
      '       p.cdusuario,'
      '       p.cdcliente,'
      ''
      '       case when p.cdpessoa is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                 select f.nome, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                 select t.nome, t.cdpessoa from ' +
        'transportadores t)'
      '              where cdpessoa = p.cdpessoa )'
      '       end as cliente,'
      ''
      
        '       ( select cpf_cnpj from ( select c.cpf_cnpj, c.cdpessoa fr' +
        'om clientes c union'
      
        '                            select f.cpf_cnpj, f.cdpessoa from f' +
        'ornecedores f union'
      
        '                            select t.cpf_cnpj, t.cdpessoa from t' +
        'ransportadores t)'
      '         where cdpessoa = p.cdpessoa ) as cpf_cnpj,'
      ''
      
        '       ( select ie_rg from ( select c.ie_rg, c.cdpessoa from cli' +
        'entes c union'
      
        '                             select f.rg_ie, f.cdpessoa from for' +
        'necedores f union'
      
        '                             select t.rg_ie, t.cdpessoa from tra' +
        'nsportadores t)'
      '         where cdpessoa = p.cdpessoa ) as rg_ie,'
      ''
      
        '       ( select endereco from ( select c.endereco ||'#39','#39'|| c.nume' +
        'ro as endereco, c.cdpessoa from clientes c union'
      
        '                                select f.endereco ||'#39','#39'|| f.nume' +
        'ro as endereco, f.cdpessoa from fornecedores f union'
      
        '                                select t.endereco ||'#39','#39'|| t.nume' +
        'ro as endereco, t.cdpessoa from transportadores t)'
      '         where cdpessoa = p.cdpessoa ) as endereco,'
      ''
      
        '       ( select bairro from ( select c.bairro, c.cdpessoa from c' +
        'lientes c union'
      
        '                             select f.bairro, f.cdpessoa from fo' +
        'rnecedores f union'
      
        '                             select t.bairro, t.cdpessoa from tr' +
        'ansportadores t)'
      '         where cdpessoa = p.cdpessoa ) as bairro,'
      ''
      
        '       ( select cidade from ( select c.cidade, c.cdpessoa from c' +
        'lientes c union'
      
        '                             select f.cidade, f.cdpessoa from fo' +
        'rnecedores f union'
      
        '                             select t.cidade, t.cdpessoa from tr' +
        'ansportadores t)'
      '         where cdpessoa = p.cdpessoa ) as cidade,'
      ''
      
        '       ( select cep from ( select c.cep, c.cdpessoa from cliente' +
        's c union'
      
        '                             select f.cep, f.cdpessoa from forne' +
        'cedores f union'
      
        '                             select t.cep, t.cdpessoa from trans' +
        'portadores t)'
      '         where cdpessoa = p.cdpessoa ) as cep,'
      ''
      
        '       ( select uf from ( select c.uf, c.cdpessoa from clientes ' +
        'c union'
      
        '                             select f.uf, f.cdpessoa from fornec' +
        'edores f union'
      
        '                             select t.uf, t.cdpessoa from transp' +
        'ortadores t)'
      '         where cdpessoa = p.cdpessoa ) as uf,'
      ''
      
        '       ( select cod_ibge from ( select c.cod_ibge, c.cdpessoa fr' +
        'om clientes c union'
      
        '                             select f.cod_ibge, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                             select t.cod_ibge, t.cdpessoa from ' +
        'transportadores t)'
      '         where cdpessoa = p.cdpessoa ) as cod_ibge,'
      ''
      
        '       ( select cod_pais from ( select c.cod_pais, c.cdpessoa fr' +
        'om clientes c union'
      
        '                             select f.cod_pais, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                             select t.cod_pais, t.cdpessoa from ' +
        'transportadores t)'
      '         where cdpessoa = p.cdpessoa ) as cod_pais,'
      ''
      
        '       ( select fone from ( select c.fone, c.cdpessoa from clien' +
        'tes c union'
      
        '                             select f.fone, f.cdpessoa from forn' +
        'ecedores f union'
      
        '                             select t.fone, t.cdpessoa from tran' +
        'sportadores t)'
      '         where cdpessoa = p.cdpessoa ) as fone,'
      ''
      '       p.data,'
      '       p.hora,'
      '       p.valor_venda,'
      '       p.subtotal,'
      '       p.desconto,'
      '       p.acrescimo,'
      '       p.valor_total,'
      '       p.nf_emitida,'
      '       p.cdpagamento,'
      '       p.tipo,'
      '       u.nome as usuario,'
      '       v.nome as vendedor'
      ''
      'from pedidos p'
      '--left join clientes c on c.cdcliente = p.cdcliente'
      'left join usuarios u on u.cdusuario = p.cdusuario'
      'left join vendedores v on v.cdvendedor = p.cdvendedor'
      'where p.cdpedido =:cdpedido'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 61
    Top = 388
  end
  object qPedidoI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pedido_itens.cdpedido_itens,'
      '       pedido_itens.cdpedido,'
      '       pedido_itens.cdproduto,'
      '       pedido_itens.valor_unitario,'
      '       pedido_itens.qtd,'
      '       pedido_itens.valor_total,'
      '       pedido_itens.subtotal,'
      '       pedido_itens.desconto,'
      '       pedido_itens.acrescimo,'
      '       pedido_itens.cdvendedor,'
      '       pedido_itens.contador,'
      '       produtos.cdinterno,'
      '       produtos.descricao,'
      '       produtos.valor_venda,'
      '       produtos.unid_saida,'
      '       produtos.servico,'
      '       produtos.ipi,'
      '       produtos.icms,'
      '       produtos.cfop,'
      '       produtos.sit_tributaria,'
      '       produtos.ncm,'
      '       produtos.tipo_un_saida,'
      '       produtos.situacao_ipi_saida,'
      '       produtos.situacao_cofins,'
      '       produtos.situacao_pis,'
      '       produtos.cdorigem,'
      '       produtos.codigost'
      ''
      'from pedido_itens'
      'join produtos on produtos.cdproduto = pedido_itens.cdproduto'
      'where pedido_itens.cdpedido =:cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 117
    Top = 388
  end
  object dspPedido: TDataSetProvider
    DataSet = qPedido
    Left = 61
    Top = 343
  end
  object dspPedidoI: TDataSetProvider
    DataSet = qPedidoI
    Left = 117
    Top = 343
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 61
    Top = 298
    object cdsPedidoCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsPedidoCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'CDVENDEDOR'
    end
    object cdsPedidoCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio:'
      FieldName = 'CDUSUARIO'
    end
    object cdsPedidoCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
    end
    object cdsPedidoCLIENTE: TStringField
      DisplayLabel = 'Cliente:'
      FieldName = 'CLIENTE'
      Size = 50
    end
    object cdsPedidoCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ:'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsPedidoRG_IE: TStringField
      DisplayLabel = 'RG/IE:'
      FieldName = 'RG_IE'
    end
    object cdsPedidoENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 101
    end
    object cdsPedidoBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsPedidoCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsPedidoCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      EditMask = '00.000-000;0;_'
      Size = 10
    end
    object cdsPedidoUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object cdsPedidoCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd. Pa'#237's:'
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsPedidoFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      Size = 15
    end
    object cdsPedidoDATA: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA'
      EditMask = '00/00/0000;1;_'
    end
    object cdsPedidoHORA: TTimeField
      DisplayLabel = 'Hora:'
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsPedidoVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidoSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidoDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidoACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidoVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidoNF_EMITIDA: TIntegerField
      DisplayLabel = 'NFe Emitida:'
      FieldName = 'NF_EMITIDA'
    end
    object cdsPedidoCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento:'
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPedidoTIPO: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsPedidoVENDEDOR: TStringField
      DisplayLabel = 'Vendedor:'
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object cdsPedidoI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDPEDIDO'
    MasterFields = 'CDPEDIDO'
    MasterSource = dsPedido
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPedidoI'
    Left = 117
    Top = 298
    object cdsPedidoICDPEDIDO_ITENS: TIntegerField
      FieldName = 'CDPEDIDO_ITENS'
      Required = True
    end
    object cdsPedidoICDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsPedidoICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
    end
    object cdsPedidoIVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object cdsPedidoIQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedidoIVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidoISUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidoIDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsPedidoIACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object cdsPedidoICDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
    end
    object cdsPedidoICONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
    object cdsPedidoICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      Size = 8
    end
    object cdsPedidoIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsPedidoIVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object cdsPedidoIUNID_SAIDA: TFloatField
      FieldName = 'UNID_SAIDA'
    end
    object cdsPedidoISERVICO: TIntegerField
      FieldName = 'SERVICO'
    end
    object cdsPedidoIIPI: TFloatField
      FieldName = 'IPI'
    end
    object cdsPedidoIICMS: TFloatField
      FieldName = 'ICMS'
    end
    object cdsPedidoICFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsPedidoISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 10
    end
    object cdsPedidoINCM: TStringField
      FieldName = 'NCM'
      Size = 35
    end
    object cdsPedidoITIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      FixedChar = True
      Size = 3
    end
    object cdsPedidoISITUACAO_COFINS: TStringField
      FieldName = 'SITUACAO_COFINS'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoISITUACAO_PIS: TStringField
      FieldName = 'SITUACAO_PIS'
      FixedChar = True
      Size = 2
    end
    object cdsPedidoICDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
    end
    object cdsPedidoICODIGOST: TStringField
      FieldName = 'CODIGOST'
      FixedChar = True
      Size = 3
    end
    object cdsPedidoISITUACAO_IPI_SAIDA: TStringField
      FieldName = 'SITUACAO_IPI_SAIDA'
      FixedChar = True
      Size = 2
    end
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 61
    Top = 253
  end
  object dsPedidoI: TDataSource
    DataSet = cdsPedidoI
    Left = 117
    Top = 253
  end
  object qNFI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdnf'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '      nfitem.cdnfitem,'
      '      nfitem.cdnf, '
      '      nfitem.nrnf,'
      '       nfitem.serie,'
      '       nfitem.nrsequen,'
      '       nfitem.cdpedido,'
      '       nfitem.tipo_baixa,'
      '       nfitem.quantida,'
      '       nfitem.cdnatopeitem,'
      '       nfitem.vlunit,'
      '       nfitem.vltotal,'
      '       nfitem.idclass,'
      '       nfitem.cdtribut,'
      '       nfitem.unidade,'
      '       nfitem.vltotipi,'
      '       nfitem.pcipi,'
      '       nfitem.cdbenef,'
      '       nfitem.referen,'
      '       nfitem.descpro,'
      '       nfitem.pedidcli,'
      '       nfitem.pesototl,'
      '       nfitem.quantespe,'
      '       nfitem.situtri,'
      '       nfitem.vldesci,'
      '       nfitem.vltoticm,'
      '       nfitem.pcicm,'
      '       nfitem.pcpis,'
      '       nfitem.servico_produto,'
      '       nfitem.baseipi,'
      '       nfitem.base_calculo_icms,'
      '       nfitem.valor_pis,'
      '       nfitem.valor_cofins,'
      '       nfitem.pccofins,'
      '       nfitem.pedidcliitem,'
      '       nfitem.cstpis,'
      '       nfitem.cstcofins,'
      '       nfitem.cstipi,'
      '       nfitem.data_baixa_total,'
      '       nfitem.cdproduto,'
      '       '
      '       produtos.descricao,'
      '       produtos.cdinterno,'
      '       produtos.ncm,'
      '       produtos.tipo_un_saida,'
      '       produtos.unid_saida,'
      '       produtos.cfop,'
      '       produtos.ipi,'
      '       produtos.icms,'
      '       produtos.sit_tributaria,'
      '       produtos.situacao_ipi_entrada,'
      '       produtos.situacao_ipi_saida,'
      '       produtos.situacao_cofins,'
      '       produtos.cdorigem,'
      '       produtos.codigost,'
      '       produtos.csosn,'
      '       produtos.enq_ipi_entrada,'
      '       produtos.enq_ipi_saida'
      ''
      '       '
      ''
      'from nfitem'
      'join produtos on produtos.cdproduto = nfitem.cdproduto'
      'where nfitem.cdnf =:cdnf'
      'order by nfitem.cdnfitem')
    SQLConnection = DMPrincipal.SQLCon
    Left = 168
    Top = 176
    object qNFICDNFITEM: TIntegerField
      FieldName = 'CDNFITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNFICDNF: TIntegerField
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFINRNF: TIntegerField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFISERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFINRSEQUEN: TIntegerField
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFICDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFITIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFIQUANTIDA: TFloatField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDNATOPEITEM: TSmallintField
      FieldName = 'CDNATOPEITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIVLUNIT: TFloatField
      FieldName = 'VLUNIT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIIDCLASS: TSmallintField
      FieldName = 'IDCLASS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDTRIBUT: TSmallintField
      FieldName = 'CDTRIBUT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFIVLTOTIPI: TFloatField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIPCIPI: TFloatField
      FieldName = 'PCIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDBENEF: TSmallintField
      FieldName = 'CDBENEF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIREFEREN: TStringField
      FieldName = 'REFEREN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object qNFIDESCPRO: TStringField
      FieldName = 'DESCPRO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object qNFIPEDIDCLI: TStringField
      FieldName = 'PEDIDCLI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qNFIPESOTOTL: TFloatField
      FieldName = 'PESOTOTL'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIQUANTESPE: TFloatField
      FieldName = 'QUANTESPE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFISITUTRI: TStringField
      FieldName = 'SITUTRI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qNFIVLDESCI: TFloatField
      FieldName = 'VLDESCI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIVLTOTICM: TFloatField
      FieldName = 'VLTOTICM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIPCICM: TFloatField
      FieldName = 'PCICM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIPCPIS: TFloatField
      FieldName = 'PCPIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFISERVICO_PRODUTO: TStringField
      FieldName = 'SERVICO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFIBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIPCCOFINS: TFloatField
      FieldName = 'PCCOFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIPEDIDCLIITEM: TStringField
      FieldName = 'PEDIDCLIITEM'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qNFICSTPIS: TStringField
      FieldName = 'CSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFICSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFICSTIPI: TStringField
      FieldName = 'CSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFIDATA_BAIXA_TOTAL: TDateField
      FieldName = 'DATA_BAIXA_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qNFICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object qNFINCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 35
    end
    object qNFITIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qNFIUNID_SAIDA: TFloatField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object qNFICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qNFIIPI: TFloatField
      FieldName = 'IPI'
      ProviderFlags = []
    end
    object qNFIICMS: TFloatField
      FieldName = 'ICMS'
      ProviderFlags = []
    end
    object qNFISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object qNFISITUACAO_COFINS: TStringField
      FieldName = 'SITUACAO_COFINS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFICDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
      ProviderFlags = []
    end
    object qNFICODIGOST: TStringField
      FieldName = 'CODIGOST'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qNFICSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qNFISITUACAO_IPI_ENTRADA: TStringField
      FieldName = 'SITUACAO_IPI_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFISITUACAO_IPI_SAIDA: TStringField
      FieldName = 'SITUACAO_IPI_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFIENQ_IPI_ENTRADA: TStringField
      FieldName = 'ENQ_IPI_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qNFIENQ_IPI_SAIDA: TStringField
      FieldName = 'ENQ_IPI_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
  end
  object dspNFI: TDataSetProvider
    DataSet = qNFI
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspNFIGetTableName
    Left = 160
    Top = 128
  end
  object cdsNFI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDNF'
    MasterFields = 'CDNF'
    MasterSource = dsNF
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspNFI'
    Left = 168
    Top = 80
    object cdsNFICDNFITEM: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNFITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFICDNF: TIntegerField
      DisplayLabel = 'C'#243'd. NFe:'
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFINRNF: TIntegerField
      DisplayLabel = 'N'#186' NFe:'
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFISERIE: TIntegerField
      DisplayLabel = 'S'#233'rie:'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFINRSEQUEN: TIntegerField
      DisplayLabel = 'N'#186' Sequen.:'
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFICDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFITIPO_BAIXA: TStringField
      DisplayLabel = 'Tipo Baixa:'
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFIQUANTIDA: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDNATOPEITEM: TSmallintField
      DisplayLabel = 'Cod. Nat. Opera'#231#227'o:'
      FieldName = 'CDNATOPEITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIVLUNIT: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VLUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIVLTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIIDCLASS: TSmallintField
      FieldName = 'IDCLASS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDTRIBUT: TSmallintField
      DisplayLabel = 'C'#243'd. Tributa'#231#227'o:'
      FieldName = 'CDTRIBUT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIUNIDADE: TStringField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFIVLTOTIPI: TFloatField
      DisplayLabel = 'Total IPI:'
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIPCIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PCIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFICDBENEF: TSmallintField
      FieldName = 'CDBENEF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIREFEREN: TStringField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'REFEREN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsNFIDESCPRO: TStringField
      DisplayLabel = 'Produtos:'
      FieldName = 'DESCPRO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object cdsNFIPEDIDCLI: TStringField
      DisplayLabel = 'O.C.:'
      FieldName = 'PEDIDCLI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsNFIPESOTOTL: TFloatField
      DisplayLabel = 'Peso:'
      FieldName = 'PESOTOTL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIQUANTESPE: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QUANTESPE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFISITUTRI: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria:'
      FieldName = 'SITUTRI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsNFIVLDESCI: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'VLDESCI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIVLTOTICM: TFloatField
      DisplayLabel = 'Total ICMS:'
      FieldName = 'VLTOTICM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIPCICM: TFloatField
      DisplayLabel = '% ICMS:'
      FieldName = 'PCICM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIPCPIS: TFloatField
      DisplayLabel = '% PIS:'
      FieldName = 'PCPIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFISERVICO_PRODUTO: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'SERVICO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFIBASEIPI: TFloatField
      DisplayLabel = 'Base Calc. IPI:'
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIBASE_CALCULO_ICMS: TFloatField
      DisplayLabel = 'Base Calc. ICMS:'
      FieldName = 'BASE_CALCULO_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIVALOR_PIS: TFloatField
      DisplayLabel = 'Total PIS:'
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIVALOR_COFINS: TFloatField
      DisplayLabel = 'Total Cofins:'
      FieldName = 'VALOR_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIPCCOFINS: TFloatField
      DisplayLabel = '% Cofins:'
      FieldName = 'PCCOFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsNFIPEDIDCLIITEM: TStringField
      FieldName = 'PEDIDCLIITEM'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsNFICSTPIS: TStringField
      FieldName = 'CSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFICSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFICSTIPI: TStringField
      FieldName = 'CSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFIDATA_BAIXA_TOTAL: TDateField
      FieldName = 'DATA_BAIXA_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIDESCRICAO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNFICDINTERNO: TStringField
      DisplayLabel = 'C'#243'd. Interno:'
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object cdsNFINCM: TStringField
      DisplayLabel = 'NCM:'
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 35
    end
    object cdsNFITIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo Un. Sa'#237'da:'
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsNFIUNID_SAIDA: TFloatField
      DisplayLabel = 'Uni. Sa'#237'da:'
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object cdsNFICFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsNFIIPI: TFloatField
      DisplayLabel = 'IPI:'
      FieldName = 'IPI'
      ProviderFlags = []
    end
    object cdsNFIICMS: TFloatField
      DisplayLabel = 'ICMS:'
      FieldName = 'ICMS'
      ProviderFlags = []
    end
    object cdsNFISIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria:'
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFISITUACAO_COFINS: TStringField
      DisplayLabel = 'Sit. Cofins:'
      FieldName = 'SITUACAO_COFINS'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFICDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
      ProviderFlags = []
    end
    object cdsNFICODIGOST: TStringField
      FieldName = 'CODIGOST'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsNFICSOSN: TStringField
      FieldName = 'CSOSN'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsNFISITUACAO_IPI_ENTRADA: TStringField
      FieldName = 'SITUACAO_IPI_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFISITUACAO_IPI_SAIDA: TStringField
      FieldName = 'SITUACAO_IPI_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFIENQ_IPI_ENTRADA: TStringField
      FieldName = 'ENQ_IPI_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsNFIENQ_IPI_SAIDA: TStringField
      FieldName = 'ENQ_IPI_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
  end
  object dsNFI: TDataSource
    DataSet = cdsNFI
    Left = 168
    Top = 32
  end
end
