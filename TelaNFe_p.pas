{$I ACBr.inc}

unit TelaNFe_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses IniFiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, TelaNavegador_p,
     StdCtrls, ExtCtrls, DB, Buttons, ComCtrls, OleCtrls, SHDocVw, ACBrNFe, pcnConversao, ACBrNFeDANFEClass, Mask,
     JvExStdCtrls, IBCustomDataSet, IBQuery, IBDatabase, JvExControls, JvXPCore, JvXPButtons, JvNavigationPane,
     ACBrUtil, pcnAuxiliar, XMLIntf, XMLDoc, ACBrBase, ACBrDFe, pcnConversaoNFe, ACBrMail,
  FMTBcd, DBClient, Provider, SqlExpr, ACBrNFeDANFERaveCB, pngimage;
type
  TTelaNFe = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    Label7: TLabel;
    edtLogoMarca: TEdit;
    sbtnLogoMarca: TSpeedButton;
    edtPathLogs: TEdit;
    sbtnPathSalvar: TSpeedButton;
    ckSalvar: TCheckBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    edtNumSerie: TEdit;
    Label25: TLabel;
    rgTipoAmb: TRadioGroup;
    sbtnGetCert: TSpeedButton;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    Label3: TLabel;
    tipocone: TComboBox;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    pTodResp: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    IEVE: TJvXPButton;
    IEVG: TJvXPButton;
    IEVC: TJvXPButton;
    IEVD: TJvXPButton;
    IEVS: TJvXPButton;
    IEVU: TJvXPButton;
    IEVI: TJvXPButton;
    IEVN: TJvXPButton;
    JvNavPanelHeader1: TJvNavPanelHeader;
    IEVF: TJvXPButton;
    IEVT: TJvXPButton;
    JvXPButtonEnviaEmailCCE: TJvXPButton;
    mmEmailCCE: TMemo;
    Label4: TLabel;
    TabSheet4: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    Button1: TButton;
    edtPathCCe: TEdit;
    SpeedButton1: TSpeedButton;
    cbxSalvaCCeCancelamentoPathEvento: TCheckBox;
    ACBrNFe1: TACBrNFe;
    ACBrMail1: TACBrMail;
    cbxSalvarSOAP: TCheckBox;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    IEVO: TJvXPButton;
    IEVZ: TJvXPButton;
    IEVL: TJvXPButton;
    ACBrNFeDANFERaveCB1: TACBrNFeDANFERaveCB;
    JvXPButton1: TJvXPButton;
    qNFe: TSQLQuery;
    dspNFe: TDataSetProvider;
    cdsNFe: TClientDataSet;
    dsNFe: TDataSource;
    cdsNFeCDEMPRESA: TIntegerField;
    cdsNFeCOD_NFE: TIntegerField;
    cdsNFeSERIE: TIntegerField;
    cdsNFeXML: TMemoField;
    cdsNFeXML2: TBlobField;
    dsNF: TDataSource;
    cdsNF: TClientDataSet;
    dspNF: TDataSetProvider;
    qNF: TSQLQuery;
    qPesquisa: TSQLQuery;
    PanelHomologacao: TJvNavPanelHeader;
    Button2: TJvXPButton;
    qNFCDNF: TIntegerField;
    qNFNRNF: TIntegerField;
    qNFSERIE: TIntegerField;
    qNFDTEMISNF: TDateField;
    qNFHORA_EMISSAO: TTimeField;
    qNFTPDOCTO: TStringField;
    qNFCDPEDIDO: TIntegerField;
    qNFCDCLIENTE: TIntegerField;
    qNFDTSAIDA: TDateField;
    qNFVLTOTMER: TFloatField;
    qNFBASEIPI: TFloatField;
    qNFVLTOTIPI: TFloatField;
    qNFVLTOTNF: TFloatField;
    qNFVLDESC: TFloatField;
    qNFPCDESC: TFloatField;
    qNFVLCOMIS: TFloatField;
    qNFCDVENDED: TSmallintField;
    qNFBASEICMS: TFloatField;
    qNFPCICMS: TFloatField;
    qNFVLTOTICMS: TFloatField;
    qNFCDOBSFIS: TSmallintField;
    qNFOBS_FISCAL: TStringField;
    qNFCST_IPI: TStringField;
    qNFENQUADRAMENTO_IPI: TSmallintField;
    qNFQUANTIDA: TFloatField;
    qNFCDNATOPE: TSmallintField;
    qNFCDTRANSP: TSmallintField;
    qNFFRETEC: TStringField;
    qNFTIPO_TRANPORTE: TStringField;
    qNFPLACA: TStringField;
    qNFESTADO_PLACA: TStringField;
    qNFPCFRETE: TFloatField;
    qNFVLTOTFRE: TFloatField;
    qNFPESOLIQT: TFloatField;
    qNFPESOBRUT: TFloatField;
    qNFUSUARIO: TStringField;
    qNFINDSTAT: TStringField;
    qNFFATURA: TStringField;
    qNFVLDEV: TFloatField;
    qNFICMSFRETE: TFloatField;
    qNFCLIFOR: TStringField;
    qNFVLTOTSERVICO: TFloatField;
    qNFVLTOTISS: TFloatField;
    qNFVALOR_TOTAL_PIS: TFloatField;
    qNFVALOR_TOTAL_COFINS: TFloatField;
    qNFREFERENCIA_NC: TStringField;
    qNFVALOR_DIFERIMENTO: TFloatField;
    qNFCHAVE: TStringField;
    qNFTPEMIS: TSmallintField;
    qNFVERSAO_NFE: TStringField;
    qNFDATA_CANCELAMENTO: TDateField;
    qNFREFNF: TIntegerField;
    qNFUFEMBARQ: TStringField;
    qNFXLOCEMBARQ: TStringField;
    qNFRESULTADO_NFE: TStringField;
    qNFPROTOCOLO_NFE: TStringField;
    qNFCANHOTO_OK: TStringField;
    qNFNREVENTO: TIntegerField;
    qNFREFERENCIA_NF_DEVOLUCAO: TStringField;
    qNFNF_ENTRADA: TIntegerField;
    qNFEPEC_CONCILIADO: TStringField;
    qNFCODIGO_PARA_CHAVE_NFE: TStringField;
    qNFVLSEGURO: TFloatField;
    qNFVLOUTRAS_DESPESAS: TFloatField;
    qNFCDANTT: TIntegerField;
    qNFBASEICMSUBST: TFloatField;
    qNFVLTOTICMSUBST: TFloatField;
    qNFESPECIE: TStringField;
    qNFMARCA: TStringField;
    qNFDESCRNAT: TStringField;
    qNFTRANSPORTADOR: TStringField;
    qNFTRANSP_CPF_CNPJ: TStringField;
    qNFTRANSP_RG_IE: TStringField;
    qNFTRANSP_ENDERECO: TStringField;
    qNFTRANSP_NUMERO: TStringField;
    qNFTRANSP_CIDADE: TStringField;
    qNFTRANSP_UF: TStringField;
    qNFTRANSP_TIPO_PESSOA: TIntegerField;
    qNFVENDEDOR: TStringField;
    qNFCLIENTE: TStringField;
    qNFCPF_CNPJ: TStringField;
    qNFIE_RG: TStringField;
    qNFENDERECO: TStringField;
    qNFNUMERO: TStringField;
    qNFBAIRRO: TStringField;
    qNFCIDADE: TStringField;
    qNFCEP: TStringField;
    qNFUF: TStringField;
    qNFCOD_IBGE: TStringField;
    qNFCOD_PAIS: TStringField;
    qNFPAIS: TStringField;
    qNFFONE: TStringField;
    qNFTIPO_PESSOA: TIntegerField;
    qNFEMAIL_NFE: TStringField;
    cdsNFCDNF: TIntegerField;
    cdsNFNRNF: TIntegerField;
    cdsNFSERIE: TIntegerField;
    cdsNFDTEMISNF: TDateField;
    cdsNFHORA_EMISSAO: TTimeField;
    cdsNFTPDOCTO: TStringField;
    cdsNFCDPEDIDO: TIntegerField;
    cdsNFCDCLIENTE: TIntegerField;
    cdsNFDTSAIDA: TDateField;
    cdsNFVLTOTMER: TFloatField;
    cdsNFBASEIPI: TFloatField;
    cdsNFVLTOTIPI: TFloatField;
    cdsNFVLTOTNF: TFloatField;
    cdsNFVLDESC: TFloatField;
    cdsNFPCDESC: TFloatField;
    cdsNFVLCOMIS: TFloatField;
    cdsNFCDVENDED: TSmallintField;
    cdsNFBASEICMS: TFloatField;
    cdsNFPCICMS: TFloatField;
    cdsNFVLTOTICMS: TFloatField;
    cdsNFCDOBSFIS: TSmallintField;
    cdsNFOBS_FISCAL: TStringField;
    cdsNFCST_IPI: TStringField;
    cdsNFENQUADRAMENTO_IPI: TSmallintField;
    cdsNFQUANTIDA: TFloatField;
    cdsNFCDNATOPE: TSmallintField;
    cdsNFCDTRANSP: TSmallintField;
    cdsNFFRETEC: TStringField;
    cdsNFTIPO_TRANPORTE: TStringField;
    cdsNFPLACA: TStringField;
    cdsNFESTADO_PLACA: TStringField;
    cdsNFPCFRETE: TFloatField;
    cdsNFVLTOTFRE: TFloatField;
    cdsNFPESOLIQT: TFloatField;
    cdsNFPESOBRUT: TFloatField;
    cdsNFUSUARIO: TStringField;
    cdsNFINDSTAT: TStringField;
    cdsNFFATURA: TStringField;
    cdsNFVLDEV: TFloatField;
    cdsNFICMSFRETE: TFloatField;
    cdsNFCLIFOR: TStringField;
    cdsNFVLTOTSERVICO: TFloatField;
    cdsNFVLTOTISS: TFloatField;
    cdsNFVALOR_TOTAL_PIS: TFloatField;
    cdsNFVALOR_TOTAL_COFINS: TFloatField;
    cdsNFREFERENCIA_NC: TStringField;
    cdsNFVALOR_DIFERIMENTO: TFloatField;
    cdsNFCHAVE: TStringField;
    cdsNFTPEMIS: TSmallintField;
    cdsNFVERSAO_NFE: TStringField;
    cdsNFDATA_CANCELAMENTO: TDateField;
    cdsNFREFNF: TIntegerField;
    cdsNFUFEMBARQ: TStringField;
    cdsNFXLOCEMBARQ: TStringField;
    cdsNFRESULTADO_NFE: TStringField;
    cdsNFPROTOCOLO_NFE: TStringField;
    cdsNFCANHOTO_OK: TStringField;
    cdsNFNREVENTO: TIntegerField;
    cdsNFREFERENCIA_NF_DEVOLUCAO: TStringField;
    cdsNFNF_ENTRADA: TIntegerField;
    cdsNFEPEC_CONCILIADO: TStringField;
    cdsNFCODIGO_PARA_CHAVE_NFE: TStringField;
    cdsNFVLSEGURO: TFloatField;
    cdsNFVLOUTRAS_DESPESAS: TFloatField;
    cdsNFCDANTT: TIntegerField;
    cdsNFBASEICMSUBST: TFloatField;
    cdsNFVLTOTICMSUBST: TFloatField;
    cdsNFESPECIE: TStringField;
    cdsNFMARCA: TStringField;
    cdsNFDESCRNAT: TStringField;
    cdsNFTRANSPORTADOR: TStringField;
    cdsNFTRANSP_CPF_CNPJ: TStringField;
    cdsNFTRANSP_RG_IE: TStringField;
    cdsNFTRANSP_ENDERECO: TStringField;
    cdsNFTRANSP_NUMERO: TStringField;
    cdsNFTRANSP_CIDADE: TStringField;
    cdsNFTRANSP_UF: TStringField;
    cdsNFTRANSP_TIPO_PESSOA: TIntegerField;
    cdsNFVENDEDOR: TStringField;
    cdsNFCLIENTE: TStringField;
    cdsNFCPF_CNPJ: TStringField;
    cdsNFIE_RG: TStringField;
    cdsNFENDERECO: TStringField;
    cdsNFNUMERO: TStringField;
    cdsNFBAIRRO: TStringField;
    cdsNFCIDADE: TStringField;
    cdsNFCEP: TStringField;
    cdsNFUF: TStringField;
    cdsNFCOD_IBGE: TStringField;
    cdsNFCOD_PAIS: TStringField;
    cdsNFPAIS: TStringField;
    cdsNFFONE: TStringField;
    cdsNFTIPO_PESSOA: TIntegerField;
    cdsNFEMAIL_NFE: TStringField;
    qNFENVIO_DATAHORA: TSQLTimeStampField;
    cdsNFENVIO_DATAHORA: TSQLTimeStampField;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure IEVZClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure IEVOClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure IEVEClick(Sender: TObject);
    procedure IEVGClick(Sender: TObject);
    procedure IEVCClick(Sender: TObject);
    procedure IEVSClick(Sender: TObject);
    procedure IEVUClick(Sender: TObject);
    procedure IEVDClick(Sender: TObject);
    procedure IEVIClick(Sender: TObject);
    procedure IEVNClick(Sender: TObject);
    procedure IEVFClick(Sender: TObject);
    procedure IEVTClick(Sender: TObject);
    procedure JvXPButtonEnviaEmailCCEClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IEVLClick(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Path_Nfe     : String;
    Codigo_Estado: String;
    CNPJ         : String;
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure GravaXMLBanco(ID_NF : string; ValorStr : string; Serie : string);
    procedure LoadConsulta201(XML: string);
    procedure ConsisteCodigoReceita;
    procedure BuscaGravaHoraEmissao(VarNFE : String);
  public
    { Public declarations }
  end;

var
  TelaNFe      : TTelaNFe;
implementation

uses FileCtrl, ufrmStatus, ACBrNFeNotasFiscais, Funcoes_p, DMPrincipal_p, Principal_p,
  TelaGeracaoNF_p, DMNFE_p;
const
  SELDIRHELP = 1000;
{$R *.dfm}

procedure TTelaNFE.BuscaGravaHoraEmissao(VarNFE : String);
var VarvXMLDoc: TXMLDocument;
    i,x,z,y : Integer;
    VarNode, VarEmissao, VarNovaEmissao : String;
begin

  VarvXMLDoc := TXMLDocument.Create(self);
  try
    VarvXMLDoc.LoadFromFile(VarNFE);
    VarvXMLDoc.Active := True;
    for i := 0 to VarvXMLDoc.DocumentElement.ChildNodes.Count - 1 do
      for x := 0 to VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes.Count - 1 do
        for z := 0 to VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes.Count - 1 do
          begin
            for y := 0 to VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes[z].ChildNodes.Count - 1 do
              begin
                VarNode := VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes[z].NodeName;
                if VarNode = 'ide' then
                  begin
                    VarNode := VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes[z].ChildNodes[y].NodeName;
                    if (VarNode = 'dhEmi') or (VarNode = 'dhSaiEnt') then
                      begin
                        VarEmissao     := VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes[z].ChildNodes[y].NodeValue;
                        VarNovaEmissao := Copy(VarEmissao,1,11);
                        VarNovaEmissao := VarNovaEmissao + cdsNFENVIO_DATAHORA.AsString;
                        VarNovaEmissao := VarNovaEmissao + Copy(VarEmissao,20,6);

                        VarvXMLDoc.DocumentElement.ChildNodes[i].ChildNodes[x].ChildNodes[z].ChildNodes[y].Text := VarNovaEmissao;
                        VarvXMLDoc.SaveToFile(VarNFE);
                      end;
                  end;
              end;
          end;
  except
    Application.MessageBox('ATENÇÃO: OCCOREU UM PROBLEMA COM O XML, VERIFIQUE SE O XML NÃO ESTA CORROMPIDO.','Aviso', mb_OK);
    Exit;
  end;
end;

procedure TTelaNFE.ConsisteCodigoReceita;
var VarMotivo : String;
begin
//  qPesquisa.Active := False;
//  qPesquisa.SQL.Clear;
//  qPesquisa.SQL.Add('select nfe_rejeicao.descricao, ');
//  qPesquisa.SQL.Add('       nfe_rejeicao.acao       ');
//  qPesquisa.SQL.Add('from nfe_rejeicao              ');
//  qPesquisa.SQL.Add('where nfe_rejeicao.codigo = '''+IntToStr(ACBrNFe1.WebServices.Consulta.cStat)+''' ');
//  qPesquisa.Active := True;

//  if Trim(qPesquisa.FieldByName('DESCRICAO').AsString) <> '' then
//    begin
      //Application.MessageBox(PwideChar('Atenção: '+QPesquisa.FieldByName('DESCRICAO').AsString),'AVISO'  ,mb_OK);
      VarMotivo := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo;
      VarMotivo := ACBrNFe1.WebServices.Retorno.xMotivo;
      VarMotivo := ACBrNFe1.WebServices.Retorno.xMsg;
      VarMotivo := ACBrNFe1.WebServices.Retorno.NFeRetorno.xMotivo;
      VarMotivo := ACBrNFe1.WebServices.Retorno.NFeRetorno.xMsg;
      Application.MessageBox(PwideChar('Atenção: '+ACBrNFe1.WebServices.Retorno.xMotivo),'AVISO'  ,mb_OK);
//    end
//  else
//    Application.MessageBox(PwideChar('Atenção: Código de Erro Não Cadastrado. Cód. Rejeição:'+ IntToStr(ACBrNFe1.WebServices.Consulta.cStat)),'AVISO'  ,mb_OK);

  MemoResp.Lines.Text   := String(UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS));
  memoRespWS.Lines.Text := String(UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS));

