object TelaNFe: TTelaNFe
  Left = -127
  Top = 90
  Caption = 'MRP - Tela NF-e'
  ClientHeight = 709
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMinimized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 279
    Height = 709
    Align = alLeft
    BorderWidth = 1
    Color = clGradientActiveCaption
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 281
      Height = 492
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 277
        Height = 475
        ActivePage = TabSheet7
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGradientActiveCaption
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object GroupBox2: TGroupBox
            Left = 0
            Top = 4
            Width = 250
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label2: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object sbtnCaminhoCert: TSpeedButton
              Left = 219
              Top = 32
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnCaminhoCertClick
            end
            object Label25: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object sbtnGetCert: TSpeedButton
              Left = 219
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnGetCertClick
            end
            object edtCaminho: TEdit
              Left = 8
              Top = 32
              Width = 211
              Height = 21
              TabOrder = 0
            end
            object edtSenha: TEdit
              Left = 8
              Top = 72
              Width = 234
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
            end
            object edtNumSerie: TEdit
              Left = 8
              Top = 112
              Width = 211
              Height = 21
              TabOrder = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 0
            Top = 4
            Width = 258
            Height = 207
            Caption = 'Geral'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label7: TLabel
              Left = 8
              Top = 16
              Width = 57
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 219
              Top = 28
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnLogoMarcaClick
            end
            object sbtnPathSalvar: TSpeedButton
              Left = 222
              Top = 77
              Width = 23
              Height = 24
              Enabled = False
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnPathSalvarClick
            end
            object SpeedButton1: TSpeedButton
              Left = 224
              Top = 126
              Width = 23
              Height = 24
              Enabled = False
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnPathSalvarClick
            end
            object edtLogoMarca: TEdit
              Left = 8
              Top = 32
              Width = 211
              Height = 21
              TabOrder = 0
            end
            object edtPathLogs: TEdit
              Left = 5
              Top = 82
              Width = 211
              Height = 21
              ReadOnly = True
              TabOrder = 1
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 64
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Checked = True
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
            object edtPathCCe: TEdit
              Left = 8
              Top = 129
              Width = 211
              Height = 21
              ReadOnly = True
              TabOrder = 3
            end
            object cbxSalvaCCeCancelamentoPathEvento: TCheckBox
              Left = 8
              Top = 109
              Width = 215
              Height = 17
              Caption = 'Salvar Arqs Canc./CCe na pasta Eventos'
              Checked = True
              Enabled = False
              State = cbChecked
              TabOrder = 4
            end
          end
        end
        object TabSheet3: TTabSheet
          BorderWidth = 1
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox4: TGroupBox
            Left = 0
            Top = 4
            Width = 250
            Height = 196
            Caption = 'WebService'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 8
              Top = 152
              Width = 138
              Height = 13
              Caption = 'Selecione o tipo de conex'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cbxVisualizar: TCheckBox
              Left = 8
              Top = 118
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Visible = False
            end
            object cbUF: TComboBox
              Left = 8
              Top = 32
              Width = 234
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 24
              ParentFont = False
              TabOrder = 1
              Text = 'SP'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
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
            object rgTipoAmb: TRadioGroup
              Left = 8
              Top = 61
              Width = 233
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              ParentFont = False
              TabOrder = 2
            end
            object tipocone: TComboBox
              Left = 8
              Top = 168
              Width = 233
              Height = 21
              TabOrder = 3
              Text = 'Internet Empresa'
              Items.Strings = (
                'Internet Empresa'
                'Internet Contigencia')
            end
            object cbxSalvarSOAP: TCheckBox
              Left = 8
              Top = 136
              Width = 241
              Height = 17
              Caption = 'Salvar envelope SOAP'
              TabOrder = 4
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 339
            Width = 250
            Height = 105
            Caption = 'Proxy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label9: TLabel
              Left = 192
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label10: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label11: TLabel
              Left = 130
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 177
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 192
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 114
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 128
              Top = 72
              Width = 114
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object gbxRetornoEnvio: TGroupBox
            Left = 0
            Top = 209
            Width = 250
            Height = 126
            Caption = 'Retorno de Envio de NFe'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            TabOrder = 2
            object Label36: TLabel
              Left = 102
              Top = 44
              Width = 50
              Height = 13
              Caption = 'Tentativas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Label37: TLabel
              Left = 7
              Top = 84
              Width = 41
              Height = 13
              Caption = 'Intervalo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 8
              Top = 44
              Width = 43
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Aguardar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
            end
            object cbxAjustarAut: TCheckBox
              Left = 8
              Top = 17
              Width = 234
              Height = 17
              Caption = 'Ajustar Automaticamente prop. "Aguardar"'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              ParentFont = False
              TabOrder = 0
            end
            object edtTentativas: TEdit
              Left = 102
              Top = 60
              Width = 85
              Height = 21
              TabOrder = 2
            end
            object edtIntervalo: TEdit
              Left = 7
              Top = 100
              Width = 85
              Height = 21
              TabOrder = 3
            end
            object edtAguardar: TEdit
              Left = 8
              Top = 60
              Width = 85
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              TabOrder = 1
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          object GroupBox5: TGroupBox
            Left = 9
            Top = 0
            Width = 246
            Height = 333
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label27: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
              Visible = False
            end
            object Label28: TLabel
              Left = 8
              Top = 88
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object Label4: TLabel
              Left = 10
              Top = 278
              Width = 157
              Height = 13
              Caption = 'Mensagem da carta de corre'#231#227'o:'
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 32
              Width = 230
              Height = 21
              TabOrder = 0
              Visible = False
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 64
              Width = 167
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura'
              TabOrder = 1
            end
            object mmEmailMsg: TMemo
              Left = 8
              Top = 104
              Width = 230
              Height = 167
              TabOrder = 2
            end
            object mmEmailCCE: TMemo
              Left = 8
              Top = 293
              Width = 230
              Height = 37
              Lines.Strings = (
                'Carta de corre'#231#227'o eletr'#244'nica.')
              TabOrder = 3
            end
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 65
      Top = 515
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnSalvarConfigClick
    end
  end
  object Panel2: TPanel
    Left = 279
    Top = 0
    Width = 985
    Height = 709
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 983
      Height = 298
      Align = alTop
      Color = clGradientActiveCaption
      TabOrder = 0
      object IEVE: TJvXPButton
        Left = 6
        Top = 19
        Width = 166
        Height = 45
        Caption = '&Envia'
        TabOrder = 0
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000467414D410000B96B6442CD6C000004D569
          4343504943432050726F66696C65000048C7E5967B4C53571CC77FF7F60D545A
          A845A660651D222BAC03B4AB1002749581080828E248475F4295C2CD6D45904D
          65108BA8F880812C6C284151C9E682E290E17C31219838C40C19CE0756A302E2
          6B90F0D0EE5CBAC81F6626FB9B6F72723EE777CFF99D7BCEBDDF7B2E00FB949A
          20327100306699C984C808D19A94B522560F30810D02700557B5D64484C7C7C7
          C07F6AB40730AABEEE47E56A8859A6BFDB7C7B9957BF66C793337E3A78B7B824
          9A1000132116A4DB3988628D9D3FA378939930234EA5589BA146393102B1844C
          4A5020AE463C993EC5F8018A35534C2BA738479B8EC6D2F7229666E90C5988CF
          A36BB3747A931680D585E2255A82447DD8547E3FA3311BE567EF42EC43ED85FD
          36B38B00E4C7507E8FE9581A2A3FA503089F4EC71626A0B61B408B703AF672FE
          D4FE609FFC6C5A17183015C2F82D680EB1CD365C05E0500AF06AA9CD36CEB7D9
          26BB01181280064FED4632E7DF3DCA4585060EE0068B201C545000C7A10FE363
          715839D68FCBF00AFC358DA00DD149069D718819C57CCD3AC7DEC5D13B443B86
          382DE52A66253BE7F06AF94F5CD708EE0A0BE62C711F9BDBE6B1677EFC02BA57
          AB38DF3BC2C779D1FD0F2FF81DF9A8ECE3E240CBE252D941796BB0355418B63A
          A2F6D389C8B4A8EE98B8D8DE95C624A7D54D2986546FD590BA45B7373D737D9C
          5146884D821C56EE64FEF32D0F0A6E1475589A4B8EEE3EB0B7B82CBF82A83254
          AFAB31D492870B8F7EDFD0F6E34863505361B3B575D5B95B9736B60B3B2F5ECD
          EB0EE9E1FE3974ABAFBFF7C1A301C7E1F017BB479F4D6CB0D9DE5ABB13CC0529
          2C07237C036D30862DC13663977177DC8CF7D294B416BA9C7E8191C878CAAC60
          2D6363EC764EA503E998EC14C90D9FA5744EE019F8A52E6D02C7D91A61E79C70
          F78EB92A0FCCF3A488F00A11BB79630BC77D4122F00F94AA02CA82AEC984724D
          7063283D6C4DC429A5476459F4EC98DAB8E095779276272BD73252AF7EF19DC6
          A48FCDF0DFC0338E107DA65F730EE56DFB3265ABA460B4E8B4C558326FD76F7B
          32F6B3CAEB2AC3AA6E576FA9111FBA5667A98F3E3EEF0738317692737AF199AD
          AD43E7B7B6F9B4DFB952FFBBE57AE18D9A9BD6BB89F7471E770D0FFE1D3336F1
          D6DA71E0201FBE0F3288872CD80FBFC00026C252B183D8201E8A57E1AF681B68
          56BA8EFE9C51CCF465F6B2F6B193393E0E0C8761C77B4EFDDC2167E079F0135C
          EA05EEB3EBDD56B8B3DEEB9A57E7992F8AF3F215BB78B37C38BE6E12A97FA274
          5B4053D07359A03C2FF86228173DF7234A88D4A1E71E1DDBB93229F1E1EAAF53
          3EF8BC4B55A80ED14EAEBB6828CD546507925CF3E34D1D9B8F7DB5735B5661EC
          76DF1DF49D374B1BF71597A755CABF75AB1EAFB1D6FE71B8EB686FC393132E8D
          514DE5CDA3ADE479CEA553EDEBAFF85DB5755B7BFEEA1BBC23B0A63C3C3BA47C
          F662A463FC8ACD66F7AADD21F66F0AA54705D3FC32E30DA3DAEE674A3426409D
          0560951560F96580AA6800EF100057E4E5782E40921CB07B5AC0FA170036C047
          6F542EE033CD5533CD4933CD3D00F6336D4A3CC30AB556A450671A34A4DAAC7F
          730CF3C0002B400D5A108102D599A8AD01129119F4A07BD7D0FF27B33E77CACB
          8A6C228F34A4679845E1E8EF402F52641B898D663D2911456569FD25A200A934
          90EA673F7729317900D56B293AFB42F556DE7F006E77DB50D71AA13B00000009
          7048597300000EC300000EC301C76FA86400000021744558744372656174696F
          6E2054696D6500323030373A30363A32382031333A31333A3136856B6CF60000
          076C4944415478DAED977D7014E51DC7BFBB97DBBBCBBD247B79BF5CEE425E28
          4D27A829A615B0A680C60A0CA0137494B114A7A0ED8CD31799CED471C874DA5A
          A76F02D3A8C88834A8B5575044A1A399E238055BA0A5D52995D42424E4A59723
          E1921C5CEE6577FBDB675F6E2F34D5FA4FFFE9EE3CF7DB67EF767F9FDFEBF31C
          87FFF1C1FD1F60EE8D5D9B838D768F733B6CFC57398E07C7DB60489EE7E909BA
          A6B3B46E49DE7397FACF40A1138A0C5996494850949CCC66D37B32E317BEF1AD
          0892F302288AC2757DBB796F79B0794B49701153CCAB004CB92A790D8646623A
          CA40D873747A7C159A4206404A75085907880E9C456CE45CD7C3BB7ABF3E2FC0
          EEAF35FDD8571E7CA4A9B53DCF7206A02B860E313ED66F795C4179551D530459
          8730ACD701A46C067F79E737988E5F7A70FB9EBE67AE01F8C9B6455B0587EB99
          95EB1F80E02C24250680A1D8665A4F1F884D5E6652771DCAFC22938617608640
          9D6BD79763A338FEDA3E6439B9F2D1BD035113A0B30382C31B4AD96D1C195800
          BEC00E9BCDAEC90281863657AF8D90B4AEFB665E0E9C3AFC7366AD2465497786
          6486592D65D39069B0FB3497E52C92B3B3671EEB8EDE98E7811F6D092A9BB6EF
          C6EC4C5C4B3433DEB9D883798563D7D168DC1A01545414E7AC372DCF59AFCED5
          FB0E8F17077FF128E2E3E3E1CEC8E52113E0F1AF04953BB775223139CE2C7C3F
          FA014E0C9DC1CD7537E1FAC0623D2772306363137900555525F92E6709A8CEB3
          7915E1292AC1D1177E86A9D81C80EFDF1F50EEDAB6033304F0FBC1D3787BE404
          3ADA57A0FBE89BB877F146B404AE331353F5D0C8709449A69D625F1DACD02C57
          E49C7285944B46256895E1164B70ECC093484CC4F201BEB729401E780C6FBFD7
          83231FBE898DEB6E825C108553AAC3BE377AF070EB43088B213D39390C0D8D31
          A9972F42A12A260D4532B3DCF0805A159A573C62297EFBC24E4C5CBE147EC200
          50939073D6A41A6F5F8BBD27F7E1AEB5CB30A59C43468AA375C13DB8381A43EF
          FB53B8BD6E2544B79FD5FFC08591BC3EB0A0B6DA1277A31748B95EA087C12B96
          E1D84BBB109F9AC8017CA7432CCABA5DF1D3F618D6AFB9058982F3B8928A4228
          90D112EA80BFB00CEFF5F663A4FF0AD6D7AF6196F70F68008A1E82BABAA0E601
          4BF9C98A154003F39510C08BBB31121B083EFD3A4618C0860D8E85F622C7F91B
          DA5B90F20C239E1C826093E1B473B8AEFA4E789C5EB2BC0C3DA74F2131C6E18E
          F06DF8B0EF625E1936D4D7686D5891F3212C09A87E5F545689C3FB7E8AAC942C
          260F4C3180E5F7F35DB72C6B7DC851358358E2022D0319380B7838ECC0E2E03A
          B8EC2E781C3EF85CE578F9F831D8A6DCA8B9529B1782850D35961CD0A46C5684
          6C02F92BAA7078FF4E289304D04300CBBFCC3FD17243D3836210BE89E428FD30
          498A3966BD83209A03ABE1120A695E08B7E083C7558A678F45509A2EC312F17A
          B313B22EA89E73C2A0188B13EB0F0A4A2A09A07B37B5E454F11E15E0811F345C
          5CFBA51572DFE0DF4242A180546A1A89D918242418C0A72B6F23CB4508BC9794
          179337BCB0DB3CD8F9461796DA97C057E0D195432F43254FB90694BB2E0D0408
          A00B5767D21AC0CD9BF05D45E0EE7649C2629112244B2DB36D651893570661A7
          107CAA6C054ABD413CF54A84C2E284CC29AC2D37BA6BB1C8556F594965BD2558
          145B01F4A5BABC3A48004F239DCC6A00EAC35B57894542A123BEFA9E2DE83E7D
          006D6D0BF1CFE95EAA021E75FEA5282B0AE3F9A3AFA0DDFF05D6BD399E9BB390
          2A5A263006595F946069CD8A095411ACC16B2F3E0B2925E503700E7B7CCDC6CD
          38F4D757F1F9CFD5E252823C60036AC4168885011C7AE72D2CF57C56D7CB994D
          C86844068862E48345A9E121755E150AE1C8AF9E0335991CC0E63677A5D35334
          76EB86BBD173EE2D343757237E7514050450E96B82CF5186DF9DFD233EE368D4
          325F576E590ACC64D45C8D6B141BDF05C261BCFEF27E4C4B7271C400E858EE0A
          F98B4B0657AEDE8077FF71929A4A2912E91895230FBF2B4C7D40C49FCE9F43D8
          16B0583E7737A7583C61C909BD5119808105B538FCD2F3989D9D2A8CBC8BA409
          E0F3FA09601DCEF6FD1981CA222433330400525E4EC9E746DFC8459472A259FB
          E0E600E84A4C0F40B17825E79D507D3D0EFE722F7E7DF22A679AA102783CE2E0
          8A3BD6E083BEBFA3B8D889B4340B5E51FB810F76DA884C4E4F43906873C256C0
          7F7F28164BCDD01861D1AFC38D0D88743F87437F489A00DCAA66E782EA2AB1AF
          AD7D35F5F85EB8A81F4872863D23D89CB41FB42195A5E6929141BB43FCA743B1
          00981EB1DC53010E1ED88F574F25A9C8A9AAE923441E6F5D756365E4BEADDB30
          3A3C4C5B2F75CD97D80336CECE3855EB641AFC4700CC83043D2711A8A9C6AEC7
          7F88236766DB683AAC022CA4D1B0ACC9F188BF90FF224B7256E75A2CC1B6E69C
          5ED7F4217F1C958A65A25CF3FDE44CE6F889F3D927E9B25FD524D070D270EBD2
          A60E81F69F9467728A8C16BC742745686928E9B4DE75743C261D245398AB89CB
          FB8D76A8F819F636E02A8DD979FF9A757676F23B7674CE79A9F63E4EDB066809
          1CD16212E9A0977350F05F1E1FF9DF903CC8715C5EAF6173F55F147B01C76930
          9F40F9C702989FEC932BB51EFF0242EC4FB4DFA390410000000049454E44AE42
          6082}
        OnClick = IEVEClick
      end
      object IEVG: TJvXPButton
        Left = 176
        Top = 176
        Width = 199
        Height = 45
        Caption = '&Gera PDF'
        TabOrder = 1
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000290000
          00290806000000A86000F6000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC400000EC401952B0E1B000009
          EB4944415478DAB5990B6C53D719C7FFD7761C2771088C57C83B3C0224BC0214
          4218140A29CFD216BAD276817502841003D65186B6A1766268AB8041D70DB543
          A0B26930400CB5435488A62B8215505BB4D101E111C2920079394E1C3B8913BF
          F6FD0FBE699E8E83D8415706FBDE737EE77BFCBFEF5CB4800C0447555595FAD4
          340D4F6AF8FD7E783C1EF4EFDF1F5151518F3587A643565757AB49AC56EB1303
          E4D4BCEAEBEB51595989214386A04F9F3E8F0FF9E0C103C4C6C62A48EEFE490C
          AFD7ABACE8F3F914A4C3E1C0F8F1E3111919F978900F1F3E5480BCDA4440D8C3
          6F34C2C04F013348B8700E0272C32E974B811292B0B366CD7A7CC8E8E868E50E
          4EDC9BB80C08A0E672225063872135150179DE2F50CDCDCD6A2EBADB6432A9B8
          BC7DFBB60AAD9C9C1C582C96DE43F2A17EFDFAA95D870D2980DEBBB7E0796E0E
          8C850FE07A7737AC9B36C32C167507216B6B6BD5AD29292970BBDD0AD4E97462
          C28409888989091FB2BCBC5C41F6EDDB376C483E6810C8E6E54BD1FCD9C7B0C4
          185019110B53911D8902D7D0D4A420ED76BBFA4C4F4F5761D024DFDFBC795359
          78CA9429CA83614346444460C080012AE0C381647A19031A9CA35211D1CF2899
          D20043B50B25F79B305C364AAB11CE66B3A9F8CCC8C8500630180CEAB7C2C242
          B5EEA2458BFEBF90B4A45B5CAD5DF8070C629006631C6ACBEA30DCEF4353738B
          9A8B3148F78E1D3BB65539084AE03B77EEE0DEBD7B983D7B76B7166D85ACA8A8
          90F03262E0C08161432A9733263F780FFE759B601C043886A6A3F15231D2E437
          260EE76276D36A3402438A4B1292C944E89A9A1A65D99933672A190C09C90712
          1212C287A458CB42817F7D8D96795310D11C40F9CC85D04E9D468AFC4C17B7B4
          B42828CED9D0D0A0D6E077FCEDD1140198CD66141717232E2E4EC5684848FE95
          55A137961493C8C23EB4ACCE47C4A16378F0C12F6059BD03430C0226EEE49CB4
          125DCB79791194DFF33B5DEEF86F2618438216EF1692233E3E5E4DD49BA18935
          BD87F6031BD6A23A3D03966F6E6140E01124010843CBE9903A9C9E441CFC3B63
          373333B353456A07C91B7577F70A5276EEDDB51DBE1D6F23CA0D149E2DC0C8A7
          E7D0DF4AA6744BE980BAAB7D414B733004588D08D951E43B41D2DDBA3BC21901
          4D2C6132A265D36A71F741D124A06E5C0EFC9F5FC260C97F9FD7F768A160F8E8
          56E4FCFCD4B39D1B282B2BC3C89123C3870C77A89A5D67836F411E6C39DF45D4
          C94388AA6F40D5FE3F21FEE59530D26A1DE2BBA301B81EDD4E811F316244F790
          3435033C292929FC0683D660907FF925B4A9535174F08F88CC1881F419CFA062
          CA68E0E34F31383E113E010D9588743FE58F9014FCB0207BD360508270E238BC
          DF5B8E1B674E63FCBC85685C360FD6936771EFC7EB91B0F70F3033F6DA7AA7CD
          DC743311C286644D2564D80D86DC63144BFA163C8BBAD222541FF91B32C767A3
          A5F82E7CB9D932A913A5E73FC5A81973E1F109A4D140E343F3B4A8846A1B9314
          F65BB76EF5EC6E42262626B676D43D0ED93D2DC90DD9D7FC10EE9D7B91126B85
          8F5568E76F806D3F87CFDA1755F65A25EEDE46070CE61812C1C8564E3CA70F6A
          E3B56BD7307AF4E84EC78C76908D8D8D4A82C2491C55DAA4D67A0B3E01F216E1
          BFFB7F8784351BC1C6ABF5E957F3A07D54002DCE006FC024CD8747C5B12F370B
          AEF3FF41ACBB51798D83DA78FDFAF59E2159B6C27537634C13C840E670B8FBC6
          E17EC13F31B4D606F3CD3BF07CF82EBC874FC1983818EEB424582F5E817BCC20
          D87EB60349BFDA02AF9CF76E5EB888E1C929542C3598DD376EDC405656567890
          1456BD12746346689CA849BA7171A773D542819D89FEEFED86CBEE8063F18BF0
          CE9D0AD39CE7A1A50E43FC2BCF2370ECEF30240D84BFBC1A25BFDE06ACD98264
          B311FE3661454896C56E21799C65139A2AED3FBB9790960C76D3FEED3F81F9ED
          BD2CDFA81B998CCAD51B60C9CB8335731CA225494C1EAF84AD248BFC69FEE434
          1C5F5D81736832307F0952A2A39421DAC63E3BA53163C6F40C494B52B7DA5992
          7AA802C722D92CEDD5D52B30BCB602C61B85702DCEC19D5FEE433FE9BA07C5F5
          01F332207DA4C403F4E55B58A365618D892613199A1A3AC53D3198DD3C4D769B
          DD3A2413470F661D5065B0C49FA1EC1E2296BE00D7F56B30650C464C61392E96
          D5604C9F685865532DACD5FE47706DBB9C760B02E8A81B7A6D67039C9D9DDD7D
          83C10E84CD675A5A9A12755A92475369F6D4A4E67DBF47E0A75B50BDF275D857
          FD0069AB5F4745FE4A6892D1A97DACEAD0A55B44AFCD5C3CDCA2405127E4A449
          934243F21A366C986AF509A93166E46066CD5F024FC1055CDBB61DD61F6D40EA
          FC5C78EC7298FAF02FC89218F607BBA6B6FADA9B2331EF651E14151561F2E4C9
          3D430E1D3A54416A5C70D02058B6AC83FFC0615CFBEC73244C9C84A46969F0DC
          75E2DFC78E23795C36ACC2C20CA518D3BDED4225CC418350515816A74D9B161A
          92A73A1E3BF9A6C1C83811C8A8C54B603E7D4AA4462CE512D5199E816F3E3A81
          94F864F433045428F015CD5B6FBD858D1B37AA98D2FBC5DE40D29284CCCDCDED
          199265910727235D2DD6896872C0FFE783F056DBD190340435F9EB102F296A15
          69F188D5785F5D5D1DF6EDDB87A54B97224B24C4DB0BC8800E29795074F76E4F
          9055B0D945CC33D245D45DDF6A98C88E4F9A5A461D45C9229331DC7C6C188271
          C77BA365E2E6E00BAA475D4487980CD10BF0584C652996DA3D2324648D13B6AA
          2B4872C5C029226C3068ED16D013A17529BE8C925A4F186AA05F628ADF51D959
          D341F96103C16745FCB50E87AB76104C1C812C9239A6CF9B8748B67F5D41D6D4
          03A525B39136EE1CEA8356EB6958264E9473B704FD575FC324E775135FA3486C
          B9AF5E55D68D7CEA297548737FF10542B52C44AA96ABFC9D77F0CCD6ADE8B89D
          6F211DC0FDF2EF236DFA11D4DB434372C1E8B56B11BD6A153C972F2132773A3C
          2525F09696C22492659482D070EE1CACCB96C1F5FEFBF09C3F0F9F686077A2C4
          26A346AED23D7B30E78D37600E09F9F035A44CFF2BEA6AD1DA9D74352832D12F
          BD84EF6CDF0EEFDD62349E3D03F38CA751BFE7B7705FBE8C24016A3A7A14910B
          17C027A5D3B66245C84DEB90F705726E8F90E5AF2239E7A84850CF96B4AE5C89
          18C9E6CAF5EB21A77A0C3A730635E2AA66814C13517688054DA346A16EC70E40
          AC1C4ADA4D41C83281CCEB09B2E2FE7224CF3F0EFBFD470F7615479A0E999F8F
          1809F24AB192D16AC5C0030710F0B5C0F2DC8BA87E6539909C2CDD50266C9B36
          B5027659B78396B4C955B27B379EDDBCB9FB986C94D27BE2C8562C72EC44FD01
          69B31CA25D955D2B07AB344B21DD1E21F2E1E359456E34E9BF056178F180E5D7
          CFDC5D6C5C9FFE8ECC17BD6B175E7EF3CD4E5E6C85E4387CB200C5178FC01263
          84269081A6F63BD72D4110438785D47D417DF4B7B9DFDF05504748BE8E318844
          BDB0660D268B6274F25E5BC8805412BBB35989ABF2413781192ABE7AFB3F406A
          E3ACFDB26674077DD4C7FF009D433FE0747314250000000049454E44AE426082}
        OnClick = IEVGClick
      end
      object IEVC: TJvXPButton
        Left = 174
        Top = 125
        Width = 199
        Height = 45
        Caption = '&Cancelamento'
        TabOrder = 2
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000173
          52474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973
          00000EC300000EC301C76FA8640000001974455874536F667477617265007777
          772E696E6B73636170652E6F72679BEE3C1A0000002174455874437265617469
          6F6E2054696D6500323030383A30333A30372031363A32303A3030489C347E00
          0008764944415478DAC596795014571AC0DFDC07733207C780E20041451C742B
          AB22C6B82AA21CBB1B14C52365B28A0291DD6555A226E5FEB5A521BAD1D54457
          48245B1A1D512A264BD6B0C4235A594B87FB8832801CCE0033C00CCC49F7F4EC
          D70D580283D18A55795D5DAFFBBDD7FD7EDFF93E9AD7EB45BF64A34D0570F4EF
          1F546338AE79199B30180CC3EEBC7CD58B017C5460CDDC9625623299E845B534
          71FD3F4E7E84F2F7ECA73D17C08CA4431CE82439CB69CD3BB6670B6D361BF5C3
          B175BE60268E91EF341A8DBAA552293AF1F13174EA063D0CA60C6DFF7E179B12
          203CE583F708AFF720834EC7FEB084E0E6ECC8A20D0E0E22A3D188DC6EF79400
          BE60381C0E0A0C0C4432990C9DFCE4382ABCCDB1138487DC7C6FCB577BCF4C02
          00C983E9747ACBFC45F15C169B8D221C6568EBE6CDC86AB53ED1C0B3249D4A13
          72B91C7D565C88F482DFA3A1412B6AA8D239BC04110C9AB04E04D81BA4521D8C
          8A8EE6BB310205992EA1F569691480D96C7EA2818992B20196DC642AD3907317
          B4E79131601335F6A0BEC6316036FFB5F5EBFC82710011A9056D0B172D0863F1
          05E851FD1D14C1A8411CF839D0BE90034E6C1001C8E3F1A0AAFE1014363F91D2
          426355A519CC11045AC02900905EC3E5726EA7A62408BACC4ED45E5B817AF4F7
          483E0466A17A1AD993EA860B5E46D44EA9DFD7F3E431018B83C25E4D45741E1F
          E9EEFE60B30FD9B603C0050A009CEFB8266666963A42CD34F4BB7E96C4131BDB
          6145B36F162375751905D4B2300DDD9FB30A5535EA7FD45FDD338B0288FCED91
          CADF25C5CF1BC2D8C8EAC05F2A80C862401BEA3F47E1F3E72204E66CAAAC4715
          4BB3D1955B3A97C743CC18D1406A41F38694C511CD463BB239B19FFCE98B266F
          1AE141514D3710C664A3965716A3694A11BA7BAFC66A1DB4AFA000D4C987750B
          62C3E7CD5407D0C642CAE7C65E7273B8082F22BC2328A48F526354988290A33D
          F94E8C7C4001138497EAA971F8E8FA9D069BD38D2D1973C258587215217AE84B
          D5FF33D5E82D6D2BDBF7C69330DCB831551E3B2FFEA84613A3A9ABAF6B72B95C
          B4E5CB562438E1819C77381C2EB1482CE8EFEFB3060505073C6A6FEBE270B86C
          88737F1693C5ECEEE9EEC331CC23914A85528954DCDD6334D9ED76179FC7E77C
          7FE7D6BDC88848815AAD5632996CDAF1634773B4DA2BB729F38C01A4A7A70B66
          CE8E3AB6382E2EAEBABAAA01C7716F7CFCD2D7B1616C9846A7D181C3EDE7E7C7
          0772422C96481A1B1B1E8AC462A152A190817A0993A9B78F944B2AF59792EB8C
          DD865EB7CB8D090402FEF7B76FDD8D8999E33F7D5A98D2E576D94F9E38BE43AB
          2DD54D0460844E0B39919C9CB4ACBAA6B212C3706FDCC22509C3C36E37E4001A
          09C0E37279B09E90CB15CAFA86BA7A91482C845C2FA383E398CC2613D8968213
          0945E29EDE1E23644FEA9BAA1ADD6DCD5C4D6070B02AB0B7B7D774FAD4996CAD
          56DB380E806C59393B3EDCBC69734A6595EE070CC3BCAF2D5996EC264D008EE9
          8607368BCD857142A150AAF42DCD353C1EDF4F0136603259EC5E538F01C77002
          B4220213287A4DBD8F9D0E87930DA7526D5DD5AD584D6C28982EB8A5B5E5D1A7
          856777959494B44E02D896F9F6FBDBB7656EA9A9B97FC3EDC6BCAB129236403D
          C034F7997B088F0787BCCF1B1C1AB485A842C33BBB3A9A980C2653241249406A
          594767BB1EB22683033B2A95012A3845FBBABA3A1F9326686CAABB0900114A65
          A04A57A56BFAE2DCC55D972F5F364E02D8F466C69FF3FE94B7B3B6AEB602EA00
          EF86F48D999D9D1D0FC1A6C2E1E16117D8575551F1EDB5E5CB1392CD66931EFC
          C443CEF1F97C3F93C96484BD79004A6A28880C675DE5BDFF052803031B00606E
          CC5C0008987EFDFA77F74BAF5CCD2D2D2DB54C02D8B2755356EE3BB9592DADCD
          77382C9E2231714DDAE52B97CEAF58BE72050E3F066FE76B4B2E9C4D5E939206
          C21276BBCDC2E5F1841E1CC7DCC36E078FCB17934EE62FF55782E492FF5C2B2B
          8D5BB478D97FBF2BBF382F36364CA90808BF78497BE7DA37DFBE535656E69E04
          F0E65B9BB6EECACECD696B6FABFED5FC57E343542111459FFDF33868620BA9DE
          AEAEAE667DEB8372852CE0D79191510B2C96813670C400B0FF23B03F064E36CB
          62B518E43259308BC5E6682F9DFF746DDAFACC9BB76E5E8D8C0CE78136A24E9D
          FEA4FCBD0307739F64C9F11AD8989EBD33E78F36FB605377772FF15AFCD20490
          A264F5EAE47556ABC5A4D7373773B8AC87269399BF6AE59A2C30432B1972E090
          F536BBCD1A1539733EF94F81502821536A79F937E700440A81E252AB6784C865
          CA39051F16941C3E54B0CF2740C6968CA4ACCCCCDDB887E83418BA0C60631A38
          3566B558394EA79B0BF9C702AAC52130181D1D9D7EE0841C3A83EE84BAC1C3E3
          F33C76BB83E974BAD890CC3D30EE15F8F9E102A100835C2106479D269707C4EE
          DBBFEFF499D385877C02ACCB58F7FA8E6DDBF7B139AC7E88FF1F9F27A342E843
          9AA03FF37C9248244A819F5025972B35E0E547FE557CEE844F80B5196B17BCBD
          E5ADFD62890077BA9CB52F2BEDFB4BA5C10281482516495ED993BFFBF0E767CF
          15F906D8B876EEFAB5E90742552A5E5FBFB916428FF93200A03A0E91FBCBE590
          B7420EECCFFF5B71F117E77D0224BF913C2B7575D2FB73A263C2FA06CCAD908E
          59D4E10C314D271F68E47AAA2C1BA9CCC803160E8A917EAC234B30F2232F75B4
          C37A1ADF8FCF57C81542168B29CCFB4BDE91B2AFAF5D867D87C601C0624624B4
          84C48477B377662D75BA1C43907647EBED3144EFC46264E4F0473E8A94A7BE01
          289A42A1E0B777B45BF2F7EEFD58A7ABBE09137DB0F7C0D3003CE81489AB13B2
          73B2B37F336B76743025E4C8EC68372AF8B8EDC62F19FF38A23F0F811386C746
          6B5151A1FECB2FBF2AB2582CE4396082BDBB9F0620CB5F79785478F4F4D0E92B
          19000D833FAF267FAAE18467A8B3A3B341FF405F07AF037077C1DEEE713E305A
          8F71E116C24D02FD7481F8FC8D37FA3F1BDC4EF2582707FF0F15DB5C55E57ABF
          F70000000049454E44AE426082}
        OnClick = IEVCClick
      end
      object IEVD: TJvXPButton
        Left = 591
        Top = 175
        Width = 176
        Height = 22
        Caption = 'Consultar DPEC'
        TabOrder = 3
        Visible = False
        OnClick = IEVDClick
      end
      object IEVS: TJvXPButton
        Left = 174
        Top = 72
        Width = 199
        Height = 45
        Caption = '&Status do Servi'#231'o'
        TabOrder = 4
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          21744558744372656174696F6E2054696D6500323030383A30333A3037203032
          3A34323A303055302DD8000005194944415478DAAD566D4C5B65143EA5BD9796
          7E30CAD7C637140CC4019300030447C61447FCB1251A470284B00051B23F84FD
          3490E80F7F08663331519460CCB208045932D1C0546026C331C84A292B2D5FA3
          40CB774A694BA11F9EF3666D243A1DC94E73736FEF7DEFF39CF39CE7BCADC0EB
          F5C2CB8E2B57AEC8B2B3B31D5D5D5D20382E414D4D4DF983070F3E914AA5769B
          CD26CCCFCFFFB8A3A3E3363D130804C2D2D2D28FF0D81E1B1BBBDDD7D7B77D2C
          02027FF2E4C9CDF2F2F2309EE741AFD7C3C0C0C04E6E6E6E436767E7BD73C5C5
          4325E7CF87A9D5EADF11BCF5F0F070EC85099E817F555B5B2B3F3838808D8D0D
          CA18D6D6D6607070D01A1AA284EC9C1CB956ABB50E0D0FF5B9DDEEEB88BDF642
          04CFC0DB115C8A5931700ABAA63099CD303A3A0A5EB71BA6B45A13DEBA8CB87F
          32D9FE8F80C0753A5DFBD5AB57A52E970BB6B6B680DE898F8F07A3D1087B7B7B
          AC92E59515B83F32024EA7B36C7979F967DFFBFF4940E0B3B3B30C1C1B0ADBDB
          DB20140A212626061004626363E1E9D3A760B158D87A335632313161C19E7CE0
          6FFCF3082A2B2B6B11FC0B040CCCCCCC84C8C848A0C6C6C5C581C96462DF1716
          1620212101E6E6E6607777975546CF341A8D157BA1782E015A4F299148CCD5D5
          D5DCF0F0304C4E4E427A7A3A242727835C2E87F0F070585A5A8253A74E312751
          458B8B8B4C2E8FC74355503225F8EE6FFF20F0816343397208954F9962468C24
          292989915005947968682893095D032423E1A14D412412352141EB1102020F0A
          0A32D7D7D773A4A7AF6C6A2E914C4F4F33129289E4522814CC510E8703EC763B
          6BF6FEFE3EAB18935421C1BC9FA0A0A020126F1AEBEAEAB8F5F575064EA5EFEC
          ECB0D209846498999901EA49444404E034C3E6E6264B8082E683C0037971D3F0
          C850EB911E141717DB103C88322730720849141D1DCD40C8419425696F301818
          095540D210C6C18113261F4F012FE6AF8F8C0C7F76C4A615151529B8508F55B0
          8CC919ABABAB7E3B9224444C3340242BE8797418934B2E978173FF1034EA29F0
          845BEB1FF66BBEFE7B4F19C1A54B9712F07A017BC034148BC52C739284C8E89C
          9898C8068B48680D554724A74FA7C38C5E07AEE4F5DAE8FC98E809CD1F8F2F14
          BC77A1B3AAEBDA11897038568A8A8AA2828383D9162093C91809C9A152A99863
          687AC94D4440B1BA6202E3CA1244BC1B3018951A7536F7953715011E114C187E
          B5D877E17B22F113D0D4A2BDDAF2F2F24E2A954A3F09C9835B859F8CEE935BA8
          F1D31A9D37EA7D691B9F7178ADEA5C239F2AC98000FC686C6AF8E161AB131682
          1B8ED8342D35B54AAE507C873F16AC81E40E720A3986DC434344C1C0B5D35E5E
          267A3BA1EA64BBF88DC338A5370A78C10990800C2CDE65D87499C13EEA5AF013
          E4E4E4BC95AC52DDDDB73B389D414F33012121217E97D0D9078E327913E313DB
          BA7ABA9A2A3A2F5BA4852E85D96342077120127010210C87606108CCFCB26A66
          04AF1716A69CC9CCBCC3735C4A7F7F3FE80D860D7488382B2B2B842AA1357458
          AD561A362F36BEADBBBBBB8908DFF9B2A425B4D0D52C7DD509B9C252140860C2
          3B0496C712B08D07DC61048D8D8D3538F2D5BDBDBD27701F31A2C695B80F9562
          4F6EE0D6108E0348DB30CCCFCF7B10FC731FB82F2E7EF39AFACC455546714419
          088083FB1B03A0FDC9B8D85B3B942868686810E250C5F6F4F49C7DF4E85120AE
          EF465287AFF1E3E3E34D1CC7A9507F475A5ADAA7B76EDDBAF16FBB6FD9CDEC6F
          F93051893B80E744DBFCF28F1FDE3BCB6CDADCDC2C6C69697163D6121FF0CB8C
          63FFAB386EFC05798808A28C5034EF0000000049454E44AE426082}
        OnClick = IEVSClick
      end
      object IEVU: TJvXPButton
        Left = 175
        Top = 19
        Width = 199
        Height = 45
        Caption = 'En&viar E-Mail '#218'nico'
        TabOrder = 5
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000173
          52474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973
          00000EC300000EC301C76FA86400000021744558744372656174696F6E205469
          6D6500323030383A30333A30372030333A31373A30300C79592E000005C64944
          415478DAED977B6C53551CC7BF6DB7DDB6DBFA5CD7EEE5C61EAE639B93313153
          11487C41226EB0814A34EA8221313C44433021068CFEE1C461082606F0890F90
          994018C2D8C61082194499636C43B32776A5F4C1DAAEEFDEB69E73E9964E463B
          C404FFF024BFF49EFBBBE7F7FBFC1EE7F45E1EEEF2E0FD0FF09F02D8DEF07E20
          2D2D3DC4E7F10333591C0A85A2EAA6D31A8DD712366E7873D2EF1480BD9FEE66
          EB5E592DA0D78140607AA3114E63CD83C1E014501E8F87838D07F0F24B75D303
          7C77E01B4F516131535A5A0A96656F321E2DFA58733ABABABAA0BFAA436DCDCA
          5B03543FB39CE9EDED455959197C3EDF2D8DD368A2652272D067FBFBFB316BD6
          2C9C68391E1DA066D90A666C6C0C168B05050505F07ABD338A943AA142D31EF9
          0C9FCF87C160E04A9A93938323470F83F8880EE0F1783800BA58A3D144CDC4CD
          730AC2277243E7743A313A3A8ACCCC4C482412B4B43663E9D355D101DC6E3767
          4CA7D341AD5623393979C699E0AE89044202623C88DE9E6E14E4E773F7A55269
          6C80E5D5B58CCBE59A343A3C3C8CECEC6C88C5E249885899A099B33B3C18D11B
          91A1512341C0824FCA43015ADB4EC406A0698B343A383888DCDC5C884422D0F2
          4CE7FCBACD0D8554C439A7BDD071EE1CDC71A9C850C9E1F67990AB4E8242219F
          1980C3E198343CF14B21F2F2F2B84CD01245EAFA86CC3878B217DB5E5D74C379
          47074A4A4AD07EE14FC8E5322EFAA43816E52539683BD9121D6059550D333E3E
          7E735DC9F5D0D0106432190742BB9ADE6B6CBD84EF897397DB872FB72C466767
          27B45A2D97ADFD6D7D10274AA19289F1C7D028D63EFB10DADB5B6303D8EDF629
          00746BE98D7A884562A8142A0C0C0CC0E174E1B363FDB8660F6175EDC3787B57
          133E593F0F12A90466AB192AA51AF5FBBBF148792104021E7E1F30E0B5DA0AF4
          5EEC880D60B3D9269DFBFC3EE80C3A141716233E2E1E54E77079B169573BE218
          21963F3E8703DCDC7008CD0DD56018861E0AA8DF7706360F83D9F766906C8530
          387C156B5754403FD4151D809E8456AB959BBBDC2E04794164676483968536A0
          C9EAC2DAED2D28D56661414501FA462CC84A9560DBC747D0F4610DE9070BF636
          7593ADC8C79C923C5CB538A1940AD1737918EFAD5904C3C8C5D800F42474795C
          484D4925E9137051D328FB756358BFA305354FCC85364F83AE7E13C9860F45D9
          4AD4EF3D0659B21869A952B24E416A2F82DEECC438E98D2411839E4B97F1D3EE
          3A9C3F773A3A40D5D2658CD164448A32858B78A2E3CFF7E8F1CE173F63CD8AF9
          50CA92D13D6882D3C3C2CF06509CA384C3ED87CDE985D9464E51AB1B66BB9BE8
          FD4814C623C8FAC0049D68AC7F1E27A33421FFDBFD5FBB9F5BB92AC1EFF74FE9
          FE0327BAB1E7D02F58B76A21FCA49EBF91C8A93317017011271E5F005E3F0B2F
          F9F5B141B0811B7FC309F102B20344D05DD161C7EB4FE1D1B97938D2749802A8
          88DA42CD4702C81B3EFAE0BA42AE9872D098EC01EC3A66C10B5595C84895635F
          730F711644ACC1849D8F8E1AA0117B505399CCDDB792726E58B7B1905C5E2362
          8B044820924A841248C2733E55C80A9F2C96E72F7877FE0345E2CC7415FF6CF7
          2897F2BF0F019F0731497992289E068791619DCF6AB50CEBCFEC7C23E01A7392
          9B7411DDE3FAE9323031E22264421F97525A959B9839AF515B90997E7F514E02
          2D83991CBFD4E9DC4235D9AE01520A16B671278C269BDF643207FDDEF11F4CE7
          BFDAEAB5EB6C7453D15D1D86983CE166FA524A6184C2B4394A7559F5E72A95B2
          B2B25C2BBC621C87CEE4E0005A4EFD8A6088745A2868663DB6E30E436FA3ADEF
          E865B2CE131667A4E3DB05E0CA4A2140FA3AEBB10D5B12258ABA07CBB522972F
          88647102DA4E5FC0C88F6F959267D870A454BC11CEA76D9CDB7D2DE7857B4398
          BE70530D93A4D8593A3B4F249726F34E9DEDA400194417084378C2006C2C83FF
          78642DD95AC1E70B8FDF93A191E87486F8A1A39B05E13487666AE38E3F4C7296
          D46B88BFE61082F7910CDCB6BD7FE5CB287FF14EC6CF73EE21002FDE15803B19
          771DE02FC9052C4E607DDFAA0000000049454E44AE426082}
        OnClick = IEVUClick
      end
      object IEVI: TJvXPButton
        Left = 5
        Top = 70
        Width = 166
        Height = 45
        Caption = '&Imprime'
        Enabled = False
        TabOrder = 6
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000173
          52474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973
          00000EC300000EC301C76FA86400000021744558744372656174696F6E205469
          6D6500323030383A30333A30372030333A31373A30300C79592E0000038E4944
          415478DACD975B4F1A4114C70FE5264A2B025E2B9A5A939AA662AAAD69FBDAA4
          7E029F8D4D5A2501428DD1D417D1682D5E5034B25AFBE04B8B317DAA49FD04A6
          4FBE693435D5A894E2852A880505763BB32C5660B5E242EC09C39CD99D9DFF8F
          993367581E5CB1F1FE5B80A1A121E2E8E8E82572AF71D420C562F13B83C1A049
          08A0B7B737A4D3E9B88AD336323242B6B4B4F0130230994C945EAF07A7D3C949
          3C2F2F0F868787A1B5B59555EB42009B9B9B090BAB54AAE400B85CAE0B095214
          C57A5DA9547203F0783CB0B1B191B0785151115D6766667203F0F97C97FAE511
          4B4F4FE706100C06617D7D3D61E1E2E262BA160A85DC0078BCF82EFF128F354E
          00229108D6D6D6CE1497C96490959575A6782010E006E0F7FBC31D4FCD44223E
          9FCFBF3C40636323381C0E4E00D9D9D930363676310024588D88BFA0C0539494
          94406D6D2DD8EDF6B83848A49D9F9F0FD3D3D3B0BABA0A028160EBF8F8F8E9C4
          C4C4621C00CAFB62D4E17B5B5BDB4DBCAE66B3192A2A2AC0EBF5C60D7E5E109E
          BE8FFD8C8C0C989F9F07AD560BFBFBFB303030B02297CBEF1A8DC66014005A6F
          635D5D5D9B5AAD16E2F6E4E424A0530C92615818CF260EE8858585C0D4D45427
          41105D51008870CF62B1C8D8B61D9B25BA154F3FA7D7EB0EAD56421A05D0D0D0
          408D8E8E82F3E70F3A79D8ED0E9048C480A60B48927E94110DD7D8A50B300EF6
          C870FBF475DC97242938F07A201808C2FDCA2ABCDC303E3ECE8B03C0DB65E5DB
          329DC7979697A1A0A0006E5CBF11618F7CFEB681D18EFE8D31D7C20F2D2E2D81
          1FA5F5478F9F407373333BC0E0A019AC562B3CAFAFA7F73F9E09A954CA3906F0
          79428C1150FDB01A2AAB1E000A747680FEFE3E9899F90C73735FE90C968C35C7
          26140AA0BCFC1E94DE2E45B51ADA8D46760093E92D6C6F3B4FD68D428B1AE5A3
          9AA4627C92E943FBE17B119F64FA85EF87FD3B6565D0DDFD861DA0A7A71B7677
          77520A700B25B8BEBE7E7680AEAE4ED8DBFB955280C242150C592CEC001D1DED
          E81F903BA50039B9B928D08938009146A339686A3288D2D2D2E8AD83F73E1E2C
          CAA7073ACFC75FE4894F9D00D0A3D079C2E7FB0D1F3EDA42E880CA4183EF6300
          FCDF5F81D2F06B8944F28A4BB45FC470A675BBDDEF6D369B09355D1800BF3028
          31444DCD33AD42A17C81200429D20FA173E1D3ECECAC058BA3B21559023CEF72
          5470DA4BC75B17B8BF92C55A8019F318954354765071C79E3C5858C494641B0E
          A810038221E8B5BEF2B7E33FF8F4FA625322B1810000000049454E44AE426082}
        OnClick = IEVIClick
      end
      object IEVN: TJvXPButton
        Left = 6
        Top = 125
        Width = 166
        Height = 45
        Caption = 'E&nviar e-mail Cliente'
        TabOrder = 7
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000173
          52474200AECE1CE90000000467414D410000B18F0BFC61050000000970485973
          00000EC300000EC301C76FA86400000021744558744372656174696F6E205469
          6D6500323030383A30333A30372031363A32303A3030489C347E000007904944
          415478DAED577B5054E715FFDD7DB07BF701BB8B0B0B4878BF5C5611281593A8
          A46944AD2688D44C3AC9D85A679A645A899369356952E3F8474D1A2693199D44
          933699344DAD746A1A31E2AB90A949A40604C323BAC0B22CB8ECC3E5B2EFD7DD
          7EF78A1B68044CA79DF48F9E99337BF77EF73BBFDF797CE7DC4BE11B16EAFF04
          FEA708FCA6E940342D2D3D26A004D13BD91C8BC5E65DBBDDAACD3691B0ABF1E9
          38EE2C026FBC7938B2FD473B84DC75341ABDBDD119A00BFD67597616518AA270
          ACF9287EB86DFBED09BC77F4DD4049915E623018108944BE627C3EEF17FACF49
          777737C6AF5BD0B065EBDC04EA1EAC97F4F5F561D9B265088542770CC6793757
          24B835A3D1889C9C1C9C3E736A7E025B367F5FE272B9E0743A515050806030F8
          6F79CE81DE52ABD5CA47343B3B1B1FB4BC0F82313F814020C013100804D0E974
          5F2B123385DBEFF3F93135E5865A9D04B95C8E33675BB169E343F313F0FBFDBC
          318BC582D4D4542895CAAF1D09CE73AE907B7B7B51505848D88821A369B4B79F
          C1C60D9BE626505FD720F1F97C71A326930959595990C964711277E23977023A
          3B3BA1D7EBF9758F2F04B14C09B36908AB5A4F08B1772F3B2701AFD73BCBE8D0
          D01072737341130FB8F42C04CE797FAEED63545795C5D723241A03163FC27E06
          17CD538FECDB76DF1F097CECB6043C1E4F7CE3AD5F8E445E5E1E1F092E45B703
          170A853CF8D1F7CFA3672C8A3D8F55CF22DA71D5059FD70D3F2BFB7DD3E1F603
          FD2D3B3F9F45E0E04B4F879881D362E784196AED62D43CFC0C0ACBBF1B37303C
          3C0C954AC513E1F2CBDDBBD56C38E14ECFA13F9C4797390C7F3082779E5F3F8B
          E8894F4731E5F64291B4E8F8DB7FE9E8EBC8BFFE5C9CC04FD749572BE4AAB6CA
          F24A246B5348CBB4A2A7A7070F3E790899855518B78D93229241ABD162707010
          5C9D84C3619E08AF6C0CCD176CB0322C7634ACC4AF0E9E44EB2B5BE3E0E14814
          2FBC7511867C1D3C51515B5BC735B7D1647B224EE0A975B2BEBBEF595D92A955
          40C4BAE163698CD9BD308E5CC7779E380C7D911E6291180CC3C4BDE608DC2CB0
          209E7DFDEF901082F50F94F3EBBB9B8EA379FFFD48494E014B9E39F4E72ED8DD
          3164A6AB30E98F5DE9EE1D099A2DD777C409ECACA5A375F53F10C8C366B2498D
          D1F109F8A5D968F9EB313CF37233864F3F8F106386589E0655E5E350E46FE0F7
          D9277DD8D9740E86E24CACAE2C40FF881399298978E1E007786FDF5A7C3E6843
          73FB28194C029497E6C36267404B25F64B3DD77C2E07B3F9CB08D4D2FD2B56AE
          2AD6A9A5A0422E84854A586F0430E9184345369059B609324D0EFC378660E93E
          01E5B79EC284B41A8DAF9CC596072A509CA743B7D1CE1FB792AC64BCF8C68750
          296548D3262145AB814C4E63DCE185DB1F828296A0EB726F800A40C71358757F
          42894ACCFEAD489A94BABCAC121A9267A76302977B3AB17A8910CB573D0A3A31
          15B108E903940061AF13C7CF5EC26BA39BF193ADF72259A5C495213BBC81089F
          6B7D76323CFE30186F100E8674D5493F1C537EB21E865C2A061B0991821EBD68
          6AD9BD825AB3062A81546CD497E66AD2136594BBDF0C3FD924510AA128C9C0DD
          D109946DDA87A8D78E84E442046D3D387E35156F7D2240E3B65A84A3315C269E
          73603E42C0474002A12882E10882E4371461490FB85933096221B42A1A035F0C
          BA03BE409DF9D4B3E7A89A75C2B7F3F2B21E4ED5D1098C7B045A9D0C9337A690
          A456C2610DE07BE4DC1BAA1A205124830D4EC1C428D0F05B191E7DA81A19296A
          BCD3DA4BC0582C24926970CB981576ABF5A4F9F4DE47C86D86AA592B62EEB9B7
          32D13CD603899425CD84EBE3DCD905B27376E0934F83682C3C8FFC8A5AD0EA2C
          045C269C6CBF8C037DEBD995154BB0385D2BB870658C0FF9BF8A5040414642AE
          A0C55C37C088C912621897D1D6F5EEC6C0C4D561EE2675DF5A9153BF54AF0947
          EC247F93E4DECD37A1509446C7582372F24AB0A1988181390291DF82A854878B
          E2AD68EE54446C4E4FAC283F3D5656929DC0A5C1C1F879D08AA25484C251928A
          0818D2786C76266CB73BD870C87BEC46D7B15FF81C5F3004826BA72C55532B7A
          5924A49F5CBA2C8F1C63193120E0097C6C2C43942605B9888C6388A04994E377
          BB5660CF9BFFC0C02819D5210F46864C7E873B60D5266BD2AACB8BA5669B9B1C
          330F4FE04CDB67E4FCB364A8B08E488039E5B1F63533FD2D03C474605ABD7C04
          1A1A90306617BE2E4E403D797D50DE0ADFA8E897A8AAAAC0E0980B102B48F10B
          71F0F132EC3AD2C5CF782AE241863A019F755FB3123BCDF244CDF66F9717D3BE
          100BA52C01E73EEAC4C8C93D066E0E71019DD6E00CF0AF4C430DD15CA28B896A
          B36AF7372D2FBD4BE10A50F085842483146A4AD538DFE320332C0A1949EB2279
          0C9D7DA36ED387CF65A6AFF9F9168942F3AA61491EAD4E52526D17BA380219D3
          398D4C0307A7AFE332E77741F6FA5F1F9050BE9F951AF452192DE59F94080508
          92BECFB55A2F8982F1EA60D8ED09B58C9CDD5FC7EDC95CBFB75220909EBA2B43
          9768B158C5C32DBB857CF50173BEBFCFFD61D2F027E162E7A5D7441265438C12
          265298F9D6C98D807020E471B631231FFDD837DA35FE25F11775E48156322797
          92082CF8E173275F46EA19A959341D4A07D16B442DD3B99D25F9EB5E958429EF
          1142E0B1FF0481FFAA7CE304FE0941E1FF9288E3B8BB0000000049454E44AE42
          6082}
        OnClick = IEVNClick
      end
      object JvNavPanelHeader1: TJvNavPanelHeader
        Left = 1
        Top = 242
        Width = 981
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
      object IEVF: TJvXPButton
        Left = 380
        Top = 19
        Width = 206
        Height = 45
        Caption = 'Consulta Disponibilidade SEFAZ'
        TabOrder = 9
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          21744558744372656174696F6E2054696D6500323030383A30333A3037203032
          3A34333A3030ED8C4ABD000007594944415478DAAD970B5053571AC7CFB97907
          72134348001B83E521A85BA1AB5BC76D75459EB276A40F2DC296AA9D69EBA315
          6515A4BC8218AD823C143BB53C4A573A6A55AA5D17E9A8059D6E5D15612DD015
          2809122081044212B8B979DC3DE9C28C33AB8450CFCC3727E79CEFFFFF7E39F7
          9CDC09A4280A4CDB54EC1040675D0410AE027EA35AE0AA3DE22503CA7A8C22C8
          2418EC6870950E5D0228991380C9B3023F1DEEB2F8AF00381760F661303E4EB7
          1A8094B194D2CC1AC0F100B66138730160701703BF919F81CA83096466F289C9
          7D343F60A5D9C07C520B946C09202D8FC85130C0FC03259B1500D1045732E780
          1B188F760CF8DBD2EC0F309CC6F7B80F385814F036FCF27F8241FA4E4030726D
          63C462FA0BD400D5816D2646A90AFB1848F08CA1BE711BC0F81DFC81C507E1E8
          1B702677A319F3E58A81C8FC9C73ACAA89D45A07EF7FC99CFBFB4DF3921A7C7F
          150D60FF217B288CB9820A720E279AA0813400132AB151F02A75CB2D80B12B70
          9C2D044DCCE554ACE92A0CE088C1BF1D2C6C2563A1FD5E739AC78585896909D0
          6F0D18EFBE420DDFB9640F4A6D67D8EF737CC971E2A1CD081279B1D4B7C60658
          87CE41B4DD016ABD3752EFBA05A0AF83363A1BE4E2B1D401FD0578822F05EB68
          CBA879B5EB61FAEB5B5F52B0FE9407006B0922FD0168AF1E024683DD12B0ED1E
          DB7815DEB31841AFE80D2AC17009C612267099B202A54FCAFF7665C600DA33D0
          41A78177856F50959AD3B0812704366E1CB5F69BCDB0353A52FA02E7F99701F0
          F001D4D8234001083A6FDE762CC850D186CEC07ABB05603E6F53D1435FC1201B
          093AA003A87D363FF9303E15405309ED9001F68BFF421D1EAC8435342678D13B
          995A7C3A119E5D1BE1FB2687CF0784710270D0C5D0AACDC04CD2B521192AC960
          35BC85888CA8601CD22D476CCE67DF87C6FE6E010C564112199DF3D94225A1CF
          AB50DA650881F0EE6D40C731A87939D20FB7D365C0A6EB05AA8783DD210A6B20
          2AC80534D00B1C40810A16225D15B24A42D188C651EE0274A14E848482C9B19A
          8B01159E42ADF887E2CF37758FDAFEC8306BBB7C85F4A01EF186CC948C530735
          D5F02CB25B83345E939A3ED431516C4173DFBA0BB00B7545285E43E23A4D157C
          8909C1B56B649AA8D5B854DBDED5337EFE64BA4FDCA674F3F250AFAEF7A559EF
          01CA7215B9AD43F94DCE5D43DAEB288A51EC437336B700262174A863A398830C
          486D155B563B5220D3E9F5D7FBD5EA928AAAEA3D499B92CFFBF82F5C9FE45BB1
          5ACAFDC5E4BD956A9ED4EA9D5AA4E382699A2B806568F547B4F583FC146AAE73
          EE486169459FB27BB3C130E25B5D53A3497E2B3199EFED57F39C989F9C91955D
          3BA96B45DDEF50AC46008DB3069834FBC8930EE43F9996C8967FD0327AB840A1
          EFEAEE349FAAAC944EE56C7D3B79C25BF662FFA1FCDD01235FC068C2012E4100
          329D0711B868AEDF86A8E9ABA14CF80EA5921F2C1693468D66605073B8A2AA32
          7D6A7D5D7CFC8F4BC29684B3D85C8F143F05974B1B7F5EF40ED5E2D278A60053
          ADA04051D8ABECD91D1A1A5AB66B77EA87CEB9BA8B17B9CDF79AEBF57ADD2B3C
          A1F443C5818CB2191BBA0B909F27EF6F7BF040EC37772E2D7841708F278FF72F
          83C110D1DDD9E5DDA7EE772C5A14723D274F1E35634377001407150B0706FA5B
          057CC1E9B0F0B0F15B4D373F985A0B0A0E5ED4D2DA7284C3E144F1F938374F9E
          6F9B91A93B00F97279BE69CCF4F13C7F29D1DDD9EDBC9A7FD7EBF5DB0502413D
          866121381F27B51A2D53EC237925372FEFD68C4CDD02C893B7A3820BD0E9C68A
          4A8AE1E36B3BB76F1733E80C0D83C1A0982C56737EC181A5CF140015C78D6363
          2303FDFDE7BFFCAA76C3D3F2D6C7AF53078786CEF9E4E8275C97A6EE001C90CB
          F7A9D56A05DA81E433E7CED53E2D6F6D4CCC5EA9CC5F21F212C6172814F5CF0C
          20272BBBB7ADADCDEBEB0BE73DA6CB4BDFBB17572A7B470302E6D72180D79E09
          405E4E2E7D7878D80C0045178B25895939D9679F94F769F9490169258F76B4B5
          6F61B05886D2B2D239CF0420373B7BA7BA4F5D4258887A740557F3709E5D2291
          ECF82835B5DAB9FEF9679F4948922CEF55F5C69B4C26B34633F8132E10AC9488
          C581070F1DEAFECD00D9999977BA953DE18479822D9648E8246929E3E3FC2474
          E78D814141FFECEAEC8C999898B05948E2BD13273FAD8D898C0AF012097F964A
          E75D387CE4C8C6DF04909599C92408C27CF7EEDD961B8D8DCB9C7315A73EA75B
          ADD6CB9D0F1FC63AB5743ADD2EF3F77F75FBCE1D57A67491111186B0B07078B4
          A8D0E5BFA969013ECECC8C56F6A8EAB95C764A5454F46988C12B1DED1D6BD095
          242C16CBEB25C7CB1A76BCBFADC8C3D3639B27EE49060604A527266D2A8F58B5
          EA6F32FFF98942A17045E1B1A2DBB30648DBB3E78EB2A7272C2E2EAE4137AC8B
          1A1A1A22ED0EFB7745C5C5098FE7A11F224F8C462B6731981B4422110969584E
          E3F7DF1706060616169796FE7556009919FB3187C33EEEE5E5C51A1D1D351213
          C4B5A3C78A12A633DBB32BD593025419CEC3DF422F29B6D566D71E2F3F2E9915
          40C6BE7481C968BC8141A82939713CD6D5B37CBCEDDF978EEB743A0569B5C2AA
          2FAAB74D97FB5F5F3F92EE4A00E5EF0000000049454E44AE426082}
        OnClick = IEVFClick
      end
      object IEVT: TJvXPButton
        Left = 380
        Top = 176
        Width = 206
        Height = 45
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Transmitir Carta de corre'#231#227'o'
        TabOrder = 10
        Visible = False
        OnClick = IEVTClick
      end
      object JvXPButtonEnviaEmailCCE: TJvXPButton
        Left = 380
        Top = 124
        Width = 206
        Height = 45
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Enviar carta de corre'#231#227'o para Destinat'#225'rio'
        TabOrder = 11
        Visible = False
        OnClick = JvXPButtonEnviaEmailCCEClick
      end
      object Button1: TButton
        Left = 590
        Top = 201
        Width = 177
        Height = 22
        Caption = 'Consulta EPEC (em Projeto)'
        TabOrder = 12
        Visible = False
        OnClick = Button1Click
      end
      object IEVO: TJvXPButton
        Left = 591
        Top = 72
        Width = 206
        Height = 45
        Caption = 'Consulta Cadastro'
        TabOrder = 13
        OnClick = IEVOClick
      end
      object IEVZ: TJvXPButton
        Left = 591
        Top = 19
        Width = 206
        Height = 45
        Caption = 'Inutilizar NFe'
        TabOrder = 14
        OnClick = IEVZClick
      end
      object IEVL: TJvXPButton
        Left = 7
        Top = 175
        Width = 165
        Height = 45
        Caption = 'Consulta NF-e'
        TabOrder = 15
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          21744558744372656174696F6E2054696D6500323030383A30333A3037203032
          3A34323A303055302DD8000007F54944415478DA959709545CD519C7FFEFCD9B
          79B3B13A844D1220016A01632DB1D156538D891AF51C31859343D2E309D868AD
          DD5BA3B68DB1895B69725C8E6639952435460D27154C580C8B86420288310925
          0C84B08410C292E930303330DBEBF7DE2C30CC80F49EF3CE2CF7BE7B7FEFFFFD
          BFEFDEC7B4EDBAE32CBEA54D8D8D5F187185DFFA6DE382B5919EC1E7361EEEA9
          DEFF582CBBA564D035BB9F714DF409F34D3050F657AB6DB45BA5485B17D01772
          F377E1740AF8A87A08BAD8240CF47660654618D293C37C639A0EEFBCB676C7E9
          F8B9E667864EBE2870720E1CE7BE18FACECA5560146A7021D160C232D0F3CFCD
          B072E21C0EB0BC120C04C855615044C4A0B9CB81AB8E54646565C22938A06FEB
          84D3328487562542171D8FD3EF3D333FC0F5F2DF4B00324E0619CBD2E2328220
          00B9129C361A5CF49D12C0179A17172439C7CB91BE2C14DD977BA152D2BCCD6F
          0CAE7BA53E6E6E808A3FBA016404206308809B06D088003F9000929FA90DB899
          D4C7B85980697C12A38609F4F50D207BDD6DD8F7FE496C587F273A2EF5A0EAD3
          4F276BDA2637D496BE563A07C07302A7908393D1D31384A800CB2901AF028BEE
          080AE07492396D022C530E4C98AD309B6DF8ACA6092FFCFC61A95F84782A7F2D
          2C16ABF0AFF2E6ABB575E72A476E8CBD73FCC8B6567F80CAADA40001701E004E
          84504A0AC8348B82024CD901521A022930366E87CBE582DDE14251712DEEBD2B
          1D2B9727FA209E24081A800BED0313D5B5DFE88F57349C1004D78E7F5716BADC
          26FCFC790940F4002B86808C282A300DB04202882FA801CF33301AA7D0DAD68B
          BB7F98262DD2D53D8AB8781D7D13F0565139D6FC281D5999893E582F8461CC0E
          CBA4DDF5CDD7FAC1E3E5A76BB31F5DF9E7471ECCBA42002FB801E42C99900C28
          2A1104209807662A42DCF8DBDE3209C0DBBC2022C44FF3D6E0D29551D86D2E5C
          EEE9B75F68D11F2EC87FF077BE34749B902580592188CAF2010C0E9A303A3A86
          A54BE3A056CB6032D9A15271A8ABBF888C8C24F01A1E7B0E55FAC125E8426136
          59B1A5602DAE8D586C27EBF55CF69AEFB1DB5F3ED891F5FDB48D81001E13CE06
          88A510F4F70D2326265CF24B5FDF2896A5C6C26113EB980B66AB0D21212A31DC
          B093436D935433141C22B432141DAA46C113F73B5B5A075C27BE382BDFFEAB47
          D170AE1FBFD8F2F6360F80DC5307983901623657617CC28A108D0A721A3378DD
          80285D182920C3D49400BBDD018D464E69E994FE335B9DD0D0274D2B01E413C0
          5BEF573399A9B1ECEABBDD61DAB4B9F0843F801402362840685E05D4BC02728E
          8CCA4252203444095D9456F280CB4179091657064691BA340AA2C5C9D310F511
          01727256BB76EC2A669FC8BD071969311240EEA642BD1B40A1200056AA849207
          2400DE5F010AC18DE131DC309890969A404FC9A0B9A54B549F80582C495C84C8
          08AD04C6AB9450F12C2223D53E80BCBCFB5174A48E943322EBB62578EC81E578
          64FD2B1D04F027A910F903F0010A8CAFFA0029493198B4D9C0D138A3D18C480A
          014FE1E8E91B22F979C4C786A3BD7D00A1A121304D98714B5AAC0F803C40FF39
          51FFD525FCA7A31F29093AE1D8D1539D7300042A60BCEB205253E3E1703824A3
          0D0D1A909818032529D143B580E739C4C787A3A363105AAD8A16B30600886DC2
          E24417A964B6988583072ABD0A4C6F46FE003711807B2F08CF2BA3723B254DA2
          E4799C3FDF8DC5093AA4A444131460B54E91FCC3C8CC4C80C1289A5549666502
          01C89C5A32E74B3B3F1C693C7BF12F6E005F219A09A094B66541118EFEDA8F11
          BEBE08234326444787BBE32E9A95CCA8D7F763F9F264B4B5F6E2F6DB13D1DCD8
          85E46571D0504AAAF84000B18925BCE0E9DD75EDDD030450E501A00CF015220F
          002323736AA2208BBC5552419373428A35CBD03856341F0393D14299A026735A
          A18B549137AC080BA3DD94F12C1604E0C0073596CFAB9A9E3A5CF4FC87F37880
          2ED18C74715A1D186D1AF47B7390FCDB6629B759712359C0F96036C0F0C8B8F0
          FADF3FFEA455DFF3B3AAD25727A6012405FCF7023780980D3AB021A9D0EFCB45
          E2B34DD40F497ECE43C02C14C02508BBDF2D693F75A6754BE9916D0DEEDDD0CF
          84540967EC8601007B73B1E4978D24BFBB184997A7E02C04A0E56C9779D73BC7
          DEFDE8C0D6ADBEF340F02CE0DDA722CE0DE10FD044692848F1977921C48B09AE
          841760D38655AE570B3F39F765FDF9874F55165E9F0130BB14CFF44020009F5B
          81455111D2A292126201E6E60E871720345465DC7FA8E2E5AA929D6FCEECFF3F
          017E02DB4325589A1C47E174D1A2E446CEBD2827AA10C49C5E80332DFAB2CECB
          FDF975E56F0C2F1040E5CB829900B14F37C241A5505A503C4533ECB41AAC0764
          4638BC00A5650DD99F1D7DA964768816A8401401A44800E1F975B408E7893FEB
          893F2B7982F102CC80F002242545EBEEBB27F3462080782493D250E64E437930
          05BC0039F8CE1F9A1790FDFECD9305417325F04CE807E0AF40E79EC771CCB086
          9E90C6B1740F816BC3A3706D8C417AC62D74049F944EC8E2598034C1F98BFD1D
          D7AE1B4EDEA495EDDCF7F66F8683020CD76C230005BCC732A90E28C41713B52F
          1D450041118BCBFB1FC754680A858B6A03AF8122340223931AB4F470D02ECEC2
          A6DC7BFD267FF2D9F74A1ABEEAF8F5D75F16F6AB558AA0EFA08CE9CCEB5287B8
          38C2D27C1D9C3A82168EF4FD66E51A74FE230F9ACC6CBF09C4175407BD229DEB
          34E0AA81C7CDC94958FDE315385ADC80DD7B8A3736D6BE7964BEF030F47A3EB0
          D0585EFDAF6CDEFE499782BD38B158DD2BAC983299279B8D26736E79F176CB7C
          F7FC0F0BBB725222A9586F0000000049454E44AE426082}
        OnClick = IEVLClick
      end
      object JvXPButton1: TJvXPButton
        Left = 591
        Top = 124
        Width = 206
        Height = 45
        Caption = 'Sair'
        TabOrder = 16
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
        OnClick = JvXPButton1Click
      end
      object PanelHomologacao: TJvNavPanelHeader
        Left = 1
        Top = 278
        Width = 981
        Height = 19
        Align = alBottom
        Caption = 'Aten'#231#227'o: Nota Fiscal em Ambiente de Homologa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
        ColorFrom = clRed
        ColorTo = clSilver
        ImageIndex = 0
      end
      object Button2: TJvXPButton
        Left = 380
        Top = 72
        Width = 206
        Height = 45
        Caption = 'EPEC'
        TabOrder = 18
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          21744558744372656174696F6E2054696D6500323030383A30333A3037203032
          3A34323A303055302DD80000050A4944415478DAAD556B4C9B65147E5B7ADD4A
          5BE8082DD715D8CC96E8808E7213B620CB90AEA48BFC591D7251A35131E03658
          824C2ECB620435C3E02D4A776186C43008FF3446828E5E603290011D6CAC48A1
          14684B5B5A7A81D6F37EC282B8C858769226FDBEBCEFF39C739EE79C8FE4F7FB
          D1B38CACACAC80F4F4747F7D7DBD0F3F939E96203939F9759FCF974B22917EEC
          EBEB6B5B7FC796482449369BADBFB1B1D1F6D404292929AF0A85C2EF018CDEDA
          DA6A31994C1FDA6DB6AE1352E9B74C06E3E1E5A6A626BBDD3E0ED8FE1D134096
          6FEEDBB7AF393737973A303080180C06EAEDED3523BFDF2308E5536E7676B4B8
          3D9E3AC075ECB802C85C1E1717774522C1E077109FCF47F3F3F3687575158D8C
          8CA09E9E9E3197DB9DE9F7F91637EE3C31416A6AEA2900BF96939343191C1C44
          A1A1A1087A8D828383D1D4D41472793C483B3A6AB25AAD9950D9E88E094E4824
          EA3C992CF9C1FDFB884EA713EF82828290D1684421212148A7D3A1B5B535343E
          3EBE6877380E6954AAD91D1140EFF36834DAD7090909029C35854241CBCBCB88
          C7E3112418DCE17020B3D98CA6A7A73FD26834754F44505C5CCC5D5A5A8AEEE8
          E8180212298D4AFD2621315110181848906050AFD74BB40B1220DA6559B29ED4
          A8559DDB1214151571F3F2F2D4191919FB2BCE9DBDA9B872351F935081243E3E
          5EC0643291077ABF01AED7EBD1A2C9D4A051AB2BB6D5A0B0B090939D9DAD944A
          A5076B6A6AE66198CE2B954AC57ABB1E91E0EC61E0D0ECEC2C9A07F0FE4DE08F
          2580CBC5BB76313F96C94E1A4E9F3E7DA8BCBC7C0E843BA756AB5BB79C2348C0
          59020C6E595A6AE8EFEBABD89AE8BF08C462B13C3232FC7A7CA288AC562A5178
          58C4C8F0DDE14B2A95EA87CD9A582C96E8CECE4E421398DC2687CBFD53BF46FD
          F6E33AF188000ECB2322C2AE671CC922CFCDEAD18ACB8DFE1C1A34399D2B25E0
          88AEAD9A54569CBBD9A2B892BF9DFB080200970178FBD1AC6364DDE403C462B1
          102C31049922005F80336FC07AE83E7EFC65B5542A3978F1E245235455092BE2
          EAB604E2A4A482C8A8C8962347B328BA879304388E808000E476BB11581493CC
          C9E5F2998282D74467CE7C303731317116086EE073D5D5D5522E877569C5E5B5
          62B179C181DE39A3F93D58D723044152D2E15B9263D9E9CE351FA2516984B7C9
          6432E16F6C3D97CB45EC1B181E04558C81A0995D5D5D8BEBE0E2202EFB9D5C89
          541E151545C5558355BDB77EFBB57152A76F069219924814FF2E9F2FF8EC39E1
          5E1A89CE446C3687181CDC3A0C8EABC03F4C78EFDE98EEF6ED01E146F95F347D
          7E352A3AE61570D26E3CD1383983C180B45AADC76137971795BCF525A181482C
          2AE5B258970F1E38402291A988C3E51203E4743A8975802F4EFFA54336BBA319
          484B619911CEB871EDBB5FA80CF64BF83F3E03B62592C298EE95E5FE82C21231
          41102F4E8908E6F16ED1D16A745C6C2CF2F9498406F0D1F867FC7593C86CB136
          F46DF1F957CD97FBF7C6EC17E1EF0A87C3215A8B35C377EF6947074ADF2F1391
          D2525238E92FA6298C3386B4B6F6767DD26151F8F32F1CE2E31D8F2F60E161B7
          FC077C5D83C4C80841B7E870323B1612C381D785B2F777A37EC670AAAEAEAE9B
          5479FEBC181658FED0C0ED42DD94EE131A8DEAA53376570AC2C2C34C8B0B3EE7
          8AEB53F596F1DF1C172E5C48DDC30B6A8B8D11EE61EE66AF6947EFDA0CC68512
          10F867C245656565748542111A2B8C94FE7167B819BF4C4B4BA343053270C51C
          58B4673BAFE3A8AAAA62810EE4DADA5ADBFFEEA2671D7F03092AA9EF85440DD1
          0000000049454E44AE426082}
        OnClick = Button2Click
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 299
      Width = 983
      Height = 409
      ActivePage = TabSheet10
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object pTodResp: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 253
          ExplicitTop = 14
          ControlData = {
            4C000000C56400004F2500000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        object trvwNFe: TTreeView
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object MemoDados: TMemo
          Left = 0
          Top = 17
          Width = 975
          Height = 361
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 17
          Align = alTop
          Caption = 'Respostas Enviadas'
          Color = clGradientActiveCaption
          TabOrder = 1
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'RetornoConsulta NFe 2.01'
        ImageIndex = 6
        object TreeViewRetornoConsulta: TTreeView
          Left = 0
          Top = 0
          Width = 975
          Height = 378
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 1111
    Top = 6
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFERaveCB1
    Left = 1139
    Top = 69
  end
  object ACBrNFeDANFERaveCB1: TACBrNFeDANFERaveCB
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    TamanhoCampoCodigo = 35
    TamanhoCampoVlUnit = 0
    TamanhoFonte_ANTT = 10
    TamanhoFonte_infComplementares = 6
    Fonte = ftTimes
    EspessuraBorda = 2
    ExpandirDadosAdicionaisAuto = False
    MostrarSetup = False
    TributosPercentual = ptValorProdutos
    ImprimirDesconto = True
    ImprimirTributosItem = False
    Left = 1173
    Top = 22
  end
  object qNFe: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_nfe'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from NF_e'
      'where NF_e.cod_nfe =:cod_nfe')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1189
    Top = 492
  end
  object dspNFe: TDataSetProvider
    DataSet = qNFe
    Left = 1189
    Top = 447
  end
  object cdsNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNFe'
    Left = 1189
    Top = 402
    object cdsNFeCDEMPRESA: TIntegerField
      FieldName = 'CDEMPRESA'
      Required = True
    end
    object cdsNFeCOD_NFE: TIntegerField
      FieldName = 'COD_NFE'
      Required = True
    end
    object cdsNFeSERIE: TIntegerField
      FieldName = 'SERIE'
      Required = True
    end
    object cdsNFeXML: TMemoField
      FieldName = 'XML'
      BlobType = ftMemo
      Size = 1
    end
    object cdsNFeXML2: TBlobField
      FieldName = 'XML2'
      Size = 1
    end
  end
  object dsNFe: TDataSource
    DataSet = cdsNFe
    Left = 1189
    Top = 357
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 1141
    Top = 357
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNF'
    Left = 1141
    Top = 402
    object cdsNFCDNF: TIntegerField
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNFNRNF: TIntegerField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsNFDTEMISNF: TDateField
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTMER: TFloatField
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTIPI: TFloatField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTNF: TFloatField
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLDESC: TFloatField
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPCDESC: TFloatField
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLCOMIS: TFloatField
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDVENDED: TSmallintField
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPCICMS: TFloatField
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTICMS: TFloatField
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFQUANTIDA: TFloatField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFFRETEC: TStringField
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
    object cdsNFPCFRETE: TFloatField
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTFRE: TFloatField
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPESOLIQT: TFloatField
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFPESOBRUT: TFloatField
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFVLDEV: TFloatField
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsNFVLTOTSERVICO: TFloatField
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTISS: TFloatField
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_TOTAL_PIS: TFloatField
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVALOR_TOTAL_COFINS: TFloatField
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFVALOR_DIFERIMENTO: TFloatField
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFNREVENTO: TIntegerField
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object cdsNFNF_ENTRADA: TIntegerField
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFVLSEGURO: TFloatField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLOUTRAS_DESPESAS: TFloatField
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFCDANTT: TIntegerField
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFBASEICMSUBST: TFloatField
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFVLTOTICMSUBST: TFloatField
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsNFMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsNFENVIO_DATAHORA: TSQLTimeStampField
      FieldName = 'ENVIO_DATAHORA'
      ProviderFlags = [pfInUpdate]
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
    object cdsNFTRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object cdsNFTRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object cdsNFTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object cdsNFTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object cdsNFTRANSP_TIPO_PESSOA: TIntegerField
      FieldName = 'TRANSP_TIPO_PESSOA'
      ProviderFlags = []
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
    object cdsNFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object cdsNFIE_RG: TStringField
      FieldName = 'IE_RG'
      ProviderFlags = []
    end
    object cdsNFENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNFNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 50
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
      Size = 7
    end
    object cdsNFCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsNFPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = []
      Size = 60
    end
    object cdsNFFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 15
    end
    object cdsNFTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      ProviderFlags = []
    end
    object cdsNFEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspNF: TDataSetProvider
    DataSet = qNF
    UpdateMode = upWhereKeyOnly
    Left = 1141
    Top = 447
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
      'select '
      '       nf.cdnf,'
      '       nf.nrnf,'
      '       nf.serie,'
      '       nf.dtemisnf,'
      '       nf.hora_emissao,'
      '       nf.tpdocto,'
      '       nf.cdpedido,'
      '       nf.cdcliente,'
      '       nf.dtsaida,'
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
      '       nf.nrevento,'
      '       nf.referencia_nf_devolucao,'
      '       nf.nf_entrada,'
      '       nf.epec_conciliado,'
      '       nf.codigo_para_chave_nfe,'
      '       nf.vlseguro,'
      '       nf.vloutras_despesas,'
      '       nf.cdantt,'
      '       nf.baseicmsubst,'
      '       nf.vltoticmsubst,'
      '       nf.especie,'
      '       nf.marca,'
      '       nf.envio_datahora,'
      ''
      '       natuope.descrnat,'
      '      '
      '       transportadores.nome as transportador,'
      '       transportadores.cpf_cnpj as Transp_cpf_cnpj,'
      '       transportadores.rg_ie as transp_rg_ie,'
      '       transportadores.endereco as transp_endereco,'
      '       transportadores.numero as transp_numero,'
      '       Transportadores.cidade as transp_cidade,'
      '       Transportadores.uf as transp_uf,'
      '       Transportadores.tipo_pessoa as transp_tipo_pessoa,'
      '       vendedores.nome as vendedor,'
      ''
      '       case when nf.cdcliente is null then '#39'Consumidor'#39
      
        '       else ( select nome from ( select c.nome,c.cdpessoa from c' +
        'lientes c union  '
      
        '                                               select f.nome, f.' +
        'cdpessoa from fornecedores f union'
      
        '                                               select t.nome, t.' +
        'cdpessoa from transportadores t)'
      '                 where cdpessoa = nf.cdcliente )'
      '       end as cliente,'
      ' '
      
        '       ( select cpf_cnpj from ( select c.cpf_cnpj, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                             select f.cpf_cnpj, ' +
        'f.cdpessoa from fornecedores f union'
      
        '                                             select t.cpf_cnpj, ' +
        't.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cpf_cnpj,'
      ''
      
        '       ( select ie_rg from ( select c.ie_rg, c.cdpessoa from cli' +
        'entes c union'
      
        '                                        select f.rg_ie, f.cdpess' +
        'oa from fornecedores f union'
      
        '                                        select t.rg_ie, t.cdpess' +
        'oa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as ie_rg,'
      ''
      
        '       ( select endereco from ( select c.endereco, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                              select f.endereco,' +
        ' f.cdpessoa from fornecedores f union'
      
        '                                              select t.endereco,' +
        ' t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as endereco,'
      ''
      
        '       ( select numero from ( select c.numero , c.cdpessoa from ' +
        'clientes c union'
      
        '                                           select f.numero, f.cd' +
        'pessoa from fornecedores f union'
      
        '                                           select t.numero, t.cd' +
        'pessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as numero,'
      ''
      
        '       ( select bairro from ( select c.bairro, c.cdpessoa from c' +
        'lientes c union'
      
        '                                         select f.bairro, f.cdpe' +
        'ssoa from fornecedores f union'
      
        '                                         select t.bairro, t.cdpe' +
        'ssoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as bairro,'
      ''
      
        '       ( select cidade from ( select c.cidade, c.cdpessoa from c' +
        'lientes c union'
      
        '                                          select f.cidade, f.cdp' +
        'essoa from fornecedores f union'
      
        '                                          select t.cidade, t.cdp' +
        'essoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cidade,'
      ''
      
        '       ( select cep from ( select c.cep, c.cdpessoa from cliente' +
        's c union'
      
        '                                     select f.cep, f.cdpessoa fr' +
        'om fornecedores f union'
      
        '                                     select t.cep, t.cdpessoa fr' +
        'om transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cep,'
      ''
      
        '       ( select uf from ( select c.uf, c.cdpessoa from clientes ' +
        'c union'
      
        '                                   select f.uf, f.cdpessoa from ' +
        'fornecedores f union'
      
        '                                   select t.uf, t.cdpessoa from ' +
        'transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as uf,'
      ''
      
        '       ( select cod_ibge from ( select c.cod_ibge, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                              select f.cod_ibge,' +
        ' f.cdpessoa from fornecedores f union'
      
        '                                              select t.cod_ibge,' +
        ' t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cod_ibge,'
      ''
      
        '       ( select cod_pais from ( select c.cod_pais, c.cdpessoa fr' +
        'om clientes c union'
      
        '                                             select f.cod_pais, ' +
        'f.cdpessoa from fornecedores f union'
      
        '                                             select t.cod_pais, ' +
        't.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as cod_pais,'
      ''
      
        '       ( select pais from ( select c.pais, c.cdpessoa from clien' +
        'tes c union'
      
        '                                      select f.pais, f.cdpessoa ' +
        'from fornecedores f union'
      
        '                                      select t.pais, t.cdpessoa ' +
        'from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as pais,'
      ''
      
        '       ( select fone from ( select c.fone, c.cdpessoa from clien' +
        'tes c union'
      
        '                                       select f.fone, f.cdpessoa' +
        ' from fornecedores f union'
      
        '                                       select t.fone, t.cdpessoa' +
        ' from transportadores t)'
      '         where cdpessoa = nf.cdcliente) as fone,'
      ''
      
        '       ( select tipo_pessoa from ( select c.tipo_pessoa, c.cdpes' +
        'soa from clientes c union'
      
        '                                                  select f.tipo_' +
        'pessoa, f.cdpessoa from fornecedores f union'
      
        '                                                  select t.tipo_' +
        'pessoa, t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as tipo_pessoa,'
      ''
      
        '       ( select email_nfe from ( select c.email_nfe, c.cdpessoa ' +
        'from clientes c union'
      
        '                                               select f.email_nf' +
        'e, f.cdpessoa from fornecedores f union'
      
        '                                               select t.email_nf' +
        'e, t.cdpessoa from transportadores t)'
      '         where cdpessoa = nf.cdcliente ) as email_nfe'
      ''
      'from nf'
      'left join natuope on natuope.cdnatope = nf.cdnatope'
      
        'left join transportadores on transportadores.cdtransportador = n' +
        'f.cdtransp'
      'left join vendedores on vendedores.cdvendedor = nf.cdvended'
      'left join pedidos on pedidos.cdpedido = nf.cdpedido'
      
        'left join clientes on     (clientes.cdpessoa = pedidos.cdcliente' +
        ' and nf.clifor = '#39'C'#39')'
      
        'left join fornecedores on (fornecedores.cdpessoa = nf.cdcliente ' +
        'and nf.clifor = '#39'F'#39')'
      
        'left join transportadores t on (t.cdpessoa = nf.cdcliente and nf' +
        '.clifor = '#39'T'#39')'
      'where nf.nrnf=:nrnf'
      '')
    SQLConnection = DMPrincipal.SQLCon
    Left = 1141
    Top = 492
    object qNFCDNF: TIntegerField
      FieldName = 'CDNF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNFNRNF: TIntegerField
      FieldName = 'NRNF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFSERIE: TIntegerField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qNFDTEMISNF: TDateField
      FieldName = 'DTEMISNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
      ProviderFlags = [pfInUpdate]
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
    object qNFCDCLIENTE: TIntegerField
      FieldName = 'CDCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTMER: TFloatField
      FieldName = 'VLTOTMER'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEIPI: TFloatField
      FieldName = 'BASEIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTIPI: TFloatField
      FieldName = 'VLTOTIPI'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTNF: TFloatField
      FieldName = 'VLTOTNF'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLDESC: TFloatField
      FieldName = 'VLDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPCDESC: TFloatField
      FieldName = 'PCDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLCOMIS: TFloatField
      FieldName = 'VLCOMIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDVENDED: TSmallintField
      FieldName = 'CDVENDED'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEICMS: TFloatField
      FieldName = 'BASEICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPCICMS: TFloatField
      FieldName = 'PCICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTICMS: TFloatField
      FieldName = 'VLTOTICMS'
      ProviderFlags = [pfInUpdate]
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
    object qNFQUANTIDA: TFloatField
      FieldName = 'QUANTIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDNATOPE: TSmallintField
      FieldName = 'CDNATOPE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDTRANSP: TSmallintField
      FieldName = 'CDTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object qNFFRETEC: TStringField
      FieldName = 'FRETEC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
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
    object qNFPCFRETE: TFloatField
      FieldName = 'PCFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTFRE: TFloatField
      FieldName = 'VLTOTFRE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPESOLIQT: TFloatField
      FieldName = 'PESOLIQT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFPESOBRUT: TFloatField
      FieldName = 'PESOBRUT'
      ProviderFlags = [pfInUpdate]
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
    object qNFVLDEV: TFloatField
      FieldName = 'VLDEV'
      ProviderFlags = [pfInUpdate]
    end
    object qNFICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCLIFOR: TStringField
      FieldName = 'CLIFOR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNFVLTOTSERVICO: TFloatField
      FieldName = 'VLTOTSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTISS: TFloatField
      FieldName = 'VLTOTISS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVALOR_TOTAL_PIS: TFloatField
      FieldName = 'VALOR_TOTAL_PIS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVALOR_TOTAL_COFINS: TFloatField
      FieldName = 'VALOR_TOTAL_COFINS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFERENCIA_NC: TStringField
      FieldName = 'REFERENCIA_NC'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFVALOR_DIFERIMENTO: TFloatField
      FieldName = 'VALOR_DIFERIMENTO'
      ProviderFlags = [pfInUpdate]
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
    object qNFNREVENTO: TIntegerField
      FieldName = 'NREVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFREFERENCIA_NF_DEVOLUCAO: TStringField
      FieldName = 'REFERENCIA_NF_DEVOLUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 44
    end
    object qNFNF_ENTRADA: TIntegerField
      FieldName = 'NF_ENTRADA'
      ProviderFlags = [pfInUpdate]
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
    object qNFVLSEGURO: TFloatField
      FieldName = 'VLSEGURO'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLOUTRAS_DESPESAS: TFloatField
      FieldName = 'VLOUTRAS_DESPESAS'
      ProviderFlags = [pfInUpdate]
    end
    object qNFCDANTT: TIntegerField
      FieldName = 'CDANTT'
      ProviderFlags = [pfInUpdate]
    end
    object qNFBASEICMSUBST: TFloatField
      FieldName = 'BASEICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object qNFVLTOTICMSUBST: TFloatField
      FieldName = 'VLTOTICMSUBST'
      ProviderFlags = [pfInUpdate]
    end
    object qNFESPECIE: TStringField
      FieldName = 'ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qNFMARCA: TStringField
      FieldName = 'MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qNFENVIO_DATAHORA: TSQLTimeStampField
      FieldName = 'ENVIO_DATAHORA'
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
    object qNFTRANSP_CPF_CNPJ: TStringField
      FieldName = 'TRANSP_CPF_CNPJ'
      ProviderFlags = []
      Size = 17
    end
    object qNFTRANSP_RG_IE: TStringField
      FieldName = 'TRANSP_RG_IE'
      ProviderFlags = []
      Size = 18
    end
    object qNFTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNFTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object qNFTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object qNFTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qNFTRANSP_TIPO_PESSOA: TIntegerField
      FieldName = 'TRANSP_TIPO_PESSOA'
      ProviderFlags = []
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
    object qNFCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 17
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
    object qNFNUMERO: TStringField
      FieldName = 'NUMERO'
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
      Size = 7
    end
    object qNFCOD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qNFPAIS: TStringField
      FieldName = 'PAIS'
      ProviderFlags = []
      Size = 60
    end
    object qNFFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 15
    end
    object qNFTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      ProviderFlags = []
    end
    object qNFEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      ProviderFlags = []
      Size = 100
    end
  end
  object qPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMPrincipal.SQLCon
    Left = 1077
    Top = 492
  end
end
