unit RelatorioOC_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, QuickRpt, QRCtrls, ExtCtrls,
  IBDatabase, IBCustomDataSet, IBQuery, JPEG, StdCtrls, Buttons, grimgctrl,
  FMTBcd, DBClient, Provider, SqlExpr;
type
  TRelatorioOC = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabelNUMERO: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelLinha2: TQRLabel;
    QRLabelLinha3: TQRLabel;
    QRLabelLinha4: TQRLabel;
    QRLabelLinha5: TQRLabel;
    QRLabelLinha6: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabelEndereco: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabelLinha7: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabelLiberadoPor: TQRLabel;
    QRLabelLinha9: TQRLabel;
    QRLabelLinha1: TQRLabel;
    QRLabelLinha8: TQRLabel;
    QRLabelLinha10: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabelCondicaoPagto: TQRLabel;
    QRImage1: TQRImage;
    qrlData1: TQRLabel;
    qrlData2: TQRLabel;
    qrlData3: TQRLabel;
    qrl1: TQRLabel;
    qrl2: TQRLabel;
    qrl3: TQRLabel;
    qrl4: TQRLabel;
    qrlData4: TQRLabel;
    qrl5: TQRLabel;
    qrlData5: TQRLabel;
    qrlData6: TQRLabel;
    qrl6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLData7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLData8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLData9: TQRLabel;
    QRL8: TQRLabel;
    QRLData11: TQRLabel;
    QRL9: TQRLabel;
    QRLData12: TQRLabel;
    QRl7: TQRLabel;
    QRLData10: TQRLabel;
    QRL10: TQRLabel;
    QRL11: TQRLabel;
    QRL12: TQRLabel;
    QRLabelCGCouCPF: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabelOBSCOMPRA: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape37: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabelCNPJ: TQRLabel;
    QRLabelIE: TQRLabel;
    QRPDFShape1: TQRPDFShape;
    QRPDFShape2: TQRPDFShape;
    QRPDFShape3: TQRPDFShape;
    QRPDFShape4: TQRPDFShape;
    QRPDFShape9: TQRPDFShape;
    QRPDFShape10: TQRPDFShape;
    QRPDFShape11: TQRPDFShape;
    QRPDFShape12: TQRPDFShape;
    QRPDFShape13: TQRPDFShape;
    QRPDFShape14: TQRPDFShape;
    QRPDFShape15: TQRPDFShape;
    QRPDFShape5: TQRPDFShape;
    QRPDFShape26: TQRPDFShape;
    QRPDFShape27: TQRPDFShape;
    QRPDFShape28: TQRPDFShape;
    QRPDFShape29: TQRPDFShape;
    QRPDFShape30: TQRPDFShape;
    QRPDFShape31: TQRPDFShape;
    QRPDFShape32: TQRPDFShape;
    QRPDFShape33: TQRPDFShape;
    QRPDFShape34: TQRPDFShape;
    QRPDFShape35: TQRPDFShape;
    QRPDFShape6: TQRPDFShape;
    QRPDFShape7: TQRPDFShape;
    QRPDFShape8: TQRPDFShape;
    QRPDFShape36: TQRPDFShape;
    QRPDFShape37: TQRPDFShape;
    QRPDFShape38: TQRPDFShape;
    QRPDFShape39: TQRPDFShape;
    QRPDFShape40: TQRPDFShape;
    QRPDFShape41: TQRPDFShape;
    QRPDFShape42: TQRPDFShape;
    QRPDFShape16: TQRPDFShape;
    QRLabel10: TQRLabel;
    QRLabelDESCRICAO: TQRLabel;
    QRLabelLinha0: TQRLabel;
    QRLabelAutorizado: TQRLabel;
    QRLabelLinha: TQRLabel;
    qOC: TSQLQuery;
    qOCCDOC: TIntegerField;
    qOCCDFORNECEDOR: TIntegerField;
    qOCDATA_ENTREGA: TDateField;
    qOCVALOR_TOTAL: TFloatField;
    qOCCADASTRADO_POR: TStringField;
    qOCCADASTRADO_EM: TDateField;
    qOCOBS: TBlobField;
    qOCTOTAL_ICMS: TFloatField;
    qOCTOTAL_IPI: TFloatField;
    qOCTOTAL_PIS: TFloatField;
    qOCTOTAL_COFINS: TFloatField;
    qOCTOTAL_ISSQN: TFloatField;
    qOCTOTAL_IRRF: TFloatField;
    qOCALTERADO_POR: TStringField;
    qOCALTERADO_EM: TSQLTimeStampField;
    qOCFRETE: TIntegerField;
    qOCDATA_RECEBIMENTO: TDateField;
    qOCSTATUS: TStringField;
    qOCNOME: TStringField;
    qOCDATA1: TDateField;
    qOCVALOR1: TFloatField;
    qOCDATA2: TDateField;
    qOCVALOR2: TFloatField;
    qOCDATA3: TDateField;
    qOCVALOR3: TFloatField;
    qOCDATA4: TDateField;
    qOCVALOR4: TFloatField;
    qOCDATA5: TDateField;
    qOCVALOR5: TFloatField;
    qOCDATA6: TDateField;
    qOCVALOR6: TFloatField;
    qOCDATA7: TDateField;
    qOCVALOR7: TFloatField;
    qOCDATA8: TDateField;
    qOCVALOR8: TFloatField;
    qOCDATA9: TDateField;
    qOCVALOR9: TFloatField;
    qOCDATA10: TDateField;
    qOCVALOR10: TFloatField;
    qOCDATA11: TDateField;
    qOCVALOR11: TFloatField;
    qOCDATA12: TDateField;
    qOCVALOR12: TFloatField;
    dspOC: TDataSetProvider;
    cdsOC: TClientDataSet;
    cdsOCCDOC: TIntegerField;
    cdsOCCDFORNECEDOR: TIntegerField;
    cdsOCDATA_ENTREGA: TDateField;
    cdsOCVALOR_TOTAL: TFloatField;
    cdsOCCADASTRADO_POR: TStringField;
    cdsOCCADASTRADO_EM: TDateField;
    cdsOCTOTAL_ICMS: TFloatField;
    cdsOCOBS: TBlobField;
    cdsOCTOTAL_IPI: TFloatField;
    cdsOCTOTAL_PIS: TFloatField;
    cdsOCTOTAL_COFINS: TFloatField;
    cdsOCTOTAL_ISSQN: TFloatField;
    cdsOCTOTAL_IRRF: TFloatField;
    cdsOCALTERADO_POR: TStringField;
    cdsOCALTERADO_EM: TSQLTimeStampField;
    cdsOCFRETE: TIntegerField;
    cdsOCDATA_RECEBIMENTO: TDateField;
    cdsOCSTATUS: TStringField;
    cdsOCNOME: TStringField;
    cdsOCDATA1: TDateField;
    cdsOCVALOR1: TFloatField;
    cdsOCDATA2: TDateField;
    cdsOCVALOR2: TFloatField;
    cdsOCDATA3: TDateField;
    cdsOCVALOR3: TFloatField;
    cdsOCDATA4: TDateField;
    cdsOCVALOR4: TFloatField;
    cdsOCDATA5: TDateField;
    cdsOCVALOR5: TFloatField;
    cdsOCDATA6: TDateField;
    cdsOCVALOR6: TFloatField;
    cdsOCDATA7: TDateField;
    cdsOCVALOR7: TFloatField;
    cdsOCDATA8: TDateField;
    cdsOCVALOR8: TFloatField;
    cdsOCDATA9: TDateField;
    cdsOCVALOR9: TFloatField;
    cdsOCDATA10: TDateField;
    cdsOCVALOR10: TFloatField;
    cdsOCDATA11: TDateField;
    cdsOCVALOR11: TFloatField;
    cdsOCDATA12: TDateField;
    cdsOCVALOR12: TFloatField;
    dsOC: TDataSource;
    qOCENDERECO: TStringField;
    qOCNUMERO: TStringField;
    qOCBAIRRO: TStringField;
    qOCCIDADE: TStringField;
    qOCCEP: TStringField;
    qOCUF: TStringField;
    qOCCPF_CNPJ: TStringField;
    qOCRG_IE: TStringField;
    cdsOCENDERECO: TStringField;
    cdsOCNUMERO: TStringField;
    cdsOCBAIRRO: TStringField;
    cdsOCCIDADE: TStringField;
    cdsOCCEP: TStringField;
    cdsOCUF: TStringField;
    cdsOCCPF_CNPJ: TStringField;
    cdsOCRG_IE: TStringField;
    qOCTIPO_PESSOA: TIntegerField;
    cdsOCTIPO_PESSOA: TIntegerField;
    QRDBText11: TQRDBText;
    qOCCONTATO: TStringField;
    qOCMAIL: TStringField;
    qOCENQUADRAMENTO: TStringField;
    qOCFONE: TStringField;
    cdsOCCONTATO: TStringField;
    cdsOCMAIL: TStringField;
    cdsOCENQUADRAMENTO: TStringField;
    cdsOCFONE: TStringField;
    qOCI: TSQLQuery;
    qOCICDOCI: TIntegerField;
    qOCICDOC: TIntegerField;
    qOCINUMERO_ITEM: TIntegerField;
    qOCICDPRODUTO: TIntegerField;
    qOCICDPLANO_CONTAS: TIntegerField;
    qOCIVALOR_UNITARIO: TFMTBCDField;
    qOCIQTD: TFloatField;
    qOCIVALOR_TOTAL: TFMTBCDField;
    qOCIUNIDADE: TStringField;
    qOCICADASTRADO_POR: TStringField;
    qOCICADASTRADO_EM: TSQLTimeStampField;
    qOCIALTERADO_POR: TStringField;
    qOCIALTERADO_EM: TSQLTimeStampField;
    qOCIVALOR_ICMS: TFMTBCDField;
    qOCIVALOR_IPI: TFMTBCDField;
    qOCIRECEBIDO: TIntegerField;
    qOCIQTD_RECEBIDA: TFloatField;
    qOCICDINTERNO: TStringField;
    qOCICDBARRAS: TStringField;
    qOCIDESCRICAO: TStringField;
    qOCIVALOR_VENDA: TFloatField;
    qOCICFOP: TStringField;
    qOCISIT_TRIBUTARIA: TStringField;
    qOCITIPO_UN_ENTRADA: TStringField;
    qOCIMARCA: TStringField;
    qOCIMODELO: TStringField;
    qOCICONTA: TStringField;
    qOCIDESCRICAO_CONTA: TStringField;
    dspOCI: TDataSetProvider;
    cdsOCI: TClientDataSet;
    cdsOCICDOCI: TIntegerField;
    cdsOCICDOC: TIntegerField;
    cdsOCINUMERO_ITEM: TIntegerField;
    cdsOCICDPRODUTO: TIntegerField;
    cdsOCICDPLANO_CONTAS: TIntegerField;
    cdsOCIVALOR_UNITARIO: TFMTBCDField;
    cdsOCIQTD: TFloatField;
    cdsOCIVALOR_TOTAL: TFMTBCDField;
    cdsOCIUNIDADE: TStringField;
    cdsOCICADASTRADO_POR: TStringField;
    cdsOCICADASTRADO_EM: TSQLTimeStampField;
    cdsOCIALTERADO_POR: TStringField;
    cdsOCIALTERADO_EM: TSQLTimeStampField;
    cdsOCIVALOR_ICMS: TFMTBCDField;
    cdsOCIVALOR_IPI: TFMTBCDField;
    cdsOCIRECEBIDO: TIntegerField;
    cdsOCIQTD_RECEBIDA: TFloatField;
    cdsOCICDINTERNO: TStringField;
    cdsOCICDBARRAS: TStringField;
    cdsOCIDESCRICAO: TStringField;
    cdsOCIVALOR_VENDA: TFloatField;
    cdsOCICFOP: TStringField;
    cdsOCISIT_TRIBUTARIA: TStringField;
    cdsOCITIPO_UN_ENTRADA: TStringField;
    cdsOCIMARCA: TStringField;
    cdsOCIMODELO: TStringField;
    cdsOCICONTA: TStringField;
    cdsOCIDESCRICAO_CONTA: TStringField;
    dsOCI: TDataSource;
    qOCDESDOBRAMENTO: TIntegerField;
    cdsOCDESDOBRAMENTO: TIntegerField;
    qTotal: TSQLQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DateField2: TDateField;
    BlobField1: TBlobField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    DateField3: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField4: TDateField;
    FloatField8: TFloatField;
    DateField5: TDateField;
    FloatField9: TFloatField;
    DateField6: TDateField;
    FloatField10: TFloatField;
    DateField7: TDateField;
    FloatField11: TFloatField;
    DateField8: TDateField;
    FloatField12: TFloatField;
    DateField9: TDateField;
    FloatField13: TFloatField;
    DateField10: TDateField;
    FloatField14: TFloatField;
    DateField11: TDateField;
    FloatField15: TFloatField;
    DateField12: TDateField;
    FloatField16: TFloatField;
    DateField13: TDateField;
    FloatField17: TFloatField;
    DateField14: TDateField;
    FloatField18: TFloatField;
    DateField15: TDateField;
    FloatField19: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField5: TIntegerField;
    qMsg: TSQLQuery;
    dspMsg: TDataSetProvider;
    cdsMsg: TClientDataSet;
    dsMsg: TDataSource;
    cdsMsgCDOC_MSG: TIntegerField;
    cdsMsgATIVO: TIntegerField;
    cdsMsgMENSAGENS: TStringField;
    cdsMsgORDEM: TIntegerField;
    cdsMsgNEGRITO: TIntegerField;
    cdsMsgITALICO: TIntegerField;
    qPesquisa: TSQLQuery;
    qOCCDCONDICAO_PAGTO: TIntegerField;
    cdsOCCDCONDICAO_PAGTO: TIntegerField;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabelTotalIPI: TQRLabel;
    QRLabelTotalICMS: TQRLabel;
    QRLabelTotalProdutos: TQRLabel;
    QRLabel13: TQRLabel;
    qOCIICMS: TFMTBCDField;
    qOCIIPI: TFMTBCDField;
    cdsOCIICMS: TFMTBCDField;
    cdsOCIIPI: TFMTBCDField;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;var PrintReport: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRDBText7Print(sender: TObject; var Value: string);
  private
    { Private declarations }
    VarAgoraConta:Boolean;
  public
    { Public declarations }
    procedure MostraCondicaoPagamento;
    procedure LimpaCondicaoPagto(VarInicio : Integer);

    procedure MontaRelatorio(VarOC : Integer);
  end;

