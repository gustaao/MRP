object PerguntaMesAno: TPerguntaMesAno
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [M'#234's e Ano]'
  ClientHeight = 358
  ClientWidth = 599
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 120
    Top = 65
    Width = 338
    Height = 144
    Caption = 'Selecione o M'#234's e Ano desejado:'
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 43
      Width = 23
      Height = 13
      Caption = 'M'#234's:'
    end
    object Label2: TLabel
      Left = 28
      Top = 74
      Width = 23
      Height = 13
      Caption = 'Ano:'
    end
    object cbMes: TComboBox
      Left = 57
      Top = 35
      Width = 242
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'Selecione o M'#234's Desejado'
      Items.Strings = (
        'Selecione o M'#234's Desejado'
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cbAno: TComboBox
      Left = 57
      Top = 66
      Width = 101
      Height = 21
      TabOrder = 1
      Text = 'Selecione o Ano Desejado'
      OnExit = cbAnoExit
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
