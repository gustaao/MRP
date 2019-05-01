object Pedidos: TPedidos
  Left = 0
  Top = 0
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Pedidos]'
  ClientHeight = 512
  ClientWidth = 1149
  Color = clGradientActiveCaption
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
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 1149
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Vendas'
    end
    object Label2: TLabel
      Left = 792
      Top = 9
      Width = 102
      Height = 13
      Caption = 'Forma de Pagamento'
    end
  end
  object pnlMeio: TPanel
    Left = 0
    Top = 22
    Width = 1149
    Height = 221
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 201
      Width = 73
      Height = 13
      Caption = 'Itens da Venda'
    end
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 423
    Width = 1149
    Height = 89
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Shape3: TShape
      Left = 885
      Top = 14
      Width = 14
      Height = 14
      Brush.Color = clGreen
    end
    object Label16: TLabel
      Left = 903
      Top = 55
      Width = 50
      Height = 13
      Caption = 'Devolu'#231#227'o'
    end
    object Shape1: TShape
      Left = 885
      Top = 35
      Width = 14
      Height = 14
      Brush.Color = clBlue
    end
    object Label15: TLabel
      Left = 903
      Top = 34
      Width = 53
      Height = 13
      Caption = 'Or'#231'amento'
    end
    object Shape2: TShape
      Left = 885
      Top = 56
      Width = 14
      Height = 14
      Brush.Color = clRed
    end
    object Label14: TLabel
      Left = 903
      Top = 14
      Width = 30
      Height = 13
      Hint = 'N'#195'O FATURADO'
      Caption = 'Venda'
      ParentShowHint = False
      ShowHint = True
    end
    object RadioGroupPesquisa: TRadioGroup
      Left = 3
      Top = 6
      Width = 225
      Height = 75
      Caption = 'Tipo de busca:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'N'#186' Pedido'
        'Cliente'
        'CPF/CNPJ'
        'Data')
      TabOrder = 0
      TabStop = True
      OnClick = RadioGroupPesquisaClick
    end
    object GroupBox1: TGroupBox
      Left = 238
      Top = 5
      Width = 416
      Height = 76
      Caption = 'Pesquisa'
      TabOrder = 1
      TabStop = True
      object Label4: TLabel
        Left = 10
        Top = 59
        Width = 16
        Height = 13
        Caption = 'de:'
      end
      object Label5: TLabel
        Left = 130
        Top = 59
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object BitBtnGeral: TBitBtn
        Left = 330
        Top = 28
        Width = 81
        Height = 27
        Hint = 'Mostra Geral (s/ Pedidos Baixados)'
        Caption = '&Geral'
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF000E80
          AA001788AF000B86B2000C85B000098AB700078CBA00078EBD00198EB700118E
          B9000E91BE001E94BC002898BA000493C4000997C7000C9BCB000A9DCE00229B
          C20015AFD90026A0C80021AACF0035A0C30030AACA0032AACE003DAACC003FB0
          CB0031AED7003DBDDA0039B8DE0029BBE00046A6C90056B1CE0052BDDB0068B0
          CA006BBDD70019C7F1001BD4FE002FC6E70026C2E9003ECDE9002CD3F9002ED8
          FE003CE0FE0054C0D40059C4D70059C2DD006FC2D60062C3DE007CC0D50076C4
          DF007AC6DF0043C8E90054DFFE0060CEEA0079CFE9006CD4EE0064D9E90076DF
          E9007DDFE90055E0FF006BE3F40060ECFE0075E2FA007BE8FF0071F2FE008FD0
          E60083DFE9008ADAEB0094DFE90081DBF100A4DFEA0095EBFD0095EEFE009EED
          FF0084F3F90080F5FC008FF6FB0083F8FE0093F2FE0097F9FE0094FDFE0099FF
          FE009EFFFE00AFE8F600B4EEF300A4FFFE00A8F9FE00ADFBFE00AAFFFE00B6F1
          FF00BCF2F800B3F9FF00B3FFFE00B9FFFE00C3DFEA00CCF6FF00C9FFFE00CFFF
          FF00D1F6FE00DFFFFF00E5FFFF00F0F7FA00F5FFFF00FAFFFF00000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010101010101010101000000000000
          0000000000000001011414122633352F1808010100000000000000000000010C
          383D2A24293B3F47371C0F040100000000000000000006394D3D2A24293B3F47
          371C0F060100000000000000000006394D3D2A24293B3F47371C0F0D01000000
          00000000000006394D3D2A24293B3F47371C0F0D010000000000000000000639
          4D3D2A24293B3F47371C0F0D0100000000000000000006394D3D2A24293B3F47
          371C100D0100000000000000000006394F4E4749595F626253361A0D01000000
          00000000000006545A432D17110B151F2232413101000000000000000000052E
          191C252328343E452013091E01000000000000000000042D4B3D2A24293B3F47
          371C0F060100000000000000000006394D3D2A24293B3F47371C0F0D01000000
          00000000000006394D3D2A24293B3F47371C0F0D010000000000000000000639
          4D3D2A24293B3F47371C0F0D0100000000000000000006394D3D2A24293B3F47
          371C100D0100000000000000000006394D3D2A24293B3F47371C0F0D01000000
          000000000000063A575B5757515151514C3C1D0F01000000000000000000065E
          6764615B55515151514F4027010000000000000000000621656663615B515151
          51514B170100000000000000000000060A30304644423A392B2B020100000000
          0000000000000000000606060606060606060000000000000000}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtnGeralClick
      end
      object BitBtnOK: TBitBtn
        Left = 248
        Top = 28
        Width = 81
        Height = 27
        Caption = '&OK'
        Default = True
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF000453
          79004551590068535800765857007A5856007A6362007B6563007A696D007570
          6D006D6E7400706C7D00864A4300804A4400814C4700824E4900844F4B008753
          4D008E5C58008E665F0093665C0095675C0096685E0082696900976960009A68
          60009E6E67009F7369008A7376008F737600877078008972780093757B00A074
          6B00A5746900A0766C00A9776A00A77E6D00AA7A6D00AA797400B2817700B186
          7900B5907D00BD957E00EAA36500E9AB6B00EAAB6C00EDAF6D00EBAF7400EBB0
          7600045982001A5E8000175A97001F5D9700185A990005628F00016391000566
          9500036C9C00046D9E000A6E9A000B709D003B608200175EA5001A5DA7000271
          A5000274A9000578AC00037FB700486B8B00507683006E7981001F73CF000C67
          D3001073EA001074F0001680A7001C86AB001D8BB4001C95BB00248FB600289C
          BC003297B400438297007F8489004D9CBB0041A0BC006CACBD00099ACE001195
          C10016A9D70019ACD70026ABCF003AAFC7003FB4CB003FB1D30033B8DC00358A
          E7003A8EE5003590EE002D8CF2002B93FE002F9CFF00359EFF00389FFF0014B1
          E2001BB6E00012BDEF0025BBE30027BFE2002BB8E2003CA7FC0035AAFF004490
          C70044A9C50045ACCE0054B1CA0062AFC90066BBCE0044BDE10040ABFB0040AB
          FC0041AFFF004AB0FA0018C1EF000CC2F7000DC5FB000DC7FE0019C9F8001ACC
          FE0036C7ED0025D7FE003AD3FB003DD3FB0053C2DD006CC7DC0049CEE2005BD5
          E2005CD5E2005BD4F00050DAF00070CFE50063D5E20069D5E2007BD5E20045E6
          FE0056EEFE006AEFF7007DE9FE007AEEFE0066F2FB0069F6FE0076F3FA007FF7
          FE007BFCFE0080808400B18E8400CBA48A00CEA58C00D0A78C00CFAF9000D3B2
          9A00DCB89800F0BF8000E3BD9500C9ACA400D5BFBD00EFC08600F0C48B00F4C7
          8900F8CB8800E2C79C00F3CF9300F0C99700F4CE9800FBD59000F4D19900FFDE
          9A00FFDD9D00FFE19C00D9C1A700DAC7A700DDCCB400EACCA000EFD7A700F6DD
          A500E3D3B600FDE2A500FFEBA700F7E3AF00FFEDAB00FEEEB200F8EBB600FCEB
          B600FCEEB600FEF2B2008BABC7008ED5E300B2D5E30081FFFE0087FFFE008EFF
          FE0092F7FE009FF7FF0095FFFE0098FAFE009FFFFE00A0E9EF00AAEEF600A6FF
          FE00BAFFFE00F2E7C200F2EDCD00FCF3C100FEF7C500FFFEC500FDFAC900FFFF
          CB00FFFFCD00FBF4D000FFFFD100FFFFD400FFFFD900FEFCDD00C1FFFF00D5FF
          FF00DDFFFF00FEF4E500FFFFE600FFFFEB00EBF4F800F2FFFF00FFFFFA00F8FF
          FF00FFFFFE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0209000000000000000000000000000000
          00000000001E3F4054000000003939393939393939390000000000001F344B70
          7100003939595958696E7773503D37370000001C364A68786200394C8891837F
          81848B87724E3B3232001C354A677861000042899791837F81828676564D3B39
          01203E4965786300000042899791837F7C60271A211B160D014548676F640000
          000042899791837D521729B4D3DBBA2A0508C47B64000000000042899791835B
          17A5E4DDDDDDDEDDAB281A640000000000004289979183469CEAE4D7D9D9D9C2
          BEA40D00000000000000428999959513B6E5DDD9D9DDDDBDA9BB260D00000000
          000042CFD08D5F16D4D9D9DDD9D9DDB930B29E100000000000004174515C6A16
          DEDDD9D9DDDDD5A72CB2A2100000000000003B5E96918316D4D9DDD9DDD5B02E
          2EBC9E10000000000000418997918306B4DDD9D9C2ACA3ACC2C2240D00000000
          000042899791835325D7BBA7302EAEE3EAA1100000000000000042899791836B
          0A2BC3B3AAAFD9EAA612100000000000000042899791837F6C47219FB7B8A021
          0310000000000000000042899791837F8184579B060410103300000000000000
          0000428ECDCBCACCC7C7C7C7988C5A443900000000000000000042C6EAE2E0D1
          CCC7C7C7C79A926C390000000000000000004255E6E7E1D2CDC7C7C7C7C7934F
          390000000000000000000042437575C5908F89895D5D3C390000000000000000
          0000000000424242424242424242000000000000000000000000}
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtnOKClick
      end
      object MaskEditPesquisa: TMaskEdit
        Left = 10
        Top = 18
        Width = 230
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object MaskEditDataI: TMaskEdit
        Left = 30
        Top = 48
        Width = 83
        Height = 24
        CharCase = ecUpperCase
        EditMask = '00/00/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
      end
      object MaskEditDataF: TMaskEdit
        Left = 155
        Top = 48
        Width = 83
        Height = 24
        CharCase = ecUpperCase
        EditMask = '00/00/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
      end
    end
    object GroupBox2: TGroupBox
      Left = 780
      Top = 11
      Width = 100
      Height = 70
      TabOrder = 2
      TabStop = True
      object BitBtnSair: TBitBtn
        Left = 10
        Top = 22
        Width = 87
        Height = 27
        Caption = '&Sair'
        DoubleBuffered = True
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFDFDEDE6C6E6F2932332734312D36352F39382F3A382F39382F39382F3938
          2E3938303A392532303F4140FCF9F9000000FFFFFFFFFFFFFFFFFFFEFEFEB2B0
          B06874735A8E8923766D025C53005950005D5100615600625700625700645A00
          645A02786D000600CDC2C4000000FFFFFFFFFFFFFFFFFFFFFFFFBABBB68B8887
          C8BCBEB3B5B474928E396A6718524C19544F205954245E5826605A28615A3475
          70000B06CFC7CA000000FFFFFFFEFEFEFDFDFEDCDCF29292A37E8178A7A7A5B3
          AFB0B6B1B19D9E9E69787638524F2A434128423F304846324A48405E5A000000
          CFCCCC000000FFFFFFFFFFFDFDFDF18A8ACD1F1F8E6D6D7BA2A2979E9E9FA3A3
          A4AAA6A6A09D9D8385846163643F42423739383A3C3C4B4F4E000000CECECE00
          0000FEFEFFD5D5E1CFCFCF6363B40303B53636A582828A99998F9A9A9A9C9D9D
          9595959493938988885D5C5C3636353736364A4848000000CECECE000000D4D4
          ED0F0FA95454C43C3CBE2222D11414CD3A3A9F98988C9F9F979A9A9C9393938B
          8B8B8888885F5F5F333333333333454444000000CECECE000000CCCCE80000B4
          0000D30000CB0101CB0000CE0D0DCC3131A6B3B3999B9B998E8E908686868181
          815D5D5D323232303030414141000000CFCFCF000000CECEE90303B90303D200
          00C70101CA1111CF1B1BD62A2ADD1414AAB0B0928E8E8F9F9F9F8686864E4E4E
          2F2F2F2D2D2D3C3C3C000000CFCFCF000000C6C6E82C2CC45454E24B4BDB4E4E
          DB4848D75757E13E3ED362629EA1A1908A8A8C8F8F8FA4A4A45B5B5B2626262A
          2A2A383838000000D0D0D0000000C4C4E71B1BB76B6BDC6767D87373E26E6EE6
          5757CB6E6E9DACAC969191918989898181819494947171712727272626263636
          36000000CFCFCF000000E1E1F35F5FC27F7FCF5858C27D7DDC7878D86E6EA6A1
          A19A9898978F8F8F888888868686888888545454242424232323323232000000
          D0D0D0000000FFFFFFFFFFFFFFFFFF8A8AD63737AD7676A9A6A6A4A2A29D9494
          948D8D8D8585857E7E7E7575754D4D4D2222222020202E2E2E000000D1D1D100
          0000FFFFFFFFFFFFF8F8FD9D9DDF515197848486AAAAA49A9A9A8C8C8C848484
          7C7C7C7676767272724B4B4B1E1E1E1E1E1E292929000000D1D1D1000000FFFF
          FFFFFFFFFEFEFFF4F4FBB0B0B180807C9A9A9A8E8E8E8181817979797171716B
          6B6B6868684646461C1C1C1B1B1B252525000000D1D1D1000000FFFFFFFFFFFF
          FFFFFFFFFFFEB5B5B380807FA7A7A79D9D9D8E8E8E8484847C7C7C7676767373
          734E4E4E1F1F1F1D1D1D292929000000CECECE000000FFFFFFFFFFFFFFFFFFFF
          FFFFBABABA4040402828281F1F1F1717170F0F0F0A0A0A070707020202000000
          000000000000000000000000DCDCDC000000FFFFFFFFFFFFFFFFFFFFFFFFFCFC
          FCDADADAC3C3C3C5C5C5C8C8C8C8C8C8CACACAC9C9C9CBCBCBCECECED3D3D3D4
          D4D4CECECEDBDBDBFFFFFF000000}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtnSairClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 663
      Top = 11
      Width = 107
      Height = 70
      TabOrder = 3
      TabStop = True
      object BitBtnRelatorios: TJvBitBtn
        Left = 9
        Top = 21
        Width = 90
        Height = 30
        Caption = 'Relat'#243'rios'
        DoubleBuffered = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000FF00FF000066
          0000007F0000986B6600A4787400A87E7900338533003399330012AB25001CB5
          380020B9420025BE4C002AC254002DC55C0030C9620033CB670049C4600055CE
          7600AA807B00AD837D00B2887E0000009A000033FF000B3EFF001C4DFF002E5F
          FF003F6EFF004A79FF000D80AA000A82AF001385AF000682B600078DBB002692
          BF005CD585000C92C000089DCF00129FCB000DA2D40011A7D20020A2CB0035A7
          CD0030BCDD0044BADD005CBEDF0023D7FE0036D9FE004AC5DD0049C1E30049D5
          EE0063DAF50059EAFE006FE6FF006FF8FF0072F9FE007AFEFF00B68B8000BA8E
          8200BE928300C2968500C6998600CA9C8800CEA08900DAA48200D2A38A00D7A7
          8C00DAAB8D00DEAD8E00EECC9700EECC9900F0CE9800F0CF9F00F0CFA000F2D2
          A000F1D2A500F3D4A700F1D4AA00F1D6AC00F3D8AD00F2D7B000F4D9B200F3D9
          B600F4DAB600F4DBB900F4DCB900F4DCBC0092CEE4008DE7FA0082F8FF008CFB
          FE0091FCFE0097FEFF009BFBFC00AFE4F300BAEEF600A0FCFE00A8FFFF00ADFF
          FF00B6F6FF00B3FCFE00B4FFFF00F4DEC100F3DDC400F2DEC800F5E0C200F5E1
          C600F8E3C600F6E2C800F2E0CE00F6E4CC00F8E6CE00F3E3D200F7E7D200F8E6
          D200F8E9D400F4E6D800F5E9DD00F8E9D800F9ECDA00F9EDDD00C6F5FF00C7FF
          FF00D3FFFF00F5ECE300FAEFE100F7EFE800FAF0E100FAF2E600FAF2EA00F8F2
          EE00FCF5ED00E2F9FE00E4FFFF00EBFBFF00FCF6F000FAF6F400FDF8F200FBF8
          F700FDF9F600F1FBFD00F4FFFF00FDFAF800FEFCF800FEFEFE00000000000000
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
          000000000000000000001C1C1C1C1C1C00000504040404040404040404040404
          0420312D2E34572B1C0005666A6654544B4B4B464646464E2059332D2E345730
          241C05676B66664E544B4B464844444B2059332D2E345730241C056B706A6654
          544C4C4C4844464C2059332D2E345730241C0570706B6A6654544C4C4B48444C
          206362788385835D2C1C0573770101010101544C4C010106205E2A2725282921
          561C12747C010B090801665151010B10202F332D2E3457301F1C127B7F010E0C
          0A01665454010E112059332D2E345730241C147D82010E0E0D01666654010E22
          2059332D2E345730241C38828601010101016B6A660101062059332D2E345730
          241C39868E8682027777706B6A666607205A5835375A5F32261C3A8E8E8E8202
          0202020202020207208E8C7A63636161351C3B898E8E8982827C7702716B6B66
          6B238C8379615F5C1E003C8E8E8E8E8E82827C0277716B6A666B202020202020
          00003D898E8E8E8E8E15151515156E6A6A6654540300000000003E8E8E8E8E8E
          8E1518171615726B6A665454030000000000408E8E8E8E8E8E151A1918157772
          6B6B6666030000000000408E8E8E8E8E8E151B1B1A157F77726E6A6603000000
          0000428E8E8E8E8E8E15151515157F7F77726E6A030000000000428E8E8E8E8E
          8E8E8E8E8E89827F7777726E030000000000428E8E8E8E8E8E8E8E8E8E8E8982
          7F7F7272030000000000428E8E8E8E8E8E8E8E8E8E8E8E89827F7F7703000000
          00003F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F0000000000}
        ParentDoubleBuffered = False
        TabOrder = 0
        DropDownMenu = PopupMenu1
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
  end
  object PanelPedidos2: TPanel
    Left = 2
    Top = 28
    Width = 1125
    Height = 187
    BevelOuter = bvNone
    TabOrder = 3
    object PanelPagamentos: TPanel
      Left = 760
      Top = 0
      Width = 365
      Height = 187
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 365
        Height = 187
        Align = alClient
        DataSource = dsPag
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDPEDIDO'
            Title.Alignment = taCenter
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGAMENTO'
            Title.Alignment = taCenter
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGO'
            Title.Alignment = taCenter
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 760
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 760
        Height = 187
        Align = alClient
        DataSource = dsPedidos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CDPEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APELIDO'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Title.Caption = 'Hora:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_EMITIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR'
            Visible = True
          end>
      end
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 243
    Width = 1149
    Height = 180
    Align = alClient
    DataSource = dsItens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CDPEDIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTADOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_UNITARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_UN_SAIDA'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Visible = True
      end>
  end
  object qPedidos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select p.cdpedido,'
      '       p.cdvendedor,'
      '       p.cdusuario,'
      '       p.cdcliente,'
      '       p.data,'
      '       p.hora,'
      '       p.valor_venda,'
      '       p.subtotal,'
      '       p.desconto,'
      '       p.acrescimo,'
      '       p.valor_total,'
      '       p.nf_emitida,'
      '       p.cdpagamento,'
      '       p.cdpessoa,'
      '       p.tipo,'
      '       case when p.cdcliente is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                 select f.nome, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                 select t.nome, t.cdpessoa from ' +
        'transportadores t)'
      '              where cdpessoa = p.cdpessoa )'
      '       end as apelido,'
      '       u.nome as usuario,'
      '       v.nome as vendedor'
      ''
      'from pedidos p'
      'left join clientes c on c.cdcliente = p.cdcliente'
      'left join usuarios u on u.cdusuario = p.cdusuario'
      'left join vendedores v on v.cdvendedor = p.cdvendedor'
      'order by p.cdpedido desc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 897
    Top = 355
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidos'
    Left = 900
    Top = 248
    object cdsPedidosCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsPedidosCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
    end
    object cdsPedidosCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio:'
      FieldName = 'CDUSUARIO'
    end
    object cdsPedidosCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente:'
      FieldName = 'CDCLIENTE'
    end
    object cdsPedidosDATA: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA'
      EditMask = '00/00/0000;1;_'
    end
    object cdsPedidosHORA: TTimeField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsPedidosVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsPedidosSUBTOTAL: TFloatField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsPedidosDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsPedidosACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsPedidosVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsPedidosNF_EMITIDA: TIntegerField
      DisplayLabel = 'NFe Emitida:'
      FieldName = 'NF_EMITIDA'
    end
    object cdsPedidosCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagto:'
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPedidosAPELIDO: TStringField
      DisplayLabel = 'Cliente:'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsPedidosUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsPedidosVENDEDOR: TStringField
      DisplayLabel = 'Vendedor:'
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object cdsPedidosCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
    object cdsPedidosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dspPedidos: TDataSetProvider
    DataSet = qPedidos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 896
    Top = 303
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 901
    Top = 198
  end
  object qItens: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pi.cdpedido_itens,'
      '       pi.cdpedido,'
      '       pi.cdproduto,'
      '       pi.valor_unitario,'
      '       pi.qtd,'
      '       pi.valor_total,'
      '       pi.subtotal,'
      '       pi.desconto,'
      '       pi.acrescimo,'
      '       pi.cdvendedor,'
      '       pi.contador,'
      '       p.descricao,'
      '       p.unid_saida,'
      '       p.tipo_un_saida,'
      '       p.marca'
      'from pedido_itens pi'
      'join produtos     p on p.cdproduto = pi.cdproduto'
      'where pi.cdpedido=:cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 961
    Top = 352
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDPEDIDO'
    MasterFields = 'CDPEDIDO'
    MasterSource = dsPedidos
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspItens'
    Left = 964
    Top = 245
    object cdsItensCDPEDIDO_ITENS: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPEDIDO_ITENS'
      Required = True
    end
    object cdsItensCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
      Required = True
    end
    object cdsItensCDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto:'
      FieldName = 'CDPRODUTO'
    end
    object cdsItensVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsItensVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensSUBTOTAL: TFMTBCDField
      DisplayLabel = 'SubTotal:'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto:'
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsItensACRESCIMO: TFloatField
      DisplayLabel = 'Acrescimo:'
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsItensCDVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor:'
      FieldName = 'CDVENDEDOR'
      DisplayFormat = '###,###,#0.00'
    end
    object cdsItensCONTADOR: TIntegerField
      DisplayLabel = 'Contador:'
      FieldName = 'CONTADOR'
    end
    object cdsItensDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsItensUNID_SAIDA: TFloatField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNID_SAIDA'
    end
    object cdsItensTIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO_UN_SAIDA'
      FixedChar = True
      Size = 3
    end
    object cdsItensMARCA: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'MARCA'
      Size = 35
    end
  end
  object dspItens: TDataSetProvider
    DataSet = qItens
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 960
    Top = 300
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 965
    Top = 195
  end
  object dsPag: TDataSource
    DataSet = cdsPag
    Left = 1053
    Top = 195
  end
  object cdsPag: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDPEDIDO'
    MasterFields = 'CDPEDIDO'
    MasterSource = dsPedidos
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPag'
    Left = 1051
    Top = 244
    object cdsPagCDPEDIDOS_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPEDIDOS_PAGAMENTO'
      Required = True
    end
    object cdsPagCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido:'
      FieldName = 'CDPEDIDO'
    end
    object cdsPagCDPAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd. Pagamento:'
      FieldName = 'CDPAGAMENTO'
    end
    object cdsPagVALOR_PAGO: TFMTBCDField
      DisplayLabel = 'Valor Pago:'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,##0.00 '
      Precision = 18
      Size = 2
    end
    object cdsPagPAGAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object cdsPagDATA: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA'
      EditMask = '00/00/0000;1;_'
    end
  end
  object dspPag: TDataSetProvider
    DataSet = qPag
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1048
    Top = 300
  end
  object qPag: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select pp.cdpedidos_pagamento,'
      '       pp.cdpedido,'
      '       pp.cdpagamento,'
      '       pp.valor_pago,'
      '       pp.data,'
      '       p.pagamento'
      'from pedidos_pagamento pp'
      'join pagamentos p on p.cdpagamento = pp.cdpagamento'
      'where pp.cdpedido =:cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1049
    Top = 352
    object qPagCDPEDIDOS_PAGAMENTO: TIntegerField
      FieldName = 'CDPEDIDOS_PAGAMENTO'
      Required = True
    end
    object qPagCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object qPagCDPAGAMENTO: TIntegerField
      FieldName = 'CDPAGAMENTO'
    end
    object qPagVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object qPagPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object qPagDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object PopupMenu1: TPopupMenu
    Images = Principal.ImageList1
    Left = 784
    Top = 312
    object RelatriodeOramento1: TMenuItem
      Caption = 'Relat'#243'rio de Or'#231'amento'
      ImageIndex = 2
      OnClick = RelatriodeOramento1Click
    end
  end
end