//  case (ACBrNFe1.WebServices.Consulta.cStat)  of
//    204 : Application.MessageBox('      ATENÇÃO: DUPLICIDADE DE NF-E.','AVISO'  ,mb_OK);
//    217 : Application.MessageBox('      ATENÇÃO: "NF-E NÃO CONSTA NA BASE DE DADOS DO SEFAZ ".','AVISO'  ,mb_OK);
//    302 : Application.MessageBox('      ATENÇÃO: NOTA FISCAL DENEGADA.','AVISO'  ,mb_OK);
//    328 : Application.MessageBox('      ATENÇÃO: CFOP INVÁLIDA. DE DEVOLUÇÃO DE MERCADORIA PARA NF-e QUE NÃO TEM FINALIDADE DE DEVOLUÇÃO DE  MERCADORIA.','AVISO'  ,mb_OK);
//    388 : Application.MessageBox('      ATENÇÃO: Código de Situação Tributária do IPI incompatível com o Código de Enquadramento Legal do IP.','AVISO'  ,mb_OK);
//    656 : Application.MessageBox('      ATENÇÃO: "CONSUMO INDEVIDO".     '+#13+
//                                 'NUMERO DE CONSULTAS ACIMA DO PERMITIDO.'+#13+
//                                 'ESPERE 30 MIN. PARA CONSULTAR NOVAMENTE.','AVISO'  ,mb_OK);
//
//    690 : Application.MessageBox('      ATENÇÃO: "CANCELAMENTO NÃO PERMITIDO PARA ESTA NOTA".     '+#13+
//                                 'ESTA NFE TEM UM CT-E/MDF-E (CONHECIMENTO DE TRANSPORTE) VINCULADO A ELA, EMITIDO PELA TRANSPORTADORA','AVISO'  ,mb_OK);
//
//
//  else
//    begin
//      MemoResp.Lines.Text   := String(UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS));
//      memoRespWS.Lines.Text := String(UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS));
////aquii      LoadXML(MemoResp, WBResposta);
//    end;
//  end;
end;

