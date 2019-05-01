object PesquisaFornecedores: TPesquisaFornecedores
  Left = 0
  Top = 0
  Caption = 
    'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Pesquisa Forn' +
    'ecedores]'
  ClientHeight = 289
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 724
    Height = 214
    Align = alClient
    DataSource = dsForn
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object PanelPesquisa: TPanel
    Left = 0
    Top = 214
    Width = 724
    Height = 75
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 269
    ExplicitWidth = 723
    object GroupBox3: TGroupBox
      Left = 239
      Top = 6
      Width = 350
      Height = 62
      Caption = 'Digite o texto para busca:'
      TabOrder = 0
      TabStop = True
      object MaskEditPesquisa: TMaskEdit
        Left = 11
        Top = 25
        Width = 190
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtnOK: TJvXPButton
        Left = 207
        Top = 22
        Width = 64
        Height = 29
        Caption = '&OK'
        TabOrder = 1
        Default = True
        Glyph.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          0000180000000100080000000000400200000000000000000000000100000001
          0000FF00FF00045379004551590068535800765857007A5856007A6362007B65
          63007A696D0075706D006D6E7400706C7D00864A4300804A4400814C4700824E
          4900844F4B0087534D008E5C58008E665F0093665C0095675C0096685E008269
          6900976960009A6860009E6E67009F7369008A7376008F737600877078008972
          780093757B00A0746B00A5746900A0766C00A9776A00A77E6D00AA7A6D00AA79
          7400B2817700B1867900B5907D00BD957E00EAA36500E9AB6B00EAAB6C00EDAF
          6D00EBAF7400EBB07600045982001A5E8000175A97001F5D9700185A99000562
          8F000163910005669500036C9C00046D9E000A6E9A000B709D003B608200175E
          A5001A5DA7000271A5000274A9000578AC00037FB700486B8B00507683006E79
          81001F73CF000C67D3001073EA001074F0001680A7001C86AB001D8BB4001C95
          BB00248FB600289CBC003297B400438297007F8489004D9CBB0041A0BC006CAC
          BD00099ACE001195C10016A9D70019ACD70026ABCF003AAFC7003FB4CB003FB1
          D30033B8DC00358AE7003A8EE5003590EE002D8CF2002B93FE002F9CFF00359E
          FF00389FFF0014B1E2001BB6E00012BDEF0025BBE30027BFE2002BB8E2003CA7
          FC0035AAFF004490C70044A9C50045ACCE0054B1CA0062AFC90066BBCE0044BD
          E10040ABFB0040ABFC0041AFFF004AB0FA0018C1EF000CC2F7000DC5FB000DC7
          FE0019C9F8001ACCFE0036C7ED0025D7FE003AD3FB003DD3FB0053C2DD006CC7
          DC0049CEE2005BD5E2005CD5E2005BD4F00050DAF00070CFE50063D5E20069D5
          E2007BD5E20045E6FE0056EEFE006AEFF7007DE9FE007AEEFE0066F2FB0069F6
          FE0076F3FA007FF7FE007BFCFE0080808400B18E8400CBA48A00CEA58C00D0A7
          8C00CFAF9000D3B29A00DCB89800F0BF8000E3BD9500C9ACA400D5BFBD00EFC0
          8600F0C48B00F4C78900F8CB8800E2C79C00F3CF9300F0C99700F4CE9800FBD5
          9000F4D19900FFDE9A00FFDD9D00FFE19C00D9C1A700DAC7A700DDCCB400EACC
          A000EFD7A700F6DDA500E3D3B600FDE2A500FFEBA700F7E3AF00FFEDAB00FEEE
          B200F8EBB600FCEBB600FCEEB600FEF2B2008BABC7008ED5E300B2D5E30081FF
          FE0087FFFE008EFFFE0092F7FE009FF7FF0095FFFE0098FAFE009FFFFE00A0E9
          EF00AAEEF600A6FFFE00BAFFFE00F2E7C200F2EDCD00FCF3C100FEF7C500FFFE
          C500FDFAC900FFFFCB00FFFFCD00FBF4D000FFFFD100FFFFD400FFFFD900FEFC
          DD00C1FFFF00D5FFFF00DDFFFF00FEF4E500FFFFE600FFFFEB00EBF4F800F2FF
          FF00FFFFFA00F8FFFF00FFFFFE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B020900000000000000
          000000000000000000000000001E3F4054000000003939393939393939390000
          000000001F344B707100003939595958696E7773503D37370000001C364A6878
          6200394C8891837F81848B87724E3B3232001C354A677861000042899791837F
          81828676564D3B3901203E4965786300000042899791837F7C60271A211B160D
          014548676F640000000042899791837D521729B4D3DBBA2A0508C47B64000000
          000042899791835B17A5E4DDDDDDDEDDAB281A64000000000000428997918346
          9CEAE4D7D9D9D9C2BEA40D00000000000000428999959513B6E5DDD9D9DDDDBD
          A9BB260D00000000000042CFD08D5F16D4D9D9DDD9D9DDB930B29E1000000000
          00004174515C6A16DEDDD9D9DDDDD5A72CB2A2100000000000003B5E96918316
          D4D9DDD9DDD5B02E2EBC9E10000000000000418997918306B4DDD9D9C2ACA3AC
          C2C2240D00000000000042899791835325D7BBA7302EAEE3EAA1100000000000
          000042899791836B0A2BC3B3AAAFD9EAA612100000000000000042899791837F
          6C47219FB7B8A0210310000000000000000042899791837F8184579B06041010
          33000000000000000000428ECDCBCACCC7C7C7C7988C5A443900000000000000
          000042C6EAE2E0D1CCC7C7C7C79A926C390000000000000000004255E6E7E1D2
          CDC7C7C7C7C7934F390000000000000000000042437575C5908F89895D5D3C39
          0000000000000000000000000042424242424242424200000000000000000000
          0000}
        OnClick = BitBtnOKClick
      end
      object BitbtnGeral: TJvXPButton
        Left = 275
        Top = 22
        Width = 65
        Height = 29
        Caption = '&Geral'
        TabOrder = 2
        Glyph.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          0000180000000100080000000000400200000000000000000000000100000001
          0000FF00FF000E80AA001788AF000B86B2000C85B000098AB700078CBA00078E
          BD00198EB700118EB9000E91BE001E94BC002898BA000493C4000997C7000C9B
          CB000A9DCE00229BC20015AFD90026A0C80021AACF0035A0C30030AACA0032AA
          CE003DAACC003FB0CB0031AED7003DBDDA0039B8DE0029BBE00046A6C90056B1
          CE0052BDDB0068B0CA006BBDD70019C7F1001BD4FE002FC6E70026C2E9003ECD
          E9002CD3F9002ED8FE003CE0FE0054C0D40059C4D70059C2DD006FC2D60062C3
          DE007CC0D50076C4DF007AC6DF0043C8E90054DFFE0060CEEA0079CFE9006CD4
          EE0064D9E90076DFE9007DDFE90055E0FF006BE3F40060ECFE0075E2FA007BE8
          FF0071F2FE008FD0E60083DFE9008ADAEB0094DFE90081DBF100A4DFEA0095EB
          FD0095EEFE009EEDFF0084F3F90080F5FC008FF6FB0083F8FE0093F2FE0097F9
          FE0094FDFE0099FFFE009EFFFE00AFE8F600B4EEF300A4FFFE00A8F9FE00ADFB
          FE00AAFFFE00B6F1FF00BCF2F800B3F9FF00B3FFFE00B9FFFE00C3DFEA00CCF6
          FF00C9FFFE00CFFFFF00D1F6FE00DFFFFF00E5FFFF00F0F7FA00F5FFFF00FAFF
          FF00000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000001010101010101
          01010000000000000000000000000001011414122633352F1808010100000000
          000000000000010C383D2A24293B3F47371C0F04010000000000000000000639
          4D3D2A24293B3F47371C0F060100000000000000000006394D3D2A24293B3F47
          371C0F0D0100000000000000000006394D3D2A24293B3F47371C0F0D01000000
          00000000000006394D3D2A24293B3F47371C0F0D010000000000000000000639
          4D3D2A24293B3F47371C100D0100000000000000000006394F4E4749595F6262
          53361A0D0100000000000000000006545A432D17110B151F2232413101000000
          000000000000052E191C252328343E452013091E01000000000000000000042D
          4B3D2A24293B3F47371C0F060100000000000000000006394D3D2A24293B3F47
          371C0F0D0100000000000000000006394D3D2A24293B3F47371C0F0D01000000
          00000000000006394D3D2A24293B3F47371C0F0D010000000000000000000639
          4D3D2A24293B3F47371C100D0100000000000000000006394D3D2A24293B3F47
          371C0F0D01000000000000000000063A575B5757515151514C3C1D0F01000000
          000000000000065E6764615B55515151514F4027010000000000000000000621
          656663615B51515151514B170100000000000000000000060A30304644423A39
          2B2B020100000000000000000000000000060606060606060606000000000000
          0000}
        OnClick = BitbtnGeralClick
      end
    end
    object GroupBox8: TGroupBox
      Left = 598
      Top = 12
      Width = 101
      Height = 55
      TabOrder = 1
      object BitBtnFechar: TJvXPButton
        Left = 11
        Top = 16
        Width = 76
        Height = 29
        Caption = '&Fechar'
        TabOrder = 0
        Glyph.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001300
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFDFDEDE6C6E6F2932332734312D36352F39382F3A382F
          39382F39382F39382E3938303A392532303F4140FCF9F9000000FFFFFFFFFFFF
          FFFFFFFEFEFEB2B0B06874735A8E8923766D025C53005950005D510061560062
          5700625700645A00645A02786D000600CDC2C4000000FFFFFFFFFFFFFFFFFFFF
          FFFFBABBB68B8887C8BCBEB3B5B474928E396A6718524C19544F205954245E58
          26605A28615A347570000B06CFC7CA000000FFFFFFFEFEFEFDFDFEDCDCF29292
          A37E8178A7A7A5B3AFB0B6B1B19D9E9E69787638524F2A434128423F30484632
          4A48405E5A000000CFCCCC000000FFFFFFFFFFFDFDFDF18A8ACD1F1F8E6D6D7B
          A2A2979E9E9FA3A3A4AAA6A6A09D9D8385846163643F42423739383A3C3C4B4F
          4E000000CECECE000000FEFEFFD5D5E1CFCFCF6363B40303B53636A582828A99
          998F9A9A9A9C9D9D9595959493938988885D5C5C3636353736364A4848000000
          CECECE000000D4D4ED0F0FA95454C43C3CBE2222D11414CD3A3A9F98988C9F9F
          979A9A9C9393938B8B8B8888885F5F5F333333333333454444000000CECECE00
          0000CCCCE80000B40000D30000CB0101CB0000CE0D0DCC3131A6B3B3999B9B99
          8E8E908686868181815D5D5D323232303030414141000000CFCFCF000000CECE
          E90303B90303D20000C70101CA1111CF1B1BD62A2ADD1414AAB0B0928E8E8F9F
          9F9F8686864E4E4E2F2F2F2D2D2D3C3C3C000000CFCFCF000000C6C6E82C2CC4
          5454E24B4BDB4E4EDB4848D75757E13E3ED362629EA1A1908A8A8C8F8F8FA4A4
          A45B5B5B2626262A2A2A383838000000D0D0D0000000C4C4E71B1BB76B6BDC67
          67D87373E26E6EE65757CB6E6E9DACAC96919191898989818181949494717171
          272727262626363636000000CFCFCF000000E1E1F35F5FC27F7FCF5858C27D7D
          DC7878D86E6EA6A1A19A9898978F8F8F88888886868688888854545424242423
          2323323232000000D0D0D0000000FFFFFFFFFFFFFFFFFF8A8AD63737AD7676A9
          A6A6A4A2A29D9494948D8D8D8585857E7E7E7575754D4D4D2222222020202E2E
          2E000000D1D1D1000000FFFFFFFFFFFFF8F8FD9D9DDF515197848486AAAAA49A
          9A9A8C8C8C8484847C7C7C7676767272724B4B4B1E1E1E1E1E1E292929000000
          D1D1D1000000FFFFFFFFFFFFFEFEFFF4F4FBB0B0B180807C9A9A9A8E8E8E8181
          817979797171716B6B6B6868684646461C1C1C1B1B1B252525000000D1D1D100
          0000FFFFFFFFFFFFFFFFFFFFFFFEB5B5B380807FA7A7A79D9D9D8E8E8E848484
          7C7C7C7676767373734E4E4E1F1F1F1D1D1D292929000000CECECE000000FFFF
          FFFFFFFFFFFFFFFFFFFFBABABA4040402828281F1F1F1717170F0F0F0A0A0A07
          0707020202000000000000000000000000000000DCDCDC000000FFFFFFFFFFFF
          FFFFFFFFFFFFFCFCFCDADADAC3C3C3C5C5C5C8C8C8C8C8C8CACACAC9C9C9CBCB
          CBCECECED3D3D3D4D4D4CECECEDBDBDBFFFFFF000000}
        ModalResult = 11
      end
    end
    object RadioGroupPesquisa: TRadioGroup
      Left = 4
      Top = 5
      Width = 229
      Height = 62
      Caption = 'Tipo de Busca:'
      Columns = 2
      Items.Strings = (
        'C'#243'digo'
        'Raz'#227'o Social'
        'Nome Fantasia'
        'CPF/CNPJ')
      TabOrder = 2
      TabStop = True
    end
  end
  object qForn: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from fornecedores'
      'order by nome'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 640
    Top = 164
  end
  object cdsForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForn'
    Left = 638
    Top = 71
    object cdsFornCDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object cdsFornNOME: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornAPELIDO: TStringField
      DisplayLabel = 'Nome. Reduzido:'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsFornENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornNUMERO: TStringField
      DisplayLabel = 'Numero:'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsFornBAIRRO: TStringField
      DisplayLabel = 'Bairro:'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsFornCIDADE: TStringField
      DisplayLabel = 'Cidade:'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFornCEP: TStringField
      DisplayLabel = 'CEP:'
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsFornUF: TStringField
      DisplayLabel = 'UF:'
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsFornCONTATO: TStringField
      DisplayLabel = 'Contato:'
      FieldName = 'CONTATO'
      Size = 10
    end
    object cdsFornSITE: TStringField
      DisplayLabel = 'WebSite:'
      FieldName = 'SITE'
      Size = 50
    end
    object cdsFornMAIL: TStringField
      DisplayLabel = 'e-mail:'
      FieldName = 'MAIL'
      Size = 50
    end
    object cdsFornCOD_IBGE: TStringField
      DisplayLabel = 'IBGE:'
      FieldName = 'COD_IBGE'
      FixedChar = True
      Size = 7
    end
    object cdsFornDATA_CADASTRO: TDateField
      DisplayLabel = 'Data:'
      FieldName = 'DATA_CADASTRO'
      EditMask = '00/00/0000;1;_'
    end
    object cdsFornTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo:'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsFornFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      EditMask = '(00)00000-0000;0;_'
      Size = 11
    end
    object cdsFornFAX: TStringField
      DisplayLabel = 'Fax:'
      FieldName = 'FAX'
      EditMask = '(00)00000-0000;0;_'
      Size = 11
    end
    object cdsFornCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
    end
    object cdsFornCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ:'
      FieldName = 'CPF_CNPJ'
      Size = 17
    end
    object cdsFornRG_IE: TStringField
      DisplayLabel = 'RG/I.E.:'
      FieldName = 'RG_IE'
    end
    object cdsFornATIVO: TIntegerField
      DisplayLabel = 'Ativo:'
      FieldName = 'ATIVO'
    end
    object cdsFornCODSEGMENTO: TIntegerField
      FieldName = 'CODSEGMENTO'
    end
    object cdsFornISO: TIntegerField
      FieldName = 'ISO'
    end
    object cdsFornGRAU_IMPORTANCIA: TStringField
      FieldName = 'GRAU_IMPORTANCIA'
      FixedChar = True
      Size = 1
    end
    object cdsFornCDENQUADRAMENTO_IMPOSTO: TIntegerField
      FieldName = 'CDENQUADRAMENTO_IMPOSTO'
    end
    object cdsFornREACH_ROHS: TIntegerField
      FieldName = 'REACH_ROHS'
    end
    object cdsFornCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      FixedChar = True
      Size = 4
    end
    object cdsFornNASC_FUNDACAO: TDateField
      FieldName = 'NASC_FUNDACAO'
    end
    object cdsFornPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsFornEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 100
    end
    object cdsFornPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsFornLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
  end
  object dspForn: TDataSetProvider
    DataSet = qForn
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 638
    Top = 112
  end
  object dsForn: TDataSource
    DataSet = cdsForn
    Left = 635
    Top = 25
  end
end
