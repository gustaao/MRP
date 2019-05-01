object vendas: Tvendas
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 
    'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Terminal de V' +
    'endas]'
  ClientHeight = 659
  ClientWidth = 1192
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object Shape7: TShape
    Left = -679
    Top = 546
    Width = 946
    Height = 46
    Brush.Color = clSkyBlue
    Shape = stRoundRect
  end
  object PanelTopo: TPanel
    Left = 0
    Top = 0
    Width = 1192
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1192
      71)
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 1192
      Height = 71
      Align = alClient
      Brush.Color = clSkyBlue
      Shape = stRoundRect
      ExplicitLeft = 1
    end
    object Label3: TLabel
      Left = 41
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label7: TLabel
      Left = 505
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Operador'
    end
    object LabelData: TLabel
      Left = 1061
      Top = 6
      Width = 104
      Height = 25
      Caption = '14/03/2012'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LabelHora: TLabel
      Left = 1075
      Top = 38
      Width = 80
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = '00:00:00'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object DBEdit2: TDBEdit
      Left = 41
      Top = 36
      Width = 415
      Height = 27
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clSkyBlue
      DataField = 'APELIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 505
      Top = 36
      Width = 296
      Height = 27
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clSkyBlue
      DataField = 'USUARIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 600
    Width = 1192
    Height = 59
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 1
    object Shape4: TShape
      Left = 0
      Top = 0
      Width = 1192
      Height = 59
      Align = alClient
      Brush.Color = clSkyBlue
      Shape = stRoundRect
      ExplicitTop = -2
      ExplicitHeight = 61
    end
    object BitBtnNovaVenda: TSpeedButton
      Left = 28
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F1 - Nova Venda'
      Flat = True
      OnClick = BitBtnNovaVendaClick
    end
    object BitBtnCliente: TSpeedButton
      Left = 171
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F2 - Cliente'
      Flat = True
      OnClick = BitBtnClienteClick
    end
    object BitBtnProdutos: TSpeedButton
      Left = 313
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F3 - Produtos'
      Flat = True
      OnClick = BitBtnProdutosClick
    end
    object BitBtnCancelaItem: TSpeedButton
      Left = 456
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F4 - Canela Item'
      Flat = True
    end
    object BitBtnCancelaVenda: TSpeedButton
      Left = 598
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F5 - Cancela Venda'
      Flat = True
      OnClick = BitBtnCancelaVendaClick
    end
    object BitBtnFinalizaVenda: TSpeedButton
      Left = 741
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F6 - Finaliza Venda'
      Flat = True
      OnClick = BitBtnFinalizaVendaClick
    end
    object BitBtnAberturaCaixa: TSpeedButton
      Left = 883
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F7 - Caixa'
      Flat = True
      OnClick = BitBtnAberturaCaixaClick
    end
    object BitBtnSair: TSpeedButton
      Left = 1026
      Top = 17
      Width = 115
      Height = 28
      Caption = 'F8 - Sair'
      Flat = True
      OnClick = BitBtnSairClick
    end
  end
  object PanelCorpo: TPanel
    Left = 0
    Top = 71
    Width = 1192
    Height = 529
    Align = alClient
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    object PanelEsquerda: TPanel
      Left = 0
      Top = 0
      Width = 1192
      Height = 297
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 41
        Top = 1
        Width = 56
        Height = 19
        Alignment = taRightJustify
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 41
        Top = 111
        Width = 81
        Height = 19
        Alignment = taRightJustify
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 41
        Top = 57
        Width = 98
        Height = 19
        Alignment = taRightJustify
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelDesconto: TLabel
        Left = 184
        Top = 57
        Width = 65
        Height = 19
        Alignment = taRightJustify
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label4: TLabel
        Left = 42
        Top = 229
        Width = 100
        Height = 23
        Alignment = taRightJustify
        Caption = 'Total Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Image1: TImage
        Left = 369
        Top = 6
        Width = 608
        Height = 285
      end
      object edtCodProduto: TEdit
        Left = 41
        Top = 23
        Width = 282
        Height = 27
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnExit = edtCodProdutoExit
      end
      object edtQtd: TEdit
        Left = 41
        Top = 135
        Width = 128
        Height = 27
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '1'
        OnExit = edtQtdExit
        OnKeyPress = edtQtdKeyPress
      end
      object edtValor: TEdit
        Left = 41
        Top = 79
        Width = 128
        Height = 27
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        OnKeyPress = edtValorKeyPress
      end
      object edtDesconto: TEdit
        Left = 184
        Top = 79
        Width = 128
        Height = 27
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0,00'
        Visible = False
        OnKeyPress = edtDescontoKeyPress
      end
      object DBEdit4: TDBEdit
        Left = 41
        Top = 257
        Width = 128
        Height = 31
        DataField = 'VALORTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object MemoCupom: TJvMemo
        Left = 375
        Top = 9
        Width = 392
        Height = 273
        TabStop = False
        ClipboardCommands = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Visible = False
      end
    end
    object dbgProdutos: TDBGrid
      Left = 375
      Top = 9
      Width = 392
      Height = 273
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnExit = dbgProdutosExit
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Produtos'
          Width = 241
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 125
          Visible = True
        end>
    end
    object PanelGridProdutos: TPanel
      Left = 0
      Top = 297
      Width = 1192
      Height = 232
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1192
        Height = 232
        Align = alClient
        DataSource = DMVenda.dsItensTMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnExit = dbgProdutosExit
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTADOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CDBARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Visible = True
          end>
      end
    end
  end
  object ThreadDataHora: TJvThreadTimer
    OnTimer = ThreadDataHoraTimer
    Left = 951
    Top = 6
  end
  object qClientes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from clientes')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1045
    Top = 550
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 1042
    Top = 467
    object cdsClientesCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsClientesCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'd Mascote'
      FieldName = 'CDMASCOTE'
    end
    object cdsClientesNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClientesAPELIDO: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsClientesENDERECO: TStringField
      DisplayLabel = 'Edere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClientesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsClientesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsClientesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsClientesIE_RG: TStringField
      FieldName = 'IE_RG'
      Size = 10
    end
    object cdsClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsClientesTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsClientesPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsClientesLIMITE_CREDITO: TSingleField
      FieldName = 'LIMITE_CREDITO'
    end
    object cdsClientesRESTRICAO: TIntegerField
      FieldName = 'RESTRICAO'
    end
    object cdsClientesTIPO_RESTRICAO: TStringField
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1044
    Top = 509
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 1040
    Top = 414
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from produtos'
      'order by descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 988
    Top = 550
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 985
    Top = 458
    object cdsProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object cdsProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'CDFORNECEDOR'
    end
    object cdsProdutosCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'CDBARRAS'
      Size = 15
    end
    object cdsProdutosCDGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd Grupo'
      FieldName = 'CDGRUPO'
    end
    object cdsProdutosCDSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo'
      FieldName = 'CDSUBGRUPO'
    end
    object cdsProdutosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutosVALOR_CUSTO: TSingleField
      DisplayLabel = 'Valor Custo'
      FieldName = 'VALOR_CUSTO'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosVALOR_VENDA: TSingleField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VALOR_VENDA'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosVALOR_CONTABIL: TSingleField
      DisplayLabel = 'Valor Cont'#225'bil'
      FieldName = 'VALOR_CONTABIL'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosMARGEM: TSingleField
      DisplayLabel = 'Margem'
      FieldName = 'MARGEM'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutosUNID_ENTRADA: TSingleField
      DisplayLabel = 'Uni. Entrada'
      FieldName = 'UNID_ENTRADA'
    end
    object cdsProdutosUNID_SAIDA: TSingleField
      DisplayLabel = 'Un. Saida'
      FieldName = 'UNID_SAIDA'
    end
    object cdsProdutosSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
    end
    object cdsProdutosIPI: TSingleField
      FieldName = 'IPI'
    end
    object cdsProdutosICMS: TSingleField
      FieldName = 'ICMS'
    end
    object cdsProdutosCFOP: TStringField
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsProdutosSIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit Tribut'#225'ria'
      FieldName = 'SIT_TRIBUTARIA'
      Size = 10
    end
    object cdsProdutosCOMISSAO: TSingleField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
    end
    object cdsProdutosDESCONTO: TSingleField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
    end
    object cdsProdutosQTD_DESCONTO: TSingleField
      DisplayLabel = 'Qtd. Desconto'
      FieldName = 'QTD_DESCONTO'
    end
    object cdsProdutosAPLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      Size = 100
    end
    object cdsProdutosTIPO_UN_ENTRADA: TStringField
      DisplayLabel = 'Tipo Un. Entrada'
      FieldName = 'TIPO_UN_ENTRADA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosTIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo Un. Sa'#237'da'
      FieldName = 'TIPO_UN_SAIDA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosESTOQUE_QTD: TSingleField
      FieldName = 'ESTOQUE_QTD'
    end
    object cdsProdutosESTOQUE_MINIMO: TSingleField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object cdsProdutosCDCENTRO_CUSTO: TIntegerField
      FieldName = 'CDCENTRO_CUSTO'
    end
    object cdsProdutosUSO_CONSUMO: TIntegerField
      FieldName = 'USO_CONSUMO'
    end
    object cdsProdutosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 35
    end
    object cdsProdutosCDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      Size = 5
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 987
    Top = 501
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 984
    Top = 409
  end
  object qPedidos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from pedidos')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1148
    Top = 547
  end
  object dspPedidos: TDataSetProvider
    DataSet = qPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1146
    Top = 500
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidos'
    Left = 1148
    Top = 451
    object cdsPedidosCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsPedidosCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
    end
    object cdsPedidosCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
    end
    object cdsPedidosCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
    end
    object cdsPedidosDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsPedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsPedidosQTD: TSingleField
      FieldName = 'QTD'
    end
    object cdsPedidosVALOR_VENDA: TFMTBCDField
      FieldName = 'VALOR_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsPedidosSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidosDESCONTO: TSingleField
      FieldName = 'DESCONTO'
    end
    object cdsPedidosACRESCIMO: TSingleField
      FieldName = 'ACRESCIMO'
    end
    object cdsPedidosVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsPedidosNF_EMITIDA: TIntegerField
      FieldName = 'NF_EMITIDA'
    end
    object cdsPedidosCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 1146
    Top = 404
  end
  object qItens: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from pedido_itens')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1090
    Top = 546
  end
  object dspItens: TDataSetProvider
    DataSet = qItens
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1086
    Top = 499
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 1094
    Top = 455
    object cdsItensCDPEDIDO_ITENS: TIntegerField
      FieldName = 'CDPEDIDO_ITENS'
      Required = True
    end
    object cdsItensCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsItensCDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
    end
    object cdsItensVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object cdsItensQTD: TSingleField
      FieldName = 'QTD'
    end
    object cdsItensVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItensSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
    end
    object cdsItensACRESCIMO: TSingleField
      FieldName = 'ACRESCIMO'
    end
    object cdsItensCDVENDEDOR: TIntegerField
      FieldName = 'CDVENDEDOR'
    end
    object cdsItensCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 1097
    Top = 409
  end
  object PopupMenu: TPopupMenu
    TrackButton = tbLeftButton
    Left = 1149
    Top = 87
    object x1: TMenuItem
      Caption = 'Abertura de Caixa'
      OnClick = x1Click
    end
    object BoletimdeCai1: TMenuItem
      Caption = 'Boletim de Caixa'
      OnClick = BoletimdeCai1Click
    end
  end
  object qSoma: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select cc.cdconta_corrente, cc.cdcliente, cc.cdpedido, cc.data, ' +
        'cc.descricao,'
      
        '       cc.debito, cc.credito, cc.saldo, cc.cdusuario, clientes.n' +
        'ome,'
      '       clientes.apelido'
      'from conta_corrente cc'
      'join clientes on clientes.cdcliente = cc.cdcliente'
      'order by clientes.nome')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1098
    Top = 86
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select cc.cdconta_corrente, cc.cdcliente, cc.cdpedido, cc.data, ' +
        'cc.descricao,'
      
        '       cc.debito, cc.credito, cc.saldo, cc.cdusuario, clientes.n' +
        'ome,'
      '       clientes.apelido'
      'from conta_corrente cc'
      'join clientes on clientes.cdcliente = cc.cdcliente'
      'order by clientes.nome')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1026
    Top = 86
  end
end
