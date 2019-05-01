object TelaContaCliente: TTelaContaCliente
  Left = 0
  Top = 0
  Caption = 'Onzenet - Conta-Corrente Cliente'
  ClientHeight = 418
  ClientWidth = 1165
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1165
    Height = 44
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 1165
    Height = 238
    Align = alClient
    DataSource = dsContaCliente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CDCONTA_CORRENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDCLIENTE'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDPEDIDO'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 326
    Width = 1165
    Height = 92
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 285
      Top = 18
      Width = 42
      Height = 13
      Caption = 'Pesquisa'
    end
    object EditPesquisa: TEdit
      Left = 282
      Top = 34
      Width = 198
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object BitBtnPesquisa: TBitBtn
      Left = 485
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Pesquisa'
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
      TabOrder = 1
      TabStop = False
      OnClick = BitBtnPesquisaClick
    end
    object BitBtn3: TBitBtn
      Left = 581
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Geral'
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
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 677
      Top = 32
      Width = 86
      Height = 25
      Caption = 'Sair'
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
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn4Click
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
        'Nome Reduzido'
        'C'#243'digo Cliente')
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 282
    Width = 1165
    Height = 44
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 17
      Width = 80
      Height = 16
      Caption = 'Saldo Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditSaldoCliente: TEdit
      Left = 97
      Top = 10
      Width = 116
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object qContaCliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select cc.cdconta_corrente, cc.cdcliente, cc.cdpedido, cc.data, ' +
        'cc.descricao,'
      
        '       cc.debito, cc.credito, cc.saldo, cc.cdusuario, clientes.n' +
        'ome,'
      '       clientes.apelido'
      'from conta_corrente cc'
      'join clientes on clientes.cdcliente = cc.cdcliente'
      'order by clientes.nome')
    SQLConnection = DMPrincipal.SQLCon
    Left = 989
    Top = 183
    object qContaClienteCDCONTA_CORRENTE: TIntegerField
      FieldName = 'CDCONTA_CORRENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qContaClienteCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qContaClienteCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qContaClienteDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object qContaClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qContaClienteDEBITO: TFMTBCDField
      FieldName = 'DEBITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qContaClienteCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qContaClienteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qContaClienteCDUSUARIO: TIntegerField
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qContaClienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qContaClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspContaCliente: TDataSetProvider
    DataSet = qContaCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspContaClienteGetTableName
    Left = 988
    Top = 135
  end
  object cdsContaCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContaCliente'
    Left = 988
    Top = 84
    object cdsContaClienteCDCONTA_CORRENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDCONTA_CORRENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContaClienteCDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaClienteCDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaClienteDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '00/00/0000;0;_'
    end
    object cdsContaClienteDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsContaClienteDEBITO: TFMTBCDField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsContaClienteCREDITO: TFMTBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsContaClienteSALDO: TFMTBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsContaClienteCDUSUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usuario'
      FieldName = 'CDUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsContaClienteNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsContaClienteAPELIDO: TStringField
      DisplayLabel = 'Nome Red.'
      FieldName = 'APELIDO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsContaCliente: TDataSource
    DataSet = cdsContaCliente
    Left = 988
    Top = 41
  end
  object qSoma: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'select cc.cdconta_corrente, cc.cdcliente, cc.cdpedido, cc.data, ' +
        'cc.descricao,'
      
        '       cc.debito, cc.credito, cc.saldo, cc.cdusuario, clientes.n' +
        'ome,'
      '       clientes.apelido'
      'from conta_corrente cc'
      'join clientes on clientes.cdcliente = cc.cdcliente'
      'order by clientes.nome')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1085
    Top = 185
  end
end
