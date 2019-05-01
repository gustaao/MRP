object PesquisaOrdemCompra: TPesquisaOrdemCompra
  Left = 0
  Top = 0
  Caption = 
    'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Pesquisa Orde' +
    'm Compra]'
  ClientHeight = 289
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 192
    Width = 742
    Height = 97
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 724
    object RadioGroupPesquisa: TRadioGroup
      Left = 14
      Top = 11
      Width = 211
      Height = 78
      Caption = 'Tipo de busca:'
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo '
        'C'#243'd. Fornecedor'
        'Fornecedor')
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 231
      Top = 13
      Width = 347
      Height = 76
      Caption = 'Pesquisa'
      TabOrder = 1
      TabStop = True
      object MaskEditPesquisa: TMaskEdit
        Left = 15
        Top = 27
        Width = 226
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtnGeral: TBitBtn
        Left = 259
        Top = 43
        Width = 76
        Height = 27
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
        TabOrder = 2
        OnClick = BitBtnGeralClick
      end
      object BitBtn2: TBitBtn
        Left = 259
        Top = 12
        Width = 76
        Height = 27
        Caption = '&OK'
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
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 581
      Top = 18
      Width = 130
      Height = 71
      TabOrder = 2
      object BitBtnSair: TBitBtn
        Left = 30
        Top = 24
        Width = 76
        Height = 26
        Hint = 'Mostra Geral (s/ Pedidos Baixados)'
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 376
    Height = 160
    TabStop = False
    Align = alClient
    DataSource = dsOC
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object PanelTopo: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = -6
    ExplicitWidth = 724
    object Label1: TLabel
      Left = 4
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Ordens de Compra:'
    end
    object Label2: TLabel
      Left = 377
      Top = 16
      Width = 29
      Height = 13
      Caption = #205'tens:'
    end
  end
  object DBGrid2: TDBGrid
    Left = 376
    Top = 32
    Width = 366
    Height = 160
    TabStop = False
    Align = alRight
    DataSource = dsOCI
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object qOC: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select oc.cdoc,'
      '       oc.cdfornecedor,'
      '       fornecedores.nome,'
      '       oc.data_entrega,'
      '       oc.valor_total,'
      '       oc.cadastrado_por,'
      '       cast(oc.cadastrado_em as date) as cadastrado_em,'
      '       oc.obs,'
      '       oc.total_icms,'
      '       oc.total_ipi,'
      '       oc.total_pis,'
      '       oc.total_cofins,'
      '       oc.total_issqn,'
      '       oc.total_irrf,'
      '       oc.alterado_por,'
      '       oc.alterado_em,'
      '       OC.frete,'
      '       oc.data_recebimento,'
      '       oc.status,'
      '       oc.data1,'
      '       oc.valor1,'
      '       oc.data2,'
      '       oc.valor2,'
      '       oc.data3,'
      '       oc.valor3,'
      '       oc.data4,'
      '       oc.valor4,'
      '       oc.data5,'
      '       oc.valor5,'
      '       oc.data6,'
      '       oc.valor6,'
      '       oc.data7,'
      '       oc.valor7,'
      '       oc.data8,'
      '       oc.valor8,'
      '       oc.data9,'
      '       oc.valor9,'
      '       oc.data10,'
      '       oc.valor10,'
      '       oc.data11,'
      '       oc.valor11,'
      '       oc.data12,'
      '       oc.valor12,'
      '       oc.cdcondicao_pagto,'
      '       oc.desdobramento,'
      '       condicao_pagto.descricao '
      ''
      ''
      'from ordem_compras oc'
      
        'left join fornecedores on fornecedores.cdfornecedor = oc.cdforne' +
        'cedor'
      
        'left join condicao_pagto on condicao_pagto.cdcondicao_pagto = oc' +
        '.cdcondicao_pagto'
      'order by oc.cdoc desc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 648
    Top = 160
    object qOCCDOC: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOCCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qOCCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object qOCOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qOCTOTAL_ICMS: TFloatField
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_IPI: TFloatField
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_PIS: TFloatField
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_COFINS: TFloatField
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_ISSQN: TFloatField
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
    end
    object qOCTOTAL_IRRF: TFloatField
      FieldName = 'TOTAL_IRRF'
      ProviderFlags = [pfInUpdate]
    end
    object qOCALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCFRETE: TIntegerField
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qOCNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qOCDATA1: TDateField
      FieldName = 'DATA1'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR1: TFloatField
      FieldName = 'VALOR1'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA2: TDateField
      FieldName = 'DATA2'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR2: TFloatField
      FieldName = 'VALOR2'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA3: TDateField
      FieldName = 'DATA3'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR3: TFloatField
      FieldName = 'VALOR3'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA4: TDateField
      FieldName = 'DATA4'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR4: TFloatField
      FieldName = 'VALOR4'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA5: TDateField
      FieldName = 'DATA5'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR5: TFloatField
      FieldName = 'VALOR5'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA6: TDateField
      FieldName = 'DATA6'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR6: TFloatField
      FieldName = 'VALOR6'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA7: TDateField
      FieldName = 'DATA7'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR7: TFloatField
      FieldName = 'VALOR7'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA8: TDateField
      FieldName = 'DATA8'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR8: TFloatField
      FieldName = 'VALOR8'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA9: TDateField
      FieldName = 'DATA9'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR9: TFloatField
      FieldName = 'VALOR9'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA10: TDateField
      FieldName = 'DATA10'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR10: TFloatField
      FieldName = 'VALOR10'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA11: TDateField
      FieldName = 'DATA11'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR11: TFloatField
      FieldName = 'VALOR11'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDATA12: TDateField
      FieldName = 'DATA12'
      ProviderFlags = [pfInUpdate]
    end
    object qOCVALOR12: TFloatField
      FieldName = 'VALOR12'
      ProviderFlags = [pfInUpdate]
    end
    object qOCCDCONDICAO_PAGTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDCONDICAO_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qOCDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspOC: TDataSetProvider
    DataSet = qOC
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 120
  end
  object cdsOC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOC'
    Left = 648
    Top = 72
    object cdsOCCDOC: TIntegerField
      DisplayLabel = 'N'#186' O.C.:'
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOCCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor:'
      FieldName = 'CDFORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCDATA_ENTREGA: TDateField
      DisplayLabel = 'Data Entrega:'
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCCADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCCADASTRADO_EM: TDateField
      DisplayLabel = 'Data Gera'#231#227'o:'
      FieldName = 'CADASTRADO_EM'
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCTOTAL_ICMS: TFloatField
      DisplayLabel = 'Total ICMS:'
      FieldName = 'TOTAL_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCOBS: TBlobField
      DisplayLabel = 'Observa'#231#245'es:'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsOCTOTAL_IPI: TFloatField
      DisplayLabel = 'Total IPI:'
      FieldName = 'TOTAL_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_PIS: TFloatField
      DisplayLabel = 'Total PIS:'
      FieldName = 'TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_COFINS: TFloatField
      DisplayLabel = 'Total Cofins:'
      FieldName = 'TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_ISSQN: TFloatField
      DisplayLabel = 'Total ISSQN:'
      FieldName = 'TOTAL_ISSQN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCTOTAL_IRRF: TFloatField
      DisplayLabel = 'Total IRRF:'
      FieldName = 'TOTAL_IRRF'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o:'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCFRETE: TIntegerField
      DisplayLabel = 'Frete:'
      FieldName = 'FRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Data Recebimeno:'
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCSTATUS: TStringField
      DisplayLabel = 'Status:'
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOCNOME: TStringField
      DisplayLabel = 'Raz'#227'o Social:'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsOCDATA1: TDateField
      DisplayLabel = 'Data 1'
      FieldName = 'DATA1'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR1: TFloatField
      DisplayLabel = 'Valor 1'
      FieldName = 'VALOR1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA2: TDateField
      DisplayLabel = 'Data 2'
      FieldName = 'DATA2'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR2: TFloatField
      DisplayLabel = 'Valor 2'
      FieldName = 'VALOR2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA3: TDateField
      DisplayLabel = 'Data 3'
      FieldName = 'DATA3'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR3: TFloatField
      DisplayLabel = 'Valor 3'
      FieldName = 'VALOR3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA4: TDateField
      DisplayLabel = 'Data 4'
      FieldName = 'DATA4'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR4: TFloatField
      DisplayLabel = 'Valor 4'
      FieldName = 'VALOR4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA5: TDateField
      DisplayLabel = 'Data 5'
      FieldName = 'DATA5'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR5: TFloatField
      DisplayLabel = 'Valor 5'
      FieldName = 'VALOR5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA6: TDateField
      DisplayLabel = 'Data 6'
      FieldName = 'DATA6'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR6: TFloatField
      DisplayLabel = 'Valor 6'
      FieldName = 'VALOR6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA7: TDateField
      DisplayLabel = 'Data 7'
      FieldName = 'DATA7'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR7: TFloatField
      DisplayLabel = 'Valor 7'
      FieldName = 'VALOR7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA8: TDateField
      DisplayLabel = 'Data 8'
      FieldName = 'DATA8'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR8: TFloatField
      DisplayLabel = 'Valor 8'
      FieldName = 'VALOR8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA9: TDateField
      DisplayLabel = 'Data 9'
      FieldName = 'DATA9'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR9: TFloatField
      DisplayLabel = 'Valor 9'
      FieldName = 'VALOR9'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA10: TDateField
      DisplayLabel = 'Data 10'
      FieldName = 'DATA10'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR10: TFloatField
      DisplayLabel = 'Valor 10'
      FieldName = 'VALOR10'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA11: TDateField
      DisplayLabel = 'Data 11'
      FieldName = 'DATA11'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR11: TFloatField
      DisplayLabel = 'Valor 11'
      FieldName = 'VALOR11'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCDATA12: TDateField
      DisplayLabel = 'Data 12'
      FieldName = 'DATA12'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCVALOR12: TFloatField
      DisplayLabel = 'Valor 12'
      FieldName = 'VALOR12'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCCDCONDICAO_PAGTO: TIntegerField
      DisplayLabel = 'Codigo:'
      FieldName = 'CDCONDICAO_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsOCDESDOBRAMENTO: TIntegerField
      FieldName = 'DESDOBRAMENTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dsOC: TDataSource
    DataSet = cdsOC
    Left = 647
    Top = 24
  end
  object dsOCI: TDataSource
    DataSet = cdsOCI
    Left = 698
    Top = 20
  end
  object cdsOCI: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDOC'
    MasterFields = 'CDOC'
    MasterSource = dsOC
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspOCI'
    Left = 702
    Top = 72
    object cdsOCICDOCI: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDOCI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOCICDOC: TIntegerField
      DisplayLabel = 'N'#186' O.C.:'
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCINUMERO_ITEM: TIntegerField
      DisplayLabel = 'Contador:'
      FieldName = 'NUMERO_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDPLANO_CONTAS: TIntegerField
      DisplayLabel = 'C'#243'digo Conta:'
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIVALOR_UNITARIO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio:'
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIQTD: TFloatField
      DisplayLabel = 'Qtd.:'
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCIVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total:'
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIUNIDADE: TStringField
      DisplayLabel = 'Unidade:'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCICADASTRADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio:'
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCICADASTRADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data:'
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCIALTERADO_POR: TStringField
      DisplayLabel = 'Usu'#225'rio (Altera'#231#227'o):'
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsOCIALTERADO_EM: TSQLTimeStampField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;1;_'
    end
    object cdsOCIVALOR_ICMS: TFMTBCDField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIVALOR_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsOCIRECEBIDO: TIntegerField
      DisplayLabel = 'Recebido'
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCIQTD_RECEBIDA: TFloatField
      DisplayLabel = 'Qtd. Recebida:'
      FieldName = 'QTD_RECEBIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOCICDINTERNO: TStringField
      DisplayLabel = 'C'#243'd. Interno'
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object cdsOCICDBARRAS: TStringField
      DisplayLabel = 'C'#243'd. Barras:'
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
    object cdsOCIDESCRICAO: TStringField
      DisplayLabel = 'Produto:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOCIVALOR_VENDA: TFloatField
      DisplayLabel = 'Valor Venda:'
      FieldName = 'VALOR_VENDA'
      ProviderFlags = []
      DisplayFormat = '###,###,#0.00'
    end
    object cdsOCICFOP: TStringField
      DisplayLabel = 'CFOP:'
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsOCISIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria:'
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object cdsOCITIPO_UN_ENTRADA: TStringField
      DisplayLabel = 'Tipo Unidade:'
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsOCIMARCA: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 35
    end
    object cdsOCIMODELO: TStringField
      DisplayLabel = 'Modelo:'
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 35
    end
    object cdsOCICONTA: TStringField
      DisplayLabel = 'Conta:'
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 30
    end
    object cdsOCIDESCRICAO_CONTA: TStringField
      DisplayLabel = 'Descri'#231#227'o Conta:'
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object cdsOCIICMS: TFMTBCDField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsOCIIPI: TFMTBCDField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsOCIIRRF: TFMTBCDField
      FieldName = 'IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsOCIPIS: TFMTBCDField
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsOCICOFINS: TFMTBCDField
      FieldName = 'COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsOCIISS: TFMTBCDField
      FieldName = 'ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dspOCI: TDataSetProvider
    DataSet = qOCI
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 701
    Top = 121
  end
  object qOCI: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'CDOC'
        ParamType = ptInput
        Value = 3
      end>
    SQL.Strings = (
      'select oci.cdoci,'
      '       oci.cdoc,'
      '       oci.numero_item,'
      '       oci.cdproduto,'
      '       oci.cdplano_contas,'
      '       oci.valor_unitario,'
      '       oci.qtd,'
      '       oci.valor_total,'
      '       oci.unidade,'
      '       oci.cadastrado_por,'
      '       oci.cadastrado_em,'
      '       oci.alterado_por,'
      '       oci.alterado_em,'
      '       oci.valor_icms,'
      '       oci.valor_ipi,'
      '       oci.recebido,'
      '       oci.qtd_recebida,'
      '       oci.icms,'
      '       oci.ipi,'
      '       oci.irrf,'
      '       oci.pis,'
      '       oci.cofins,'
      '       oci.iss,'
      '       produtos.cdinterno,'
      '       produtos.cdbarras,'
      '       produtos.descricao,'
      '       produtos.valor_venda,'
      '       produtos.cfop,'
      '       produtos.sit_tributaria,'
      '       produtos.tipo_un_entrada,'
      '       produtos.marca,'
      '       produtos.modelo,'
      '       plano_contas.conta,'
      '       plano_contas.descricao_conta'
      ''
      'from ordem_compras_itens oci'
      'left join produtos on produtos.cdproduto = oci.cdproduto'
      
        'left join plano_contas on plano_contas.cdplano_contas = produtos' +
        '.cdplano_contas'
      'where oci.cdoc =:cdoc')
    SQLConnection = DMPrincipal.SQLCon
    Left = 702
    Top = 163
    object qOCICDOCI: TIntegerField
      FieldName = 'CDOCI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qOCICDOC: TIntegerField
      FieldName = 'CDOC'
      ProviderFlags = [pfInUpdate]
    end
    object qOCINUMERO_ITEM: TIntegerField
      FieldName = 'NUMERO_ITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIQTD: TFloatField
      FieldName = 'QTD'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCICADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCICADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qOCIALTERADO_EM: TSQLTimeStampField
      FieldName = 'ALTERADO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIRECEBIDO: TIntegerField
      FieldName = 'RECEBIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qOCIQTD_RECEBIDA: TFloatField
      FieldName = 'QTD_RECEBIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qOCICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object qOCICDBARRAS: TStringField
      FieldName = 'CDBARRAS'
      ProviderFlags = []
      Size = 15
    end
    object qOCIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qOCIVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      ProviderFlags = []
    end
    object qOCICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qOCISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object qOCITIPO_UN_ENTRADA: TStringField
      FieldName = 'TIPO_UN_ENTRADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qOCIMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 35
    end
    object qOCIMODELO: TStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 35
    end
    object qOCICONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 30
    end
    object qOCIDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 50
    end
    object qOCIICMS: TFMTBCDField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIIPI: TFMTBCDField
      FieldName = 'IPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIIRRF: TFMTBCDField
      FieldName = 'IRRF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIPIS: TFMTBCDField
      FieldName = 'PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCICOFINS: TFMTBCDField
      FieldName = 'COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qOCIISS: TFMTBCDField
      FieldName = 'ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
end
