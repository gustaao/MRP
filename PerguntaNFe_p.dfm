object PerguntaNFe: TPerguntaNFe
  Left = 287
  Top = 131
  Caption = 'MRP - Informe o N'#186' da NFe'
  ClientHeight = 300
  ClientWidth = 995
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 39
    Top = 231
    Width = 714
    Height = 61
    TabOrder = 0
    TabStop = True
    object BitBtn1: TJvXPButton
      Left = 107
      Top = 22
      Width = 77
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      ModalResult = 1
      OnClick = BitBtn1Click
    end
    object BitBtnFechar: TJvXPButton
      Left = 527
      Top = 22
      Width = 88
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      ModalResult = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 39
    Top = 19
    Width = 716
    Height = 206
    TabOrder = 1
    TabStop = True
    object Label2: TLabel
      Left = 233
      Top = 19
      Width = 69
      Height = 13
      Caption = 'Tipo de Envio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 237
      Top = 51
      Width = 65
      Height = 13
      Caption = 'Tipo de NF-e:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 220
      Top = 81
      Width = 86
      Height = 13
      Caption = 'N'#186' da Nota Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 308
      Top = 16
      Width = 184
      Height = 21
      TabOrder = 0
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Contingencia'
        'SCAN'
        'FSDA'
        'EPEC')
    end
    object ComboBox2: TComboBox
      Left = 308
      Top = 48
      Width = 184
      Height = 21
      TabOrder = 1
      Text = 'Normal'
      Items.Strings = (
        'Normal'
        'Complementar'
        'Ajuste'
        'Devolucao de Mercadoria')
    end
    object JvNavPanelHeader1: TJvNavPanelHeader
      Left = 2
      Top = 168
      Width = 712
      Height = 36
      Align = alBottom
      Caption = 'Ultima Nota Gerada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ColorFrom = clHighlight
      ColorTo = clAqua
      ImageIndex = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 308
      Top = 75
      Width = 65
      Height = 21
      TabOrder = 3
      Text = '0'
      OnExit = MaskEdit1Exit
      OnKeyPress = MaskEdit1KeyPress
    end
    object CheckBoxCobraFrete: TCheckBox
      Left = 356
      Top = 147
      Width = 191
      Height = 15
      Caption = 'Cobra o Frete do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object CheckBox4: TCheckBox
      Left = 356
      Top = 128
      Width = 357
      Height = 17
      Caption = 
        'Imprimir Nosso C'#243'digo de Fornecedor no Cliente nos Dados Adicion' +
        'ais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object CheckBox3: TCheckBox
      Left = 95
      Top = 145
      Width = 250
      Height = 17
      Caption = 'Imprimir C'#243'digo do Cliente nos Dados Adicionais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 95
      Top = 124
      Width = 185
      Height = 17
      Caption = 'Imprimir Nr Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 95
      Top = 103
      Width = 185
      Height = 17
      Caption = 'Imprimir Descri'#231#227'o do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 73
    Top = 13
  end
  object qNF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'nrnf'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '       nf.nrnf,'
      '       nf.serie,'
      
        '       cast(nf.dtemisnf ||'#39' '#39'||nf.hora_emissao as timestamp) as ' +
        'dtemisnf,'
      '       nf.hora_emissao,'
      '       nf.data_hora_saida_receita,'
      '       nf.tpdocto,'
      '       nf.cdpedido,'
      '       nf.cdcliente,'
      
        '       cast(nf.dtsaida ||'#39' '#39'||nf.hora_emissao as timestamp) as d' +
        'tsaida,'
      '       nf.vltotmer,'
      '       nf.baseipi,'
      '       nf.vltotipi,'
      '       nf.vltotnf,'
      '       nf.vldesc,'
      '       nf.pcdesc,'
      '       nf.vlcomis,'
      '       nf.cdvended,'
      '       nf.baseicms,'
      '       nf.pcicms,'
      '       nf.vltoticms,'
      '       nf.cdobsfis,'
      '       nf.obs_fiscal,'
      '       nf.cst_ipi,'
      '       nf.enquadramento_ipi,'
      '       nf.cdcondpg,'
      '       nf.quantida,'
      '       nf.cdnatope,'
      '       nf.cdtransp,'
      '       nf.fretec,'
      '       nf.tipo_tranporte,'
      '       nf.placa,'
      '       nf.estado_placa,'
      '       nf.pcfrete,'
      '       nf.vltotfre,'
      '       nf.pesoliqt,'
      '       nf.pesobrut,'
      '       nf.usuario,'
      '       nf.indstat,'
      '       nf.fatura,'
      '       nf.vldev,'
      '       nf.icmsfrete,'
      '       nf.clifor,'
      '       nf.vltotservico,'
      '       nf.vltotiss,'
      '       nf.dt_p_retorno,'
      '       nf.dt_retorno,'
      '       nf.frete_cadastro_por,'
      '       nf.liberado_frete_em,'
      '       nf.pago_em,'
      '       nf.embarque,'
      '       nf.sequencia,'
      '       nf.valor_total_pis,'
      '       nf.valor_total_cofins,'
      '       nf.referencia_nc,'
      '       nf.valor_diferimento,'
      '       nf.chave,'
      '       nf.tpemis,'
      '       nf.versao_nfe,'
      '       nf.data_cancelamento,'
      '       nf.refnf,'
      '       nf.ufembarq,'
      '       nf.xlocembarq,'
      '       nf.resultado_nfe,'
      '       nf.protocolo_nfe,'
      '       nf.canhoto_ok,'
      '       nf.envio_datahora,'
      '       nf.nrevento,'
      '       nf.referencia_nf_devolucao,'
      '       nf.nf_entrada,'
      '       nf.cdmotivo_emissao,'
      '       nf.justificativa_emissao,'
      '       nf.epec_conciliado,'
      '       nf.codigo_para_chave_nfe,'
      '       nf.vlseguro,'
      '       nf.vloutras_despesas,'
      '       nf.cdantt,'
      '       nf.baseicmsubst,'
      '       nf.vltoticmsubst,'
      '       nf.especie,'
      ''
      '       natuope.descrnat,'
      '       transportadores.nome as transportador,'
      '       transportadores.cpf_cnpj as Transp_cpf_cnpj,'
      '       transportadores.rg_ie as transp_rg_ie,'
      
        '       transportadores.endereco||'#39','#39'||transportadores.numero as ' +
        'transp_endereco,'
      '       Transportadores.cidade as transp_cidade,'
      '       transportadores.uf as transp_uf,'
      ''
      '       vendedores.nome as vendedor,'
      '       clientes.nome as cliente,'
      '       clientes.cpf_cnpj,'
      '       clientes.ie_rg,'
      '       clientes.endereco,'
      '       clientes.numero,'
      '       clientes.bairro,'
      '       clientes.cidade,'
      '       clientes.cep,'
      '       clientes.uf,'
      '       clientes.cod_ibge,'
      '       clientes.cod_pais,'
      '       clientes.pais,'
      '       clientes.fone,'
      '       clientes.tipo_pessoa'
      ''
      'from nf'
      'left join natuope on natuope.cdnatope = nf.cdnatope'
      
        'left join transportadores on transportadores.cdtransportador = n' +
        'f.cdtransp'
      'left join vendedores on vendedores.cdvendedor = nf.cdvended'
      'left join pedidos on pedidos.cdpedido = nf.cdpedido'
      'left join clientes on clientes.cdcliente = pedidos.cdcliente'
      'where nf.nrnf=:nrnf'
      ''
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 765
    Top = 188
    object qNFNRNF: TFMTBCDField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object qNFSERIE: TSmallintField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFDATA_HORA_SAIDA_RECEITA: TStringField
      FieldName = 'DATA_HORA_SAIDA_RECEITA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qNFTPDOCTO: TStringField
      FieldName = 'TPDOCTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDCLIENTE: TFMTBCDField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFVLTOTMER: TFMTBCDField
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFBASEIPI: TFMTBCDField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qNFVLTOTIPI: TFMTBCDField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLTOTNF: TFMTBCDField
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLDESC: TFMTBCDField
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFPCDESC: TFMTBCDField
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLCOMIS: TFMTBCDField
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFCDVENDED: TSmallintField
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFPCICMS: TFMTBCDField
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLTOTICMS: TFMTBCDField
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFCDOBSFIS: TSmallintField
      FieldName = 'CDOBSFIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFOBS_FISCAL: TStringField
      FieldName = 'OBS_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object qNFCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object qNFENQUADRAMENTO_IPI: TSmallintField
      FieldName = 'ENQUADRAMENTO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDCONDPG: TSmallintField
      FieldName = 'CDCONDPG'
      ProviderFlags = [pfInUpdate]
    end
    object qNFQUANTIDA: TFMTBCDField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object qNFTIPO_TRANPORTE: TStringField
      FieldName = 'TIPO_TRANPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object qNFPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object qNFESTADO_PLACA: TStringField
      FieldName = 'ESTADO_PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFPCFRETE: TFMTBCDField
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLTOTFRE: TFMTBCDField
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFPESOLIQT: TFMTBCDField
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFPESOBRUT: TFMTBCDField
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFINDSTAT: TStringField
      FieldName = 'INDSTAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFVLDEV: TFMTBCDField
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFICMSFRETE: TFMTBCDField
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFCLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFVLTOTSERVICO: TFMTBCDField
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLTOTISS: TFMTBCDField
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFDT_P_RETORNO: TDateField
      FieldName = 'DT_P_RETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFDT_RETORNO: TDateField
      FieldName = 'DT_RETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFFRETE_CADASTRO_POR: TStringField
      FieldName = 'FRETE_CADASTRO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qNFLIBERADO_FRETE_EM: TDateField
      FieldName = 'LIBERADO_FRETE_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPAGO_EM: TDateField
      FieldName = 'PAGO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFEMBARQUE: TIntegerField
      FieldName = 'EMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVALOR_TOTAL_PIS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVALOR_TOTAL_COFINS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFVALOR_DIFERIMENTO: TFMTBCDField
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 44
    end
    object qNFTPEMIS: TSmallintField
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVERSAO_NFE: TStringField
      FieldName = 'VERSAO_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFDATA_CANCELAMENTO: TDateField
      FieldName = 'DATA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFNF: TIntegerField
      FieldName = 'REFNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qNFXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNFRESULTADO_NFE: TStringField
      FieldName = 'RESULTADO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNFPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qNFCANHOTO_OK: TStringField
      FieldName = 'CANHOTO_OK'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFENVIO_DATAHORA: TSQLTimeStampField
      FieldName = 'ENVIO_DATAHORA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFNREVENTO: TIntegerField
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFNF_ENTRADA: TFMTBCDField
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFCDMOTIVO_EMISSAO: TIntegerField
      FieldName = 'CDMOTIVO_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFJUSTIFICATIVA_EMISSAO: TStringField
      FieldName = 'JUSTIFICATIVA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qNFEPEC_CONCILIADO: TStringField
      FieldName = 'EPEC_CONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFCODIGO_PARA_CHAVE_NFE: TStringField
      FieldName = 'CODIGO_PARA_CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qNFVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFFRETEC: TStringField
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFCDANTT: TIntegerField
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFDESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      ProviderFlags = []
      Size = 40
    end
    object qNFTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      ProviderFlags = []
      Size = 50
    end
    object qNFVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qNFCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qNFIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = []
    end
    object qNFENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNFBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object qNFCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object qNFCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object qNFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object qNFCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qNFFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 11
    end
    object qNFTRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object qNFTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 51
    end
    object qNFTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object qNFTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFBASEICMSUBST: TFMTBCDField
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFVLTOTICMSUBST: TFMTBCDField
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qNFPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qNFDTEMISNF: TSQLTimeStampField
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFDTSAIDA: TSQLTimeStampField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFTRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      Size = 14
    end
    object qNFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
  end
  object dspNF: TDataSetProvider
    DataSet = qNF
    UpdateMode = upWhereKeyOnly
    Left = 765
    Top = 143
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    AfterOpen = cdsNFAfterOpen
    Left = 765
    Top = 98
    object cdsNFNRNF: TFMTBCDField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object cdsNFSERIE: TSmallintField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFDATA_HORA_SAIDA_RECEITA: TStringField
      FieldName = 'DATA_HORA_SAIDA_RECEITA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object cdsNFTPDOCTO: TStringField
      FieldName = 'TPDOCTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDCLIENTE: TFMTBCDField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFVLTOTMER: TFMTBCDField
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFBASEIPI: TFMTBCDField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTIPI: TFMTBCDField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTNF: TFMTBCDField
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLDESC: TFMTBCDField
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFPCDESC: TFMTBCDField
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLCOMIS: TFMTBCDField
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFCDVENDED: TSmallintField
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFPCICMS: TFMTBCDField
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTICMS: TFMTBCDField
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFCDOBSFIS: TSmallintField
      FieldName = 'CDOBSFIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFOBS_FISCAL: TStringField
      FieldName = 'OBS_FISCAL'
      ProviderFlags = [pfInUpdate]
      Size = 800
    end
    object cdsNFCST_IPI: TStringField
      FieldName = 'CST_IPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 5
    end
    object cdsNFENQUADRAMENTO_IPI: TSmallintField
      FieldName = 'ENQUADRAMENTO_IPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDCONDPG: TSmallintField
      FieldName = 'CDCONDPG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFQUANTIDA: TFMTBCDField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFTIPO_TRANPORTE: TStringField
      FieldName = 'TIPO_TRANPORTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 9
    end
    object cdsNFPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 7
    end
    object cdsNFESTADO_PLACA: TStringField
      FieldName = 'ESTADO_PLACA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFPCFRETE: TFMTBCDField
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTFRE: TFMTBCDField
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFPESOLIQT: TFMTBCDField
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFPESOBRUT: TFMTBCDField
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFINDSTAT: TStringField
      FieldName = 'INDSTAT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFFATURA: TStringField
      FieldName = 'FATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFVLDEV: TFMTBCDField
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFICMSFRETE: TFMTBCDField
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFCLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFVLTOTSERVICO: TFMTBCDField
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTISS: TFMTBCDField
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFDT_P_RETORNO: TDateField
      FieldName = 'DT_P_RETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDT_RETORNO: TDateField
      FieldName = 'DT_RETORNO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFFRETE_CADASTRO_POR: TStringField
      FieldName = 'FRETE_CADASTRO_POR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsNFLIBERADO_FRETE_EM: TDateField
      FieldName = 'LIBERADO_FRETE_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPAGO_EM: TDateField
      FieldName = 'PAGO_EM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFEMBARQUE: TIntegerField
      FieldName = 'EMBARQUE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_TOTAL_PIS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVALOR_TOTAL_COFINS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFVALOR_DIFERIMENTO: TFMTBCDField
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 44
    end
    object cdsNFTPEMIS: TSmallintField
      FieldName = 'TPEMIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVERSAO_NFE: TStringField
      FieldName = 'VERSAO_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFDATA_CANCELAMENTO: TDateField
      FieldName = 'DATA_CANCELAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFREFNF: TIntegerField
      FieldName = 'REFNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsNFXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFRESULTADO_NFE: TStringField
      FieldName = 'RESULTADO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsNFPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsNFCANHOTO_OK: TStringField
      FieldName = 'CANHOTO_OK'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFENVIO_DATAHORA: TSQLTimeStampField
      FieldName = 'ENVIO_DATAHORA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFNREVENTO: TIntegerField
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFNF_ENTRADA: TFMTBCDField
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFCDMOTIVO_EMISSAO: TIntegerField
      FieldName = 'CDMOTIVO_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFJUSTIFICATIVA_EMISSAO: TStringField
      FieldName = 'JUSTIFICATIVA_EMISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsNFEPEC_CONCILIADO: TStringField
      FieldName = 'EPEC_CONCILIADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFCODIGO_PARA_CHAVE_NFE: TStringField
      FieldName = 'CODIGO_PARA_CHAVE_NFE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object cdsNFVLSEGURO: TFMTBCDField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLOUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFCDANTT: TIntegerField
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFFRETEC: TStringField
      DisplayLabel = 'Frete'
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFDESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      ProviderFlags = []
      Size = 40
    end
    object cdsNFTRANSPORTADOR: TStringField
      FieldName = 'TRANSPORTADOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = []
    end
    object cdsNFENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 101
    end
    object cdsNFBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object cdsNFUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object cdsNFCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsNFFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 11
    end
    object cdsNFTRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object cdsNFTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 51
    end
    object cdsNFTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object cdsNFTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFBASEICMSUBST: TFMTBCDField
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFVLTOTICMSUBST: TFMTBCDField
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object cdsNFTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
    end
    object cdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsNFPAIS: TStringField
      FieldName = 'PAIS'
      Size = 60
    end
    object cdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNFDTEMISNF: TSQLTimeStampField
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDTSAIDA: TSQLTimeStampField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 13
    end
    object cdsNFTRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      Size = 13
    end
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 765
    Top = 53
  end
  object dsNFI: TDataSource
    DataSet = cdsNFI
    Left = 821
    Top = 53
  end
  object cdsNFI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFI'
    Left = 821
    Top = 98
    object cdsNFICDNFITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDNFITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFINRNF: TFMTBCDField
      DisplayLabel = 'N'#186' NFe'
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 0
    end
    object cdsNFISERIE: TSmallintField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFINRSEQUEN: TSmallintField
      DisplayLabel = 'Sequen.'
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDPEDIDO: TIntegerField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFITIPO_BAIXA: TStringField
      DisplayLabel = 'Tipo Baixa'
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFIQUANTIDA: TFMTBCDField
      DisplayLabel = 'Qtd.'
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object cdsNFIVLUNIT: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'VLUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 5
    end
    object cdsNFIVLTOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIIDCLASS: TSmallintField
      FieldName = 'IDCLASS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDTRIBUT: TSmallintField
      DisplayLabel = 'C'#243'd. Tribut'#225'rio'
      FieldName = 'CDTRIBUT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFIVLTOTIPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIPCIPI: TFMTBCDField
      DisplayLabel = '% IPI'
      FieldName = 'PCIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFICDBENEF: TSmallintField
      FieldName = 'CDBENEF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIREFEREN: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'REFEREN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object cdsNFIDESCPRO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCPRO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object cdsNFIPEDIDCLI: TStringField
      DisplayLabel = 'N'#186' O.C.'
      FieldName = 'PEDIDCLI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsNFIPESOTOTL: TFMTBCDField
      DisplayLabel = 'Peso Total'
      FieldName = 'PESOTOTL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 0
    end
    object cdsNFIQUANTESPE: TFMTBCDField
      DisplayLabel = 'Qtd.'
      FieldName = 'QUANTESPE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object cdsNFISITUTRI: TStringField
      DisplayLabel = 'Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'SITUTRI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsNFIVLDESCI: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VLDESCI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIVLTOTICM: TFMTBCDField
      DisplayLabel = 'Valor Total ICMS'
      FieldName = 'VLTOTICM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIPCICM: TFMTBCDField
      DisplayLabel = '% ICMS'
      FieldName = 'PCICM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFISERVICO_PRODUTO: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFIBASEIPI: TFMTBCDField
      DisplayLabel = 'Base Calc. IPI'
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIBASE_CALCULO_ICMS: TFMTBCDField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'BASE_CALCULO_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIVALOR_PIS: TFMTBCDField
      DisplayLabel = 'Valor PIS'
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIPCCOFINS: TFMTBCDField
      DisplayLabel = '% PIS'
      FieldName = 'PCCOFINS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,###,#0.00'
      Precision = 18
      Size = 2
    end
    object cdsNFIPEDIDCLIITEM: TStringField
      FieldName = 'PEDIDCLIITEM'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsNFICSTPIS: TStringField
      FieldName = 'CSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFICSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFICSTIPI: TStringField
      FieldName = 'CSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsNFIDATA_BAIXA_TOTAL: TDateField
      FieldName = 'DATA_BAIXA_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDNATOPEITEM: TSmallintField
      DisplayLabel = 'CFOP'
      FieldName = 'CDNATOPEITEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFIDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNFICDINTERNO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object cdsNFINCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 35
    end
    object cdsNFITIPO_UN_SAIDA: TStringField
      DisplayLabel = 'Tipo Unid.'
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object cdsNFIUNID_SAIDA: TSingleField
      DisplayLabel = 'Unid.'
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object cdsNFICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsNFIIPI: TSingleField
      FieldName = 'IPI'
      ProviderFlags = []
    end
    object cdsNFIICMS: TSingleField
      FieldName = 'ICMS'
      ProviderFlags = []
    end
    object cdsNFISIT_TRIBUTARIA: TStringField
      DisplayLabel = 'Sit. Tribut'#225'ria'
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFICDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
    end
    object cdsNFIPCPIS: TFMTBCDField
      FieldName = 'PCPIS'
      Precision = 18
      Size = 2
    end
    object cdsNFIVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
  end
  object dspNFI: TDataSetProvider
    DataSet = qNFI
    UpdateMode = upWhereKeyOnly
    Left = 821
    Top = 143
  end
  object qNFI: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'nrnf'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select nfitem.cdnfitem,'
      '       nfitem.nrnf,'
      '       nfitem.serie,'
      '       nfitem.nrsequen,'
      '       nfitem.cdpedido,'
      '       nfitem.tipo_baixa,'
      '       nfitem.quantida,'
      '       nfitem.cdnatopeitem,'
      '       nfitem.vlunit,'
      '       nfitem.vltotal,'
      '       nfitem.idclass,'
      '       nfitem.cdtribut,'
      '       nfitem.unidade,'
      '       nfitem.vltotipi,'
      '       nfitem.pcipi,'
      '       nfitem.pcpis,'
      '       nfitem.cdbenef,'
      '       nfitem.referen,'
      '       nfitem.descpro,'
      '       nfitem.pedidcli,'
      '       nfitem.pesototl,'
      '       nfitem.quantespe,'
      '       nfitem.situtri,'
      '       nfitem.vldesci,'
      '       nfitem.vltoticm,'
      '       nfitem.pcicm,'
      '       nfitem.servico_produto,'
      '       nfitem.baseipi,'
      '       nfitem.base_calculo_icms,'
      '       nfitem.valor_pis,'
      '       nfitem.pccofins,'
      '       nfitem.valor_cofins,'
      '       nfitem.pedidcliitem,'
      '       nfitem.cstpis,'
      '       nfitem.cstcofins,'
      '       nfitem.cstipi,'
      '       nfitem.data_baixa_total,'
      '       nfitem.cdproduto,'
      '       produtos.descricao,'
      '       produtos.cdinterno,'
      '       produtos.ncm,'
      '       produtos.tipo_un_saida,'
      '       produtos.unid_saida,'
      '       produtos.cfop,'
      '       produtos.ipi,'
      '       produtos.icms,'
      '       produtos.sit_tributaria,'
      '       produtos.cdorigem'
      ''
      'from nfitem'
      'join produtos on produtos.cdproduto = nfitem.cdproduto'
      'where nfitem.nrnf =:nrnf')
    SQLConnection = DMPrincipal.SQLCon
    Left = 821
    Top = 188
    object qNFICDNFITEM: TIntegerField
      FieldName = 'CDNFITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNFINRNF: TFMTBCDField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 0
    end
    object qNFISERIE: TSmallintField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFINRSEQUEN: TSmallintField
      FieldName = 'NRSEQUEN'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFITIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFIQUANTIDA: TFMTBCDField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 3
    end
    object qNFIVLUNIT: TFMTBCDField
      FieldName = 'VLUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object qNFIVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIIDCLASS: TSmallintField
      FieldName = 'IDCLASS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDTRIBUT: TSmallintField
      FieldName = 'CDTRIBUT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFIVLTOTIPI: TFMTBCDField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIPCIPI: TFMTBCDField
      FieldName = 'PCIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFICDBENEF: TSmallintField
      FieldName = 'CDBENEF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIREFEREN: TStringField
      FieldName = 'REFEREN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 30
    end
    object qNFIDESCPRO: TStringField
      FieldName = 'DESCPRO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object qNFIPEDIDCLI: TStringField
      FieldName = 'PEDIDCLI'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qNFIPESOTOTL: TFMTBCDField
      FieldName = 'PESOTOTL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFIQUANTESPE: TFMTBCDField
      FieldName = 'QUANTESPE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qNFISITUTRI: TStringField
      FieldName = 'SITUTRI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qNFIVLDESCI: TFMTBCDField
      FieldName = 'VLDESCI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIVLTOTICM: TFMTBCDField
      FieldName = 'VLTOTICM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIPCICM: TFMTBCDField
      FieldName = 'PCICM'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFISERVICO_PRODUTO: TStringField
      FieldName = 'SERVICO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFIBASEIPI: TFMTBCDField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIPCCOFINS: TFMTBCDField
      FieldName = 'PCCOFINS'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qNFIPEDIDCLIITEM: TStringField
      FieldName = 'PEDIDCLIITEM'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object qNFICSTPIS: TStringField
      FieldName = 'CSTPIS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFICSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFICSTIPI: TStringField
      FieldName = 'CSTIPI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNFIDATA_BAIXA_TOTAL: TDateField
      FieldName = 'DATA_BAIXA_TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDNATOPEITEM: TSmallintField
      FieldName = 'CDNATOPEITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICDPRODUTO: TIntegerField
      FieldName = 'CDPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object qNFICDINTERNO: TStringField
      FieldName = 'CDINTERNO'
      ProviderFlags = []
      Size = 8
    end
    object qNFINCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 35
    end
    object qNFITIPO_UN_SAIDA: TStringField
      FieldName = 'TIPO_UN_SAIDA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qNFIUNID_SAIDA: TSingleField
      FieldName = 'UNID_SAIDA'
      ProviderFlags = []
    end
    object qNFICFOP: TStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qNFIIPI: TSingleField
      FieldName = 'IPI'
      ProviderFlags = []
    end
    object qNFIICMS: TSingleField
      FieldName = 'ICMS'
      ProviderFlags = []
    end
    object qNFISIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 10
    end
    object qNFICDORIGEM: TIntegerField
      FieldName = 'CDORIGEM'
    end
    object qNFIPCPIS: TFMTBCDField
      FieldName = 'PCPIS'
      Precision = 18
      Size = 2
    end
    object qNFIVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
  end
  object qNO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdnatope'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from natuope'
      'where natuope.cdnatope =:cdnatope')
    SQLConnection = DMPrincipal.SQLCon
    Left = 869
    Top = 188
  end
  object dspNO: TDataSetProvider
    DataSet = qNO
    Left = 869
    Top = 143
  end
  object cdsNO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNO'
    Left = 869
    Top = 98
    object cdsNOCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
    end
    object cdsNODESCRNAT: TStringField
      FieldName = 'DESCRNAT'
      Size = 40
    end
    object cdsNOGERADUP: TStringField
      FieldName = 'GERADUP'
      FixedChar = True
      Size = 1
    end
    object cdsNOCRIADUP: TStringField
      FieldName = 'CRIADUP'
      FixedChar = True
      Size = 1
    end
    object cdsNOCDNATOPE2: TSmallintField
      FieldName = 'CDNATOPE2'
    end
    object cdsNOALTERADO_POR: TStringField
      FieldName = 'ALTERADO_POR'
      Size = 10
    end
    object cdsNOALTERADO_EM: TDateField
      FieldName = 'ALTERADO_EM'
    end
    object cdsNONOTA_DE_REMESSA_COM_RETORNO: TStringField
      FieldName = 'NOTA_DE_REMESSA_COM_RETORNO'
      FixedChar = True
      Size = 1
    end
    object cdsNODESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
    object cdsNOCFOP_DE_DEVOLUCAO: TStringField
      FieldName = 'CFOP_DE_DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
  end
  object dsNO: TDataSource
    DataSet = cdsNO
    Left = 869
    Top = 53
  end
  object qCTR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdpedido'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from ctas_receber'
      'where ctas_receber.cdpedido =:cdpedido')
    SQLConnection = DMPrincipal.SQLCon
    Left = 933
    Top = 188
  end
  object dspCTR: TDataSetProvider
    DataSet = qCTR
    Left = 933
    Top = 143
  end
  object cdsCTR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCTR'
    Left = 933
    Top = 98
    object cdsCTRCDCTAS_RECEBER: TIntegerField
      FieldName = 'CDCTAS_RECEBER'
      Required = True
    end
    object cdsCTRCDPEDIDO: TIntegerField
      FieldName = 'CDPEDIDO'
    end
    object cdsCTRDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCTRVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCTRVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsCTRTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 35
    end
    object cdsCTRDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object cdsCTRLIQUIDADO: TIntegerField
      FieldName = 'LIQUIDADO'
    end
    object cdsCTRLIQUIDADO_POR: TStringField
      FieldName = 'LIQUIDADO_POR'
      Size = 10
    end
    object cdsCTRLIQUIDADO_EM: TDateField
      FieldName = 'LIQUIDADO_EM'
    end
    object cdsCTRCDPLANO_CONTAS: TIntegerField
      FieldName = 'CDPLANO_CONTAS'
    end
    object cdsCTRPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsCTRVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object cdsCTRVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 18
      Size = 2
    end
    object cdsCTRVALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'VALOR_ABATIMENTO'
      Precision = 18
      Size = 2
    end
    object cdsCTRCDPORTADOR: TIntegerField
      FieldName = 'CDPORTADOR'
    end
    object cdsCTRCADASTRADO_POR: TStringField
      FieldName = 'CADASTRADO_POR'
      Size = 10
    end
    object cdsCTRCADASTRADO_EM: TSQLTimeStampField
      FieldName = 'CADASTRADO_EM'
    end
  end
  object dsCTR: TDataSource
    DataSet = cdsCTR
    Left = 933
    Top = 53
  end
end
