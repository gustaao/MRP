object vendas2: Tvendas2
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Vendas]'
  ClientHeight = 659
  ClientWidth = 1217
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
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
    Width = 1217
    Height = 69
    Align = alTop
    BevelOuter = bvLowered
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1217
      69)
    object Label3: TLabel
      Left = 23
      Top = 12
      Width = 44
      Height = 16
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 505
      Top = 12
      Width = 54
      Height = 16
      Caption = 'Operador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelData: TLabel
      Left = 797
      Top = 4
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
      Left = 814
      Top = 35
      Width = 80
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = '00:00:00'
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LabelOperador: TLabel
      Left = 569
      Top = 9
      Width = 67
      Height = 19
      Caption = 'Operador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 43
      Width = 60
      Height = 16
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 86
      Top = 11
      Width = 415
      Height = 22
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clGradientActiveCaption
      DataField = 'CLIENTE'
      DataSource = DMVenda.dsPedidosTmp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 86
      Top = 42
      Width = 415
      Height = 22
      TabStop = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clGradientActiveCaption
      DataField = 'VENDEDOR'
      DataSource = DMVenda.dsPedidosTmp
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
    Width = 1217
    Height = 59
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtnNovaVenda: TSpeedButton
      Left = 11
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F2 - Nova Venda'
      Flat = True
      OnClick = BitBtnNovaVendaClick
    end
    object BitBtnCliente: TSpeedButton
      Left = 263
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F4 - Cliente'
      Flat = True
      OnClick = BitBtnClienteClick
    end
    object BitBtnProdutos: TSpeedButton
      Left = 390
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F5 - Produtos'
      Flat = True
      OnClick = BitBtnProdutosClick
    end
    object BitBtnCancelaItem: TSpeedButton
      Left = 516
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F6 - Canela Item'
      Flat = True
      OnClick = BitBtnCancelaItemClick
    end
    object BitBtnCancelaVenda: TSpeedButton
      Left = 642
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F7 - Cancela Venda'
      Flat = True
      OnClick = BitBtnCancelaVendaClick
    end
    object BitBtnFinalizaVenda: TSpeedButton
      Left = 769
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F8 - Finaliza Venda'
      Flat = True
      OnClick = BitBtnFinalizaVendaClick
    end
    object BitBtnSair: TSpeedButton
      Left = 1021
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F10 - Sair'
      Flat = True
      OnClick = BitBtnSairClick
    end
    object BitBtnVendedores: TSpeedButton
      Left = 137
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F3 - Vendedores'
      Flat = True
      OnClick = BitBtnVendedoresClick
    end
    object BitBtnCaixa: TSpeedButton
      Left = 895
      Top = 11
      Width = 115
      Height = 28
      Caption = 'F9 - Caixa'
      Flat = True
      PopupMenu = PopupMenu
      OnClick = BitBtnCaixaClick
    end
  end
  object PanelCorpo: TPanel
    Left = 0
    Top = 69
    Width = 1217
    Height = 531
    Align = alClient
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 2
    object PanelEsquerda: TPanel
      Left = 0
      Top = 0
      Width = 1217
      Height = 251
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Image1: TImage
        Left = 425
        Top = 0
        Width = 792
        Height = 251
        Align = alClient
        ExplicitLeft = 424
        ExplicitTop = 40
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 251
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 40
        ExplicitTop = -16
        object Label1: TLabel
          Left = 48
          Top = 49
          Width = 62
          Height = 19
          Alignment = taRightJustify
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 23
          Top = 128
          Width = 87
          Height = 19
          Alignment = taRightJustify
          Caption = 'Quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 6
          Top = 91
          Width = 104
          Height = 19
          Alignment = taRightJustify
          Caption = 'Valor Unit'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelDesconto: TLabel
          Left = 235
          Top = 91
          Width = 71
          Height = 19
          Alignment = taRightJustify
          Caption = 'Desconto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label4: TLabel
          Left = 19
          Top = 165
          Width = 91
          Height = 19
          Alignment = taRightJustify
          Caption = 'Total Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelOF: TLabel
          Left = 28
          Top = 11
          Width = 82
          Height = 19
          Alignment = taRightJustify
          Caption = 'Conta P.N.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object edtCodProduto: TEdit
          Left = 111
          Top = 44
          Width = 310
          Height = 27
          Color = clHighlightText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = edtCodProdutoEnter
          OnExit = edtCodProdutoExit
        end
        object edtQtd: TEdit
          Left = 111
          Top = 120
          Width = 113
          Height = 27
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '1'
          OnExit = edtQtdExit
          OnKeyPress = edtQtdKeyPress
        end
        object edtValor: TEdit
          Left = 111
          Top = 83
          Width = 113
          Height = 27
          TabStop = False
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
          OnExit = edtValorExit
          OnKeyPress = edtValorKeyPress
        end
        object edtDesconto: TEdit
          Left = 311
          Top = 83
          Width = 110
          Height = 27
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '0,00'
          Visible = False
          OnExit = edtDescontoExit
          OnKeyPress = edtDescontoKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 111
          Top = 158
          Width = 113
          Height = 27
          DataField = 'VALOR_TOTAL'
          DataSource = DMVenda.dsPedidosTmp
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object MaskEditOF: TMaskEdit
          Left = 111
          Top = 6
          Width = 132
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnExit = MaskEditOFExit
          OnKeyPress = MaskEditOFKeyPress
        end
        object MaskEditConta: TMaskEdit
          Left = 246
          Top = 6
          Width = 175
          Height = 24
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Visible = False
        end
      end
      object dbgProdutos: TDBGrid
        Left = 425
        Top = 0
        Width = 792
        Height = 251
        Align = alClient
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
            FieldName = 'CDINTERNO'
            Width = 89
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
            FieldName = 'MARCA'
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDOR'
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
          end
          item
            Expanded = False
            FieldName = 'SERVICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APLICACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE_QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE_MINIMO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Visible = True
          end>
      end
    end
    object PanelGridProdutos: TPanel
      Left = 0
      Top = 257
      Width = 1192
      Height = 233
      BevelOuter = bvNone
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1192
        Height = 233
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
            Width = 64
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
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object qClientes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select clientes.cdpessoa,'
      '       clientes.tipo_pessoa,'
      '       clientes.nome,'
      '       clientes.apelido,'
      '       clientes.endereco,'
      '       clientes.numero,'
      '       clientes.bairro,'
      '       Clientes.cidade,'
      '       Clientes.cep,'
      '       clientes.uf,'
      '       clientes.ie_rg,'
      '       clientes.cod_ibge,'
      '       clientes.cpf_cnpj,'
      '       clientes.cod_pais,'
      '       clientes.limite_credito,'
      '       clientes.cdenquadramento_imposto'
      'from clientes'
      ''
      'union'
      ''
      'select fornecedores.cdpessoa,'
      '       fornecedores.tipo_pessoa,'
      '       fornecedores.nome,'
      '       fornecedores.apelido,'
      '       fornecedores.endereco,'
      '       fornecedores.numero,'
      '       fornecedores.bairro,'
      '       fornecedores.cidade,'
      '       fornecedores.cep,'
      '       fornecedores.uf,'
      '       fornecedores.rg_ie as ie_rg,'
      '       fornecedores.cod_ibge,'
      '       fornecedores.cpf_cnpj,'
      '       fornecedores.cod_pais,'
      '       fornecedores.limite_credito,'
      '       fornecedores.cdenquadramento_imposto'
      'from fornecedores'
      ''
      'union'
      ''
      'select transportadores.cdpessoa,'
      '       transportadores.tipo_pessoa,'
      '       transportadores.nome,'
      '       transportadores.apelido,'
      '       transportadores.endereco,'
      '       transportadores.numero,'
      '       transportadores.bairro,'
      '       transportadores.cidade,'
      '       transportadores.cep,'
      '       transportadores.uf,'
      '       transportadores.rg_ie as ie_rg,'
      '       transportadores.cod_ibge,'
      '       transportadores.cpf_cnpj,'
      '       transportadores.cod_pais,'
      '       transportadores.limite_credito,'
      '       transportadores.cdenquadramento_imposto'
      'from transportadores')
    SQLConnection = DMPrincipal.SQLCon
    Left = 997
    Top = 507
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 997
    Top = 406
    object cdsClientesCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'CDPESSOA'
    end
    object cdsClientesTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo Pessoa:'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsClientesNOME: TStringField
      DisplayLabel = 'Cliente:'
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
    object cdsClientesCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE:'
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object cdsClientesCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ:'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsClientesCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd. Pa'#237's:'
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsClientesLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito:'
      FieldName = 'LIMITE_CREDITO'
    end
    object cdsClientesCDENQUADRAMENTO_IMPOSTO: TIntegerField
      DisplayLabel = 'C'#243'd. Enq. Imposto:'
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 996
    Top = 456
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 1001
    Top = 353
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select produtos.cdproduto,'
      '       produtos.cdfornecedor,'
      '       fornecedores.nome as fornecedor,'
      '       produtos.cdinterno,'
      '       produtos.cdbarras,'
      '       produtos.cdgrupo,'
      '       grupo.descricao as grupo,'
      '       produtos.cdsubgrupo,'
      '       subgrupos.descricao as subgrupo,'
      '       produtos.descricao,'
      '       produtos.valor_custo,'
      '       produtos.valor_venda,'
      '       produtos.valor_contabil,'
      '       produtos.margem,'
      '       produtos.unid_entrada,'
      '       produtos.unid_saida,'
      '       produtos.servico,'
      '       produtos.ipi,'
      '       produtos.icms,'
      '       produtos.cfop,'
      '       produtos.sit_tributaria,'
      '       produtos.comissao,'
      '       produtos.desconto,'
      '       produtos.qtd_desconto,'
      '       produtos.aplicacao,'
      '       produtos.tipo_un_entrada,'
      '       produtos.tipo_un_saida,'
      '       produtos.estoque_qtd,'
      '       produtos.estoque_minimo,'
      '       produtos.cdcentro_custo,'
      '       produtos.uso_consumo,'
      '       produtos.marca                         ,'
      '       produtos.modelo,'
      '       produtos.cdplano_contas,'
      '       plano_contas.conta,'
      '       produtos.codigost'
      'from produtos'
      'left join grupo on grupo.cdgrupo = produtos.cdgrupo'
      
        'left join subgrupos on subgrupos.cdsubgrupo = produtos.cdsubgrup' +
        'o'
      
        'left join plano_contas on plano_contas.cdplano_contas = produtos' +
        '.cdplano_contas'
      
        'left Join fornecedores on fornecedores.cdfornecedor = produtos.c' +
        'dfornecedor'
      'order by descricao')
    SQLConnection = DMPrincipal.SQLCon
    Left = 930
    Top = 507
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 930
    Top = 406
    object cdsProdutosCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPRODUTO'
      Required = True
    end
    object cdsProdutosCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor:'
      FieldName = 'CDFORNECEDOR'
    end
    object cdsProdutosFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor:'
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object cdsProdutosCDINTERNO: TStringField
      DisplayLabel = 'C'#243'd. Interno:'
      FieldName = 'CDINTERNO'
      Size = 8
    end
    object cdsProdutosCDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras:'
      FieldName = 'CDBARRAS'
      Size = 15
    end
    object cdsProdutosCDGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo:'
      FieldName = 'CDGRUPO'
    end
    object cdsProdutosGRUPO: TStringField
      DisplayLabel = 'Grupo:'
      FieldName = 'GRUPO'
      Size = 50
    end
    object cdsProdutosCDSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo:'
      FieldName = 'CDSUBGRUPO'
    end
    object cdsProdutosSUBGRUPO: TStringField
      DisplayLabel = 'SubGrupo:'
      FieldName = 'SUBGRUPO'
      Size = 50
    end
    object cdsProdutosDESCRICAO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutosVALOR_CUSTO: TFloatField
      DisplayLabel = 'Valor Custo:'
      FieldName = 'VALOR_CUSTO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsProdutosVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsProdutosVALOR_CONTABIL: TFloatField
      DisplayLabel = 'Valor Cont'#225'bil'
      FieldName = 'VALOR_CONTABIL'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsProdutosMARGEM: TFloatField
      DisplayLabel = 'Magem:'
      FieldName = 'MARGEM'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsProdutosUNID_ENTRADA: TFloatField
      DisplayLabel = 'Un. Entrada:'
      FieldName = 'UNID_ENTRADA'
    end
    object cdsProdutosUNID_SAIDA: TFloatField
      DisplayLabel = 'Und. Saida:'
      FieldName = 'UNID_SAIDA'
    end
    object cdsProdutosSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o:'
      FieldName = 'SERVICO'
    end
    object cdsProdutosIPI: TFloatField
      DisplayLabel = 'IPI:'
      FieldName = 'IPI'
    end
    object cdsProdutosICMS: TFloatField
      DisplayLabel = 'ICMS:'
      FieldName = 'ICMS'
    end
    object cdsProdutosCFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      FixedChar = True
      Size = 4
    end
    object cdsProdutosSIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria:'
      FieldName = 'SIT_TRIBUTARIA'
      Size = 10
    end
    object cdsProdutosCOMISSAO: TFloatField
      DisplayLabel = 'Comiss'#227'o:'
      FieldName = 'COMISSAO'
    end
    object cdsProdutosDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
    end
    object cdsProdutosQTD_DESCONTO: TFloatField
      DisplayLabel = 'Qtd. Desconto:'
      FieldName = 'QTD_DESCONTO'
    end
    object cdsProdutosAPLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o:'
      FieldName = 'APLICACAO'
      Size = 500
    end
    object cdsProdutosTIPO_UN_ENTRADA: TStringField
      DisplayLabel = 'Tipo Un. Entrada:'
      FieldName = 'TIPO_UN_ENTRADA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosTIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo Un. Sa'#237'da:'
      FieldName = 'TIPO_UN_SAIDA'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosESTOQUE_QTD: TFloatField
      DisplayLabel = 'Qtd. Estoque:'
      FieldName = 'ESTOQUE_QTD'
    end
    object cdsProdutosESTOQUE_MINIMO: TFloatField
      DisplayLabel = 'Estoque M'#237'nimo:'
      FieldName = 'ESTOQUE_MINIMO'
    end
    object cdsProdutosCDCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C'#243'd. Centro de Custo:'
      FieldName = 'CDCENTRO_CUSTO'
    end
    object cdsProdutosUSO_CONSUMO: TIntegerField
      DisplayLabel = 'Uso e Consumo:'
      FieldName = 'USO_CONSUMO'
    end
    object cdsProdutosMARCA: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'MARCA'
      Size = 35
    end
    object cdsProdutosMODELO: TStringField
      DisplayLabel = 'Modelo:'
      FieldName = 'MODELO'
      Size = 35
    end
    object cdsProdutosCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Contas:'
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsProdutosCONTA: TStringField
      DisplayLabel = 'Conta:'
      FieldName = 'CONTA'
      Size = 30
    end
    object cdsProdutosCODIGOST: TStringField
      DisplayLabel = 'C'#243'd. Sit. Tribut'#225'ria:'
      FieldName = 'CODIGOST'
      FixedChar = True
      Size = 3
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 929
    Top = 456
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 933
    Top = 353
  end
  object qPedidos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from pedidos')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1132
    Top = 507
  end
  object dspPedidos: TDataSetProvider
    DataSet = qPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1130
    Top = 456
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidos'
    Left = 1132
    Top = 406
    object cdsPedidosCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsPedidosCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
    end
    object cdsPedidosCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio:'
      FieldName = 'CDUSUARIO'
    end
    object cdsPedidosCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
    end
    object cdsPedidosDATA: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA'
      EditMask = '00/00/0000;1;_'
    end
    object cdsPedidosHORA: TTimeField
      DisplayLabel = 'Hora:'
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsPedidosQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosNF_EMITIDA: TIntegerField
      DisplayLabel = 'NFe Emitida:'
      FieldName = 'NF_EMITIDA'
    end
    object cdsPedidosCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento:'
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPedidosCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'd. Plano Contas:'
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsPedidosTIPO: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidosVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosVALOR_PAGO: TFloatField
      DisplayLabel = 'Valor Pago:'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsPedidosCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa:'
      FieldName = 'CDPESSOA'
    end
    object cdsPedidosDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object cdsPedidosDIAS_AVISO: TIntegerField
      FieldName = 'DIAS_AVISO'
    end
    object cdsPedidosDESCARTAR_AVISO: TIntegerField
      FieldName = 'DESCARTAR_AVISO'
    end
    object cdsPedidosRESULTADO: TIntegerField
      FieldName = 'RESULTADO'
    end
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 1138
    Top = 353
  end
  object qItens: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from pedido_itens')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1064
    Top = 507
  end
  object dspItens: TDataSetProvider
    DataSet = qItens
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1063
    Top = 456
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 1064
    Top = 406
    object cdsItensCDPEDIDO_ITENS: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPEDIDO_ITENS'
      Required = True
    end
    object cdsItensCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsItensCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
    end
    object cdsItensVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensSUBTOTAL: TFMTBCDField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,###,#0.00'
    end
    object cdsItensCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
    end
    object cdsItensCONTADOR: TIntegerField
      DisplayLabel = 'Contador:'
      FieldName = 'CONTADOR'
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 1069
    Top = 353
  end
  object PopupMenu: TPopupMenu
    TrackButton = tbLeftButton
    Left = 1149
    Top = 87
    object x1: TMenuItem
      Caption = 'Caixa'
      OnClick = x1Click
    end
    object BoletimdeCai1: TMenuItem
      Caption = 'Boletim de Caixa'
      OnClick = BoletimdeCai1Click
    end
    object BoletimdeCaixaSemGrfico1: TMenuItem
      Caption = 'Boletim de Caixa (Sem Gr'#225'fico)'
      OnClick = BoletimdeCaixaSemGrfico1Click
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
  object qPlContas: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from plano_contas')
    SQLConnection = DMPrincipal.SQLCon
    Left = 863
    Top = 507
  end
  object dspPlContas: TDataSetProvider
    DataSet = qPlContas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 862
    Top = 456
  end
  object cdsPlContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlContas'
    Left = 863
    Top = 406
    object cdsPlContasCDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPLANO_CONTAS'
      Required = True
    end
    object cdsPlContasCONTA: TStringField
      DisplayLabel = 'C'#243'd. Cont'#225'bil:'
      FieldName = 'CONTA'
      EditMask = '000.00.00;1;_'
      Size = 10
    end
    object cdsPlContasDESCRICAO_CONTA: TStringField
      DisplayLabel = 'Conta:'
      FieldName = 'DESCRICAO_CONTA'
      Size = 50
    end
    object cdsPlContasCONTA_DEBITO: TIntegerField
      DisplayLabel = 'Conta D'#233'bito:'
      FieldName = 'CONTA_DEBITO'
    end
    object cdsPlContasCONTA_CREDITO: TIntegerField
      DisplayLabel = 'Conta Cr'#233'dito:'
      FieldName = 'CONTA_CREDITO'
    end
    object cdsPlContasACEITA_LANCAMENTO: TIntegerField
      DisplayLabel = 'Aceita Lan'#231'amento:'
      FieldName = 'ACEITA_LANCAMENTO'
    end
    object cdsPlContasATIVA: TIntegerField
      DisplayLabel = 'Ativa:'
      FieldName = 'ATIVA'
    end
    object cdsPlContasCDCENTROCUSTO: TIntegerField
      DisplayLabel = 'Centro Custo:'
      FieldName = 'CDCENTROCUSTO'
    end
    object cdsPlContasCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio(Cadastro):'
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsPlContasCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsPlContasALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio(Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsPlContasALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsPlContasCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
    object cdsPlContasCODIGO_EXTENDIDO: TStringField
      FieldName = 'CODIGO_EXTENDIDO'
      Size = 35
    end
  end
  object dsPlcontas: TDataSource
    DataSet = cdsPlContas
    Left = 865
    Top = 353
  end
  object qOpt: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdproduto'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from calendario_negocios'
      'where calendario_negocios.cdproduto = :cdproduto')
    SQLConnection = DMPrincipal.SQLCon
    Left = 796
    Top = 507
  end
  object dspOpt: TDataSetProvider
    DataSet = qOpt
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 795
    Top = 456
  end
  object cdsOpt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOpt'
    Left = 796
    Top = 406
    object cdsOptCDCALENDARIO_NEGOCIOS: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCALENDARIO_NEGOCIOS'
      Required = True
    end
    object cdsOptDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsOptPRAZO: TIntegerField
      DisplayLabel = 'Prazo:'
      FieldName = 'PRAZO'
    end
    object cdsOptOBS: TBlobField
      DisplayLabel = 'Obs.:'
      FieldName = 'OBS'
      Size = 1
    end
    object cdsOptPRAZO_AVISO: TIntegerField
      DisplayLabel = 'Prazo Aviso:'
      FieldName = 'PRAZO_AVISO'
    end
    object cdsOptCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
    end
    object cdsOptCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Cadastro):'
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsOptCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsOptALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsOptALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      EditMask = '00/00/0000;1;_'
    end
  end
  object dsOpt: TDataSource
    DataSet = cdsOpt
    Left = 797
    Top = 353
  end
  object qNeg: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from negocios')
    SQLConnection = DMPrincipal.SQLCon
    Left = 729
    Top = 507
  end
  object dspNeg: TDataSetProvider
    DataSet = qNeg
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 729
    Top = 456
  end
  object cdsNeg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNeg'
    Left = 729
    Top = 406
    object cdsNegCDNEGOCIO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDNEGOCIO'
      Required = True
    end
    object cdsNegCDCALENDARIO_NEGOCIOS: TIntegerField
      DisplayLabel = 'C'#243'd. Calend'#225'rio:'
      FieldName = 'CDCALENDARIO_NEGOCIOS'
    end
    object cdsNegCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
    end
    object cdsNegCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Mascote:'
      FieldName = 'CDMASCOTE'
    end
    object cdsNegCANCELAR_AVISO: TIntegerField
      DisplayLabel = 'Cancelar Aviso:'
      FieldName = 'CANCELAR_AVISO'
    end
    object cdsNegCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
    end
    object cdsNegDATA_NEGOCIO: TDateField
      DisplayLabel = 'Data Neg'#243'cio:'
      FieldName = 'DATA_NEGOCIO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsNegDATA_AVISO: TDateField
      DisplayLabel = 'Data Aviso:'
      FieldName = 'DATA_AVISO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsNegCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'CDPEDIDO'
    end
  end
  object dsNeg: TDataSource
    DataSet = cdsNeg
    Left = 729
    Top = 353
  end
  object ThreadDataHora: TJvThreadTimer
    OnTimer = ThreadDataHoraTimer
    Left = 976
    Top = 24
  end
end