procedure TTelaNFe.LoadConsulta201(XML: String);
var
 DOM: IXMLDocument;
 lXML: String;
 procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
   begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
   end;
function ReplaceStr( Fonte, De, Para:string ):string;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: String; TagRemover:String): String;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(XML,'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;

procedure TTelaNFe.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
 IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
 Ini := TIniFile.Create( IniFile );
 try
  Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
  Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
  Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;
  Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
  Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
  Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;
  Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
  Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
  Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked) ;
  Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
  Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
  Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
  Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;
  Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
  Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
  StreamMemo := TMemoryStream.Create;
  mmEmailMsg.Lines.SaveToStream(StreamMemo);
  StreamMemo.Seek(0,soFromBeginning);
  Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
  StreamMemo.Free;
 finally
  Ini.Free ;
 end;
end;

procedure TTelaNFe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin

 IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
 Ini := TIniFile.Create( IniFile );
 try
  {$IFDEF ACBrNFeOpenSSL}
         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
         edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
         ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
         ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
         edtNumSerie.Visible := False;
         Label25.Visible := False;
         sbtnGetCert.Visible := False;
      {$ELSE}
         edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
         ACBrNFe1.Configuracoes.Certificados.NumeroSerie := AnsiString(edtNumSerie.Text);
         edtNumSerie.Text := String(ACBrNFe1.Configuracoes.Certificados.NumeroSerie);
         Label1.Caption := 'Informe o número de série do certificado'#13+
                           'Disponível no Internet Explorer no menu'#13+
                           'Ferramentas - Opções da Internet - Conteúdo '#13+
                           'Certificados - Exibir - Detalhes - '#13+
                           'Número do certificado';
         Label2.Visible := False;
         edtCaminho.Visible := False;
         edtSenha.Visible   := False;
         sbtnCaminhoCert.Visible := False;
      {$ENDIF}

      ckSalvar.Checked:= Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      edtPathLogs.Text:= DMPrincipal.cdsEmpresaPATH_NFE.AsString;
      edtPathCCe.Text := DMPrincipal.cdsEmpresaPATH_NFE.AsString;
      ACBrNFe1.Configuracoes.Geral.Salvar               := ckSalvar.Checked;
      Acbrnfe1.Configuracoes.Arquivos.PathSalvar        := edtPathLogs.Text;
      ACBrNFe1.Configuracoes.Arquivos.PathEvento        := edtPathCCe.Text;
      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      cbxVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;
      ACBrNFe1.Configuracoes.WebServices.UF         := cbUF.Text;
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
      ACBrNFe1.Configuracoes.WebServices.Visualizar := cbxVisualizar.Checked;
      {$IFDEF ACBrNFeOpenSSL}
         edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
         edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
         edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
         edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;
         ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
         ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
         ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
         ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;
      {$ELSE}
         gbProxy.Visible := False;
      {$ENDIF}

      edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;

      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
     mmEmailMsg.Lines.LoadFromStream(StreamMemo);
     StreamMemo.Free;
 finally
     Ini.Free ;

  end;

end;

procedure TTelaNFe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure TTelaNFe.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TTelaNFe.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure TTelaNFe.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin

  if Length(edtPathLogs.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edtPathLogs.Text := Dir;
end;

procedure TTelaNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaNFe.FormCreate(Sender: TObject);
begin
  LerConfiguracao;
end;

procedure TTelaNFe.btnSalvarConfigClick(Sender: TObject);
begin
  btnSalvarConfig.Enabled := False;
  GravarConfiguracao;
  LerConfiguracao;
  btnSalvarConfig.Enabled := True;
end;

procedure TTelaNFe.Button1Click(Sender: TObject);
var  aux, nota, S, Numnfe, Serie : String;
     anomes : String;
     dia, mes, ano : Word;
begin
//  ACBrNFe1.EventoNFe.Evento.Clear;
//
//  if not(InputQuery('Consultar NF-e em modo EPEC', 'Numero da NF-e', Numnfe)) then
//    exit;
//
//  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));
//
//  IBQ2.Active:=False;
//  IBQ2.SQL.Clear;
//  IBQ2.SQL.Add('SELECT First 1 *');
//  IBQ2.SQL.Add('FROM EMPRESA');
//  IBQ2.SQL.Add('where nr_empresa='''+ComboBoxEmpresa.Text+'''');
//  IBQ2.Active:=True;
//
//  IBQ4.Active:=False;
//  IBQ4.SQL.Clear;
//  IBQ4.SQL.Add('Select First 1 COD_NFE');
//  IBQ4.SQL.Add('From NF_E');
//  IBQ4.SQL.Add('Where COD_NFE = '''+Numnfe+''' and NF_E.serie = ''1'' and (nr_empresa='''+ComboBoxEmpresa.Text+''')');
//  IBQ4.Open;
//
//  IBQ5.Active:=False;
//  IBQ5.SQL.Clear;
//  IBQ5.SQL.Add('SELECT First 1 NRNF, DTEMISNF, TPEMIS');
//  IBQ5.SQL.Add('FROM NF');
//  IBQ5.SQL.Add('WHERE NRNF = '''+Numnfe+''' and NF.serie = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ' );
//  IBQ5.Active:=True;
//
//  if Trim(IBQ4.FieldByName('COD_NFE').AsString) = Numnfe then
//    if Application.MessageBox('ATENÇÃO: ESSA NF-e JÁ FOI ENVIADA','CONFIRMAÇÃO'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrNO then
//       Abort;
//  DecodeDate((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime), ano, mes, dia);
//  anomes := copy(IntToStr(ano),3,2) + FormatFloat('00', (mes));
//
//     {$REGION 'Localizando a Nota Fiscal'}
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010-nfe.xml') then
//        nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017-nfe.xml') then
//       nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018-nfe.xml') then
//      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018-nfe.xml');
//     if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019-nfe.xml') then
//      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019-nfe.xml');
//     if nota = '' then
//       begin
//         Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
//         Panel3.SetFocus;
//         abort;
//       end;
//    {$ENDREGION}
//
//  ACBrNFe1.NotasFiscais.Clear;
//  ACBrNFe1.NotasFiscais.LoadFromFile(nota);
//  with ACBrNFe1.EventoNFe.Evento.Add do
//    begin
//      ShowMessage(copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44));
//      infEvento.cOrgao                       := 91;
//      infEvento.tpAmb                        := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
//      infEvento.CNPJ                         := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
//      infEvento.chNFe                        := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
//      infEvento.tpEvento                     := teEPECNFe;
//      infEvento.nSeqEvento                   := 2;
//      infEvento.detEvento.descEvento         := 'EPEC';
//    end;
//
//  ACBrNFe1.Consultar;
////  ACBrNFe1.WebServices.Consulta.NFeChave := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
////  ACBrNFe1.DANFE.ImprimirEVENTO;
//  ACBrNFe1.DANFE.ImprimirDANFE;
//  ShowMessage('OK');
end;

procedure TTelaNFe.Button2Click(Sender: TObject);
var
 aux, nota, S, Numnfe, Serie : String;
 anomes : String;
 dia, mes, ano : Word;
begin
  ACBrNFe1.EventoNFe.Evento.Clear;

  if not(InputQuery('Enviar NF-e em modo DPEC', 'Numero da NF-e', Numnfe)) then
    exit;

  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));

  cdsNFe.Close;
  cdsNFE.FetchParams;
  cdsNFe.Params.ParamByName('COD_NFE').AsInteger := StrToInt(Numnfe);
  cdsNFe.Open;

  cdsNF.Close;
  cdsNF.FetchParams;
  cdsNF.Params.ParamByName('NRNF').AsInteger := StrToInt(Numnfe);
  cdsNF.Open;

  if Trim(cdsNFeCOD_NFE.AsString) = Numnfe then
    if Application.MessageBox('ATENÇÃO: ESSA NF-e JÁ FOI ENVIADA','CONFIRMAÇÃO'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrNO then
       Abort;
   DecodeDate((DMPrincipal.cdsData.FieldByName('current_date').AsDateTime), ano, mes, dia);
   anomes := copy(IntToStr(ano),3,2) + FormatFloat('00', (mes));

  {$REGION 'Localizando a Nota Fiscal'}
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml');
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml');

  if nota = '' then
   begin
     Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
     Panel3.SetFocus;
     abort;
   end;
  {$ENDREGION}

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(nota);
  with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.cOrgao                       := 91;
      infEvento.tpAmb                        := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
      infEvento.CNPJ                         := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      infEvento.chNFe                        := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44);
      infEvento.dhEvento                     := Now;
      infEvento.tpEvento                     := teEPECNFe;
      infEvento.nSeqEvento                   := 1;
      infEvento.detEvento.descEvento         := 'EPEC';
      infEvento.detEvento.cOrgaoAutor        := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
      infEvento.detEvento.tpAutor            := taEmpresaEmitente;
      infEvento.detEvento.verAplic           := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.verProc;
      infEvento.detEvento.dhEmi              := Now;
      infEvento.detEvento.tpNF               := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF;
      infEvento.detEvento.IE                 := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
      infEvento.detEvento.dest.UF            := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
      infEvento.detEvento.dest.CNPJCPF       := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
      infEvento.detEvento.dest.idEstrangeiro := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.idEstrangeiro;

      if (ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE <> '')or  (ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE <> 'ISENTO') then
        infEvento.detEvento.dest.IE          := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE;

      infEvento.detEvento.vNF                := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
      infEvento.detEvento.vICMS              := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
      infEvento.detEvento.vST                := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
    end;

  ACBrNFe1.EnviarEvento(1);
  ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt + ' ' +
                   DateTimeToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento);
  ACBrNFe1.NotasFiscais.Imprimir;

  cdsNF.Edit;
  cdsNFRESULTADO_NFE.AsString    := IntToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat);
  cdsNFINDSTAT.AsString          := 'E';
  cdsNFENVIO_DATAHORA.AsDateTime := (DMPrincipal.cdsData.FieldByName('current_timestamp').AsDateTime);
  cdsNF.Post;
  cdsNF.ApplyUpdates(0);

  {$REGION 'Exibe os Dados da Consulta'}
  MemoResp.Lines.Text   := ACBrNFe1.WebServices.ConsultaCadastro.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;
  {$ENDREGION}
