unit PerguntaNFe_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, StdCtrls, Buttons, Mask,
  JvExControls, JvImageSquare, ACBrNFe, IBDatabase, IBCustomDataSet, IBQuery, JvXPCore, JvXPButtons, JvNavigationPane,
  ACBrBase, ACBrDFe, pcnConversaoNFe, FMTBcd, DBClient, Provider, SqlExpr;
type
  TPerguntaNFe = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TJvXPButton;
    JvNavPanelHeader1: TJvNavPanelHeader;
    BitBtnFechar: TJvXPButton;
    ACBrNFe1: TACBrNFe;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    CheckBoxCobraFrete: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    qNF: TSQLQuery;
    qNFNRNF: TFMTBCDField;
    qNFSERIE: TSmallintField;
    qNFDATA_HORA_SAIDA_RECEITA: TStringField;
    qNFTPDOCTO: TStringField;
    qNFCDPEDIDO: TIntegerField;
    qNFCDCLIENTE: TFMTBCDField;
    qNFVLTOTMER: TFMTBCDField;
    qNFBASEIPI: TFMTBCDField;
    qNFVLTOTIPI: TFMTBCDField;
    qNFVLTOTNF: TFMTBCDField;
    qNFVLDESC: TFMTBCDField;
    qNFPCDESC: TFMTBCDField;
    qNFVLCOMIS: TFMTBCDField;
    qNFCDVENDED: TSmallintField;
    qNFBASEICMS: TFMTBCDField;
    qNFPCICMS: TFMTBCDField;
    qNFVLTOTICMS: TFMTBCDField;
    qNFCDOBSFIS: TSmallintField;
    qNFOBS_FISCAL: TStringField;
    qNFCST_IPI: TStringField;
    qNFENQUADRAMENTO_IPI: TSmallintField;
    qNFCDCONDPG: TSmallintField;
    qNFQUANTIDA: TFMTBCDField;
    qNFCDNATOPE: TSmallintField;
    qNFCDTRANSP: TSmallintField;
    qNFTIPO_TRANPORTE: TStringField;
    qNFPLACA: TStringField;
    qNFESTADO_PLACA: TStringField;
    qNFPCFRETE: TFMTBCDField;
    qNFVLTOTFRE: TFMTBCDField;
    qNFPESOLIQT: TFMTBCDField;
    qNFPESOBRUT: TFMTBCDField;
    qNFUSUARIO: TStringField;
    qNFINDSTAT: TStringField;
    qNFFATURA: TStringField;
    qNFVLDEV: TFMTBCDField;
    qNFICMSFRETE: TFMTBCDField;
    qNFCLIFOR: TStringField;
    qNFVLTOTSERVICO: TFMTBCDField;
    qNFVLTOTISS: TFMTBCDField;
    qNFDT_P_RETORNO: TDateField;
    qNFDT_RETORNO: TDateField;
    qNFFRETE_CADASTRO_POR: TStringField;
    qNFLIBERADO_FRETE_EM: TDateField;
    qNFPAGO_EM: TDateField;
    qNFEMBARQUE: TIntegerField;
    qNFSEQUENCIA: TSmallintField;
    qNFVALOR_TOTAL_PIS: TFMTBCDField;
    qNFVALOR_TOTAL_COFINS: TFMTBCDField;
    qNFREFERENCIA_NC: TStringField;
    qNFVALOR_DIFERIMENTO: TFMTBCDField;
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
    qNFENVIO_DATAHORA: TSQLTimeStampField;
    qNFNREVENTO: TIntegerField;
    qNFREFERENCIA_NF_DEVOLUCAO: TStringField;
    qNFNF_ENTRADA: TFMTBCDField;
    qNFCDMOTIVO_EMISSAO: TIntegerField;
    qNFJUSTIFICATIVA_EMISSAO: TStringField;
    qNFEPEC_CONCILIADO: TStringField;
    qNFCODIGO_PARA_CHAVE_NFE: TStringField;
    qNFVLSEGURO: TFMTBCDField;
    qNFVLOUTRAS_DESPESAS: TFMTBCDField;
    qNFFRETEC: TStringField;
    qNFCDANTT: TIntegerField;
    qNFDESCRNAT: TStringField;
    qNFTRANSPORTADOR: TStringField;
    qNFVENDEDOR: TStringField;
    qNFCLIENTE: TStringField;
    qNFIE_RG: TStringField;
    qNFENDERECO: TStringField;
    qNFBAIRRO: TStringField;
    qNFCIDADE: TStringField;
    qNFCEP: TStringField;
    qNFUF: TStringField;
    qNFCOD_IBGE: TStringField;
    qNFCOD_PAIS: TStringField;
    qNFFONE: TStringField;
    qNFTRANSP_RG_IE: TStringField;
    qNFTRANSP_ENDERECO: TStringField;
    qNFTRANSP_CIDADE: TStringField;
    qNFTRANSP_UF: TStringField;
    qNFBASEICMSUBST: TFMTBCDField;
    qNFVLTOTICMSUBST: TFMTBCDField;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    cdsNFNRNF: TFMTBCDField;
    cdsNFSERIE: TSmallintField;
    cdsNFDATA_HORA_SAIDA_RECEITA: TStringField;
    cdsNFTPDOCTO: TStringField;
    cdsNFCDPEDIDO: TIntegerField;
    cdsNFCDCLIENTE: TFMTBCDField;
    cdsNFVLTOTMER: TFMTBCDField;
    cdsNFBASEIPI: TFMTBCDField;
    cdsNFVLTOTIPI: TFMTBCDField;
    cdsNFVLTOTNF: TFMTBCDField;
    cdsNFVLDESC: TFMTBCDField;
    cdsNFPCDESC: TFMTBCDField;
    cdsNFVLCOMIS: TFMTBCDField;
    cdsNFCDVENDED: TSmallintField;
    cdsNFBASEICMS: TFMTBCDField;
    cdsNFPCICMS: TFMTBCDField;
    cdsNFVLTOTICMS: TFMTBCDField;
    cdsNFCDOBSFIS: TSmallintField;
    cdsNFOBS_FISCAL: TStringField;
    cdsNFCST_IPI: TStringField;
    cdsNFENQUADRAMENTO_IPI: TSmallintField;
    cdsNFCDCONDPG: TSmallintField;
    cdsNFQUANTIDA: TFMTBCDField;
    cdsNFCDNATOPE: TSmallintField;
    cdsNFCDTRANSP: TSmallintField;
    cdsNFTIPO_TRANPORTE: TStringField;
    cdsNFPLACA: TStringField;
    cdsNFESTADO_PLACA: TStringField;
    cdsNFPCFRETE: TFMTBCDField;
    cdsNFVLTOTFRE: TFMTBCDField;
    cdsNFPESOLIQT: TFMTBCDField;
    cdsNFPESOBRUT: TFMTBCDField;
    cdsNFUSUARIO: TStringField;
    cdsNFINDSTAT: TStringField;
    cdsNFFATURA: TStringField;
    cdsNFVLDEV: TFMTBCDField;
    cdsNFICMSFRETE: TFMTBCDField;
    cdsNFCLIFOR: TStringField;
    cdsNFVLTOTSERVICO: TFMTBCDField;
    cdsNFVLTOTISS: TFMTBCDField;
    cdsNFDT_P_RETORNO: TDateField;
    cdsNFDT_RETORNO: TDateField;
    cdsNFFRETE_CADASTRO_POR: TStringField;
    cdsNFLIBERADO_FRETE_EM: TDateField;
    cdsNFPAGO_EM: TDateField;
    cdsNFEMBARQUE: TIntegerField;
    cdsNFSEQUENCIA: TSmallintField;
    cdsNFVALOR_TOTAL_PIS: TFMTBCDField;
    cdsNFVALOR_TOTAL_COFINS: TFMTBCDField;
    cdsNFREFERENCIA_NC: TStringField;
    cdsNFVALOR_DIFERIMENTO: TFMTBCDField;
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
    cdsNFENVIO_DATAHORA: TSQLTimeStampField;
    cdsNFNREVENTO: TIntegerField;
    cdsNFREFERENCIA_NF_DEVOLUCAO: TStringField;
    cdsNFNF_ENTRADA: TFMTBCDField;
    cdsNFCDMOTIVO_EMISSAO: TIntegerField;
    cdsNFJUSTIFICATIVA_EMISSAO: TStringField;
    cdsNFEPEC_CONCILIADO: TStringField;
    cdsNFCODIGO_PARA_CHAVE_NFE: TStringField;
    cdsNFVLSEGURO: TFMTBCDField;
    cdsNFVLOUTRAS_DESPESAS: TFMTBCDField;
    cdsNFCDANTT: TIntegerField;
    cdsNFFRETEC: TStringField;
    cdsNFDESCRNAT: TStringField;
    cdsNFTRANSPORTADOR: TStringField;
    cdsNFVENDEDOR: TStringField;
    cdsNFCLIENTE: TStringField;
    cdsNFIE_RG: TStringField;
    cdsNFENDERECO: TStringField;
    cdsNFBAIRRO: TStringField;
    cdsNFCIDADE: TStringField;
    cdsNFCEP: TStringField;
    cdsNFUF: TStringField;
    cdsNFCOD_IBGE: TStringField;
    cdsNFCOD_PAIS: TStringField;
    cdsNFFONE: TStringField;
    cdsNFTRANSP_RG_IE: TStringField;
    cdsNFTRANSP_ENDERECO: TStringField;
    cdsNFTRANSP_CIDADE: TStringField;
    cdsNFTRANSP_UF: TStringField;
    cdsNFBASEICMSUBST: TFMTBCDField;
    cdsNFVLTOTICMSUBST: TFMTBCDField;
    dsNF: TDataSource;
    dsNFI: TDataSource;
    cdsNFI: TClientDataSet;
    cdsNFICDNFITEM: TIntegerField;
    cdsNFINRNF: TFMTBCDField;
    cdsNFISERIE: TSmallintField;
    cdsNFINRSEQUEN: TSmallintField;
    cdsNFICDPEDIDO: TIntegerField;
    cdsNFITIPO_BAIXA: TStringField;
    cdsNFIQUANTIDA: TFMTBCDField;
    cdsNFIVLUNIT: TFMTBCDField;
    cdsNFIVLTOTAL: TFMTBCDField;
    cdsNFIIDCLASS: TSmallintField;
    cdsNFICDTRIBUT: TSmallintField;
    cdsNFIUNIDADE: TStringField;
    cdsNFIVLTOTIPI: TFMTBCDField;
    cdsNFIPCIPI: TFMTBCDField;
    cdsNFICDBENEF: TSmallintField;
    cdsNFIREFEREN: TStringField;
    cdsNFIDESCPRO: TStringField;
    cdsNFIPEDIDCLI: TStringField;
    cdsNFIPESOTOTL: TFMTBCDField;
    cdsNFIQUANTESPE: TFMTBCDField;
    cdsNFISITUTRI: TStringField;
    cdsNFIVLDESCI: TFMTBCDField;
    cdsNFIVLTOTICM: TFMTBCDField;
    cdsNFIPCICM: TFMTBCDField;
    cdsNFISERVICO_PRODUTO: TStringField;
    cdsNFIBASEIPI: TFMTBCDField;
    cdsNFIBASE_CALCULO_ICMS: TFMTBCDField;
    cdsNFIVALOR_PIS: TFMTBCDField;
    cdsNFIPCCOFINS: TFMTBCDField;
    cdsNFIPEDIDCLIITEM: TStringField;
    cdsNFICSTPIS: TStringField;
    cdsNFICSTCOFINS: TStringField;
    cdsNFICSTIPI: TStringField;
    cdsNFIDATA_BAIXA_TOTAL: TDateField;
    cdsNFICDNATOPEITEM: TSmallintField;
    cdsNFICDPRODUTO: TIntegerField;
    cdsNFIDESCRICAO: TStringField;
    cdsNFICDINTERNO: TStringField;
    cdsNFINCM: TStringField;
    cdsNFITIPO_UN_SAIDA: TStringField;
    cdsNFIUNID_SAIDA: TSingleField;
    cdsNFICFOP: TStringField;
    cdsNFIIPI: TSingleField;
    cdsNFIICMS: TSingleField;
    cdsNFISIT_TRIBUTARIA: TStringField;
    dspNFI: TDataSetProvider;
    qNFI: TSQLQuery;
    qNFICDNFITEM: TIntegerField;
    qNFINRNF: TFMTBCDField;
    qNFISERIE: TSmallintField;
    qNFINRSEQUEN: TSmallintField;
    qNFICDPEDIDO: TIntegerField;
    qNFITIPO_BAIXA: TStringField;
    qNFIQUANTIDA: TFMTBCDField;
    qNFIVLUNIT: TFMTBCDField;
    qNFIVLTOTAL: TFMTBCDField;
    qNFIIDCLASS: TSmallintField;
    qNFICDTRIBUT: TSmallintField;
    qNFIUNIDADE: TStringField;
    qNFIVLTOTIPI: TFMTBCDField;
    qNFIPCIPI: TFMTBCDField;
    qNFICDBENEF: TSmallintField;
    qNFIREFEREN: TStringField;
    qNFIDESCPRO: TStringField;
    qNFIPEDIDCLI: TStringField;
    qNFIPESOTOTL: TFMTBCDField;
    qNFIQUANTESPE: TFMTBCDField;
    qNFISITUTRI: TStringField;
    qNFIVLDESCI: TFMTBCDField;
    qNFIVLTOTICM: TFMTBCDField;
    qNFIPCICM: TFMTBCDField;
    qNFISERVICO_PRODUTO: TStringField;
    qNFIBASEIPI: TFMTBCDField;
    qNFIBASE_CALCULO_ICMS: TFMTBCDField;
    qNFIVALOR_PIS: TFMTBCDField;
    qNFIPCCOFINS: TFMTBCDField;
    qNFIPEDIDCLIITEM: TStringField;
    qNFICSTPIS: TStringField;
    qNFICSTCOFINS: TStringField;
    qNFICSTIPI: TStringField;
    qNFIDATA_BAIXA_TOTAL: TDateField;
    qNFICDNATOPEITEM: TSmallintField;
    qNFICDPRODUTO: TIntegerField;
    qNFIDESCRICAO: TStringField;
    qNFICDINTERNO: TStringField;
    qNFINCM: TStringField;
    qNFITIPO_UN_SAIDA: TStringField;
    qNFIUNID_SAIDA: TSingleField;
    qNFICFOP: TStringField;
    qNFIIPI: TSingleField;
    qNFIICMS: TSingleField;
    qNFISIT_TRIBUTARIA: TStringField;
    qNO: TSQLQuery;
    dspNO: TDataSetProvider;
    cdsNO: TClientDataSet;
    cdsNOCDNATOPE: TSmallintField;
    cdsNODESCRNAT: TStringField;
    cdsNOGERADUP: TStringField;
    cdsNOCRIADUP: TStringField;
    cdsNOCDNATOPE2: TSmallintField;
    cdsNOALTERADO_POR: TStringField;
    cdsNOALTERADO_EM: TDateField;
    cdsNONOTA_DE_REMESSA_COM_RETORNO: TStringField;
    cdsNODESATIVADO: TStringField;
    cdsNOCFOP_DE_DEVOLUCAO: TStringField;
    dsNO: TDataSource;
    qNFTIPO_PESSOA: TIntegerField;
    cdsNFTIPO_PESSOA: TIntegerField;
    qNFNUMERO: TStringField;
    cdsNFNUMERO: TStringField;
    qNFPAIS: TStringField;
    cdsNFPAIS: TStringField;
    qNFICDORIGEM: TIntegerField;
    cdsNFICDORIGEM: TIntegerField;
    qNFIPCPIS: TFMTBCDField;
    cdsNFIPCPIS: TFMTBCDField;
    qNFIVALOR_COFINS: TFMTBCDField;
    cdsNFIVALOR_COFINS: TFMTBCDField;
    qNFESPECIE: TStringField;
    cdsNFESPECIE: TStringField;
    qCTR: TSQLQuery;
    dspCTR: TDataSetProvider;
    cdsCTR: TClientDataSet;
    dsCTR: TDataSource;
    cdsCTRCDCTAS_RECEBER: TIntegerField;
    cdsCTRCDPEDIDO: TIntegerField;
    cdsCTRDATA: TDateField;
    cdsCTRVALOR: TFMTBCDField;
    cdsCTRVENCIMENTO: TDateField;
    cdsCTRTIPO_VENDA: TStringField;
    cdsCTRDATA_RECEBIMENTO: TDateField;
    cdsCTRLIQUIDADO: TIntegerField;
    cdsCTRLIQUIDADO_POR: TStringField;
    cdsCTRLIQUIDADO_EM: TDateField;
    cdsCTRCDPLANO_CONTAS: TIntegerField;
    cdsCTRPARCELA: TIntegerField;
    cdsCTRVALOR_RECEBIDO: TFMTBCDField;
    cdsCTRVALOR_JUROS: TFMTBCDField;
    cdsCTRVALOR_ABATIMENTO: TFMTBCDField;
    cdsCTRCDPORTADOR: TIntegerField;
    cdsCTRCADASTRADO_POR: TStringField;
    cdsCTRCADASTRADO_EM: TSQLTimeStampField;
    qNFDTEMISNF: TSQLTimeStampField;
    cdsNFDTEMISNF: TSQLTimeStampField;
    qNFHORA_EMISSAO: TTimeField;
    cdsNFHORA_EMISSAO: TTimeField;
    qNFDTSAIDA: TSQLTimeStampField;
    cdsNFDTSAIDA: TSQLTimeStampField;
    cdsNFCPF_CNPJ: TStringField;
    cdsNFTRANSP_CPF_CNPJ: TStringField;
    qNFTRANSP_CPF_CNPJ: TStringField;
    qNFCPF_CNPJ: TStringField;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxEmpresaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cdsNFAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PerguntaNFe: TPerguntaNFe;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, pcnConversao, pcnNFe,  pcnNFeW;
{$R *.dfm}

