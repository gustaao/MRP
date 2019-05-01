object ConsultaCliente: TConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta de Cliente'
  ClientHeight = 481
  ClientWidth = 1196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 389
    Width = 1196
    Height = 92
    Align = alBottom
    TabOrder = 0
    object Label2: TLabel
      Left = 285
      Top = 17
      Width = 42
      Height = 13
      Caption = 'Pesquisa'
    end
    object EditPesquisa: TEdit
      Left = 282
      Top = 34
      Width = 198
      Height = 21
      TabOrder = 0
    end
    object BitBtnPesquisa: TBitBtn
      Left = 485
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Pesquisa'
      DoubleBuffered = True
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFEFFFF
        FEFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFEFFFF
        FAFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF768395203D6820375CAFAEADFFFFFFFF
        FFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000F9F9F93A547E113D7B3365A23A79C2102B57B6B6B6FFFFFFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000098A4B81E5598
        427CBE4487CC56A8F31A3B71283B5FE2DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000517AAD4996E3519AE659ACFB4688
        CC2F568E1F4B862D405F97918AE2E2E2FFFFFFEAEAEAE5E4E4E0E0DFE4E4E4FF
        FFFFFFFFFFFFFFFF0000658CB84AA7FF57A8F64C95DD3A72B03A6AA734619915
        407F9DA5B29D9992B0B0AF94939083817F78767472706EADACADFFFFFFFFFFFF
        0000DBDCE03B71AC4AA2F3498DD44584C93E77B73A6EA91C51919AA5B8BDB8B2
        B2B1AFACAAA8A4A2A19B97948F8B8A73706EDEDEDFFFFFFF0000FFFFFFF9EFE9
        6083AB4394E64F9DE94A8DD2357AC3315589F7EFE4B1B0ADBABAB7B4B2B0ABAA
        AB9594988A888A7A7E808C8D8BFFFFFF0000FFFFFFFFFFFFFFFFFA68819F3582
        D72E7CCE436999B9B8B7CFCDC9D0D0CEC8C6C8A6A6AC908A8BB3A593BAAC94B9
        8A7C6C7375D5D6D60000FEFFFFFFFFFFFFFFFFE9E4DE726F6D868283A59D92A2
        A19DCDCDCCAFB0B4A7A39DD4C9A7FFFDCAFFFDCFFFFFD2FFFCD6D8B4A3A4A7AA
        0000FDFFFFFFFFFEFEFFFFFFFFFFC7C4C1D1D0CC8B8988ACAAAA9D9EA0BAAC91
        FFE6AEFFE8B2FFE0AFFFE3B5FFE5B4FFF2C1DFBEABC1C5C70000FEFFFFFFFFFD
        FFFFFEF5F5F5C6C6C2FCFCFEFEFFFFC5CBD3D1AD82FFD49FFFD19CFED09EFDD3
        9FFBD49FFFE4B7FCE1BEC2AFA8DCE0E20000FFFFFFFFFFFFFFFFFFFFFFFFB4B3
        B2F3F3F2E0E3E5C88E69FFC796FABE94FAC59CFBCCA3FBD6AFFEE8CFFFE8CCD6
        A999BCC9CCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFECEBEBBBBFBFC9A699F8
        BA95FECCB2FCD2B9FDD9C2FFDDC8FFF0DDFFDAC1CB9F8EB7BDC0FBFAFBFFFFFF
        0000FFFFFFFFFFFFFFFFFFFDFDFDFFFFFFB8BABBAC8777FFD6C0FFD8C7FFDDC8
        FFE2D1FFE5D3E9B49AB1948FC1C9CCFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F8F8837E7BB68876D5B3A2D3B19FC69C8BAD8C7FB1AD
        B0E0E9EBFFFFFFFFFFFFFEFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFF
        FEFFFFFFF2F5F6C2C3C3B8B3B1BFBCB9D8D8D7E9EEEFFFFFFFFFFFFFFEFFFFFE
        FFFEFFFFFFFFFFFF0000}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtnPesquisaClick
    end
    object BitBtnGeral: TBitBtn
      Left = 581
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Geral'
      DoubleBuffered = True
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFEFFFF
        FEFFFFFFFFFFFFFFFFFEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFEFFFF
        FAFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF768395203D6820375CAFAEADFFFFFFFF
        FFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000F9F9F93A547E113D7B3365A23A79C2102B57B6B6B6FFFFFFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000098A4B81E5598
        427CBE4487CC56A8F31A3B71283B5FE2DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000517AAD4996E3519AE659ACFB4688
        CC2F568E1F4B862D405F97918AE2E2E2FFFFFFEAEAEAE5E4E4E0E0DFE4E4E4FF
        FFFFFFFFFFFFFFFF0000658CB84AA7FF57A8F64C95DD3A72B03A6AA734619915
        407F9DA5B29D9992B0B0AF94939083817F78767472706EADACADFFFFFFFFFFFF
        0000DBDCE03B71AC4AA2F3498DD44584C93E77B73A6EA91C51919AA5B8BDB8B2
        B2B1AFACAAA8A4A2A19B97948F8B8A73706EDEDEDFFFFFFF0000FFFFFFF9EFE9
        6083AB4394E64F9DE94A8DD2357AC3315589F7EFE4B1B0ADBABAB7B4B2B0ABAA
        AB9594988A888A7A7E808C8D8BFFFFFF0000FFFFFFFFFFFFFFFFFA68819F3582
        D72E7CCE436999B9B8B7CFCDC9D0D0CEC8C6C8A6A6AC908A8BB3A593BAAC94B9
        8A7C6C7375D5D6D60000FEFFFFFFFFFFFFFFFFE9E4DE726F6D868283A59D92A2
        A19DCDCDCCAFB0B4A7A39DD4C9A7FFFDCAFFFDCFFFFFD2FFFCD6D8B4A3A4A7AA
        0000FDFFFFFFFFFEFEFFFFFFFFFFC7C4C1D1D0CC8B8988ACAAAA9D9EA0BAAC91
        FFE6AEFFE8B2FFE0AFFFE3B5FFE5B4FFF2C1DFBEABC1C5C70000FEFFFFFFFFFD
        FFFFFEF5F5F5C6C6C2FCFCFEFEFFFFC5CBD3D1AD82FFD49FFFD19CFED09EFDD3
        9FFBD49FFFE4B7FCE1BEC2AFA8DCE0E20000FFFFFFFFFFFFFFFFFFFFFFFFB4B3
        B2F3F3F2E0E3E5C88E69FFC796FABE94FAC59CFBCCA3FBD6AFFEE8CFFFE8CCD6
        A999BCC9CCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFECEBEBBBBFBFC9A699F8
        BA95FECCB2FCD2B9FDD9C2FFDDC8FFF0DDFFDAC1CB9F8EB7BDC0FBFAFBFFFFFF
        0000FFFFFFFFFFFFFFFFFFFDFDFDFFFFFFB8BABBAC8777FFD6C0FFD8C7FFDDC8
        FFE2D1FFE5D3E9B49AB1948FC1C9CCFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F8F8837E7BB68876D5B3A2D3B19FC69C8BAD8C7FB1AD
        B0E0E9EBFFFFFFFFFFFFFEFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFF
        FEFFFFFFF2F5F6C2C3C3B8B3B1BFBCB9D8D8D7E9EEEFFFFFFFFFFFFFFEFFFFFE
        FFFEFFFFFFFFFFFF0000}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnGeralClick
    end
    object BitBtnSair: TBitBtn
      Left = 677
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Sair'
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
      TabOrder = 3
      OnClick = BitBtnSairClick
    end
    object RadioGroupPesquisa: TRadioGroup
      Left = 2
      Top = 0
      Width = 260
      Height = 89
      Caption = 'Pesquisa'
      Columns = 2
      Items.Strings = (
        'Nome Cliente'
        'Apelido Cliente'
        'Nome Mascote '
        'Fone'
        'Fone Cel')
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 486
      Top = 61
      Width = 86
      Height = 25
      Caption = 'Cadastramento'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object pnlDireita: TPanel
    Left = 760
    Top = 0
    Width = 436
    Height = 389
    Align = alRight
    TabOrder = 1
    object DBGridFone: TDBGrid
      Left = 1
      Top = 236
      Width = 434
      Height = 152
      Align = alBottom
      DataSource = dsFoneCli
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDCLIENTES_FONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Width = 142
          Visible = True
        end>
    end
    object DBGridMascote: TDBGrid
      Left = 1
      Top = 1
      Width = 434
      Height = 235
      DataSource = dsMascote
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDMASCOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RACA'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NASCIMENTO'
          Visible = True
        end>
    end
  end
  object pnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 389
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 758
      Height = 387
      DataSource = dsClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDCLIENTE'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APELIDO'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE2'
          Width = 106
          Visible = True
        end>
    end
  end
  object qClientes: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from Clientes'
      'order by nome')
    Left = 528
    Top = 280
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    AfterScroll = cdsClientesAfterScroll
    Left = 528
    Top = 184
    object cdsClientesCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTE'
      Required = True
    end
    object cdsClientesCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Mascote'
      FieldName = 'CDMASCOTE'
    end
    object cdsClientesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClientesAPELIDO: TStringField
      DisplayLabel = 'Apelido'
      FieldName = 'APELIDO'
      Size = 50
    end
    object cdsClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClientesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsClientesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClientesCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00.000-000;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsClientesCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsClientesIE_RG: TStringField
      DisplayLabel = 'RG/INscr. Estadual'
      FieldName = 'IE_RG'
      Size = 10
    end
    object cdsClientesUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClientesDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATA_CADASTRO'
    end
    object cdsClientesTIPO_PESSOA: TIntegerField
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'TIPO_PESSOA'
    end
    object cdsClientesPNG: TIntegerField
      FieldName = 'PNG'
    end
    object cdsClientesEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsClientesLIMITE_CREDITO: TSingleField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'LIMITE_CREDITO'
      DisplayFormat = ' ###,##0.00'
    end
    object cdsClientesRESTRICAO: TIntegerField
      DisplayLabel = 'Restri'#231#227'o'
      FieldName = 'RESTRICAO'
    end
    object cdsClientesTIPO_RESTRICAO: TStringField
      DisplayLabel = 'Tipo Restri'#231#227'o'
      FieldName = 'TIPO_RESTRICAO'
      Size = 100
    end
    object cdsClientesFONE: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE'
      Size = 11
    end
    object cdsClientesFONE2: TStringField
      DisplayLabel = 'Fone:'
      FieldName = 'FONE2'
      Size = 11
    end
    object cdsClientesNASC_FUNDACAO: TDateField
      DisplayLabel = 'Nasc./Funda'#231#227'o'
      FieldName = 'NASC_FUNDACAO'
      EditMask = '00/00/0000;1;_'
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qClientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 528
    Top = 232
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 528
    Top = 136
  end
  object qFoneCli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cf.cdclientes_fone,'
      '       cf.cdcliente,'
      '       cf.tipo,'
      '       cf.numero,'
      '       c.apelido'
      ''
      'from clientes_fone cf'
      'join clientes c on c.cdcliente = cf.cdcliente'
      'where cf.cdcliente =:cdcliente')
    Left = 593
    Top = 280
    object qFoneCliCDCLIENTES_FONE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTES_FONE'
      Required = True
    end
    object qFoneCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
    end
    object qFoneCliTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 30
      FieldName = 'TIPO'
      Size = 30
    end
    object qFoneCliNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      EditMask = '(00)99999-9999;1;_'
      Size = 11
    end
    object qFoneCliAPELIDO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'APELIDO'
      Size = 50
    end
  end
  object cdsFoneCli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspFoneCli'
    Left = 593
    Top = 184
    object cdsFoneCliCDCLIENTES_FONE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCLIENTES_FONE'
      Required = True
    end
    object cdsFoneCliCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
    end
    object cdsFoneCliTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 30
    end
    object cdsFoneCliNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      EditMask = '(00)99999-9999;1;_'
      Size = 11
    end
  end
  object dspFoneCli: TDataSetProvider
    DataSet = qFoneCli
    UpdateMode = upWhereKeyOnly
    Left = 593
    Top = 232
  end
  object dsFoneCli: TDataSource
    DataSet = cdsFoneCli
    Left = 593
    Top = 136
  end
  object cdsMascote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CDCLIENTE'
    MasterFields = 'CDCLIENTE'
    MasterSource = dsClientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspMascote'
    Left = 664
    Top = 185
    object cdsMascoteCDMASCOTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDMASCOTE'
      Required = True
    end
    object cdsMascoteCDRACA: TIntegerField
      DisplayLabel = 'C'#243'd Ra'#231'a'
      FieldName = 'CDRACA'
    end
    object cdsMascoteCDTIPO: TIntegerField
      DisplayLabel = 'C'#243'd Tipo'
      FieldName = 'CDTIPO'
    end
    object cdsMascoteCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd Cliente'
      FieldName = 'CDCLIENTE'
    end
    object cdsMascoteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 10
    end
    object cdsMascoteCOR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Size = 10
    end
    object cdsMascoteNASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'NASCIMENTO'
    end
    object cdsMascoteOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Size = 1
    end
    object cdsMascoteDATA_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATA_CADASTRO'
    end
    object cdsMascoteRACA: TStringField
      DisplayLabel = 'Ra'#231'a'
      FieldName = 'RACA'
      Size = 30
    end
    object cdsMascoteTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 35
    end
  end
  object dsMascote: TDataSource
    DataSet = cdsMascote
    Left = 663
    Top = 135
  end
  object dspMascote: TDataSetProvider
    DataSet = qMascote
    Left = 659
    Top = 230
  end
  object qMascote: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdcliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select m.cdmascote,'
      '       m.cdraca,'
      '       m.cdtipo,'
      '       m.cdcliente,'
      '       m.nome,'
      '       m.cor,'
      '       m.nascimento,'
      '       m.obs,'
      '       m.data_cadastro,'
      '       r.descricao as raca,'
      '       t.descricao as tipo'
      'from mascote m'
      'join racas  r   on r.cdraca    = m.cdraca'
      'join tipos  t   on t.cdtipo    = m.cdtipo'
      'where m.cdcliente =:cdcliente')
    Left = 660
    Top = 281
  end
end
