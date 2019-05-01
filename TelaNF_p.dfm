object TelaNF: TTelaNF
  Left = 63
  Top = 0
  BorderIcons = [biMaximize]
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Nota Fiscal]'
  ClientHeight = 709
  ClientWidth = 1283
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1283
    Height = 289
    Align = alTop
    Color = clGradientActiveCaption
    ParentColor = False
    TabOrder = 0
    TabStop = True
    OnExit = GroupBox1Exit
    object Label2: TLabel
      Left = 116
      Top = 15
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 233
      Top = 15
      Width = 32
      Height = 13
      Caption = 'Sa'#237'da:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelNumeroPedido: TLabel
      Left = 27
      Top = 102
      Width = 66
      Height = 13
      Caption = 'N'#186' do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelClifor: TLabel
      Left = 107
      Top = 102
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Destinat'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 26
      Top = 147
      Width = 41
      Height = 13
      Caption = 'Esp'#233'cie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 619
      Top = 102
      Width = 79
      Height = 13
      Caption = 'Condi'#231#227'o Pagto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 27
      Top = 58
      Width = 111
      Height = 13
      Caption = 'Natureza da Opera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 27
      Top = 190
      Width = 75
      Height = 13
      Caption = 'Transportadora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 731
      Top = 189
      Width = 44
      Height = 13
      Caption = 'Frete (%):'
    end
    object Label17: TLabel
      Left = 346
      Top = 15
      Width = 48
      Height = 13
      Caption = 'Fatura de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 649
      Top = 189
      Width = 76
      Height = 13
      Caption = 'Frete por Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 454
      Top = 22
      Width = 56
      Height = 26
      Caption = 'E = Entrada'#13#10'S = Saida'
    end
    object Label42: TLabel
      Left = 510
      Top = 144
      Width = 91
      Height = 13
      Caption = 'Observa'#231#227'o Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 813
      Top = 189
      Width = 50
      Height = 13
      Caption = 'Frete (R$):'
    end
    object Label7: TLabel
      Left = 182
      Top = 147
      Width = 65
      Height = 13
      Caption = 'Tipo de Nota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 467
      Top = 102
      Width = 52
      Height = 13
      Caption = 'Solicitante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label54: TLabel
      Left = 912
      Top = 211
      Width = 370
      Height = 13
      Caption = 
        '(1--> Emitente (Empresa)  2 --> Destinat'#225'rio (Cliente/Fornecedor' +
        ') 9->Sem Frete)'
    end
    object Label4: TLabel
      Left = 206
      Top = 248
      Width = 54
      Height = 13
      Caption = 'Exportador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label73: TLabel
      Left = 41
      Top = 248
      Width = 124
      Height = 13
      Caption = 'Base de Redu'#231#227'o Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabelPortador: TLabel
      Left = 361
      Top = 147
      Width = 43
      Height = 13
      Caption = 'Portador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label80: TLabel
      Left = 586
      Top = 190
      Width = 30
      Height = 13
      Caption = 'Placa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label81: TLabel
      Left = 499
      Top = 190
      Width = 81
      Height = 13
      Caption = 'Estado da Placa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label84: TLabel
      Left = 412
      Top = 190
      Width = 26
      Height = 13
      Caption = 'T'#237'po:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label86: TLabel
      Left = 281
      Top = 248
      Width = 102
      Height = 13
      Caption = 'Limita1 Pedicli por NF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label87: TLabel
      Left = 410
      Top = 248
      Width = 34
      Height = 13
      Caption = 'Pedicli:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabelNotaFiscalReferencial: TLabel
      Left = 488
      Top = 58
      Width = 113
      Height = 13
      Caption = 'Nota Fiscal Referencial:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelNFEReferencial: TLabel
      Left = 626
      Top = 58
      Width = 81
      Height = 13
      Caption = 'NFE Referencial:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelMotivoEmissao: TLabel
      Left = 516
      Top = 15
      Width = 77
      Height = 13
      Caption = 'Motivo Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabelReferenciaMotivoEmissao: TLabel
      Left = 803
      Top = 15
      Width = 35
      Height = 13
      Caption = 'N'#186' NF.:'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 406
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object JvDateEdit1: TJvDateEdit
      Left = 116
      Top = 31
      Width = 109
      Height = 21
      Enabled = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 0
      OnExit = JvDateEdit1Exit
      OnKeyPress = JvDateEdit1KeyPress
    end
    object JvDateEdit2: TJvDateEdit
      Left = 233
      Top = 31
      Width = 107
      Height = 21
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 1
      OnEnter = JvDateEdit2Enter
      OnExit = JvDateEdit2Exit
      OnKeyPress = JvDateEdit2KeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 27
      Top = 119
      Width = 68
      Height = 21
      MaxLength = 6
      TabOrder = 8
      Text = '0'
      OnExit = MaskEdit2Exit
      OnKeyPress = MaskEdit2KeyPress
    end
    object MaskEditCodigoCli_For: TMaskEdit
      Left = 107
      Top = 119
      Width = 59
      Height = 21
      MaxLength = 5
      TabOrder = 9
      Text = '0'
      OnExit = MaskEditCodigoCli_ForExit
      OnKeyPress = MaskEditCodigoCli_ForKeyPress
    end
    object MaskEditNomeCli: TMaskEdit
      Left = 170
      Top = 119
      Width = 287
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 10
    end
    object MaskEdit8: TMaskEdit
      Left = 626
      Top = 117
      Width = 50
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      OnExit = MaskEdit8Exit
      OnKeyPress = MaskEdit8KeyPress
    end
    object MaskEdit9: TMaskEdit
      Left = 27
      Top = 74
      Width = 49
      Height = 21
      MaxLength = 4
      TabOrder = 6
      OnExit = MaskEdit9Exit
      OnKeyPress = MaskEdit9KeyPress
    end
    object MaskEdit10: TMaskEdit
      Left = 27
      Top = 209
      Width = 57
      Height = 21
      MaxLength = 3
      TabOrder = 22
      Text = '0'
      OnExit = MaskEdit10Exit
      OnKeyPress = MaskEdit10KeyPress
    end
    object MaskEditPCFRETE: TMaskEdit
      Left = 731
      Top = 208
      Width = 57
      Height = 21
      MaxLength = 5
      TabOrder = 28
      Text = '0'
      OnExit = MaskEditPCFRETEExit
      OnKeyPress = MaskEditPCFRETEKeyPress
    end
    object MaskEdit12: TMaskEdit
      Left = 510
      Top = 163
      Width = 57
      Height = 21
      Hint = 'Entre com 9999 para poder digitar uma Observa'#231#227'o Fiscal'
      MaxLength = 4
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      Text = '0'
      OnExit = MaskEdit12Exit
      OnKeyPress = MaskEdit12KeyPress
    end
    object ComboBoxFatura: TComboBox
      Left = 346
      Top = 31
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 1
      MaxLength = 1
      TabOrder = 2
      Text = 'S'
      OnExit = ComboBoxFaturaExit
      Items.Strings = (
        'E'
        'S')
    end
    object ComboBoxFrete: TComboBox
      Left = 649
      Top = 208
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 1
      TabOrder = 27
      Text = '1'
      OnExit = ComboBoxFreteExit
      OnKeyPress = ComboBoxFreteKeyPress
      Items.Strings = (
        '1'
        '2'
        '9')
    end
    object ComboBoxEspecie: TComboBox
      Left = 27
      Top = 163
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 16
      OnExit = ComboBoxEspecieExit
      Items.Strings = (
        'AMARRADOS'
        'FARDOS'
        'BOBINAS'
        'FACAS'
        'PALLETS'
        'PE'#199'AS'
        'ROLL ON')
    end
    object MaskEditVLTOTFRE: TMaskEdit
      Left = 813
      Top = 208
      Width = 93
      Height = 21
      TabOrder = 29
      Text = '0,00'
      OnExit = MaskEditVLTOTFREExit
      OnKeyPress = MaskEditVLTOTFREKeyPress
    end
    object MaskEditCondpg: TMaskEdit
      Left = 683
      Top = 117
      Width = 252
      Height = 21
      TabStop = False
      TabOrder = 15
    end
    object MaskeditNMGUERRA: TMaskEdit
      Left = 93
      Top = 209
      Width = 313
      Height = 21
      TabStop = False
      TabOrder = 23
    end
    object MaskEditNatOPdesc: TMaskEdit
      Left = 81
      Top = 74
      Width = 377
      Height = 21
      TabStop = False
      TabOrder = 7
    end
    object ComboBoxConsumidorFinal: TComboBox
      Left = 182
      Top = 163
      Width = 146
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 17
      Text = 'NORMAL'
      OnExit = ComboBoxConsumidorFinalExit
      Items.Strings = (
        'NORMAL'
        'CONSUMIDOR FINAL')
    end
    object MaskEditSolicitante: TMaskEdit
      Left = 467
      Top = 119
      Width = 139
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 11
      Visible = False
      OnExit = MaskEditSolicitanteExit
    end
    object JvNavPanelHeader3: TJvNavPanelHeader
      Left = 2
      Top = 269
      Width = 1279
      Height = 18
      Align = alBottom
      Caption = 
        'ATEN'#199#195'O: Nota ser'#225' tirada com c'#225'lculo de impostos para material ' +
        'de uso e consumo conforme solicitado por vendas para este pedido' +
        '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
      ColorFrom = clTeal
      ColorTo = clTeal
      ImageIndex = 0
    end
    object BitBtnGravaNF: TBitBtn
      Left = 1101
      Top = 32
      Width = 130
      Height = 18
      Caption = 'BitBtnGravaNF'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 31
      TabStop = False
      Visible = False
      OnClick = BitBtnGravaNFClick
    end
    object BitBtnLimpaCamposItem: TBitBtn
      Left = 1101
      Top = 49
      Width = 130
      Height = 20
      Caption = 'BitBtnLimpaCamposItem'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 32
      TabStop = False
      Visible = False
      OnClick = BitBtnLimpaCamposItemClick
    end
    object MaskEditItensNota: TMaskEdit
      Left = 406
      Top = 31
      Width = 36
      Height = 21
      TabStop = False
      MaxLength = 1
      TabOrder = 33
      Visible = False
    end
    object MaskEditObservacaoFiscald: TMaskEdit
      Left = 571
      Top = 163
      Width = 265
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 20
    end
    object MaskEditI_S_T: TMaskEdit
      Left = 839
      Top = 163
      Width = 39
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 21
    end
    object MaskEditUSOCONSUMO_ABR: TMaskEdit
      Left = 335
      Top = 163
      Width = 15
      Height = 21
      MaxLength = 1
      TabOrder = 34
      Visible = False
    end
    object MaskEditPIS_COFINS: TMaskEdit
      Left = 924
      Top = 163
      Width = 31
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 35
    end
    object MaskEditEXPORTADOR: TMaskEdit
      Left = 258
      Top = 243
      Width = 20
      Height = 21
      TabOrder = 36
      Visible = False
    end
    object MaskEditREDUCAO_ICMS_CLIENTE: TMaskEdit
      Left = 166
      Top = 243
      Width = 40
      Height = 21
      TabOrder = 37
      Visible = False
    end
    object ComboBoxPortador: TComboBox
      Left = 358
      Top = 163
      Width = 144
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = csDropDownList
      TabOrder = 18
    end
    object GroupBoxExportacao: TGroupBox
      Left = 1002
      Top = 74
      Width = 220
      Height = 85
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Exporta'#231#227'o:'
      TabOrder = 38
      Visible = False
      object Label75: TLabel
        Left = 9
        Top = 25
        Width = 82
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'UF do embarque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 9
        Top = 50
        Width = 86
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Nome do local do '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 9
        Top = 68
        Width = 209
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'embarque (Porto de  Santos, Foz do Igua'#231#250')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MaskEditUFEMBARQ: TMaskEdit
        Left = 99
        Top = 19
        Width = 25
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 0
        OnExit = MaskEditUFEMBARQExit
      end
      object MaskEditxLocEmbarq: TMaskEdit
        Left = 99
        Top = 43
        Width = 90
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        CharCase = ecUpperCase
        MaxLength = 60
        TabOrder = 1
      end
    end
    object MaskEditPlaca: TMaskEdit
      Left = 586
      Top = 209
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 26
      Text = '0'
      OnExit = MaskEditPlacaExit
    end
    object ComboBoxEstado: TComboBox
      Left = 507
      Top = 209
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 25
      OnExit = ComboBoxEstadoExit
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object ComboBoxTIPO_RODADO: TComboBox
      Left = 411
      Top = 208
      Width = 91
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 24
      OnExit = ComboBoxTIPO_RODADOExit
      Items.Strings = (
        'Carreta'
        'Container'
        'Toco'
        'Truck'
        'Van'
        'Utilit'#225'rio'
        '')
    end
    object BitBtnConsiste: TBitBtn
      Left = 1101
      Top = 15
      Width = 65
      Height = 19
      Caption = 'Consiste'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 39
      TabStop = False
      Visible = False
      OnClick = BitBtnConsisteClick
    end
    object MaskEditLIMITA_1_PEDIDOCLI_NF: TMaskEdit
      Left = 384
      Top = 243
      Width = 20
      Height = 21
      TabStop = False
      TabOrder = 40
      Visible = False
    end
    object MaskEditPEDIDO_CLIENTE_O: TMaskEdit
      Left = 446
      Top = 243
      Width = 20
      Height = 21
      TabStop = False
      TabOrder = 41
      Visible = False
    end
    object Consiste_I: TBitBtn
      Left = 1166
      Top = 14
      Width = 65
      Height = 19
      Caption = 'Consiste_I'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 42
      TabStop = False
      Visible = False
      OnClick = Consiste_IClick
    end
    object MaskEditPEDIDO_CLIENTE_2: TMaskEdit
      Left = 472
      Top = 243
      Width = 20
      Height = 21
      TabStop = False
      TabOrder = 43
      Visible = False
    end
    object MaskEditPEDIDO_CLIENTE_3: TMaskEdit
      Left = 498
      Top = 243
      Width = 20
      Height = 21
      TabStop = False
      TabOrder = 44
      Visible = False
    end
    object MaskEditPGTO_CHEQUE: TMaskEdit
      Left = 941
      Top = 117
      Width = 14
      Height = 21
      TabStop = False
      MaxLength = 1
      TabOrder = 45
      Visible = False
    end
    object MaskEditRefNF: TMaskEdit
      Left = 488
      Top = 74
      Width = 126
      Height = 21
      Enabled = False
      TabOrder = 12
      Text = '0'
      OnExit = MaskEditRefNFExit
    end
    object MaskEditREFNFE: TMaskEdit
      Left = 626
      Top = 74
      Width = 329
      Height = 21
      TabStop = False
      Enabled = False
      EditMask = '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;_'
      MaxLength = 54
      ReadOnly = True
      TabOrder = 13
    end
    object ComboBoxMotivoEmissao: TJvDBLookupEdit
      Left = 516
      Top = 31
      Width = 282
      Height = 21
      LookupField = 'DESCRICAO'
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 26
      TabOrder = 3
      Text = 'DIGITE O MOTIVO EMISS'#195'O'
      OnExit = ComboBoxMotivoEmissaoExit
    end
    object MaskEditReferenciaMotivoEmissao: TMaskEdit
      Left = 852
      Top = 32
      Width = 64
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = '0'
      OnExit = MaskEditReferenciaMotivoEmissaoExit
    end
    object MaskEditJutifica: TMaskEdit
      Left = 804
      Top = 31
      Width = 151
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object MaskEditENQUADRAMENTO_IPI: TMaskEdit
      Left = 881
      Top = 163
      Width = 39
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 46
    end
    object MaskEditNF_PALETE: TMaskEdit
      Left = 461
      Top = 74
      Width = 18
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 47
    end
  end
  object GroupBoxITEM: TGroupBox
    Left = 0
    Top = 289
    Width = 1283
    Height = 222
    Align = alClient
    Caption = #205'tem     '
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object Label20: TLabel
      Left = 212
      Top = 12
      Width = 51
      Height = 26
      Caption = 'T = Total'#13#10'P = Parcial'
    end
    object Label21: TLabel
      Left = 4
      Top = 23
      Width = 67
      Height = 13
      Caption = 'Pedido/Baixa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 495
      Top = 23
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 640
      Top = 23
      Width = 99
      Height = 13
      Caption = 'Quantidade Esp'#233'cie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 5
      Top = 51
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 4
      Top = 77
      Width = 54
      Height = 13
      Caption = 'Peso Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 331
      Top = 48
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 134
      Top = 77
      Width = 86
      Height = 13
      Caption = 'Pedido do Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 536
      Top = 75
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 699
      Top = 77
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 397
      Top = 23
      Width = 43
      Height = 13
      Caption = 'Unidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelITEM: TLabel
      Left = 32
      Top = 0
      Width = 8
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label49: TLabel
      Left = 753
      Top = 48
      Width = 76
      Height = 13
      Caption = 'Dt Entrega Ped:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label51: TLabel
      Left = 268
      Top = 23
      Width = 50
      Height = 13
      Caption = 'Valida'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label55: TLabel
      Left = 899
      Top = 18
      Width = 107
      Height = 13
      Caption = 'Quantidade Apontada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 906
      Top = 37
      Width = 100
      Height = 13
      Caption = 'Fator de Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 896
      Top = 98
      Width = 75
      Height = 13
      Caption = 'Quantidade BX:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label59: TLabel
      Left = 951
      Top = 57
      Width = 54
      Height = 13
      Caption = 'Shiro Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label60: TLabel
      Left = 903
      Top = 76
      Width = 103
      Height = 13
      Caption = 'Desconto Shiro Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label74: TLabel
      Left = 125
      Top = 101
      Width = 126
      Height = 13
      Caption = 'Caixas Prontas Expedi'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label78: TLabel
      Left = 323
      Top = 77
      Width = 109
      Height = 13
      Caption = #205'tem Pedido do Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label85: TLabel
      Left = 724
      Top = 100
      Width = 103
      Height = 13
      Caption = 'Quantidade Faturada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label63: TLabel
      Left = 949
      Top = 124
      Width = 57
      Height = 13
      Caption = 'GTIN_EAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object MaskEdit19: TMaskEdit
      Left = 553
      Top = 15
      Width = 83
      Height = 21
      MaxLength = 8
      TabOrder = 4
      Text = '0'
      OnEnter = MaskEdit19Enter
      OnExit = MaskEdit19Exit
      OnKeyPress = MaskEdit19KeyPress
    end
    object MaskEdit20: TMaskEdit
      Left = 740
      Top = 15
      Width = 98
      Height = 21
      MaxLength = 6
      TabOrder = 5
      Text = '0'
      OnExit = MaskEdit20Exit
      OnKeyPress = MaskEdit20KeyPress
    end
    object MaskEdit21: TMaskEdit
      Left = 58
      Top = 43
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 6
      OnExit = MaskEdit21Exit
    end
    object MaskEdit22: TMaskEdit
      Left = 387
      Top = 42
      Width = 362
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 26
      TabOrder = 7
      OnExit = MaskEdit22Exit
    end
    object MaskEdit23: TMaskEdit
      Left = 58
      Top = 69
      Width = 73
      Height = 21
      MaxLength = 6
      TabOrder = 8
      Text = '0'
      OnExit = MaskEdit23Exit
      OnKeyPress = MaskEdit23KeyPress
    end
    object MaskEdit24: TMaskEdit
      Left = 224
      Top = 69
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 12
      TabOrder = 9
    end
    object MaskEditVLUNIT: TMaskEdit
      Left = 608
      Top = 69
      Width = 87
      Height = 21
      MaxLength = 15
      TabOrder = 11
      Text = '0'
      OnExit = MaskEditVLUNITExit
      OnKeyPress = MaskEditVLUNITKeyPress
    end
    object MaskEditVLTOTAL: TMaskEdit
      Left = 757
      Top = 69
      Width = 89
      Height = 21
      TabStop = False
      MaxLength = 15
      ReadOnly = True
      TabOrder = 12
      Text = '0'
      OnExit = MaskEditVLTOTALExit
      OnKeyPress = MaskEditVLTOTALKeyPress
    end
    object ComboBoxUnidade: TComboBox
      Left = 442
      Top = 15
      Width = 48
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 3
      OnExit = ComboBoxUnidadeExit
      Items.Strings = (
        'PC'
        'KG'
        'MT'
        'SV'
        'CT'
        'TN')
    end
    object MaskEdit17: TMaskEdit
      Left = 72
      Top = 18
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 0
      Text = '0'
      OnEnter = MaskEdit17Enter
      OnExit = MaskEdit17Exit
      OnKeyPress = MaskEdit17KeyPress
    end
    object ComboBoxBaixa: TComboBox
      Left = 161
      Top = 17
      Width = 49
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      MaxLength = 1
      TabOrder = 1
      OnExit = ComboBoxBaixaExit
      Items.Strings = (
        'T'
        'P')
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 131
      Width = 1279
      Height = 89
      Align = alBottom
      Caption = 'Impostos'
      TabOrder = 13
      TabStop = True
      object Label31: TLabel
        Left = 386
        Top = 47
        Width = 92
        Height = 13
        Caption = 'Situa'#231#227'o Tribut'#225'ria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 20
        Top = 48
        Width = 79
        Height = 13
        Caption = 'Benef'#237'cio Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 4
        Top = 20
        Width = 95
        Height = 13
        Caption = 'Classifica'#231#227'o Fiscal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LabelIPI: TLabel
        Left = 388
        Top = 23
        Width = 13
        Height = 13
        Caption = 'IPI'
      end
      object LabelIPIOriginal: TLabel
        Left = 391
        Top = 7
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label5: TLabel
        Left = 722
        Top = 70
        Width = 64
        Height = 13
        Caption = 'ISS Na fonte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label45: TLabel
        Left = 409
        Top = 23
        Width = 66
        Height = 13
        Caption = 'ICMS Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LabelICMORIGINAL: TLabel
        Left = 477
        Top = 23
        Width = 38
        Height = 13
        Hint = '% ICM OFICIAL'
        Caption = 'ICM OR'
        ParentShowHint = False
        ShowHint = True
      end
      object Label37: TLabel
        Left = 522
        Top = 23
        Width = 52
        Height = 13
        Caption = 'ICMS '#205'tem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 164
        Top = 71
        Width = 31
        Height = 13
        Caption = 'PIS %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 916
        Top = 41
        Width = 106
        Height = 13
        Caption = 'IPI Desdobrado/Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label57: TLabel
        Left = 926
        Top = 64
        Width = 95
        Height = 13
        Caption = 'Portador Especifico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label28: TLabel
        Left = 508
        Top = 71
        Width = 43
        Height = 13
        Caption = 'Cofins %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label61: TLabel
        Left = 4
        Top = 71
        Width = 124
        Height = 13
        Caption = 'Ser'#225' Calculado PIS (S/N):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label62: TLabel
        Left = 339
        Top = 71
        Width = 136
        Height = 13
        Caption = 'Ser'#225' Calculado Cofins (S/N):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 622
        Top = 23
        Width = 73
        Height = 13
        Caption = 'Nat. Opera'#231#227'o:'
        Visible = False
      end
      object Label82: TLabel
        Left = 261
        Top = 71
        Width = 24
        Height = 13
        Caption = 'CST:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 616
        Top = 71
        Width = 24
        Height = 13
        Caption = 'CST:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Maskeditclafisca: TMaskEdit
        Left = 508
        Top = 39
        Width = 282
        Height = 21
        TabStop = False
        TabOrder = 8
      end
      object MaskEdit28: TMaskEdit
        Left = 479
        Top = 39
        Width = 28
        Height = 21
        MaxLength = 3
        TabOrder = 7
        Text = '000'
        OnExit = MaskEdit28Exit
        OnKeyPress = MaskEdit28KeyPress
      end
      object MaskEditBeneficio: TMaskEdit
        Left = 141
        Top = 39
        Width = 241
        Height = 21
        TabStop = False
        TabOrder = 6
      end
      object MaskEdit27: TMaskEdit
        Left = 100
        Top = 39
        Width = 40
        Height = 21
        MaxLength = 4
        TabOrder = 5
        Text = '0'
        OnExit = MaskEdit27Exit
        OnKeyPress = MaskEdit27KeyPress
      end
      object MaskEdit26: TMaskEdit
        Left = 100
        Top = 13
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 4
        TabOrder = 0
        OnExit = MaskEdit26Exit
        OnKeyPress = MaskEdit26KeyPress
      end
      object MaskEditVLTOTISS: TMaskEdit
        Left = 787
        Top = 63
        Width = 48
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 9
        Text = '0'
        Visible = False
      end
      object MaskEditICM: TMaskEdit
        Left = 577
        Top = 16
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 2
        TabOrder = 2
        OnKeyPress = MaskEditICMKeyPress
      end
      object MaskEditPercentualPIS: TMaskEdit
        Left = 200
        Top = 65
        Width = 55
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 10
        Text = '0'
      end
      object MaskEditDescClass: TMaskEdit
        Left = 142
        Top = 13
        Width = 241
        Height = 21
        TabStop = False
        TabOrder = 1
      end
      object MaskEditIPI_TIPO: TMaskEdit
        Left = 1025
        Top = 36
        Width = 36
        Height = 21
        MaxLength = 1
        TabOrder = 11
        Visible = False
      end
      object MaskEditPORTADORE: TMaskEdit
        Left = 1025
        Top = 59
        Width = 36
        Height = 21
        MaxLength = 1
        TabOrder = 12
        Visible = False
      end
      object MaskEditPercentualCOFINS: TMaskEdit
        Left = 555
        Top = 65
        Width = 55
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 13
        Text = '0'
      end
      object MaskEditPISSN: TMaskEdit
        Left = 129
        Top = 65
        Width = 24
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 14
      end
      object MaskEditCOFINSSN: TMaskEdit
        Left = 478
        Top = 65
        Width = 23
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 15
      end
      object MaskEditCDNATOPEITEM: TMaskEdit
        Left = 697
        Top = 16
        Width = 59
        Height = 21
        TabOrder = 3
        Visible = False
        OnExit = MaskEditCDNATOPEITEMExit
      end
      object MaskEditDescricaoNatopeitem: TMaskEdit
        Left = 759
        Top = 16
        Width = 258
        Height = 21
        TabStop = False
        TabOrder = 4
        Visible = False
      end
      object MaskEditCST_PIS: TMaskEdit
        Left = 291
        Top = 65
        Width = 32
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 16
      end
      object MaskEditCST_COFINS: TMaskEdit
        Left = 646
        Top = 65
        Width = 32
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 17
      end
    end
    object JvNavPanelHeader1: TJvNavPanelHeader
      Left = 2
      Top = 113
      Width = 1279
      Height = 18
      Align = alBottom
      Caption = 
        'ATEN'#199#195'O: Existem Pedidos com Data de Entrega Anterior desta Refe' +
        'r'#234'cia na Carga, Quantidade deste pedido j'#225' faturada:xxxxxxxxxxxx' +
        'xxxxxxx '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
      ColorFrom = clRed
      ColorTo = clMaroon
      ImageIndex = 0
    end
    object JvDateEditDTENTREGAPED: TJvDateEdit
      Left = 831
      Top = 40
      Width = 70
      Height = 21
      TabStop = False
      DirectInput = False
      NumGlyphs = 2
      ShowButton = False
      TabOrder = 15
      OnKeyPress = JvDateEdit2KeyPress
    end
    object MaskEditValidacao: TMaskEdit
      Left = 320
      Top = 15
      Width = 54
      Height = 21
      MaxLength = 8
      TabOrder = 2
      Text = '0'
      Visible = False
      OnExit = MaskEditValidacaoExit
      OnKeyPress = MaskEdit19KeyPress
    end
    object MaskEditQtdApontada: TMaskEdit
      Left = 1009
      Top = 10
      Width = 60
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 16
    end
    object MaskEditFATORQ: TMaskEdit
      Left = 1009
      Top = 30
      Width = 60
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 17
    end
    object MaskEditBaixaAT: TMaskEdit
      Left = 974
      Top = 91
      Width = 96
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 18
    end
    object MaskEditSV: TMaskEdit
      Left = 1009
      Top = 50
      Width = 60
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 19
      Visible = False
    end
    object MaskEditSVD: TMaskEdit
      Left = 1009
      Top = 69
      Width = 60
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 20
      Visible = False
    end
    object MaskEditCXPR2: TMaskEdit
      Left = 257
      Top = 93
      Width = 65
      Height = 21
      MaxLength = 6
      TabOrder = 21
      Visible = False
    end
    object GroupBox10: TGroupBox
      Left = 1069
      Top = 6
      Width = 353
      Height = 107
      Caption = 'Bloqueio de Vencimentos'
      TabOrder = 22
      TabStop = True
      Visible = False
      object DV1: TCheckBox
        Left = 10
        Top = 16
        Width = 31
        Height = 17
        Caption = '1'
        TabOrder = 0
      end
      object DV2: TCheckBox
        Left = 43
        Top = 16
        Width = 31
        Height = 17
        Caption = '2'
        TabOrder = 1
      end
      object DV3: TCheckBox
        Left = 79
        Top = 16
        Width = 31
        Height = 17
        Caption = '3'
        TabOrder = 2
      end
      object DV4: TCheckBox
        Left = 114
        Top = 16
        Width = 31
        Height = 17
        Caption = '4'
        TabOrder = 3
      end
      object DV5: TCheckBox
        Left = 149
        Top = 16
        Width = 31
        Height = 17
        Caption = '5'
        TabOrder = 4
      end
      object DV6: TCheckBox
        Left = 185
        Top = 16
        Width = 31
        Height = 17
        Caption = '6'
        TabOrder = 5
      end
      object DV7: TCheckBox
        Left = 219
        Top = 16
        Width = 31
        Height = 17
        Caption = '7'
        TabOrder = 6
      end
      object DV8: TCheckBox
        Left = 253
        Top = 16
        Width = 31
        Height = 17
        Caption = '8'
        TabOrder = 7
      end
      object DV9: TCheckBox
        Left = 284
        Top = 16
        Width = 31
        Height = 17
        Caption = '9'
        TabOrder = 8
      end
      object DV10: TCheckBox
        Left = 321
        Top = 16
        Width = 31
        Height = 17
        Caption = '10'
        TabOrder = 9
      end
      object DV20: TCheckBox
        Left = 321
        Top = 40
        Width = 31
        Height = 17
        Caption = '20'
        TabOrder = 10
      end
      object DV19: TCheckBox
        Left = 284
        Top = 40
        Width = 31
        Height = 17
        Caption = '19'
        TabOrder = 11
      end
      object DV18: TCheckBox
        Left = 253
        Top = 40
        Width = 31
        Height = 17
        Caption = '18'
        TabOrder = 12
      end
      object DV17: TCheckBox
        Left = 219
        Top = 39
        Width = 31
        Height = 17
        Caption = '17'
        TabOrder = 13
      end
      object DV16: TCheckBox
        Left = 184
        Top = 40
        Width = 31
        Height = 17
        Caption = '16'
        TabOrder = 14
      end
      object DV15: TCheckBox
        Left = 149
        Top = 40
        Width = 31
        Height = 17
        Caption = '15'
        TabOrder = 15
      end
      object DV14: TCheckBox
        Left = 114
        Top = 40
        Width = 31
        Height = 17
        Caption = '14'
        TabOrder = 16
      end
      object DV13: TCheckBox
        Left = 79
        Top = 40
        Width = 31
        Height = 17
        Caption = '13'
        TabOrder = 17
      end
      object DV12: TCheckBox
        Left = 43
        Top = 40
        Width = 31
        Height = 17
        Caption = '12'
        TabOrder = 18
      end
      object DV11: TCheckBox
        Left = 10
        Top = 40
        Width = 31
        Height = 17
        Caption = '11'
        TabOrder = 19
      end
      object DV30: TCheckBox
        Left = 321
        Top = 62
        Width = 31
        Height = 17
        Caption = '30'
        TabOrder = 20
      end
      object DV29: TCheckBox
        Left = 284
        Top = 62
        Width = 31
        Height = 17
        Caption = '29'
        TabOrder = 21
      end
      object DV28: TCheckBox
        Left = 253
        Top = 62
        Width = 31
        Height = 17
        Caption = '28'
        TabOrder = 22
      end
      object DV27: TCheckBox
        Left = 219
        Top = 62
        Width = 31
        Height = 17
        Caption = '27'
        TabOrder = 23
      end
      object DV26: TCheckBox
        Left = 185
        Top = 62
        Width = 31
        Height = 17
        Caption = '26'
        TabOrder = 24
      end
      object DV25: TCheckBox
        Left = 149
        Top = 62
        Width = 31
        Height = 17
        Caption = '25'
        TabOrder = 25
      end
      object DV24: TCheckBox
        Left = 114
        Top = 62
        Width = 31
        Height = 17
        Caption = '24'
        TabOrder = 26
      end
      object DV23: TCheckBox
        Left = 79
        Top = 62
        Width = 31
        Height = 17
        Caption = '23'
        TabOrder = 27
      end
      object DV22: TCheckBox
        Left = 43
        Top = 62
        Width = 31
        Height = 17
        Caption = '22'
        TabOrder = 28
      end
      object DV21: TCheckBox
        Left = 10
        Top = 62
        Width = 31
        Height = 17
        Caption = '21'
        TabOrder = 29
      end
      object DV31: TCheckBox
        Left = 10
        Top = 85
        Width = 31
        Height = 17
        Caption = '31'
        TabOrder = 30
      end
    end
    object MaskEditPedidoClienteItem: TMaskEdit
      Left = 435
      Top = 69
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 12
      TabOrder = 10
    end
    object MaskEditQTDFaturada: TMaskEdit
      Left = 830
      Top = 92
      Width = 60
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 23
    end
    object MaskEditGTIN_EAN: TMaskEdit
      Left = 1010
      Top = 116
      Width = 149
      Height = 21
      TabStop = False
      MaxLength = 1
      ReadOnly = True
      TabOrder = 24
      Visible = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 544
    Width = 1283
    Height = 113
    Align = alBottom
    Color = clGradientActiveCaption
    ParentColor = False
    TabOrder = 3
    TabStop = True
    object Label34: TLabel
      Left = 32
      Top = 41
      Width = 54
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 4
      Top = 15
      Width = 83
      Height = 13
      Caption = 'Valor Mercadoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 170
      Top = 36
      Width = 56
      Height = 13
      Caption = 'Valor ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 337
      Top = 36
      Width = 43
      Height = 13
      Caption = 'Valor IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 464
      Top = 12
      Width = 54
      Height = 13
      Caption = 'Valor Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 470
      Top = 63
      Width = 48
      Height = 13
      Caption = 'Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 170
      Top = 11
      Width = 56
      Height = 13
      Caption = 'Base ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelICMSFRETE: TLabel
      Left = 463
      Top = 37
      Width = 56
      Height = 13
      Caption = 'ICMS Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPL: TLabel
      Left = 651
      Top = 39
      Width = 66
      Height = 13
      Caption = 'Peso L'#237'quido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelPB: TLabel
      Left = 662
      Top = 65
      Width = 55
      Height = 13
      Caption = 'Peso Bruto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 591
      Top = 12
      Width = 126
      Height = 13
      Caption = 'Quantidade Esp'#233'cie Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 338
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Base IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label52: TLabel
      Left = 177
      Top = 61
      Width = 47
      Height = 13
      Caption = 'Valor PIS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 311
      Top = 63
      Width = 69
      Height = 13
      Caption = 'Valor COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label58: TLabel
      Left = 4
      Top = 62
      Width = 83
      Height = 13
      Caption = 'Valor Diferimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditVLTOTNF: TMaskEdit
      Left = 86
      Top = 33
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object MaskEditVLTOTMER: TMaskEdit
      Left = 87
      Top = 7
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object MaskEditVLTOTICMS: TMaskEdit
      Left = 227
      Top = 28
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 4
      Text = '0'
    end
    object MaskEditVLTOTIPI: TMaskEdit
      Left = 380
      Top = 28
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 7
      Text = '0'
    end
    object MaskEdit36: TMaskEdit
      Left = 519
      Top = 4
      Width = 73
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 9
      Text = '0'
    end
    object MaskEdit37: TMaskEdit
      Left = 519
      Top = 57
      Width = 73
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 11
      Text = '0'
    end
    object MaskEditBASEICMS: TMaskEdit
      Left = 227
      Top = 3
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
    object MaskEditICMSFRETE: TMaskEdit
      Left = 519
      Top = 29
      Width = 73
      Height = 21
      TabStop = False
      TabOrder = 10
      Text = '0'
      OnKeyPress = MaskEditICMSFRETEKeyPress
    end
    object MaskEditPESOLIQT: TMaskEdit
      Left = 718
      Top = 31
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 12
      Text = '0'
      OnExit = MaskEditPESOLIQTExit
      OnKeyPress = MaskEditPESOLIQTKeyPress
    end
    object MaskEditPESOBRUT: TMaskEdit
      Left = 718
      Top = 59
      Width = 83
      Height = 21
      TabStop = False
      MaxLength = 6
      ReadOnly = True
      TabOrder = 13
      Text = '0'
      OnExit = MaskEditPESOBRUTExit
      OnKeyPress = MaskEditPESOBRUTKeyPress
    end
    object MaskEditNFQUANTIDA: TMaskEdit
      Left = 718
      Top = 4
      Width = 83
      Height = 21
      Hint = 'Quantidade da Esp'#233'cie'
      TabStop = False
      MaxLength = 8
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Text = '0'
      OnExit = MaskEditNFQUANTIDAExit
      OnKeyPress = MaskEditNFQUANTIDAKeyPress
    end
    object MaskEditBASEIPI: TMaskEdit
      Left = 381
      Top = 3
      Width = 82
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 6
      Text = '0'
    end
    object MaskEditVLTOTPIS: TMaskEdit
      Left = 227
      Top = 57
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 5
      Text = '0'
    end
    object MaskEditVLTOTCOFINS: TMaskEdit
      Left = 379
      Top = 56
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 8
      Text = '0'
    end
    object JvDateEditV1: TJvDateEdit
      Left = 822
      Top = 6
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 15
      Visible = False
    end
    object JvDateEditV2: TJvDateEdit
      Left = 822
      Top = 30
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 16
      Visible = False
    end
    object JvDateEditv3: TJvDateEdit
      Left = 822
      Top = 53
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 17
      Visible = False
    end
    object JvDateEditV4: TJvDateEdit
      Left = 918
      Top = 6
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 18
      Visible = False
    end
    object JvDateEditV5: TJvDateEdit
      Left = 918
      Top = 30
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 19
      Visible = False
    end
    object JvDateEditV6: TJvDateEdit
      Left = 918
      Top = 53
      Width = 95
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ButtonWidth = 26
      TabOrder = 20
      Visible = False
    end
    object MaskEditDiferimento: TMaskEdit
      Left = 86
      Top = 57
      Width = 83
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 511
    Width = 1283
    Height = 33
    Align = alBottom
    Color = clGradientActiveCaption
    ParentColor = False
    TabOrder = 2
    TabStop = True
    object MaskEditVALIDADOR_PEDIDO: TMaskEdit
      Left = 167
      Top = 7
      Width = 54
      Height = 21
      MaxLength = 8
      TabOrder = 0
      Text = '0'
      Visible = False
      OnKeyPress = MaskEdit19KeyPress
    end
    object JvNavPanelHeaderCE: TJvNavPanelHeader
      Left = 322
      Top = 9
      Width = 679
      Height = 18
      Caption = 'ATEN'#199#195'O: GERAR CE COM XX%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
      ColorFrom = clRed
      ColorTo = clMaroon
      ImageIndex = 0
    end
    object BitBtnIncluiItem: TJvXPButton
      Left = 17
      Top = 6
      Width = 113
      Hint = 'BitBtnIncluiItem'
      Caption = '&Inclui '#205'tem'
      TabOrder = 2
      OnClick = BitBtnIncluiItemClick
    end
  end
  object JvNavPanelHeader2: TJvNavPanelHeader
    Left = 0
    Top = 657
    Width = 1283
    Height = 19
    Align = alBottom
    Caption = 
      'F2 =>Transportadora F3 =>Natureza da Opera'#231#227'o (CFOP)   F4 =>Clas' +
      'sifisca'#231#227'o Fiscal F5 =>Cond.Pg. F6 =>Obs.Fiscal F7 =>Ben.Fiscal ' +
      'F8 =>Cliente F9=>Fornecedor F10 =>Sit.Tribut. F11=> Carga'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ImageIndex = 0
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 676
    Width = 1283
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 5
    object BitBtnIncluir: TBitBtn
      Left = 6
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Incluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtnExcluir: TBitBtn
      Left = 98
      Top = 5
      Width = 86
      Height = 25
      Caption = 'Excluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtnGravar: TBitBtn
      Left = 191
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Gravar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object BitBtnAlterar: TBitBtn
      Left = 283
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Alterar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object Cancelar: TBitBtn
      Left = 376
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtnSair: TBitBtn
      Left = 469
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
  end
end