procedure TPerguntaNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
    end;
end;

procedure TPerguntaNFe.MaskEdit1Exit(Sender: TObject);
begin
  if not BitBtnFechar.Focused then
    begin
      cdsNF.Close;
      cdsNF.FetchParams;
      cdsNF.Params.ParamByName('NRNF').AsInteger := StrToInt(MaskEdit1.Text);
      cdsNF.Open;

      if Trim(cdsNFNRNF.AsString) <> '' then
        begin
//          if Trim(IBQ1.FieldByName('IMPRIME_DESCRICAO_CLIENTE_NF').AsString)='S' Then
//            CheckBox1.Checked:=True
//          else
//            CheckBox1.Checked:=False;

//          if Trim(IBQ1.FieldByName('IMPRIME_NRPEDIDO_NA_NF').AsString)='S' Then
//            CheckBox2.Checked:=True
//          else
//            CheckBox2.Checked:=False;

//         If Trim(IBQ1.FieldByName('IMPRIME_CODIGO_CLIENTE_NF').AsString)='S' Then
//            CheckBox3.Checked:=True
//         Else
//            CheckBox3.Checked:=False;

//          if Trim(IBQ1.FieldByName('IMPRIME_NOSSO_CODIGO_FORNCED_NF').AsString)='S' Then
//            CheckBox4.Checked:=True
//          else
//            CheckBox4.Checked:=False;

//          MaskeditCliFor.Text := IBQ1.FieldByName('CLIFOR').AsString;
//          VarTPDOCTO          := IBQ1.FieldByName('TPDOCTO').AsString;

//          if (IBQ1.FieldByName('vltotnf').AsFloat<0.01) and (Trim(ComboBox2.Text)<>'Ajuste') Then
//            begin
//              Application.MessageBox('ATEN��O: VALOR TOTAL DA NF N�O PODE SER MENOR QUE 0,01 CENTAVO, FAVOR VERIFICAR.','Aviso',mb_OK);
//              Maskedit1.SetFocus;
//              Abort;
//            end;
          cdsNO.Close;
          cdsNO.FetchParams;
          cdsNO.Params.ParamByName('CDNATOPE').AsInteger := cdsNFCDNATOPE.AsInteger;
          cdsNO.Open;


          if Trim(cdsNOCFOP_DE_DEVOLUCAO.AsString) = 'S' then
             ComboBox2.ItemIndex := 3;

//          if Trim(cdsNOCRIADUP.AsString) = 'S' then
//            begin
//              if VarTPDOCTO = 'NF' then
//                Begin
//                 if IBQ1.FieldByName('NRPEDIDO').AsString<>'999996'  then
//                    Begin
//                     IBQ6.Active:=False;
//                     IBQ6.SQL.Clear;
//                     IBQ6.SQL.Add('Select First 1 NRDOCTO from DUPLICAT');
//                     IBQ6.SQL.Add('Where NRDOCTO ='''+IBQ1.FieldByName('NRNF').Asstring+''' And TPDOCTO=''NF'' ');
//                     IBQ6.SQL.Add('AND (SERIE = '''+IBQ1.FieldByName('SERIE').Asstring+''') And (Duplicat.NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//                     IBQ6.Active:=True;
//                     If IBQ6.IsEmpty then
//                        Begin
//                         Application.MessageBox('ATEN��O: ESTA NF TEM OBRIGATORIAMENTE DUPLICATAS, FAVOR VERIFICAR.','Aviso',mb_OK);
//                         Maskedit1.SetFocus;
//                         Abort;
//                        End;
//                    End;
//                End;

//              If (IBQ1.FieldByName('NRPEDIDO').AsString='999998') or
//                (IBQ1.FieldByName('NRPEDIDO').AsString='999999') or
//                (IBQ1.FieldByName('NRPEDIDO').AsString='999996') or
//                (IBQ1.FieldByName('NRPEDIDO').AsString='999995') or
//                (IBQ1.FieldByName('NRPEDIDO').AsString='999994') or
//                (IBQ1.FieldByName('NRPEDIDO').AsString='999993') Then
//                Begin
//                 BitBtn1.Enabled:=True;
//                 BitBtn1.SetFocus;
//                End
//             Else
//                Begin
//                 if VarTPDOCTO = 'NF' then //Complementar ou ajuste n�o precisa dessa verifica��o.
//                    Begin
//                     IBQ6.Active:=False;
//                     IBQ6.SQL.Clear;
//                     IBQ6.SQL.Add('select nf.vltotnf,  nf.nrnf, (select sum(duplicat.vldocto) from duplicat where duplicat.nrdocto= '''+Maskedit1.Text+''' and serie=1 and TPDOCTO=''NF'' and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ) as vlduplicat');
//                     IBQ6.SQL.Add('from nf');
//                     IBQ6.SQL.Add('where nf.nrnf= '''+Trim(Maskedit1.Text)+''' and (serie=1) and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//                     IBQ6.Active:=True;
//                     If IBQ6.FieldByName('vltotnf').AsFloat<> IBQ6.FieldByName('vlduplicat').AsFloat Then
//                        Begin
//                         Application.MessageBox('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES DAS DUPLICATAS, FAVOR VERIFICAR.','Aviso',mb_OK);
//                         Maskedit1.SetFocus;
//                         Abort;
//                        End;
//                     IBQ6.Active:=False;
//                     IBQ6.SQL.Clear;
//                     IBQ6.SQL.Add('select nf.vltotnf, nf.vltotmer, nf.vltotipi, nf.VLTOTFRE, nf.ICMSFRETE');
//                     IBQ6.SQL.Add('from nf');
//                     IBQ6.SQL.Add('where nf.nrnf= '''+Trim(Maskedit1.Text)+''' and (serie=1) and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//                     IBQ6.Active:=True;
//                     If CheckBoxCobraFrete.Checked=True Then
//                        Begin
//                         If StrToFloatDef(FormatFloat('###########0.#0',IBQ6.FieldByName('vltotnf').AsFloat),0)<> StrToFloatDef(FormatFloat('###########0.#0',(IBQ6.FieldByName('vltotmer').AsFloat+IBQ6.FieldByName('VLTOTIPI').AsFloat+IBQ6.FieldByName('VLTOTFRE').AsFloat)),0) Then
//                            Begin
//                             Application.MessageBox(PWideChar('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES'+#13+
//                                                              'TOTAL DA NF: '+FormatFloat('###,###,###,##0.#0',IBQ6.FieldByName('vltotnf').AsFloat)+#13+
//                                                              'TOTAL DE MERCADORIA + IPI: '+FormatFloat('###,###,###,##0.#0',IBQ6.FieldByName('vltotmer').AsFloat+IBQ6.FieldByName('VLTOTIPI').AsFloat)+#13+
//                                                              'FAVOR VERIFICAR.'),'Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End
//                     Else
//                        Begin
//                         If StrToFloatDef(FormatFloat('###########0.#0',IBQ6.FieldByName('vltotnf').AsFloat),0)<> StrToFloatDef(FormatFloat('###########0.#0',(IBQ6.FieldByName('vltotmer').AsFloat+IBQ6.FieldByName('VLTOTIPI').AsFloat)),0) Then
//                            Begin
//                             Application.MessageBox(PWideChar('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES'+#13+
//                                                              'TOTAL DA NF: '+FormatFloat('###,###,###,##0.#0',IBQ6.FieldByName('vltotnf').AsFloat)+#13+
//                                                              'TOTAL DE MERCADORIA + IPI: '+FormatFloat('###,###,###,##0.#0',IBQ6.FieldByName('vltotmer').AsFloat+IBQ6.FieldByName('VLTOTIPI').AsFloat)+#13+
//                                                              'FAVOR VERIFICAR.'),'Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End;
//                     IBQ6.Active:=False;
//                     IBQ6.SQL.Clear;
//                     IBQ6.SQL.Add('select nf.vltotnf, nf.ICMSFRETE, nf.VLTOTFRE, nf.nrnf, (select sum(NFITEM.vltotal+NFITEM.VLTOTIPI) from nfitem where nfitem.nrnf= '''+Maskedit1.Text+''' and serie=1 and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''')) as vltotitem');
//                     IBQ6.SQL.Add('from nf');
//                     IBQ6.SQL.Add('where nf.nrnf= '''+Maskedit1.Text+''' and (serie=1) and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''')');
//                     IBQ6.Active:=True;
//                     If CheckBoxCobraFrete.Checked=True Then
//                        Begin
//                         If (IBQ6.FieldByName('vltotnf').AsFloat-IBQ6.FieldByName('VLTOTFRE').AsFloat)<> IBQ6.FieldByName('vltotitem').AsFloat Then
//                            Begin
//                             Application.MessageBox('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES DOS ITENS X VALOR TOTAL DA NOTA, FAVOR VERIFICAR.','Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End
//                     Else
//                        Begin
//                         If (IBQ6.FieldByName('vltotnf').AsFloat)<> IBQ6.FieldByName('vltotitem').AsFloat Then
//                            Begin
//                             Application.MessageBox('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES DOS ITENS X VALOR TOTAL DA NOTA, FAVOR VERIFICAR.','Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End;
//                     IBQ6.Active:=False;
//                     IBQ6.SQL.Clear;
//                     IBQ6.SQL.Add('select nf.BASEICMS, nf.VLTOTFRE,  nf.nrnf, (select sum(NFITEM.BASE_CALCULO_ICMS) from nfitem where nfitem.nrnf= '''+Maskedit1.Text+''' and serie=1 and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''')) as BASEICMS_ITEM');
//                     IBQ6.SQL.Add('from nf');
//                     IBQ6.SQL.Add('where nf.nrnf= '''+Maskedit1.Text+''' and (serie=1) and (NR_EMPRESA='''+ComboBoxEmpresa.Text+''')');
//                     IBQ6.Active:=True;
//                     If CheckBoxCobraFrete.Checked=True Then
//                        Begin
//                         If (IBQ6.FieldByName('BASEICMS').AsFloat-IBQ6.FieldByName('VLTOTFRE').AsFloat)<> IBQ6.FieldByName('BASEICMS_ITEM').AsFloat Then
//                            Begin
//                             Application.MessageBox('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES DA BASE DE CALCULO DE ICMS DOS ITENS '+#13+'X VALOR TOTAL DO ICMS DA NOTA, FAVOR VERIFICAR.','Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End
//                     Else
//                        Begin
//                         If (IBQ6.FieldByName('BASEICMS').AsFloat)<> IBQ6.FieldByName('BASEICMS_ITEM').AsFloat Then
//                            Begin
//                             Application.MessageBox('ATEN��O: ESTA NF ESTA COM ERRO NOS VALORES DA BASE DE CALCULO DE ICMS DOS ITENS '+#13+'X VALOR TOTAL DO ICMS DA NOTA, FAVOR VERIFICAR.','Aviso',mb_OK);
//                             Maskedit1.SetFocus;
//                             Abort;
//                            End;
//                        End
//                    End;
//                 If VarTPDOCTO = 'NC' then
//                    ComboBox2.ItemIndex:=1;
//                 If VarTPDOCTO = 'NA' then
//                    ComboBox2.ItemIndex:=2;
//                End;
//            end;
//         BitBtn1.Enabled:=True;
//         BitBtn1.SetFocus;
//        End
//      else
//        Begin
//          VarTPDOCTO:='';
//          BitBtn1.Enabled:=False;
//          Imageok.Visible:=False;
//          Application.MessageBox('ATEN��O: NF N�O ENCONTRADO, FAVOR VERIFICAR.','Aviso',mb_OK);
//          Maskedit1.SetFocus;
//        End;
//    end;
end;
    end;
end;