end;

procedure TTelaNFe.IEVLClick(Sender: TObject);
var vChave : String;
    Numnfe : String;
    Serie  : String;
    Chave  : String;
    SeuProtocolo, SuachaveAcesso, S : String;
    anomes: String;
    dia, mes, ano : Word;
begin
  S           := '';
  Numnfe      := '';
  Chave       := '';
  if not(InputQuery('Enviar NF-e', 'Numero da NF-e', Numnfe)) then
    begin
      IEVE.Enabled:= True;
      Abort;
    end;

  if StrIsInteger(Numnfe) = False then
    begin
     Application.MessageBox('Atenção: Número Inválido, Favor Verificar.','AVISO'  ,mb_OK);
     IEVE.Enabled := True;
     Abort;
    end;
  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));

 {$REGION 'Localiza a Nota Fical'}
 if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
    chave := (Trim(DMNFE.cdsNFCHAVE.AsString));
 if chave = '' then
    begin
     Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
     Panel3.SetFocus;
     Abort;
    end;
 {$ENDREGION}

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.WebServices.Consulta.NFeChave := Chave;
  ACBrNFe1.WebServices.Consulta.Executar;
  ConsisteCodigoREceita;
  LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
  MemoResp.Lines.Text  := ACBrNFe1.WebServices.Consulta.RetWS;
  memoRespWS.Lines.Text:= ACBrNFe1.WebServices.Consulta.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;

  if (ACBrNFe1.WebServices.Consulta.cStat = 100) then //aprovada no SEFAZ
    begin
      IEVI.Enabled:=True;
      IEVN.Enabled:=True;
    end;

  if (ACBrNFe1.WebServices.Consulta.cStat = 302) then //Denegada
    begin
//      IBT1.Active:=False;
//      IBT1.StartTransaction;
//      IBQ1.Active:=False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('UPDATE NF Set RESULTADO_NFE=:RESULTADO_NFE');
//      IBQ1.SQL.Add('WHERE NRNF = '''+Numnfe+''' and NF.serie = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ' );
//      IBQ1.ParamByName('RESULTADO_NFE').AsString:='302';
//      IBQ1.ExecSQL;
//      IBT1.Commit;
    end;
end;

procedure TTelaNFe.GravaXMLBanco;
begin
//  Try
//   IBT1.Active:=False;
//   IBT1.StartTransaction;
//   IBQ1.Active:=False;
//   IBQ1.SQL.Clear;
//   IBQ1.SQL.Add('Insert INTO nf_e (cod_nfe, xml, xml2, serie, NR_EMPRESA)');
//   IBQ1.SQL.Add('VALUES (:cod_nfe, :xml, :xml2, :serie, :NR_EMPRESA)');
//   IBQ1.ParamByName('cod_nfe').AsString   :=ID_NF;
//   IBQ1.ParamByName('xml').AsString       :=ValorStr;
//   IBQ1.ParamByName('xml2').AsString      :=ValorStr;
//   IBQ1.ParamByName('serie').AsString     :=Serie;
//   IBQ1.ParamByName('NR_EMPRESA').AsString:=Trim(ComboBoxEmpresa.Text);
//   IBQ1.ExecSQL;
//   IBQ1.Active:=False;
//   IBQ1.SQL.Clear;
//   IBQ1.SQL.Add('UPDATE NF Set RESULTADO_NFE=:RESULTADO_NFE');
//   IBQ1.SQL.Add('WHERE NRNF =:NRNF and NF.serie = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ' );
//   IBQ1.ParamByName('NRNF').AsString         :=ID_NF;
//   IBQ1.ParamByName('RESULTADO_NFE').AsString:=IntToStr(ACBrNFe1.WebServices.Consulta.cStat);
//   IBQ1.ExecSQL;
//   IBT1.Commit;
// Except
//   on E:Exception do
//      Begin
//       IBT1.Rollback;
//       if Application.MessageBox(PWideChar('ERRO NA GRAVAÇÃO, DESEJA TENTAR GRAVAR NOVAMENTE?'+#13+'Cód do erro: '+E.MESSAGE),'Gravação com Erro'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
//          IEVE.SetFocus;
//      End;
// End;
end;

