object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 490
  Width = 1073
  object SQLCon: TSQLConnection
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object qEmpresa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select empresa.cdempresa,'
      '       empresa.razao_social,'
      '       empresa.apelido,'
      '       empresa.endereco,'
      '       empresa.numero,'
      '       empresa.bairro,'
      '       empresa.cidade,'
      '       empresa.cep,'
      '       empresa.uf,'
      '       empresa.cnpj,'
      '       empresa.ie,'
      '       empresa.logo,'
      '       empresa.site,'
      '       empresa.telefone,'
      '       empresa.email,'
      '       empresa.cdibge,'
      '       empresa.email_nfe,'
      '       empresa.chave,'
      '       empresa.cdsegmento,'
      '       segmento.descricao,'
      '       empresa.path_nfe,'
      '       empresa.cod_pais,'
      '       empresa.pais,'
      '       empresa.crt,'
      '       empresa.cdestado,'
      '       empresa.smtp,'
      '       empresa.porta,'
      '       empresa.login,'
      '       empresa.senha,'
      '       empresa.email2,'
      '       empresa.opcao_tributaria,'
      '       empresa.capital_social,'
      '      empresa.path_imagem'
      ''
      'from empresa'
      'left join segmento on segmento.cdsegmento = empresa.cdsegmento')
    SQLConnection = SQLCon
    Left = 318
    Top = 176
    object qEmpresaCDEMPRESA: TIntegerField
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object qEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qEmpresaIE: TStringField
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
    end
    object qEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEmpresaSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object qEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qEmpresaCDIBGE: TFMTBCDField
      FieldName = 'CDIBGE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qEmpresaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qEmpresaCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qEmpresaCDSEGMENTO: TIntegerField
      FieldName = 'CDSEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qEmpresaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qEmpresaPATH_NFE: TStringField
      FieldName = 'PATH_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEmpresaCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object qEmpresaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 35
    end
    object qEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object qEmpresaCDESTADO: TIntegerField
      FieldName = 'CDESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object qEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 35
    end
    object qEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qEmpresaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 35
    end
    object qEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 35
    end
    object qEmpresaEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 50
    end
    object qEmpresaOPCAO_TRIBUTARIA: TStringField
      FieldName = 'OPCAO_TRIBUTARIA'
      Size = 35
    end
    object qEmpresaCAPITAL_SOCIAL: TFloatField
      FieldName = 'CAPITAL_SOCIAL'
    end
    object qEmpresaPATH_IMAGEM: TStringField
      FieldName = 'PATH_IMAGEM'
      Size = 200
    end
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    AfterOpen = cdsEmpresaAfterOpen
    AfterScroll = cdsEmpresaAfterScroll
    Left = 318
    Top = 76
    object cdsEmpresaCDEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaAPELIDO: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00.000-000;0;_'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      EditMask = '00.000.000/0000-00;0;_'
      FixedChar = True
      Size = 14
    end
    object cdsEmpresaIE: TStringField
      DisplayLabel = 'Inscr. Estadual'
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaLOGO: TBlobField
      DisplayLabel = 'Logo'
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaSITE: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEmpresaTELEFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-0000;0;_'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresaCDIBGE: TFMTBCDField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'CDIBGE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsEmpresaEMAIL_NFE: TStringField
      DisplayLabel = 'Email-NFE'
      FieldName = 'EMAIL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEmpresaCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsEmpresaCDSEGMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Segmento'
      FieldName = 'CDSEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsEmpresaPATH_NFE: TStringField
      FieldName = 'PATH_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEmpresaCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsEmpresaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 35
    end
    object cdsEmpresaCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cdsEmpresaCDESTADO: TIntegerField
      FieldName = 'CDESTADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 35
    end
    object cdsEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cdsEmpresaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 35
    end
    object cdsEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 35
    end
    object cdsEmpresaEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 50
    end
    object cdsEmpresaOPCAO_TRIBUTARIA: TStringField
      DisplayLabel = 'Op'#231#227'o Tribut'#225'ria:'
      FieldName = 'OPCAO_TRIBUTARIA'
      Size = 35
    end
    object cdsEmpresaCAPITAL_SOCIAL: TFloatField
      DisplayLabel = 'Capital Social'
      FieldName = 'CAPITAL_SOCIAL'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsEmpresaPATH_IMAGEM: TStringField
      FieldName = 'PATH_IMAGEM'
      Size = 200
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qEmpresa
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspEmpresaGetTableName
    Left = 318
    Top = 124
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 318
    Top = 28
  end
  object qIBGE: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from CIDADEIBGE')
    SQLConnection = SQLCon
    Left = 306
    Top = 392
  end
  object cdsIBGE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIBGE'
    Left = 306
    Top = 292
    object cdsIBGECDIBGE: TFMTBCDField
      FieldName = 'CDIBGE'
      Precision = 18
      Size = 0
    end
    object cdsIBGENOMEIBGE: TStringField
      FieldName = 'NOMEIBGE'
      Size = 40
    end
    object cdsIBGEESTADOIBGE: TStringField
      FieldName = 'ESTADOIBGE'
      FixedChar = True
      Size = 2
    end
    object cdsIBGECDESTIBGE: TSmallintField
      FieldName = 'CDESTIBGE'
    end
    object cdsIBGECOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsIBGEPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspIBGE: TDataSetProvider
    DataSet = qIBGE
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 306
    Top = 340
  end
  object dsIBGE: TDataSource
    DataSet = cdsIBGE
    Left = 306
    Top = 244
  end
  object qData: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select current_time, current_date, current_timestamp'
      'from rdb$database')
    SQLConnection = SQLCon
    Left = 434
    Top = 392
  end
  object cdsData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspData'
    Left = 434
    Top = 292
  end
  object dspData: TDataSetProvider
    DataSet = qData
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 434
    Top = 340
  end
  object DsData: TDataSource
    DataSet = cdsData
    Left = 434
    Top = 244
  end
  object qPF: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from parametros_financeiros')
    SQLConnection = SQLCon
    Left = 490
    Top = 392
  end
  object cdsPF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPF'
    Left = 490
    Top = 292
  end
  object dspPF: TDataSetProvider
    DataSet = qPF
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 490
    Top = 340
  end
  object dsPF: TDataSource
    DataSet = cdsPF
    Left = 490
    Top = 244
  end
  object qSeg: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from segmento')
    SQLConnection = SQLCon
    Left = 152
    Top = 176
  end
  object cdsSeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSeg'
    Left = 152
    Top = 76
    object cdsSegCDSEGMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDSEGMENTO'
      Required = True
    end
    object cdsSegDESCRICAO: TStringField
      DisplayLabel = 'Segmento'
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspSeg: TDataSetProvider
    DataSet = qSeg
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 152
    Top = 124
  end
  object dsSeg: TDataSource
    DataSet = cdsSeg
    Left = 152
    Top = 28
  end
  object qPais: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select  *'
      'from paisibge'
      
        'order by case when paisibge.cod_pais = '#39'1058'#39' then 1 else 2 end,' +
        ' paisibge.pais')
    SQLConnection = SQLCon
    Left = 370
    Top = 392
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPais'
    Left = 370
    Top = 292
    object cdsPaisCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsPaisPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
  end
  object dspPais: TDataSetProvider
    DataSet = qPais
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 370
    Top = 340
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 370
    Top = 244
  end
  object qOportunidades: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'dia'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select clientes.nome,'
      '       '#39'Clientes'#39' as Tipo,'
      '       clientes.nasc_fundacao as data'
      'from clientes'
      'where extract(day from clientes.nasc_fundacao)  = :dia'
      'and   extract(month from clientes.nasc_fundacao)= :mes'
      ''
      'union'
      ''
      'select clientes_contato.nome || '#39' - '#39'|| clientes.nome as nome,'
      '       '#39'Contato de Cliente'#39' as Tipo,'
      '       clientes_contato.aniversario as data'
      'from clientes_contato'
      'join clientes on clientes.cdcliente = clientes_contato.cdcliente'
      'where extract(day from clientes_contato.aniversario)  = :dia'
      'and   extract(month from clientes_contato.aniversario)= :mes'
      ''
      'union'
      ''
      'select fornecedores.nome,'
      '       '#39'Fornecedor'#39' as Tipo,'
      '       fornecedores.nasc_fundacao as data'
      'from fornecedores'
      'where extract(day from fornecedores.nasc_fundacao)  = :dia'
      'and   extract(month from fornecedores.nasc_fundacao)= :mes'
      ''
      'union'
      ''
      'select fornecedores_contato.nome ||'#39' - '#39' || fornecedores.nome,'
      '       '#39'Contato Fornecedor'#39'as Tipo,'
      '       fornecedores_contato.aniversario'
      'from fornecedores_contato'
      
        'join fornecedores on fornecedores.cdfornecedor = fornecedores_co' +
        'ntato.cdfornecedor'
      'where extract(day from fornecedores_contato.aniversario)  = :dia'
      'and   extract(month from fornecedores_contato.aniversario)= :mes'
      ''
      'union'
      ''
      'select transportadores.nome,'
      '       '#39'Transportador'#39' as Tipo,'
      '       transportadores.nasc_fundacao as data'
      'from transportadores'
      'where extract(day from transportadores.nasc_fundacao)  = :dia'
      'and   extract(month from transportadores.nasc_fundacao)= :mes'
      ''
      'union'
      ''
      
        'select transportadores_contato.nome||'#39' - '#39'||transportadores.nome' +
        ','
      '       '#39'Contato Transportador'#39'as Tipo,'
      '       transportadores_contato.aniversario'
      'from transportadores_contato'
      
        'join transportadores on transportadores.cdtransportador = transp' +
        'ortadores_contato.cdtransportador'
      
        'where extract(day from transportadores_contato.aniversario)  = :' +
        'dia'
      
        'and   extract(month from transportadores_contato.aniversario)= :' +
        'mes')
    SQLConnection = SQLCon
    Left = 677
    Top = 176
  end
  object cdsOportunidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOportunidades'
    Left = 677
    Top = 76
    object cdsOportunidadesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsOportunidadesTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 21
    end
    object cdsOportunidadesDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dspOportunidades: TDataSetProvider
    DataSet = qOportunidades
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 677
    Top = 124
  end
  object dsOpotunidades: TDataSource
    DataSet = cdsOportunidades
    Left = 677
    Top = 28
  end
  object cdsClone: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 377
    Top = 76
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField2: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'APELIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField4: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField5: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField6: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '00.000-000;0;_'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      EditMask = '00.000.000/0000-00;0;_'
      FixedChar = True
      Size = 14
    end
    object StringField10: TStringField
      DisplayLabel = 'Inscr. Estadual'
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
    end
    object BlobField1: TBlobField
      DisplayLabel = 'Logo'
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object StringField11: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object StringField12: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-00009;0;_'
      FixedChar = True
      Size = 10
    end
    object StringField13: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object FMTBCDField1: TFMTBCDField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'CDIBGE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object StringField14: TStringField
      DisplayLabel = 'Email-NFE'
      FieldName = 'EMAIL_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object StringField15: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'd. Segmento'
      FieldName = 'CDSEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField16: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'PATH_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object qPNFe: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from parametros_nfe')
    SQLConnection = SQLCon
    Left = 242
    Top = 392
  end
  object cdsPNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPNFe'
    Left = 242
    Top = 292
    object cdsPNFeNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsPNFeNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cdsPNFeCASAS_DECIMAIS_VALOR_UNITARIO: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR_UNITARIO'
    end
    object cdsPNFeNUMERO_COPIAS: TIntegerField
      FieldName = 'NUMERO_COPIAS'
    end
    object cdsPNFeIMPRIME_FATURA: TIntegerField
      FieldName = 'IMPRIME_FATURA'
    end
  end
  object dspPNFe: TDataSetProvider
    DataSet = qPNFe
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 242
    Top = 340
  end
  object dsPNFe: TDataSource
    DataSet = cdsPNFe
    Left = 242
    Top = 244
  end
  object qClassFiscal: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'nrclass'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from classificacao_fiscal cf'
      'where cf.nrclass =:nrclass')
    SQLConnection = SQLCon
    Left = 760
    Top = 176
  end
  object cdsClassFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClassFiscal'
    Left = 760
    Top = 76
    object cdsClassFiscalCDCLASSIFICACAO_FISCAL: TIntegerField
      FieldName = 'CDCLASSIFICACAO_FISCAL'
      Required = True
    end
    object cdsClassFiscalNRCLASS: TLargeintField
      FieldName = 'NRCLASS'
    end
    object cdsClassFiscalPCAIPI: TFMTBCDField
      FieldName = 'PCAIPI'
      Precision = 18
      Size = 2
    end
    object cdsClassFiscalDESCRICAO_CNM: TStringField
      FieldName = 'DESCRICAO_CNM'
      FixedChar = True
      Size = 45
    end
    object cdsClassFiscalDESATIVA: TStringField
      FieldName = 'DESATIVA'
      FixedChar = True
      Size = 1
    end
    object cdsClassFiscalNRCLASS2: TStringField
      FieldName = 'NRCLASS2'
      Size = 10
    end
  end
  object dspClassFiscal: TDataSetProvider
    DataSet = qClassFiscal
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 124
  end
  object dsClassFiscal: TDataSource
    DataSet = cdsClassFiscal
    Left = 760
    Top = 28
  end
  object qEI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from enquadamento_imposto')
    SQLConnection = SQLCon
    Left = 827
    Top = 176
  end
  object cdsEI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEI'
    Left = 827
    Top = 76
    object cdsEICDENQUADRAMENTO_IMPOSTO: TIntegerField
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
      Required = True
    end
    object cdsEIENQUADRAMENTO: TStringField
      FieldName = 'ENQUADRAMENTO'
      Size = 15
    end
  end
  object dspEI: TDataSetProvider
    DataSet = qEI
    Left = 827
    Top = 124
  end
  object dsEI: TDataSource
    DataSet = cdsEI
    Left = 827
    Top = 28
  end
  object qErro: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from erros')
    SQLConnection = SQLCon
    Left = 888
    Top = 176
  end
  object cdsErro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspErro'
    Left = 886
    Top = 76
    object cdsErroDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsErroFORM: TStringField
      FieldName = 'FORM'
      Size = 255
    end
    object cdsErroCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 255
    end
    object cdsErroMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 600
    end
    object cdsErroENVIADO: TStringField
      FieldName = 'ENVIADO'
      FixedChar = True
      Size = 1
    end
    object cdsErroUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 10
    end
    object cdsErroMAQUINA: TStringField
      FieldName = 'MAQUINA'
      FixedChar = True
      Size = 10
    end
    object cdsErroCDERRO: TIntegerField
      FieldName = 'CDERRO'
      Required = True
    end
  end
  object dspErro: TDataSetProvider
    DataSet = qErro
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 888
    Top = 124
  end
  object dsErro: TDataSource
    DataSet = cdsErro
    Left = 888
    Top = 28
  end
  object qSegTrab: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from segmento_Trabalho')
    SQLConnection = SQLCon
    Left = 235
    Top = 176
    object qSegTrabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qSegTrabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object cdsSegTrab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSegTrab'
    Left = 235
    Top = 76
    object cdsSegTrabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsSegTrabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dspSegTrab: TDataSetProvider
    DataSet = qSegTrab
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspSegTrabGetTableName
    Left = 235
    Top = 124
  end
  object dsSegTrab: TDataSource
    DataSet = cdsSegTrab
    Left = 235
    Top = 28
  end
  object qParametros: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from parametros')
    SQLConnection = SQLCon
    Left = 970
    Top = 176
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 970
    Top = 76
    object cdsParametrosSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 100
    end
    object cdsParametrosSEGMENTO: TStringField
      FieldName = 'SEGMENTO'
      Size = 35
    end
    object cdsParametrosCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 35
    end
    object cdsParametrosCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 35
    end
    object cdsParametrosCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 35
    end
    object cdsParametrosCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 35
    end
    object cdsParametrosCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Size = 35
    end
    object cdsParametrosDATA_EXPIRACAO: TDateField
      FieldName = 'DATA_EXPIRACAO'
    end
    object cdsParametrosCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsParametrosCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsParametrosALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsParametrosALTERADA_EM: TSQLTimeStampField
      FieldName = 'ALTERADA_EM'
    end
    object cdsParametrosDATA_INTERNET: TDateField
      FieldName = 'DATA_INTERNET'
    end
    object cdsParametrosCAMPO6: TIntegerField
      FieldName = 'CAMPO6'
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = qParametros
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 970
    Top = 124
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 970
    Top = 28
  end
  object qMascaraConta: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_contabil')
    SQLConnection = SQLCon
    Left = 56
    Top = 144
    object qMascaraContaSALDO_LIVROCAIXA: TFMTBCDField
      FieldName = 'SALDO_LIVROCAIXA'
      Precision = 18
      Size = 2
    end
    object qMascaraContaMASCARA_PLCONTAS: TStringField
      FieldName = 'MASCARA_PLCONTAS'
      Size = 15
    end
  end
  object qOportunidadesHoje: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select nome, tipo,  data, motivo, numero'
      'from ('
      '       select clientes.nome,'
      '              0 as numero,'
      '              '#39'Cliente'#39' as Tipo,'
      
        '               cast(lpad(extract(month from clientes.nasc_fundac' +
        'ao),2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                         extract(day   from clientes.nasc_fundac' +
        'ao)        ||'#39'/'#39'||'
      
        '                         extract(year  from  current_date) as da' +
        'te) as Data,'
      '               '#39'Anivers'#225'rio/Funda'#231#227'o'#39' as motivo'
      '        from clientes'
      '        where clientes.nasc_fundacao is not null'
      ''
      '  union'
      ''
      
        '       select clientes_contato.nome || '#39' - '#39'|| clientes.nome as ' +
        'nome,'
      '       0 as numero,'
      '       '#39'Contato de Cliente'#39' as Tipo,'
      
        '       cast(lpad(extract(month from clientes_contato.aniversario' +
        '),2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                 extract(day   from clientes_contato.aniversario' +
        ')        ||'#39'/'#39'||'
      
        '                 extract(year  from  current_date ) as date) as ' +
        'Data,'
      '       '#39'Anivers'#225'rio'#39' as motivo'
      '       from clientes_contato'
      
        '       join clientes on clientes.cdcliente = clientes_contato.cd' +
        'cliente'
      '       where clientes_contato.aniversario is not null'
      ''
      '  union'
      ''
      '       select fornecedores.nome,'
      '       0 as numero,'
      '       '#39'Fornecedor'#39' as Tipo,'
      
        '       cast(lpad(extract(month from fornecedores.nasc_fundacao),' +
        '2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                 extract(day   from fornecedores.nasc_fundacao) ' +
        '       ||'#39'/'#39'||'
      
        '                 extract(year  from  current_date ) as date) as ' +
        'Data,'
      '       '#39'Anivers'#225'rio/Funda'#231#227'o'#39' as motivo'
      '       from fornecedores'
      '       where fornecedores.nasc_fundacao is not null'
      ''
      '  union'
      ''
      'select fornecedores_contato.nome,'
      '       0 as numero,'
      '       '#39'Contato Fornecedor'#39'as Tipo,'
      
        '       cast(lpad(extract(month from fornecedores_contato.anivers' +
        'ario),2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                 extract(day from fornecedores_contato.aniversar' +
        'io) ||'#39'/'#39'||'
      
        '                 extract(year from  current_date ) as date) as D' +
        'ata,'
      '       '#39'Anivers'#225'rio'#39' as motivo'
      'from fornecedores_contato'
      
        'join fornecedores on fornecedores.cdfornecedor = fornecedores_co' +
        'ntato.cdfornecedor'
      'where fornecedores_contato.aniversario is not null'
      ''
      'union'
      ''
      'select transportadores.nome,'
      '      0 as numero, '
      '      '#39'Transportador'#39' as Tipo,'
      '       --transportadores.nasc_fundacao as data,'
      
        '       cast(lpad(extract(month from transportadores.nasc_fundaca' +
        'o),2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                 extract(day from transportadores.nasc_fundacao)' +
        ' ||'#39'/'#39'||'
      
        '                 extract(year from  current_date ) as date) as D' +
        'ata,'
      '       '#39'Anivers'#225'rio/Funda'#231#227'o'#39' as motivo'
      'from transportadores'
      'where transportadores.nasc_fundacao is not null'
      ''
      'union'
      ''
      'select transportadores_contato.nome,'
      '      0 as numero,'
      '      '#39'Contato Transportador'#39'as Tipo,'
      '       --transportadores_contato.aniversario as data,'
      
        '       cast(lpad(extract(month from transportadores_contato.aniv' +
        'ersario),2,'#39'0'#39') ||'#39'/'#39'||'
      
        '                 extract(day from transportadores_contato.aniver' +
        'sario) ||'#39'/'#39'||'
      
        '                 extract(year from  current_date ) as date) as D' +
        'ata,'
      '       '#39'Anivers'#225'rio'#39
      'from transportadores_contato'
      
        'join transportadores on transportadores.cdtransportador = transp' +
        'ortadores_contato.cdtransportador'
      'where transportadores_contato.aniversario is not null'
      ''
      'union'
      ''
      'select case when clientes.cdcliente is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                 select f.nome, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                 select t.nome, t.cdpessoa from ' +
        'transportadores t)'
      '              where cdpessoa = clientes.cdcliente )'
      '       end as nome,'
      '       0 as numero,'
      '       '#39'Venda'#39','
      '       --negocios.data_negocio as Data,'
      
        '       cast(lpad(extract(month from negocios.data_negocio),2,'#39'0'#39 +
        ') ||'#39'/'#39'||'
      '                 extract(day from negocios.data_negocio) ||'#39'/'#39'||'
      
        '                 extract(year from  negocios.data_negocio ) as d' +
        'ate) as Data,'
      ''
      '        produtos.descricao as Motivo'
      ''
      'from negocios'
      'left join clientes on clientes.cdcliente = negocios.cdcliente'
      'left join produtos on produtos.cdproduto = negocios.cdproduto'
      ''
      'union'
      ''
      'select case when pedidos.cdcliente is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                 select f.nome, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                 select t.nome, t.cdpessoa from ' +
        'transportadores t)'
      '              where cdpessoa = pedidos.cdcliente )'
      '       end as nome,'
      '       pedidos.cdpedido as numero,'
      '       '#39'Or'#231'amento'#39','
      '       pedidos.data_validade - pedidos.dias_aviso as Data,'
      
        '        '#39'Vencimento do Or'#231'amento N'#186': '#39'|| pedidos.cdpedido as mot' +
        'ivo'
      'from pedidos'
      'left join clientes on clientes.cdcliente = pedidos.cdcliente'
      'where (pedidos.data_validade is not null)'
      
        'and   (pedidos.descartar_aviso = 0 or (pedidos.descartar_aviso i' +
        's null))'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ')'
      'where data = :data'
      '')
    SQLConnection = SQLCon
    Left = 154
    Top = 392
  end
  object cdsOportunidadesHoje: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOportunidadesHoje'
    Left = 154
    Top = 292
    object StringField18: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 21
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
  end
  object dspOportunidadesHoje: TDataSetProvider
    DataSet = qOportunidadesHoje
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 154
    Top = 340
  end
  object dsOportunidadesHoje: TDataSource
    DataSet = cdsOportunidadesHoje
    Left = 154
    Top = 244
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 428
    Top = 28
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDEMPRESA'
    MasterFields = 'CDEMPRESA'
    MasterSource = dsEmpresa
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspBanco'
    Left = 428
    Top = 76
    object cdsBancoCDEMPRESA_BANCO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDEMPRESA_BANCO'
      Required = True
    end
    object cdsBancoCDEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'd. Empresa:'
      FieldName = 'CDEMPRESA'
    end
    object cdsBancoNOME_BANCO: TStringField
      DisplayLabel = 'Banco:'
      FieldName = 'NOME_BANCO'
      Size = 35
    end
    object cdsBancoNUMERO_BANCO: TStringField
      DisplayLabel = 'N'#186' Banco:'
      FieldName = 'NUMERO_BANCO'
      Size = 10
    end
    object cdsBancoAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia:'
      FieldName = 'AGENCIA'
    end
    object cdsBancoCONTA: TStringField
      DisplayLabel = 'Conta:'
      FieldName = 'CONTA'
    end
    object cdsBancoTIPO_CONTA: TStringField
      DisplayLabel = 'Tipo Conta:'
      FieldName = 'TIPO_CONTA'
      Size = 35
    end
    object cdsBancoFONE1: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE1'
      EditMask = '(00)00000-0009;1;_'
      Size = 15
    end
    object cdsBancoFONE2: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE2'
      EditMask = '(00)00000-0009;1;_'
      Size = 15
    end
    object cdsBancoFONE3: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE3'
      EditMask = '(00)00000-0009;1;_'
      Size = 15
    end
    object cdsBancoNOME_GERENTE: TStringField
      DisplayLabel = 'Gerente:'
      FieldName = 'NOME_GERENTE'
      Size = 50
    end
    object cdsBancoCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsBancoCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data do Cadastro:'
      FieldName = 'CADASTRADO_EM'
    end
    object cdsBancoALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'ALTERADO_POR'
      Size = 35
    end
    object cdsBancoALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = qBanco
    Left = 428
    Top = 124
  end
  object qBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdempresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select eb.cdempresa_banco,'
      '       eb.cdempresa,'
      '       eb.nome_banco,'
      '       eb.numero_banco,'
      '       eb.agencia,'
      '       eb.conta,'
      '       eb.tipo_conta,'
      '       eb.fone1,'
      '       eb.fone2,'
      '       eb.fone3,'
      '       eb.nome_gerente,'
      '       eb.cadastrado_por,'
      '       eb.cadastrado_em,'
      '       eb.alterado_por,'
      '       eb.alterado_em'
      'from empresa_banco eb'
      'where eb.cdempresa =:cdempresa')
    SQLConnection = SQLCon
    Left = 428
    Top = 176
  end
  object dsSocios: TDataSource
    DataSet = cdsSocios
    Left = 511
    Top = 28
  end
  object cdsSocios: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDEMPRESA'
    MasterFields = 'CDEMPRESA'
    MasterSource = dsEmpresa
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspSocios'
    Left = 511
    Top = 76
    object cdsSociosCDEMPRESA_SOCIO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDEMPRESA_SOCIO'
      Required = True
    end
    object cdsSociosCDEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'd. Empresa:'
      FieldName = 'CDEMPRESA'
    end
    object cdsSociosNOME: TStringField
      DisplayLabel = 'S'#243'cio:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsSociosENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsSociosNUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsSociosBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsSociosCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsSociosCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      Size = 10
    end
    object cdsSociosUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsSociosCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'COD_IBGE'
      Size = 10
    end
    object cdsSociosCPF: TStringField
      DisplayLabel = 'CPF/MF:'
      FieldName = 'CPF'
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object cdsSociosRG: TIntegerField
      DisplayLabel = 'RG:'
      FieldName = 'RG'
    end
    object cdsSociosRG_EMISSOR: TStringField
      DisplayLabel = 'Emissor:'
      FieldName = 'RG_EMISSOR'
      Size = 10
    end
    object cdsSociosQUOTA_SOCIETARIA: TFloatField
      DisplayLabel = '% Societ'#225'rio:'
      FieldName = 'QUOTA_SOCIETARIA'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsSociosCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsSociosCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '00/00/0000;1;_'
    end
    object cdsSociosALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'ALTERADO_POR'
      Size = 35
    end
    object cdsSociosALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '00/00/0000;1;_'
    end
  end
  object dspSocios: TDataSetProvider
    DataSet = qSocios
    Left = 511
    Top = 124
  end
  object qSocios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdempresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select es.cdempresa_socio,'
      '       es.cdempresa,'
      '       es.nome,'
      '       es.endereco,'
      '       es.numero,'
      '       es.bairro,'
      '       es.cidade,'
      '       es.cep,'
      '       es.uf,'
      '       es.cod_ibge,'
      '       es.cpf,'
      '       es.rg,'
      '       es.rg_emissor,'
      '       es.quota_societaria,'
      '       es.cadastrado_por,'
      '       es.cadastrado_em,'
      '       es.alterado_por,'
      '       es.alterado_em'
      ''
      'from empresa_socios es'
      'where es.cdempresa =:cdempresa')
    SQLConnection = SQLCon
    Left = 511
    Top = 176
  end
  object qVacina: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select vacinas.cdvacina,'
      '       vacinas.cdtipo,'
      '       vacinas.descricao,'
      '       vacinas.dias,'
      '       vacinas.aviso_dias,'
      '       vacinas.cadastrado_por,'
      '       vacinas.cadastrado_em,'
      '       vacinas.alterado_por,'
      '       vacinas.alterado_em,'
      '       tipos.descricao as tipo'
      'from vacinas'
      'left join tipos on tipos.cdtipo = vacinas.cdtipo')
    SQLConnection = SQLCon
    Left = 594
    Top = 176
    object qVacinaCDVACINA: TIntegerField
      FieldName = 'CDVACINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVacinaCDTIPO: TIntegerField
      FieldName = 'CDTIPO'
      ProviderFlags = [pfInUpdate]
    end
    object qVacinaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qVacinaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object qVacinaAVISO_DIAS: TIntegerField
      FieldName = 'AVISO_DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object qVacinaCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qVacinaCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qVacinaALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qVacinaALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qVacinaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspVacina: TDataSetProvider
    DataSet = qVacina
    UpdateMode = upWhereKeyOnly
    Left = 594
    Top = 124
  end
  object cdsVacina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVacina'
    Left = 594
    Top = 76
    object cdsVacinaCDVACINA: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDVACINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVacinaCDTIPO: TIntegerField
      DisplayLabel = 'C'#243'digo Tipo:'
      FieldName = 'CDTIPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVacinaDESCRICAO: TStringField
      DisplayLabel = 'Vacina:'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsVacinaDIAS: TIntegerField
      DisplayLabel = 'Dias:'
      FieldName = 'DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVacinaAVISO_DIAS: TIntegerField
      DisplayLabel = 'Aviso(dias):'
      FieldName = 'AVISO_DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVacinaCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsVacinaCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '00/00/0000;1;_'
    end
    object cdsVacinaALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsVacinaALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVacinaTIPO: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsVacina: TDataSource
    DataSet = cdsVacina
    Left = 594
    Top = 28
  end
  object qEndCob: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from erros')
    SQLConnection = SQLCon
    Left = 552
    Top = 392
  end
  object cdsEndCob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspErro'
    Left = 552
    Top = 292
    object DateField2: TDateField
      FieldName = 'DATA'
    end
    object StringField20: TStringField
      FieldName = 'FORM'
      Size = 255
    end
    object StringField21: TStringField
      FieldName = 'CONTROLE'
      Size = 255
    end
    object StringField22: TStringField
      FieldName = 'MENSAGEM'
      Size = 600
    end
    object StringField23: TStringField
      FieldName = 'ENVIADO'
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 10
    end
    object StringField25: TStringField
      FieldName = 'MAQUINA'
      FixedChar = True
      Size = 10
    end
    object IntegerField3: TIntegerField
      FieldName = 'CDERRO'
      Required = True
    end
  end
  object dspEndCob: TDataSetProvider
    DataSet = qEndCob
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 552
    Top = 340
  end
  object dsEndCob: TDataSource
    DataSet = cdsEndCob
    Left = 552
    Top = 244
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLCon
    Left = 56
    Top = 88
  end
end
