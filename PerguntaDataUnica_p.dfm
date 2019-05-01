object PerguntaDataUnica: TPerguntaDataUnica
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Data]'
  ClientHeight = 358
  ClientWidth = 599
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 120
    Top = 32
    Width = 338
    Height = 246
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBoxData: TGroupBox
      Left = 0
      Top = 0
      Width = 338
      Height = 90
      Align = alTop
      Caption = 'Informe a Data:'
      TabOrder = 0
      TabStop = True
      object Label1: TLabel
        Left = 56
        Top = 48
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
      object Maskedit1: TJvDateEdit
        Left = 122
        Top = 40
        Width = 121
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 0
        OnExit = Maskedit1Exit
      end
    end
  end
  object GroupBoxBotoes: TGroupBox
    Left = 120
    Top = 284
    Width = 338
    Height = 47
    TabOrder = 1
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
    end
  end
end
