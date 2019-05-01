object TelaConfigAdministrativa: TTelaConfigAdministrativa
  Left = 0
  Top = 0
  Caption = 'Onzenet - Software House'
  ClientHeight = 393
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 360
    Width = 888
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtnIncluir: TBitBtn
      Left = 5
      Top = 3
      Width = 86
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BitBtnIncluirClick
    end
    object BitBtnExcluir: TBitBtn
      Left = 98
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtnExcluirClick
    end
    object BitBtnGravar: TBitBtn
      Left = 192
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = BitBtnGravarClick
    end
    object BitBtnAlterar: TBitBtn
      Left = 283
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Alterar'
      TabOrder = 3
      OnClick = BitBtnAlterarClick
    end
    object Cancelar: TBitBtn
      Left = 376
      Top = 3
      Width = 86
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = CancelarClick
    end
    object BitBtnSair: TBitBtn
      Left = 469
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Sair'
      TabOrder = 5
      OnClick = BitBtnSairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 18
    Top = 23
    Width = 655
    Height = 336
    Caption = 'Ponto de Venda'
    TabOrder = 1
    object Bevel1: TBevel
      Left = 21
      Top = 62
      Width = 195
      Height = 232
    end
    object ImageVenda: TImage
      Left = 30
      Top = 70
      Width = 177
      Height = 216
      Center = True
      ParentShowHint = False
      Proportional = True
      ShowHint = False
    end
    object Label1: TLabel
      Left = 155
      Top = 38
      Width = 62
      Height = 13
      Caption = '( 354 X 377 )'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 18
      Top = 36
      Width = 130
      Height = 17
      Caption = 'Mostrar Imagem Venda'
      DataField = 'MOSTRAR_IMAGEM_VENDA'
      DataSource = dsConfAdm
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object BitBtnCarregaLogo: TBitBtn
      Left = 19
      Top = 298
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 1
      OnClick = BitBtnCarregaLogoClick
    end
    object BitBtnExcluiLogo: TBitBtn
      Left = 143
      Top = 298
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object DBCheckBox2: TDBCheckBox
      Left = 274
      Top = 36
      Width = 244
      Height = 17
      Caption = 'Usar Desconto na Venda'
      DataField = 'MOSTRAR_DESCONTO_VENDA'
      DataSource = dsConfAdm
      TabOrder = 3
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 274
      Top = 68
      Width = 244
      Height = 17
      Caption = 'Pular o Campo Valor Unit'#225'rio'
      DataField = 'PULAR_VALOR_UNITARIO_VENDA'
      DataSource = dsConfAdm
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 86
    Top = 102
  end
  object dsConfAdm: TDataSource
    DataSet = cdsConfAdm
    Left = 730
    Top = 52
  end
  object cdsConfAdm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfAdm'
    AfterScroll = cdsConfAdmAfterScroll
    Left = 733
    Top = 102
  end
  object dspConfAdm: TDataSetProvider
    DataSet = qConfAdm
    Left = 733
    Top = 153
  end
  object qConfAdm: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_gerais')
    SQLConnection = DMPrincipal.SQLCon
    Left = 737
    Top = 201
  end
end