procedure TTelaNFe.IEVZClick(Sender: TObject);
var CNPJ, Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
  if not(InputQuery('WebServices Inutilização ', 'CNPJ',    CNPJ)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza(CNPJ, Justificativa, StrToIntDef(Ano,0), StrToIntDef(Modelo,0), StrToIntDef(Serie,0), StrToIntDef(NumeroInicial,0), StrToIntDef(NumeroFinal,0));
  {$REGION 'Exibe dados da Inutilizacao'}
  MemoResp.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
  memoRespWS.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Inutilizacao.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Inutilização');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
  MemoDados.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
  MemoDados.Lines.Add('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
  MemoDados.Lines.Add('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
  MemoDados.Lines.Add('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
  MemoDados.Lines.Add('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);
  {$ENDREGION}
end;

procedure TTelaNFe.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Evento...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure TTelaNFe.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure TTelaNFe.IEVOClick(Sender: TObject);
Var UF, Documento : String;
begin
  if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
    exit;
  if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
    exit;
  Documento :=  Trim(OnlyNumber(Documento));
  ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
  if Length(Documento) > 11 then
    ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
    ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;

  ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  {$REGION 'Exibe os Dados da Consulta'}
  MemoResp.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consulta Cadastro');
  MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.ConsultaCadastro.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.ConsultaCadastro.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.ConsultaCadastro.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  MemoDados.Lines.Add('DhCons: ' +DateTimeToStr(ACBrNFe1.WebServices.ConsultaCadastro.DhCons));
  {$ENDREGION}
end;

procedure TTelaNFe.FormActivate(Sender: TObject);
begin
  if DMPrincipal.cdsParametrosCAMPO6.AsInteger = 0 then
    begin
      rgTipoAmb.ItemIndex      := 0;                                            //taProdução;
      PanelHomologacao.Visible := False;
    end
  else
    begin
      rgTipoAmb.ItemIndex      := 1;                                            //taHomologacao;
      PanelHomologacao.Visible := True;
    end;

  ACBrMail1.Host                := Trim(DMPrincipal.cdsEmpresaSMTP.AsString);
  ACBrMail1.Port                := Trim(DMPrincipal.cdsEmpresaPORTA.AsString);
  ACBrMail1.Username            := Trim(DMPrincipal.cdsEmpresaLOGIN.AsString);
  ACBrMail1.Password            := Trim(DMPrincipal.cdsEmpresaSENHA.AsString);
  ACBrMail1.From                := Trim(DMPrincipal.cdsEmpresaEMAIL2.AsString);
  ACBrMail1.SetSSL              := cbEmailSSL.Checked;                          // SSL - ConexÃ£o Segura
  ACBrMail1.SetTLS              := cbEmailSSL.Checked;                          // Auto TLS
  ACBrMail1.ReadingConfirmation := False;                                       //Pede confirmação de leitura do email
  ACBrMail1.UseThread           := False;                                       //Aguarda Envio do Email(nÃ£o usa thread)
  ACBrMail1.FromName            := Trim(DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString);

  Path_Nfe                      := Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString);
  ACBrNFe1.DANFE.PathPDF        := Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString);
  Codigo_Estado                 := Trim(DMPrincipal.cdsEmpresaCDESTADO.AsString);
  CNPJ                          := Trim(DMPrincipal.cdsEmpresaCNPJ.AsString);

// If DMIB.IBQueryDireitos.FieldByName('IEVZ').AsString = 'X' then
//    IEVZ.Visible := True;

// If DMIB.IBQueryParametros.FieldByName('QTD_EMPRESAS_NF').AsFloat=1 Then
//    Begin
//     LabelEmpresas.Visible   :=False;
//     ComboBoxEmpresa.Visible :=False;
//     MaskEditEmpresas.Visible:=False;
//    End
// Else
//    Begin
//      LabelEmpresas.Visible   :=True;
//      ComboBoxEmpresa.Visible :=True;
//      MaskEditEmpresas.Visible:=True;
//    End;

  qPesquisa.Active := False;
  qPesquisa.SQL.Clear;
  qPesquisa.SQL.Add('select first 1 nf.cdnf, nf.nrnf, nf.indstat');
  qPesquisa.SQL.Add('from nf ');
  qPesquisa.SQL.Add('where nf.indstat = ''G''  ');
  qPesquisa.SQL.Add('order by nf.cdnf desc ');
  qPesquisa.Active := True;
  JvNavPanelHeader1.Caption:='Última Nota Fiscal Gerada: '+qPesquisa.FieldByName('NRNF').AsString;


// If IBQ1.IsEmpty then
//    Begin
//     IBQ1.Close;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('SELECT max(NRNF) as MA From NF');
//     If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString)='S' Then
//        IBQ1.SQL.Add('WHERE NF.SERIE=1')
//     Else
//        IBQ1.SQL.Add('WHERE NF.SERIE=0');
//     IBQ1.SQL.Add('AND NF.NR_EMPRESA='''+Trim(ComboBoxEmpresa.Text)+''' ');
//     IBQ1.Open;
//     JvNavPanelHeader1.Caption:='Última Nota Fiscal Gerada: '+IBQ1.FieldByName('MA').AsString;
//     IBQ1.Close;
//    End;

// {$REGION 'Parametros da Impressão da Danfe'}
// if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '4' then
//    Begin
//     ACBrNFe1.DANFE.CasasDecimais._vUnCom:=4;
//     ACBrNFe1.DANFE.CasasDecimais._Mask_vUnCom:='###,###,###,##0.0000';
//    End;
// if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '5' then
//    Begin
//     ACBrNFe1.DANFE.CasasDecimais._vUnCom:=5;
//     ACBrNFe1.DANFE.CasasDecimais._Mask_vUnCom:='###,###,###,##0.00000';
//    End;
 ACBrNFe1.DANFE.TipoDANFE := tiRetrato;
 ACBrNFe1.DANFE.NumCopias := 3;
 ACBrNFe1.DANFE.Sistema   := 'MRP';

// //Tamanho campo codifo é 35 e não achei parametro
// {$ENDREGION}
end;

procedure TTelaNFe.ACBrNFe1GerarLog(const Mensagem: String);
begin
  memoLog.Lines.Add(Mensagem);
end;

procedure TTelaNFe.IEVEClick(Sender: TObject);
var
 aux   : String;
 Numnfe: String;
 Serie : String;
 nota  : String;
 SeuProtocolo, SuachaveAcesso, S : String;
 anomes: String;
 dia, mes, ano : Word;
 VarRetorno,i : Integer;
begin
  IEVE.Enabled := False;

  {$REGION 'Zerando as Variaveis'}
  S            := '';
  Numnfe       := '';
  nota         := '';
  {$ENDREGION}

  {$REGION 'Paga Número da NFE'}
  if not(InputQuery('Enviar NF-e', 'Numero da NF-e', Numnfe)) then
     begin
       IEVE.Enabled:= True;
       Abort;
     end;
  if StrIsInteger(Numnfe) = False then
     begin
      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      IEVE.Enabled := True;
      Abort;
     end;

  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));
  {$ENDREGION}

  {$REGION 'Consiste se a NF foi Enviada'}
  cdsNFe.Close;
  cdsNFe.FetchParams;
  cdsNFe.Params.ParamByName('COD_NFE').AsInteger := StrToInt(Numnfe);
  cdsNFe.Open;

  if Trim(cdsNFeCOD_NFE.AsString) = Numnfe then
    begin
      Application.MessageBox('Atenção: Esta NF-e já foi Transmitida, Envio Cancelado.','Aviso', mb_OK);
      IEVE.Enabled := True;
      Abort;
    end;
  {$ENDREGION}

  cdsNF.Close;
  cdsNF.FetchParams;
  cdsNF.Params.ParamByName('NRNF').AsInteger := StrToInt(Numnfe);
  cdsNF.Open;

  DecodeDate((DMPrincipal.cdsData.FieldByName('current_date').AsDateTime), ano, mes, dia);
  anomes := copy(IntToStr(ano),3,2) + FormatFloat('00', (mes));

  {$REGION 'Localizando a NF'}
  for i := 0 to 9 do
    begin
      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString));
      if FileExists(nota+IntToStr(i)+'-nfe.xml') then
        begin
          nota := nota + IntToStr(i)+'-nfe.xml';
          Break;
        end
      else
        nota := '';
    end;
  if nota = '' then
     begin
       Application.MessageBox('Atenção: NF-e Inexistente, Favor Verificar.','AVISO'  ,mb_OK);
       IEVE.Enabled:= True;
       Abort;
     end;
  {$ENDREGION}
  //*******************Verificar !!!!!******************************************

  if (cdsNFTPEMIS.AsInteger = 4) and (Trim(cdsNFENVIO_DATAHORA.AsString) <> '' )  then
    begin
      BuscaGravaHoraEmissao(nota);
    end;

  try
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(nota);
    ACBrNFe1.Enviar(0);
  finally
    if ACBrNFe1.Consultar then
      begin
        if (ACBrNFe1.WebServices.Consulta.cStat = 100) then //aprovada no SEFAZ
          begin
            SuachaveAcesso := ACBrNFe1.WebServices.Consulta.NFeChave;
            SeuProtocolo   := ACBrNFe1.WebServices.Consulta.Protocolo;
            IEVE.Enabled   := False;
            IEVI.Enabled   := True;
            IEVN.Enabled   := True;
          end
        else
          if Pos(IntToStr(ACBrNFe1.WebServices.Consulta.cStat),'110|205|233|234|301|302') <> 0 then
            begin
              VarRetorno  := ACBrNFe1.WebServices.Retorno.cStat;

              if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
                begin
                  cdsNF.Edit;
                  cdsNFRESULTADO_NFE.AsString    := IntToStr(VarRetorno);
                  cdsNFENVIO_DATAHORA.AsDateTime := DMPrincipal.cdsData.FieldByName('current_timestamp').AsDateTime;
                  cdsNF.Post;
                  cdsNF.ApplyUpdates(0);
                end;
            end;
        IEVE.Enabled :=  True;
      end;

    if ACBrNFe1.NotasFiscais.Items[0].Confirmada then
      begin
        aux   := Numnfe;
        Serie :='1';
        GravaXMLBanco(aux, String(ACBrNFe1.NotasFiscais.Items[0].XML), Serie);

        if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
          begin
            if (DMNFE.cdsNFTPEMIS.AsInteger = 4) and (Trim(cdsNFENVIO_DATAHORA.AsString) <> '' ) then
               begin
                 DMNFE.cdsNF.Edit;
                 DMNFE.cdsNFEPEC_CONCILIADO.AsString := 'S';
                 DMNFE.cdsNF.Post;
                 DMNFE.cdsNF.ApplyUpdates(0);
               end;
          end;
      end;

    ConsisteCodigoReceita;
    LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
    MemoResp.Lines.Text   := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFe');
    MemoDados.Lines.Add('tpAmb: '    + TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoDados.Lines.Add('verAplic: ' + ACBrNFe1.WebServices.Retorno.verAplic);
    MemoDados.Lines.Add('cStat: '    + IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoDados.Lines.Add('cUF: '      + IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoDados.Lines.Add('xMotivo: '  + ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoDados.Lines.Add('cMsg: '     + IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoDados.Lines.Add('xMsg: '     + ACBrNFe1.WebServices.Retorno.xMsg);
    MemoDados.Lines.Add('Recibo: '   + ACBrNFe1.WebServices.Retorno.Recibo);
    MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
    PageControl2.ActivePageIndex := 1;
    nota := '';
    IEVE.Enabled := True;
  end;
end;

procedure TTelaNFe.IEVGClick(Sender: TObject);
Var
 Numnfe      : String;
 nota        : String;
begin
  IEVG.Enabled := False;
  Numnfe       := '';
  nota         := '';
  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.DANFE.PathPDF := 'C:\PDF';
  if not(InputQuery('Gerar PDF NF-e', 'Numero da NF-e', Numnfe)) then
    begin
      IEVG.Enabled:=True;
      Abort;
    end;

  if StrIsInteger(Numnfe) = False then
    begin
      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      IEVG.Enabled:=True;
      Abort;
    end;

  if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
    begin
      if FileExists(Path_Nfe+Trim(DMNFE.cdsNFCHAVE.AsString)+'-nfe.xml') then
        nota := (Path_Nfe+Trim(DMNFE.cdsNFCHAVE.AsString)+'-nfe.xml');
    end;

  if nota = '' then
    begin
      Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Panel3.SetFocus;
      IEVG.Enabled:=True;
      Abort;
    end;
 ACBrNFe1.NotasFiscais.Clear;
 ACBrNFe1.NotasFiscais.LoadFromFile(nota);
 ACBrNFe1.NotasFiscais.ImprimirPDF;
 IEVG.Enabled:=True;
end;

procedure TTelaNFe.IEVCClick(Sender: TObject);
Var Chave, idLote, CNPJ, Protocolo, Justificativa : string;
 vAux        : String;
 Numnfe      : String;
 nota        : String;
 S           : String;
 Tipo_Emissao: String;
 anomes      : String;
 Data        : String;
 label  Justifica;
begin
  IEVC.Enabled := False;
  ACBrNFe1.NotasFiscais.Clear;
  S      := '';
  Numnfe := '';
  nota   := '';

  if not(InputQuery('Concelar NF-e', 'Numero da NF-e', Numnfe)) then
    begin
      IEVC.Enabled := True;
      Exit;
    end;

  if StrIsInteger(Numnfe) = False Then
    begin
      IEVC.Enabled := True;
      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Abort;
    end;

  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));

  if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
    begin
      if Trim(DMNFE.cdsNFINDSTAT.AsString) <> 'C' then
        begin
          IEVC.Enabled := True;
          Application.MessageBox('ATENÇÃO: NF-e NÃO ESTA CANCELADA NO SISTEMA.'+#13+'FAVOR PRIMEIRO EFETUAR O SEU CANCELAMENTO NO SISTEMA.','AVISO'  ,mb_OK);
          Abort;
        end;

      Tipo_Emissao := Trim(DMNFE.cdsNFTPEMIS.AsString);

      if Trim(DMNFE.cdsNFVERSAO_NFE.AsString) = '1' then
        Tipo_Emissao := '0';

      Data   := FormatDateTime('dd/mm/yyyy', cdsNFDTEMISNF.AsDateTime);
      anomes := Trim(Copy(Data,9,2) + Copy(Data,4,2));

//      if Trim(IBQ5.FieldByName('CLIFOR').AsString) = 'C' Then
//        begin
//          IBQ3.Active := False;
//          IBQ3.SQL.Clear;
//          IBQ3.SQL.Add('SELECT First 1 NF.NRNF, CLIENTES.EMAIL_NFE, CLIENTES.EMAIL_NFE2, CLIENTES.EMAIL_NFE3, NF.INDSTAT, NF.CHAVE, NF.PROTOCOLO_NFE, NF.CODIGO_PARA_CHAVE_NFE');
//          IBQ3.SQL.Add('FROM NF');
//          IBQ3.SQL.Add('LEFT OUTER JOIN Clientes ON  (NF.CDCLIENTE = Clientes.CDCLIENTE)');
//          IBQ3.SQL.Add('WHERE NF.NRNF = '''+Numnfe+''' AND NF.SERIE = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ');
//          IBQ3.Active := True;
//        end;
//      if Trim(IBQ5.FieldByName('CLIFOR').AsString) = 'F' Then
//        begin
//          IBQ3.Active:=False;
//          IBQ3.SQL.Clear;
//          IBQ3.SQL.Add('SELECT First 1 NF.NRNF, FORNECED.EMAIL_NFE, FORNECED.EMAIL_NFE2, FORNECED.EMAIL_NFE3, NF.INDSTAT, NF.CHAVE, NF.PROTOCOLO_NFE, NF.CODIGO_PARA_CHAVE_NFE');
//          IBQ3.SQL.Add('FROM NF');
//          IBQ3.SQL.Add('LEFT OUTER JOIN FORNECED ON  (NF.CDCLIENTE = FORNECED.CDFORNECE)');
//          IBQ3.SQL.Add('WHERE NF.NRNF = '''+Numnfe+''' AND NF.SERIE = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ');
//          IBQ3.Active:=True;
//        end;
    end;
  {$REGION 'Localizando a NFE'}
  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml') then
    nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml')
  else
    if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml') then
      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml')
    else
      if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml') then
        nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml')
      else
        if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml') then
          nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml')
        else
          if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml') then
            nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml')
          else
            if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml') then
              nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml')
            else
              if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml') then
                nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml')
              else
                if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml') then
                  nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml')
                else
                  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml') then
                    nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml')
                  else
                    if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml') then
                      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml');

  if nota = '' then
    begin
      IEVC.Enabled:=True;
      Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Panel3.SetFocus;
      Abort;
    end;
  {$ENDREGION}

  Chave         := Trim(DMNFE.cdsNFCHAVE.AsString);
  idLote        := '1';
  CNPJ          := copy(Chave,7,14);
  Protocolo     := Trim(DMNFE.cdsNFPROTOCOLO_NFE.AsString);
  Justificativa := '';

  {$REGION 'Justificativa Cancelamento'}
  Justifica :
  if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;

  if Trim(Justificativa) = '' then
    begin
      Application.MessageBox('ATENÇÃO: DIGITE A JUSTIFICATIVA PARA O CANCELAMENTO DESTA NFE.','AVISO'  ,mb_OK);
      goto Justifica;
    end;
  {$ENDREGION}

  DMNFE.cdsNF.Edit;
  DMNFE.cdsNFNREVENTO.AsInteger := DMNFE.cdsNFNREVENTO.AsInteger + 1;
  DMNFE.cdsNF.Post;
  DMNFE.cdsNF.ApplyUpdates(0);

  ACBrNFe1.EventoNFe.Evento.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(nota);
  with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      if DMPrincipal.cdsParametrosCAMPO6.AsInteger = 0 then
        begin
          InfEvento.tpAmb           := taProducao;                              //taProdução;
          PanelHomologacao.Visible := False;
        end
      else
        begin
          InfEvento.tpAmb           := taHomologacao;                           //taHomologacao;
          PanelHomologacao.Visible := True;
        end;
//      InfEvento.tpAmb           := taProducao; //Tipo de Ambiente
//      InfEvento.tpAmb           := taHomologacao; //*****Ambiente de Homologação.********

      infEvento.dhEvento        := now;
      infEvento.tpEvento        := teCancelamento;
      infEvento.detEvento.xJust := Justificativa;
    end;
  ACBrNFe1.EnviarEvento(StrToIntDef(idLote,0));

  MemoResp.Lines.Text   := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;
end;

procedure TTelaNFe.IEVSClick(Sender: TObject);
begin
  IEVS.Enabled := False;
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoResp.Lines.Text   := ACBrNFe1.WebServices.StatusServico.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);
  PageControl2.ActivePageIndex := 1;
  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Status Serviço');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
  MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
  MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
  MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
  IEVS.Enabled := True;
end;

procedure TTelaNFe.IEVUClick(Sender: TObject);
var
 Numnfe      : String;
 nota        : String;
 S           : String;
 anomes      : String;
 Tipo_Emissao: String;
 Data        : String;
 email       : String;
begin
  IEVU.Enabled := False;
  S            := '';
  Numnfe       := '';
  nota         := '';
  ACBrNFe1.NotasFiscais.Clear;

  if not(InputQuery('Enviar Email', 'Numero da NF-e', Numnfe)) then
    begin
      IEVU.Enabled := True;
      Exit;
    end;

  if StrIsInteger(Numnfe) = False Then
    begin
      IEVU.Enabled:=True;
      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Abort;
    end;

  S := FormatFloat('000000000', StrToIntDef(Numnfe,0));

  cdsNF.Close;
  cdsNF.FetchParams;
  cdsNF.Params.ParamByName('NRNF').AsInteger := StrToInt(Numnfe);
  cdsNF.Open;

//  if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
//    begin
      Data         := FormatDateTime('dd/mm/yyyy',cdsNFDTEMISNF.AsDateTime);
      anomes       := Trim(Copy(Data,9,2) + Copy(Data,4,2));
      Tipo_Emissao := Trim(cdsNFTPEMIS.AsString);

      if Trim(cdsNFVERSAO_NFE.AsString) = '1' then
        Tipo_Emissao := '0';
//    end;

  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml') then
    nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'0-nfe.xml')
  else
    if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml') then
     nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'1-nfe.xml')
    else
      if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml') then
        nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'2-nfe.xml')
      else
        if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml') then
          nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'3-nfe.xml')
        else
          if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml') then
            nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'4-nfe.xml')
          else
            if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml') then
              nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'5-nfe.xml')
            else
              if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml') then
                nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'6-nfe.xml')
              else
                if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml') then
                  nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'7-nfe.xml')
                else
                  if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml') then
                    nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'8-nfe.xml')
                  else
                    if FileExists(Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml') then
                      nota := (Path_Nfe+Codigo_Estado+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Tipo_Emissao+Trim(cdsNFCODIGO_PARA_CHAVE_NFE.AsString)+'9-nfe.xml');

  if nota = '' then
    begin
      IEVU.Enabled := True;
      Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Panel3.SetFocus;
      Abort;
    end;

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(nota);

  if not(InputQuery('Enviar Email', 'Email a ser enviado:', email)) then
    begin
      IEVU.Enabled:=True;
      Exit;
    end;

  if tipocone.Text = 'Internet Empresa' then
    ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( email,'Nota Fiscal Eletronica '+Trim(DMPrincipal.cdsEmpresaAPELIDO.AsString)+' N: '+ Numnfe,mmEmailMsg.Lines,True, nil,nil);

  IEVU.Enabled := True;
end;

procedure TTelaNFe.IEVDClick(Sender: TObject);
var vAux : String;
begin
{ IEVD.Enabled:=False;
 if not(InputQuery('WebServices DPEC', 'Informe o Numero do Registro do DPEC ou a Chave da NFe', vAux)) then
    exit;
 if Length(Trim(vAux)) < 44 then
     ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC := vAux
 else
     ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := vAux;

 ACBrNFe1.WebServices.ConsultaDPEC.Executar;
 MemoResp.Lines.Text := String(UTF8Encode(ACBrNFe1.WebServices.ConsultaDPEC.RetWS));
 LoadXML(MemoResp, WBResposta);
 IEVD.Enabled:=False;
}
end;

procedure TTelaNFe.IEVIClick(Sender: TObject);
var Numnfe, nota: String;
begin
  Numnfe := '';
  Nota   := '';

  if not(InputQuery('Imprimir NF-e', 'Numero da NF-e', Numnfe)) then
     exit;

  if StrIsInteger(Numnfe) = False Then
    begin
      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
      Abort;
    end;

  {$REGION 'Localiza a Nota Fical'}
  if DMNFE.cdsNF.Locate('NRNF',Numnfe,[]) then
    begin
      if FileExists(Path_Nfe+Trim(DMNFE.cdsNFCHAVE.AsString)+'-nfe.xml') then
        nota := (Path_Nfe+Trim(DMNFE.cdsNFCHAVE.AsString)+'-nfe.xml');

      if nota = '' then
        begin
          Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
          Panel3.SetFocus;
          Abort;
          IEVI.Enabled := False;
        end;
    end;
 {$ENDREGION}

 ACBrNFe1.NotasFiscais.Clear;
 ACBrNFe1.NotasFiscais.LoadFromFile(nota);
 ACBrNFe1.NotasFiscais.Imprimir;
 IEVI.Enabled:=False;
end;

procedure TTelaNFe.IEVNClick(Sender: TObject);
var Numnfe: String;
    nota  : String;
    chave : String;
begin
  Numnfe := '';
  nota   := '';

  if not(InputQuery('Enviar Email', 'Numero da NF-e', Numnfe)) then
    Exit;

  if StrIsInteger(Numnfe) = False Then
    begin
      Application.MessageBox('Atenção : Número Inválido, Favor Verificar.','Aviso'  ,mb_OK);
      IEVN.SetFocus;
      Abort;
    end;

  cdsNF.Close;
  cdsNF.FetchParams;
  cdsNF.Params.ParamByName('NRNF').AsInteger := StrToInt(Numnfe);
  cdsNF.Open;

  if cdsNF.IsEmpty then
    begin
      Application.MessageBox('Atenção: NF-e Inexistente, Favor Verificar.','AVISO'  ,mb_OK);
      IEVN.SetFocus;
      Abort;
    end;

  if Trim(cdsNFINDSTAT.AsString) = 'E' then
    begin
      if Application.MessageBox('Atenção: Nota já Enviada para o Cliente.'+#13+'Deseja Enviar Novamente?','Confirmação'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrNO then
        Abort;
    end;


  {$REGION 'Localiza a Nota Fical'}
  if FileExists(Path_Nfe+Trim(cdsNFCHAVE.AsString+'-nfe.xml')) then
    begin
      nota  := (Path_Nfe+Trim(cdsNFCHAVE.AsString)+'-nfe.xml');
      Chave := (Trim(cdsNFCHAVE.AsString));
    end;

  if nota = '' then
    begin
      Application.MessageBox('Atenção: NF-e Inexistente, Favor Verificar.','AVISO'  ,mb_OK);
      Panel3.SetFocus;
      Abort;
    end;
  {$ENDREGION}

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(nota);

  ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(cdsNFEMAIL_NFE.AsString),'Nota Fiscal Eletronica '+Trim(DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString)+' N: '+ Numnfe,mmEmailMsg.Lines,True, nil,nil);

  {$REGION 'Atualia Status da Nota Para E'}
  try
    cdsNF.Edit;
    cdsNFINDSTAT.AsString := 'E';
    cdsNF.Post;
    cdsNF.ApplyUpdates(0);
    IEVN.Enabled:=False;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
  {$ENDREGION}
end;

procedure TTelaNFe.IEVFClick(Sender: TObject);
begin
  IEVF.Enabled  := False;
  TelaNavegador := TTelaNavegador.Create(Application);
  TelaNavegador.MaskEdit1.Text := 'http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx?versao=2.00&tipoConteudo=P53fawCjwb0=';
  TelaNavegador.WebBrowser1.Navigate('http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx?versao=2.00&tipoConteudo=P53fawCjwb0=');
  TelaNavegador.Show;
  IEVF.Enabled := True;
end;

procedure TTelaNFe.JvXPButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TTelaNFe.JvXPButtonEnviaEmailCCEClick(Sender: TObject);
var Numnfe: String;
    nota  : String;
    Carta : string;
    chave : String;
    S     : String;
    anomes: String;
    Data  : String;
    CC    : TStrings;
    Anexo : TStrings;
begin
//  S     :='';
//  Numnfe:='';
//  nota  :='';
//  Carta :='';
//  ACBrNFe1.NotasFiscais.Clear;
//
//  if not(InputQuery('Enviar Email', 'Numero da CC-e', Numnfe)) then
//    exit;
//
//  if StrIsInteger(Numnfe) = False Then
//    begin
//      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
//      Abort;
//    end;
//
//  IBQ5.Active:=False;
//  IBQ5.SQL.Clear;
//  IBQ5.SQL.Add('SELECT First 1 CARTA_DE_CORRECAO.CONTROLE, CARTA_DE_CORRECAO.NRNF, CARTA_DE_CORRECAO.INDSTAT');
//  IBQ5.SQL.Add('FROM CARTA_DE_CORRECAO');
//  IBQ5.SQL.Add('WHERE CARTA_DE_CORRECAO.Controle = '''+Numnfe+''' ' );
//  IBQ5.Active:=True;
//
//  S := Trim(IBQ5.FieldByName('NRNF').AsString);
// If IBQ5.IsEmpty then
//    Begin
//     Application.MessageBox('ATENÇÃO: CC-e NÃO INCLUIDA, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
//     Abort;
//    End;
// If Trim(IBQ5.FieldByName('INDSTAT').AsString) = 'E' then
//    Begin
//     if Application.MessageBox('ATENÇÃO: NOTA JA ENVIADA PARA O DESTINATARIO.'+#13+'DESEJA ENVIALA NOVAMENTE?','CONFIRMAÇÃO'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrNO then
//        Abort;
//    end;
// IBQ5.Active:=False;
// IBQ5.SQL.Clear;
// IBQ5.SQL.Add('SELECT First 1 NF.NRNF, NF.DTEMISNF, NF.CLIFOR, NF.TPEMIS, Natuope.NOTA_DE_REMESSA_COM_RETORNO');
// IBQ5.SQL.Add('FROM NF');
// IBQ5.SQL.Add('LEFT OUTER JOIN Natuope  ON (Nf.CDNATOPE     = Natuope.CDNATOPE)');
// IBQ5.SQL.Add('WHERE NRNF = '''+S+''' and NF.serie = ''1'' and nr_empresa='''+ComboBoxEmpresa.Text+''' ' );
// IBQ5.Active:=True;
// If IBQ5.IsEmpty then
//    Begin
//     Application.MessageBox('ATENÇÃO: NF-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
//     Abort;
//    End;
// S    := FormatFloat('000000000', StrToIntDef(IBQ5.FieldByName('NRNF').AsString,0));
// Data := FormatDateTime('dd/mm/yyyy', IBQ5.FieldByName('DTEMISNF').AsDateTime);
// Anomes := Trim(Copy(Data,9,2) + Copy(Data,4,2));
// If Trim(IBQ5.FieldByName('CLIFOR').AsString) = 'C' Then
//    Begin
//     IBQ3.Active:=False;
//     IBQ3.SQL.Clear;
//     IBQ3.SQL.Add('SELECT First 1 NF.NRNF, CLIENTES.EMAIL_NFE, CLIENTES.EMAIL_NFE2, CLIENTES.EMAIL_NFE3, CLIENTES.EMAIL_NFE4, CLIENTES.EMAIL_NFE5, CLIENTES.EMAIL_NFE6, CLIENTES.EMAIL_NFE7, NF.INDSTAT');
//     IBQ3.SQL.Add('FROM NF');
//     IBQ3.SQL.Add('LEFT OUTER JOIN Clientes ON  (NF.CDCLIENTE = Clientes.CDCLIENTE)');
//     IBQ3.SQL.Add('WHERE NF.NRNF = '''+IBQ5.FieldByName('NRNF').AsString+''' AND NF.SERIE = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ');
//     IBQ3.Active:=True;
//    End;
// If Trim(IBQ5.FieldByName('CLIFOR').AsString) = 'F' Then
//    Begin
//     IBQ3.Active:=False;
//     IBQ3.SQL.Clear;
//     IBQ3.SQL.Add('SELECT First 1 NF.NRNF, FORNECED.EMAIL_NFE, FORNECED.EMAIL_NFE2, FORNECED.EMAIL_NFE3, FORNECED.EMAIL_NFE4, FORNECED.EMAIL_NFE5, FORNECED.EMAIL_NFE6, FORNECED.EMAIL_NFE7, NF.INDSTAT');
//     IBQ3.SQL.Add('FROM NF');
//     IBQ3.SQL.Add('LEFT OUTER JOIN FORNECED ON  (NF.CDCLIENTE = FORNECED.CDFORNECE)');
//     IBQ3.SQL.Add('WHERE NF.NRNF = '''+IBQ5.FieldByName('NRNF').AsString+''' AND NF.SERIE = ''1'' and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ');
//     IBQ3.Active:=True;
//    End;
//
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000010');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000011');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000012');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000013');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000014');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000015');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000016');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000017');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000018');
//    End;
// if FileExists(Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019-ProcEventoNFe.xml') then
//    Begin
//     nota := (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019-NFe.xml');
//     Carta:= (Path_Nfe+Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019-ProcEventoNFe.xml');
//     Chave:= (Trim(IBQ2.FieldByName('CODIGO_ESTADO').AsString)+anomes+Trim(DMPrincipal.cdsEmpresaCNPJ.AsString)+'55001'+S+Trim(cdsNFTPEMIS.AsString)+'000000019');
//    End;
// if nota = '' then
//    begin
//     Application.MessageBox('ATENÇÃO: CC-e INEXISTENTE, FAVOR VERIFICAR.','AVISO'  ,mb_OK);
//     Panel3.SetFocus;
//     abort;
//    end;
// ACBrNFe1.NotasFiscais.Clear;
// ACBrNFe1.NotasFiscais.LoadFromFile(nota);
// CC   := TstringList.Create;
// Anexo:= TstringList.Create;
// Anexo.Add(Carta);
//{ If Trim(tipocone.Text) = 'Internet Empresa' then
//    ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString)
//                                             , Trim(IBQ2.FieldByName('PORTA').AsString)
//                                             , Trim(IBQ2.FieldByName('LOGIN').AsString)
//                                             , Trim(IBQ2.FieldByName('SENHA').AsString)
//                                             , Trim(IBQ2.FieldByName('EMAIL').AsString)
//                                             , Trim(IBQ3.FieldByName('EMAIL_NFE').AsString)
//                                             , 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString)
//                                             , mmEmailMsg.Lines
//                                             , cbEmailSSL.Checked // SSL - Conexão Segura
//                                             , True //Enviar PDF junto
//                                             , CC //Lista com emails que serão enviado cópias - TStrings
//                                             , Anexo // Lista de anexos - TStrings
//                                             , False  //Pede confirmação de leitura do email
//                                             , False  //Aguarda Envio do Email(não usa thread)
//                                             , Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString)
//                                             , cbEmailSSL.Checked ); // Auto TLS
//
// If Trim(IBQ3.FieldByName('EMAIL_NFE2').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE2').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ3.FieldByName('EMAIL_NFE3').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE3').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ3.FieldByName('EMAIL_NFE4').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE4').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ3.FieldByName('EMAIL_NFE5').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE5').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ3.FieldByName('EMAIL_NFE6').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE6').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ3.FieldByName('EMAIL_NFE7').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ3.FieldByName('EMAIL_NFE7').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ2.FieldByName('EMAIL_NFE1').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ2.FieldByName('EMAIL_NFE1').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ2.FieldByName('EMAIL_NFE2').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ2.FieldByName('EMAIL_NFE2').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ2.FieldByName('EMAIL_NFE3').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ2.FieldByName('EMAIL_NFE3').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// If Trim(IBQ2.FieldByName('EMAIL_NFE4').Asstring)<>'' Then
//    Begin
//     if Trim(tipocone.Text) = 'Internet Empresa' then
//        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Trim(IBQ2.FieldByName('SMTP').AsString), Trim(IBQ2.FieldByName('PORTA').AsString), Trim(IBQ2.FieldByName('LOGIN').AsString), Trim(IBQ2.FieldByName('SENHA').AsString), Trim(IBQ2.FieldByName('EMAIL').AsString), Trim(IBQ2.FieldByName('EMAIL_NFE4').AsString), 'Carta de Correção Eletronica Referente a Nota N: '+ Numnfe+' '+Trim(IBQ2.FieldByName('EMPRESA2').AsString), mmEmailMsg.Lines, cbEmailSSL.Checked, True, CC, Anexo, False, False, Trim(IBQ2.FieldByName('RAZAO_SOCIAL').AsString), cbEmailSSL.Checked );
//    End;
// }CC.Free;
// Anexo.Free;
// Try
//  IBT4.Active:=False;
//  IBT4.StartTransaction;
//  IBQ4.Active:=False;
//  IBQ4.SQL.Clear;
//  IBQ4.SQL.Add('UPDATE NF SET INDSTAT=:INDSTAT, CHAVE=:CHAVE');
//  IBQ4.SQL.Add('Where NRNF = '''+Numnfe+''' and serie = 1 and NF.nr_empresa='''+ComboBoxEmpresa.Text+''' ');
//  IBQ4.ParamByName('INDSTAT').AsString:='E';
//  IBQ4.ParamByName('CHAVE').AsString  :=chave;
//  IBQ4.ExecSQL;
//  IBT4.Commit;
//  IEVN.Enabled:=False;
// Except
//  on E:Exception do
//     Begin
//      IBT4.Rollback;
//      If Application.MessageBox(PWideChar('ERRO NA GRAVAÇÃO, DESEJA TENTAR GRAVAR NOVAMENTE?'+#13+'Cód do erro: '+E.MESSAGE),'Gravação com Erro'  ,mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
//         IEVN.Enabled:=False;
//     End;
// end;
end;

