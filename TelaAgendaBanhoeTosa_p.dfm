object TelaAgendaBanhoeTosa: TTelaAgendaBanhoeTosa
  Left = 183
  Top = 250
  Caption = 'MRP Com'#233'rcio - Sistema de Gerenciamento Comercial [Agenda]'
  ClientHeight = 441
  ClientWidth = 808
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object StgAgenda: TJvStringGrid
    Left = 0
    Top = 0
    Width = 808
    Height = 375
    TabStop = False
    Align = alClient
    ColCount = 6
    GridLineWidth = 3
    TabOrder = 0
    OnDblClick = StgAgendaDblClick
    OnSelectCell = StgAgendaSelectCell
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    ColWidths = (
      64
      162
      156
      132
      169
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 375
    Width = 808
    Height = 66
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = -56
      Top = 5
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label2: TLabel
      Left = 11
      Top = 6
      Width = 70
      Height = 16
      Caption = 'Profissional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 227
      Top = 6
      Width = 31
      Height = 16
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dtpDate: TJvDateTimePicker
      Left = 227
      Top = 24
      Width = 105
      Height = 27
      Date = 41328.866658171300000000
      Format = 'dd/MM/yyyy'
      Time = 41328.866658171300000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DropDownDate = 41328.000000000000000000
    end
    object DBLookupComboProfissional: TJvDBLookupCombo
      Left = 11
      Top = 24
      Width = 199
      Height = 29
      DataField = 'TOSADOR'
      DataSource = dsBanhoTosa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'NOME'
      LookupDisplay = 'NOME'
      LookupDisplayIndex = 1
      LookupSource = dsTosador
      ParentFont = False
      TabOrder = 1
    end
    object BitBtnPesquisa: TJvXPButton
      Left = 440
      Top = 24
      Width = 90
      Height = 29
      Caption = 'OK'
      TabOrder = 2
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000049F4944415478DA8D56CD4F1B57109F37FB65
        8C31C68E0906148AAA0652296DD2948A1C9A46B2B854EAB5EAADEAA155D4537B
        EAA93DB5076EA887AA42A9D4AA14FA0770E0802095A2AAC981E0A096CAC14185
        50C0C5DF36DEF5AEDFEBBC051B030BC95ABB3BEFEDECFCE6E337B366D072388E
        F35EB158FC9431E6C00B1C9AA6B1858505737272F2FDD9D959EEA5C34E00DCCB
        E7F3EFBC8871791886018B8B8B3031319124A0A1E702D46AB5F952A914E7A071
        8688728F0BC191316CE8B86B64C8B9E0866EE0C307BFC32F3FFF089665256766
        66869E0B50289B71656B5628AC260E1FCB8B38F18E5C335541B19C2AC1AFF7B6
        99B04D56CAA7933D3D3DC3E3E3E3C21380BC982F5A187766DEE04E6E0D0155D7
        693AB145ADB1E60C04C5A2C3B233CA15DD8FCAF5CF20143016464646E29E00A6
        69CE972C259EBF7B85F3E2260128D25932C85A001AEBA37D4D5439760E62E84E
        0A7CCC7AECF3F95EF704D8DFDF9F2F56ACB8B5F293B00BFF08C6947353D4D817
        A2CEB4CE01615CFD10FD8692080683D73C01A8C0F3E572390E8A8F93F70DAFCF
        4951739F4A5E47A89B40DE27BABABACE06A03E88378CA88A02C4982640CD768E
        01D4EB75A4131445E174BA3A7EBFFF6C805C2E771001454DC6C5E2C304ECEE65
        89B14C5864FC83776FD30B8C91514106DDBB6B840E5A0BDBB631100824A2D1A8
        374026933916417B9B0F08A8198159AB511436A71EC042A1C0755D47555525BD
        5D9D502824BB3B4154F50648A7D3CD08345511F71FFD09BB999CEC39D753DBA9
        437CE43546C911C1CE4E1689448808445621D8F6F6B620162279BFDCD7D777DD
        13606767C7ED641941A56AA2AEA9209BF6A8C842F60AE59E634F2CC6C9739400
        1409F7193AA65229A014C1F0F030F304D8DADA7201645AEE2FFF45B651268B18
        453F8AC1A7ABF04A6F94972D0741D339C5855400505485BFFAF2257CF2644DA6
        4866421B1B1B734E016C6C6C34232010AAAD2CE9114D658AF63219F2D6C0FEFE
        7E9745CCD5619CF0717D7D1D54553147476FB67946400A0D00995B91CEE661DF
        AC31A434D73987C1BE18E4F33946A911E1709851BE9B35D8DCDC1456751F43C1
        8EA56B6FBE75C31320994C36239013345BA9826D3B6E043445A12F1202A210FF
        6F6F0FE55D725FA644D645A334161D062BED43D92F6F0D443C015657571B2CE2
        E419EE640A444D8BC3E1B8E6DC2513D7698C0674E4552202E180A620DFA8024E
        3E6570311C811BC32FFDF1F5DBB19BA7005656565A1A0D45C5B2C1A98B53B348
        555174181A13C084EC64AA17336D477C32F714A88B59EC4237BB3CD07FF79B5B
        3D1F1F03585A5A72015444BE9C7A8632F9EC8C5924DC690A6E83E8A8F0AB83BD
        98AE98F0F96F3BA23F7A815D8AF5426F77F8A393008B954AE5B66C55CDF0359E
        891391B64ED2A64EDDAE319FCAE0C1BFA5F244A210188846A03B7A31770C606E
        6EEEABF6F6F62F88150E51035CCF6510E70E6BBABA5476E9AA3896F9DDF74BCF
        FE7E6C75FCD01B893C62D3D3D397C9E33B745E21E53019D749EEA0F1203F676D
        922C879F67765068EA3B5ABB03E9609F18CCAB24CBC62A9163965F57776B75BE
        660BF8964D4D4DC9AF4A1729854829487207C9C6A1DC301826513D01E0D03DDB
        B25724D122B97428E7E9FF41EE7F478194C9A64BBFFF0000000049454E44AE42
        6082}
      OnClick = BitBtnPesquisaClick
    end
    object BitBtnSair: TJvXPButton
      Left = 640
      Top = 24
      Width = 90
      Height = 29
      Caption = 'Sair'
      TabOrder = 3
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
      OnClick = BitBtnSairClick
    end
    object BitBtnPrior: TJvXPButton
      Left = 336
      Top = 24
      Width = 17
      Height = 29
      TabOrder = 4
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF61000001C94944415478DA6364A010301252D076E37F
        D2CF1FBFD4814AFF313332717C78FF61469F83C84DA20CA83BFFB3FCEEED7B1D
        0C0CFFC17C164EEEEB0B7DE5B5887241E5898FCE0F1F3CD9F3F7DF5FA0222064
        61F9F8EBF347D1B5C916BF091A90B3E39ECCFB8FDF1E7FFBF193819109A89991
        918195934B6545B0FA5D826110316B0F239B90D4AB771F3F8A30333181C5D805
        C47C57052A6E212A1053B7DC3EF6E8F1334B66A0CD209FB3F208346F8AD6AB23
        2A1602E61E8EFCF4E3F73266A0E8FFFFFF1958D9D83E6D4FB5E527291A9DA61F
        7AF0F7E77779109B89F13F83AAAA52C22C2FB585441B60D9BE46908593EBD5FF
        BF7F58FE01FDC0CAC2CCA0A2A26234D747FD3C51068080D5849D267F7F7C3B0D
        F407C3BFFFFF187879B87E890AF28BAD8CB5FE48940120603A7177CA9FCFEF66
        83D8FFFEFE65901417BBBB23C3458568034040B379D5B4FF3F7F66029301C39F
        BFFF18545514B66E4BB2F7C16AC0DAB56BC5D9D9D94581A1CF0FC41CFF7FFFE4
        F9F8F5FB8F9DAFFE76BDFFC928038C976F7FFE31B0D9CBF1666B71FFDF1D1812
        FA116EC0D6AD5BB9FEFCF913FFF7EF5F35201764082790E605C5262B13C32F68
        92F8004C935FFF3030BC6766653FEBEDEDBD96A017880100BE9DB41157D5C0B5
        0000000049454E44AE426082}
      OnClick = BitBtnPriorClick
    end
    object BitBtnNext: TJvXPButton
      Left = 355
      Top = 24
      Width = 17
      Height = 29
      Caption = 'JvXPButton1'
      TabOrder = 5
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF61000001CA4944415478DA6364A0103022733237DD52
        975450CEF8FBEFEF0F0686FF4C6CEC6C37AB3519E7116D0008246C7D72EDF7D7
        4F9A30694565858A1663CE4EA20DF09BB28795475CF6F5BFDFBFF8FF33FC6760
        666262905752706937E3D94B94012010BAEC92F2BF7FFFEEFCFFFF8FE1FFBFFF
        0C5CECAC0CA262C2B2139CA49F106500D89035B77D7E7D7EB719C4061AC6C0CF
        C7FB86E9D767B145D196FF8932000402965F69FAF9E95D2D48D15FA04B64A424
        8ECFF557B722DA0010F09C73E4E3EF9F3FF9181919C186888A8944AD0CD35F4E
        9401E95B6FC7DFBA7377C1BFFF1065C0787DB83FCB41812817246EBC6A78EFFE
        C373BFFFFC616002A96262FEC3F0EFBFD891629FF7040D0899B397FFDDF7DFAF
        3E7FFEC2C6C4C80456C5C2CD6F7A34D7F90C51B1E03173DF9DE72F5E28333133
        03132403032B9F60EAA97CB739D8D46218E0BBE0C8961BB7EE7AB3303331FC07
        6A6664639F7EBD2E2C0B9757E1066C5CB756F4C6E7FFCE7B1F7D9ECCC2C4F00B
        28C521C8FEFF898B1873992027073B133BC727604CFC00E20F3F7EFC78191212
        F21E6EC0D6AD5BB9FEFCF913CFF0EFAF0A2B23032809730285F980B1C6F0FB1F
        031B34E57C046AFE0AA45FB2B3B39FF6F6F65E4B543A2004002F5AAD11746EAD
        E50000000049454E44AE426082}
      OnClick = BitBtnNextClick
    end
    object BitBtnImprimeAgenda: TJvXPButton
      Left = 540
      Top = 24
      Width = 90
      Height = 29
      Caption = 'Imprimir'
      TabOrder = 6
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF8000003594944415478DAA596DD4B537118C79FE79C
        79A6CE395FA66EF3057C896564965452175D44F8072445459251176197411021
        741375E14D8551D84584445DB855B711E54D188628CCE996CE3975BE648BDC4C
        DD8EE7D76FCBF3DBF9D5040FFE60F09CD7CFF93EDFEF73CE10B696DFEF6FADAE
        AE7E404B11742C427FED6EEFB397671B3B331D47B5585A5AEA2E2828E8D8BA46
        3DF66FADDDC7F6B7BDF5C3F2AFE8BD0F578FDDDE16B0B8B8A80274AFB677DF60
        39BA068E1CBCDF7BFEF0AD8C8085858514408986082E0FEA52D03EBC07BEAF21
        261209526D3674BDB870F4E67F80F9F9F91440F63C2664FCA92EC0EBD5161892
        EB118DC544CCB54393DDDC79F964D35D0E100E87BB2D164B47C2D30D8AF789EE
        36118A15F65D03A9E17A72D36532995A39C0DCDC5C0A10F7F51279B84B9702B5
        361CBC4124675BB276E7E5E5F180D9D9D9148010A23B45DA1A31754BB7D96CE6
        0133333329405AB30CCAE62608A2907C36EDA93B59AEFCFC7C1E100A85540021
        F130288B0FF14BDF7BD2D8721C726C2750283A4346464670656585FCED3901A7
        D3896565659914BBE9BD78C0F4F4741AB01E0079E1117E1B18255507EA20DBDA
        8C86D24B646363031545612D9224094551CC08A089E401C160900194B549F00D
        BF42493292F2822088A6439865BB42C6C7C731168B65F4A0B6B6160B0B0B1980
        D63C606A6A8A79A0C831F831F719040121575A0131A70EA4FC468846A320CBB2
        269A69163515B2B2B298074545453C20100830059BD45CDA0A5D29A2AD424110
        547FDC56AB95074C4E4E7653E73BB6D424E7424F6AA0A6A6061C0E0753505252
        C20326262654C0AEE640F5A0B4B49407D0EF016B112A31107F7FC4C0570FA9DC
        5F07A2792F2AC6064255E2EAEA2A035456566A8DE50034BE3CC0E7F331933131
        0D62A40706DF7C828653CD60B41E814DCBB994C9F48DC91E9FBE0E9251CDD431
        97CD66E30134824C01C48320FC7C8EF1B50D6230C880A646248517099D765C5F
        5F6783A67D6ADA7FA440A6C06EB7F380B1B131CD24CFC3D0401F66676713A7CD
        4F01CD2816B792482482F1783CA30774B052E7AB000AE4015EAF977F17ED6EB9
        CACBCB79C0E8E8285340A73AF97DC89822A29D2E8D021A53A46D610A2A2A2A78
        80C7E3497BB07D047714D3E4A0555555F180FEFEFED35B7F5B0CBB6C8F42A37C
        A7BEBEBE27B9F107F96FA528F96A736D0000000049454E44AE426082}
      OnClick = BitBtnImprimeAgendaClick
    end
  end
  object qConfig: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_banhoetosa'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 802
    Top = 206
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 808
    Top = 101
    object cdsConfigCDCONFIG_BANHOETOSA: TIntegerField
      FieldName = 'CDCONFIG_BANHOETOSA'
      Required = True
    end
    object cdsConfigTOSADOR: TStringField
      FieldName = 'TOSADOR'
      Size = 35
    end
    object cdsConfigSEG: TIntegerField
      FieldName = 'SEG'
    end
    object cdsConfigTER: TIntegerField
      FieldName = 'TER'
    end
    object cdsConfigQUA: TIntegerField
      FieldName = 'QUA'
    end
    object cdsConfigQUI: TIntegerField
      FieldName = 'QUI'
    end
    object cdsConfigSEX: TIntegerField
      FieldName = 'SEX'
    end
    object cdsConfigSAB: TIntegerField
      FieldName = 'SAB'
    end
    object cdsConfigDOM: TIntegerField
      FieldName = 'DOM'
    end
    object cdsConfigHORARIO_SEM_INICIO: TTimeField
      FieldName = 'HORARIO_SEM_INICIO'
    end
    object cdsConfigHORARIO_SEM_FIM: TTimeField
      FieldName = 'HORARIO_SEM_FIM'
    end
    object cdsConfigHORARIO_FIND_INCIO: TTimeField
      FieldName = 'HORARIO_FIND_INCIO'
    end
    object cdsConfigHORARIO_FIND_FIM: TTimeField
      FieldName = 'HORARIO_FIND_FIM'
    end
  end
  object dspConfig: TDataSetProvider
    DataSet = qConfig
    UpdateMode = upWhereKeyOnly
    Left = 804
    Top = 151
  end
  object dsConfig: TDataSource
    DataSet = cdsConfig
    Left = 809
    Top = 57
  end
  object dsBanhoTosa: TDataSource
    DataSet = cdsBanhoTosa
    Left = 953
    Top = 65
  end
  object cdsBanhoTosa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanhoTosa'
    Left = 954
    Top = 109
    object cdsBanhoTosaCDBANHOETOSA: TIntegerField
      FieldName = 'CDBANHOETOSA'
      Required = True
    end
    object cdsBanhoTosaCDMASCOTE: TIntegerField
      FieldName = 'CDMASCOTE'
    end
    object cdsBanhoTosaPROCEDIMENTO: TStringField
      FieldName = 'PROCEDIMENTO'
      Size = 35
    end
    object cdsBanhoTosaTOSADOR: TStringField
      FieldName = 'TOSADOR'
      Size = 35
    end
    object cdsBanhoTosaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsBanhoTosaHORA: TTimeField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
    end
    object cdsBanhoTosaOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cdsBanhoTosaLEVAETRAS: TIntegerField
      FieldName = 'LEVAETRAS'
    end
    object cdsBanhoTosaNOME: TStringField
      FieldName = 'NOME'
      Size = 10
    end
    object cdsBanhoTosaAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsBanhoTosaCDTOSADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Tosador'
      FieldName = 'CDTOSADOR'
    end
  end
  object dspBanhoTosa: TDataSetProvider
    DataSet = qBanhoTosa
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 948
    Top = 154
  end
  object qBanhoTosa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cdtosador'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select bt.cdbanhoetosa,'
      '       bt.cdmascote,'
      '       bt.procedimento,'
      '       bt.tosador,'
      '       bt.data,'
      '       bt.hora,'
      '       bt.observacoes,'
      '       bt.levaetras,'
      '       bt.cdtosador,'
      '       mascote.nome,'
      '       clientes.apelido'
      'from banhoetosa bt'
      'left join mascote on mascote.cdmascote = bt.cdmascote'
      'left join clientes on clientes.cdcliente = mascote.cdcliente'
      'where bt.data     = :data'
      'and   bt.cdtosador = :cdtosador')
    SQLConnection = DMPrincipal.SQLCon
    Left = 945
    Top = 212
  end
  object qTosador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from tosador'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 875
    Top = 206
  end
  object dspTosador: TDataSetProvider
    DataSet = qTosador
    UpdateMode = upWhereKeyOnly
    Left = 876
    Top = 150
  end
  object cdsTosador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTosador'
    AfterScroll = cdsTosadorAfterScroll
    Left = 880
    Top = 103
    object cdsTosadorCDTOSADOR: TIntegerField
      FieldName = 'CDTOSADOR'
      Required = True
    end
    object cdsTosadorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTosadorCOMISSAO: TSingleField
      FieldName = 'COMISSAO'
    end
  end
  object dsTosador: TDataSource
    DataSet = cdsTosador
    Left = 881
    Top = 57
  end
  object qCA: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from config_agenda'
      'where ativo = 1')
    SQLConnection = DMPrincipal.SQLCon
    Left = 633
    Top = 204
  end
  object dspCA: TDataSetProvider
    DataSet = qCA
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 633
    Top = 154
  end
  object cdsCA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCA'
    Left = 634
    Top = 104
    object cdsCACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCAQTD_CAMPOS: TIntegerField
      FieldName = 'QTD_CAMPOS'
    end
    object cdsCANOME_CAMPO1: TStringField
      FieldName = 'NOME_CAMPO1'
      Size = 15
    end
    object cdsCANOME_CAMPO2: TStringField
      FieldName = 'NOME_CAMPO2'
      Size = 15
    end
    object cdsCANOME_CAMPO3: TStringField
      FieldName = 'NOME_CAMPO3'
      Size = 15
    end
    object cdsCANOME_CAMPO4: TStringField
      FieldName = 'NOME_CAMPO4'
      Size = 15
    end
    object cdsCANOME_CAMPO5: TStringField
      FieldName = 'NOME_CAMPO5'
      Size = 16
    end
    object cdsCANOME_CAMPO6: TStringField
      FieldName = 'NOME_CAMPO6'
      Size = 15
    end
    object cdsCAHORARIO_INICIO: TTimeField
      FieldName = 'HORARIO_INICIO'
    end
    object cdsCAHORARIO_FINAL: TTimeField
      FieldName = 'HORARIO_FINAL'
    end
    object cdsCACADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCACADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
    object cdsCAINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object cdsCAATIVO: TIntegerField
      FieldName = 'ATIVO'
    end
  end
  object dsCA: TDataSource
    DataSet = cdsCA
    Left = 634
    Top = 57
  end
  object QAG: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdtosador'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
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
      '      agenda.cdcliente,'
      '     clientes.apelido'
      ''
      'from agenda'
      'left join tosador on tosador.cdtosador = agenda.cdtosador'
      
        'left join procedimentos on procedimentos.cdprocedimento = agenda' +
        '.cdprocedimento'
      'left join clientes on clientes.cdcliente = agenda.cdcliente'
      'where agenda.cdtosador =:cdtosador'
      'and    agenda.data          =:data')
    SQLConnection = DMPrincipal.SQLCon
    Left = 694
    Top = 211
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
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object QAGAPELIDO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
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
    Left = 693
    Top = 164
  end
  object cdsAG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAG'
    Left = 694
    Top = 111
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
    object cdsAGAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAGDESCRICAO: TStringField
      DisplayLabel = 'Procedimento:'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAG: TDataSource
    DataSet = cdsAG
    Left = 690
    Top = 60
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdtosador'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'data'
        ParamType = ptInput
      end>
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
      '      agenda.cdcliente,'
      '     clientes.apelido'
      ''
      'from agenda'
      'left join tosador on tosador.cdtosador = agenda.cdtosador'
      
        'left join procedimentos on procedimentos.cdprocedimento = agenda' +
        '.cdprocedimento'
      'left join clientes on clientes.cdcliente = agenda.cdcliente'
      'where agenda.cdtosador =:cdtosador'
      'and    agenda.data          =:data')
    SQLConnection = DMPrincipal.SQLCon
    Left = 574
    Top = 211
  end
end
