object RelatorioOC: TRelatorioOC
  Left = -19
  Top = 5
  Caption = 'Relat'#243'rio Pedido de Compras Modelo 2'
  ClientHeight = 733
  ClientWidth = 1276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 145
    Top = 16
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPreview = QuickRep1AfterPreview
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      10.000000000000000000
      0.000000000000000000
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
    object QRBand1: TQRBand
      Left = 4
      Top = 38
      Width = 1119
      Height = 158
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        418.041666666666700000
        2960.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRPDFShape3: TQRPDFShape
        Left = 116
        Top = 137
        Width = 69
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          306.916666666666700000
          362.479166666666700000
          182.562500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape9: TQRPDFShape
        Left = 634
        Top = 137
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1677.458333333333000000
          362.479166666666700000
          108.479166666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape10: TQRPDFShape
        Left = 673
        Top = 137
        Width = 81
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1780.645833333333000000
          362.479166666666700000
          214.312500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape11: TQRPDFShape
        Left = 752
        Top = 137
        Width = 41
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1989.666666666667000000
          362.479166666666700000
          108.479166666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape12: TQRPDFShape
        Left = 791
        Top = 137
        Width = 91
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          2092.854166666667000000
          362.479166666666700000
          240.770833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape13: TQRPDFShape
        Left = 879
        Top = 137
        Width = 93
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          2325.687500000000000000
          362.479166666666700000
          246.062500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape14: TQRPDFShape
        Left = 970
        Top = 137
        Width = 43
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          2566.458333333333000000
          362.479166666666700000
          113.770833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape15: TQRPDFShape
        Left = 1011
        Top = 137
        Width = 79
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          2674.937500000000000000
          362.479166666666700000
          209.020833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape4: TQRPDFShape
        Left = 181
        Top = 137
        Width = 456
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          478.895833333333400000
          362.479166666666700000
          1206.500000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape2: TQRPDFShape
        Left = 52
        Top = 137
        Width = 67
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          52.916666666666660000
          137.583333333333300000
          362.479166666666700000
          177.270833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape1: TQRPDFShape
        Left = 12
        Top = 137
        Width = 43
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          31.750000000000000000
          362.479166666666700000
          113.770833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRShape1: TQRShape
        Left = 12
        Top = 81
        Width = 1078
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          31.750000000000000000
          214.312500000000000000
          2852.208333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 98
        Top = 84
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          222.250000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'CDFORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 524
        Top = 84
        Width = 313
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          222.250000000000000000
          828.145833333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 387
        Top = 102
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          269.875000000000000000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 67
        Top = 102
        Width = 243
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          269.875000000000000000
          642.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 144
        Top = 84
        Width = 288
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          222.250000000000000000
          762.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 24
        Top = 84
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          222.250000000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fornecedor:'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 317
        Top = 102
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          838.729166666666700000
          269.875000000000000000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cidade/Est.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 748
        Top = 118
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1979.083333333333000000
          312.208333333333300000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'E-Mail:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 460
        Top = 84
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1217.083333333333000000
          222.250000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel21: TQRLabel
        Left = 24
        Top = 102
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          269.875000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 679
        Top = 140
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1796.520833333333000000
          370.416666666666700000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 66
        Top = 140
        Width = 40
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          174.625000000000000000
          370.416666666666700000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 321
        Top = 140
        Width = 59
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          849.312500000000000000
          370.416666666666700000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 892
        Top = 140
        Width = 62
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2360.083333333333000000
          370.416666666666700000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel39: TQRLabel
        Left = 1024
        Top = 140
        Width = 56
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2709.333333333333000000
          370.416666666666700000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total c/IPI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel40: TQRLabel
        Left = 860
        Top = 4
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2275.416666666667000000
          10.583333333333330000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ordem Compra :'
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
      object QRLabel64: TQRLabel
        Left = 884
        Top = 51
        Width = 82
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2338.916666666667000000
          134.937500000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Impresso em :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText1: TQRDBText
        Left = 974
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2577.041666666667000000
          10.583333333333330000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'CDOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabelEndereco: TQRLabel
        Left = 460
        Top = 20
        Width = 393
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          1217.083333333333000000
          52.916666666666660000
          1039.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRSysData1: TQRSysData
        Left = 974
        Top = 50
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2577.041666666667000000
          132.291666666666700000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 1042
        Top = 50
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2756.958333333333000000
          132.291666666666700000
          97.895833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabelEmpresa: TQRLabel
        Left = 464
        Top = 1
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          2.645833333333333000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'empresa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 24
        Top = 120
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          317.500000000000000000
          248.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Enquadramento:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 120
        Top = 120
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          317.500000000000000000
          291.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'ENQUADRAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 790
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2090.208333333333000000
          269.875000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 805
        Top = 140
        Width = 59
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2129.895833333333000000
          370.416666666666700000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Unit.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Left = 974
        Top = 140
        Width = 32
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2577.041666666667000000
          370.416666666666700000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ali.IPI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRImage1: TQRImage
        Left = 13
        Top = -12
        Width = 251
        Height = 88
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          232.833333333333400000
          34.395833333333340000
          -31.750000000000000000
          664.104166666666800000)
        XLColumn = 0
        Center = True
        Stretch = True
      end
      object QRDBText6: TQRDBText
        Left = 515
        Top = 102
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          269.875000000000000000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabelCGCouCPF: TQRLabel
        Left = 732
        Top = 102
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1936.750000000000000000
          269.875000000000000000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fone/Fax:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 758
        Top = 140
        Width = 30
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2005.541666666667000000
          370.416666666666700000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ICMS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 545
        Top = 102
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1441.979166666667000000
          269.875000000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contato:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 21
        Top = 140
        Width = 26
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          55.562500000000000000
          370.416666666666700000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Item'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 642
        Top = 140
        Width = 22
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1698.625000000000000000
          370.416666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Uni.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 138
        Top = 140
        Width = 34
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          365.125000000000000000
          370.416666666666700000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conta'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 791
        Top = 118
        Width = 266
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2092.854166666667000000
          312.208333333333300000
          703.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'MAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 596
        Top = 102
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          269.875000000000000000
          354.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel44: TQRLabel
        Left = 897
        Top = 28
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2373.312500000000000000
          74.083333333333330000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Gerado em :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 971
        Top = 27
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2569.104166666667000000
          71.437500000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'CADASTRADO_EM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 346
        Top = 120
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333300000
          317.500000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel46: TQRLabel
        Left = 481
        Top = 120
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1272.645833333333000000
          317.500000000000000000
          296.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inscri'#231#227'o Estadual :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelCNPJ: TQRLabel
        Left = 387
        Top = 120
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1023.937500000000000000
          317.500000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRLabelIE: TQRLabel
        Left = 596
        Top = 120
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          317.500000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRDBText11: TQRDBText
        Left = 846
        Top = 84
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2238.375000000000000000
          222.250000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOC
        DataField = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 4
      Top = 196
      Width = 1119
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        2960.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRPDFShape16: TQRPDFShape
        Left = 181
        Top = -5
        Width = 456
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          478.895833333333400000
          -13.229166666666670000
          1206.500000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape42: TQRPDFShape
        Left = 1010
        Top = -5
        Width = 80
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          2672.291666666667000000
          -13.229166666666670000
          211.666666666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape41: TQRPDFShape
        Left = 969
        Top = -5
        Width = 43
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          2563.812500000000000000
          -13.229166666666670000
          113.770833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape40: TQRPDFShape
        Left = 878
        Top = -5
        Width = 93
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          2323.041666666667000000
          -13.229166666666670000
          246.062500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape39: TQRPDFShape
        Left = 791
        Top = -5
        Width = 89
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          2092.854166666667000000
          -13.229166666666670000
          235.479166666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape38: TQRPDFShape
        Left = 752
        Top = -5
        Width = 41
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          1989.666666666667000000
          -13.229166666666670000
          108.479166666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape37: TQRPDFShape
        Left = 672
        Top = -5
        Width = 81
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          1778.000000000000000000
          -13.229166666666670000
          214.312500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape36: TQRPDFShape
        Left = 636
        Top = -5
        Width = 38
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          1682.750000000000000000
          -13.229166666666670000
          100.541666666666700000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape8: TQRPDFShape
        Left = 116
        Top = -5
        Width = 66
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          306.916666666666700000
          -13.229166666666670000
          174.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape7: TQRPDFShape
        Left = 52
        Top = -5
        Width = 67
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          82.020833333333340000
          137.583333333333300000
          -13.229166666666670000
          177.270833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape6: TQRPDFShape
        Left = 12
        Top = -5
        Width = 43
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333340000
          31.750000000000000000
          -13.229166666666670000
          113.770833333333300000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRDBText9: TQRDBText
        Left = 20
        Top = 1
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666660000
          2.645833333333333000
          74.083333333333340000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'NUMERO_ITEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 642
        Top = 1
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1698.625000000000000000
          2.645833333333333000
          68.791666666666680000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'UNIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 58
        Top = 1
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          153.458333333333300000
          2.645833333333333000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'CDINTERNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 800
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2116.666666666667000000
          2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'VALOR_UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,###,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 982
        Top = 1
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2598.208333333333000000
          2.645833333333333000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 756
        Top = 1
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2000.250000000000000000
          2.645833333333333000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 680
        Top = 1
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1799.166666666667000000
          2.645833333333333000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'QTD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,###,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 122
        Top = 1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          2.645833333333333000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'CONTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabelDESCRICAO: TQRLabel
        Left = 188
        Top = 1
        Width = 127
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          497.416666666666700000
          2.645833333333333000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabelDESCRICAO'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 891
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2357.437500000000000000
          2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'VALOR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,###,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 1015
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2685.520833333333000000
          2.645833333333333000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsOCI
        DataField = 'VALOR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,###,##0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 4
      Top = 215
      Width = 1119
      Height = 354
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        936.625000000000000000
        2960.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabelLiberadoPor: TQRLabel
        Left = 836
        Top = 304
        Width = 141
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2211.916666666667000000
          804.333333333333200000
          373.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPDFShape5: TQRPDFShape
        Left = 12
        Top = 67
        Width = 1077
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          119.062500000000000000
          31.750000000000000000
          177.270833333333300000
          2849.562500000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape30: TQRPDFShape
        Left = 12
        Top = 0
        Width = 259
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333320000
          31.750000000000000000
          0.000000000000000000
          685.270833333333200000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape35: TQRPDFShape
        Left = 825
        Top = 0
        Width = 264
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333320000
          2182.812500000000000000
          0.000000000000000000
          698.500000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape34: TQRPDFShape
        Left = 824
        Top = 21
        Width = 265
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          2179.505208333333000000
          56.223958333333330000
          701.145833333333200000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape33: TQRPDFShape
        Left = 547
        Top = 21
        Width = 280
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1447.270833333333000000
          55.562500000000000000
          740.833333333333200000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape32: TQRPDFShape
        Left = 547
        Top = 0
        Width = 280
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1447.270833333333000000
          0.000000000000000000
          740.833333333333400000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape31: TQRPDFShape
        Left = 269
        Top = 0
        Width = 280
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          711.729166666666800000
          0.000000000000000000
          740.833333333333200000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape29: TQRPDFShape
        Left = 12
        Top = 21
        Width = 258
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          31.750000000000000000
          55.562500000000000000
          682.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape28: TQRPDFShape
        Left = 269
        Top = 21
        Width = 280
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          711.729166666666800000
          55.562500000000000000
          740.833333333333200000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRPDFShape27: TQRPDFShape
        Left = 825
        Top = 44
        Width = 264
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          2182.812500000000000000
          116.416666666666700000
          698.500000000000000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRLabelNUMERO: TQRLabel
        Left = 20
        Top = 48
        Width = 39
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          127.000000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'primeiro'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPDFShape26: TQRPDFShape
        Left = 12
        Top = 44
        Width = 815
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          31.750000000000000000
          116.416666666666700000
          2156.354166666667000000)
        XLColumn = 0
        VertAdjust = 0
        ShapeType = qrsRectangle
      end
      object QRLabel3: TQRLabel
        Left = 16
        Top = 51
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          134.937500000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
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
      object QRLabel5: TQRLabel
        Left = 17
        Top = 50
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          132.291666666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
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
      object QRLabel7: TQRLabel
        Left = 17
        Top = 49
        Width = 5
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          44.979166666666670000
          129.645833333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' '
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
      object QRLabelLinha7: TQRLabel
        Left = 12
        Top = 238
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          629.708333333333300000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 15
        Top = 70
        Width = 142
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          39.687500000000000000
          185.208333333333300000
          375.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Condi'#231#227'o de Pagamento:'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 382
        Top = 112
        Width = 318
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1010.708333333333000000
          296.333333333333300000
          841.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESTE PEDIDO EST'#193' SUJEITO AS CONDI'#199#213'ES ABAIXO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelLinha2: TQRLabel
        Left = 12
        Top = 160
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          423.333333333333300000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha3: TQRLabel
        Left = 12
        Top = 175
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          463.020833333333300000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha4: TQRLabel
        Left = 12
        Top = 191
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          505.354166666666700000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha5: TQRLabel
        Left = 12
        Top = 207
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          547.687500000000000000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha6: TQRLabel
        Left = 12
        Top = 223
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          590.020833333333300000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 13
        Top = 342
        Width = 113
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          34.395833333333330000
          904.875000000000000000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pedido de Compras - 1 VIA REV.5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 5
      end
      object QRLabelLinha9: TQRLabel
        Left = 12
        Top = 269
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          711.729166666666700000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha1: TQRLabel
        Left = 12
        Top = 144
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          381.000000000000000000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha8: TQRLabel
        Left = 12
        Top = 253
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          669.395833333333300000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelLinha10: TQRLabel
        Left = 12
        Top = 285
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          754.062500000000000000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 392
        Top = 4
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1037.166666666667000000
          10.583333333333330000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total ICMS'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 625
        Top = 2
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1653.645833333333000000
          5.291666666666667000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total das Mercadorias'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 938
        Top = 4
        Width = 62
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2481.791666666667000000
          10.583333333333330000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Geral'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelOBSCOMPRA: TQRLabel
        Left = 54
        Top = 49
        Width = 769
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          142.875000000000000000
          129.645833333333300000
          2034.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabelObsCompra QRLabelObsCompra QRLabelObsCompra teste linha 2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 21
        Top = 48
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          127.000000000000000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' Obs:'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 12
        Top = 319
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          31.750000000000000000
          844.020833333333300000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Comprador :'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape37: TQRShape
        Left = 95
        Top = 331
        Width = 448
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          251.354166666666700000
          875.770833333333300000
          1185.333333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel26: TQRLabel
        Left = 632
        Top = 319
        Width = 147
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1672.166666666667000000
          844.020833333333300000
          388.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '_____/______/_________'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 584
        Top = 319
        Width = 30
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1545.166666666667000000
          844.020833333333300000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 916
        Top = 90
        Width = 168
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2423.583333333333000000
          238.125000000000000000
          444.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conforme Programa'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 885
        Top = 48
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2341.562500000000000000
          127.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Frete:'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 927
        Top = 48
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2452.687500000000000000
          127.000000000000000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'FRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###,###,##0.0000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 72
        Top = 4
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          190.500000000000000000
          10.583333333333330000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total IPI'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrlData1: TQRLabel
        Left = 257
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          679.979166666666700000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData12: TQRLabel
        Left = 712
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1883.833333333333000000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL12: TQRLabel
        Left = 691
        Top = 91
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1828.270833333333000000
          240.770833333333300000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '12-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData10: TQRLabel
        Left = 633
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1674.812500000000000000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL10: TQRLabel
        Left = 618
        Top = 91
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          240.770833333333300000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '10-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData8: TQRLabel
        Left = 558
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1476.375000000000000000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL8: TQRLabel
        Left = 542
        Top = 91
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          240.770833333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '8-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlData6: TQRLabel
        Left = 479
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl6: TQRLabel
        Left = 467
        Top = 91
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1235.604166666667000000
          240.770833333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '6-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlData4: TQRLabel
        Left = 368
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl4: TQRLabel
        Left = 356
        Top = 91
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          240.770833333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlData2: TQRLabel
        Left = 256
        Top = 91
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          240.770833333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl2: TQRLabel
        Left = 244
        Top = 91
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          240.770833333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData11: TQRLabel
        Left = 712
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1883.833333333333000000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL11: TQRLabel
        Left = 691
        Top = 70
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1828.270833333333000000
          185.208333333333300000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '11-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData9: TQRLabel
        Left = 633
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1674.812500000000000000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRL9: TQRLabel
        Left = 618
        Top = 70
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          185.208333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '9-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLData7: TQRLabel
        Left = 558
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1476.375000000000000000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRl7: TQRLabel
        Left = 542
        Top = 70
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          185.208333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '7-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlData5: TQRLabel
        Left = 479
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl5: TQRLabel
        Left = 467
        Top = 70
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1235.604166666667000000
          185.208333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlData3: TQRLabel
        Left = 368
        Top = 70
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          185.208333333333300000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '00/00/00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl3: TQRLabel
        Left = 356
        Top = 70
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          941.916666666666700000
          185.208333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrl1: TQRLabel
        Left = 244
        Top = 70
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          185.208333333333300000
          29.104166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelCondicaoPagto: TQRLabel
        Left = 15
        Top = 91
        Width = 226
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          39.687500000000000000
          240.770833333333300000
          597.958333333333200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '30/60/90/120 DDL'
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
      object QRLabelLinha0: TQRLabel
        Left = 12
        Top = 128
        Width = 1081
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          338.666666666666700000
          2860.145833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo' +
          'oooooooooooooooooooooooooooooooooooooooooooooooooooo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabelAutorizado: TQRLabel
        Left = 836
        Top = 337
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2211.916666666667000000
          891.645833333333200000
          373.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Autorizado'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelLinha: TQRLabel
        Left = 836
        Top = 319
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          2211.916666666667000000
          844.020833333333300000
          373.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '____________________'
        Color = 16316664
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelTotalIPI: TQRLabel
        Left = 88
        Top = 25
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          66.145833333333330000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
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
      object QRLabelTotalICMS: TQRLabel
        Left = 409
        Top = 25
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1082.145833333333000000
          66.145833333333330000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
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
      object QRLabelTotalProdutos: TQRLabel
        Left = 682
        Top = 25
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1804.458333333333000000
          66.145833333333330000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
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
      object QRLabel13: TQRLabel
        Left = 935
        Top = 25
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2473.854166666667000000
          66.145833333333330000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel13'
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
    object QRGroup1: TQRGroup
      Left = 4
      Top = 196
      Width = 1119
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        2960.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'IBQ1.NUMERO'
      FooterBand = QRBand3
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object QRBand3: TQRBand
      Left = 4
      Top = 215
      Width = 1119
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand3AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        2960.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
  end
  object qOC: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdoc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select oc.cdoc,'
      '       oc.cdfornecedor,'
      '       fornecedores.nome,'
      '       fornecedores.endereco,'
      '       fornecedores.numero,'
      '       fornecedores.bairro,'
      '       fornecedores.cidade,'
      '       fornecedores.cep,'
      '       fornecedores.uf,'
      '       fornecedores.cpf_cnpj,'
      '       fornecedores.rg_ie,'
      '       fornecedores.tipo_pessoa,'
      '       fornecedores.contato,'
      '       fornecedores.mail,'
      '       ei.enquadramento,'
      '       fornecedores.fone,'
      '      '
      '      oc.desdobramento, '
      '      oc.data_entrega,'
      '       oc.valor_total,'
      '       oc.cadastrado_por,'
      '       cast(oc.cadastrado_em as date) as cadastrado_em,'
      '       oc.obs,'
      '       oc.total_icms,'
      '       oc.total_ipi,'
      '       oc.total_pis,'
      '       oc.total_cofins,'
      '       oc.total_issqn,'
      '       oc.total_irrf,'
      '       oc.alterado_por,'
      '       oc.alterado_em,'
      '       OC.frete,'
      '       oc.data_recebimento,'
      '       oc.cdcondicao_pagto,'
      '       oc.status,'
      '       oc.data1,'
      '       oc.valor1,'
      '       oc.data2,'
      '       oc.valor2,'
      '       oc.data3,'
      '       oc.valor3,'
      '       oc.data4,'
      '       oc.valor4,'
      '       oc.data5,'
      '       oc.valor5,'
      '       oc.data6,'
      ''
      '       oc.valor6,'
      '       oc.data7,'
      '       oc.valor7,'
      '       oc.data8,'
      '       oc.valor8,'
      '       oc.data9,'
      '       oc.valor9,'
      '       oc.data10,'
      '       oc.valor10,'
      '       oc.data11,'
      '       oc.valor11,'
      '       oc.data12,'
      '       oc.valor12'
      ''
      'from ordem_compras oc'
      'join fornecedores on fornecedores.cdfornecedor = oc.cdfornecedor'
      
        'join enquadamento_imposto ei on ei.cdenquadramento_imposto = for' +
        'necedores.cdenquadramento_imposto'
      'where oc.cdoc =:cdoc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 16
    Top = 191
    object qOCCDOC: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOCCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qOCCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object qOCOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qOCTOTAL_ICMS: TFloatField
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_IPI: TFloatField
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_PIS: TFloatField
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_COFINS: TFloatField
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_ISSQN: TFloatField
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_IRRF: TFloatField
      FieldName = 'TOTAL_IRRF'
      ProviderFlags = [pfInUpdate]
    end
    object qOCALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCFRETE: TIntegerField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qOCNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qOCDATA1: TDateField
      FieldName = 'DATA1'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR1: TFloatField
      FieldName = 'VALOR1'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA2: TDateField
      FieldName = 'DATA2'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR2: TFloatField
      FieldName = 'VALOR2'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA3: TDateField
      FieldName = 'DATA3'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR3: TFloatField
      FieldName = 'VALOR3'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA4: TDateField
      FieldName = 'DATA4'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR4: TFloatField
      FieldName = 'VALOR4'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA5: TDateField
      FieldName = 'DATA5'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR5: TFloatField
      FieldName = 'VALOR5'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA6: TDateField
      FieldName = 'DATA6'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR6: TFloatField
      FieldName = 'VALOR6'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA7: TDateField
      FieldName = 'DATA7'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR7: TFloatField
      FieldName = 'VALOR7'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA8: TDateField
      FieldName = 'DATA8'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR8: TFloatField
      FieldName = 'VALOR8'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA9: TDateField
      FieldName = 'DATA9'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR9: TFloatField
      FieldName = 'VALOR9'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA10: TDateField
      FieldName = 'DATA10'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR10: TFloatField
      FieldName = 'VALOR10'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA11: TDateField
      FieldName = 'DATA11'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR11: TFloatField
      FieldName = 'VALOR11'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA12: TDateField
      FieldName = 'DATA12'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR12: TFloatField
      FieldName = 'VALOR12'
      ProviderFlags = [pfInUpdate]
    end
    object qOCENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qOCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object qOCBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object qOCCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qOCCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qOCUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qOCCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object qOCRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object qOCTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object qOCCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 10
    end
    object qOCMAIL: TStringField
      FieldName = 'MAIL'
      Size = 50
    end
    object qOCENQUADRAMENTO: TStringField
      FieldName = 'ENQUADRAMENTO'
      Size = 15
    end
    object qOCFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object qOCDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
    end
    object qOCCDCONDICAO_PAGTO: TIntegerField
      FieldName = 'CDCONDICAO_PAGTO'
    end
  end
  object dspOC: TDataSetProvider
    DataSet = qOC
    UpdateMode = upWhereKeyOnly
    Left = 16
    Top = 144
  end
  object cdsOC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC'
    Left = 16
    Top = 96
    object cdsOCCDOC: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOCCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor:'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCDATA_ENTREGA: TDateField
      DisplayLabel = 'Data Entrega:'
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCTOTAL_ICMS: TFloatField
      DisplayLabel = 'Total ICMS:'
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCOBS: TBlobField
      DisplayLabel = 'Observa'#231#245'es:'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsOCTOTAL_IPI: TFloatField
      DisplayLabel = 'Total IPI:'
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_PIS: TFloatField
      DisplayLabel = 'Total PIS:'
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_COFINS: TFloatField
      DisplayLabel = 'Total Cofins:'
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_ISSQN: TFloatField
      DisplayLabel = 'Total ISSQN:'
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_IRRF: TFloatField
      DisplayLabel = 'Total IRRF:'
      FieldName = 'TOTAL_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCFRETE: TIntegerField
      DisplayLabel = 'Frete:'
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Data Recebimeno:'
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCSTATUS: TStringField
      DisplayLabel = 'Status:'
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOCNOME: TStringField
      DisplayLabel = 'Raz'#227'o Social:'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsOCDATA1: TDateField
      DisplayLabel = 'Data 1'
      FieldName = 'DATA1'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR1: TFloatField
      DisplayLabel = 'Valor 1'
      FieldName = 'VALOR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA2: TDateField
      DisplayLabel = 'Data 2'
      FieldName = 'DATA2'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR2: TFloatField
      DisplayLabel = 'Valor 2'
      FieldName = 'VALOR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA3: TDateField
      DisplayLabel = 'Data 3'
      FieldName = 'DATA3'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR3: TFloatField
      DisplayLabel = 'Valor 3'
      FieldName = 'VALOR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA4: TDateField
      DisplayLabel = 'Data 4'
      FieldName = 'DATA4'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR4: TFloatField
      DisplayLabel = 'Valor 4'
      FieldName = 'VALOR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA5: TDateField
      DisplayLabel = 'Data 5'
      FieldName = 'DATA5'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR5: TFloatField
      DisplayLabel = 'Valor 5'
      FieldName = 'VALOR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA6: TDateField
      DisplayLabel = 'Data 6'
      FieldName = 'DATA6'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR6: TFloatField
      DisplayLabel = 'Valor 6'
      FieldName = 'VALOR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA7: TDateField
      DisplayLabel = 'Data 7'
      FieldName = 'DATA7'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR7: TFloatField
      DisplayLabel = 'Valor 7'
      FieldName = 'VALOR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA8: TDateField
      DisplayLabel = 'Data 8'
      FieldName = 'DATA8'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR8: TFloatField
      DisplayLabel = 'Valor 8'
      FieldName = 'VALOR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA9: TDateField
      DisplayLabel = 'Data 9'
      FieldName = 'DATA9'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR9: TFloatField
      DisplayLabel = 'Valor 9'
      FieldName = 'VALOR9'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA10: TDateField
      DisplayLabel = 'Data 10'
      FieldName = 'DATA10'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR10: TFloatField
      DisplayLabel = 'Valor 10'
      FieldName = 'VALOR10'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA11: TDateField
      DisplayLabel = 'Data 11'
      FieldName = 'DATA11'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR11: TFloatField
      DisplayLabel = 'Valor 11'
      FieldName = 'VALOR11'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA12: TDateField
      DisplayLabel = 'Data 12'
      FieldName = 'DATA12'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR12: TFloatField
      DisplayLabel = 'Valor 12'
      FieldName = 'VALOR12'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsOCNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsOCBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsOCCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsOCCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsOCUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOCCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsOCRG_IE: TStringField
      FieldName = 'RG_IE'
    end
    object cdsOCTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsOCCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 10
    end
    object cdsOCMAIL: TStringField
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsOCENQUADRAMENTO: TStringField
      FieldName = 'ENQUADRAMENTO'
      Size = 15
    end
    object cdsOCFONE: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object cdsOCDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
    end
    object cdsOCCDCONDICAO_PAGTO: TIntegerField
      FieldName = 'CDCONDICAO_PAGTO'
    end
  end
  object dsOC: TDataSource
    DataSet = cdsOC
    Left = 15
    Top = 48
  end
  object qOCI: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdoc'
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
      '       plano_contas.descricao_conta'
      ''
      'from ordem_compras_itens oci'
      'left join produtos on produtos.cdproduto = oci.cdproduto'
      
        'left join plano_contas on plano_contas.cdplano_contas = produtos' +
        '.cdplano_contas'
      'where oci.cdoc =:cdoc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 54
    Top = 191
    object qOCICDOCI: TIntegerField
      FieldName = 'CDOCI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOCICDOC: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object qOCINUMERO_ITEM: TIntegerField
      FieldName = 'NUMERO_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIQTD: TFloatField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCICADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCICADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCIALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIRECEBIDO: TIntegerField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIQTD_RECEBIDA: TFloatField
      FieldName = 'QTD_RECEBIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object qOCICDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
    object qOCIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qOCIVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = []
    end
    object qOCICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qOCISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object qOCITIPO_UN_ENTRADA: TStringField
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qOCIMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 35
    end
    object qOCIMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 35
    end
    object qOCICONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 30
    end
    object qOCIDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object qOCIICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qOCIIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 2
    end
  end
  object dspOCI: TDataSetProvider
    DataSet = qOCI
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 55
    Top = 144
  end
  object cdsOCI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDOC'
    MasterFields = 'CDOC'
    MasterSource = dsOC
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspOCI'
    Left = 56
    Top = 96
    object cdsOCICDOCI: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDOCI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOCICDOC: TIntegerField
      DisplayLabel = 'C'#243'd. O.C.:'
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCINUMERO_ITEM: TIntegerField
      DisplayLabel = 'Contador:'
      FieldName = 'NUMERO_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Contas'
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCIVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIUNIDADE: TStringField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCICADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCICADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIALTERADO_POR: TStringField
      DisplayLabel = 'Usuario (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCIALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data (Altera'#231#227'o):'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIVALOR_ICMS: TFMTBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIVALOR_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIRECEBIDO: TIntegerField
      DisplayLabel = 'Recebido:'
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIQTD_RECEBIDA: TFloatField
      DisplayLabel = 'Qtd. Recebida:'
      FieldName = 'QTD_RECEBIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDINTERNO: TStringField
      DisplayLabel = 'C'#243'd. Interno:'
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object cdsOCICDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras:'
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
    object cdsOCIDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOCIVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      ProviderFlags = []
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCICFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsOCISIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria:'
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object cdsOCITIPO_UN_ENTRADA: TStringField
      DisplayLabel = 'Tipo Un.:'
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsOCIMARCA: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 35
    end
    object cdsOCIMODELO: TStringField
      DisplayLabel = 'Modelo:'
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 35
    end
    object cdsOCICONTA: TStringField
      DisplayLabel = 'C'#243'd. Conta:'
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsOCIDESCRICAO_CONTA: TStringField
      DisplayLabel = 'Conta:'
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
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
  end
  object dsOCI: TDataSource
    DataSet = cdsOCI
    Left = 56
    Top = 48
  end
  object qTotal: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select oc.cdoc,'
      '       oc.cdfornecedor,'
      '       fornecedores.nome,'
      '       fornecedores.endereco,'
      '       fornecedores.numero,'
      '       fornecedores.bairro,'
      '       fornecedores.cidade,'
      '       fornecedores.cep,'
      '       fornecedores.uf,'
      '       fornecedores.cpf_cnpj,'
      '       fornecedores.rg_ie,'
      '       fornecedores.tipo_pessoa,'
      '       fornecedores.contato,'
      '       fornecedores.mail,'
      '       ei.enquadramento,'
      '       fornecedores.fone,'
      '      '
      '      oc.desdobramento, '
      '      oc.data_entrega,'
      '       oc.valor_total,'
      '       oc.cadastrado_por,'
      '       cast(oc.cadastrado_em as date) as cadastrado_em,'
      '       oc.obs,'
      '       oc.total_icms,'
      '       oc.total_ipi,'
      '       oc.total_pis,'
      '       oc.total_cofins,'
      '       oc.total_issqn,'
      '       oc.total_irrf,'
      '       oc.alterado_por,'
      '       oc.alterado_em,'
      '       OC.frete,'
      '       oc.data_recebimento,'
      '       oc.status,'
      '       oc.data1,'
      '       oc.valor1,'
      '       oc.data2,'
      '       oc.valor2,'
      '       oc.data3,'
      '       oc.valor3,'
      '       oc.data4,'
      '       oc.valor4,'
      '       oc.data5,'
      '       oc.valor5,'
      '       oc.data6,'
      ''
      '       oc.valor6,'
      '       oc.data7,'
      '       oc.valor7,'
      '       oc.data8,'
      '       oc.valor8,'
      '       oc.data9,'
      '       oc.valor9,'
      '       oc.data10,'
      '       oc.valor10,'
      '       oc.data11,'
      '       oc.valor11,'
      '       oc.data12,'
      '       oc.valor12'
      ''
      'from ordem_compras oc'
      'join fornecedores on fornecedores.cdfornecedor = oc.cdfornecedor'
      
        'join enquadamento_imposto ei on ei.cdenquadramento_imposto = for' +
        'necedores.cdenquadramento_imposto')
    SQLConnection = DMPrincipal.SQLCon
    Left = 16
    Top = 247
    object IntegerField1: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object DateField1: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object BlobField1: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object FloatField2: TFloatField
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField3: TFloatField
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField4: TFloatField
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField5: TFloatField
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField6: TFloatField
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField7: TFloatField
      FieldName = 'TOTAL_IRRF'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField3: TIntegerField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object DateField3: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object StringField3: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object DateField4: TDateField
      FieldName = 'DATA1'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR1'
      ProviderFlags = [pfInUpdate]
    end
    object DateField5: TDateField
      FieldName = 'DATA2'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField9: TFloatField
      FieldName = 'VALOR2'
      ProviderFlags = [pfInUpdate]
    end
    object DateField6: TDateField
      FieldName = 'DATA3'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR3'
      ProviderFlags = [pfInUpdate]
    end
    object DateField7: TDateField
      FieldName = 'DATA4'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR4'
      ProviderFlags = [pfInUpdate]
    end
    object DateField8: TDateField
      FieldName = 'DATA5'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField12: TFloatField
      FieldName = 'VALOR5'
      ProviderFlags = [pfInUpdate]
    end
    object DateField9: TDateField
      FieldName = 'DATA6'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField13: TFloatField
      FieldName = 'VALOR6'
      ProviderFlags = [pfInUpdate]
    end
    object DateField10: TDateField
      FieldName = 'DATA7'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField14: TFloatField
      FieldName = 'VALOR7'
      ProviderFlags = [pfInUpdate]
    end
    object DateField11: TDateField
      FieldName = 'DATA8'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField15: TFloatField
      FieldName = 'VALOR8'
      ProviderFlags = [pfInUpdate]
    end
    object DateField12: TDateField
      FieldName = 'DATA9'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField16: TFloatField
      FieldName = 'VALOR9'
      ProviderFlags = [pfInUpdate]
    end
    object DateField13: TDateField
      FieldName = 'DATA10'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField17: TFloatField
      FieldName = 'VALOR10'
      ProviderFlags = [pfInUpdate]
    end
    object DateField14: TDateField
      FieldName = 'DATA11'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField18: TFloatField
      FieldName = 'VALOR11'
      ProviderFlags = [pfInUpdate]
    end
    object DateField15: TDateField
      FieldName = 'DATA12'
      ProviderFlags = [pfInUpdate]
    end
    object FloatField19: TFloatField
      FieldName = 'VALOR12'
      ProviderFlags = [pfInUpdate]
    end
    object StringField5: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object StringField12: TStringField
      FieldName = 'RG_IE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object StringField13: TStringField
      FieldName = 'CONTATO'
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'MAIL'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'ENQUADRAMENTO'
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'FONE'
      Size = 11
    end
    object IntegerField5: TIntegerField
      FieldName = 'DESDOBRAMENTO'
    end
  end
  object qMsg: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from ordem_compras_msg')
    SQLConnection = DMPrincipal.SQLCon
    Left = 110
    Top = 191
  end
  object dspMsg: TDataSetProvider
    DataSet = qMsg
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 111
    Top = 144
  end
  object cdsMsg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMsg'
    Left = 112
    Top = 96
    object cdsMsgCDOC_MSG: TIntegerField
      FieldName = 'CDOC_MSG'
    end
    object cdsMsgATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
    object cdsMsgMENSAGENS: TStringField
      FieldName = 'MENSAGENS'
      Size = 300
    end
    object cdsMsgORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsMsgNEGRITO: TIntegerField
      FieldName = 'NEGRITO'
    end
    object cdsMsgITALICO: TIntegerField
      FieldName = 'ITALICO'
    end
  end
  object dsMsg: TDataSource
    DataSet = cdsMsg
    Left = 112
    Top = 48
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select oc.cdoc,'
      '       oc.cdfornecedor,'
      '       fornecedores.nome,'
      '       fornecedores.endereco,'
      '       fornecedores.numero,'
      '       fornecedores.bairro,'
      '       fornecedores.cidade,'
      '       fornecedores.cep,'
      '       fornecedores.uf,'
      '       fornecedores.cpf_cnpj,'
      '       fornecedores.rg_ie,'
      '       fornecedores.tipo_pessoa,'
      '       fornecedores.contato,'
      '       fornecedores.mail,'
      '       ei.enquadramento,'
      '       fornecedores.fone,'
      '      '
      '      oc.desdobramento, '
      '      oc.data_entrega,'
      '       oc.valor_total,'
      '       oc.cadastrado_por,'
      '       cast(oc.cadastrado_em as date) as cadastrado_em,'
      '       oc.obs,'
      '       oc.total_icms,'
      '       oc.total_ipi,'
      '       oc.total_pis,'
      '       oc.total_cofins,'
      '       oc.total_issqn,'
      '       oc.total_irrf,'
      '       oc.alterado_por,'
      '       oc.alterado_em,'
      '       OC.frete,'
      '       oc.data_recebimento,'
      '       oc.status,'
      '       oc.data1,'
      '       oc.valor1,'
      '       oc.data2,'
      '       oc.valor2,'
      '       oc.data3,'
      '       oc.valor3,'
      '       oc.data4,'
      '       oc.valor4,'
      '       oc.data5,'
      '       oc.valor5,'
      '       oc.data6,'
      ''
      '       oc.valor6,'
      '       oc.data7,'
      '       oc.valor7,'
      '       oc.data8,'
      '       oc.valor8,'
      '       oc.data9,'
      '       oc.valor9,'
      '       oc.data10,'
      '       oc.valor10,'
      '       oc.data11,'
      '       oc.valor11,'
      '       oc.data12,'
      '       oc.valor12'
      ''
      'from ordem_compras oc'
      'join fornecedores on fornecedores.cdfornecedor = oc.cdfornecedor'
      
        'join enquadamento_imposto ei on ei.cdenquadramento_imposto = for' +
        'necedores.cdenquadramento_imposto')
    SQLConnection = DMPrincipal.SQLCon
    Left = 80
    Top = 247
  end
end
