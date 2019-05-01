object TelaRecebeNFVencimento: TTelaRecebeNFVencimento
  Left = 288
  Top = 27
  BorderIcons = []
  Caption = 'MRP - Confirme a data dos vencimentos'
  ClientHeight = 589
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 633
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Desdobramento Financeiro (Contas a Pagar)'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 251
  end
  object Shape1: TShape
    Left = 280
    Top = 33
    Width = 7
    Height = 403
    Brush.Color = clYellow
    Pen.Color = clYellow
  end
  object GroupBoxOK: TGroupBox
    Left = 0
    Top = 527
    Width = 633
    Height = 62
    Align = alBottom
    TabOrder = 3
    TabStop = True
    object OKBtn: TButton
      Left = 150
      Top = 22
      Width = 76
      Height = 24
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = OKBtnClick
    end
    object CancelBtn: TButton
      Left = 355
      Top = 22
      Width = 75
      Height = 24
      Cancel = True
      Caption = 'Cancela'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object GroupBoxImpostos: TGroupBox
    Left = 305
    Top = 13
    Width = 328
    Height = 483
    Align = alRight
    Caption = 'Reten'#231#245'es de impostos:'
    TabOrder = 1
    OnExit = GroupBoxImpostosExit
    object LabelImpostoDescr1: TLabel
      Left = 73
      Top = 87
      Width = 43
      Height = 13
      Caption = 'ISSQN:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIMPOSTOV1: TLabel
      Left = 203
      Top = 87
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelImpostoDescr2: TLabel
      Left = 93
      Top = 133
      Width = 22
      Height = 13
      Caption = 'Pis:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIMPOSTOV2: TLabel
      Left = 203
      Top = 133
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelImpostoDescr3: TLabel
      Left = 73
      Top = 183
      Width = 40
      Height = 13
      Caption = 'Cofins:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIMPOSTOV3: TLabel
      Left = 203
      Top = 183
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelImpostoDescr4: TLabel
      Left = 80
      Top = 236
      Width = 35
      Height = 13
      Caption = 'CSLL:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIMPOSTOV4: TLabel
      Left = 203
      Top = 236
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelImpostoDescr5: TLabel
      Left = 80
      Top = 294
      Width = 34
      Height = 13
      Caption = 'IRRF:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelIMPOSTOV5: TLabel
      Left = 203
      Top = 294
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelImpostoDescr6: TLabel
      Left = 42
      Top = 344
      Width = 72
      Height = 26
      Alignment = taRightJustify
      Caption = 'Previd'#234'ncia (Inss):'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LabelIMPOSTOV6: TLabel
      Left = 203
      Top = 347
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelVpreissqn: TLabel
      Left = 8
      Top = 404
      Width = 182
      Height = 13
      Hint = 'Valor total dos impostos retidos:'
      Alignment = taRightJustify
      Caption = 'Valor total dos impostos retidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label2: TLabel
      Left = 87
      Top = 382
      Width = 89
      Height = 13
      Hint = 'Valor total dos impostos retidos:'
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o da NF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label24: TLabel
      Left = 77
      Top = 26
      Width = 78
      Height = 26
      Alignment = taRightJustify
      Caption = 'Enquadramento Impostos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object JvDateEditPagaISSQN: TJvDateEdit
      Left = 114
      Top = 79
      Width = 89
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 1
      OnExit = JvDateEditPagaISSQNExit
    end
    object MaskEditPagaVissqn: TMaskEdit
      Left = 237
      Top = 79
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0,00'
      OnExit = MaskEditPagaVissqnExit
      OnKeyPress = MaskEditPagaVissqnKeyPress
    end
    object JvDateEditPagaRETPis: TJvDateEdit
      Left = 114
      Top = 125
      Width = 89
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 4
      OnExit = JvDateEditPagaRETPisExit
    end
    object MaskEditPagaVretPis: TMaskEdit
      Left = 237
      Top = 125
      Width = 76
      Height = 21
      Enabled = False
      TabOrder = 5
      Text = '0,00'
      OnExit = MaskEditPagaVretPisExit
      OnKeyPress = MaskEditPagaVretPisKeyPress
    end
    object JvDateEditPagaRETcofins: TJvDateEdit
      Left = 114
      Top = 175
      Width = 88
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 7
      OnExit = JvDateEditPagaRETcofinsExit
    end
    object MaskEditPagaVretCofins: TMaskEdit
      Left = 237
      Top = 175
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 8
      Text = '0,00'
      OnExit = MaskEditPagaVretCofinsExit
      OnKeyPress = MaskEditPagaVretCofinsKeyPress
    end
    object JvDateEditPagaRETcsll: TJvDateEdit
      Left = 114
      Top = 229
      Width = 89
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 10
      OnExit = JvDateEditPagaRETcsllExit
    end
    object MaskEditPagaVretCsll: TMaskEdit
      Left = 237
      Top = 229
      Width = 75
      Height = 21
      Enabled = False
      TabOrder = 11
      Text = '0,00'
      OnExit = MaskEditPagaVretCsllExit
      OnKeyPress = MaskEditPagaVretCsllKeyPress
    end
    object JvDateEditPagairrf: TJvDateEdit
      Left = 114
      Top = 287
      Width = 89
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 13
      OnExit = JvDateEditPagairrfExit
    end
    object MaskEditPagaVirrf: TMaskEdit
      Left = 237
      Top = 287
      Width = 76
      Height = 21
      Enabled = False
      TabOrder = 14
      Text = '0,00'
      OnExit = MaskEditPagaVirrfExit
      OnKeyPress = MaskEditPagaVirrfKeyPress
    end
    object JvDateEditPagaRetPrev: TJvDateEdit
      Left = 114
      Top = 340
      Width = 89
      Height = 21
      CheckOnExit = True
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 16
      OnExit = JvDateEditPagaRetPrevExit
    end
    object MaskEditPagaVretprev: TMaskEdit
      Left = 237
      Top = 340
      Width = 76
      Height = 21
      Enabled = False
      TabOrder = 17
      Text = '0,00'
      OnExit = MaskEditPagaVretprevExit
      OnKeyPress = MaskEditPagaVretprevKeyPress
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 55
      Width = 149
      Height = 17
      Caption = 'Lan'#231'ar guia de ISSQN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 102
      Width = 129
      Height = 17
      Caption = 'Lan'#231'ar guia do PIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 152
      Width = 156
      Height = 17
      Caption = 'Lan'#231'ar guia do COFINS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 206
      Width = 140
      Height = 17
      Caption = 'Lan'#231'ar guia do CSLL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 264
      Width = 138
      Height = 17
      Caption = 'Lan'#231'ar guia do IRRF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 16
      Top = 321
      Width = 213
      Height = 17
      Caption = 'Lan'#231'ar guia da previd'#234'ncia social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox6Click
    end
    object MaskEditVPreISSQN: TMaskEdit
      Left = 193
      Top = 399
      Width = 76
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 18
      Text = '0'
    end
    object MaskeditDEMI: TJvDateEdit
      Left = 176
      Top = 374
      Width = 94
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      ReadOnly = True
      YearDigits = dyFour
      TabOrder = 19
    end
    object MaskeditEnquadramento_imposto: TMaskEdit
      Left = 160
      Top = 20
      Width = 154
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 20
    end
  end
  object GroupBoxPrimeiro: TGroupBox
    Left = 0
    Top = 13
    Width = 305
    Height = 483
    Align = alClient
    TabOrder = 0
    TabStop = True
    OnExit = GroupBoxPrimeiroExit
    object Labelp1: TLabel
      Left = 10
      Top = 64
      Width = 49
      Height = 13
      Caption = 'Pagto 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv1: TLabel
      Left = 157
      Top = 64
      Width = 45
      Height = 13
      Caption = 'Valor 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelp2: TLabel
      Left = 10
      Top = 101
      Width = 49
      Height = 13
      Caption = 'Pagto 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv2: TLabel
      Left = 157
      Top = 101
      Width = 45
      Height = 13
      Caption = 'Valor 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelp3: TLabel
      Left = 10
      Top = 138
      Width = 49
      Height = 13
      Caption = 'Pagto 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv3: TLabel
      Left = 157
      Top = 138
      Width = 45
      Height = 13
      Caption = 'Valor 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelp4: TLabel
      Left = 10
      Top = 174
      Width = 49
      Height = 13
      Caption = 'Pagto 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv4: TLabel
      Left = 157
      Top = 174
      Width = 45
      Height = 13
      Caption = 'Valor 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelp5: TLabel
      Left = 10
      Top = 210
      Width = 49
      Height = 13
      Caption = 'Pagto 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv5: TLabel
      Left = 157
      Top = 210
      Width = 45
      Height = 13
      Caption = 'Valor 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelp6: TLabel
      Left = 10
      Top = 247
      Width = 49
      Height = 13
      Caption = 'Pagto 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Labelv6: TLabel
      Left = 157
      Top = 247
      Width = 45
      Height = 13
      Caption = 'Valor 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelP7: TLabel
      Left = 10
      Top = 284
      Width = 49
      Height = 13
      Caption = 'Pagto 7:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelV7: TLabel
      Left = 157
      Top = 284
      Width = 45
      Height = 13
      Caption = 'Valor 7:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelP8: TLabel
      Left = 10
      Top = 320
      Width = 49
      Height = 13
      Caption = 'Pagto 8:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelV8: TLabel
      Left = 157
      Top = 320
      Width = 45
      Height = 13
      Caption = 'Valor 8:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelP9: TLabel
      Left = 10
      Top = 356
      Width = 49
      Height = 13
      Caption = 'Pagto 9:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelV9: TLabel
      Left = 157
      Top = 356
      Width = 45
      Height = 13
      Caption = 'Valor 9:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelP10: TLabel
      Left = 3
      Top = 393
      Width = 56
      Height = 13
      Caption = 'Pagto 10:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelV10: TLabel
      Left = 150
      Top = 393
      Width = 52
      Height = 13
      Caption = 'Valor 10:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 143
      Top = 28
      Width = 54
      Height = 13
      Caption = 'Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 85
      Top = 427
      Width = 112
      Height = 13
      Hint = 
        'Aten'#231#227'o, Prevalece na OP o n'#250'mero da '#250'ltima NF por vencimento. '#201 +
        ' mantido a NF de cada '#237'tens no Pedido de Compras.'
      Alignment = taCenter
      Caption = 'Valor total da Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label74: TLabel
      Left = 73
      Top = 454
      Width = 122
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor dos Descontos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object MaskEditDT1: TJvDateEdit
      Left = 57
      Top = 56
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 1
      OnExit = MaskEditDT1Exit
    end
    object MaskEditVL1: TMaskEdit
      Left = 200
      Top = 56
      Width = 75
      Height = 21
      TabOrder = 2
      Text = '0,00'
      OnExit = MaskEditVL1Exit
      OnKeyPress = MaskEditVL1KeyPress
    end
    object MaskEditDT2: TJvDateEdit
      Left = 57
      Top = 93
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 3
      OnExit = MaskEditDT2Exit
    end
    object MaskEditVL2: TMaskEdit
      Left = 200
      Top = 93
      Width = 76
      Height = 21
      TabOrder = 4
      Text = '0,00'
      OnExit = MaskEditVL2Exit
      OnKeyPress = MaskEditVL2KeyPress
    end
    object MaskeditDT3: TJvDateEdit
      Left = 57
      Top = 130
      Width = 88
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 5
      OnExit = MaskeditDT3Exit
    end
    object MaskEditVL3: TMaskEdit
      Left = 200
      Top = 130
      Width = 75
      Height = 21
      TabOrder = 6
      Text = '0,00'
      OnExit = MaskEditVL3Exit
      OnKeyPress = MaskEditVL3KeyPress
    end
    object MaskeditDT4: TJvDateEdit
      Left = 57
      Top = 166
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 7
      OnExit = MaskeditDT4Exit
    end
    object MaskEditVL4: TMaskEdit
      Left = 200
      Top = 166
      Width = 75
      Height = 21
      TabOrder = 8
      Text = '0,00'
      OnExit = MaskEditVL4Exit
      OnKeyPress = MaskEditVL4KeyPress
    end
    object MaskeditDT5: TJvDateEdit
      Left = 57
      Top = 202
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 9
      OnExit = MaskeditDT5Exit
    end
    object MaskEditVL5: TMaskEdit
      Left = 200
      Top = 202
      Width = 76
      Height = 21
      TabOrder = 10
      Text = '0,00'
      OnExit = MaskEditVL5Exit
      OnKeyPress = MaskEditVL5KeyPress
    end
    object MaskeditDT6: TJvDateEdit
      Left = 57
      Top = 239
      Width = 88
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 11
      OnExit = MaskeditDT6Exit
    end
    object MaskEditVL6: TMaskEdit
      Left = 200
      Top = 239
      Width = 75
      Height = 21
      TabOrder = 12
      Text = '0,00'
      OnExit = MaskEditVL6Exit
      OnKeyPress = MaskEditVL6KeyPress
    end
    object MaskeditDT7: TJvDateEdit
      Left = 57
      Top = 276
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 13
    end
    object MaskEditVL7: TMaskEdit
      Left = 200
      Top = 276
      Width = 75
      Height = 21
      TabOrder = 14
      Text = '0,00'
      OnExit = MaskEditVL7Exit
      OnKeyPress = MaskEditVL1KeyPress
    end
    object MaskeditDT8: TJvDateEdit
      Left = 57
      Top = 312
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 15
    end
    object MaskEditVL8: TMaskEdit
      Left = 200
      Top = 312
      Width = 76
      Height = 21
      TabOrder = 16
      Text = '0,00'
      OnExit = MaskEditVL8Exit
      OnKeyPress = MaskEditVL2KeyPress
    end
    object MaskeditDT9: TJvDateEdit
      Left = 57
      Top = 348
      Width = 88
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 17
    end
    object MaskEditVL9: TMaskEdit
      Left = 200
      Top = 348
      Width = 75
      Height = 21
      TabOrder = 18
      Text = '0,00'
      OnExit = MaskEditVL9Exit
      OnKeyPress = MaskEditVL3KeyPress
    end
    object MaskeditDT10: TJvDateEdit
      Left = 57
      Top = 385
      Width = 89
      Height = 21
      CheckOnExit = True
      NumGlyphs = 2
      ButtonWidth = 26
      YearDigits = dyFour
      TabOrder = 19
    end
    object MaskEditVL10: TMaskEdit
      Left = 199
      Top = 385
      Width = 76
      Height = 21
      TabOrder = 20
      Text = '0,00'
      OnExit = MaskEditVL10Exit
      OnKeyPress = MaskEditVL4KeyPress
    end
    object ComboBoxParcelas: TComboBox
      Left = 202
      Top = 20
      Width = 59
      Height = 21
      TabOrder = 0
      OnExit = ComboBoxParcelasExit
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
    object MaskEditTOTAL_VNF: TMaskEdit
      Left = 200
      Top = 420
      Width = 75
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 21
    end
    object MaskEditTotal_VDESC: TMaskEdit
      Left = 200
      Top = 447
      Width = 75
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 22
      Text = '0'
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 496
    Width = 633
    Height = 31
    Align = alBottom
    Color = 12615935
    ParentColor = False
    TabOrder = 2
    TabStop = True
    Visible = False
    object Label73: TLabel
      Left = 312
      Top = 15
      Width = 77
      Height = 13
      Hint = 
        'Aten'#231#227'o, Prevalece na OP o n'#250'mero da '#250'ltima NF por vencimento. '#201 +
        ' mantido a NF de cada '#237'tens no Pedido de Compras.'
      Alignment = taRightJustify
      Caption = 'Valor do seguro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object MaskEditTotal_VSEG: TMaskEdit
      Left = 391
      Top = 8
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = '0'
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 585
    Top = 463
  end
end