procedure TPerguntaNFe.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
 begin
   CharSet:= [#8, #48..#57];
   if not CharInSet(Key,CharSet) then key := #0;
 end;

procedure TPerguntaNFe.FormActivate(Sender: TObject);
begin
//  if DMIB.IBQueryParametros.FieldByName('QTD_EMPRESAS_NF').AsFloat=1 Then
//    begin
//      LabelEmpresas.Visible    := False;
//      ComboBoxEmpresa.Visible  := False;
//      MaskEditEmpresas.Visible := False;
//    end
//  else
//    begin
//      LabelEmpresas.Visible    := True;
//      ComboBoxEmpresa.Visible  := True;
//      MaskEditEmpresas.Visible := True;
//    end;
//
//  IBQ1.Close;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('select first 1 nrnf from nf where indstat=''G''');
//  IBQ1.Open;
//
//  JvNavPanelHeader1.Caption := '�ltima Nota Fiscal Gerada: '+IBQ1.FieldByName('NRNF').AsString;
//  if Trim(IBQ1.FieldByName('NRNF').AsString)='' then
//    begin
//      IBQ1.Close;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('SELECT max(NRNF) as MA From NF');
//      if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString)='S' Then
//        IBQ1.SQL.Add('WHERE NF.SERIE = 1')
//      else
//        IBQ1.SQL.Add('WHERE NF.SERIE = 0');
//      IBQ1.SQL.Add('AND NF.NR_EMPRESA='''+Trim(ComboBoxEmpresa.Text)+''' ');
//      IBQ1.Open;
//
//      JvNavPanelHeader1.Caption:='�ltima Nota Fiscal Gerada: '+IBQ1.FieldByName('MA').AsString;
//    end;
//  IBQ1.Close;
//  VarTPDOCTO := '';
end;

procedure TPerguntaNFe.cdsNFAfterOpen(DataSet: TDataSet);
begin
  cdsNFI.Close;
  cdsNFI.FetchParams;
  cdsNFI.Params.ParamByName('NRNF').AsInteger := cdsNFNRNF.AsInteger;
  cdsNFI.Open;

  cdsCTR.Close;
  cdsCTR.FetchParams;
  cdsCTR.Params.ParamByName('CDPEDIDO').AsInteger := cdsNFCDPEDIDO.AsInteger;
  cdsCTR.Open;
end;

procedure TPerguntaNFe.ComboBoxEmpresaExit(Sender: TObject);
begin
//  if not BitBtnFechar.Focused then
//    begin
//      if StrIsInteger(ComboBoxEmpresa.Text) = False Then
//        begin
//          Application.MessageBox('ATEN��O: N�MERO INV�LIDO, FAVOR VERIFICAR.','Aviso',mb_OK);
//          ComboBoxEmpresa.SetFocus;
//          Abort;
//        end;
//    end;
end;

procedure TPerguntaNFe.BitBtn1Click(Sender: TObject);
var  NFe                : TNFe;
     NFeW               : TNFeW;
     i                  : integer;
     s, PedidoCliente   : string;
     Validade,Chave     : string;
     ReferenciadaTipoNFe: boolean;
     Opcao1             : boolean;
     VarDataHora  : Real;
begin
  BitBtn1.Enabled := False;
  PedidoCliente   := '';

  {$REGION 'Bloqueio para gera��o de uma nota que j� foi transmitida'}
  if Trim(cdsNFRESULTADO_NFE.AsString) <> '' then
    begin
      Application.MessageBox('ATEN��O: NOTA FISCAL J� TRANSMITIDA. '+#13+'N�O � PERMITIDO REGERAR O XML DESTA NOTA.','Aviso',mb_OK);
      MaskEdit1.SetFocus;
      Abort;
    end;
  {$ENDREGION}

  {$REGION '***NFe para Clinte*** Verificar mais para Frente'}
//  if VarTPDOCTO = 'NF' then
//     Begin
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('SELECT First 1 Nf.FATURA, Nf.NRNF, NF.NR_EMPRESA, Nf.DTEMISNF, Nf.NRPEDIDO,     ');
//      //11/12/2015 - Gustavo Oliveira
//      //Verificar e Gravar a Data e Hora da Gera��o do XML
//      IBQ1.SQL.Add('              (select current_date from rdb$database ) as dataServidor,         ');
//      IBQ1.SQL.Add('              (select current_timestamp from rdb$database ) as datahoraServidor,');
//      IBQ1.SQL.Add('              cast(( Nf.DTEMISNF || '' 00:01'')as timestamp) as datahora,');
//      IBQ1.SQL.Add('clientes.PESO_OBRIGATORIO_NFE,');
//      IBQ1.SQL.Add('Nf.CDCLIENTE, Nf.DTSAIDA, Nf.VLTOTMER, Nf.VLTOTIPI, Nf.VLTOTNF, Nf.VLDESC, ');
//      IBQ1.SQL.Add('Nf.PCDESC, Nf.VLCOMIS, Nf.CDVENDED, Nf.PCICMS, Nf.VLTOTICMS, Nf.ICMSFRETE, ');
//      IBQ1.SQL.Add('Nf.CDOBSFIS, Nf.CDCONDPG, NF.CST_IPI, NF.ENQUADRAMENTO_IPI,');
//      IBQ1.SQL.Add('Nf.QUANTIDA, Vendedor.NOME NOMEVEND, NF.OBS_FISCAL, Nf.TPDOCTO, NF.BASEICMS, ');
//      IBQ1.SQL.Add('NF.VALOR_TOTAL_PIS, NF.VALOR_TOTAL_COFINS, OBSFISC.IPI_SITUACAO_TRIBUTARIA, ');
//      IBQ1.SQL.Add('Nf.ESPECIE,Nf. CDNATOPE, Nf.CDTRANSP, Nf.PCFRETE, Nf.REFERENCIA_NF_DEVOLUCAO,');
//      IBQ1.SQL.Add('Nf.VLTOTFRE, Nf.PESOLIQT, Nf.PESOBRUT, Nf.USUARIO, Nf.INDSTAT, Nf.FRETEC,');
//      IBQ1.SQL.Add('Natuope.DESCRNAT, Clientes.NOME, Clientes.endereco, Clientes.num_endereco,');
//      IBQ1.SQL.Add('Clientes.Complem, Clientes.BAIRRO, Clientes.EMAIL_NFE, Clientes.CIDADE, Clientes.COD_IBGE,');
//      IBQ1.SQL.Add('CIDADEIBGE.Cod_Pais, CIDADEIBGE.Pais, CIDADEIBGE.CDESTIBGE, Clientes.CEP, Clientes.ESTADO,');
//      IBQ1.SQL.Add('Clientes.CGC, Clientes.TIPO, Clientes.IRURAL, Clientes.INSCEST, Clientes.CIC, Clientes.RG,');
//      IBQ1.SQL.Add('Clientes.FONE, Clientes.FAX, Clientes.LOCCOB, Clientes.LOCENT,');
//      IBQ1.SQL.Add('TRANSPOR.NMGUERRA, TRANSPOR.ENDERECO ENDERECOTR, TRANSPOR.CIDADE CIDADETR,');
//      IBQ1.SQL.Add('TRANSPOR.ESTADO ESTADOTR, NF.PLACA PLACATR, TRANSPOR.CPF CPFTR, TRANSPOR.CGC CGCTR,');
//      IBQ1.SQL.Add('TRANSPOR.INSCESTA INSCESTATR, TRANSPOR.ANTT, NF.ESTADO_PLACA, NF.CLIFOR,');
//      IBQ1.SQL.Add('NF.UFEMBARQ, NF.XLOCEMBARQ, Clientes.NFITEM_COM_CODIGO_CLIENTE,');
//      IBQ1.SQL.Add('Clientes.IMPRIME_CODIGO_CLIENTE_NF, Clientes.PREPONDERANTEMENTE_EXPORTADORA,');
//      IBQ1.SQL.Add('Clientes.IMPRIME_DESCRICAO_CLIENTE_NF, Clientes.NFE_LOTE_VALIDADE, Nf.CODIGO_PARA_CHAVE_NFE');
//      IBQ1.SQL.Add('FROM NF');
//      IBQ1.SQL.Add('LEFT OUTER JOIN Natuope    ON (Nf.CDNATOPE       = Natuope.CDNATOPE)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN Clientes   ON (Nf.CDCLIENTE      = Clientes.CDCLIENTE)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN TRANSPOR   ON (Nf.CDTRANSP       = TRANSPOR.CDTRANSP)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN VENDEDOR   ON (Nf.CDVENDED       = VENDEDOR.CDVENDED)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN CIDADEIBGE ON (Clientes.COD_IBGE = CIDADEIBGE.CDIBGE)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN OBSFISC    ON (Nf.CDOBSFIS       = OBSFISC.CDOBSFIS)');
//      IBQ1.SQL.Add('Where NF.NRNF = '''+PerguntaNFe.Maskedit1.Text+''' and NF.serie = ''1'' and (NF.NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//      IBQ1.Active := True;

//      If Trim(IBQ1.FieldByName('IMPRIME_CODIGO_CLIENTE_NF').Asstring)='S' Then
//        PerguntaNFe.CheckBox3.Checked:=True;
//
//      If Trim(IBQ1.FieldByName('IMPRIME_DESCRICAO_CLIENTE_NF').Asstring)='S' Then
//        PerguntaNFe.CheckBox4.Checked:=True;
//     End;

//      If ((VarTPDOCTO = 'NC') or  (VarTPDOCTO = 'NA')) then
//         Begin
//          IBQ1.Active:=False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('SELECT First 1 Nf.FATURA, Nf.NRNF, NF.NR_EMPRESA, Nf.DTEMISNF, ');
//          //11/12/2015 - Gustavo Oliveira
//          //Verificar e Gravar a Data e Hora da Gera��o do XML
//          IBQ1.SQL.Add('              (select current_date from rdb$database ) as dataServidor,         ');
//          IBQ1.SQL.Add('              (select current_timestamp from rdb$database ) as datahoraServidor,');
//          IBQ1.SQL.Add('              cast(( Nf.DTEMISNF || '' 00:01'')as timestamp) as datahora,');
//          IBQ1.SQL.Add('Nf.NRPEDIDO, clientes.PESO_OBRIGATORIO_NFE, NF.CST_IPI, NF.ENQUADRAMENTO_IPI,');
//          IBQ1.SQL.Add('Nf.CDCLIENTE, Nf.DTSAIDA, Nf.VLTOTMER, Nf.VLTOTIPI, Nf.VLTOTNF, Nf.VLDESC, Nf.PCDESC, ');
//          IBQ1.SQL.Add('Nf.VLCOMIS, Nf.CDVENDED, Nf.PCICMS, Nf.VLTOTICMS, Nf.ICMSFRETE, Nf.CDOBSFIS, Nf.CDCONDPG,');
//          IBQ1.SQL.Add('Nf.QUANTIDA, Vendedor.NOME NOMEVEND, NF.OBS_FISCAL, Nf.TPDOCTO, NF.REFERENCIA_NC,');
//          IBQ1.SQL.Add('NF.BASEICMS, NF.VALOR_TOTAL_PIS, NF.VALOR_TOTAL_COFINS, OBSFISC.IPI_SITUACAO_TRIBUTARIA,');
//          IBQ1.SQL.Add('Nf.ESPECIE, Nf.CDNATOPE, Nf.CDTRANSP, Nf.PCFRETE, Nf.REFERENCIA_NF_DEVOLUCAO, ');
//          IBQ1.SQL.Add('Nf.VLTOTFRE, Nf.PESOLIQT, Nf.PESOBRUT, Nf.USUARIO, Nf.INDSTAT, Nf.FRETEC,');
//          IBQ1.SQL.Add('Natuope.DESCRNAT, Clientes.NOME, Clientes.endereco, Clientes.num_endereco,');
//          IBQ1.SQL.Add('Clientes.Complem, Clientes.BAIRRO, Clientes.EMAIL_NFE, Clientes.CIDADE, Clientes.COD_IBGE,');
//          IBQ1.SQL.Add('CIDADEIBGE.Cod_Pais, CIDADEIBGE.Pais, CIDADEIBGE.CDESTIBGE, Clientes.CEP, Clientes.ESTADO,');
//          IBQ1.SQL.Add('Clientes.CGC, Clientes.TIPO, Clientes.IRURAL, Clientes.INSCEST, Clientes.CIC, Clientes.RG, Clientes.FONE, Clientes.FAX, Clientes.LOCCOB, Clientes.LOCENT,');
//          IBQ1.SQL.Add('TRANSPOR.NMGUERRA, TRANSPOR.ENDERECO ENDERECOTR, TRANSPOR.CIDADE CIDADETR, TRANSPOR.ESTADO ESTADOTR, NF.PLACA PLACATR, TRANSPOR.CPF CPFTR, TRANSPOR.CGC CGCTR, TRANSPOR.INSCESTA INSCESTATR, TRANSPOR.ANTT, NF.ESTADO_PLACA, NF.CLIFOR, ');
//          IBQ1.SQL.Add('NF.UFEMBARQ, NF.XLOCEMBARQ, Clientes.PREPONDERANTEMENTE_EXPORTADORA, Clientes.NFE_LOTE_VALIDADE, Clientes.NFITEM_COM_CODIGO_CLIENTE, Nf.CODIGO_PARA_CHAVE_NFE');
//          IBQ1.SQL.Add('FROM NF');
//          IBQ1.SQL.Add('LEFT OUTER JOIN Natuope    ON (Nf.CDNATOPE       = Natuope.CDNATOPE)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN Clientes   ON (Nf.CDCLIENTE      = Clientes.CDCLIENTE)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN TRANSPOR   ON (Nf.CDTRANSP       = TRANSPOR.CDTRANSP)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN VENDEDOR   ON (Nf.CDVENDED       = VENDEDOR.CDVENDED)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN CIDADEIBGE ON (Clientes.COD_IBGE = CIDADEIBGE.CDIBGE)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN OBSFISC    ON (Nf.CDOBSFIS       = OBSFISC.CDOBSFIS) ');
//          IBQ1.SQL.Add('Where NF.NRNF = '''+PerguntaNFe.Maskedit1.Text+''' and NF.serie = ''1'' and (NF.NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//          IBQ1.Active := True;
//         end;
 {$ENDREGION}

// {$REGION 'NFe para Fornecedor'}
//  If PerguntaNFe.MaskeditCliFor.Text= 'F' Then
//    Begin
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('SELECT First 1 Nf.FATURA, Nf.NRNF, NF.NR_EMPRESA, Nf.DTEMISNF, Nf.CODIGO_PARA_CHAVE_NFE, ');
//      //11/12/2015 - Gustavo Oliveira
//      //Verificar e Gravar a Data e Hora da Gera��o do XML
//      IBQ1.SQL.Add('              (select current_date from rdb$database ) as dataServidor,         ');
//      IBQ1.SQL.Add('              (select current_timestamp from rdb$database ) as datahoraServidor,');
//      IBQ1.SQL.Add('              cast(( Nf.DTEMISNF || '' 00:01'')as timestamp) as datahora,');
//      IBQ1.SQL.Add('Nf.NRPEDIDO, ''N'' as PESO_OBRIGATORIO_NFE, ');
//      IBQ1.SQL.Add('Nf.CDCLIENTE, Nf.DTSAIDA, Nf.VLTOTMER, Nf.VLTOTIPI, Nf.VLTOTNF, Nf.VLDESC, Nf.PCDESC, ');
//      IBQ1.SQL.Add('Nf.VLCOMIS, Nf.CDVENDED, Nf.PCICMS, Nf.VLTOTICMS, Nf.ICMSFRETE, Nf.CDOBSFIS, Nf.CDCONDPG,');
//      IBQ1.SQL.Add('Nf.QUANTIDA, NF.OBS_FISCAL, Forneced.cod_ibge, CIDADEIBGE.Cod_Pais, CIDADEIBGE.Pais, ');
//      IBQ1.SQL.Add('CIDADEIBGE.CDESTIBGE, OBSFISC.IPI_SITUACAO_TRIBUTARIA, Nf.REFERENCIA_NF_DEVOLUCAO, NF.CST_IPI,');
//      IBQ1.SQL.Add('NF.ENQUADRAMENTO_IPI, NF.REFERENCIA_NC,');
//      IBQ1.SQL.Add('Nf.ESPECIE, Nf.CDNATOPE, Nf.CDTRANSP, Nf.PCFRETE, Nf.VLTOTFRE, Nf.PESOLIQT, Nf.PESOBRUT, Nf.USUARIO, Nf.INDSTAT, Nf.FRETEC, Natuope.DESCRNAT, Forneced.NOME, Forneced.ENDERECO, Forneced.BAIRRO, Forneced.CIDADE, Forneced.CEP, Forneced.ESTADO,');
//      IBQ1.SQL.Add('Forneced.CGC, Forneced.INSCEST,Forneced.FONE, Forneced.FAX,  Nf.TPDOCTO, NF.BASEICMS, NF.VALOR_TOTAL_PIS, NF.VALOR_TOTAL_COFINS, Forneced.Tipo, Forneced.num_endereco, Forneced.complem, Forneced.EMAIL_NFE,');
//      IBQ1.SQL.Add('Cast(Null as Char(1)) as IRURAL, Forneced.CPF as CIC, Cast(Null as Char(1)) as RG, Cast(Null as Char(1)) as LOCCOB, Cast(Null as Char(1)) as LOCENT, NF.VLTOTSERVICO, NF.VLTOTISS,');
//      IBQ1.SQL.Add('TRANSPOR.NMGUERRA, TRANSPOR.ENDERECO ENDERECOTR, TRANSPOR.CIDADE CIDADETR, TRANSPOR.ESTADO ESTADOTR, NF.PLACA PLACATR, TRANSPOR.CPF CPFTR, TRANSPOR.CGC CGCTR, TRANSPOR.INSCESTA INSCESTATR, TRANSPOR.ANTT, NF.ESTADO_PLACA, NF.CLIFOR,');
//      IBQ1.SQL.Add('Cast(Null as Char(1)) as PREPONDERANTEMENTE_EXPORTADORA, Cast(Null as Char(1)) as  NFE_LOTE_VALIDADE');
//      IBQ1.SQL.Add('FROM NF');
//      IBQ1.SQL.Add('LEFT OUTER JOIN Natuope    ON (Nf.CDNATOPE = Natuope.CDNATOPE)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN Forneced   ON (Nf.CDCLIENTE = Forneced.Cdfornece)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN TRANSPOR   ON (Nf.CDTRANSP = TRANSPOR.CDTRANSP)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN CIDADEIBGE ON (Forneced.COD_IBGE = CIDADEIBGE.CDIBGE)');
//      IBQ1.SQL.Add('LEFT OUTER JOIN OBSFISC    ON (Nf.CDOBSFIS = OBSFISC.CDOBSFIS) ');
//      IBQ1.SQL.Add('Where NF.NRNF = '''+PerguntaNFe.Maskedit1.Text+''' and NF.serie = ''1'' and (NF.NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
//      IBQ1.Active := True;
//    End;
// {$ENDREGION}
//
// {$REGION '�tens da NFe'}
//  IBQ4.Active:=False;
//  IBQ4.SQL.Clear;
//  IBQ4.SQL.Add('Select NFItem.*, CLASSIFICACAO_FISCAL.*, SITUACAO_TRIBUTARIA.*, Pedido.*');
//  IBQ4.SQL.Add('FROM NFItem');
//  IBQ4.SQL.Add('LEFT OUTER JOIN CLASSIFICACAO_FISCAL ON (NFItem.IDCLASS = CLASSIFICACAO_FISCAL.IDCLASS)');
//  IBQ4.SQL.Add('LEFT OUTER JOIN SITUACAO_TRIBUTARIA  ON (NFItem.SITUTRI = SITUACAO_TRIBUTARIA.CDSITTRI)');
//  IBQ4.SQL.Add('LEFT OUTER JOIN pedido               on (nfitem.nrpedido=pedido.nrpedido)');
//  IBQ4.SQL.Add('Where NRNF ='''+IBQ1.FieldByName('NRNF').Asstring+''' and NFItem.serie = ''1'' and (NFitem.NR_EMPRESA='''+IBQ1.FieldByName('NR_EMPRESA').Asstring+''')');
//  IBQ4.Active:=True;
//  {$ENDREGION}
//
// {$REGION 'Verifica NFe se j� gerada'}
// IBQ3.Active := False;
// IBQ3.SQL.Clear;
// IBQ3.SQL.Add('Select First 1 INDSTAT');
// IBQ3.SQL.Add('From NF');
// IBQ3.SQL.Add('Where NRNF = '''+Maskedit1.Text+''' and NF.serie = ''1'' and (NF.NR_EMPRESA='''+ComboBoxEmpresa.Text+''') ');
// IBQ3.Open;
//
//  if (ConsultaPedidoBaixa = NIL) and (ConsultaNF = NIL) then
    if cdsNFINDSTAT.AsString = 'E' then
      begin
        if Application.MessageBox(PWideChar('ATEN��O: ESSA NOTA FISCAL J� FOI GERADA, DESEJA CONTINUAR?'),'Pergunta',mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
          Abort;
      end;
//  {$ENDREGION}

 {$REGION 'Identifica��o da NF'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo das informa��es de identifica��o da NF-e  - <ide> - Ocorr�ncia 1-1                                   *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
   Opcao1 := True;                                                              // Esta variavel esta sendo usada nesse modelo para indicar os locais onde
                                                                                // devem ser tomadas deciss�es por parte do programador conforme a regras
                                                                                // de negocio de cada cliente.
  NFe := TNFe.create;
  s := NFe.infNFe.ID;                                                           //ATEN��O: Esse campo representa a chave da NFe
                                                                                //N�o utilize esse campo para escrita (apenas para leitura)
                                                                                //pois a chave � gerada automaticamente no momento da gera��o do arquivo

  NFe.Ide.cUF := DMPrincipal.cdsEmpresaCDIBGE.AsInteger;                        // B02 - C�digo da UF do emitente do Documento Fiscal - Tabela do IBGE
                                                                                // Voc� pode utilizar a fun��o UFparaCodigo caso n�o saiba o c�digo da UF
  //**********************Verificar                                             // ex: NFe.Ide.cUF := UFparaCodigo(MinhaUF);
  NFe.Ide.cNF := StrToInt(cdsNFCODIGO_PARA_CHAVE_NFE.AsString);                 // B03 - C�digo Num�rico que comp�e a Chave de Acesso

                                                                                //         Se nenhum valor for informado ser� atribuido um valor aleat�rio
                                                                                //         Se for informado o valor -1; ser� gerado um valor baseado no numero da NFe
  NFe.Ide.natOp := cdsNFDESCRNAT.AsString;                                      // B04 - Descri��o da Natureza da Opera��o
  NFe.Ide.indPag := ipPrazo;                                                    // B05 - Indicador da forma de pagamento (*)
                                                                                //    (0)=ipVista
                                                                                //    (1)=ipPrazo
                                                                                //    (2)=ipOutras
  NFe.Ide.modelo  := 55;                                                        // B06 - C�digo do Modelo do Documento Fiscal Utilizar o c�digo 55 para identifica��o da NF-e, emitida em substitui��o ao modelo 1 ou 1A.
  NFe.Ide.serie   := 1;                                                         // B07 - S�rie do Documento Fiscal, informar 0 (zero) para s�rie �nica.
  NFe.Ide.nNF     := cdsNFNRNF.AsInteger;                                       // B08 - N�mero do Documento Fiscal
  NFe.Ide.dEmi    := cdsNFDTEMISNF.AsDateTime;                                  // B09 - Data de emiss�o do Documento Fiscal
  NFe.Ide.dSaiEnt := cdsNFDTSAIDA.AsDateTime;                                   // B10 - Data de Sa�da ou da Entrada da Mercadoria/Produto
  Nfe.Ide.hSaiEnt := cdsNFHORA_EMISSAO.AsDateTime;
  case cdsNFFATURA.AsInteger of                                                 // B11 - Tipo do Documento Fiscal (*)
    0 : NFe.Ide.tpNF := tnEntrada;                                              //(0) = tnEntrada
    1 : NFe.Ide.tpNF := tnSaida;                                                //(1) = tnSaida
  end;
  if Trim(DMPrincipal.cdsEmpresaUF.AsString) = Trim(cdsNFUF.AsString) then
    NFe.Ide.idDest := doInterna                                                 //Idest Tipo de Destino (01 - Estadual 02 - InterEstadual)
  else
    if Trim(cdsNFCOD_PAIS.AsString) = '1058' then
      NFe.Ide.idDest := doInterestadual
    else
      NFe.Ide.idDest := doExterior;

  NFe.Ide.cMunFG := DMPrincipal.cdsEmpresaCDIBGE.AsInteger;                     // B12 - C�digo do Munic�pio de Ocorr�ncia do Fato Gerador do ICMS ( Tab. IBGE )
  NFe.Ide.tpImp  := tiRetrato;                                                  // B21 - Formato de Impress�o do DANFE (*)
                                                                                //         (2)=tiPaisagem
  if ComboBox1.Text = 'Normal' then                                             // B22 - Forma de Emiss�o da NF-e (*)
    NFe.Ide.tpEmis := teNormal                                                  //(1)=teNormal
  else
    if ComboBox1.Text = 'Contingencia' then
      NFe.Ide.tpEmis := teContingencia                                          //(2)=teContingencia
    else
      if ComboBox1.Text = 'SCAN' then
        NFe.Ide.tpEmis := teSCAN                                                //(3)=teScan
      else
        if ComboBox1.Text = 'DPEC' then
          NFe.Ide.tpEmis := teDPEC                                              //(4)=teDPEC
        else
          if ComboBox1.Text = 'FSDA' then
            NFe.Ide.tpEmis := teFSDA                                            //(5)=teFSDA
          else
            if ComboBox1.Text = 'EPEC' then
              NFe.Ide.tpEmis := teDPEC;
  // Ex: i := NFe.Ide.cDv;                                                      // B23 - D�gito Verificador da Chave de  Acesso da NF-e
  //homologa��o x Produ��o sempre aqui!!!!!!!!!                                 //         pois o digito � gerado automaticamente no momento da gera��o do arquivo

//------------------------------------------------------------------------------
// IMPORTANTE - INDICA SE � NOTA FISCAL V�LIDA OU DE TESTE
//------------------------------------------------------------------------------
                                                                                // B24 - Identifica��o do Ambiente (*)
  NFe.Ide.tpAmb := taProducao;                                                  //taProdu��o;
//  NFe.Ide.tpAmb := taHomologacao;                                             //taHomologacao;

  if ComboBox2.Text = 'Normal' then                                             // B25 - Finalidade de emiss�o da NF-e (*)
    NFe.Ide.finNFe := fnNormal                                                  //(1)=fnNormal
  else
    if (ComboBox2.Text = 'Complementar') then
      NFe.Ide.finNFe := fnComplementar                                          //(2)=fnComplementar
    else
      if ComboBox2.Text = 'Ajuste' then
        NFe.Ide.finNFe := fnAjuste;                                             //(3)=fnAjuste

//  if ComboBox2.Text = 'Devolucao de Mercadoria' then
//    begin
//      NFe.Ide.finNFe := fnDevolucao;
//      with NFe.Ide.NFref.Add do
//        begin
//          refNFe := IBQ1.FieldByName('REFERENCIA_NF_DEVOLUCAO').AsString;
//        end;
//    end;
  NFe.Ide.procEmi := peAplicativoContribuinte;                                  // B26 - Processo de emiss�o da NF-e (*) (0)=peAplicativoContribuinte - emiss�o de NF-e com aplicativo do contribuinte;
  NFe.Ide.verProc := '3.10';                                                    // B27 - Vers�o do Processo de emiss�o da NF-e

  if cdsNFTIPO_PESSOA.AsString = '0' then                                       // B29 - Nota para consumidor final
    NFe.Ide.indFinal := cfNao
  else
    NFe.Ide.indFinal := cfConsumidorFinal;

  if (ComboBox1.Text = 'DPEC') or (ComboBox1.Text = 'EPEC') then
    begin
      FormatSettings.ShortDateFormat   := 'yyyy/mm/aa';
      NFe.Ide.dhCont := now;
      NFe.Ide.xJust  := 'Justificativa Contingencia: Sistema do Sefaz Inoperante';
      FormatSettings.ShortDateFormat   := 'dd/mm/yyyy';
    end;
//***********Verificar*******************
//  if VarTPDOCTO = 'NF' then
//     ReferenciadaTipoNFe := False;
//  if VarTPDOCTO = 'NC' then                                                   // TAG - Informa��o das NF/NF-e referenciadas - <NFref> - Ocorr�ncia 0-N ********
//     ReferenciadaTipoNFe := True;

  if ReferenciadaTipoNFe then
    begin                                                                       // Se a nota referenciada for um NFe preencher o campo abaixo:
     NFe.Ide.NFref.Add;
     NFe.Ide.NFref[0].refNFe := cdsNFREFERENCIA_NC.AsString;                    // B13 - Chave de acesso das NF-e referenciadas
    end;
 {$ENDREGION}

  {$REGION 'Identifica��o do Emitente'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identifica��o do emitente da NF-e  - <emit> - Ocorr�ncia 1-1                                      *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

  NFe.Emit.CNPJCPF:= DMPrincipal.cdsEmpresaCNPJ.AsString;                       // C02 - CNPJ do emitente / CPF do remetente
  NFe.Emit.xNome  := DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString;               // C03 - Raz�o Social ou Nome do emitente
  NFe.Emit.xFant  := DMPrincipal.cdsEmpresaAPELIDO.AsString;                    // C04 - Nome fantasia
  NFe.Emit.enderEmit.xLgr   := DMPrincipal.cdsEmpresaENDERECO.AsString;         // C06 - Logradouro
  NFe.Emit.enderEmit.nro    := DMPrincipal.cdsEmpresaNUMERO.AsString;           // C07 - N�mero
  NFe.Emit.enderEmit.xCpl   := '';                                              // C08 - Complemento
  NFe.Emit.enderEmit.xBairro:= DMPrincipal.cdsEmpresaBAIRRO.AsString;           // C09 - Bairro
  NFe.Emit.enderEmit.cMun   := DMPrincipal.cdsEmpresaCDIBGE.AsInteger;          // C10 - C�digo do munic�pio (Tabela do IBGE - '9999999' para opera��es com o exterior))
  NFe.Emit.enderEmit.xMun   := DMPrincipal.cdsEmpresaCIDADE.AsString;           // C11 - Nome do munic�pio   ('EXTERIOR' para opera��es com o exterior)
  NFe.Emit.enderEmit.UF     := DMPrincipal.cdsEmpresaUF.AsString;               // C12 - Sigla da UF         ('EX' para opera��es com o exterior.)
  NFe.Emit.enderEmit.CEP    := StrToInt(Trim(DMPrincipal.cdsEmpresaCEP.AsString));// C13 - C�digo do CEP
  NFe.Emit.enderEmit.cPais  := DMPrincipal.cdsEmpresaCOD_PAIS.AsInteger;        // C14 - C�digo do Pa�s      (Tabela do BACEN )
  NFe.Emit.enderEmit.xPais  := DMPrincipal.cdsEmpresaPAIS.AsString;             // C15 - Nome do Pa�s
  NFe.Emit.enderEmit.fone   := DMPrincipal.cdsEmpresaTELEFONE.AsString;         // C16 - Telefone            ( C�digo DDD + n�mero do telefone. )
  NFe.Emit.IE     := DMPrincipal.cdsEmpresaIE.AsString;                         // C17 - Inscri��o Estadual do emitente
  NFe.Emit.IEST   := '';                                                        // C18 - Inscri��o Estadual do Substituto Tribut�rio da UF de destino da mercadoria, quando houver a reten��o do ICMS ST para a UF de destino.
  NFe.Emit.IM     := '';                                                        // C19 - Inscri��o Municipal (NF-e conjugada, com presta��o de servi�os sujeitos ao ISSQN e fornecimento de pe�as sujeitos ao ICMS.)
  NFe.Emit.CNAE   := '';                                                        // C20 - CNAE fiscal Este campo deve ser informado quando o campo NFe.Emit.IM for informado.
                                                                                // C21  - C�digo de Regime Tribut�rio
  case DMPrincipal.cdsEmpresaCRT.AsInteger of
    1 : NFe.Emit.CRT := crtSimplesNacional;                                     //crtSimplesNacional 1 Simples Nacional;
    2 : NFe.Emit.CRT := crtSimplesExcessoReceita;                               //crtSimplesExcessoReceita  2 Simples Nacional excesso de sublimite de receita bruta;
    3 : NFe.Emit.CRT:= crtRegimeNormal;                                         //crtRegimeNormal
  end;
  {$ENDREGION}

  {$REGION 'Nota Avulsa'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Identifica��o do Fisco Emitente da NF-e - <avulsa> - Ocorr�ncia 0-1                               *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
   {
                                    // D01 - Grupo para uso exclusivo do fisco
  NFe.Avulsa.CNPJ := '';
  NFe.Avulsa.xOrgao := '';
  NFe.Avulsa.matr := '';
  NFe.Avulsa.xAgente := '';
  NFe.Avulsa.fone := '';
  NFe.Avulsa.UF := '';
  NFe.Avulsa.nDAR := '';
  NFe.Avulsa.dEmi := null;
  NFe.Avulsa.vDAR := 0;
  NFe.Avulsa.repEmi := '';
  NFe.Avulsa.dPag := null;
    }
  {$ENDREGION}

  {$REGION 'Destinat�rio'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identifica��o do Destinat�rio da NF-e  - <dest> - Ocorr�ncia 1-1                                  *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  NFe.Dest.CNPJCPF           := cdsNFCPF_CNPJ.AsString;                         // E02 - CNPJ do destinat�rio / CPF do destinat�rio
  NFe.Dest.xNome             := cdsNFCLIENTE.AsString;                          // E04 - Raz�o Social ou nome do destinat�rio
  NFe.Dest.enderDest.xLgr    := cdsNFENDERECO.AsString;                         // E06 - Logradouro
  NFe.Dest.enderDest.nro     := cdsNFNUMERO.AsString;                           // E07 - N�mero
  NFe.Dest.enderDest.xCpl    := '';                                             // E08 - Complemento
  NFe.Dest.enderDest.xBairro := cdsNFBAIRRO.AsString;                           // E09 - Bairro
  NFe.Dest.enderDest.cMun    := cdsNFCOD_IBGE.AsInteger;                        // E10 - C�digo do munic�pio (Tabela do IBGE - '9999999' para opera��es com o exterior))
  NFe.Dest.enderDest.xMun    := cdsNFCIDADE.AsString;                           // E11 - Nome do munic�pio   ('EXTERIOR' para opera��es com o exterior)
  NFe.Dest.enderDest.UF      := cdsNFUF.AsString;                               // E12 - Sigla da UF         ('EX' para opera��es com o exterior.)
  NFe.Dest.enderDest.CEP     := StrToInt(TiraCharNaoPermitido(cdsNFCEP.AsString));// E13 - C�digo do CEP
  NFe.Dest.enderDest.cPais   := cdsNFCOD_PAIS.AsInteger;                        // E14 - C�digo do Pa�s      (Tabela do BACEN )
  NFe.Dest.enderDest.xPais   := cdsNFPAIS.AsString;                             // E15 - Nome do Pa�s
  NFe.Dest.enderDest.fone    := cdsNFFONE.AsString;                             // E16 - Telefone            ( C�digo DDD + n�mero do telefone. )
  NFe.Dest.IE                := cdsNFIE_RG.AsString;                            // E17 - Inscri��o Estadual do destinat�rio
  NFe.Dest.ISUF  := '';                                                         // E18 - Inscri��o na SUFRAMA

  if cdsNFTIPO_PESSOA.AsInteger = 0 then
    NFE.Dest.indIEDest  := inNaoContribuinte;

  if trim(cdsNFIE_RG.AsString)= 'ISENTO' then
    begin
      NFE.Dest.indIEDest  := inNaoContribuinte;
      NFe.Dest.IE         := '';
    end;
  {$ENDREGION}

  {$REGION 'Local de Retirada Somente usar quando for diferente do Endere�o do Emitente'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identifica��o do Local de retirada - <retirada> - Ocorr�ncia 0-N                                  *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
                                                                                // Informar os valores desse grupo somente se o  endere�o de
                                                                                // retirada for diferente do endere�o do remetente.
                                                                                // Assim se retirada.xLgr <> '' o gerador grava o grupo no XML
  //  NFe.Retirada.CNPJ := '';                                                  // F02 - CNPJ
  NFe.Retirada.xLgr    := '';                                                   // F03 - Logradouro
  NFe.Retirada.nro     := '';                                                   // F04 - N�mero
  NFe.Retirada.xCpl    := '';                                                   // F05 - Complemento
  NFe.Retirada.xBairro := '';                                                   // F06 - Bairro
  NFe.Retirada.cMun    := 0;                                                    // F07 - C�digo do munic�pio (Tabela do IBGE - '9999999' para opera��es com o exterior))
  NFe.Retirada.xMun    := '';                                                   // F08 - Nome do munic�pio   ('EXTERIOR' para opera��es com o exterior)
  NFe.Retirada.UF      := '';                                                   // F09 - Sigla da UF ('EX' para opera��es com o exterior.)
  {$ENDREGION}

  {$REGION 'Local de Entrega Somente usar quando for diferente do Endere�o do Destinatario'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de identifica��o do Local de entrega - <entrega> - Ocorr�ncia 0-N                                    *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

                              // Informar os valores desse grupo somente se o
                              // endere�o de entrega for diferente do endere�o do destinatario.
                              // Assim se entrega.xLgr <> '' o gerador grava o grupo no XML

  //  NFe.Entrega.CNPJ := '';     // G02 - CNPJ
  NFe.Entrega.xLgr    := '';      // G03 - Logradouro
  NFe.Entrega.nro     := '';      // G04 - N�mero
  NFe.Entrega.xCpl    := '';      // G05 - Complemento
  NFe.Entrega.xBairro := '';      // G06 - Bairro
  NFe.Entrega.cMun    := 0;       // G07 - C�digo do munic�pio (Tabela do IBGE - '9999999' para opera��es com o exterior))
  NFe.Entrega.xMun    := '';      // G08 - Nome do munic�pio   ('EXTERIOR' para opera��es com o exterior)
  NFe.Entrega.UF      := '';      // G09 - Sigla da UF         ('EX' para opera��es com o exterior.)
  {$ENDREGION}

  {$REGION 'Detalhamento de Produtos e Servi�os da NF-e'}
  for i := 0 to cdsNFI.RecordCount -1 do
    begin
      NFe.Det.Add;
//      if Trim(IBQ1.FieldByName('NFE_LOTE_VALIDADE').Asstring)='S' then          // -     Informa��es Adicionais do Produto
//        NFe.Det[i].infAdProd   := FormatFloat('0000000000', StrToIntDef(IBQ4.FieldByName('NRPEDIDO').AsString,0))+FormatDateTime('ddmmyyyy',(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime+360))
//      else
      NFe.Det[i].infAdProd     := '';
      NFe.Det[i].Prod.nItem    := 1 + i;                                        // H02 - N�mero do item DE 1 a 990
      NFe.Det[i].Prod.cProd    := Trim(cdsNFIREFEREN.AsString);                 // I02 - C�digo do produto ou servi�o
      NFe.Det[i].Prod.cEAN     := '';                                           // I03 - GTIN (Global Trade Item Number) do produto, antigo c�digo EAN ou c�digo de barra
      NFe.Det[i].Prod.xProd    := Trim(cdsNFIDESCRICAO.AsString);               // I04 - Descri��o do produto ou servi�o
      NFe.Det[i].Prod.NCM      := cdsNFINCM.AsString;                           // I05 - C�digo NCM (Em caso de servi�o, n�o incluir a TAG.)
      //NFe.Det[i].Prod.EXTIPI := '';                                           // I06 - C�digo EX da TIPI  (Em caso de servi�o, n�o incluir a TAG.)
      //NFe.Det[i].Prod.genero := 0;                                            // I07 - G�nero do Produto ou Servi�o (Tabela de Cap�tulos da NCM)(Em caso de servi�o, n�o incluir a TAG.)
      NFe.Det[i].Prod.CFOP     := cdsNFICDNATOPEITEM.AsString;                  // I08 - C�digo Fiscal de Opera��es e Presta��es
      NFe.Det[i].Prod.uCom     := Trim(cdsNFIUNIDADE.AsString);                 // I09 - Unidade Comercial
      NFe.Det[i].Prod.qCom     := cdsNFIQUANTIDA.Asfloat;                       // I10 - Quantidade Comercial
      NFe.Det[i].Prod.vUnCom   := cdsNFIVLUNIT.AsFloat;                         // I10a  Valor Unit�rio de comercializa��o
      NFe.Det[i].Prod.vProd    := cdsNFIVLTOTAL.AsFloat;                        // I11 - Valor Total Bruto dos Produtos ou Servi�os
      NFe.Det[i].Prod.uTrib    := Trim(cdsNFIUNIDADE.AsString);                 // I13 - Unidade Tribut�vel
      NFe.Det[i].Prod.qTrib    := cdsNFIQUANTIDA.Asfloat;                       // I14 - Quantidade Tribut�vel
      NFe.Det[i].Prod.vUnTrib  := cdsNFIVLUNIT.AsFloat;                         // I14a  Valor Unit�rio de tributa��o
      NFe.Det[i].Prod.xPed     := cdsNFIPEDIDCLI.AsString;                      // Traz o N�mero do Pedido do Cliente
      NFe.Det[i].Prod.nItemPed := cdsNFIPEDIDCLIITEM.AsString;                  // Traz o �tem  do Pedido do Cliente
      (* EXEMPLO *)                   // NFe.Det[i].Prod.uCom    := 'CX';
                                      // NFe.Det[i].Prod.qCom    :=    2;   Vendidas 2 caixas ( com 10 unidades cada )
                                      // NFe.Det[i].Prod.vUnCom  :=   50;   R$ 50,00 cada caixa
                                      // NFe.Det[i].Prod.vProd   :=  100;   R$ 100,00 Valor dos produtos
                                      // NFe.Det[i].Prod.uTrib   := 'UN';
                                      // NFe.Det[i].Prod.qTrib   :=   20;   2 caixas X 10 unidades por caixa = 20 unidades
                                      // NFe.Det[i].Prod.vUnTrib :=    5;   R$ 100,00 / 20 unidades = R$ 5,00 cada unidade

      //NFe.Det[i].Prod.cEANTrib := '';                                         // I12 - GTIN (Global Trade Item Number) da unidade tribut�vel,  antigo c�digo EAN ou c�digo de  barras ??

//      if CheckBoxCobraFrete.Checked=True then
//        NFe.Det[i].Prod.vFrete := IBQ1.FieldByName('VLTOTFRE').AsFloat          // I15 - Valor Total do Frete
//      else
      NFe.Det[i].Prod.vFrete := 0;                                              // I15 - Valor Total do Frete
      NFe.Det[i].Prod.vSeg   := 0;                                               // I16 - Valor Total do Seguro
      NFe.Det[i].Prod.vDesc  := cdsNFVLDESC.AsFloat;                             // I17 - Valor do Desconto

      {$REGION 'Declara��o de Importa��o - <DI>'}
        //for j := 0 to 1 do
        //    begin
        //      NFe.Det[i].Prod.DI.Add;
        //      NFe.Det[i].Prod.DI[j].nDi := '';                  // I19 - N�mero do Documento de Importa��o DI/DSI/DA (DI/DSI/DA)
        //      NFe.Det[i].Prod.DI[j].dDi := null;                // I20 - Data de Registro da DI/DSI/DA
        //      NFe.Det[i].Prod.DI[j].xLocDesemb := '';           // I21 - Local de desembara�o
        //      NFe.Det[i].Prod.DI[j].UFDesemb := '';             // I22 - Sigla da UF onde ocorreu o Desembara�o Aduaneiro
        //      NFe.Det[i].Prod.DI[j].dDesemb := null;            // I23 - Data do Desembara�o Aduaneiro
        //      NFe.Det[i].Prod.DI[j].cExportador := '';          // I24 - C�digo do exportador
        //      for k := 0 to 1 do
        //          begin
        //            NFe.Det[i].Prod.DI[j].adi.Add;                  //       Tag de Adi��es - <adi> - Ocorr�ncia 1-N
        //            NFe.Det[i].Prod.DI[j].adi[k].nAdicao := 0;      // I26 - Numero da adi��o
        //            NFe.Det[i].Prod.DI[j].adi[k].nSeqAdi := 0;      // I27 - Numero seq�encial do item dentro da adi��o
        //            NFe.Det[i].Prod.DI[j].adi[k].cFabricante := ''; // I28 - C�digo do fabricante estrangeiro
        //            NFe.Det[i].Prod.DI[j].adi[k].vDescDI := 0;      // I29 - Valor do desconto do item da DI � adi��o
        //           end;
        //    end;
        {$ENDREGION}

      {$REGION 'Ve�culos novos'}
                                                      //       Este grupo ser� criado no XML somente se o campo <chassi> for informado.
      //NFe.Det[i].prod.veicProd.tpOP := toVendaDireta; // J02 - Tipo da opera��o
                                                      //         (1)=toVendaConcessionaria
                                                      //         (2)=toFaturamentoDireto
                                                      //         (3)=toVendaDireta
                                                      //         (0)=toOutros
      //NFe.Det[i].prod.veicProd.chassi := '';          // J03 - Chassi do ve�culo
      //NFe.Det[i].prod.veicProd.cCor := '';            // J04 - Cor
      //NFe.Det[i].prod.veicProd.xCor := '';            // J05 - Descri��o da Cor
      //NFe.Det[i].prod.veicProd.pot := '';             // J06 - Pot�ncia Motor
      //NFe.Det[i].prod.veicProd.CM3 := '';             // J07 - CM3 (Pot�ncia)
      //NFe.Det[i].prod.veicProd.pesoL := '';           // J08 - Peso L�quido
      //NFe.Det[i].prod.veicProd.pesoB := '';           // J09 - Peso Bruto
      //NFe.Det[i].prod.veicProd.nSerie := '';          // J10 - Serial (s�rie)
      //NFe.Det[i].prod.veicProd.tpComb := '';          // J11 - Tipo de combust�vel
      //NFe.Det[i].prod.veicProd.nMotor := '';          // J12 - N�mero de Motor
      //NFe.Det[i].prod.veicProd.CMKG := '';            // J13 - CMKG
      //NFe.Det[i].prod.veicProd.dist := '';            // J14 - Dist�ncia entre eixos
      //NFe.Det[i].prod.veicProd.RENAVAM := '';         // J15 - RENAVAM            (N�o informar a TAG na exporta��o)
      //NFe.Det[i].prod.veicProd.anoMod := 0;           // J16 - Ano Modelo de Fabrica��o
      //NFe.Det[i].prod.veicProd.anoFab := 0;           // J17 - Ano de Fabrica��o
      //NFe.Det[i].prod.veicProd.tpPint := '';          // J18 - Tipo de Pintura
      //NFe.Det[i].prod.veicProd.tpVeic := 0;           // J19 - Tipo de Ve�culo    (Utilizar Tabela RENAVAM)
      //NFe.Det[i].prod.veicProd.espVeic := 0;          // J20 - Esp�cie de Ve�culo (Utilizar Tabela RENAVAM)
      //NFe.Det[i].prod.veicProd.VIN := '';             // J21 - Condi��o do VIN
      //NFe.Det[i].prod.veicProd.condVeic := cvAcabado; // J22 - Condi��o do Ve�culo (1-Acabado; 2-Inacabado; 3-Semi-acabado)
      //NFe.Det[i].prod.veicProd.cMod := 0;             // J23 - C�digo Marca Modelo (Utilizar Tabela RENAVAM)
      {$ENDREGION}

      {$REGION 'Medicamentos'}
      //for j := 0 to 1 do
      //    begin
      //     NFe.Det[i].prod.med.add;
      //     NFe.Det[i].prod.med[j].nLote := '';  // K02 - N�mero do Lote do medicamento
      //     NFe.Det[i].prod.med[j].qLote := 0;   // K03 - Quantidade de produto no Lote do medicamento
      //     NFe.Det[i].prod.med[j].dFab := null; // K04 - Data de fabrica��o
      //     NFe.Det[i].prod.med[j].dVal := null; // K05 - Data de validade
      //     NFe.Det[i].prod.med[j].vPMC := 0;    // K06 - Pre�o m�ximo consumidor
      //    end;
      {$ENDREGION}

      {$REGION 'Armamento'}
      //for j := 0 to 1 do
      //     begin
      //      NFe.Det[i].prod.arma.add;
      //      NFe.Det[i].prod.arma[j].tpArma := taUsoPermitido; // L02 - Indicador do tipo de arma de fogo
                                                              //         (0)=taUsoPermitido
                                                              //         (1)=taUsoRestrito
      //      NFe.Det[i].prod.arma[j].nSerie := 0;              // L03 - N�mero de s�rie da arma
      //      NFe.Det[i].prod.arma[j].nCano := 0;               // L04 - N�mero de s�rie do cano
      //      NFe.Det[i].prod.arma[j].descr := '';              // L05 - Descri��o completa da arma, compreendendo: calibre, marca, capacidade, etc)
      //     end;
      {$ENDREGION}

      {$REGION 'Combust�veis'}
      //        l�quidos - <comb> - Ocorr�ncia 0-1
      //        Se for informado algum dos valores abaixo:
      //        a TAG grava o grupo no XML ********************************************
      //NFe.Det[i].prod.comb.cProdANP := 0;                 // L102 - C�digo de produto da ANP - codifica��o de produtos do SIMP
      //NFe.Det[i].prod.comb.CODIF := '';                   // L103 - C�digo de autoriza��o / registro do CODIF
      //NFe.Det[i].prod.comb.qTemp := 0;                    // L104 - Quantidade de combust�vel faturada � temperatura ambiente.
                                                            //        TAG de grupo da CIDE - <CIDE> - Ocorr�ncia 0-1
      //NFe.Det[i].prod.comb.CIDE.qBCprod := 0;             // L106 - BC da CIDE em quantidad
      //NFe.Det[i].prod.comb.CIDE.vAliqProd := 0;           // L107 - Valor da al�quota da CIDE
      //NFe.Det[i].prod.comb.CIDE.vCIDE := 0;               // L108 - Valor da CIDE
                                                            //        TAG de grupo do ICMS - <ICMS> - Ocorr�ncia 1-1
      //NFe.Det[i].prod.comb.ICMS.vBCICMS := 0;             // L110 - BC do ICMS
      //NFe.Det[i].prod.comb.ICMS.vICMS := 0;               // L111 - Valor do ICMS
      //NFe.Det[i].prod.comb.ICMS.vBCICMSST := 0;           // L112 - BC do ICMS ST retido
      //NFe.Det[i].prod.comb.ICMS.vICMSST := 0;             // L113 - Valor do ICMS ST retido
                                                            //        TAG de grupo do ICMSST de opera��o interestadual - <ICMSInter> - Ocorr�ncia 0-1
      //NFe.Det[i].prod.comb.ICMSInter.vBCICMSSTDest := 0;  // L115 - BC do ICMS ST da UF de destino
      //NFe.Det[i].prod.comb.ICMSInter.vICMSSTDest := 0;    // L116 - Valor do ICMS ST da UF de destino
                                                            //        TAG de ICMS para consumo em UF diversa da UF de localiza��o do destinat�rio do produto - <ICMSCons> - Ocorr�ncia 0-1
      //NFe.Det[i].prod.comb.ICMSCons.vBCICMSSTCons := 0;   // L118 - BC do ICMS ST da UF de consumo
      //NFe.Det[i].prod.comb.ICMSCons.vICMSSTCons := 0;     // L119 - Valor do ICMS ST da UF de consumo
      //NFe.Det[i].prod.comb.ICMSCons.UFcons := '';         // L120 - Sigla da UF de consumo
      {$ENDREGION}

      {$REGION 'ICMS para Simples Nacional'}
      if DMPrincipal.cdsEmpresaCRT.AsString = '1' then
        begin

          if Trim(cdsNFISITUTRI.AsString) = '000' then
            NFe.Det[i].Imposto.ICMS.CSOSN  := csosn101;

          if Trim(cdsNFISITUTRI.AsString) = '040' then
            NFe.Det[i].Imposto.ICMS.CSOSN  := csosn300;

          case  nfe.Det[i].Imposto.ICMS.CSOSN of
            csosn101 :  // N12a
            begin
             nfe.Det[i].Imposto.ICMS.pCredSN     := 0;                     // N29 - Al�quota aplic�vel de c�lculo do cr�dito (Simples Nacional).
             nfe.Det[i].Imposto.ICMS.vCredICMSSN := 0;                     // N30 - Valor cr�dito do ICMS que pode ser aproveitado nostermos do art. 23 da LC 123 (Simples Nacional)
            end;
            csosn102,
            csosn103,
            csosn300,
            csosn400:  // N10d
            begin
                   //Tags ORIG e CSON j� criadas antes do case
                   //102 - Tributada pelo Simples Nacional sem permiss�o de cr�dito.
                   //103 ? Isen��o do ICMS no Simples Nacional para faixa de receita bruta.
                   //300 ? Imune.
                   //400 ? N�o tributada pelo Simples Nacional (v.2.0) (v.2.0)
            end;
          end;
            NFe.Det[i].Imposto.ICMS.orig := oeNacional;
//            NFe.Det[i].Imposto.ICMS.CST  := cst00;

        end;
      {$ENDREGION}

      {$REGION 'ICMS para Empresa de Tributa��o normal'}
      if DMPrincipal.cdsEmpresaCRT.AsString = '3' then
        begin
          NFe.Det[i].Imposto.ICMS.orig := oeNacional;                           // N11 - Origem da mercadoria
                                                                                //         (0)=oeNacional
                                                                                //         (1)=oeEstrangeiraImportacaoDireta
                                                                                //         (2)=oeEstrangeiraAdquiridaBrasil
          if Trim(cdsNFISITUTRI.AsString) = '000' then
            NFe.Det[i].Imposto.ICMS.CST  := cst00;

          if Trim(cdsNFISITUTRI.AsString) = '001' then
            NFe.Det[i].Imposto.ICMS.CST  := cst10;

          if Trim(cdsNFISITUTRI.AsString) = '020' then
            NFe.Det[i].Imposto.ICMS.CST  := cst20;

          if Trim(cdsNFISITUTRI.AsString) = '004' then
            NFe.Det[i].Imposto.ICMS.CST  := cst41;

          if Trim(cdsNFISITUTRI.AsString) = '040' then
            NFe.Det[i].Imposto.ICMS.CST  := cst40;

          if Trim(cdsNFISITUTRI.AsString) = '041' then
            NFe.Det[i].Imposto.ICMS.CST  := cst41;

          if Trim(cdsNFISITUTRI.AsString) = '050' then
            NFe.Det[i].Imposto.ICMS.CST  := cst50;

          if Trim(cdsNFISITUTRI.AsString) = '060' then
            NFe.Det[i].Imposto.ICMS.CST  := cst60;

          if Trim(cdsNFISITUTRI.AsString) = '051' then
            NFe.Det[i].Imposto.ICMS.CST  := cst51;

          if Trim(cdsNFISITUTRI.AsString) = '090' then
            NFe.Det[i].Imposto.ICMS.CST  := cst90;

             // N12 - Tributa��o do ICMS
             //         (00)=cst00
             //         (10)=cst10
             //         (20)=cst20
             //         (30)=cst30
             //         (40)=cst40
             //         (41)=cst41
             //         (50)=cst50
             //         (51)=cst51
             //         (60)=cst60
             //         (70)=cst70
             //         (90)=cst90

          if NFe.Det[i].Imposto.ICMS.CST = cst00 then
            begin
              NFe.Det[i].Imposto.ICMS.modBC := dbiValorOperacao;                // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC   := cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS := cdsNFIPCICM.AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS := cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst10 then
            begin
              NFe.Det[i].Imposto.ICMS.modBC    := dbiValorOperacao;                               // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC      := cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS    := cdsNFIPCICM.AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS    := cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
              NFe.Det[i].Imposto.ICMS.modBCST  := dbisMargemValorAgregado;                     // N18 - Modalidade de determina��o da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pMVAST   := 0;                                           // N19 - Percentual da margem de valor Adicionado do ICMS ST
              NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                                           // N20 - Percentual da Redu��o de BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.vBCST    := 0;                                           // N21 - Valor da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pICMSST  := 0;                                           // N22 - Al�quota do imposto do ICMS ST
              NFe.Det[i].Imposto.ICMS.vICMSST  := 0;                                           // N23 - Valor do ICMS ST
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst20 then
            begin
              NFe.Det[i].Imposto.ICMS.modBC  := dbiValorOperacao;                              // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pRedBC := 0;                                             // N14 - Percentual da Redu��o de BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC    := cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS  := cdsNFIPCICM.AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS  := cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst30 then
            begin
              NFe.Det[i].Imposto.ICMS.vICMS    := cdsNFIVLTOTICM.AsFloat;       // N17 - Valor do ICMS
              NFe.Det[i].Imposto.ICMS.pMVAST   := 0;                                         // N19 - Percentual da margem de valor Adicionado do ICMS ST
              NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                                         // N20 - Percentual da Redu��o de BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.vBCST    := 0;                                         // N21 - Valor da BC do ICMS S
              NFe.Det[i].Imposto.ICMS.pICMSST  := 0;                                         // N22 - Al�quota do imposto do ICMS ST
              NFe.Det[i].Imposto.ICMS.vICMSST  := 0;                                         // N23 - Valor do ICMS ST
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst51 then
            begin                             //aquiiiiiiiiiiiiiiiiiiii anderson duvida
              NFe.Det[i].Imposto.ICMS.modBC  := dbiValorOperacao;                                   // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pRedBC := 0;                                                  // N14 - Percentual da Redu��o de BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC    := 0; //IBQ4.FieldByName('BASE_CALCULO_ICMS').AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS  := 0; //IBQ4.FieldByName('PCICM').AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS  := 0; //IBQ4.FieldByName('VLTOTICM').AsFloat;          // N17 - Valor do ICMS
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst60 then
            begin
              NFe.Det[i].Imposto.ICMS.vBCST   := 0;                                             // N21 - Valor da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.vICMSST := 0;                                           // N23 - Valor do ICMS ST
            end;

          if NFe.Det[i].Imposto.ICMS.CST = cst70 then
            begin
              NFe.Det[i].Imposto.ICMS.modBC    := dbiValorOperacao;                              // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pRedBC   := 0;                                            // N14 - Percentual da Redu��o de BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC      := cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS    := cdsNFIPCICM.AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS    := cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
              NFe.Det[i].Imposto.ICMS.modBCST  := dbisMargemValorAgregado;         // N18 - Modalidade de determina��o da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pMVAST   := 0;                               // N19 - Percentual da margem de valor Adicionado do ICMS ST
              NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                               // N20 - Percentual da Redu��o de BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.vBCST    := 0;                               // N21 - Valor da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pICMSST  := 0;                               // N22 - Al�quota do imposto do ICMS ST
              NFe.Det[i].Imposto.ICMS.vICMSST  := 0;                               // N23 - Valor do ICMS ST
            end;
          if NFe.Det[i].Imposto.ICMS.CST = cst90 then
            begin
              NFe.Det[i].Imposto.ICMS.modBC    := dbiValorOperacao;                // N13 - Modalidade de determina��o da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pRedBC   := 0;                               // N14 - Percentual da Redu��o de BC do ICMS
              NFe.Det[i].Imposto.ICMS.vBC      := cdsNFIBASE_CALCULO_ICMS.AsFloat; // N15 - Valor da BC do ICMS
              NFe.Det[i].Imposto.ICMS.pICMS    := cdsNFIPCICM.AsFloat;             // N16 - Al�quota do imposto
              NFe.Det[i].Imposto.ICMS.vICMS    := cdsNFIVLTOTICM.AsFloat;          // N17 - Valor do ICMS
              NFe.Det[i].Imposto.ICMS.modBCST  := dbisMargemValorAgregado;         // N18 - Modalidade de determina��o da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pMVAST   := 0;                               // N19 - Percentual da margem de valor Adicionado do ICMS ST
              NFe.Det[i].Imposto.ICMS.pRedBCST := 0;                               // N20 - Percentual da Redu��o de BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.vBCST    := 0;                               // N21 - Valor da BC do ICMS ST
              NFe.Det[i].Imposto.ICMS.pICMSST  := 0;                               // N22 - Al�quota do imposto do ICMS ST
              NFe.Det[i].Imposto.ICMS.vICMSST  := 0;                               // N23 - Valor do ICMS ST
            end;
                                                                                   // N13 - Modalidade de determina��o da BC do ICMS
                                                                                   //         (0)=dbiMargemValorAgregado
                                                                                   //         (1)=dbiPauta
                                                                                   //         (2)=dbiPrecoTabelado
                                                                                   //         (3)=dbiValorOperacao
                                                                                   // N18 - Modalidade de determina��o da BC do ICMS ST
                                                                                   //         (0)=dbisPrecoTabelado       � Pre�o tabelado ou m�ximo sugerido;
                                                                                   //         (1)=dbisListaNegativa       - Lista Negativa (valor);
                                                                                   //         (2)=dbisListaPositiva       - Lista Positiva (valor);
                                                                                   //         (3)=dbisListaNeutra         - Lista Neutra (valor);
                                                                                   //         (4)=dbisMargemValorAgregado - Margem Valor Agregado (%);
                                                                                   //         (5)=dbisPauta               - Pauta (valor);)
        end;
      {$ENDREGION}

      {$REGION 'IPI'}
      //TAG de grupo do IPI - <IPI> - Ocorr�ncia 0-1
      //NFe.Det[i].Imposto.IPI.clEnq := '';                                     // O02 - Classe de enquadramento do IPI para Cigarros e Bebidas
      //NFe.Det[i].Imposto.IPI.CNPJProd := '';                                  // O03 - CNPJ do produtor da mercadoria, quando diferente do emitente. Somente para os casos de exporta��o direta ou indireta.
      //NFe.Det[i].Imposto.IPI.cSelo := '';                                     // O04 - C�digo do selo de controle IPI
      //NFe.Det[i].Imposto.IPI.qSelo := 0;                                      // O05 - Quantidade de selo de controle
      NFe.Det[i].Imposto.IPI.cEnq := '999';                                     // O06 - C�digo de Enquadramento Legal do IPI (Tabela a ser criada pela RFB, informar 999 enquanto a tabela n�o for criada)

      if Trim(cdsNFENQUADRAMENTO_IPI.AsString) <> '' then
         NFe.Det[i].Imposto.IPI.cEnq := Trim(cdsNFENQUADRAMENTO_IPI.AsString);

      case cdsNFICSTIPI.AsInteger of                                            // O09 - C�digo da situa��o tribut�ria do IPI
        0  : NFe.Det[i].Imposto.IPI.CST := ipi00;
        1  : NFe.Det[i].Imposto.IPI.CST := ipi01;
        2  : NFe.Det[i].Imposto.IPI.CST := ipi02;
        3  : NFe.Det[i].Imposto.IPI.CST := ipi03;
        4  : NFe.Det[i].Imposto.IPI.CST := ipi04;
        5  : NFe.Det[i].Imposto.IPI.CST := ipi05;
        49 : NFe.Det[i].Imposto.IPI.CST := ipi49;
        50 : NFe.Det[i].Imposto.IPI.CST := ipi50;
        51 : NFe.Det[i].Imposto.IPI.CST := ipi51;
        52 : NFe.Det[i].Imposto.IPI.CST := ipi52;
        53 : NFe.Det[i].Imposto.IPI.CST := ipi53;
        54 : NFe.Det[i].Imposto.IPI.CST := ipi54;
        55 : NFe.Det[i].Imposto.IPI.CST := ipi55;
        99 : NFe.Det[i].Imposto.IPI.CST := ipi99;
      end;

      if Trim(cdsNFICSTIPI.AsString) = '55' then
         NFe.Det[i].Imposto.IPI.CST := ipi55;
      //       (00)=ipi00 - Entrada com recupera��o de cr�dito
      //       (49)=ipi49 - Outras entradas
      //       (50)=ipi50 - Sa�da tributada
      //       (99)=ipi99 - Outras sa�das
      //       (01)=ipi01 - Entrada tributada com al�quota zero
      //       (02)=ipi02 - Entrada isenta
      //       (03)=ipi03 - Entrada n�o-tributada
      //       (04)=ipi04 - Entrada imune
      //       (05)=ipi05 - Entrada com suspens�o
      //       (51)=ipi51 - Sa�da tributada com al�quota zero
      //       (52)=ipi52 - Sa�da isenta
      //       (53)=ipi53 - Sa�da n�o-tributada
      //       (54)=ipi54 - Sa�da imune
      //       (55)=ipi55 - Sa�da com suspens�o
      if (NFe.Det[i].Imposto.IPI.CST = ipi00) or (NFe.Det[i].Imposto.IPI.CST = ipi49) or
         (NFe.Det[i].Imposto.IPI.CST = ipi50) or (NFe.Det[i].Imposto.IPI.CST = ipi99) then
        begin
          if opcao1 then
             begin
               NFe.Det[ i].Imposto.IPI.vBC  := cdsNFIBASEIPI.AsFloat;           // O10 - Valor da BC do IPI
               NFe.Det[ i].Imposto.IPI.pIPI := cdsNFIPCIPI.AsFloat;             // 013 - Al�quota do IPI
               NFe.Det[i].Imposto.IPI.vIPI  := cdsNFIVLTOTIPI.AsFloat;          // O14 - Valor do IPI
             end;

          if not opcao1 then
             begin
               NFe.Det[i].Imposto.IPI.qUnid := 0;                               // O11 - Qtde total na unidade padr�o para tributa��o (somente para os produtos tributados por unidade)
               NFe.Det[i].Imposto.IPI.vUnid := 0;                               // O12 - Valor por Unidade Tribut�vel
               NFe.Det[i].Imposto.IPI.vIPI  := 0;                               // O14 - Valor do IPI
             end;
        end;
      {$ENDREGION}

      {$REGION 'Imposto de Importa��o - <II> '}
      //NFe.Det[i].Imposto.II.vBc := 0;             // P02 - Valor da BC do Imposto de Importa��o
      //NFe.Det[i].Imposto.II.vDespAdu := 0;        // P03 - Valor das despesas aduaneiras
      //NFe.Det[i].Imposto.II.vII := 0;             // P04 - Valor do Imposto de Importa��o
      //NFe.Det[i].Imposto.II.vIOF := 0;            // P05 - Valor do Imposto sobre Opera��es Financeiras
      {$ENDREGION}

      {$REGION 'Imposto de PIS'}
        case cdsNFICSTPIS.AsInteger of                                          // Q06 - C�digo de Situa��o Tribut�ria do PIS
          1  : NFe.Det[i].Imposto.PIS.CST := pis01;                             //(01)=pis01 � Opera��o Tribut�vel (base de c�lculo = valor da opera��o al�quota normal (cumulativo/n�o cumulativo));
          2  : NFe.Det[i].Imposto.PIS.CST := pis02;                             //(02)=pis02 - Opera��o Tribut�vel (base de c�lculo = valor da opera��o (al�quota diferenciada));
          3  : NFe.Det[i].Imposto.PIS.CST := pis03;                             //(03)=pis03 - Opera��o Tribut�vel (base de c�lculo = quantidade vendida x al�quota por unidade de produto )
          4  : NFe.Det[i].Imposto.PIS.CST := pis04;                             //(04)=pis04 - Opera��o Tribut�vel (tributa��o monof�sica (al�quota zero));
          5  : NFe.Det[i].Imposto.PIS.CST := pis05;                             //(06)=pis06 - Opera��o Tribut�vel (al�quota zero);
          6  : NFe.Det[i].Imposto.PIS.CST := pis06;                             //(07)=pis07 - Opera��o Isenta da Contribui��o;
          7  : NFe.Det[i].Imposto.PIS.CST := pis07;                             //(08)=pis08 - Opera��o Sem Incid�ncia da Contribui��o;
          8  : NFe.Det[i].Imposto.PIS.CST := pis08;                             //(09)=pis09 - Opera��o com Suspens�o da Contribui��o;
          9  : NFe.Det[i].Imposto.PIS.CST := pis09;
          49 : NFe.Det[i].Imposto.PIS.CST := pis49;
          50 : NFe.Det[i].Imposto.PIS.CST := pis50;
          51 : NFe.Det[i].Imposto.PIS.CST := pis51;
          52 : NFe.Det[i].Imposto.PIS.CST := pis52;
          53 : NFe.Det[i].Imposto.PIS.CST := pis53;
          54 : NFe.Det[i].Imposto.PIS.CST := pis54;
          55 : NFe.Det[i].Imposto.PIS.CST := pis55;
          56 : NFe.Det[i].Imposto.PIS.CST := pis56;
          60 : NFe.Det[i].Imposto.PIS.CST := pis60;
          61 : NFe.Det[i].Imposto.PIS.CST := pis61;
          62 : NFe.Det[i].Imposto.PIS.CST := pis62;
          63 : NFe.Det[i].Imposto.PIS.CST := pis63;
          64 : NFe.Det[i].Imposto.PIS.CST := pis64;
          65 : NFe.Det[i].Imposto.PIS.CST := pis65;
          66 : NFe.Det[i].Imposto.PIS.CST := pis66;
          67 : NFe.Det[i].Imposto.PIS.CST := pis67;
          70 : NFe.Det[i].Imposto.PIS.CST := pis70;
          71 : NFe.Det[i].Imposto.PIS.CST := pis71;
          72 : NFe.Det[i].Imposto.PIS.CST := pis72;
          73 : NFe.Det[i].Imposto.PIS.CST := pis73;
          74 : NFe.Det[i].Imposto.PIS.CST := pis74;
          75 : NFe.Det[i].Imposto.PIS.CST := pis75;
          98 : NFe.Det[i].Imposto.PIS.CST := pis98;
          99 : NFe.Det[i].Imposto.PIS.CST := pis99;                             //(99)=pis99 - Outras Opera��es;
        end;

      if (NFe.Det[i].Imposto.PIS.CST = pis01) or (NFe.Det[i].Imposto.PIS.CST = pis02) then
        begin
          NFe.Det[i].Imposto.PIS.vBC       := cdsNFIVLTOTAL.AsFloat;            // Q07 - Valor da Base de C�lculo do PIS
          NFe.Det[i].Imposto.PIS.pPIS      := cdsNFIPCPIS.AsFloat;              // Q08 - Al�quota do PIS (em percentual)
          NFe.Det[i].Imposto.PIS.qBCProd   := cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
          NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Al�quota do PIS (em reais)
          NFe.Det[i].Imposto.PIS.vPIS      := cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis50) then
        begin
          NFe.Det[i].Imposto.PIS.vBC  := cdsNFIVLTOTAL.AsFloat;                 // Q07 - Valor da Base de C�lculo do PIS
          NFe.Det[i].Imposto.PIS.pPIS := cdsNFIPCPIS.AsFloat;                   // Q08 - Al�quota do PIS (em percentual)
          NFe.Det[i].Imposto.PIS.vPIS := cdsNFIVALOR_PIS.AsFloat;               // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis03) then
        begin
          NFe.Det[i].Imposto.PIS.qBCProd   := cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
          NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Al�quota do PIS (em reais)
          NFe.Det[i].Imposto.PIS.vPIS      := cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis03) and (opcao1)then
        begin
          NFe.Det[i].Imposto.PIS.vBC  := cdsNFIVLTOTAL.AsFloat;                 // Q07 - Valor da Base de C�lculo do PIS
          NFe.Det[i].Imposto.PIS.pPIS := cdsNFIPCPIS.AsFloat;                   // Q08 - Al�quota do PIS (em percentual)
          NFe.Det[i].Imposto.PIS.vPIS := cdsNFIVALOR_PIS.AsFloat;               // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis03) and (not opcao1)then
        begin
          NFe.Det[i].Imposto.PIS.qBCProd   := cdsNFIQUANTIDA.AsFloat;           // Q10 - Quantidade Vendida
          NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Al�quota do PIS (em reais)
          NFe.Det[i].Imposto.PIS.vPIS      := cdsNFIVALOR_PIS.AsFloat;          // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis72) then
        begin
          NFe.Det[i].Imposto.PIS.vBC       := 0;                                // Q07 - Valor da Base de C�lculo do PIS
          NFe.Det[i].Imposto.PIS.qBCProd   := 0;                                // Q10 - Quantidade Vendida
          NFe.Det[i].Imposto.PIS.vAliqProd := 0;                                // Q11 - Al�quota do PIS (em reais)
          NFe.Det[i].Imposto.PIS.vPIS      := 0;                                // Q09 - Valor do PIS
        end;
      if (NFe.Det[i].Imposto.PIS.CST = pis09) then
        begin
            NFe.Det[i].Imposto.PIS.vBC       := 0;                              // Q07 - Valor da Base de C�lculo do PIS
            NFe.Det[i].Imposto.PIS.qBCProd   := cdsNFIQUANTIDA.AsFloat;         // Q10 - Quantidade Vendida
            NFe.Det[i].Imposto.PIS.vAliqProd := 0;                              // Q11 - Al�quota do PIS (em reais)
            NFe.Det[i].Imposto.PIS.vPIS      := 0;                              // Q09 - Valor do PIS
        end;
      {$ENDREGION}

      {$REGION 'PIS Substitui��o Tribut�ria'}
      if opcao1 then
         begin
          NFe.Det[i].Imposto.PISST.vBc := 0;        // R02 - Valor da Base de C�lculo do PIS
          NFe.Det[i].Imposto.PISST.pPis := 0;       // R03 - Al�quota do PIS (em percentual)
          NFe.Det[i].Imposto.PISST.vPIS := 0;       // R06 - Valor do PIS
         end;
      if not opcao1 then
         begin
          NFe.Det[i].Imposto.PISST.qBCProd := 0;    // R04 - Quantidade Vendida
          NFe.Det[i].Imposto.PISST.vAliqProd := 0;  // R05 - Al�quota do PIS (em reais)
          NFe.Det[i].Imposto.PISST.vPIS := 0;       // R06 - Valor do PIS
         end;
      {$ENDREGION}

      {$REGION 'Situa��o Tribut�ria do Cofins'}
      case cdsNFICSTCOFINS.AsInteger of                                         // S06 - C�digo de Situa��o Tribut�ria do Cofins
        1  : NFe.Det[i].Imposto.COFINS.CST := cof01;                            //(01) � Opera��o Tribut�vel (base de c�lculo = valor da opera��o al�quota normal (cumulativo/n�o cumulativo));
        2  : NFe.Det[i].Imposto.COFINS.CST := cof02;                            //(02) - Opera��o Tribut�vel (base de c�lculo = valor da opera��o
        3  : NFe.Det[i].Imposto.COFINS.CST := cof03;                            //(03) - Opera��o Tribut�vel (base de c�lculo = quantidade vendida x al�quota por unidade de produto);
        4  : NFe.Det[i].Imposto.COFINS.CST := cof04;                            //(04) - Opera��o Tribut�vel (tributa��o monof�sica (al�quota zero));
        5  : NFe.Det[i].Imposto.COFINS.CST := cof05;                            //(06) - Opera��o Tribut�vel (al�quota zero);
        6  : NFe.Det[i].Imposto.COFINS.CST := cof06;                            //(7) - Opera��o Isenta da Contribui��o;
        7  : NFe.Det[i].Imposto.COFINS.CST := cof07;                            //(08) - Opera��o Sem Incid�ncia da Contribui��o;
        8  : NFe.Det[i].Imposto.COFINS.CST := cof08;                            //(09) - Opera��o com Suspens�o da Contribui��o;
        9  : NFe.Det[i].Imposto.COFINS.CST := cof09;
        49 : NFe.Det[i].Imposto.COFINS.CST := cof49;
        50 : NFe.Det[i].Imposto.COFINS.CST := cof50;
        51 : NFe.Det[i].Imposto.COFINS.CST := cof51;
        52 : NFe.Det[i].Imposto.COFINS.CST := cof52;
        53 : NFe.Det[i].Imposto.COFINS.CST := cof53;
        54 : NFe.Det[i].Imposto.COFINS.CST := cof54;
        55 : NFe.Det[i].Imposto.COFINS.CST := cof55;
        56 : NFe.Det[i].Imposto.COFINS.CST := cof56;
        60 : NFe.Det[i].Imposto.COFINS.CST := cof60;
        61 : NFe.Det[i].Imposto.COFINS.CST := cof61;
        62 : NFe.Det[i].Imposto.COFINS.CST := cof62;
        63 : NFe.Det[i].Imposto.COFINS.CST := cof63;
        64 : NFe.Det[i].Imposto.COFINS.CST := cof64;
        65 : NFe.Det[i].Imposto.COFINS.CST := cof65;
        66 : NFe.Det[i].Imposto.COFINS.CST := cof66;
        67 : NFe.Det[i].Imposto.COFINS.CST := cof67;
        70 : NFe.Det[i].Imposto.COFINS.CST := cof70;
        71 : NFe.Det[i].Imposto.COFINS.CST := cof71;
        72 : NFe.Det[i].Imposto.COFINS.CST := cof72;
        73 : NFe.Det[i].Imposto.COFINS.CST := cof73;
        74 : NFe.Det[i].Imposto.COFINS.CST := cof74;
        75 : NFe.Det[i].Imposto.COFINS.CST := cof75;
        98 : NFe.Det[i].Imposto.COFINS.CST := cof98;
        99 : NFe.Det[i].Imposto.COFINS.CST := cof99;                            //(99) - Outras Opera��es;
      end;

      if (NFe.Det[i].Imposto.COFINS.CST = cof01) or (NFe.Det[i].Imposto.COFINS.CST = cof02) then
        begin
          NFe.Det[i].Imposto.COFINS.vBC     := cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de C�lculo da COFINS
          NFe.Det[i].Imposto.COFINS.pCOFINS := cdsNFIPCCOFINS.AsFloat;          // S08 - Al�quota da COFINS (em percentual)
          NFe.Det[i].Imposto.COFINS.vCOFINS := cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
        end;
      if (NFe.Det[i].Imposto.COFINS.CST = cof50) then
        begin
          NFe.Det[i].Imposto.COFINS.vBC     := cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de C�lculo da COFINS
          NFe.Det[i].Imposto.COFINS.pCOFINS := cdsNFIPCCOFINS.AsFloat;          // S08 - Al�quota da COFINS (em percentual)
          NFe.Det[i].Imposto.COFINS.vCOFINS := cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
        end;
      if NFe.Det[i].Imposto.COFINS.CST = cof03 then
        begin
          NFe.Det[i].Imposto.COFINS.vBCProd   := cdsNFIQUANTIDA.AsFloat;        // S09 - Quantidade Vendida
          NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Al�quota do COFINS (em reais)
          NFe.Det[i].Imposto.COFINS.vCOFINS   := cdsNFIVALOR_COFINS.AsFloat;    // S11 - Valor do COFINS
        end;
      if NFe.Det[i].Imposto.COFINS.CST = cof72 then
        begin
          NFe.Det[i].Imposto.COFINS.vBCProd   := 0;                             // S09 - Quantidade Vendida
          NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Al�quota do COFINS (em reais)
          NFe.Det[i].Imposto.COFINS.vCOFINS   := 0;                             // S11 - Valor do COFINS
        end;
      if ( NFe.Det[i].Imposto.COFINS.CST = cof99) and (opcao1) then
        begin
          NFe.Det[i].Imposto.COFINS.vBC     := cdsNFIVLTOTAL.AsFloat;           // S07 - Valor da Base de C�lculo da COFINS
          NFe.Det[i].Imposto.COFINS.pCOFINS := cdsNFIPCCOFINS.AsFloat;          // S08 - Al�quota da COFINS (em percentual
          NFe.Det[i].Imposto.COFINS.vCOFINS := cdsNFIVALOR_COFINS.AsFloat;      // S11 - Valor do COFINS
        end;
      if ( NFe.Det[i].Imposto.COFINS.CST = cof99) and (not opcao1) then
        begin
          NFe.Det[i].Imposto.COFINS.qBCProd   := 0;                             // S09 - Quantidade Vendida
          NFe.Det[i].Imposto.COFINS.vAliqProd := 0;                             // S10 - Al�quota do COFINS (em reais)
          NFe.Det[i].Imposto.COFINS.vCOFINS   := cdsNFIVALOR_COFINS.AsFloat;    // S11 - Valor do COFINS
        end;
      {$ENDREGION}

//        {$REGION 'COFINS Substitui��o Tribut�ria'}
//        if opcao1 then
//           begin
//            NFe.Det[i].Imposto.COFINSST.vBC := 0;          // T02 - Valor da Base de C�lculo da COFINS
//            NFe.Det[i].Imposto.COFINSST.pCOFINS := 0;      // T03 - Al�quota da COFINS (em percentual)
//            NFe.Det[i].Imposto.COFINSST.vCOFINS := 0;      // T06 - Valor do COFINS
//           end;
//        if not opcao1 then
//           begin
//            NFe.Det[i].Imposto.COFINSST.qBCProd := 0;      // T04 - Quantidade Vendida
//            NFe.Det[i].Imposto.COFINSST.vAliqProd := 0;    // T05 - Al�quota do COFINS (em reais)
//            NFe.Det[i].Imposto.COFINSST.vCOFINS := 0;      // T06 - Valor do COFINS
//           end;
//        {$ENDREGION}
//
//        {$REGION 'ISSQN'}
//        //NFe.Det[i].Imposto.ISSQN.vBC := 0;               // U02 - Valor da Base de C�lculo do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.vAliq := 0;             // U03 - Al�quota do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.vISSQN := 0;            // U04 - Valor do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.cMunFG := 0;            // U05 - C�digo do munic�pio de ocorr�ncia do fato gerador do ISSQN
//        //NFe.Det[i].Imposto.ISSQN.cListServ := 0;         // U06 - C�digo da Lista de Servi�os
//        {$ENDREGION}
//
      cdsNFI.Next;
    end;
  {$ENDREGION}

  {$REGION 'Valores Totais referentes ao ICMS'}
  NFe.Total.ICMSTot.vBC     := cdsNFBASEICMS.AsFloat;                           // W03 - Base de C�lculo do ICMS
  NFe.Total.ICMSTot.vICMS   := cdsNFVLTOTICMS.AsFloat;                          // W04 - Valor Total do ICMS
  NFe.Total.ICMSTot.vBCST   := 0;                                               // W05 - Base de C�lculo do ICMS ST
  NFe.Total.ICMSTot.vST     := 0;                                               // W06 - Valor Total do ICMS ST
  NFe.Total.ICMSTot.vProd   := cdsNFVLTOTMER.AsFloat;                           // W07 - Valor Total dos produtos e servi�os

  if CheckBoxCobraFrete.Checked = True then
    NFe.Total.ICMSTot.vFrete := cdsNFVLTOTFRE.AsFloat                           // W08 - Valor Total do Frete
  else
    NFe.Total.ICMSTot.vFrete := cdsNFVLTOTFRE.AsFloat;                          // W08 - Valor Total do Frete

  NFe.Total.ICMSTot.vSeg    := 0;                                               // W09 - Valor Total do Seguro
  NFe.Total.ICMSTot.vDesc   := cdsNFVLDESC.AsFloat;                             // W10 - Valor Total do Desconto
  //NFe.Total.ICMSTot.vII := 0;                                                 // W11 - Valor Total do II
  NFe.Total.ICMSTot.vIPI    := cdsNFVLTOTIPI.AsFloat;                           // W12 - Valor Total do IPI
  NFe.Total.ICMSTot.vPIS    := cdsNFVALOR_TOTAL_PIS.AsFloat;                    // W13 - Valor do PIS
  NFe.Total.ICMSTot.vCOFINS := cdsNFVALOR_TOTAL_COFINS.AsFloat;                 // W14 - Valor do COFINS
  NFe.Total.ICMSTot.vOutro  := 0;                                               // W15 - Outras Despesas acess�rias
  NFe.Total.ICMSTot.vNF     := cdsNFVLTOTNF.AsFloat;                            // W16 - Valor Total da NF-e
  {$ENDREGION}

  {$REGION 'Valores Totais referentes ao ISSQN'}
  //NFe.Total.ISSQNtot.vServ := 0;     // W18 - Valor Total dos Servi�os sob n�oincid�ncia ou n�o tributados pelo ICMS
  //NFe.Total.ISSQNtot.vBC := 0;       // W19 - Base de C�lculo do ISS
  //NFe.Total.ISSQNtot.vISS := 0;      // W20 - Valor Total do ISS
  //NFe.Total.ISSQNtot.vPIS := 0;      // W21 - Valor do PIS sobre servi�os
  //NFe.Total.ISSQNtot.vCOFINS := 0;   // W22 - Valor do COFINS sobre servi�os
  {$ENDREGION}

  {$REGION 'Reten��es de Tributos Notas de Servi�o'}
  //NFe.Total.retTrib.vRetPIS := 0;    // W24 - Valor Retido de PIS
  //NFe.Total.retTrib.vRetCOFINS := 0; // W25 - Valor Retido de COFINS
  //NFe.Total.retTrib.vRetCSLL := 0;   // W26 - Valor Retido de CSLL
  //NFe.Total.retTrib.vBCIRRF := 0;    // W27 - Base de C�lculo do IRRF
  //NFe.Total.retTrib.vIRRF := 0;      // W28 - Valor Retido do IRRF
  //NFe.Total.retTrib.vBCRetPrev := 0; // W29 - Base de C�lculo da Reten��o da Previd�ncia Social
  //NFe.Total.retTrib.vRetPrev := 0;   // W30  - Valor da Reten��o da Previd�ncia Social
  {$ENDREGION}

  {$REGION 'Transportadora'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Informa��es do Transporte da NF-e - <transp> - Ocorr�ncia 1-1                                     *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

  if ((cdsNFFRETEC.AsInteger = 1) or (cdsNFFRETEC.AsInteger = 2)) then
    begin
      case cdsNFFRETEC.AsInteger of                                             //X02 - Modalidade do frete
        1 : NFe.Transp.modFrete := mfContaEmitente;                             //(0)=mfContaEmitente     � por conta do emitente;
        2 : NFe.Transp.modFrete := mfContaDestinatario;                         //(1)=mfContaDestinatario � por conta do destinat�rio)
      end;
      NFe.Transp.Transporta.CNPJCPF := (cdsNFTRANSP_CPF_CNPJ.AsString);         // X05 - Informar o CNPJ ou o CPF do Transportador, preenchendo os zeros n�o significativos.
      NFe.Transp.Transporta.xNome   := cdsNFTRANSPORTADOR.AsString;             // X06 - Raz�o Social ou nome
      NFe.Transp.Transporta.IE      := cdsNFTRANSP_RG_IE.AsString;              // X07 - Inscri��o Estadual
      NFe.Transp.Transporta.xEnder  := cdsNFTRANSP_ENDERECO.AsString;           // X08 - Endere�o Completo
      NFe.Transp.Transporta.xMun    := cdsNFTRANSP_CIDADE.AsString;             // X09 - Nome do munic�pio
      NFe.Transp.Transporta.UF      := cdsNFTRANSP_UF.AsString;                 // X10 - Sigla da UF
      {                                                                         //       TAG de grupo de Reten��o do ICMS do transporte - <retTransp> - Ocorr�ncia 0-1
      NFe.Transp.retTransp.vServ := 0;                                          // X12 - Valor do Servi�o
      NFe.Transp.retTransp.vBCRet := 0;                                         // X13 - BC da Reten��o do ICMS
      NFe.Transp.retTransp.pICMSRet := 0;                                       // X14 - Al�quota da Reten��o
      NFe.Transp.retTransp.vICMSRet := 0;                                       // X15 - Valor do ICMS Retido
      NFe.Transp.retTransp.CFOP := IBQ1.FieldByName('CDNATOPE').AsString;       // X16 - CFOP (Utilizar Tabela de CFOP)
      NFe.Transp.retTransp.cMunFG := IBQ1.FieldByName('COD_IBGE').AsInteger;    // X17 - C�digo do munic�pio de ocorr�ncia do fato gerador do ICMS do transporte (Tabela do IBGE)
      }                                                                         //       TAG de grupo Ve�culo - <veicTransp> - Ocorr�ncia 0-1
      NFe.Transp.veicTransp.placa := cdsNFPLACA.AsString; // X19 - Placa do Ve�culo
      NFe.Transp.veicTransp.UF    := cdsNFESTADO_PLACA.AsString;                // X20 - Sigla da UF
      NFe.Transp.veicTransp.RNTC  := cdsNFCDANTT.AsString;                      // X21 - Registro Nacional de Transportador de Carga (ANTT)
      {for i := 0 to 1 do
         begin
           NFe.Transp.Reboque.Add;                                              //       TAG de grupo Reboque - <reboque> - Ocorr�ncia 0-2
           NFe.Transp.Reboque[i].placa := '';                                   // X23 - Placa do Ve�culo
           NFe.Transp.Reboque[i].UF := '';                                      // X24 - Sigla da UF
           NFe.Transp.Reboque[i].RNTC := '';                                    // X25 - Registro Nacional de Transportador de Carga (ANTT)
         end;}
      for i := 0 to 0 do
        begin
          NFe.Transp.Vol.add;                                                   //       TAG de grupo Volumes - <vol> - Ocorr�ncia 0-N
          NFe.Transp.Vol[i].qVol  := cdsNFQUANTIDA.AsInteger;                   // X27 - Quantidade de volumes transportados
          NFe.Transp.vol[i].esp   := cdsNFESPECIE.AsString;                     // X28 - Esp�cie dos volumes transportados
          NFe.Transp.Vol[i].marca := cdsNFXLOCEMBARQ.AsString;                  // X29 - Marca dos volumes transportados
          NFe.Transp.Vol[i].nVol  := ' ';                                       // X30 - Numera��o dos volumes transportados
          NFe.Transp.Vol[i].pesoL := cdsNFPESOLIQT.AsInteger;                   // X31 - Peso L�quido (em kg)
          NFe.Transp.Vol[i].pesoB := cdsNFPESOBRUT.AsInteger;                   // X32 - Peso Bruto (em kg)
          {
          for j := 0 to 1 do
            begin
              NFe.transp.Vol[i].lacres.add;                                     //TAG de grupo de Lacres - <lacres> - Ocorr�ncia 0-N
              NFe.transp.Vol[i].lacres[j].nLacre := '';                         //X34 - N�mero dos Lacres
                                                                                //Para Combust�veis, um Caminh�o (Toco, Truck, Carreta, Bi-Tren) pode ter at� 32 bocas.
                                                                                // Ou seja at� 32 lacres. Cada lacre pode ser um n�mero de at� 8 digitos.
            end;}
        end
    end
  else
    if cdsNFFRETEC.AsInteger = 9 then
      NFe.Transp.modFrete := mfSemFrete;
  {$ENDREGION}

  {$REGION 'Duplicatas'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Cobran�a - <cobr> - Ocorr�ncia 0-1                                                                *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
  if DMPrincipal.cdsPNFeIMPRIME_FATURA.AsInteger = 1 then
    begin                                                                       //>>>   TAG de grupo da Fatura - <fat> - Ocorr�ncia 0-1
      NFe.Cobr.Fat.nFat  := cdsNFNRNF.AsString;                                 //Y03 - N�mero da Fatura
      NFe.Cobr.Fat.vOrig := cdsNFVLTOTNF.AsFloat;                               //Y04 - Valor Original da Fatura
      NFe.Cobr.Fat.vDesc := cdsNFVLDESC.AsFloat;                                //Y05 - Valor do desconto
      NFe.Cobr.Fat.vLiq  := cdsNFVLTOTNF.AsFloat;                               //Y06 - Valor L�quido da Fatura
      for i := 0 to cdsCTR.RecordCount -1 do
        begin
          NFe.Cobr.Dup.Add;                                                     //>>>   TAG de grupo da Duplicata - <dup> - Ocorr�ncia 0-N
          NFe.Cobr.Dup[i].nDup  := cdsNFNRNF.AsString+' - '+cdsCTRPARCELA.AsString; // Y08 - N�mero da Duplicata
          NFe.Cobr.Dup[i].dVenc := cdsCTRVENCIMENTO.AsFloat;                    // Y09 - Data de vencimento
          NFe.Cobr.Dup[i].vDup  := cdsCTRVALOR.AsFloat;                         // Y10 - Valor da duplicata
          cdsCTR.Next;
        end;
    end;
  {$ENDREGION}

  {$REGION 'Dados Adicionais'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG de grupo de Informa��es Adicionais - <infAdic> - Ocorr�ncia 0-1                                               *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
   NFe.InfAdic.infAdFisco := '';
   // Z02 - Informa��es Adicionais de Interesse do Fisco
   //Pedido do cliente e codigo interno do cliente caso o mesmo exiga

//   IBQ8.Active:=False;
//   IBQ8.SQL.Clear;
//   IBQ8.SQL.Add('Select NFITEM.NRNF, NFITEM.NRSEQUEN, NFITEM.PEDIDCLI, NFITEM.SERIE, NFITEM.NRPEDIDO, '''' as CODIGO_CLIENTE');
//
//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      IBQ8.SQL.Add(',PEDIDO.CODIGO_CLIENTE, Pedido.DESCRICAO_CLIENTE, Clientes.NOSSOCODIGO');
//
//   IBQ8.SQL.Add('from NFITEM');
//
//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      Begin
//       IBQ8.SQL.Add('inner join pedido   on (nfitem.nrpedido=pedido.nrpedido)');
//       IBQ8.SQL.Add('inner join Clientes on (Pedido.CDCLIENTE=Clientes.CDCLIENTE)');
//      End;
//   IBQ8.SQL.Add('Where NFITEM.NRNF ='''+IBQ1.FieldByName('NRNF').Asstring+''' and nfitem.SERIE=''1'' and (NFITEM.NR_EMPRESA ='''+IBQ1.FieldByName('NR_EMPRESA').Asstring+''') ');
//   IBQ8.Active:=True;

//   if StrToFloatDef(IBQ1.FieldByName('NRPEDIDO').Asstring,0)<999993 then
//      Begin
//       If PerguntaNFe.CheckBox4.Checked=True Then
//          Begin
//           If Trim(IBQ8.FieldByName('NOSSOCODIGO').Asstring)<>'' Then
//              PedidoCliente := PedidoCliente + ' Nosso C�digo: ' + Trim(IBQ8.FieldByName('NOSSOCODIGO').Asstring);
//          End;
//      End;
   //Validade do Lote
//   Validade:='';
//   if Trim(IBQ1.FieldByName('NFE_LOTE_VALIDADE').Asstring)='S' then
//      Begin
//       IBQ8.First;
//       While Not IBQ8.Eof do
//             Begin
//              Validade:= Validade+' Item: '+IBQ8.FieldByName('NRSEQUEN').Asstring+ ' Lote: '+FormatFloat('0000000000', StrToIntDef(IBQ4.FieldByName('NRPEDIDO').AsString,0))+' Validade: '+FormatDateTime('ddmmyyyy',(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime)+360);
//              IBQ8.Next;
//             End;
//      End;
  cdsNFI.First;
  while not cdsNFI.Eof do
    begin
      if (Trim(cdsNFIPEDIDCLI.Asstring) <> '') then
        begin
          PedidoCliente := PedidoCliente + ' Item: ' + cdsNFINRSEQUEN.AsString;

          if Trim(cdsNFIPEDIDCLI.Asstring) <> '' then
            PedidoCliente := PedidoCliente + ' Pedido Cliente: '+ cdsNFIPEDIDCLI.Asstring+'  ';

//          if PerguntaNFe.CheckBox3.Checked = True then
//            begin
//                If Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' C�d. Cliente: '+Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring);
//            end;
//            If PerguntaNFe.CheckBox1.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Desc. Cliente: '+Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring);
//               End;
        end;
        cdsNFI.Next;
    end;
//   IBQ8.First;

//   If CheckBox2.Checked=True Then
//      Begin
//       PedidoCliente:=PedidoCliente+'  //  ';
//       While Not IBQ8.Eof do
//           Begin
//            If Trim(IBQ8.FieldByName('PEDIDCLI').Asstring)<>'' Then
//               PedidoCliente:=PedidoCliente+' Item: '+IBQ8.FieldByName('NRSEQUEN').Asstring+' Nr. Lote: '+IBQ8.FieldByName('NRPEDIDO').Asstring+'  ';
//            If PerguntaNFe.CheckBox3.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' C�d. Cliente: '+Trim(IBQ8.FieldByName('CODIGO_CLIENTE').Asstring);
//               End;
//            If PerguntaNFe.CheckBox1.Checked=True Then
//               Begin
//                If Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring)<>'' Then
//                   PedidoCliente:=PedidoCliente+' Desc. Cliente: '+Trim(IBQ8.FieldByName('DESCRICAO_CLIENTE').Asstring);
//               End;
//            IBQ8.Next;
//           End;
//      End;

  NFe.InfAdic.infCpl := PedidoCliente;
  NFe.InfAdic.infCpl := cdsNFOBS_FISCAL.AsString;
  //+' '+
                        //Validade      +
                        //'. Local de entrega: '+IBQ1.FieldByName('LOCENT').AsString;// Z03 - Informa��es Complementares de interesse do Contribuinte
  {for i := 0 to 9 do
  begin
    NFe.InfAdic.obsCont.Add;                                                    // >>>   TAG de grupo do campo de uso livre do contribuinte - <obsCont> - Ocorr�ncia 0-10
    NFe.InfAdic.obsCont[i].xCampo := '';                                        // Z05 - Identifica��o do campo (TAM : 1-20)
    NFe.InfAdic.obsCont[i].xTexto := '';                                        // Z06 - Conte�do do campo (TAM : 1-60)
  end;
  for i := 0 to 9 do
  begin
    NFe.InfAdic.obsFisco.Add;                                                   // >>>   TAG de grupo do campo de uso livre do Fisco - <obsFisco> - Ocorr�ncia 0-10
    NFe.InfAdic.obsFisco[i].xCampo := '';                                       // Z08 - Identifica��o do campo (TAM : 1-20)
    NFe.InfAdic.obsFisco[i].xTexto := '';                                       // Z09 - Conte�do do campo (TAM : 1-60)
  end;
  for i := 0 to 1 do
  begin
    NFe.InfAdic.procRef.Add;                                                    // >>>   Tag de grupo do processo referenciado - <procRef> - Ocorr�ncia 0-N
    NFe.InfAdic.procRef[i].nProc := '';                                         // Z08 - Indentificador do processo ou ato concess�rio
    NFe.InfAdic.procRef[i].indProc := ipSEFAZ;                                  // Z09 - Indicador da origem do processo  (0 - SEFAZ; 1 - Justi�a Federal; 2 - Justi�a Estadual; 3 - Secex/RFB; 9 - Outros)
  end;}
  {$ENDREGION}

  {$REGION 'Expota��o ****Implementar****'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG do Grupo de Exporta��o - <exporta> - Ocorr�ncia 0-1                                                           *)
  (* ----------------------------------------------------------------------------------------------------------------- *)

//  if Copy(IBQ1.FieldByName('CDNATOPE').AsString,1,1) = '7' then //O grupo sera gravado se um dos campos abaixo for preenchido
//     Begin
//      NFe.exporta.UFSaidaPais:= Trim(IBQ1.FieldByName('UFEMBARQ').AsString);   // ZA02 - Sigla da UF onde ocorrer� o Embarque dos produtos
//      NFe.exporta.xLocExporta:= Trim(IBQ1.FieldByName('XLOCEMBARQ').AsString); // ZA03 - Local onde ocorrer� o Embarque dos produtos
//      if IBQ1.FieldByName('COD_PAIS').AsInteger=5860 Then
//         NFe.exporta.xLocDespacho:='PT DA AMIZADE(BRASIL-PARAGUAY)Foz do Igua�u/PR 9.50.19.01-4';
//     End;
  {$ENDREGION}

  {$REGION 'Compras ****Implementar****'}
  (* ----------------------------------------------------------------------------------------------------------------- *)
  (* TAG do Grupo de Compra - <compra> - Ocorr�ncia 0-1                                                                *)
  (* ----------------------------------------------------------------------------------------------------------------- *)
                          //        O grupo sera gravado se um dos campos abaixo for preenchido
//  NFe.compra.xNEmp := '';                                      // ZB02 - Nota de Empenho quando se tratar de compras p�blicas
//  NFe.compra.xPed  := IBQ4.FieldByName('PEDIDCLI').AsString;  // ZB03 - Pedido do Cliente
//  NFe.compra.xCont := ''; // ZB04 - Contrato de Compra
  {$ENDREGION}

  {$REGION 'Gera��o do XML'}
  (* ------------------------------------------------------------------------ *)
  (* TAG do Assinatura - <signature>                                          *)
  (* ------------------------------------------------------------------------ *)
  //        Opcionalmente pode gerar o template da assinatura - Isso n�o sginifica assinar o arquivo!
  NFe.signature.URI := NFe.infNFe.Id;
  (****************************************************************************)
  (*                G E R A R   O   A R Q U I V O   X M L                     *)
  (****************************************************************************)
  // Criar a class TNFeW para a gera��o do arquivo conforme os dados inseridos
  // em NFe passar o objeto que cont�m os dados para a gera��o do arquivo xml
  NFE.infNFe.Versao                       := 3.10;
  NFeW                                    := TNFeW.Create(NFe);
  // Informa as op��es especificas de TNFeW
  //NFeW.schema := tsPL005C;
  NFeW.Opcoes.AjustarTagNro               := True;                              // Ajusta o tamanho do campo para 3 posi��es com zero a esquerda
  NFew.Opcoes.GerarTagIPIparaNaoTributado := True;                              // No caso de produto n�o tributado gera a TAG especifica
  NFeW.Opcoes.GerarTXTSimultaneamente     := False;                             // Possibilita gerar um arquivo TXT do formato do programa SEFAZ-SP
  NFeW.Opcoes.NormatizarMunicipios        := False;                             // Realiza a normatiza��o do nome do municipio conforme a tabela do IBGE
  NFeW.Opcoes.PathArquivoMunicipios       := 'C:\Documents and Settings\administrador\Desktop\0.6.0\MunIBGE'; // Indicar para aonde est�o os arquivo com os nomes dos municipios
  NFeW.Opcoes.GerarTagAssinatura          := taNunca;                           // Op��o de gerar o template da assinature em branco
  NFeW.Opcoes.ValidarInscricoes           := False;                             // Valida as Inscri��es. (� melhor quando essa valida��o � feita no ERP)
  NFeW.Gerador.Opcoes.IdentarXML          := False;                             // Os arquivos que ser�o enviados para o SEFAZ n�o devem estar identados
  NFeW.Gerador.Opcoes.TamanhoIdentacao    := 3;                                 // Tamanho da identa��o do arquivo
  NFeW.Gerador.Opcoes.FormatoAlerta       := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // Formato em que a mensagem vai ser gravada a ListaDeAlertas
  NFeW.Gerador.Opcoes.RetirarEspacos      := True;                              // Retira os espa�os em branco duplos nas tag do xml
  NFeW.Gerador.Opcoes.SuprimirDecimais    := False;                             // Ignora valores n�o significativos nas casa decimais
  NFeW.Gerador.Opcoes.SomenteValidar      := False;                             // N�o gera o arquivo apenas valida as informa��es
  // Gerar o arquivo XML
  NFeW.GerarXml;
  // Carrega erros
  // if NFeW.Gerador.ListaDeAlertas.Count > 0 then
  //  memo1.Lines.Add(NFeW.gerador.ListaDeAlertas.Text);
  // Gravar o arquivo no HD
  //if NFeW.Gerador.ListaDeAlertas.Count = 0 then // Se n�o contiver nenhum erro, grava
  //begin

  NFeW.gerador.SalvarArquivo(Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString) + NFeW.ObterNomeArquivo); // N�o � necess�rio informar o parametro fpXML pois ele � default

  if NFeW.Opcoes.GerarTXTSimultaneamente then
    NFeW.gerador.SalvarArquivo(Trim(DMPrincipal.cdsEmpresaPATH_NFE.AsString)+ NFeW.ObterNomeArquivo + '.txt',fgTXT); // Informar o parametro fgTXT para gerar o arquivo no formato TEXTO

  Chave := NFeW.ObterNomeArquivo;
  NFeW.Free;
  NFe.Free;
  {$ENDREGION}

  {$REGION 'Atualiza Tipo de Emiss�o'}
  cdsNF.Edit;
  cdsNFNREVENTO.AsInteger := 0;
  cdsNFCHAVE.AsString     := Copy(Chave,0,44);

  if Trim(ComboBox1.Text) = 'Normal' then
    cdsNFTPEMIS.AsFloat := 1
  else
    if Trim(ComboBox1.Text) = 'Contingencia' then
      cdsNFTPEMIS.AsFloat := 2
    else
      if Trim(ComboBox1.Text) = 'SCAN' then
        cdsNFTPEMIS.AsFloat := 3
      else
        if (Trim(ComboBox1.Text) = 'DPEC') or (Trim(ComboBox1.Text) = 'EPEC') then
          cdsNFTPEMIS.AsFloat := 4
        else
          if Trim(ComboBox1.Text) = 'FSDA' then
            cdsNFTPEMIS.AsFloat := 5;

  cdsNF.Post;
  cdsNF.ApplyUpdates(0);
  {$ENDREGION}

  BitBtn1.Enabled := True;
end;

end.
