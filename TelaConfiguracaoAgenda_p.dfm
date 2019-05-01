object TelaConfiguracaoAgenda: TTelaConfiguracaoAgenda
  Left = 0
  Top = 0
  Caption = 
    'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Configura'#231#227'o ' +
    'de Agenda]'
  ClientHeight = 414
  ClientWidth = 967
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPesquisa: TPanel
    Left = 0
    Top = 304
    Width = 967
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -110
    ExplicitWidth = 116
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
        OnClick = BitBtnGeralClick
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 379
    Width = 967
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = -35
    ExplicitWidth = 116
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
  object PanelCampos: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 304
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 116
    object Label1: TLabel
      Left = 40
      Top = 8
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
    object Label2: TLabel
      Left = 40
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Qtd. Campos'
    end
    object Label3: TLabel
      Left = 130
      Top = 59
      Width = 71
      Height = 13
      Caption = 'Campo 1 (Fxo)'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 343
      Top = 59
      Width = 73
      Height = 13
      Caption = 'Campo 2 (Fixo)'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 564
      Top = 59
      Width = 42
      Height = 13
      Caption = 'Campo 3'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 130
      Top = 101
      Width = 42
      Height = 13
      Caption = 'Campo 4'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 343
      Top = 101
      Width = 42
      Height = 13
      Caption = 'Campo 5'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 564
      Top = 101
      Width = 42
      Height = 13
      Caption = 'Campo 6'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 40
      Top = 152
      Width = 65
      Height = 13
      Caption = 'Hor'#225'rio Inicial'
      FocusControl = DBEdit2
    end
    object Label10: TLabel
      Left = 161
      Top = 152
      Width = 60
      Height = 13
      Caption = 'Hor'#225'rio Final'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 280
      Top = 152
      Width = 44
      Height = 13
      Caption = 'Intervalo'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 24
      Width = 72
      Height = 21
      TabStop = False
      DataField = 'CODIGO'
      DataSource = dsCA
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 130
      Top = 75
      Width = 199
      Height = 21
      TabStop = False
      DataField = 'NOME_CAMPO1'
      DataSource = dsCA
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 343
      Top = 75
      Width = 212
      Height = 21
      TabStop = False
      DataField = 'NOME_CAMPO2'
      DataSource = dsCA
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 564
      Top = 75
      Width = 199
      Height = 21
      DataField = 'NOME_CAMPO3'
      DataSource = dsCA
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 130
      Top = 117
      Width = 199
      Height = 21
      DataField = 'NOME_CAMPO4'
      DataSource = dsCA
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 343
      Top = 117
      Width = 212
      Height = 21
      DataField = 'NOME_CAMPO5'
      DataSource = dsCA
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 564
      Top = 117
      Width = 199
      Height = 21
      DataField = 'NOME_CAMPO6'
      DataSource = dsCA
      TabOrder = 7
    end
    object DBComboBox1: TDBComboBox
      Left = 40
      Top = 75
      Width = 71
      Height = 21
      DataField = 'QTD_CAMPOS'
      DataSource = dsCA
      Items.Strings = (
        '3'
        '4'
        '5'
        '6')
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 168
      Width = 110
      Height = 21
      DataField = 'HORARIO_INICIO'
      DataSource = dsCA
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 161
      Top = 168
      Width = 110
      Height = 21
      DataField = 'HORARIO_FINAL'
      DataSource = dsCA
      TabOrder = 9
    end
    object DBEdit10: TDBEdit
      Left = 280
      Top = 168
      Width = 110
      Height = 21
      DataField = 'INTERVALO'
      DataSource = dsCA
      TabOrder = 10
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 195
      Width = 967
      Height = 109
      Align = alBottom
      DataSource = dsCA
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_CAMPOS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CAMPO6'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORARIO_INICIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORARIO_FINAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADASTRADO_POR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADASTRADO_EM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INTERVALO'
          Visible = True
        end>
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
    ProviderName = 'dspCA'
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
end
