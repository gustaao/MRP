object TelaAgendamentoRapido: TTelaAgendamentoRapido
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Agendamento]'
  ClientHeight = 330
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCorpo: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 276
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 4
      Width = 38
      Height = 19
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 186
      Top = 4
      Width = 40
      Height = 19
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 305
      Top = 4
      Width = 86
      Height = 19
      Caption = 'Especialista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 184
      Top = 58
      Width = 54
      Height = 19
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 32
      Top = 227
      Width = 95
      Height = 19
      Caption = 'Observa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 33
      Top = 171
      Width = 103
      Height = 19
      Caption = 'Procedimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 58
      Width = 40
      Height = 19
      Caption = 'Fone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 32
      Top = 115
      Width = 77
      Height = 19
      Caption = 'Restri'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object MaskEditProcedimento: TMaskEdit
      Left = 33
      Top = 192
      Width = 287
      Height = 27
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object MaskeditData: TDateTimePicker
      Left = 32
      Top = 24
      Width = 137
      Height = 27
      Date = 42552.641925949080000000
      Format = 'dd/mm/yyyy'
      Time = 42552.641925949080000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object MaskeditHora: TDateTimePicker
      Left = 185
      Top = 24
      Width = 97
      Height = 27
      Date = 42552.000000000000000000
      Format = 'hh:mm'
      Time = 42552.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object MaskEditEspecialista: TMaskEdit
      Left = 305
      Top = 24
      Width = 232
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object MaskEditOBS: TMaskEdit
      Left = 32
      Top = 248
      Width = 505
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 300
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 192
      Width = 288
      Height = 27
      DragCursor = crArrow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CDPROCEDIMENTO'
      ListField = 'DESCRICAO'
      ListSource = dsProc
      ParentFont = False
      TabOrder = 7
    end
    object MaskEditCliente: TMaskEdit
      Left = 184
      Top = 80
      Width = 353
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object MaskEditFone: TMaskEdit
      Left = 32
      Top = 80
      Width = 138
      Height = 27
      EditMask = '(00)0000-00009;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 3
      OnExit = MaskEditFoneExit
    end
    object GroupBoxCadastroRapido: TGroupBox
      Left = 543
      Top = 0
      Width = 349
      Height = 276
      Align = alRight
      Caption = 'Cadastramento R'#225'pido de Clientes:'
      TabOrder = 9
      Visible = False
      object Label6: TLabel
        Left = 16
        Top = 17
        Width = 39
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit1
      end
      object Label9: TLabel
        Left = 16
        Top = 100
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
        FocusControl = DBEdit2
      end
      object Label10: TLabel
        Left = 230
        Top = 100
        Width = 42
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit3
      end
      object Label11: TLabel
        Left = 16
        Top = 142
        Width = 32
        Height = 13
        Caption = 'Bairro:'
        FocusControl = DBEdit4
      end
      object Label12: TLabel
        Left = 230
        Top = 142
        Width = 82
        Height = 13
        Caption = 'Nasc./Funda'#231#227'o:'
        FocusControl = DBEdit5
      end
      object Label13: TLabel
        Left = 16
        Top = 183
        Width = 28
        Height = 13
        Caption = 'Fone:'
        FocusControl = DBEdit6
      end
      object Label14: TLabel
        Left = 184
        Top = 183
        Width = 37
        Height = 13
        Caption = 'Celular:'
        FocusControl = DBEdit7
      end
      object Label15: TLabel
        Left = 16
        Top = 58
        Width = 57
        Height = 13
        Caption = 'Nome Red.:'
        FocusControl = DBEdit8
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 33
        Width = 318
        Height = 21
        DataField = 'NOME'
        DataSource = dsCli
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 116
        Width = 208
        Height = 21
        DataField = 'ENDERECO'
        DataSource = dsCli
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 230
        Top = 116
        Width = 104
        Height = 21
        DataField = 'NUMERO'
        DataSource = dsCli
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 158
        Width = 209
        Height = 21
        DataField = 'BAIRRO'
        DataSource = dsCli
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 233
        Top = 158
        Width = 101
        Height = 21
        DataField = 'NASC_FUNDACAO'
        DataSource = dsCli
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 199
        Width = 147
        Height = 21
        DataField = 'FONE'
        DataSource = dsCli
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 187
        Top = 199
        Width = 147
        Height = 21
        DataField = 'FONE2'
        DataSource = dsCli
        TabOrder = 7
      end
      object BitBtnIncluir: TBitBtn
        Left = 16
        Top = 234
        Width = 90
        Height = 30
        Caption = 'Incluir'
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF000571
          0A0008750D0024B53B0029B942002ABA44002EBD4A002FBF4C0033C1500034C2
          520035C3540037C5570039C659003BC85C003CC95E003FCC630040CC650045D0
          6B0046D16C0049D472004BD675004ED8790050D97B0051DA7E000E80AA001788
          AF000B86B200098AB700078CBA00198EB700118EB9000E91BE001E94BC002898
          BA0055DD810056DF850058E087000493C4000997C7000C9BCB000A9DCE00229B
          C20015AFD90026A0C80021AACF0035A0C30030AACA0032AACE003DAACC003FB0
          CB0031AED7003DBDDA0039B8DE0029BBE00056B1CE0052BDDB0068B0CA006BBD
          D70019C7F1001BD4FE002FC6E70026C2E9003ECDE9002CD3F9002ED8FE003CE0
          FE0054C0D40059C4D70059C2DD006FC2D60062C3DE007CC0D5007AC6DF0043C8
          E90054DFFE0060CEEA0079CFE9006CD4EE0064D9E90076DFE9007DDFE90055E0
          FF006BE3F40060ECFE0075E2FA007BE8FF0071F2FE008FD0E60083DFE9008ADA
          EB0094DFE90081DBF100A4DFEA0095EBFD0095EEFE009EEDFF0084F3F90080F5
          FC008FF6FB0083F8FE0093F2FE0097F9FE0094FDFE0099FFFE009EFFFE00AFE8
          F600B4EEF300A4FFFE00A8F9FE00ADFBFE00AAFFFE00B6F1FF00BCF2F800B3F9
          FF00B3FFFE00B9FFFE00C3DFEA00CCF6FF00C9FFFE00CFFFFF00D1F6FE00DFFF
          FF00E5FFFF00F0F7FA00F5FFFF00FAFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000202020200000000000000000000000000000000000000
          0002040302000000000000000000001818181818181818180002060402000000
          000000000018182C2C2A3D494B46301D18020906020000000000000018214E53
          413B4051555D4D3427020D0902000000000000001C4F6353413B405102020202
          02020F0D02020202020200001C4F6353413B405102242317151311100D090906
          040200001C4F6353413B40510224242323151311100F0D09060200001C4F6353
          413B4051020101010102171302010101020100001C4F6353413B4051555D4D34
          2702231702000000000000001C4F65645D5F6F757878694C3202242302000000
          000000001C6A7059442F29202D3639485702242402000000000000001B453134
          3C3A3F4A545B372B1E02242402000000000000001A436153413B4051555D4D34
          2701020202000000000000001C4F6353413B4051555D4D342725180000000000
          000000001C4F6353413B4051555D4D342725180000000000000000001C4F6353
          413B4051555D4D342725180000000000000000001C4F6353413B4051555D4D34
          2825180000000000000000001C4F6353413B4051555D4D342725180000000000
          000000001C506D716D6D6767676762523527180000000000000000001C747D7A
          77716B6767676765563E180000000000000000001C387B7C7977716767676767
          612F18000000000000000000001C1F47475C5A58504F42421918000000000000
          000000000000001C1C1C1C1C1C1C1C1C00000000000000000000}
        ParentDoubleBuffered = False
        TabOrder = 8
        OnClick = BitBtnIncluirClick
      end
      object BitBtnGravar: TBitBtn
        Left = 130
        Top = 234
        Width = 90
        Height = 30
        Caption = 'Gravar'
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF00631E
          1B00811E000005669500046C9E000A6E9A000271A5000775A6000274A9000578
          AC000F7BAA00017AB400037FB700041FE500011FFA00082AFA001135FA001D41
          FB003859FB005674FB001680A7001183B1001F89B2001489B8001C95BB002D90
          BA00289CBC004D9CBB000386C000099ACE001195C1001D95C0003C9DC00016A9
          D70026ABCF003AAFC7003FB4CB0023A5D40038ABD0003FB1D3000CB7ED0014B1
          E2001BB6E00027BFE2002BB8E20050ABCB0054B1CA005BB4D5005FB6D50062AF
          C9006681FB000DC7FE0018C6F7001ACCFE0025D7FE003AD6FE0076C2DE0045C0
          E30049CEE20051C7E9005BD5E2005CD5E20050DAF0005AD9F80070CFE50063D5
          E20069D5E20067D0ED007BD5E20045E6FE0056EEFE006AEFF70060E1FF007DE5
          FC007DE9FE007AEEFE0066F2FB0069F6FE0076F3FA007FF7FE007BFCFE00899E
          FC009AADFC008ED5E300B2D5E30087E7FF0081FFFE0087FFFE008EFFFE0092F7
          FE009FF7FF0095FFFE0098FAFE009FFFFE00A0E9EF00AAEEF600A3EDFF00A6FF
          FE00BDF3FF00BAFFFE00C1CCFC00D5DDFE00C4F4FF00C1FFFF00D5FFFF00DDFF
          FF00E9EDFE00EBF4F800F2FFFF00F8FFFF00FEFEFE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000020202020202020202020200000000000000000000000000026E6E6E6E
          65116A6E6E0200000000000000030303030303026E6E6E520F0E516E6E020000
          00000003031E1E1D292C39026E6E130E0E0E106E6E020000000003143A453633
          353748026A110E0E130F0E526E0200000000083C4D45363335374802100E0F52
          6E320E106E0200000000083C4D453633353748025111646E6E6A0F0E32020000
          0000083C4D453633353748026E6E6E6E6E6E510E0E0100000000083C4D453633
          353748026E6E6E6E6E6E6E120E0D00000000083C4D453633353748026E6E6E6E
          6E6E6E6A110E0E000000083C4F4B4B55606266020202020202020202010D0E0E
          0000085E5F40271F150A16202D3038300300000000000E0E0E00062E1A222A28
          34373F4326170619030000000000000E0E0E04244C453633353748493B251C08
          03000000000000000000063C4D453633353748493B251C0B0300000000000000
          0000083C4D453633353748493B251C0B03000000000000000000083C4D453633
          353748493B251C0B03000000000000000000083C4D453633353748493B251C0B
          03000000000000000000083C4D453633353748493B251C0B0300000000000000
          000008415C5A595B565656564E3E210B0300000000000000000008546E696761
          585656565650462B03000000000000000000081B6B6C68635C58505656564718
          0300000000000000000000080931315344423C3C232305030000000000000000
          0000000000080808080808080808000000000000000000000000}
        ParentDoubleBuffered = False
        TabOrder = 9
        OnClick = BitBtnGravarClick
      end
      object BitBtnCancelar: TBitBtn
        Left = 244
        Top = 234
        Width = 90
        Height = 30
        Caption = 'Cancelar'
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF000000
          820005669500046C9E000A6E9A000271A5000775A6000274A9000578AC000F7B
          AA00017AB400037FB7000017EF000118EE000018F300021EF3000018F600001C
          FB00001DFE000724ED001134ED000624F0000927F0000A2BF3000D2EF3000C2E
          F6000626FA000425FF00082AFF000B2EFF000E30F3000A31FC000D32FF000D35
          FF001133F0001336F0001032F6001134F600193FF0001135FB00143BF800123B
          FF00133EFF001D42ED001A41F7001540FF001844FF00244BEF002049F8002250
          FF002856F8002A59FF00305FFB001680A7001183B1001F89B2001489B8001C95
          BB002D90BA00289CBC004D9CBB000386C000099ACE001195C1001D95C0003C9D
          C00016A9D70026ABCF003AAFC7003FB4CB0023A5D40038ABD0003FB1D3000CB7
          ED0014B1E2001BB6E00027BFE2002BB8E20054B1CA0047B2D4005BB4D50062AF
          C9000DC7FE0018C6F7001ACCFE0025D7FE003AD6FE0076C2DE0045C0E30049CE
          E20051C7E9005BD5E2005CD5E20050DAF0005AD9F80070CFE50063D5E20069D5
          E20067D0ED007BD5E20045E6FE0056EEFE006AEFF70060E1FF007DE5FC007DE9
          FE007AEEFE0066F2FB0069F6FE0076F3FA007FF7FE007BFCFE008ED5E300B2D5
          E30087E7FF0081FFFE0087FFFE008EFFFE0092F7FE009FF7FF0095FFFE0098FA
          FE009FFFFE00A0E9EF00AAEEF600A3EDFF00A6FFFE00BDF3FF00BAFFFE00C4F4
          FF00C1FFFF00D5FFFF00DDFFFF00EBF4F800F2FFFF00F8FFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000101000000000000010100000000000000000000000000011F
          1501000000000110110100000000000002020202020201191F13010000011011
          0C010000000002023F3F3E4A4D584F01191F1901011011100100000000023559
          645552545667685A011E1F1A111110010000000000075B6C645552545667685A
          4601241C1A1101000000000000075B6C645552545667685A4601271F1C240100
          0000000000075B6C645552545667685A012C2E24242919010000000000075B6C
          645552545667680130312601012429240100000000075B6C6455525456670132
          332B01020001142D2401000000075B6E6A6A727D7F8101342F010A0200000124
          2801000000077B7C5F4840360937410101575002000000010100000000054E3B
          434B4953565E624738053A0200000000000000000003456B645552545667685A
          463D0702000000000000000000055B6C645552545667685A463D0A0200000000
          0000000000075B6C645552545667685A463D0A02000000000000000000075B6C
          645552545667685A463D0A02000000000000000000075B6C645552545667685A
          463D0A02000000000000000000075B6C645552545667685A463D0A0200000000
          0000000000076079777678737373736D5D420A02000000000000000000077187
          84827E75737373736F654C02000000000000000000073C8586838079756F7373
          7366390200000000000000000000070851517063615B5B444404020000000000
          0000000000000000070707070707070707000000000000000000}
        ParentDoubleBuffered = False
        TabOrder = 10
        OnClick = BitBtnCancelarClick
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 74
        Width = 318
        Height = 21
        DataField = 'APELIDO'
        DataSource = dsCli
        TabOrder = 1
      end
    end
    object CheckBox1: TCheckBox
      Left = 472
      Top = 137
      Width = 54
      Height = 17
      TabStop = False
      Caption = 'PNG'
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object MaskEdit1: TMaskEdit
      Left = 33
      Top = 136
      Width = 424
      Height = 27
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object PanelBotoes: TPanel
    Left = 0
    Top = 276
    Width = 892
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtnAgendar: TBitBtn
      Left = 24
      Top = 6
      Width = 145
      Height = 38
      Caption = 'Agendar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtnAgendarClick
    end
    object BitBtnDesmarcar: TBitBtn
      Left = 196
      Top = 6
      Width = 145
      Height = 38
      Caption = 'Desmarcar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtnSair: TBitBtn
      Left = 368
      Top = 6
      Width = 145
      Height = 38
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnSairClick
    end
  end
  object QAG: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select agenda.cdagenda,'
      '          agenda.cdtosador,'
      '       tosador.nome,'
      '       agenda.data,'
      '       agenda.hora,'
      '       agenda.cdprocedimento,'
      '       procedimentos.descricao,'
      '       agenda.observacoes,'
      '       agenda.cadastrado_por,'
      '       agenda.cadastrado_em,'
      '      agenda.cdcliente'
      'from agenda'
      'left join tosador on tosador.cdtosador = agenda.cdtosador'
      
        'left join procedimentos on procedimentos.cdprocedimento = agenda' +
        '.cdprocedimento'
      'left join clientes on clientes.cdcliente = agenda.cdcliente')
    SQLConnection = DMPrincipal.SQLCon
    Left = 902
    Top = 171
    object QAGCDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAGCDTOSADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Especialista'
      FieldName = 'CDTOSADOR'
      ProviderFlags = [pfInUpdate]
    end
    object QAGNOME: TStringField
      DisplayLabel = 'Especialista'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object QAGDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object QAGHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object QAGCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd Procedimento'
      FieldName = 'CDPROCEDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object QAGOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object QAGCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object QAGCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object QAGCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QAGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspAG: TDataSetProvider
    DataSet = QAG
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 901
    Top = 123
  end
  object cdsAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAG'
    Left = 902
    Top = 70
    object cdsAGCDAGENDA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDAGENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAGCDTOSADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Especialista'
      FieldName = 'CDTOSADOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGNOME: TStringField
      DisplayLabel = 'Especialista'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsAGDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsAGHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!90:00;1;_'
    end
    object cdsAGCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Procedimento'
      FieldName = 'CDPROCEDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGOBSERVACOES: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'OBSERVACOES'
      ProviderFlags = []
      Size = 300
    end
    object cdsAGCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsAGCADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsAGCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsAGDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAG: TDataSource
    DataSet = cdsAG
    Left = 898
    Top = 19
  end
  object qProc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from procedimentos'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 947
    Top = 169
  end
  object dspProc: TDataSetProvider
    DataSet = qProc
    UpdateMode = upWhereKeyOnly
    Left = 948
    Top = 121
  end
  object cdsProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProc'
    Left = 952
    Top = 70
    object cdsProcCDPROCEDIMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDPROCEDIMENTO'
      Required = True
    end
    object cdsProcDESCRICACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dsProc: TDataSource
    DataSet = cdsProc
    Left = 953
    Top = 20
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from clientes'
      ''
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 995
    Top = 169
  end
  object dspCli: TDataSetProvider
    DataSet = qCli
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 996
    Top = 121
  end
  object cdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli'
    Left = 1000
    Top = 70
    object cdsCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsCliCDPESSOA: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPESSOA'
    end
    object cdsCliCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDMASCOTE'
    end
    object cdsCliNOME: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsCliAPELIDO: TStringField
      DisplayLabel = 'Nome Red.:'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsCliENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsCliNUMERO: TStringField
      DisplayLabel = 'N'#250'mero:'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsCliBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsCliCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsCliCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsCliUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCliIE_RG: TStringField
      DisplayLabel = 'RG/I.E.:'
      FieldName = 'IE_RG'
    end
    object cdsCliDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'DATA_CADASTRO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsCliTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Pessoa:'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsCliPNG: TIntegerField
      DisplayLabel = 'PNG:'
      FieldName = 'PNG'
    end
    object cdsCliEMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsCliRESTRICAO: TIntegerField
      DisplayLabel = 'Restri'#231#227'o:'
      FieldName = 'RESTRICAO'
    end
    object cdsCliTIPO_RESTRICAO: TStringField
      DisplayLabel = 'Tipo Restri'#231#227'o:'
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
    object cdsCliFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      EditMask = '(00)0000-00009;0;_'
      Size = 11
    end
    object cdsCliFONE2: TStringField
      DisplayLabel = 'Celular:'
      FieldName = 'FONE2'
      EditMask = '(00)0000-00009;0;_'
      Size = 11
    end
    object cdsCliNASC_FUNDACAO: TDateField
      DisplayLabel = 'Nasc./Funda'#231#227'o:'
      FieldName = 'NASC_FUNDACAO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsCliCOD_IBGE: TStringField
      DisplayLabel = 'C'#243'digo IBGE'
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsCliPAIS: TStringField
      DisplayLabel = 'Pa'#237's:'
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsCliCOD_PAIS: TStringField
      DisplayLabel = 'C'#243'd. Pa'#237's:'
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsCliSITE: TStringField
      DisplayLabel = 'website:'
      FieldName = 'SITE'
      Size = 150
    end
    object cdsCliEMAIL_NFE: TStringField
      DisplayLabel = 'Email NFe:'
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsCliCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCliALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsCliCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ:'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsCliCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Cadastro:'
      FieldName = 'CADASTRADO_EM'
    end
    object cdsCliALTERADO_EM: TDateField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
    end
    object cdsCliLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Limite Cr'#233'dito:'
      FieldName = 'LIMITE_CREDITO'
    end
    object cdsCliCDENQUADRAMENTO_IMPOSTO: TIntegerField
      DisplayLabel = 'C'#243'd. Enquadramento:'
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
  end
  object dsCli: TDataSource
    DataSet = cdsCli
    Left = 1001
    Top = 20
  end
end