var
  RelatorioOC: TRelatorioOC;
  FECHAPAGINA : INTEGER;
  VarNRPEDIDO : Integer;
  VarExibirFISPQouCA : Boolean = False;
  VarNumeroPaginas   : Real = 0.00;
implementation

uses DMPrincipal_p, Principal_p, Funcoes_p, TelaOrdemCompra_p;

{$R *.dfm}

procedure TRelatorioOC.MontaRelatorio(VarOC : Integer);
begin
  DMPrincipal.cdsEmpresa.Open;
  cdsOC.Close;
  cdsOC.FetchParams;
  cdsoc.Params.ParamByName('CDOC').AsInteger := VarOC;
  cdsOC.Open;

  cdsOCI.Open;
end;

procedure TRelatorioOC.LimpaCondicaoPagto(VarInicio : Integer);
var i : Integer;
begin
  for i := 12 downto VarInicio  do
    begin
      (RelatorioOC.FindComponent('qrl'+IntTostr(i)) as TQRLabel).Caption     := '';
      (RelatorioOC.FindComponent('qrlData'+IntTostr(i)) as TQRLabel).Caption := '';
    end;
end;

procedure TRelatorioOC.MostraCondicaoPagamento;
var i : Integer;
begin
  QRLabel14.Caption := ('Condição de Pagamento');

  qPesquisa.Active := False;
  qPesquisa.SQL.clear;
  qPesquisa.SQL.Add('select * ');
  qPesquisa.SQL.Add('from condicao_pagto ');
  qPesquisa.SQL.Add('where cdcondicao_pagto = '''+cdsOCCDCONDICAO_PAGTO.AsString+''' ');
  qPesquisa.Active := True;

  if Trim(QPesquisa.FieldByName('DESCRICAO').AsString) <> '' then
    QRLabelCondicaoPagto.Caption := Trim(qPesquisa.FieldByName('DESCRICAO').AsString)
  else
    QRLabelCondicaoPagto.Caption := '';

  for i := 1 to cdsOCDESDOBRAMENTO.AsInteger  do
    begin
      (RelatorioOC.FindComponent('qrl'+IntTostr(i)) as TQRLabel).Caption     := IntToStr(i)+'-';
      (RelatorioOC.FindComponent('qrlData'+IntTostr(i)) as TQRLabel).Caption := FormatDateTime('dd/mm/yy',cdsOC.FieldByName('DATA'+IntToStr(i)).AsDateTime)+' - '+
                                                                                FloatTostrF(cdsOC.FieldByName('VALOR'+IntToStr(i)).AsFloat,ffNumber,25,2);
      LimpaCondicaoPagto(i + 1);
    end;
end;


procedure TRelatorioOC.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabelDESCRICAO.Caption := Trim(cdsOCIDESCRICAO.AsString)
end;

procedure TRelatorioOC.QRGroup1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 if FechaPagina = 1 then
    begin
     FechaPagina := 0;
     QuickRep1.NewPage;
    end;
end;

procedure TRelatorioOC.QRBand3AfterPrint(Sender: TQRCustomBand;BandPrinted: Boolean);
Var
    Jpg: TJpegImage;
    b:TStream;
begin
//  if QrLabelLiberadoPor.Enabled = True then
//    begin
//      //QrlabelLiberadoPor.Caption:=Trim(IBQ1.FieldByName('LIBERADOPOR').AsString);
//        QrlabelLiberadoPor.Caption:='';
//      b := DMIB.IBQueryParametros_Usuarios.CreateBlobStream(DMIB.IBQueryParametros_Usuarios.FieldByName('ASSINATURA'),bmRead);
//      if b.Size > 0 then
//        begin
//          try
//            Jpg := TJpegImage.Create;
//            Jpg.LoadFromStream(b);
//            QrImgAssinatura.Picture.Assign(Jpg);
//          except
//          end;
//        end
//      else
//        QRimgAssinatura.Picture.Assign(nil);
//      b.Free;
//    end;
// QrLabel13.Caption            := FormatFloat('R$ #,###,###,##0.00',IBQ1.FieldByName('VALOR1').AsFloat);
// FechaPagina := 1;
end;

procedure TRelatorioOC.QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var i : Integer;
    VarOrdem : Integer;
begin
  QRLabelOBSCOMPRA.Caption     := cdsOCOBS.AsString;

  qPesquisa.Active := False;
  qPesquisa.SQL.clear;
  qPesquisa.SQL.Add('select * ');
  qPesquisa.SQL.Add('from ordem_compras_msg ');
  qPesquisa.SQL.Add('where ativo = 1 ');
  qPesquisa.SQL.Add('order by ordem ');
  qPesquisa.Active := True;

  VarOrdem := 1;

  for i := 0 to qPesquisa.RecordCount -1 do
    begin
      if Trim(qPesquisa.FieldByName('MENSAGENS').AsString) <> '' then
        begin
          (RelatorioOC.FindComponent('QRLabelLinha'+IntTostr(i)) as TQRLabel).Caption := IntTostr(VarOrdem)+' - '+qPesquisa.FieldByName('MENSAGENS').AsString;

          if (qPesquisa.FieldByName('NEGRITO').AsInteger = 1) and (qPesquisa.FieldByName('ITALICO').AsInteger = 0) then
            (RelatorioOC.FindComponent('QRLabelLinha'+IntTostr(i)) as TQRLabel).Font.Style := [fsbold]
          else
            if (qPesquisa.FieldByName('NEGRITO').AsInteger = 1) and (qPesquisa.FieldByName('ITALICO').AsInteger = 1) then
              (RelatorioOC.FindComponent('QRLabelLinha'+IntTostr(i)) as TQRLabel).Font.Style := [fsbold,fsItalic]
            else
              if (qPesquisa.FieldByName('NEGRITO').AsInteger = 0) and (qPesquisa.FieldByName('ITALICO').AsInteger = 1) then
                (RelatorioOC.FindComponent('QRLabelLinha'+IntTostr(i)) as TQRLabel).Font.Style := [fsItalic];
          inc(VarOrdem);
        end
      else
        (RelatorioOC.FindComponent('QRLabelLinha'+IntTostr(i)) as TQRLabel).Caption := '';

      qPesquisa.Next;
    end;
end;

procedure TRelatorioOC.QRDBText7Print(sender: TObject;var Value: string);
Var FoneOriginal, Montagem : String;
begin
  FoneOriginal := Trim(cdsOCFONE.AsString);
  Montagem:='';
  Montagem:=Montagem+'('+Copy(FoneOriginal,1,2)+')';//DDD
  Montagem:=Montagem+' '+Copy(FoneOriginal,3,4)+'';
  Montagem:=Montagem+'-'+Copy(FoneOriginal,7,4)+' ';
  Value := Montagem;
end;


procedure TRelatorioOC.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var    b1      : TStream;
       VarContagem:Integer;
       VarmontaMascaraCGC:String;
       VarmontaMascaraCGCFinal:String;
begin

  qrlabel2.Caption :=  'Data de Entrega: '+DateToStr(cdsOCDATA_ENTREGA.AsDateTime);

  case cdsOCTIPO_PESSOA.AsInteger of
    0 : begin
          QRLabel45.Caption   := 'CPF:';
          QRLabelCNPJ.Caption := FormataCNPJeCPF(Trim(cdsOCCPF_CNPJ.AsString));
        end;
    1 : begin
          QRLabel45.Caption   := 'CNPFJ:';
          QRLabelCNPJ.Caption := FormataCNPJeCPF(Trim(cdsOCCPF_CNPJ.AsString));
        end;
  end;

  if Trim(cdsOCRG_IE.AsString)='' then
    QRLabelIE.Caption := 'ISENTA'
  else
    QRLabelIE.Caption := FormataIE(Trim(cdsOCRG_IE.AsString),cdsOCUF.AsString);

  if QRLabelNUMERO.Caption <> cdsOCCDOC.AsString then
     VarNumeroPaginas := 0.00;


  QRLabelNUMERO.Caption := cdsOCCDOC.AsString;
  VarContagem:= 0;
  qPesquisa.Active := False;
  qPesquisa.SQL.Clear;
  qPesquisa.SQL.Add('select count(cdoc) as contagem ');
  qPesquisa.SQL.Add('from ordem_compras_itens ');
  qPesquisa.SQL.Add('where cdoc = '''+cdsOCCDOC.AsString+''' ');
  qPesquisa.Active := True;

  VarContagem := qPesquisa.FieldByName('CONTAGEM').AsInteger;

  if VarNumeroPaginas = 0.00 then
     VarNumeroPaginas := VarContagem / 11;

 {***********************************************************
       1ª Situação Pedido com menos de 13 Itens.
  *************************************************************}
  if VarContagem <= 11 then
    begin
      MostraCondicaoPagamento;
      QrLabel13.Caption            := FormatFloat('R$ #,###,###,##0.00',cdsOCVALOR_TOTAL.AsFloat);
      QRLabelTotalIPI.Caption      := FormatFloat('R$ #,###,###,##0.00',cdsOCTOTAL_IPI.AsFloat);
      QRLabelTotalICMS.Caption     := FormatFloat('R$ #,###,###,##0.00',cdsOCTOTAL_ICMS.AsFloat);
      QRLabelTotalProdutos.Caption := FormatFloat('R$ #,###,###,##0.00',cdsOCVALOR_TOTAL.AsFloat - cdsOCTOTAL_IPI.AsFloat);
      MostraCondicaoPagamento;
      //Tirando a Assinatura e a Data
      QRLabel25.Caption            := 'Comprador:';
      QRShape37.Enabled            := True;
      QRLabel27.Caption            := 'Data:';
      QRLabel26.Caption            := '_____/______/_________';
    end
  else
    begin
      if VarNumeroPaginas > 1 then
        begin
          QRLabel14.Caption            := 'Aviso';//Label Condição de Pagamento
          LimpaCondicaoPagto(0);
          QRLabelOBSCOMPRA.Caption     := '';
          QRLabelLiberadoPor.Caption   := '';
          QrLabel13.Caption            := '--';
          QRLabelTotalIPI.Caption      := '--';
          QRLabelTotalICMS.Caption     := '--';
          QRLabelTotalProdutos.Caption := '--';
          QRLabelCondicaoPagto.Caption := 'Atenção: Pedido com '+IntToStr(VarContagem)+' ítens. Continua na próxima página.';
          VarNumeroPaginas             := VarNumeroPaginas - 1;
          //Tirando a Assinatura e a Data
          QRLabel25.Caption            := '';
          QRShape37.Enabled            := False;
          QRLabel27.Caption            := '';
          QRLabel26.Caption            := '';
        end;
    end;


  QRLabelEmpresa.Caption  := DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString;
  QRLabelEndereco.Caption := DMPrincipal.cdsEmpresaENDERECO.AsString                 +', '  +
                             DMPrincipal.cdsEmpresaNUMERO.AsString                   +' - ' +
                             DMPrincipal.cdsEmpresaBAIRRO.AsString                   + #13  +
                             ConvertePalavras(DMPrincipal.cdsEmpresaCIDADE.AsString) +' - ' +
                             DMPrincipal.cdsEmpresaUF.AsString                       +' - ' +
                             'CEP.: '           + DMPrincipal.cdsEmpresaCEP.AsString                    + #13  +
                             'CNPJ: '           + FormataCNPJeCPF(DMPrincipal.cdsEmpresaCNPJ.AsString)  +'    '+
                             'Inscr. Estadual: '+ DMPrincipal.cdsEmpresaIE.AsString                     + #13  +
                                                  DMPrincipal.cdsEmpresaTELEFONE.AsString;
  // logo da empresa
  b1 := DMPrincipal.cdsEmpresa.CreateBlobStream(DMPrincipal.cdsEmpresa.FieldByName('LOGO'),bmRead);
  if b1.Size > 0 then
    begin
      try
        //QrImage1.Picture.Assign(b1);
        QrImage1.Picture.Bitmap.LoadFromStream(b1);
      except
      end;
    end
  else
    QrImage1.Picture.Assign(nil);
  b1.Free;
end;

procedure TRelatorioOC.QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
// VarExibirFISPQouCA           := False;
// qrl1.Caption                 := '';
// qrl2.Caption                 := '';
// qrl3.Caption                 := '';
// qrl4.Caption                 := '';
// qrl5.Caption                 := '';
// qrl6.Caption                 := '';
// qrlData1.Caption             := '';
// qrlData2.Caption             := '';
// qrlData3.Caption             := '';
// qrlData4.Caption             := '';
// qrlData5.Caption             := '';
// qrlData6.Caption             := '';
// QRLabelTotalIPI.Caption      := '--';
// QRLabelTotalICMS.Caption     := '--';
// QRLabelTotalProdutos.Caption := '--';
// IBQ2.Close;
// IBQ2.SQL.Clear;
// IBQ2.SQL.Add('Select EMAIL_RECEBIMENTO_NFE from EMPRESA');
// IBQ2.Open;
end;

procedure TRelatorioOC.QuickRep1AfterPreview(Sender: TObject);
begin
// VarAgoraConta         := True;
// QRLabelNUMERO.Caption := '';
end;

procedure TRelatorioOC.BitBtn1Click(Sender: TObject);
begin
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('SELECT Pedidofitem.NUMERO, Pedidofitem.ICMS, Pedidofitem.ITEMP, Pedidofitem.CONTA,');
// IBQ1.SQL.Add('Pedidofitem.ITEM, Itens.DESCRICAO, Itens.UNIDADE, Pedidofitem.QUANTIDADE, Pedidofitem.VALORU,  ');
// IBQ1.SQL.Add('Pedidofitem.VALORTOT, Plcontas.NOME, Pedidofitem.LIBERADOPOR, Pedidofitem.IPI, Pedidofitem.OE,');
// IBQ1.SQL.Add('Forneced.REACH_ROHS, Forneced.EMAIL, Pedidof.CDREQUISICAO, pedidof.gerado_por,');
// IBQ1.SQL.Add('Pedidof.NUMERO, Pedidof.DESDOBRA, Pedidof.CDFORNECED, Pedidof.VALORT, ');
// IBQ1.SQL.Add('Pedidof.DTENTREGA, Pedidof.BAIXA, Pedidof.CDCOND, Itens.exige_fispq, itens.exige_ca,');
// IBQ1.Sql.Add('Pedidof.DATA1, Pedidof.DATA2, Pedidof.DATA3, Pedidof.DATA4, Pedidof.DATA5, Pedidof.DATA6,');
// IBQ1.SQL.Add(' Pedidof.VALOR1, Pedidof.VALOR2, Pedidof.VALOR3, Pedidof.VALOR4, Pedidof.VALOR5, Pedidof.VALOR6, Pedidof.Permuta, Pedidof.IMPRESSO, ');
// IBQ1.Sql.Add('Pedidof.GERACAO, Pedidof.FRETE, Pedidof.POSICAO, Forneced.NOME as NOMEFORN, Forneced.ENDERECO||'', ''||Forneced.num_endereco||''  ''||Forneced.Complem as ENDERECO, Forneced.BAIRRO, Forneced.CIDADE, Forneced.ESTADO, Forneced.CEP, Forneced.FONE, Forneced.FAX, ');
// IBQ1.Sql.Add('Pedidof.TOTAL_VIRRF, Forneced.ENQUADRAMENTO_IMPOSTO, Pedidof.ALTERADO_POR, Pedidof.ALTERADO_EM, Pedidof.OBSCOMPRA, Pedidof.ANTECIPADO, Pedidofitem.VALORUSEMIPI, Pedidofitem.VALORTOTSEMIPI, Forneced.INSCEST, Forneced.CGC, Forneced.CPF,  ');
// IBQ1.SQL.Add('forneced.contato, forneced.email');
// IBQ1.SQL.Add('FROM Pedidofitem');
// IBQ1.SQL.Add('LEFT OUTER JOIN Itens    ON (Pedidofitem.ITEM   = Itens.CDITEM)');
// IBQ1.SQL.Add('LEFT OUTER JOIN Plcontas ON (Pedidofitem.CONTA  = Plcontas.CODIGO)');
// IBQ1.Sql.Add('LEFT OUTER JOIN Pedidof  ON (Pedidofitem.NUMERO = Pedidof.NUMERO)');
// IBQ1.Sql.Add('LEFT OUTER JOIN Forneced ON (Pedidof.CDFORNECED = Forneced.CDFORNECE)');
// IBQ1.Sql.Add('Where Pedidofitem.NUMERO Between '''+PerguntaCodigoPedidof.MaskEdit1.Text+''' and '''+PerguntaCodigoPedidof.MaskEdit2.Text+''' ');
// IBQ1.Sql.Add('and ((Pedidof.POSICAO<>''G'') or (Pedidof.ANTECIPADO=''S'')) ');
// if Trim(PerguntaCodigoPedidof.MaskeditUsuario.Text) <> '' then
//   IBQ1.Sql.Add('and upper(pedidof.gerado_por) = upper('''+Trim(PerguntaCodigoPedidof.MaskeditUsuario.Text)+''') ');
//
// IBQ1.SQL.Add('Order By Pedidofitem.NUMERO, Pedidofitem.ITEMP');
// IBQ1.Active := True;
end;

procedure TRelatorioOC.FormCreate(Sender: TObject);
begin
// VarAgoraConta := False;
end;

end.
