object ListagemProdutos: TListagemProdutos
  Left = 0
  Top = 0
  Caption = 'ListagemProdutos'
  ClientHeight = 483
  ClientWidth = 982
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
    Left = 156
    Top = 24
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = cdsProdutos
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
    ReportTitle = 'Listagem de Produtos'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 187
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel8: TQRLabel
        AlignWithMargins = True
        Left = 7
        Top = 4
        Width = 308
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          18.520833333333330000
          10.583333333333330000
          814.916666666666700000)
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
      object QRLabel9: TQRLabel
        AlignWithMargins = True
        Left = 575
        Top = 4
        Width = 133
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1521.354166666667000000
          10.583333333333330000
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
      Height = 75
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        198.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 8
        Top = 53
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
          140.229166666666700000
          568.854166666666700000)
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
      object QRLabelTitulo: TQRLabel
        Left = 256
        Top = 10
        Width = 205
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          677.333333333333300000
          26.458333333333330000
          542.395833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Listagem de Produtos'
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
      object QRSysData2: TQRSysData
        Left = 608
        Top = 53
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
          140.229166666666700000
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 159
      Width = 718
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 6
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          15.875000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsProdutos
        DataField = 'CDINTERNO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 184
        Top = 5
        Width = 250
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          13.229166666666670000
          661.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsProdutos
        DataField = 'DESCRICAO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 96
        Top = 6
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          15.875000000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsProdutos
        DataField = 'CDBARRAS'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 440
        Top = 5
        Width = 158
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          13.229166666666670000
          418.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = cdsProdutos
        DataField = 'MARCA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 604
        Top = 5
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1598.083333333333000000
          13.229166666666670000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = cdsProdutos
        DataField = 'VALOR_VENDA'
        Mask = '###,###,#0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 113
      Width = 718
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        121.708333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 8
        Top = 26
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          68.791666666666670000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interno:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 184
        Top = 26
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          486.833333333333300000
          68.791666666666670000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 96
        Top = 26
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          68.791666666666670000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Barras:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 8
        Top = 8
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          346.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 440
        Top = 26
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          68.791666666666670000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marca:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 625
        Top = 26
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1653.645833333333000000
          68.791666666666670000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Venda:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
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
    end
    object cdsProdutosVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosMARGEM: TFloatField
      FieldName = 'MARGEM'
      ProviderFlags = [pfInUpdate]
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
    Left = 67
    Top = 23
  end
end
