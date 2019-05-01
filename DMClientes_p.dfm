object DMClientes: TDMClientes
  OldCreateOrder = False
  Height = 392
  Width = 1120
  object qFoneCli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cf.cdclientes_fone,'
      '          cf.cdcliente,'
      '          cf.tipo,'
      '          cf.numero,'
      '          c.apelido'
      ''
      'from clientes_fone cf'
      'join clientes c on c.cdcliente = cf.cdcliente'
      'where cf.cdcliente =:cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 155
    Top = 177
    object qFoneCliCDCLIENTES_FONE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTES_FONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFoneCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qFoneCliTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 30
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qFoneCliNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object qFoneCliAPELIDO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsFoneCli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspFoneCli'
    Left = 155
    Top = 77
    object cdsFoneCliCDCLIENTES_FONE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTES_FONE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFoneCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFoneCliTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsFoneCliNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 21
    end
    object cdsFoneCliAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspFoneCli: TDataSetProvider
    DataSet = qFoneCli
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspFoneCliGetTableName
    Left = 155
    Top = 127
  end
  object dsFoneCli: TDataSource
    DataSet = cdsFoneCli
    Left = 156
    Top = 18
  end
  object qMascote: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select m.cdmascote,'
      '       m.cdraca,'
      '       m.cdtipo,'
      '       m.cdcliente,'
      '       m.nome,'
      '       m.cor,'
      '       m.nascimento,'
      '       m.obs,'
      '       m.data_cadastro,'
      '       c.apelido,'
      '       r.descricao as raca,'
      '       t.descricao as tipo'
      'from mascote m'
      'join clientes c on c.cdmascote = m.cdmascote'
      'join racas  r   on r.cdraca    = m.cdraca'
      'join tipos  t   on t.cdtipo    = m.cdtipo'
      'where m.cdcliente =:cdcliente'
      'order by m.nome')
    SQLConnection = DMPrincipal.SQLCon
    Left = 415
    Top = 169
    object qMascoteCDMASCOTE: TIntegerField
      FieldName = 'CDMASCOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMascoteCDRACA: TIntegerField
      FieldName = 'CDRACA'
      ProviderFlags = [pfInUpdate]
    end
    object qMascoteCDTIPO: TIntegerField
      FieldName = 'CDTIPO'
      ProviderFlags = [pfInUpdate]
    end
    object qMascoteCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qMascoteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qMascoteCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qMascoteNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qMascoteOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qMascoteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qMascoteAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object qMascoteRACA: TStringField
      FieldName = 'RACA'
      ProviderFlags = []
      Size = 30
    end
    object qMascoteTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 35
    end
  end
  object cdsMascote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspMascote'
    Left = 423
    Top = 72
    object cdsMascoteCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDMASCOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMascoteCDRACA: TIntegerField
      DisplayLabel = 'C'#243'd Ra'#231'a'
      FieldName = 'CDRACA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMascoteCDTIPO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      FieldName = 'CDTIPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMascoteCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMascoteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsMascoteCOR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsMascoteNASCIMENTO: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'NASCIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsMascoteOBS: TBlobField
      DisplayLabel = 'Obs.'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsMascoteDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsMascoteAPELIDO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object cdsMascoteRACA: TStringField
      DisplayLabel = 'Ra'#231'a'
      FieldName = 'RACA'
      ProviderFlags = []
      Size = 30
    end
    object cdsMascoteTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspMascote: TDataSetProvider
    DataSet = qMascote
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspMascoteGetTableName
    Left = 416
    Top = 124
  end
  object dsMascote: TDataSource
    DataSet = cdsMascote
    Left = 416
    Top = 19
  end
  object qTipo: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Tipos')
    SQLConnection = DMPrincipal.SQLCon
    Left = 482
    Top = 164
  end
  object cdsTipo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipo'
    Left = 483
    Top = 76
    object cdsTipoCDTIPO: TIntegerField
      FieldName = 'CDTIPO'
      Required = True
    end
    object cdsTipoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
  end
  object dspTipo: TDataSetProvider
    DataSet = qTipo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 481
    Top = 118
  end
  object dsTipo: TDataSource
    DataSet = cdsTipo
    Left = 478
    Top = 24
  end
  object qRaca: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Racas')
    SQLConnection = DMPrincipal.SQLCon
    Left = 549
    Top = 169
  end
  object cdsRacas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRacas'
    Left = 545
    Top = 79
    object cdsRacasCDRACA: TIntegerField
      FieldName = 'CDRACA'
      Required = True
    end
    object cdsRacasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object dspRacas: TDataSetProvider
    DataSet = qRaca
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 544
    Top = 125
  end
  object dsRacas: TDataSource
    DataSet = cdsRacas
    Left = 535
    Top = 30
  end
  object qContato: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.cdcliente_contato,'
      '          c.cdcliente,'
      '          c.nome,'
      '          c.cargo,'
      '          c.mail,'
      '          c.fone,'
      '          c.aniversario,'
      '          c.time_futebol,'
      '          c.observacoes,'
      '          clientes.apelido as Cliente'
      'from clientes_contato c'
      'join Clientes  on Clientes.cdcliente = c.cdcliente'
      'where c.cdcliente =:cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 984
    Top = 311
    object qContatoCDCLIENTE_CONTATO: TIntegerField
      FieldName = 'CDCLIENTE_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qContatoCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
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
    object qContatoFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoANIVERSARIO: TDateField
      FieldName = 'ANIVERSARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoTIME_FUTEBOL: TStringField
      FieldName = 'TIME_FUTEBOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qContatoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsContato: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspContato'
    Left = 985
    Top = 214
    object cdsContatoCDCLIENTE_CONTATO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTE_CONTATO'
      Required = True
    end
    object cdsContatoCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
    end
    object cdsContatoNOME: TStringField
      DisplayLabel = 'Contato:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsContatoCARGO: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Size = 30
    end
    object cdsContatoMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsContatoFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      EditMask = '+00(00)99999-9999;1;_'
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
    object cdsContatoCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Size = 50
    end
  end
  object dspContato: TDataSetProvider
    DataSet = qContato
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspContatoGetTableName
    Left = 985
    Top = 265
  end
  object dsContato: TDataSource
    DataSet = cdsContato
    Left = 985
    Top = 160
  end
  object qClientes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from clientes'
      'where clientes.cdcliente > 0'
      'order by nome'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 56
    Top = 172
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    AfterOpen = cdsClientesAfterOpen
    AfterScroll = cdsClientesAfterScroll
    Left = 54
    Top = 79
    object cdsClientesCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsClientesCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa:'
      FieldName = 'CDPESSOA'
    end
    object cdsClientesCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Mascote:'
      FieldName = 'CDMASCOTE'
    end
    object cdsClientesNOME: TStringField
      DisplayLabel = 'Nome/Raz'#227'o Social:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClientesAPELIDO: TStringField
      DisplayLabel = 'Nome Red.:'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClientesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsClientesCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClientesCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsClientesUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClientesIE_RG: TStringField
      DisplayLabel = 'RG/IE:'
      FieldName = 'IE_RG'
    end
    object cdsClientesDATA_CADASTRO: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA_CADASTRO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsClientesTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo Pessoa:'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsClientesPNG: TIntegerField
      DisplayLabel = 'PNG:'
      FieldName = 'PNG'
    end
    object cdsClientesEMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsClientesRESTRICAO: TIntegerField
      DisplayLabel = 'Restri'#231#227'o:'
      FieldName = 'RESTRICAO'
    end
    object cdsClientesTIPO_RESTRICAO: TStringField
      DisplayLabel = 'Tipo Restri'#231#227'o:'
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
    object cdsClientesFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      EditMask = '(99)00000-0009;0;_'
      Size = 11
    end
    object cdsClientesFONE2: TStringField
      DisplayLabel = 'Fax:'
      FieldName = 'FONE2'
      EditMask = '(99)00000-0009;0;_'
      Size = 11
    end
    object cdsClientesNASC_FUNDACAO: TDateField
      DisplayLabel = 'Nasc/Funda'#231#227'o:'
      FieldName = 'NASC_FUNDACAO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsClientesCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsClientesPAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsClientesCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd. Pa'#237's'
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsClientesSITE: TStringField
      DisplayLabel = 'website:'
      FieldName = 'SITE'
      Size = 150
    end
    object cdsClientesEMAIL_NFE: TStringField
      DisplayLabel = 'e-mail NFe:'
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsClientesCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsClientesALTERADO_POR: TStringField
      DisplayLabel = 'Alterado:'
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsClientesCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsClientesCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
    end
    object cdsClientesALTERADO_EM: TDateField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
    end
    object cdsClientesLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Limite Cr'#233'dito'
      FieldName = 'LIMITE_CREDITO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsClientesCDENQUADRAMENTO_IMPOSTO: TIntegerField
      DisplayLabel = 'C'#243'd Enquadramento:'
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
    object cdsClientesCDLINHA_PRODUTOS: TIntegerField
      FieldName = 'CDLINHA_PRODUTOS'
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 128
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 51
    Top = 33
  end
  object dsContatoCli: TDataSource
    DataSet = cdsContatoCli
    Left = 640
    Top = 152
  end
  object dspContatoCli: TDataSetProvider
    DataSet = qContatoCli
    OnGetTableName = dspContatoCliGetTableName
    Left = 640
    Top = 256
  end
  object qContatoCli: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.cdcliente_contato,'
      '          c.cdcliente,'
      '          c.nome,'
      '          c.cargo,'
      '          c.mail,'
      '          c.fone,'
      '          c.aniversario,'
      '          c.time_futebol,'
      '          c.observacoes,'
      '          c.departamento,'
      '          clientes.apelido as Cliente'
      'from clientes_contato c'
      'left join Clientes  on Clientes.cdcliente = c.cdcliente'
      'where c.cdcliente =:cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 640
    Top = 304
    object qContatoCliCDCLIENTE_CONTATO: TIntegerField
      FieldName = 'CDCLIENTE_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qContatoCliCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoCliNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoCliCARGO: TStringField
      FieldName = 'CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qContatoCliMAIL: TStringField
      FieldName = 'MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoCliFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoCliANIVERSARIO: TDateField
      FieldName = 'ANIVERSARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qContatoCliTIME_FUTEBOL: TStringField
      FieldName = 'TIME_FUTEBOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoCliOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qContatoCliDEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento:'
      FieldName = 'DEPARTAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qContatoCliCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsContatoCli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspContatoCli'
    Left = 640
    Top = 200
    object cdsContatoCliCDCLIENTE_CONTATO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCLIENTE_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContatoCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContatoCliNOME: TStringField
      DisplayLabel = 'Contato:'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoCliCARGO: TStringField
      DisplayLabel = 'Cargo:'
      FieldName = 'CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsContatoCliMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoCliFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '+00(00)00000-0009;1;_'
    end
    object cdsContatoCliANIVERSARIO: TDateField
      DisplayLabel = 'Anivers'#225'rio:'
      FieldName = 'ANIVERSARIO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/9999;1;_'
    end
    object cdsContatoCliTIME_FUTEBOL: TStringField
      DisplayLabel = 'Time Futebol:'
      FieldName = 'TIME_FUTEBOL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoCliOBSERVACOES: TBlobField
      DisplayLabel = 'Observa'#231#245'es:'
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsContatoCliDEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento:'
      FieldName = 'DEPARTAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsContatoCliCLIENTE: TStringField
      DisplayLabel = 'Cliente:'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
  end
  object qLinha: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from linha_Produtos'
      'order by linha_produtos.ordem, linha_produtos.descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 237
    Top = 169
  end
  object cdsLinha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLinha'
    Left = 233
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
    Left = 232
    Top = 125
  end
  object dsLinha: TDataSource
    DataSet = cdsLinha
    Left = 231
    Top = 22
  end
  object qClienteLinha: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  cl.cdcliente_linha,'
      '        cl.cdcliente,'
      '        cl.cdlinha_produtos,'
      '        cl.cadastrado_por,'
      '        cl.cadastrado_em,'
      '        cl.alterado_por,'
      '        cl.alterado_em,'
      '        lp.descricao'
      'from clientes_linha cl'
      
        'join linha_produtos lp on lp.cdlinha_produtos = cl.cdlinha_produ' +
        'tos'
      'where cl.cdcliente = :cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 333
    Top = 169
    object qClienteLinhaCDCLIENTE_LINHA: TIntegerField
      FieldName = 'CDCLIENTE_LINHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qClienteLinhaCDLINHA_PRODUTOS: TIntegerField
      FieldName = 'CDLINHA_PRODUTOS'
      ProviderFlags = [pfInUpdate]
    end
    object qClienteLinhaCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qClienteLinhaCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qClienteLinhaCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qClienteLinhaALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qClienteLinhaALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qClienteLinhaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object cdsClienteLinha: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dslClienteLinha'
    Left = 329
    Top = 71
    object cdsClienteLinhaCDCLIENTE_LINHA: TIntegerField
      FieldName = 'CDCLIENTE_LINHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteLinhaCDLINHA_PRODUTOS: TIntegerField
      FieldName = 'CDLINHA_PRODUTOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteLinhaCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteLinhaCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsClienteLinhaCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteLinhaALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsClienteLinhaALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteLinhaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dslClienteLinha: TDataSetProvider
    DataSet = qClienteLinha
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dslClienteLinhaGetTableName
    Left = 328
    Top = 125
  end
  object dsClienteLinha: TDataSource
    DataSet = cdsClienteLinha
    Left = 327
    Top = 22
  end
  object qFoneContato: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente_contato'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from clientes_contato_fone ccf'
      'where ccf.cdcliente_contato =:cdcliente_contato')
    SQLConnection = DMPrincipal.SQLCon
    Left = 722
    Top = 300
  end
  object cdsFoneContato: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE_CONTATO'
    MasterFields = 'CDCLIENTE_CONTATO'
    MasterSource = dsContatoCli
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspFoneContato'
    AfterScroll = cdsFoneContatoAfterScroll
    Left = 723
    Top = 212
    object cdsFoneContatoCDCLIENTE_CONTATO_FONE: TIntegerField
      FieldName = 'CDCLIENTE_CONTATO_FONE'
      Required = True
    end
    object cdsFoneContatoCDCLIENTE_CONTATO: TIntegerField
      FieldName = 'CDCLIENTE_CONTATO'
    end
    object cdsFoneContatoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object cdsFoneContatoFONE: TStringField
      FieldName = 'FONE'
      EditMask = '+00(00)99999-9999;1;_'
      Size = 21
    end
    object cdsFoneContatoCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 35
    end
    object cdsFoneContatoCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
  end
  object dspFoneContato: TDataSetProvider
    DataSet = qFoneContato
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 721
    Top = 254
  end
  object dsFoneContato: TDataSource
    DataSet = cdsFoneContato
    Left = 718
    Top = 160
  end
end
