object PerguntaOrcamento: TPerguntaOrcamento
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Or'#231'amento]'
  ClientHeight = 430
  ClientWidth = 804
  Color = clBtnFace
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 178
    Top = 16
    Width = 449
    Height = 377
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBoxConta: TGroupBox
      Left = 0
      Top = 0
      Width = 449
      Height = 65
      Align = alTop
      Caption = 'Informe o N'#186' do Or'#231'amento:'
      TabOrder = 0
      TabStop = True
      ExplicitWidth = 338
      object Label3: TLabel
        Left = 122
        Top = 33
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Or'#231'amento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskEditCDPedido: TMaskEdit
        Left = 200
        Top = 25
        Width = 97
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
    end
    object RadioGroupData: TRadioGroup
      Left = 0
      Top = 65
      Width = 449
      Height = 82
      Align = alTop
      Caption = 'Op'#231#245'es de Data:'
      ItemIndex = 0
      Items.Strings = (
        'Usar Data da Gera'#231#227'o do Or'#231'amento'
        'Usar Data Atual')
      TabOrder = 1
      ExplicitTop = 59
    end
    object GroupBoxBotoes: TGroupBox
      Left = 0
      Top = 330
      Width = 449
      Height = 47
      Align = alBottom
      TabOrder = 2
      TabStop = True
      ExplicitTop = 250
      ExplicitWidth = 338
      object BitBtnFechar: TJvXPButton
        Left = 250
        Top = 16
        Width = 96
        Height = 23
        Caption = '&Fechar'
        TabOrder = 0
        ModalResult = 2
      end
      object BitBtnOK: TJvXPButton
        Left = 129
        Top = 16
        Width = 96
        Height = 23
        Caption = '&OK'
        TabOrder = 1
        ModalResult = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 147
      Width = 449
      Height = 70
      Align = alTop
      Caption = 'Prazo Validade'
      TabOrder = 3
      object Label1: TLabel
        Left = 103
        Top = 33
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Prazo de Validade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskeditValidade: TComboBox
        Left = 198
        Top = 25
        Width = 57
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15')
      end
    end
  end
end