procedure TTelaNFe.IEVTClick(Sender: TObject);
var Chave, idLote, codOrgao, CNPJ, nSeqEvento, Correcao, vclifor : string;
begin
//  IEVT.Enabled := False;
//
//  TelaCartaDeCorrecao := TTelaCartaDeCorrecao.Create(Application);
//  TelaCartaDeCorrecao.BitBtnENVIAR.Visible := True;
//
//  if TelaCartaDeCorrecao.ShowModal = mrOk then
//    begin
//      Chave      := Trim(OnlyNumber(TelaCartaDeCorrecao.MaskEditChNFE.Text));
//      idLote     := TelaCartaDeCorrecao.MaskEditCONTROLE.Text;
//      codOrgao   := copy(Chave,1,2); //se nao der, tentar usar 90
//      CNPJ       := copy(Chave,7,14);
//      nSeqEvento := TelaCartaDeCorrecao.MaskEditNSEQEVENTO.Text;
//      Correcao   := TelaCartaDeCorrecao.MaskEditRetificacao.Text; //'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
//
//      ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
//      ACBrNFe1.CartaCorrecao.CCe.idLote := StrToIntDef(idLote,0) ;
//
//      with ACBrNFe1.CartaCorrecao.CCe.Evento.Add do
//        begin
//          InfEvento.tpAmb                := taProducao;//*****Ambiente de Producao.********
////          InfEvento.tpAmb                := taHomologacao;//*****Ambiente de Homologação.********
//          infEvento.chNFe                := Chave;
//          infEvento.cOrgao               := StrToIntDef(codOrgao,0);//
//          infEvento.CNPJ                 := CNPJ;
//          infEvento.dhEvento             := now;
//          infEvento.tpEvento             := 110110;
//          infEvento.nSeqEvento           := StrToIntDef(nSeqEvento,0);
//          infEvento.versaoEvento         := '1.00';    //
//          infEvento.detEvento.descEvento := 'Carta de Correção';//
//          infEvento.detEvento.xCorrecao  := Correcao;
//          //infEvento.detEvento.xCondUso   := ''; //Texto fixo conforme NT 2011.003 -  http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=tsiloeZ6vBw=
//        end;
//      ACBrNFe1.EnviarCartaCorrecao(StrToIntDef(idLote,0));
//
//      with ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento do //TEM OUTRO DESSE BLOCO DUPLICADO NO REPROCESSAR
//        begin
//          if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then
//            begin
//              TelaCartaDeCorrecao.IBT1.Active:=False;
//              TelaCartaDeCorrecao.IBT1.StartTransaction;
//
//              TelaCartaDeCorrecao.IBQ1.Active := False;
//              TelaCartaDeCorrecao.IBQ1.SQL.Clear;
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('UPDATE CARTA_DE_CORRECAO SET INDSTAT = :INDSTAT, DTENVIO = :DTENVIO, ENVIADO_POR = :ENVIADO_POR, CSTAT = :CSTAT, NPROT = :NPROT ');
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('Where CONTROLE = :CONTROLE ');
//              TelaCartaDeCorrecao.IBQ1.ParamByName('INDSTAT').AsString     := 'G';
//              TelaCartaDeCorrecao.IBQ1.ParamByName('CONTROLE').AsFloat     := StrToFloatDef(idLote,0);
//              TelaCartaDeCorrecao.IBQ1.ParamByName('DTENVIO').AsDateTime   := DMIB.IBQueryDT.FieldByName('current_date').AsDateTime;
//              TelaCartaDeCorrecao.IBQ1.ParamByName('ENVIADO_POR').AsString := TrazNomeUsuario;
//              TelaCartaDeCorrecao.IBQ1.ParamByName('CSTAT').AsFloat        := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
//              TelaCartaDeCorrecao.IBQ1.ParamByName('NPROT').AsString       := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
//              TelaCartaDeCorrecao.IBQ1.ExecSQL;
//
//              TelaCartaDeCorrecao.IBQ1.Active := False;
//              TelaCartaDeCorrecao.IBQ1.SQL.Clear;
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('UPDATE NF Set NREVENTO = NREVENTO + 1 ');
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('WHERE NRNF        = '''+TelaCartaDeCorrecao.MaskeditNRNF.Text+''' ');
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('and NF.serie      = ''1'' ');
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('and NF.nr_empresa = '''+ComboBoxEmpresa.Text+''' ' );
//              TelaCartaDeCorrecao.IBQ1.ExecSQL;
//
//              TelaCartaDeCorrecao.IBT1.Commit;
//
//              TelaCartaDeCorrecao.IBQ1.Close;
//              TelaCartaDeCorrecao.IBQ1.SQL.Clear;
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('Select First 1 CLIFOR from CARTA_DE_CORRECAO ');
//              TelaCartaDeCorrecao.IBQ1.SQL.Add('Where CONTROLE = :CONTROLE ');
//              TelaCartaDeCorrecao.IBQ1.ParamByName('CONTROLE').AsFloat:=StrToFloatDef(idLote,0);
//              TelaCartaDeCorrecao.IBQ1.Open;
//
//              VClifor := TelaCartaDeCorrecao.IBQ1.FieldByName('CLIFOR').AsString;
//
//              //criação do relatório
//              RelatorioCartaCorrecao:=TRelatorioCartaCorrecao.Create(Application);
//              RelatorioCartaCorrecao.BitBtn1.Click;
//            end;
//        end;
//      MemoResp.Lines.Text   := String(UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS));
//      memoRespWS.Lines.Text := String(UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS));
////aquiii      LoadXML(MemoResp, WBResposta);
//    end;
// FreeAndNil(TelaCartaDeCorrecao);
// IEVT.Enabled:=True;
end;

end.





