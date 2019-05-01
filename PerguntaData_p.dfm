object PerguntaData: TPerguntaData
  Left = 379
  Top = 78
  BorderIcons = [biSystemMenu]
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Per'#237'odo]'
  ClientHeight = 402
  ClientWidth = 724
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxBotoes: TGroupBox
    Left = 184
    Top = 324
    Width = 338
    Height = 47
    TabOrder = 0
    TabStop = True
    object BitBtnFechar: TJvXPButton
      Left = 178
      Top = 16
      Width = 96
      Height = 23
      Caption = '&Fechar'
      TabOrder = 0
      ModalResult = 2
      OnClick = BitBtnFecharClick
    end
    object BitBtnOK: TJvXPButton
      Left = 57
      Top = 16
      Width = 96
      Height = 23
      Caption = '&OK'
      Enabled = False
      TabOrder = 1
      Default = True
      ModalResult = 1
      OnClick = BitBtnOKClick
    end
  end
  object JvNavPanelHeader2: TJvNavPanelHeader
    Left = 0
    Top = 383
    Width = 724
    Height = 19
    Align = alBottom
    Caption = 'F1 ==> Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ImageIndex = 0
  end
  object Panel1: TPanel
    Left = 184
    Top = 8
    Width = 338
    Height = 313
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBoxData: TGroupBox
      Left = 0
      Top = 0
      Width = 338
      Height = 90
      Align = alTop
      Caption = 'Informe o Per'#237'odo:'
      TabOrder = 0
      TabStop = True
      object Label1: TLabel
        Left = 56
        Top = 32
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 61
        Top = 65
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Maskedit1: TJvDateEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
        OnExit = Maskedit1Exit
      end
      object Maskedit2: TJvDateEdit
        Left = 120
        Top = 57
        Width = 121
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 1
        OnExit = Maskedit2Exit
      end
    end
    object GroupBoxConta: TGroupBox
      Left = 0
      Top = 155
      Width = 338
      Height = 65
      Align = alTop
      Caption = 'Informe a Conta:'
      TabOrder = 1
      TabStop = True
      Visible = False
      object Label3: TLabel
        Left = 81
        Top = 33
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskEditConta: TMaskEdit
        Left = 120
        Top = 25
        Width = 121
        Height = 24
        EditMask = '!999.99.99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 0
        Text = '   .  .  '
        OnExit = MaskEditContaExit
      end
    end
    object GroupBoxValor: TGroupBox
      Left = 0
      Top = 220
      Width = 338
      Height = 83
      Align = alTop
      Caption = 'Informe o Valor Inicial:'
      TabOrder = 2
      TabStop = True
      Visible = False
      object Label4: TLabel
        Left = 31
        Top = 33
        Width = 81
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor Dispon'#237'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskEditValor: TMaskEdit
        Left = 120
        Top = 25
        Width = 121
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBoxSabDom: TCheckBox
        Left = 122
        Top = 60
        Width = 175
        Height = 17
        Caption = 'Suprimir Sabado/Domingo'
        TabOrder = 1
      end
    end
    object GroupBoxItem: TGroupBox
      Left = 0
      Top = 90
      Width = 338
      Height = 65
      Align = alTop
      Caption = 'Informe o C'#243'digo Interno do '#205'tem:'
      TabOrder = 3
      TabStop = True
      Visible = False
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo Interno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskEditItem: TMaskEdit
        Left = 86
        Top = 25
        Width = 69
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = MaskEditItemExit
      end
      object MaskEditDescricao: TMaskEdit
        Left = 158
        Top = 25
        Width = 172
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = MaskEditContaExit
      end
    end
  end
end
