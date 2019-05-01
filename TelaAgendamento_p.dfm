object TelaAgendamento: TTelaAgendamento
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Agendamento]'
  ClientHeight = 319
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 284
    Width = 1142
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnIncluir: TBitBtn
      Left = 22
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Incluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtnIncluirClick
    end
    object BitBtnExcluir: TBitBtn
      Left = 118
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Excluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtnExcluirClick
    end
    object BitBtnCancelar: TBitBtn
      Left = 304
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnCancelarClick
    end
    object BitBtnAlterar: TBitBtn
      Left = 396
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Alterar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtnAlterarClick
    end
    object BitBtnGravar: TBitBtn
      Left = 210
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Gravar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtnGravarClick
    end
    object BitBtnSair: TBitBtn
      Left = 489
      Top = 4
      Width = 90
      Height = 27
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtnSairClick
    end
  end
  object PanelPesquisa: TPanel
    Left = 0
    Top = 209
    Width = 1142
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Shape1: TShape
      Left = 548
      Top = 13
      Width = 14
      Height = 14
      Brush.Color = clBlue
      Visible = False
    end
    object Label12: TLabel
      Left = 564
      Top = 14
      Width = 25
      Height = 13
      Caption = 'Ativa'
      Visible = False
    end
    object Label13: TLabel
      Left = 567
      Top = 54
      Width = 54
      Height = 13
      Hint = 'N'#195'O FATURADO'
      Caption = 'Desativada'
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object Shape2: TShape
      Left = 549
      Top = 53
      Width = 14
      Height = 14
      Brush.Color = clRed
      Visible = False
    end
    object RadioGroupPesquisa: TRadioGroup
      Left = 4
      Top = 5
      Width = 229
      Height = 62
      Caption = 'Tipo de Busca:'
      Columns = 2
      Items.Strings = (
        'C'#243'digo')
      TabOrder = 0
      TabStop = True
    end
    object GroupBox1: TGroupBox
      Left = 239
      Top = 6
      Width = 298
      Height = 62
      Caption = 'Digite o texto para busca:'
      TabOrder = 1
      TabStop = True
      object MaskEditPesquisa: TMaskEdit
        Left = 3
        Top = 25
        Width = 142
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtnOK: TJvXPButton
        Left = 159
        Top = 27
        Width = 54
        Caption = '&OK'
        TabOrder = 1
        Default = True
      end
      object BitBtnGeral: TJvXPButton
        Left = 227
        Top = 27
        Width = 55
        Caption = '&Geral'
        TabOrder = 2
      end
    end
  end
  object PanelCorpo: TPanel
    Left = 0
    Top = 0
    Width = 1142
    Height = 209
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 57
      Width = 55
      Height = 13
      Caption = 'Especialista'
    end
    object Label4: TLabel
      Left = 24
      Top = 103
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label5: TLabel
      Left = 168
      Top = 103
      Width = 23
      Height = 13
      Caption = 'Hora'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 234
      Top = 57
      Width = 65
      Height = 13
      Caption = 'Procedimento'
    end
    object Label8: TLabel
      Left = 24
      Top = 155
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      FocusControl = DBEdit8
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 32
      Width = 73
      Height = 21
      DataField = 'CDAGENDA'
      DataSource = dsAG
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 168
      Top = 121
      Width = 106
      Height = 21
      DataField = 'HORA'
      DataSource = dsAG
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 24
      Top = 172
      Width = 597
      Height = 21
      DataField = 'OBSERVACOES'
      DataSource = dsAG
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 75
      Width = 185
      Height = 21
      DataField = 'CDTOSADOR'
      DataSource = dsAG
      KeyField = 'CDTOSADOR'
      ListField = 'NOME'
      ListSource = dsEsp
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 234
      Top = 75
      Width = 252
      Height = 21
      DataField = 'CDPROCEDIMENTO'
      DataSource = dsAG
      KeyField = 'CDPROCEDIMENTO'
      ListField = 'DESCRICACAO'
      ListSource = dsProc
      TabOrder = 2
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 24
      Top = 121
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = dsAG
      TabOrder = 3
    end
  end
  object qCA: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Config_agenda')
    SQLConnection = DMPrincipal.SQLCon
    Left = 862
    Top = 187
  end
  object dspCA: TDataSetProvider
    DataSet = qCA
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 861
    Top = 140
  end
  object cdsCA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAG'
    Left = 862
    Top = 87
    object cdsCACODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCAQTD_CAMPOS: TIntegerField
      DisplayLabel = 'Qtd. Campos'
      FieldName = 'QTD_CAMPOS'
    end
    object cdsCANOME_CAMPO1: TStringField
      DisplayLabel = 'Campo 1 (Fxo)'
      FieldName = 'NOME_CAMPO1'
      Size = 15
    end
    object cdsCANOME_CAMPO2: TStringField
      DisplayLabel = 'Campo 2 (Fixo)'
      FieldName = 'NOME_CAMPO2'
      Size = 15
    end
    object cdsCANOME_CAMPO3: TStringField
      DisplayLabel = 'Campo 3'
      FieldName = 'NOME_CAMPO3'
      Size = 15
    end
    object cdsCANOME_CAMPO4: TStringField
      DisplayLabel = 'Campo 4'
      FieldName = 'NOME_CAMPO4'
      Size = 15
    end
    object cdsCANOME_CAMPO5: TStringField
      DisplayLabel = 'Campo 5'
      FieldName = 'NOME_CAMPO5'
      Size = 16
    end
    object cdsCANOME_CAMPO6: TStringField
      DisplayLabel = 'Campo 6'
      FieldName = 'NOME_CAMPO6'
      Size = 15
    end
    object cdsCAHORARIO_INICIO: TTimeField
      DisplayLabel = 'Hor'#225'rio Inicial'
      FieldName = 'HORARIO_INICIO'
      EditMask = '!90:00;1;_'
    end
    object cdsCAHORARIO_FINAL: TTimeField
      DisplayLabel = 'Hor'#225'rio Final'
      FieldName = 'HORARIO_FINAL'
    end
    object cdsCACADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCACADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'CADASTRADO_EM'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCAINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
    end
  end
  object dsCA: TDataSource
    DataSet = cdsCA
    Left = 858
    Top = 36
  end
  object QAG: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select agenda.cdagenda,'
      '          agenda.cdtosador,'
      '       tosador.nome,'
      '       agenda.data,'
      '       agenda.hora,'
      '       agenda.cdprocedimento,'
      '       procedimentos.descricacao,'
      '       agenda.observacoes,'
      '       agenda.cadastrado_por,'
      '       agenda.cadastrado_em,'
      '      agenda.cdcliente'
      'from agenda'
      'left join tosador on tosador.cdtosador = agenda.cdtosador'
      
        'left join procedimentos on procedimentos.cdprocedimento = agenda' +
        '.cdprocedimento'
      'left join clientes on clientes.cdcliente = agenda.cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 862
    Top = 187
    object QAGCDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAGCDTOSADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Especialista'
      FieldName = 'CDTOSADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QAGNOME: TStringField
      DisplayLabel = 'Especialista'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object QAGDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object QAGHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object QAGCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd Procedimento'
      FieldName = 'CDPROCEDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QAGDESCRICACAO: TStringField
      DisplayLabel = 'Procedimento'
      FieldName = 'DESCRICACAO'
      ProviderFlags = []
      Size = 50
    end
    object QAGOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object QAGCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QAGCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object QAGCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
    end
  end
  object dspAG: TDataSetProvider
    DataSet = QAG
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspAGGetTableName
    Left = 861
    Top = 139
  end
  object cdsAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAG'
    Left = 862
    Top = 86
    object cdsAGCDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAGCDTOSADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Especialista'
      FieldName = 'CDTOSADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGNOME: TStringField
      DisplayLabel = 'Especialista'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsAGDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsAGHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cdsAGCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Procedimento'
      FieldName = 'CDPROCEDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGDESCRICACAO: TStringField
      DisplayLabel = 'Procedimento'
      FieldName = 'DESCRICACAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAGOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      ProviderFlags = []
      Size = 300
    end
    object cdsAGCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAGCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsAGCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
    end
  end
  object dsAG: TDataSource
    DataSet = cdsAG
    Left = 858
    Top = 35
  end
  object qEsp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from tosador'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 915
    Top = 185
  end
  object dspEsp: TDataSetProvider
    DataSet = qEsp
    UpdateMode = upWhereKeyOnly
    Left = 916
    Top = 137
  end
  object cdsEsp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEsp'
    Left = 920
    Top = 86
    object cdsEspCDTOSADOR: TIntegerField
      FieldName = 'CDTOSADOR'
      Required = True
    end
    object cdsEspNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsEspCOMISSAO: TSingleField
      FieldName = 'COMISSAO'
    end
    object cdsEspESPECIALIDADE: TStringField
      FieldName = 'ESPECIALIDADE'
      Size = 50
    end
    object cdsEspATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsEspCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsEspCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsEspDESATIVADO_POR: TStringField
      FieldName = 'DESATIVADO_POR'
      Size = 10
    end
    object cdsEspDESATIVADO_EM: TSQLTimeStampField
      FieldName = 'DESATIVADO_EM'
    end
  end
  object dsEsp: TDataSource
    DataSet = cdsEsp
    Left = 921
    Top = 36
  end
  object qProc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from procedimentos'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 979
    Top = 185
  end
  object dspProc: TDataSetProvider
    DataSet = qProc
    UpdateMode = upWhereKeyOnly
    Left = 980
    Top = 137
  end
  object cdsProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProc'
    Left = 984
    Top = 86
    object cdsProcCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPROCEDIMENTO'
      Required = True
    end
    object cdsProcDESCRICACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICACAO'
      Size = 50
    end
  end
  object dsProc: TDataSource
    DataSet = cdsProc
    Left = 985
    Top = 36
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from clientes'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1043
    Top = 185
  end
  object dspCli: TDataSetProvider
    DataSet = qCli
    UpdateMode = upWhereKeyOnly
    Left = 1044
    Top = 137
  end
  object cdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli'
    Left = 1048
    Top = 86
    object cdsCliCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsCliCDMASCOTE: TIntegerField
      FieldName = 'CDMASCOTE'
    end
    object cdsCliNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCliAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsCliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsCliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsCliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsCliCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cdsCliUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCliCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsCliIE_RG: TStringField
      FieldName = 'IE_RG'
    end
    object cdsCliDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsCliTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsCliPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsCliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsCliLIMITE_CREDITO: TSingleField
      FieldName = 'LIMITE_CREDITO'
    end
    object cdsCliRESTRICAO: TIntegerField
      FieldName = 'RESTRICAO'
    end
    object cdsCliTIPO_RESTRICAO: TStringField
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
    object cdsCliFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsCliFONE2: TStringField
      FieldName = 'FONE2'
      Size = 11
    end
    object cdsCliNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsCliCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsCliPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsCliCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsCliSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object cdsCliEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsCliCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCliCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsCliALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsCliALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
    end
  end
  object dsCli: TDataSource
    DataSet = cdsCli
    Left = 1049
    Top = 36
  end
end
