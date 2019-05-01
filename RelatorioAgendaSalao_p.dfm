object RelatorioAgendaSalao: TRelatorioAgendaSalao
  Left = 0
  Top = 0
  Caption = 'RelatorioAgendaSalao'
  ClientHeight = 450
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 144
    Top = -16
    Width = 794
    Height = 449
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = cdsCA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 127
      Width = 718
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 4
        Top = 8
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          21.166666666666670000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hor'#225'rio:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 64
        Top = 8
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          21.166666666666670000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 218
        Top = 8
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          21.166666666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Procedimento:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRFrameline2: TQRFrameline
        Left = 52
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          137.583333333333300000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRFrameline3: TQRFrameline
        Left = 204
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          539.750000000000000000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRFrameline6: TQRFrameline
        Left = 476
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1259.416666666667000000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRLabel4: TQRLabel
        Left = 490
        Top = 8
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          21.166666666666670000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Observa'#231#245'es:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object QRLoopBand1: TQRLoopBand
      Left = 38
      Top = 201
      Width = 718
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRLoopBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333340000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      PrintCount = 0
      PrintBefore = False
      object QRLabelHorario: TQRLabel
        Left = 8
        Top = 9
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          23.812500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '08:00'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabelCliente: TQRLabel
        Left = 64
        Top = 9
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          23.812500000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabelProcedimento: TQRLabel
        Left = 218
        Top = 9
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          23.812500000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Procedimento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRFrameline1: TQRFrameline
        Left = 52
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          137.583333333333300000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRFrameline4: TQRFrameline
        Left = 204
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          539.750000000000000000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRFrameline5: TQRFrameline
        Left = 476
        Top = 5
        Width = 8
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1259.416666666667000000
          13.229166666666670000
          21.166666666666670000)
        XLColumn = 0
      end
      object QRLabelObs: TQRLabel
        Left = 490
        Top = 9
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          23.812500000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Procedimento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 161
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel14: TQRLabel
        AlignWithMargins = True
        Left = 8
        Top = 19
        Width = 308
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          21.166666666666670000
          50.270833333333330000
          814.916666666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        AlignWithMargins = True
        Left = 577
        Top = 19
        Width = 133
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1526.645833333333000000
          50.270833333333330000
          351.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'http://www.onzenet.inf.br'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 89
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        235.479166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 8
        Top = 68
        Width = 215
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          179.916666666666700000
          568.854166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Relat'#243'rio Gerado em: '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 608
        Top = 68
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          179.916666666666700000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'P'#225'gina: '
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabelTitulo: TQRLabel
        Left = 229
        Top = 8
        Width = 259
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          605.895833333333400000
          21.166666666666670000
          685.270833333333200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Vendas Mensal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabelSubTitulo: TQRLabel
        Left = 269
        Top = 40
        Width = 179
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          711.729166666666800000
          105.833333333333300000
          473.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Vendas Mensal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object qCA: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_agenda'
      'where ativo = 1')
    SQLConnection = DMPrincipal.SQLCon
    Left = 17
    Top = 196
  end
  object dspCA: TDataSetProvider
    DataSet = qCA
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 17
    Top = 146
  end
  object cdsCA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCA'
    Left = 18
    Top = 96
    object cdsCACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCAQTD_CAMPOS: TIntegerField
      FieldName = 'QTD_CAMPOS'
    end
    object cdsCANOME_CAMPO1: TStringField
      FieldName = 'NOME_CAMPO1'
      Size = 15
    end
    object cdsCANOME_CAMPO2: TStringField
      FieldName = 'NOME_CAMPO2'
      Size = 15
    end
    object cdsCANOME_CAMPO3: TStringField
      FieldName = 'NOME_CAMPO3'
      Size = 15
    end
    object cdsCANOME_CAMPO4: TStringField
      FieldName = 'NOME_CAMPO4'
      Size = 15
    end
    object cdsCANOME_CAMPO5: TStringField
      FieldName = 'NOME_CAMPO5'
      Size = 16
    end
    object cdsCANOME_CAMPO6: TStringField
      FieldName = 'NOME_CAMPO6'
      Size = 15
    end
    object cdsCAHORARIO_INICIO: TTimeField
      FieldName = 'HORARIO_INICIO'
    end
    object cdsCAHORARIO_FINAL: TTimeField
      FieldName = 'HORARIO_FINAL'
    end
    object cdsCACADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCACADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsCAINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object cdsCAATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
  end
  object dsCA: TDataSource
    DataSet = cdsCA
    Left = 18
    Top = 49
  end
  object QAG: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdtosador'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'hora'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select agenda.cdagenda,'
      '          agenda.cdtosador,'
      '       tosador.nome,'
      '       agenda.data,'
      '       agenda.hora,'
      '       agenda.cdprocedimento,'
      '       procedimentos.descricao,'
      '       agenda.observacoes,'
      '       agenda.cadastrado_por,'
      '       agenda.cadastrado_em,'
      '      agenda.cdcliente,'
      '     clientes.apelido'
      ''
      'from agenda'
      'left join tosador on tosador.cdtosador = agenda.cdtosador'
      
        'left join procedimentos on procedimentos.cdprocedimento = agenda' +
        '.cdprocedimento'
      'left join clientes on clientes.cdcliente = agenda.cdcliente'
      'where agenda.cdtosador =:cdtosador'
      'and    agenda.data          =:data'
      'and   agenda.hora           =:hora')
    SQLConnection = DMPrincipal.SQLCon
    Left = 78
    Top = 203
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
      ProviderFlags = [pfInUpdate]
    end
    object QAGAPELIDO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object QAGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspAG: TDataSetProvider
    DataSet = QAG
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 77
    Top = 156
  end
  object cdsAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAG'
    Left = 78
    Top = 103
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
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAGDESCRICAO: TStringField
      DisplayLabel = 'Procedimento:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAG: TDataSource
    DataSet = cdsAG
    Left = 74
    Top = 52
  end
  object qTosador: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdtosador'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from tosador'
      'where cdtosador=:cdtosador')
    SQLConnection = DMPrincipal.SQLCon
    Left = 11
    Top = 406
  end
  object dspTosador: TDataSetProvider
    DataSet = qTosador
    UpdateMode = upWhereKeyOnly
    Left = 12
    Top = 350
  end
  object cdsTosador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTosador'
    Left = 16
    Top = 303
    object cdsTosadorCDTOSADOR: TIntegerField
      FieldName = 'CDTOSADOR'
      Required = True
    end
    object cdsTosadorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTosadorCOMISSAO: TSingleField
      FieldName = 'COMISSAO'
    end
  end
  object dsTosador: TDataSource
    DataSet = cdsTosador
    Left = 17
    Top = 257
  end
end
