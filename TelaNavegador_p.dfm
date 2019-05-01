object TelaNavegador: TTelaNavegador
  Left = 224
  Top = 98
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Navega'#231#227'o]'
  ClientHeight = 468
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 33
    Align = alTop
    TabOrder = 0
    object MaskEdit1: TMaskEdit
      Left = 7
      Top = 7
      Width = 774
      Height = 21
      TabOrder = 0
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 33
    Width = 912
    Height = 402
    Align = alClient
    TabOrder = 1
    ExplicitTop = 31
    ControlData = {
      4C000000425E00008C2900000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel2: TPanel
    Left = 0
    Top = 435
    Width = 912
    Height = 33
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 566
      Top = 4
      Width = 124
      Height = 27
      Caption = 'Fechar'
      DoubleBuffered = True
      Kind = bkClose
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 176
      Top = 4
      Width = 124
      Height = 27
      Caption = 'Levar para o cadastro'
      DoubleBuffered = True
      Enabled = False
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
end
