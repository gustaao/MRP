object DMFornecedores: TDMFornecedores
  OldCreateOrder = False
  Height = 359
  Width = 1007
  object qFoneForn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdfornecedor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ff.cdfornecedores_fone,'
      '       ff.cdfornecedor,'
      '       ff.tipo,'
      '       ff.numero,'
      '       f.apelido'
      'from fornecedores_fone ff'
      'left join fornecedores f on f.cdfornecedor = ff.cdfornecedor'
      'where ff.cdfornecedor=:cdfornecedor')
    SQLConnection = DMPrincipal.SQLCon
    Left = 160
    Top = 183
    object qFoneFornCDFORNECEDORES_FONE: TIntegerField
      FieldName = 'CDFORNECEDORES_FONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFoneFornCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qFoneFornTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qFoneFornAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object qFoneFornNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
  end
  object cdsFoneForn: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDFORNECEDOR'
    MasterFields = 'CDFORNECEDOR'
    MasterSource = dsForn
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspFoneForn'
    Left = 161
    Top = 86
    object cdsFoneFornCDFORNECEDORES_FONE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDFORNECEDORES_FONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFoneFornCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFoneFornTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsFoneFornAPELIDO: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object cdsFoneFornNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      EditMask = '(00)0000-00009;0;_'
      Size = 21
    end
  end
  object dspFoneForn: TDataSetProvider
    DataSet = qFoneForn
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspFoneFornGetTableName
    Left = 161
    Top = 137
  end
  object dsFoneForn: TDataSource
    DataSet = cdsFoneForn
    Left = 161
    Top = 32
  end
  object qForn: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from fornecedores'
      'order by nome'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 56
    Top = 172
  end
  object cdsForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForn'
    AfterOpen = cdsFornAfterOpen
    Left = 54
    Top = 79
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
    Left = 54
    Top = 120
  end
  object dsForn: TDataSource
    DataSet = cdsForn
    Left = 51
    Top = 33
  end
  object qContato: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdfornecedor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select fc.cdfornecedor_contato,'
      '       fc.cdfornecedor,'
      '       fc.nome,'
      '       fc.cargo,'
      '       fc.mail,'
      '       fc.fone,'
      '       fc.aniversario,'
      '       fc.time_futebol,'
      '       fc.observacoes,'
      '       f.apelido as Fornecedor'
      'from fornecedores_contato fc'
      'join fornecedores f on f.cdfornecedor = fc.cdfornecedor'
      'where fc.cdfornecedor =:cdfornecedor')
    SQLConnection = DMPrincipal.SQLCon
    Left = 264
    Top = 183
    object qContatoCDFORNECEDOR_CONTATO: TIntegerField
      FieldName = 'CDFORNECEDOR_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qContatoCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoCARGO: TStringField
      FieldName = 'CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qContatoMAIL: TStringField
      FieldName = 'MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qContatoFONE: TStringField
      FieldName = 'FONE'
    end
    object qContatoANIVERSARIO: TDateField
      DisplayLabel = 'Data Anivers'#225'rio'
      FieldName = 'ANIVERSARIO'
    end
    object qContatoTIME_FUTEBOL: TStringField
      FieldName = 'TIME_FUTEBOL'
      Size = 50
    end
    object qContatoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object cdsContato: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDFORNECEDOR'
    MasterFields = 'CDFORNECEDOR'
    MasterSource = dsForn
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspContato'
    Left = 265
    Top = 86
    object cdsContatoCDFORNECEDOR_CONTATO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDFORNECEDOR_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContatoCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContatoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoCARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsContatoMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsContatoANIVERSARIO: TDateField
      DisplayLabel = 'Data Anivers'#225'rio'
      FieldName = 'ANIVERSARIO'
      EditMask = '00/00/9999;1;_'
    end
    object cdsContatoTIME_FUTEBOL: TStringField
      DisplayLabel = 'Time Futebol'
      FieldName = 'TIME_FUTEBOL'
      Size = 50
    end
    object cdsContatoOBSERVACOES: TBlobField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cdsContatoFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      EditMask = '+00(00)00000-0009;1;_'
    end
  end
  object dspContato: TDataSetProvider
    DataSet = qContato
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspContatoGetTableName
    Left = 265
    Top = 137
  end
  object dsContato: TDataSource
    DataSet = cdsContato
    Left = 265
    Top = 32
  end
  object qSeg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from segmento_trabalho')
    SQLConnection = DMPrincipal.SQLCon
    Left = 352
    Top = 183
  end
  object cdsSeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSeg'
    Left = 353
    Top = 86
    object cdsSegCONTROLE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CONTROLE'
    end
    object cdsSegDESCRICAO: TStringField
      DisplayLabel = 'Segmento'
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dspSeg: TDataSetProvider
    DataSet = qSeg
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspContatoGetTableName
    Left = 353
    Top = 137
  end
  object dsSeg: TDataSource
    DataSet = cdsSeg
    Left = 353
    Top = 32
  end
end
