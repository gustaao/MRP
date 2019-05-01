unit TelaNF_p;

interface
 {$IF CompilerVersion >= 21.0}
 {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
 {$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, JvToolEdit, DB,
  IBQuery, Mask, JvExControls, JvExMask, JvNavigationPane, JvExStdCtrls, IBDatabase, IBCustomDataSet, JvXPCore, JvXPButtons,
  ComCtrls, JvDBLookup, ExtCtrls;
type
  TTelaNF = class(TForm)
    GroupBox1: TGroupBox;
    GroupBoxITEM: TGroupBox;
    GroupBox3: TGroupBox;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    LabelNumeroPedido: TLabel;
    LabelClifor: TLabel;
    MaskEditCodigoCli_For: TMaskEdit;
    MaskEditNomeCli: TMaskEdit;
    Label8: TLabel;
    Label10: TLabel;
    MaskEdit8: TMaskEdit;
    Label11: TLabel;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    MaskEditPCFRETE: TMaskEdit;
    MaskEdit12: TMaskEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    MaskEdit19: TMaskEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    MaskEdit22: TMaskEdit;
    Label26: TLabel;
    Label27: TLabel;
    MaskEdit23: TMaskEdit;
    MaskEdit24: TMaskEdit;
    Label32: TLabel;
    MaskEditVLUNIT: TMaskEdit;
    MaskEditVLTOTAL: TMaskEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    MaskEditVLTOTNF: TMaskEdit;
    MaskEditVLTOTMER: TMaskEdit;
    MaskEditVLTOTICMS: TMaskEdit;
    MaskEditVLTOTIPI: TMaskEdit;
    MaskEdit36: TMaskEdit;
    MaskEdit37: TMaskEdit;
    Label41: TLabel;
    ComboBoxFatura: TComboBox;
    ComboBoxFrete: TComboBox;
    ComboBoxUnidade: TComboBox;
    MaskEdit17: TMaskEdit;
    ComboBoxBaixa: TComboBox;
    Label42: TLabel;
    Label43: TLabel;
    ComboBoxEspecie: TComboBox;
    GroupBox6: TGroupBox;
    LabelITEM: TLabel;
    MaskEditBASEICMS: TMaskEdit;
    Label46: TLabel;
    MaskEditVLTOTFRE: TMaskEdit;
    Label48: TLabel;
    LabelICMSFRETE: TLabel;
    MaskEditICMSFRETE: TMaskEdit;
    MaskEditPESOLIQT: TMaskEdit;
    LabelPL: TLabel;
    LabelPB: TLabel;
    MaskEditPESOBRUT: TMaskEdit;
    Label9: TLabel;
    MaskEditNFQUANTIDA: TMaskEdit;
    MaskEditCondpg: TMaskEdit;
    MaskeditNMGUERRA: TMaskEdit;
    MaskEditNatOPdesc: TMaskEdit;
    ComboBoxConsumidorFinal: TComboBox;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Maskeditclafisca: TMaskEdit;
    MaskEdit28: TMaskEdit;
    Label31: TLabel;
    MaskEditBeneficio: TMaskEdit;
    MaskEdit27: TMaskEdit;
    Label30: TLabel;
    Label29: TLabel;
    MaskEdit26: TMaskEdit;
    LabelIPI: TLabel;
    LabelIPIOriginal: TLabel;
    MaskEditVLTOTISS: TMaskEdit;
    Label5: TLabel;
    Label45: TLabel;
    LabelICMORIGINAL: TLabel;
    MaskEditICM: TMaskEdit;
    Label37: TLabel;
    Label47: TLabel;
    MaskEditSolicitante: TMaskEdit;
    Label6: TLabel;
    MaskEditPercentualPIS: TMaskEdit;
    JvNavPanelHeader2: TJvNavPanelHeader;
    JvNavPanelHeader1: TJvNavPanelHeader;
    Label49: TLabel;
    JvDateEditDTENTREGAPED: TJvDateEdit;
    Label50: TLabel;
    MaskEditBASEIPI: TMaskEdit;
    MaskEditValidacao: TMaskEdit;
    Label51: TLabel;
    MaskEditVALIDADOR_PEDIDO: TMaskEdit;
    JvNavPanelHeader3: TJvNavPanelHeader;
    BitBtnGravaNF: TBitBtn;
    BitBtnLimpaCamposItem: TBitBtn;
    JvNavPanelHeaderCE: TJvNavPanelHeader;
    MaskEditItensNota: TMaskEdit;
    Label52: TLabel;
    Label53: TLabel;
    MaskEditVLTOTPIS: TMaskEdit;
    MaskEditVLTOTCOFINS: TMaskEdit;
    MaskEditDescClass: TMaskEdit;
    Label54: TLabel;
    MaskEditObservacaoFiscald: TMaskEdit;
    MaskEditIPI_TIPO: TMaskEdit;
    Label19: TLabel;
    Label55: TLabel;
    MaskEditQtdApontada: TMaskEdit;
    MaskEditI_S_T: TMaskEdit;
    Label15: TLabel;
    MaskEditFATORQ: TMaskEdit;
    MaskEditBaixaAT: TMaskEdit;
    Label56: TLabel;
    Label57: TLabel;
    MaskEditPORTADORE: TMaskEdit;
    JvDateEditV1: TJvDateEdit;
    JvDateEditV2: TJvDateEdit;
    JvDateEditv3: TJvDateEdit;
    JvDateEditV4: TJvDateEdit;
    JvDateEditV5: TJvDateEdit;
    JvDateEditV6: TJvDateEdit;
    MaskEditUSOCONSUMO_ABR: TMaskEdit;
    MaskEditDiferimento: TMaskEdit;
    Label58: TLabel;
    Label59: TLabel;
    MaskEditSV: TMaskEdit;
    Label60: TLabel;
    MaskEditSVD: TMaskEdit;
    MaskEditPercentualCOFINS: TMaskEdit;
    Label28: TLabel;
    MaskEditPISSN: TMaskEdit;
    MaskEditCOFINSSN: TMaskEdit;
    Label61: TLabel;
    Label62: TLabel;
    MaskEditCDNATOPEITEM: TMaskEdit;
    Label16: TLabel;
    MaskEditDescricaoNatopeitem: TMaskEdit;
    MaskEditPIS_COFINS: TMaskEdit;
    MaskEditEXPORTADOR: TMaskEdit;
    Label4: TLabel;
    Label73: TLabel;
    MaskEditREDUCAO_ICMS_CLIENTE: TMaskEdit;
    MaskEditCXPR2: TMaskEdit;
    Label74: TLabel;
    GroupBox10: TGroupBox;
    DV1: TCheckBox;
    DV2: TCheckBox;
    DV3: TCheckBox;
    DV4: TCheckBox;
    DV5: TCheckBox;
    DV6: TCheckBox;
    DV7: TCheckBox;
    DV8: TCheckBox;
    DV9: TCheckBox;
    DV10: TCheckBox;
    DV20: TCheckBox;
    DV19: TCheckBox;
    DV18: TCheckBox;
    DV17: TCheckBox;
    DV16: TCheckBox;
    DV15: TCheckBox;
    DV14: TCheckBox;
    DV13: TCheckBox;
    DV12: TCheckBox;
    DV11: TCheckBox;
    DV30: TCheckBox;
    DV29: TCheckBox;
    DV28: TCheckBox;
    DV27: TCheckBox;
    DV26: TCheckBox;
    DV25: TCheckBox;
    DV24: TCheckBox;
    DV23: TCheckBox;
    DV22: TCheckBox;
    DV21: TCheckBox;
    DV31: TCheckBox;
    ComboBoxPortador: TComboBox;
    LabelPortador: TLabel;
    GroupBoxExportacao: TGroupBox;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    MaskEditUFEMBARQ: TMaskEdit;
    MaskEditxLocEmbarq: TMaskEdit;
    Label78: TLabel;
    MaskEditPedidoClienteItem: TMaskEdit;
    BitBtnIncluiItem: TJvXPButton;
    Label80: TLabel;
    MaskEditPlaca: TMaskEdit;
    Label81: TLabel;
    ComboBoxEstado: TComboBox;
    Label82: TLabel;
    MaskEditCST_PIS: TMaskEdit;
    Label83: TLabel;
    MaskEditCST_COFINS: TMaskEdit;
    ComboBoxTIPO_RODADO: TComboBox;
    Label84: TLabel;
    BitBtnConsiste: TBitBtn;
    Label85: TLabel;
    MaskEditQTDFaturada: TMaskEdit;
    Label86: TLabel;
    MaskEditLIMITA_1_PEDIDOCLI_NF: TMaskEdit;
    MaskEditPEDIDO_CLIENTE_O: TMaskEdit;
    Label87: TLabel;
    Consiste_I: TBitBtn;
    MaskEditPEDIDO_CLIENTE_2: TMaskEdit;
    MaskEditPEDIDO_CLIENTE_3: TMaskEdit;
    MaskEditPGTO_CHEQUE: TMaskEdit;
    LabelNotaFiscalReferencial: TLabel;
    MaskEditRefNF: TMaskEdit;
    LabelNFEReferencial: TLabel;
    MaskEditREFNFE: TMaskEdit;
    LabelMotivoEmissao: TLabel;
    ComboBoxMotivoEmissao: TJvDBLookupEdit;
    LabelReferenciaMotivoEmissao: TLabel;
    MaskEditReferenciaMotivoEmissao: TMaskEdit;
    MaskEditJutifica: TMaskEdit;
    MaskEditENQUADRAMENTO_IPI: TMaskEdit;
    MaskEditNF_PALETE: TMaskEdit;
    MaskEditGTIN_EAN: TMaskEdit;
    Label63: TLabel;
    Label44: TLabel;
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    Cancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditCodigoCli_ForExit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit9Exit(Sender: TObject);
    procedure MaskEdit10Exit(Sender: TObject);
    procedure MaskEdit17Exit(Sender: TObject);
    procedure ComboBoxFaturaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvDateEdit2Enter(Sender: TObject);
    procedure JvDateEdit2Exit(Sender: TObject);
    procedure ComboBoxFreteExit(Sender: TObject);
    procedure ComboBoxEspecieExit(Sender: TObject);
    procedure MaskEdit26Exit(Sender: TObject);
    procedure MaskEdit27Exit(Sender: TObject);
    procedure MaskEdit28Exit(Sender: TObject);
    procedure ComboBoxBaixaExit(Sender: TObject);
    procedure BitBtnGravaNFClick(Sender: TObject);
    procedure MaskEditNFQUANTIDAExit(Sender: TObject);
    procedure BitBtnIncluiItemClick(Sender: TObject);
    procedure BitBtnLimpaCamposItemClick(Sender: TObject);
    procedure MaskEdit12Exit(Sender: TObject);
    procedure JvDateEdit1Exit(Sender: TObject);
    procedure MaskEdit8Exit(Sender: TObject);
    procedure MaskEditPESOBRUTExit(Sender: TObject);
    procedure MaskEditPESOLIQTExit(Sender: TObject);
    procedure MaskEditPESOBRUTKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPESOLIQTKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditNFQUANTIDAKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditCodigoCli_ForKeyPress(Sender: TObject; var Key: Char);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPCFRETEKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxFreteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVLUNITKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVLTOTALKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit17Enter(Sender: TObject);
    procedure MaskEdit19Exit(Sender: TObject);
    procedure MaskEdit20Exit(Sender: TObject);
    procedure MaskEdit21Exit(Sender: TObject);
    procedure MaskEdit22Exit(Sender: TObject);
    procedure MaskEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVLUNITExit(Sender: TObject);
    procedure MaskEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnInclusaoClick(Sender: TObject);
    procedure MaskEdit23Exit(Sender: TObject);
    procedure ComboBoxUnidadeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit19Enter(Sender: TObject);
    procedure MaskEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditICMSFRETEKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVLTOTFREExit(Sender: TObject);
    procedure MaskEditVLTOTFREKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPCFRETEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnAlteracaoClick(Sender: TObject);
    procedure ComboBoxConsumidorFinalExit(Sender: TObject);
    procedure ComboBoxCliForExit(Sender: TObject);
    procedure MaskEditICMKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure JvDateEditPRetornoExit(Sender: TObject);
    procedure MaskEditSolicitanteExit(Sender: TObject);
    procedure IDDClick(Sender: TObject);
    procedure MaskEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxEmpresaExit(Sender: TObject);
    procedure MaskEditValidacaoExit(Sender: TObject);
    procedure MaskEditCDNATOPEITEMExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaskEditVLTOTALExit(Sender: TObject);
    procedure MaskEditUFEMBARQExit(Sender: TObject);
    procedure MaskEditPlacaExit(Sender: TObject);
    procedure ComboBoxEstadoExit(Sender: TObject);
    procedure ComboBoxTIPO_RODADOExit(Sender: TObject);
    procedure BitBtnConsisteClick(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure Consiste_IClick(Sender: TObject);
    procedure MaskEditRefNFExit(Sender: TObject);
    procedure ComboBoxNFPalletExit(Sender: TObject);
    procedure ComboBoxMotivoEmissaoExit(Sender: TObject);
    procedure MaskEditReferenciaMotivoEmissaoExit(Sender: TObject);
  private
    { Private declarations }
    Qtddupli                    : Real;
    DT1, DT2, DT3, DT4, DT5, DT6: Integer;
    A1, A2, A3, A4, A5, A6, AT  : Real;
    VARPERCENTUAL               : Real;
    QTDItemOr                   : Real;
    VARVLUNITCR                 : Real;
    VARPESOCX                   : Real;
    VARCARGAQUANTIDADE          : Real;
    VARQUANTIDADE_PRODUZIDA     : Real;
    VARQUANTIDADE_EXPEDIDA      : Real;
    VARCARGAPESOTOT             : Real;
    VARCARGAVLPEDIDO            : Real;
    VARBASERED                  : Real;
    VARPESO_CAIXA_LIMPA         : Real;
    VARCRIADUPLICATA            : String;
    VARGERADUP                  : String;
    VARBLOQUEIA_CODIGO_999999   : String;
    VARDUPINCLUIDA              : String;
    VARRETENCOES                : String;
    VARIPI                      : Real;
    wPalavras                   : Integer;
    VarCDNATOPE2                : SmallInt;
    procedure ShowHint (Sender: TObject);
  public
    { Public declarations }
  end;
var
  TelaNF: TTelaNF;
implementation

//uses ConsultaClientes_p, Consultafornecedores_p,PerguntaNF_p, TelaEntradaObservacaoFiscal_p, ConsultaTributaria_p,
//     DMIB_p, ConsultaCarga_p, Principal_p, TelaDuplicata_p, TelaSobrasNF_p, TelaBaixaLocalizacao_p, ConsultaTransportadora_p,
//     ConsultaNatOp_p, ConsultaClasfis_p, ConsultaCondicaoPgto_p, ConsultaObservacaoFiscal_p,
//     ConsultaBenefis_p, Funvar_p, FunData_p, Funcoes_p, TelaNotificacoes_via_email_p;

function WordsCount(s: string): Integer;
var
  ps: PChar;
  nSpaces, n: Integer;
begin
  n := 0;
  s := s + #0;
  ps := @s[1];
  while (#0 <> ps^) do
        begin
         while ((' ' = ps^) and (#0 <> ps^)) do
               begin
                inc(ps);
               end;
         nSpaces := 0;
         while ((' ' <> ps^) and (#0 <> ps^)) do
               begin
                inc(nSpaces);
                inc(ps);
               end;
         if (nSpaces > 0) then
            begin
             inc(n);
            end;
        end;
  Result := n;
end;

{$R *.dfm}

Procedure VerificaBloqueiaVenc;
Begin

// {$REGION 'Bloqeueia Vencimentos na 1 Data'}
// if (TelaNF.DV1.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '1' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '2' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '3' then
//         TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//     End;
// if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '4' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '5' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '6' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '7' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '8' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '9' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '10' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '11' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '12' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '13' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '14' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '15' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '16' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '17' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '18' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '19' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '20' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '21' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '22' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '23' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '24' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '25' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '26' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '27' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '28' then
//       TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '29' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '30' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditV1.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV1.Date)) = '31' then
//        TelaNF.JvDateEditV1.Date := TelaNF.JvDateEditV1.Date + 1;
//    End;
// {$ENDREGION}
//
// {$REGION 'Bloqeueia Vencimentos na 2 Data'}
// if (TelaNF.DV1.Checked = True) And  (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '1' then
//       TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '2' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '3' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '4' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '5' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '6' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '7' then
//       TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '8' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '9' then
//       TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '10' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '11' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '12' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '13' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '14' then
//         TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '15' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '16' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '17' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '18' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '19' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '20' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '21' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '22' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '23' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '24' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '25' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '26' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '27' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '28' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '29' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '30' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditV2.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV2.Date)) = '31' then
//        TelaNF.JvDateEditV2.Date := TelaNF.JvDateEditV2.Date + 1;
//    End;
// {$ENDREGION}
//
// {$REGION 'Bloqeueia Vencimentos na 3 Data'}
// if (TelaNF.DV1.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '1' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '2' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '3' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '4' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '5' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '6' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '7' then
//         TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//     End;
// if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '8' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '9' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '10' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '11' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '12' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '13' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '14' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '15' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '16' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '17' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '18' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '19' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '20' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '21' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '22' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '23' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '24' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '25' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '26' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '27' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '28' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '29' then
//       TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '30' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditv3.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditv3.Date)) = '31' then
//        TelaNF.JvDateEditv3.Date := TelaNF.JvDateEditv3.Date + 1;
//    End;
// {$ENDREGION}
//
// {$REGION 'Bloqeueia Vencimentos na 4 Data'}
//  if (TelaNF.DV1.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '1' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '2' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '3' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '4' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '5' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '6' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '7' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '8' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '9' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '10' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '11' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '12' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '13' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '14' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '15' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '16' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '17' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '18' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '19' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '20' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '21' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '22' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '23' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '24' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '25' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '26' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '27' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '28' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '29' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '30' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditV4.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV4.Date)) = '31' then
//         TelaNF.JvDateEditV4.Date := TelaNF.JvDateEditV4.Date + 1;
//     End;
//  {$ENDREGION}
//
// {$REGION 'Bloqeueia Vencimentos na 5 Data'}
//  if (TelaNF.DV1.Checked = True) And  (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//     Begin
//      If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '1' then
//         TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//     End;
//   if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '2' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '3' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '4' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '5' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '6' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '7' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '8' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '9' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '10' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '11' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '12' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '13' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '14' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '15' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '16' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '17' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '18' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '19' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '20' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '21' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '22' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '23' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '24' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '25' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '26' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '27' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '28' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '29' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '30' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditV5.Text <> '  /  /    ') Then
//      Begin
//       If FloatToStr(Dia(TelaNF.JvDateEditV5.Date)) = '31' then
//          TelaNF.JvDateEditV5.Date := TelaNF.JvDateEditV5.Date + 1;
//      End;
//   {$ENDREGION}
//
// {$REGION 'Bloqeueia Vencimentos na 6 Data'}
// if (TelaNF.DV1.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '1' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV2.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '2' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV3.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '3' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV4.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '4' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV5.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '5' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV6.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '6' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV7.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '7' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV8.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '8' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV9.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '9' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV10.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '10' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV11.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '11' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV12.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '12' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV13.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '13' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV14.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '14' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV15.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '15' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV16.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '16' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV17.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '17' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV18.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '18' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV19.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '19' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV20.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '20' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV21.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '21' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV22.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '22' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV23.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '23' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV24.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '24' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV25.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '25' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV26.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '26' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV27.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '27' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV28.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '28' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV29.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '29' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV30.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '30' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// if (TelaNF.DV31.Checked = True) And (TelaNF.JvDateEditV6.Text <> '  /  /    ') Then
//    Begin
//     If FloatToStr(Dia(TelaNF.JvDateEditV6.Date)) = '31' then
//        TelaNF.JvDateEditV6.Date := TelaNF.JvDateEditV6.Date + 1;
//    End;
// {$ENDREGION}
End;

procedure TTelaNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 then
    Begin
     Key := #0;
     Perform(Wm_NextDlgCtl, 0, 0);
    End;
end;

procedure TTelaNF.GroupBox1Exit(Sender: TObject);
begin
 BitBtnConsiste.Click;
end;

procedure TTelaNF.MaskEditCodigoCli_ForExit(Sender: TObject);
Var Year, Month, Day: Word;
begin
// If not BitBtnFechar.Focused then
//    Begin
//
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEditCodigoCli_For.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEditCodigoCli_For.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//
//     If (BitBtnInclusao.Visible = True) or (BitBtnAlteracao.Visible = True) then
//        Begin
//
//         {$REGION 'Verifica o Cliente'}
//         If ComboBoxCliFor.Text = 'C' then
//            Begin
//             IBQ2.Active := False;
//             IBQ2.SQL.Clear;
//             IBQ2.SQL.Add('SELECT First 1 Clientes.CDCLIENTE, Clientes.NOME, Clientes.CDVENDED, Clientes.BLOQUEADO, Clientes.META, Clientes.CGC, Clientes.INSCEST, Clientes.IRURAL, Clientes.CIC, Clientes.CONDPAGTO, Clientes.NIVEL, ');
//             IBQ2.SQL.Add('Condpag.NMCONDPG, Icmest.ESTADO, Icmest.ICMALIQ, Icmest.AAREF, Icmest.BASERED, Clientes.OBS_FISCAL, Clientes.IPI_TIPO, Clientes.LIBERA_LIMITE_DUPLICATA, Clientes.PORTADOR, Clientes.DESCONTO_PADRAO,');
//             IBQ2.SQL.Add('Clientes.DV1, Clientes.DV2, Clientes.DV3, Clientes.DV4, Clientes.DV5, Clientes.DV6, Clientes.DV7, Clientes.DV8, Clientes.DV9, Clientes.DV10,');
//             IBQ2.SQL.Add('Clientes.DV11, Clientes.DV12, Clientes.DV13, Clientes.DV14, Clientes.DV15, Clientes.DV16, Clientes.DV17, Clientes.DV18, Clientes.DV19, Clientes.DV20,');
//             IBQ2.SQL.Add('Clientes.DV21, Clientes.DV22, Clientes.DV23, Clientes.DV24, Clientes.DV25, Clientes.DV26, Clientes.DV27, Clientes.DV28, Clientes.DV29, Clientes.DV30, Clientes.DV31,');
//             IBQ2.SQL.Add('Clientes.OBSERVACAO_FISCAL_PADRAO');
//             IBQ2.SQL.Add('FROM Clientes');
//             IBQ2.SQL.Add('LEFT OUTER JOIN Icmest ON  (Clientes.ESTADO = Icmest.ESTADO) and  Icmest.AAREF='''+IntToStr(Ano(StrToDate(JvDateEdit1.Text)))+''' ');
//             IBQ2.SQL.Add('LEFT OUTER JOIN Condpag ON (Clientes.CONDPAGTO = Condpag.CDCONDPG)');
//             IBQ2.SQL.Add('Where Clientes.CDCLIENTE = ''' +MaskEditCodigoCli_For.Text + '''');
//             IBQ2.Active := True;
//             If IBQ2.IsEmpty then
//                Begin
//                 Application.MessageBox('ATENÇÃO: CLIENTE INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEditCodigoCli_For.SetFocus;
//                 Abort;
//                End;
//             If TRIM(IBQ2.FieldByName('BLOQUEADO').AsString) = 'BLOQUEADO' then
//                Begin
//                 Application.MessageBox('ATENÇÃO: CLIENTE BLOQUEADO PELO FINANCEIRO, FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit9.SetFocus;
//                 Abort;
//                End;
//             // ------- Verificação de CFOP do Estado
//             If TRIM(IBQ2.FieldByName('ESTADO').AsString) = TRIM(DMIB.IBQueryEmpresa.FieldByName('ESTADO_ABREVIADO').AsString) then
//                Begin
//                 If Copy(MaskEdit9.Text, 0, 1) = '6' Then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                     MaskEdit9.SetFocus;
//                     Abort;
//                    End;
//                End
//             Else
//                Begin
//                 If Copy(MaskEdit9.Text, 0, 1) = '5' Then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                     MaskEdit9.SetFocus;
//                     Abort;
//                    End;
//                End;
//             MaskEditCDVENDED.Text := TRIM(IBQ2.FieldByName('CDVENDED').AsString);
//             If StrToFloatDef(MaskEdit2.Text,0) > 999993 then
//                Begin
//                 MaskEdit8.Text      := Trim(IBQ2.FieldByName('CONDPAGTO').AsString);
//                 MaskEditCondpg.Text := Trim(IBQ2.FieldByName('NMCONDPG').AsString);
//                end;
//             If IBQ2.FieldByName('NIVEL').AsString = 'V' then
//                Begin
//                 Application.MessageBox('ATENÇÃO: CADASTRO DO CLIENTE INCOMPLETO.' + #13+'FAVOR ATUALIZAR DADOS DO CLIENTE PARA GERAR UMA REFERÊNCIA, PEDIDO OU NOTA FISCAL.', 'Aviso', mb_OK);
//                 MaskEditCodigoCli_For.SetFocus;
//                End
//             Else
//                Begin
//                 DecodeDate((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime),Year, Month, Day);
//                 If IBQ2.Locate('AAREF', IntToStr(Year), []) then
//                    Begin
//                     MaskEditNomeCli.Text          := Trim(IBQ2.FieldByName('NOME').AsString);
//                     VARBASERED                    := IBQ2.FieldByName('BASERED').AsFloat;
//                     MaskEditICM.Text              := Trim(IBQ2.FieldByName('ICMALIQ').AsString);
//                     If ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//                        Begin
//                         If StrtoFloatDef(MaskEditICM.Text,0)>0 then
//                            Begin
//                             MaskEditICM.Text              :='0';
//                            End;
//                        End;
//                     LabelICMORIGINAL.Caption      := Trim(IBQ2.FieldByName('ICMALIQ').AsString);
//                     // apenas para jogar valor original no nfitem
//                     MaskEditIPI_TIPO.Text         := Trim(IBQ2.FieldByName('IPI_TIPO').AsString);
//                     MaskEditLibera_Duplicata.Text := Trim(IBQ2.FieldByName('LIBERA_LIMITE_DUPLICATA').AsString);
//                     MaskEditPORTADORE.Text        := Trim(IBQ2.FieldByName('PORTADOR').AsString);
//                     MaskEditDESCONTO_PADRAO.Text  := Trim(IBQ2.FieldByName('DESCONTO_PADRAO').AsString);
//                     If (TRIM(IBQ2.FieldByName('CGC').AsString) = '') AND
//                        // PARA SABER SE A BASE ICMS É RECOLHIDA PELO VLTOTMER (NORMAL) OU VLTOTNF (CONSUMIDOR FINAL). (E AUMENTAR O VAL. ICMS)
//                        (TRIM(IBQ2.FieldByName('INSCEST').AsString) = '') AND
//                        (TRIM(IBQ2.FieldByName('IRURAL').AsString) = '') AND
//                        (TRIM(IBQ2.FieldByName('CIC').AsString)<>'') THEN
//                        ComboBoxConsumidorFinal.Text := 'CONSUMIDOR FINAL'
//                     Else
//                        ComboBoxConsumidorFinal.Text := 'NORMAL';
//                     // Observação Fiscal Padrão
//                     if TRIM(IBQ2.FieldByName('OBSERVACAO_FISCAL_PADRAO').AsString)<>'' then
//                        Begin
//                         MaskEdit12.Text := Trim(IBQ2.FieldByName('OBSERVACAO_FISCAL_PADRAO').AsString);
//                         IBQ8.Active := False;
//                         IBQ8.SQL.Clear;
//                         IBQ8.SQL.Add('Select First 1 CDOBSFIS, MOTIVO_DA_OBS, OBSERVACAO_FISCAL, IPI_SITUACAO_TRIBUTARIA, SITUACAO_TRIBUTARIA, PIS_COFINS from OBSFISC');
//                         IBQ8.SQL.Add('Where CDOBSFIS = ''' + MaskEdit12.Text + ''' ');
//                         IBQ8.Active := True;
//                         If IBQ8.IsEmpty then
//                            Begin
//                             MaskEdit12.SetFocus;
//                             MaskEditObservacaoFiscald.Text := '';
//                            End
//                         Else
//                            Begin
//                             MaskEditI_S_T.Text             := TRIM(IBQ8.FieldByName('IPI_SITUACAO_TRIBUTARIA').AsString);
//                             MaskEditPIS_COFINS.Text        := TRIM(IBQ8.FieldByName('PIS_COFINS').AsString);
//                             MaskEditObservacaoFiscald.Text := TRIM(IBQ8.FieldByName('MOTIVO_DA_OBS').AsString);
//                             MaskEditObservacaoFiscal.Text  := TRIM(IBQ8.FieldByName('OBSERVACAO_FISCAL').AsString);
//                             If TRIM(IBQ8.FieldByName('SITUACAO_TRIBUTARIA').AsString) <> '' then
//                                Begin
//                                 MaskEditCST_OBS.Text := 'S';
//                                 MaskEdit28.Text := TRIM(IBQ8.FieldByName('SITUACAO_TRIBUTARIA').AsString);
//                                 IBQ8.Active := False;
//                                 IBQ8.SQL.Clear;
//                                 IBQ8.SQL.Add('Select First 1 CDSITTRI, DESCRICAO, PIS, COFINS, T_I_S from SITUACAO_TRIBUTARIA');
//                                 IBQ8.SQL.Add('Where CDSITTRI = ''' + MaskEdit28.Text + '''');
//                                 IBQ8.Active := True;
//                                 Maskeditclafisca.Text        := Trim(IBQ8.FieldByName('DESCRICAO').AsString);
//                                 MaskEditPISSN.Text           := Trim(IBQ8.FieldByName('PIS').AsString);
//                                 MaskEditCOFINSSN.Text        := Trim(IBQ8.FieldByName('COFINS').AsString);
//                                 MaskEditPercentualPIS.Text   := Dmib.IBQueryEmpresa.FieldByName('PIS').AsString;
//                                 MaskEditPercentualCOFINS.Text:= Dmib.IBQueryEmpresa.FieldByName('COFINS').AsString;
//                                 MaskEdit28.TabStop           := False;
//                                 Maskeditclafisca.TabStop     := False;
//                                 MaskEdit28.Enabled           := True;
//                                 Maskeditclafisca.ReadOnly    := True;
//                                End
//                             Else
//                                Begin
//                                 MaskEditCST_OBS.Text     := 'N';
//                                 MaskEdit28.Text          := '000';
//                                 Maskeditclafisca.Text    := '';
//                                 MaskEdit28.TabStop       := True;
//                                 Maskeditclafisca.TabStop := True;
//                                 MaskEdit28.ReadOnly      := False;
//                                 Maskeditclafisca.ReadOnly:= False;
//                                End;
//                             If TRIM(MaskEditPIS_COFINS.Text) = 'N' Then
//                                Begin
//                                 MaskEditPISSN.Text            := 'N';
//                                 MaskEditCOFINSSN.Text         := 'N';
//                                 MaskEditPercentualPIS.Text    := '0';
//                                 MaskEditPercentualCOFINS.Text := '0';
//                                 MaskEditPercentualPIS.Text    := '0';
//                                 MaskEditPercentualCOFINS.Text := '0';
//                                End;
//                             If TRIM(MaskEditEXPORTADOR.Text) = 'S' Then
//                                Begin
//                                 MaskEditPISSN.Text            := 'N';
//                                 MaskEditCOFINSSN.Text         := 'N';
//                                 MaskEditPercentualPIS.Text    := '0';
//                                 MaskEditPercentualCOFINS.Text := '0';
//                                 MaskEditPercentualPIS.Text    := '0';
//                                 MaskEditPercentualCOFINS.Text := '0';
//                                End;
//                            End;
//                        End;
//                    End
//                 Else
//                    Begin
//                     Application.MessageBox('ATENÇÃO: PERÍODO DE COMPETÊNCIA DO ICMS POR ESTADO INVÁLIDO'#13'ATUALIZE A TABELA DE ICMS POR ESTADO'#13'PERÍODO DE COMPETÊNCIA ANUAL ','Aviso', mb_OK);
//                     MaskEditCodigoCli_For.SetFocus;
//                    End;
//                End;
//             { --- Começa aqui o codigo a ser implementado ----------- }
//             wPalavras := 0;
//             wPalavras := WordsCount(TRIM(IBQ2.FieldByName('OBS_FISCAL').AsString));
//             // Showmessage(IntTostr( wPalavras ));
//             If wPalavras > 0 Then
//                Application.MessageBox(PWideChar(IBQ2.FieldByName('OBS_FISCAL').AsString), 'Aviso', mb_OK);
//            End;
//         {$ENDREGION}
//
//         {$REGION 'Verifica se Fornecedor'}
//         If ComboBoxCliFor.Text = 'F' then
//            Begin
//             IBQ2.Active := False;
//             IBQ2.SQL.Clear;
//             IBQ2.SQL.Add('SELECT First 1 Forneced.CDFORNECE, Forneced.NOME, Forneced.CGC, Forneced.INSCEST, ');
//             IBQ2.SQL.Add('Icmest.ESTADO, Icmest.ICMALIQ, Icmest.AAREF, Icmest.BASERED, Forneced.EMAIL_NFE');
//             IBQ2.SQL.Add('FROM Forneced');
//             IBQ2.SQL.Add('LEFT OUTER JOIN Icmest ON  (Forneced.ESTADO = Icmest.ESTADO) and  Icmest.AAREF='''+IntToStr(Ano(StrToDate(JvDateEdit1.Text)))+''' ');
//             IBQ2.SQL.Add('Where Forneced.CDFORNECE = ''' +MaskEditCodigoCli_For.Text + '''');
//             IBQ2.Active := True;
//             If IBQ2.IsEmpty then
//                Begin
//                 Application.MessageBox('ATENÇÃO: FORNECEDOR NÃO ENCONTRADO, FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEditCodigoCli_For.SetFocus;
//                End
//             Else
//                Begin
//                 // ------- Verificação de CFOP do Estado
//                 If Trim(IBQ2.FieldByName('ESTADO').AsString) = TRIM(DMIB.IBQueryEmpresa.FieldByName('ESTADO_ABREVIADO').AsString) then
//                    Begin
//                     If Copy(MaskEdit9.Text, 0, 1) = '6' Then
//                        Begin
//                         Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                         MaskEdit9.SetFocus;
//                         Abort;
//                        End;
//                    End
//                 Else
//                    Begin
//                     If Copy(MaskEdit9.Text, 0, 1) = '5' Then
//                        Begin
//                         Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                         MaskEdit9.SetFocus;
//                         Abort;
//                        End;
//                    End;
//                 if ((Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('BLOQUEIA_FOR_ENVIO_NFE_CFOP1101').AsString)='N') and (Trim(MaskEdit9.Text)<>'1101')) Then
//                    Begin
//                     If Trim(IBQ2.FieldByName('EMAIL_NFE').AsString) = '' then
//                        Begin
//                         Application.MessageBox('ATENÇÃO: EMAIL PARA NF-E NÃO CADASTRADO, FAVOR EFETAR O CADASTRO.','Aviso', mb_OK);
//                         ComboBoxCliFor.SetFocus;
//                         Abort;
//                        End;
//                    End;
//                 DecodeDate((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime),Year, Month, Day);
//                 If IBQ2.Locate('AAREF', IntToStr(Year), []) then
//                    Begin
//                     MaskEditNomeCli.Text         := TRIM(IBQ2.FieldByName('NOME').AsString);
//                     VARBASERED                   := IBQ2.FieldByName('BASERED').AsFloat;
//                     MaskEditICM.Text             := TRIM(IBQ2.FieldByName('ICMALIQ').AsString);
//                     If ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//                        Begin
//                         If StrtoFloatDef(MaskEditICM.Text,0)>0 then
//                            Begin
//                             MaskEditICM.Text              :='0';
//                            End;
//                        End;
//                     LabelICMORIGINAL.Caption     := TRIM(IBQ2.FieldByName('ICMALIQ').AsString);
//                     // apenas para jogar valor original no nfitem
//                     ComboBoxConsumidorFinal.Text := 'NORMAL';
//                    End
//                 Else
//                    Begin
//                     Application.MessageBox('ATENÇÃO: PERÍODO DE COMPETÊNCIA DO ICMS POR ESTADO INVÁLIDO'#13'ATUALIZE A TABELA DE ICMS POR ESTADO'#13'PERÍODO DE COMPETÊNCIA ANUAL ','Aviso', mb_OK);
//                     MaskEditCodigoCli_For.SetFocus;
//                    End;
//                End;
//            End;
//         {$ENDREGION}
//        End;
//    End;
end;

procedure TTelaNF.MaskEdit2Exit(Sender: TObject);
var Year, Month, Day: Word;
begin
//  if not BitBtnFechar.Focused then
//    begin
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEdit2.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit2.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//
//     {$REGION 'Blqueia Beneficio Fiscal Pedido'}
//     if (DMIB.IBQueryParametros.FieldByName('BLOQUEIA_BENEFFISCAL_PEDIDO_NF').AsString = 'S') Then
//        begin
//         if (StrToFloatDef(MaskEdit2.Text,0) < 999993) Then
//            begin
//             MaskEdit27.ReadOnly := True;
//             MaskEdit27.TabStop  := False;
//            End
//         else
//            MaskEdit27.ReadOnly := False;
//        end;
//      {$ENDREGION}
//
//     {$REGION 'NF sem duplicata (Simples remessa, Remessas para fornecedores etc)'}
//      if (Trim(MaskEdit2.Text) = '999999') Then
//        begin
//          if ((Trim(VARBLOQUEIA_CODIGO_999999) = 'S') and (Trim(ComboBoxFatura.Text) = 'S')) then
//            begin
//              Application.MessageBox('ATENÇÃO, NÃO É PERMITIDO UTILIZAR PEDIDOS 999.999 PARA ESTE CÓDIGO.' +#13+ 'FAVOR VERIFICAR.', 'Aviso', mb_OK);
//              MaskEdit2.Text := '0';
//              MaskEdit9.SetFocus;
//              Abort;
//            end;
//          MaskEdit21.MaxLength           := 120;
//          MaskEditCodigoCli_For.ReadOnly := False;
//          MaskEdit8.ReadOnly             := False;
//          MaskEdit17.ReadOnly            := True;
//          MaskEdit17.Text                := '999999';
//          MaskEdit17.TabStop             := False;
//          MaskEditValidacao.Visible      := False;
//          Label51.Visible                := False;
//          ComboBoxBaixa.ItemIndex        := -1;
//          ComboBoxBaixa.TabStop          := False;
//          ComboBoxCliFor.Enabled         := True;
//
//          if (ComboBoxNFPallet.Enabled) then
//            ComboBoxNFPallet.SetFocus
//          else
//            ComboBoxCliFor.SetFocus;
//
//          if (VARGERADUP = 'S') or (Trim(ComboBoxFatura.Text) = 'S') then
//            begin
//              Application.MessageBox('ATENÇÃO, PARA ESTE CÓDIGO NÃO SERÃO GERADAS DUPLICATAS.','Aviso', mb_OK);
//              VARCRIADUPLICATA := 'N';
//            end
//          else
//            VARCRIADUPLICATA := 'S';
//        end
//      else
//     {$ENDREGION'}
//
//     {$REGION 'Pedido 999.998'}
//     If MaskEdit2.Text = '999998' then
//        Begin
//         MaskEditCodigoCli_For.ReadOnly := False;
//         MaskEdit8.ReadOnly             := False;
//         MaskEdit17.ReadOnly            := True;
//         MaskEdit17.Text                := '999998';
//         MaskEdit17.TabStop             := False;
//         MaskEditValidacao.Visible      := False;
//         Label51.Visible                := False;
//        if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('DESBLOQUEIA_DESC_999998').AsString)='S' then
//            Begin
//             MaskEdit21.Text    := '';
//             MaskEdit21.ReadOnly:= False;
//             MaskEdit21.TabStop := True;
//            End
//        Else
//            Begin
//             MaskEdit21.Text    := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999998').AsString;
//             MaskEdit21.ReadOnly:= True;
//             MaskEdit21.TabStop := False;
//            End;
//         ComboBoxBaixa.ItemIndex        := -1;
//         ComboBoxBaixa.TabStop          := False;
//         Application.MessageBox(PWideChar('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE: ' +DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999998').AsString + #13 +'SERÁ GERADO DUPLICATA.'), 'Aviso', mb_OK);
//         MaskEditCodigoCli_For.SetFocus;
//         VARCRIADUPLICATA := 'S';
//        End
//     Else
//    {$ENDREGION}
//
//     {$REGION 'NF Aparas com duplicatas'}
//     If MaskEdit2.Text = '999997' then //
//        Begin
//         MaskEditCodigoCli_For.SetFocus;
//         MaskEditCodigoCli_For.ReadOnly := False;
//         MaskEdit8.ReadOnly             := False;
//         MaskEdit17.ReadOnly            := True;
//         MaskEdit17.Text                := '999997';
//         MaskEdit17.TabStop             := False;
//         MaskEditValidacao.Visible      := False;
//         Label51.Visible                := False;
//         MaskEdit21.Text                := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString;
//         MaskEdit21.ReadOnly            := True;
//         MaskEdit21.TabStop             := False;
//         ComboBoxBaixa.ItemIndex        := -1;
//         ComboBoxBaixa.TabStop          := False;
//         VARCRIADUPLICATA               := 'S';
//         Application.MessageBox(PWideChar('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE: ' +DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString + #13 +'SERÁ GERADO DUPLICATA.'), 'Aviso', mb_OK);
//        End
//     Else
//     {$ENDREGION}
//
//     {$REGION 'NF Aparas sem duplicata'}
//     If MaskEdit2.Text = '999996' then //
//        Begin
//         MaskEditCodigoCli_For.ReadOnly := False;
//         MaskEdit8.ReadOnly             := False;
//         MaskEdit17.ReadOnly            := True;
//         MaskEdit17.Text                := '999996';
//         MaskEdit17.TabStop             := False;
//         MaskEditValidacao.Visible      := False;
//         Label51.Visible                := False;
//         MaskEdit21.Text                := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString;
//         MaskEdit21.ReadOnly            := True;
//         MaskEdit21.TabStop             := False;
//         ComboBoxBaixa.ItemIndex        := -1;
//         ComboBoxBaixa.TabStop          := False;
//         VARCRIADUPLICATA               := 'N';
//         Application.MessageBox(PWideChar('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE: ' +DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString + #13 +'NÂO SERÁ GERADO DUPLICATA.'), 'Aviso', mb_OK);
//         MaskEditCodigoCli_For.SetFocus;
//        End
//     Else
//     {$ENDREGION}
//
//     {$REGION 'NF Vendas sem Duplicata'}
//     If MaskEdit2.Text = '999995' then //
//        Begin
//         ComboBoxCliFor.Enabled    := True;
//         MaskEdit8.ReadOnly        := False;
//         MaskEdit17.ReadOnly       := True;
//         MaskEdit17.Text           := '999995';
//         MaskEdit17.TabStop        := False;
//         MaskEditValidacao.Visible := False;
//         Label51.Visible           := False;
//         ComboBoxBaixa.ItemIndex   := -1;
//         ComboBoxBaixa.TabStop     := False;
//         VARCRIADUPLICATA          := 'N';
//         Application.MessageBox('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE VENDA DE CHAPAS NF NÂO SERÁ GERADO DUPLICATA.','Aviso', mb_OK);
//         ComboBoxCliFor.SetFocus;
//        End
//     Else
//     {$ENDREGION}
//
//     {$REGION 'NF Aparas 2 (Aparas Contabeis)'}
//     If MaskEdit2.Text = '999994' then //
//        Begin
//         MaskEditCodigoCli_For.ReadOnly := False;
//         MaskEdit8.ReadOnly             := False;
//         MaskEdit17.ReadOnly            := True;
//         MaskEdit17.Text                := '999994';
//         MaskEdit17.TabStop             := False;
//         MaskEditValidacao.Visible      := False;
//         Label51.Visible                := False;
//         MaskEdit21.Text                := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString;
//         MaskEdit21.ReadOnly            := True;
//         MaskEdit21.TabStop             := False;
//         ComboBoxBaixa.ItemIndex        := -1;
//         ComboBoxBaixa.TabStop          := False;
//         ComboBoxUnidade.Text           := 'KG';
//         ComboBoxUnidade.TabStop        := False;
//         VARCRIADUPLICATA               := 'N';
//         Application.MessageBox(PWideChar('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE: APARAS 2' + #13 +'NÂO SERÁ GERADO DUPLICATA.'), 'Aviso', mb_OK);
//         MaskEditCodigoCli_For.SetFocus;
//        End
//     Else
//     {$ENDREGION}
//
//     {$REGION 'NF Credito de ICMS'}
//     If MaskEdit2.Text = '999993' then
//        Begin
//         MaskEditCodigoCli_For.ReadOnly := False;
//         MaskEdit8.ReadOnly             := False;
//         MaskEdit17.ReadOnly            := True;
//         MaskEdit17.Text                := '999993';
//         MaskEdit17.TabStop             := False;
//         MaskEditValidacao.Visible      := False;
//         Label51.Visible                := False;
//         ComboBoxBaixa.ItemIndex        := -1;
//         ComboBoxBaixa.TabStop          := False;
//         ComboBoxUnidade.TabStop        := False;
//         VARCRIADUPLICATA               := 'N';
//         Application.MessageBox(PWideChar('ATENÇÃO: VOCÊ ENTROU EM MODO DE NOTA FISCAL DE: CREDITO DE ICMS' + #13 +'NÂO SERÁ GERADO DUPLICATA.'), 'Aviso', mb_OK);
//         MaskEditCodigoCli_For.SetFocus;
//        End
//     Else
//     {$ENDREGION}
//
//     If (DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString = 'N') and
//        ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995')          or
//         (MaskEdit2.Text <> '999993')                                          or
//        (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')           or
//        (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999'))          then
//        Begin
//         MaskEdit8.ReadOnly := False;
//         MaskEdit8.TabStop := True;
//         ComboBoxCliFor.Enabled := True;
//         ComboBoxCliFor.SetFocus;
//        End
//     else
//     If (DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString = 'S') and
//        ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995')          or
//         (MaskEdit2.Text <> '999993')                                          or
//        (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')           or
//        (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999')           or
//        (MaskEdit2.Text <> '0'))                                               then
//        Begin
//         If (DMIB.IBQueryParametros.FieldByName('VL_UNITARIO_FATURAMENTO').AsString = 'S') and
//            ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999993')                  or
//            (MaskEdit2.Text <> '999995') or (MaskEdit2.Text <> '999996')                   or
//            (MaskEdit2.Text <> '999997') or (MaskEdit2.Text <> '999998')                   or
//            (MaskEdit2.Text <> '999999') or (MaskEdit2.Text <> '0'))                       then
//            Begin
//             MaskEditVLUNIT.ReadOnly  := True;
//             MaskEditVLUNIT.TabStop   := False;
//             MaskEditVLTOTAL.ReadOnly := True;
//             MaskEditVLTOTAL.TabStop  := False;
//            End;
//         ComboBoxBaixa.TabStop := True;
//         MaskEdit8.ReadOnly := True;
//         MaskEdit8.TabStop := False;
//         IBQ1.Active := False;
//         IBQ1.SQL.Clear;
//         IBQ1.SQL.Add('Select First 1 Carga.MAQUINA, Carga.CDCLIENTE, Carga.APONTADO_ONDULADEIRA,');
//         IBQ1.SQL.Add('Carga.REFERENCIA, Carga.DTENTREGA, Carga.SITUACAO, Carga.CONFERIDO_POR');
//         IBQ1.SQL.Add('from CARGA');
//         IBQ1.SQL.Add('Where NRPEDIDO = ''' + MaskEdit2.Text + ''' ');
//         IBQ1.Active := True;
//         if IBQ1.IsEmpty then
//            Begin
//             Application.MessageBox('ATENÇÃO: ESTE PEDIDO NÃO SE ENCONTRA NA CARGA OU É INEXISTENTE.' + #13+ 'FAVOR VERIFICAR.', 'Aviso', mb_OK);
//             MaskEdit2.Text := '';
//             MaskEdit9.SetFocus;
//             Abort;
//            End
//         Else
//           Begin
//             {$REGION 'Se For Obrigatorio o apontamento na onduladeira checa se esta ok'}
//             If (DMIB.IBQueryParametros.FieldByName('EXIGE_AP_ONDU_NF').AsString = 'S')
//                and (TRIM(IBQ1.FieldByName('APONTADO_ONDULADEIRA').AsString) <> 'S') and
//               ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995')         or
//                (MaskEdit2.Text <> '999993') or
//               (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')          or
//               (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999'))         then
//               Begin
//                IBQ4.Active := False;
//                IBQ4.SQL.Clear;
//                IBQ4.SQL.Add('Select First 1 NRPEDIDO');
//                IBQ4.SQL.Add('from APONTA');
//                IBQ4.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit2.Text) + '''  and ');
//                IBQ4.SQL.Add('Maquina<=:MAQCHAPA');
//                IBQ4.ParamByName('MAQCHAPA').AsFloat :=DMIB.IBQueryParametros.FieldByName('MAQCHAPA').AsFloat;
//                IBQ4.Active := True;
//                if IBQ4.IsEmpty then
//                   Begin
//                    Application.MessageBox('ATENÇÃO: PEDIDO NÃO APONTADO NA ONDULADEIRA,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                    MaskEdit2.SetFocus;
//                    Abort;
//                   End;
//               End;
//            {$ENDREGION}
//
//             {$REGION 'Se For Obrigatorio a Conferencia da Expedição checa se esta ok'}
//             if (DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_CONFERENCIA_EXPEDICAO').AsString = 'S') and
//                (Trim(IBQ1.FieldByName('CONFERIDO_POR').AsString) = '') and ((MaskEdit2.Text <> '999994') or
//                (MaskEdit2.Text <> '999995') or (MaskEdit2.Text <> '999993')  or
//                (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')  or
//                (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999')) then
//               begin
//                 Application.MessageBox('ATENÇÃO: PEDIDO SEM CONFERENCIA DA EXPEDIÇÃO,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit2.SetFocus;
//                 Abort;
//               end;
//            {$ENDREGION}
//
//             {$REGION 'Verifica se o Apontamento da Fábrica foi Efetuado ou esta com Baixa Parcial ou Total'}
//             if (DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_AP_FINAL_PRODUCAO').AsString = 'S') and
//                ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995') or
//                (MaskEdit2.Text <> '999993')  or (MaskEdit2.Text <> '999996') or
//                (MaskEdit2.Text <> '999997')  or (MaskEdit2.Text <> '999998') or
//                (MaskEdit2.Text <> '999999')) then
//               begin
//                 IBQ4.Active := False;
//                 IBQ4.SQL.Clear;
//                 IBQ4.SQL.Add('select first 1 afl.tp_apontamento ');
//                 IBQ4.SQL.Add('from aponta_final_log afl ');
//                 IBQ4.SQL.Add('where afl.nrpedido = '''+Trim(MaskEdit2.Text)+''' ');
//                 IBQ4.SQL.Add('order by afl.controle desc ');
//                 IBQ4.Active := True;
//                 if Trim(IBQ4.FieldByName('TP_APONTAMENTO').AsString) = '' then
//                   begin
//                     Application.MessageBox('ATENÇÃO: PEDIDO SEM APONTAMENTO DA FABRICA,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                     MaskEdit2.SetFocus;
//                     Abort;
//                   end
//                 else
//                   begin
//                     if (Trim(IBQ4.FieldByName('TP_APONTAMENTO').AsString) = 'P') and
//                        (Trim(ComboBoxBaixa.Text) = 'T' ) then
//                       begin
//                         Application.MessageBox('ATENÇÃO: ESTE PEDIDO NÃO ESTA COM APONTAMENTO FINAL,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                         MaskEdit2.SetFocus;
//                         Abort;
//                       end;
//                   end;
//               end;
//             {$ENDREGION}
//
//             {$REGION 'Verifica se determinado pedido pode ser Faturado e se no CFOP adequado. duplicato no on exit do maskedit2 e no on exit do maskedit17, diferença só é a query usada.'}
//             IBQ4.Active := False;
//             IBQ4.SQL.Clear;
//             IBQ4.SQL.Add('Select First 1 NRPEDIDO, FATURAMENTO_BLOQUEADO, FATURAMENTO_SO_CDNATOPE ');
//             IBQ4.SQL.Add('from PEDIDO');
//             IBQ4.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit2.Text) + ''' ');
//             IBQ4.Active := True;
//             If TRIM(IBQ4.FieldByName('FATURAMENTO_BLOQUEADO').AsString) = 'S' Then
//                Begin
//                 Application.MessageBox('ATENÇÃO: PEDIDO BLOQUEADO PELO ADMINISTRATIVO.'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit2.SetFocus;
//                 Abort;
//                End;
//              If StrToFloatDef(IBQ4.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString,0) > 0 Then
//                 Begin
//                  if Trim(IBQ4.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString) <> Trim(Maskedit9.Text) then
//                     Begin
//                      Application.MessageBox(PWideChar('ATENÇÃO: CFOP DIFERENTE DO DESIGNADO PELO ADMINISTRATIVO ('+Trim(IBQ4.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString)+')'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.'), 'Aviso', mb_OK);
//                      MaskEdit2.SetFocus;
//                      Abort;
//                     End;
//                 End;
//             {$ENDREGION}
//
//             {$REGION 'Verifica Pedido Antigos da Carga da mesma referencia'}
//             IBQ4.Active := False;
//             IBQ4.SQL.Clear;
//             IBQ4.SQL.Add('Select First 1 Carga.NRPEDIDO, Carga.DTENTREGA, Carga.REFERENCIA, Carga.CDCLIENTE, Carga.QUANTIDADE_EXPEDIDA, Situacao_Pedido.CAIXA_PRONTA,');
//             IBQ4.SQL.Add('Carga.SITUACAO');
//             IBQ4.SQL.Add('from CARGA');
//             IBQ4.SQL.Add('LEFT OUTER JOIN Pedido          ON (Carga.NRPEDIDO  = Pedido.NRPEDIDO)');
//             IBQ4.SQL.Add('LEFT OUTER JOIN Situacao_Pedido ON (Pedido.SITUACAO = Situacao_Pedido.Descricao)');
//             IBQ4.SQL.Add('Where Carga.CDCLIENTE = ''' +TRIM(IBQ1.FieldByName('CDCLIENTE').AsString) +''' and Carga.REFERENCIA=''' + TRIM(IBQ1.FieldByName('REFERENCIA').AsString) + ''' ');
//             IBQ4.SQL.Add('and Carga.DTENTREGA<''' + FormatDateTime('MM/DD/YYYY',IBQ1.FieldByName('DTENTREGA').AsDateTime) + ''' ');
//             IBQ4.SQL.Add('and ((Carga.SITUACAO<>''ANTECIPAÇÃO DO CLIENTE'') or (Carga.SITUACAO<>''CAIXAS PRONTAS EXPEDIÇÃO'') )  ');
//             IBQ4.Active := True;
//             If IBQ4.FieldByName('NRPEDIDO').AsFloat > 0 Then
//                Begin
//                 MaskEditCXPR1.Text := IBQ1.FieldByName('SITUACAO').AsString;
//                 If IBQ4.FieldByName('QUANTIDADE_EXPEDIDA').AsFloat > 0 Then
//                    Begin
//                     JvNavPanelHeader1.ColorFrom := clFuchsia;
//                     JvNavPanelHeader1.ColorTo   := clPurple;
//                     JvNavPanelHeader1.Caption   := 'ATENÇÃO: Existem Pedidos com Data de Entrega Anterior desta Referêcia na Carga, QUANTIDADE DESTE PEDIDO JÁ FATURADA: '+ FormatFloat('#,###,###,##0', VARQUANTIDADE_EXPEDIDA);
//                    End
//                 Else
//                   Begin
//                    JvNavPanelHeader1.ColorFrom := clRed;
//                    JvNavPanelHeader1.ColorTo := clMaroon;
//                    JvNavPanelHeader1.Caption :='ATENÇÃO: Existem Pedidos com Data de Entrega Anterior desta Referêcia na Carga.';
//                   End;
//                 JvNavPanelHeader1.Visible := True;
//                 If ((TRIM(DMIB.IBQueryParametros.FieldByName('CONTROLA_PEDIDO_FATURAMENTO').AsString) = 'S') And
//                    (((TRIM(IBQ4.FieldByName('CAIXA_PRONTA').AsString)) = 'N')) and (TRIM(MaskEditCXPR1.Text) <> 'CAIXAS PRONTAS EXPEDIÇÃO')) Then
//                    Begin
//                     Application.MessageBox(PWideChar('ATENÇÃO: EXISTE PEDIDO: ' + IBQ4.FieldByName('NRPEDIDO').AsString + ' COM DATA DE ENTREGA ANTERIOR A ESTE.' + #13 +'NÃO É PERMITIDO FATURAR ESTE PEDIDO, FAVOR VERIFICAR'), 'Aviso', mb_OK);
//                     MaskEdit9.SetFocus;
//                     JvNavPanelHeader1.Visible := False;
//                     Abort;
//                    End;
//                End;
//             {$ENDREGION}
//
//             IBQ2.Active := False;
//             IBQ2.SQL.Clear;
//             IBQ2.SQL.Add('SELECT First 1 CDCLIENTE, NOME, CDVENDED, BLOQUEADO, META, CGC, INSCEST, IRURAL, CIC, Clientes.ESTADO, Clientes.LIBERA_LIMITE_DUPLICATA, Clientes.PORTADOR,');
//             IBQ2.SQL.Add('Icmest.ESTADO, Icmest.ICMALIQ, Icmest.AAREF, Icmest.BASERED, Clientes.OBS_FISCAL, Clientes.EXIGE_LAUDO,');
//             IBQ2.SQL.Add('Clientes.PREPONDERANTEMENTE_EXPORTADORA, Clientes.REDUCAO_BASE_CALCULO_ICMS, Clientes.OBSERVACAO_FISCAL_PADRAO');
//             IBQ2.SQL.Add('FROM CLIENTES');
//             IBQ2.SQL.Add('LEFT OUTER JOIN Icmest ON  (Clientes.ESTADO = Icmest.ESTADO) and  Icmest.AAREF='''+IntToStr(Ano(StrToDate(JvDateEdit1.Text)))+''' ');
//             IBQ2.SQL.Add('Where CLIENTES.CDCLIENTE = ''' + TRIM(IBQ1.FieldByName('CDCLIENTE').AsString) + ''' ');
//             IBQ2.Active := True;
//             MaskEditREDUCAO_ICMS_CLIENTE.Text := IBQ2.FieldByName('REDUCAO_BASE_CALCULO_ICMS').AsString;
//
//             {$REGION 'Verifica Existencia de uma Obs Fical Padrão'}
//             if TRIM(IBQ2.FieldByName('OBSERVACAO_FISCAL_PADRAO').AsString) <> '' then
//                Begin
//                 MaskEdit12.Text := IBQ2.FieldByName('OBSERVACAO_FISCAL_PADRAO').AsString;
//                 IBQ8.Active := False;
//                 IBQ8.SQL.Clear;
//                 IBQ8.SQL.Add('Select First 1 CDOBSFIS, MOTIVO_DA_OBS, OBSERVACAO_FISCAL, IPI_SITUACAO_TRIBUTARIA, SITUACAO_TRIBUTARIA, PIS_COFINS from OBSFISC');
//                 IBQ8.SQL.Add('Where CDOBSFIS = ''' + MaskEdit12.Text + ''' ');
//                 IBQ8.Active := True;
//                 If IBQ8.IsEmpty then
//                    Begin
//                     MaskEdit12.SetFocus;
//                     MaskEditObservacaoFiscald.Text := '';
//                    End
//                 Else
//                    Begin
//                     MaskEditI_S_T.Text             := TRIM(IBQ8.FieldByName('IPI_SITUACAO_TRIBUTARIA').AsString);
//                     MaskEditPIS_COFINS.Text        :=TRIM(IBQ8.FieldByName('PIS_COFINS').AsString);
//                     MaskEditObservacaoFiscald.Text := TRIM(IBQ8.FieldByName('MOTIVO_DA_OBS').AsString);
//                     MaskEditObservacaoFiscal.Text  := TRIM(IBQ8.FieldByName('OBSERVACAO_FISCAL').AsString);
//                     If TRIM(IBQ8.FieldByName('SITUACAO_TRIBUTARIA').AsString) <> '' then
//                        Begin
//                         MaskEditCST_OBS.Text := 'S';
//                         MaskEdit28.Text := TRIM(IBQ8.FieldByName('SITUACAO_TRIBUTARIA').AsString);
//                         IBQ8.Active := False;
//                         IBQ8.SQL.Clear;
//                         IBQ8.SQL.Add('Select First 1 CDSITTRI, DESCRICAO, PIS, COFINS, T_I_S from SITUACAO_TRIBUTARIA');
//                         IBQ8.SQL.Add('Where CDSITTRI = ''' + MaskEdit28.Text + '''');
//                         IBQ8.Active := True;
//                         Maskeditclafisca.Text := TRIM(IBQ8.FieldByName('DESCRICAO').AsString);
//                         MaskEditPISSN.Text := TRIM(IBQ8.FieldByName('PIS').AsString);
//                         MaskEditCOFINSSN.Text := TRIM(IBQ8.FieldByName('COFINS').AsString);
//                         MaskEditPercentualPIS.Text := DMIB.IBQueryEmpresa.FieldByName('PIS').AsString;
//                         MaskEditPercentualCOFINS.Text := DMIB.IBQueryEmpresa.FieldByName('COFINS').AsString;
//                         MaskEdit28.TabStop := False;
//                         Maskeditclafisca.TabStop := False;
//                         MaskEdit28.Enabled := True;
//                         Maskeditclafisca.ReadOnly := True;
//                        End
//                     Else
//                        Begin
//                         MaskEditCST_OBS.Text     := 'N';
//                         MaskEdit28.Text          := '000';
//                         Maskeditclafisca.Text    := '';
//                         MaskEdit28.TabStop       := True;
//                         Maskeditclafisca.TabStop := True;
//                         MaskEdit28.ReadOnly      := False;
//                         Maskeditclafisca.ReadOnly:= False;
//                        End;
//                     If TRIM(MaskEditPIS_COFINS.Text) = 'N' Then
//                        Begin
//                         MaskEditPISSN.Text            := 'N';
//                         MaskEditCOFINSSN.Text         := 'N';
//                         MaskEditPercentualPIS.Text    := '0';
//                         MaskEditPercentualCOFINS.Text := '0';
//                         MaskEditPercentualPIS.Text    := '0';
//                         MaskEditPercentualCOFINS.Text := '0';
//                        End;
//                     If TRIM(MaskEditEXPORTADOR.Text) = 'S' Then
//                        Begin
//                         MaskEditPISSN.Text            := 'N';
//                         MaskEditCOFINSSN.Text         := 'N';
//                         MaskEditPercentualPIS.Text    := '0';
//                         MaskEditPercentualCOFINS.Text := '0';
//                         MaskEditPercentualPIS.Text    := '0';
//                         MaskEditPercentualCOFINS.Text := '0';
//                        End;
//                    End;
//                End;
//             {$ENDREGION}
//
//             {$REGION 'Verifica se o cliente esta bloqueado no financeiro'}
//             If TRIM(IBQ2.FieldByName('BLOQUEADO').AsString) = 'BLOQUEADO' then
//                Begin
//                 Application.MessageBox('ATENÇÃO: CLIENTE BLOQUEADO PELO FINANCEIRO, FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit9.SetFocus;
//                 Abort;
//                End;
//             {$ENDREGION}
//
//             {$REGION 'Verifica se o ICMS esta ok para o ano da NF'}
//             DecodeDate((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime), Year,Month, Day);
//             If IBQ2.FieldByName('AAREF').AsString<> IntToStr(Year) then
//                Begin
//                 Application.MessageBox('ATENÇÃO: PERÍODO DE COMPETÊNCIA DO ICMS POR ESTADO INVÁLIDO'#13'ATUALIZE A TABELA DE ICMS POR ESTADO'#13'PERÍODO DE COMPETÊNCIA ANUAL','', mb_OK);
//                 MaskEdit2.SetFocus;
//                 Abort;
//                End;
//             {$ENDREGION}
//
//             {$REGION 'Verificação de CFOP do Estado'}
//             If TRIM(IBQ2.FieldByName('ESTADO').AsString)= TRIM(DMIB.IBQueryEmpresa.FieldByName('ESTADO_ABREVIADO').AsString) then
//                Begin
//                 If Copy(MaskEdit9.Text, 0, 1) = '6' Then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                     MaskEdit9.SetFocus;
//                     Abort;
//                    End;
//                End
//             Else
//                Begin
//                 If Copy(MaskEdit9.Text, 0, 1) = '5' Then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CFOP INCORRETA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                     MaskEdit9.SetFocus;
//                     Abort;
//                    End;
//                End;
//             {$ENDREGION}
//
//             wPalavras := 0;
//             wPalavras := WordsCount(TRIM(IBQ2.FieldByName('OBS_FISCAL').AsString));
//             If wPalavras > 0 Then
//                Application.MessageBox(PWideChar(TRIM(IBQ2.FieldByName('OBS_FISCAL').AsString)), '', mb_OK);
//
//             {$REGION 'Bloqueia Faturamento de Pedido quando o mesmo não foi produzido'}
//             If (DMIB.IBQueryParametros.FieldByName('LIBERA_NF_PRE').AsString <> 'S')
//                And (IBQ1.FieldByName('MAQUINA').AsFloat <= DMIB.IBQueryParametros.FieldByName('MAQCHAPA').AsInteger) then
//                Begin
//                 BitBtnAlteracao.Enabled := False;
//                 Application.MessageBox('ATENÇÃO: NÃO É POSSÍVEL FATURAR UM PEDIDO QUE ESTÁ EM PROGRAMAÇÃO.','', mb_OK);
//                 MaskEdit2.SetFocus;
//                 Abort;
//                End;
//             {$ENDREGION}
//
//             IBQ1.Active := False;
//             IBQ1.SQL.Clear;
//             IBQ1.SQL.Add('SELECT First 1 Pedido.NRPEDIDO, Pedido.CDCLIENTE, Pedido.DATAPED, Pedido.DATEENT, Pedido.REFEREN, Pedido.QUANTIDA, Pedido.VLPEDICR, Clientes.LIMITA_1_PEDIDOCLI_NF,');
//             IBQ1.SQL.Add('Pedido.PESOTOT, Pedido.PESOCX, Pedido.PRECOMED, Pedido.CDFAMILIA, Clientes.EXIGE_PEDIDOCLIENTE, Clientes.EXIGE_ITEMPEDIDOCLIENTE, Clientes.PREPONDERANTEMENTE_EXPORTADORA,');
//             IBQ1.SQL.Add('Pedido.TPBAIXA, Pedido.CDVENDED, Pedido.CDPAPEL, Pedido.CDCAIXA, Pedido.PEDIDCLI, Pedido.VLUNITCR, Pedido.VLPEDIDO, Pedido.IPI, Pedido.UNIDADE, Pedido.CONDPAGTO, Clientes.LIBERA_LIMITE_DUPLICATA, Clientes.PORTADOR, Clientes.SV, Clientes.SVD,');
//             IBQ1.SQL.Add('Clientes.DV1, Clientes.DV2, Clientes.DV3, Clientes.DV4, Clientes.DV5, Clientes.DV6, Clientes.DV7, Clientes.DV8, Clientes.DV9, Clientes.DV10, Pedido.NR_Empresa, Pedido.PAGTO_CHEQUE,');
//             IBQ1.SQL.Add('Clientes.DV11, Clientes.DV12, Clientes.DV13, Clientes.DV14, Clientes.DV15, Clientes.DV16, Clientes.DV17, Clientes.DV18, Clientes.DV19, Clientes.DV20,');
//             IBQ1.SQL.Add('Clientes.DV21, Clientes.DV22, Clientes.DV23, Clientes.DV24, Clientes.DV25, Clientes.DV26, Clientes.DV27, Clientes.DV28, Clientes.DV29, Clientes.DV30, Clientes.DV31,');
//             IBQ1.SQL.Add('Pedido.PESOCP, Pedido.SITUACAO, Pedido.PCCOMISS, Pedido.REFERENCIA, Clientes.NOME, Cidade.CIDADE, Cidade.PERCENTUAL_FRETE, Pedido.USOCONSUMO, Pedido.PERCENTUAL_CE, Clientes.IPI_TIPO, Clientes.EXIGE_LAUDO, Clientes.VENCIMENTO, Clientes.DESCONTO_PADRAO');
//             IBQ1.SQL.Add('FROM Pedido');
//             IBQ1.SQL.Add('JOIN Clientes          ON (Pedido.CDCLIENTE = Clientes.CDCLIENTE)');
//             IBQ1.SQL.Add('LEFT OUTER JOIN CIDADE ON (Clientes.CIDADE = CIDADE.CIDADE)');
//             IBQ1.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit2.Text) + ''' ');
//             IBQ1.Active := True;
//             MaskEditPORTADORE.Text            := TRIM(IBQ1.FieldByName('PORTADOR').AsString);
//             MaskEditPGTO_CHEQUE.Text          := TRIM(IBQ1.FieldByName('PAGTO_CHEQUE').AsString);
//             MaskEditDESCONTO_PADRAO.Text      := TRIM(IBQ1.FieldByName('DESCONTO_PADRAO').AsString);
//             MaskEditCodigoCli_For.Text        := TRIM(IBQ1.FieldByName('CDCLIENTE').AsString);
//             MaskeditEPEDCLI.Text              := TRIM(IBQ1.FieldByName('EXIGE_PEDIDOCLIENTE').AsString);
//             MaskeditEITEMPEDCLI.Text          := TRIM(IBQ1.FieldByName('EXIGE_ITEMPEDIDOCLIENTE').AsString);
//             MaskEditVENCIMENTO.Text           := TRIM(IBQ1.FieldByName('VENCIMENTO').AsString);
//             MaskEditLIMITA_1_PEDIDOCLI_NF.Text:= TRIM(IBQ1.FieldByName('LIMITA_1_PEDIDOCLI_NF').AsString);
//             MaskEditPEDIDO_CLIENTE_O.Text     := TRIM(IBQ1.FieldByName('PEDIDCLI').AsString);
//             If TRIM(IBQ1.FieldByName('NR_EMPRESA').AsString) = '2' then
//                ComboBoxEmpresa.Text := '2';
//             MaskEditNomeCli.Text          := TRIM(IBQ1.FieldByName('NOME').AsString);
//             MaskEditIPI_TIPO.Text         := TRIM(IBQ1.FieldByName('IPI_TIPO').AsString);
//             MaskEdit8.Text                := TRIM(IBQ1.FieldByName('CONDPAGTO').AsString);
//             MaskEditLibera_Duplicata.Text := TRIM(IBQ1.FieldByName('LIBERA_LIMITE_DUPLICATA').AsString);
//             MaskEditSV.Text               := TRIM(IBQ1.FieldByName('SV').AsString);
//             MaskEditSVD.Text              := TRIM(IBQ1.FieldByName('SVD').AsString);
//             MaskEditEXPORTADOR.Text       := TRIM(IBQ1.FieldByName('PREPONDERANTEMENTE_EXPORTADORA').AsString);
//
//             {$REGION 'Verifica Datas para pagamento da duplicata'}
//             if TRIM(IBQ1.FieldByName('DV1').AsString) = 'X' then
//                DV1.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV2').AsString) = 'X' then
//                DV2.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV3').AsString) = 'X' then
//                DV3.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV4').AsString) = 'X' then
//                DV4.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV5').AsString) = 'X' then
//                DV5.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV6').AsString) = 'X' then
//                DV6.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV7').AsString) = 'X' then
//                DV7.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV8').AsString) = 'X' then
//                DV8.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV9').AsString) = 'X' then
//                DV9.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV10').AsString) = 'X' then
//                DV10.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV11').AsString) = 'X' then
//                DV11.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV12').AsString) = 'X' then
//                DV12.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV13').AsString) = 'X' then
//                DV13.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV14').AsString) = 'X' then
//                DV14.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV15').AsString) = 'X' then
//                DV15.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV16').AsString) = 'X' then
//                DV16.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV17').AsString) = 'X' then
//                DV17.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV18').AsString) = 'X' then
//                DV18.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV19').AsString) = 'X' then
//                DV19.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV20').AsString) = 'X' then
//                DV20.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV21').AsString) = 'X' then
//                DV21.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV22').AsString) = 'X' then
//                DV22.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV23').AsString) = 'X' then
//                DV23.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV24').AsString) = 'X' then
//                DV24.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV25').AsString) = 'X' then
//                DV25.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV26').AsString) = 'X' then
//                DV26.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV27').AsString) = 'X' then
//                DV27.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV28').AsString) = 'X' then
//                DV28.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV29').AsString) = 'X' then
//                DV29.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV30').AsString) = 'X' then
//                DV30.Checked := True;
//             if TRIM(IBQ1.FieldByName('DV31').AsString) = 'X' then
//                DV31.Checked := True;
//             {$ENDREGION}
//
//
//             {$REGION 'Aviso do % de CE da Referência'}
//             If (DMIB.IBQueryParametros.FieldByName('CE_NA_REFERENCIA').AsString = 'S') and
//                (IBQ1.FieldByName('PERCENTUAL_CE').AsFloat > 0) and
//                ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995') or
//                 (MaskEdit2.Text <> '999993')                                 or
//                (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')  or
//                (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999')) then
//                Begin
//                 JvNavPanelHeaderCE.Visible := True;
//                 JvNavPanelHeaderCE.Caption := 'ATENÇÃO: COMPROVANTE DE ENTRAGA DE: '+ TRIM(IBQ1.FieldByName('PERCENTUAL_CE').AsString) + '%';
//                End;
//             {$ENDREGION}
//
//             {$REGION 'Verifica Frete Percentual'}
//             If DMIB.IBQueryParametros.FieldByName('TIPO_FRETE').AsString = 'P' Then
//                Begin
//                 MaskEditPCFRETE.Text     := FloatToStr(IBQ1.FieldByName('PERCENTUAL_FRETE').AsFloat);
//                 MaskEditPCFRETE.ReadOnly := True;
//                 MaskEditPCFRETE.TabStop  := False;
//                 If (StrToFloatDef(MaskEditPCFRETE.Text,0) = 0) or (TRIM(IBQ1.FieldByName('PERCENTUAL_FRETE').AsString) = '') then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: PERCENTUAL DO FRETE NÃO CADASTRADO'#13'FAVOR ATUALIZAR NO CADASTRO DE CIDADES.','', mb_OK);
//                     JvDateEdit2.SetFocus;
//                     Abort;
//                    End;
//                End;
//             {$ENDREGION}
//
//             MaskEdit8.SetFocus;
//             MaskEditCDVENDED.Text          := TRIM(IBQ1.FieldByName('CDVENDED').AsString);
//             MaskEditCodigoCli_For.ReadOnly := True;
//             BitBtnInclusao.Enabled         := True;
//             MaskEdit17.ReadOnly            := False;
//             MaskEdit17.TabStop             := True;
//             VARBASERED                     := IBQ2.FieldByName('BASERED').AsFloat;
//             MaskEditICM.Text               := TRIM(IBQ2.FieldByName('ICMALIQ').AsString);
//             If ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//                Begin
//                 If StrtoFloatDef(MaskEditICM.Text,0)>0 then
//                    Begin
//                     MaskEditICM.Text              :='0';
//                    End;
//                End;
//             LabelICMORIGINAL.Caption       := TRIM(IBQ2.FieldByName('ICMALIQ').AsString);
//             // apenas para jogar valor original no nfitem
//
//             {$REGION 'Verifica Uso e Consumo'}
//             If (TRIM(IBQ2.FieldByName('CGC').AsString) = '') AND
//              // PARA SABER SE A BASE ICMS É RECOLHIDA PELO VLTOTMER (NORMAL) OU VLTOTNF (CONSUMIDOR FINAL). (E AUMENTAR O VAL. ICMS)
//                (TRIM(IBQ2.FieldByName('INSCEST').AsString) = '') AND
//                (TRIM(IBQ2.FieldByName('IRURAL').AsString) = '') AND
//                (TRIM(IBQ2.FieldByName('CIC').AsString) <> '') THEN
//                ComboBoxConsumidorFinal.Text := 'CONSUMIDOR FINAL'
//             Else
//                ComboBoxConsumidorFinal.Text := 'NORMAL';
//             If TRIM(IBQ1.FieldByName('USOCONSUMO').AsString) = 'S' Then
//                Begin
//                 ComboBoxConsumidorFinal.Text := 'CONSUMIDOR FINAL';
//                 MaskEditUSOCONSUMO_ABR.Text := 'S';
//                 JvNavPanelHeader3.Visible := True;
//                 ComboBoxConsumidorFinal.Enabled := False;
//                End
//             Else
//                MaskEditUSOCONSUMO_ABR.Text := 'N';
//             {$ENDREGION}
//
//             {$REGION 'Se pagamento for em Cheque muda para o portador 103'}
//             if MaskEditPGTO_CHEQUE.Text='S' Then
//                Begin
//                 ComboBoxPortador.Items.Clear;
//                 ComboBoxPortador.Items.Add('103');
//                 ComboBoxPortador.ItemIndex:=0;
//                End;
//             {$ENDREGION}
//             ComboBoxEspecie.SetFocus;
//           end;
//        End;
//    end;
end;

procedure TTelaNF.MaskEdit9Exit(Sender: TObject);
begin
// if not BitBtnFechar.Focused then
//    begin
//     VarCDNATOPE2 := 0;
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEdit9.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit9.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//
//     IBQ1.Active := False;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('Select First 1 CDNATOPE, CFOP_DE_DEVOLUCAO, DESCRNAT, CDNATOPE2, GERADUP, CRIADUP,');
//     IBQ1.SQL.Add('DEVOLUCAO_PALETES, BLOQUEIA_CODIGO_999999, DESATIVADO');
//     IBQ1.SQL.Add('FROM NATUOPE');
//     IBQ1.SQL.Add('Where CDNATOPE = ''' + MaskEdit9.Text + '''');
//     IBQ1.Active := True;
//     MaskEditNF_PALETE.Text := '';
//     MaskEditNatOPdesc.Text := '';
//     if IBQ1.IsEmpty then
//        begin
//         Application.MessageBox('ATENÇÃO: CFOP NÃO CADASTRADO, FAVOR VERIFICAR.','', mb_OK);
//         MaskEdit9.SetFocus;
//        end
//     else
//     if Trim(IBQ1.FieldByName('DESATIVADO').AsString) = 'S' then
//        begin
//         Application.MessageBox('ATENÇÃO: CFOP DESATIVADO, FAVOR VERIFICAR.','', mb_OK);
//         MaskEdit9.SetFocus;
//        end
//     else
//        begin
//         {$REGION 'Notas Fiscais de Devolução Ativa Campos da nota de Referencia'}
//          if Trim(IBQ1.FieldByName('CFOP_DE_DEVOLUCAO').AsString) = 'S' then
//             begin
//              LabelNotaFiscalReferencial.Enabled := True;
//              MaskEditRefNF.Enabled              := True;
//              LabelNFEReferencial.Enabled        := True;
//              MaskEditREFNFE.Enabled             := True;
//             end
//          else
//             begin
//              LabelNotaFiscalReferencial.Enabled := False;
//              MaskEditRefNF.Enabled              := False;
//              LabelNFEReferencial.Enabled        := False;
//              MaskEditREFNFE.Enabled             := False;
//             end;
//         {$ENDREGION}
//
//         {$REGION 'Consiste se a CFOP de Saida e de Entrada'}
//         if ((Trim(ComboBoxFatura.Text) = 'S') and((Copy(MaskEdit9.Text, 1, 1) <> '5') and (Copy(MaskEdit9.Text, 1,1) <> '6') and (Copy(MaskEdit9.Text, 1, 1) <> '7'))) Then
//            begin
//             Application.MessageBox('ATENÇÃO: CFOP INVÁLIDA PARA NOTAS DE SAÍDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//             MaskEdit9.SetFocus;
//             Abort;
//            end;
//         if ((Trim(ComboBoxFatura.Text) = 'E') and((Copy(MaskEdit9.Text, 1, 1) <> '1') and (Copy(MaskEdit9.Text, 1,1) <> '2') and (Copy(MaskEdit9.Text, 1, 1) <> '3'))) Then
//            begin
//             Application.MessageBox('ATENÇÃO: CFOP INVÁLIDA PARA NOTAS DE ENTRADA, FAVOR VERIFICAR.','Aviso', mb_OK);
//             MaskEdit9.SetFocus;
//             Abort;
//            end;
//         {$ENDREGION}
//
//         MaskEditNatOPdesc.Text    := Trim(IBQ1.FieldByName('DESCRNAT').AsString);
//         if MaskEdit2.Text='999998' then
//            VARCRIADUPLICATA       := 'S'
//         else
//            VARCRIADUPLICATA       := Trim(IBQ1.FieldByName('CRIADUP').AsString);
//         VARGERADUP                := Trim(IBQ1.FieldByName('GERADUP').AsString);
//         VARBLOQUEIA_CODIGO_999999 := Trim(IBQ1.FieldByName('BLOQUEIA_CODIGO_999999').AsString);
//         VarCDNATOPE2              := IBQ1.FieldByName('CDNATOPE2').AsInteger;
//         MaskEditNF_PALETE.Text    := Trim(IBQ1.FieldByName('DEVOLUCAO_PALETES').AsString);
//         if TRIM(IBQ1.FieldByName('CDNATOPE2').AsString) <> '0' then
//            begin
//             Label16.Visible := True;
//             MaskEditCDNATOPEITEM.Visible := True;
//             MaskEditDescricaoNatopeitem.Visible := True;
//            end;
//         MaskEdit2.SetFocus;
//        end;
//     if VARCRIADUPLICATA = 'N' then
//        Application.MessageBox('ATENÇÃO: ESTA CFOP NÃO GERA DUPLICATAS.','Aviso', mb_OK);
//     if (MaskEdit2.Text = '999999') and  (TRIM(IBQ1.FieldByName('GERADUP').AsString) = 'S') THEN
//         begin
//          Application.MessageBox('ATENÇÃO: NÃO É PERMITIDO GERAR NOTAS FISCAIS COM ESSE CFOP.','Aviso', mb_OK);
//          MaskEdit9.SetFocus;
//         end;
//
//     {$REGION 'Ativa Campos de Controle de Palete'}
//     if (Trim(MaskEditNF_PALETE.Text)='S') and (Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('CONTROLE_PALLET_CLIENTE').AsString) = 'S') then
//        begin
//         LabelNFPallet.Enabled    := True;
//         ComboBoxNFPallet.Enabled := True;
//        end;
//     {$ENDREGION}
//
//     {$REGION 'Ativa Campos para Exportacao'}
//     if Copy(MaskEdit9.Text, 1, 1) = '7' then // exportação
//        GroupBoxExportacao.Visible := True
//     else
//        begin
//         MaskEditUFEMBARQ.Text      := '';
//         MaskEditxLocEmbarq.Text    := '';
//         GroupBoxExportacao.Visible := False;
//        end;
//     {$ENDREGION}
//    end;
end;

procedure TTelaNF.MaskEdit10Exit(Sender: TObject);
begin
// If not BitBtnFechar.Focused then
//    Begin
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEdit10.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit10.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//     IBQ1.Active := False;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('Select first 1 CDTRANSP, ICMSOUTRES, NMGUERRA, EMPRESA_CLIENTE, PLACA, ESTADO_PLACA, ANTT, OBS, TIPO from TRANSPOR');
//     IBQ1.SQL.Add('Where CDTRANSP = ''' + MaskEdit10.Text + ''' and BLOQUEADO=''N'' ');
//     IBQ1.Active := True;
//     If IBQ1.IsEmpty then
//        Begin
//         MaskeditNMGUERRA.Text := '';
//         Application.MessageBox('ATENÇÃO: TRANSPORTADORA NÃO CADASTRADA, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit10.SetFocus;
//         Abort;
//        End;
//     If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//        Begin
//         If TRIM(IBQ1.FieldByName('EMPRESA_CLIENTE').AsString) = '1' then
//            Begin
//             If ((TRIM(IBQ1.FieldByName('PLACA').AsString) = '') or
//                (TRIM(IBQ1.FieldByName('ANTT').AsString)   = '')   or
//                (TRIM(IBQ1.FieldByName('ESTADO_PLACA').AsString) = '')) Then
//                Begin
//                 If TRIM(IBQ1.FieldByName('TIPO').AsString) <> 'CARRO' Then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: TRANSPORTADORA NÃO LIBERADA PARA NF-E, FAVOR VERIFICAR O CADASTRO.','Aviso', mb_OK);
//                     ComboBoxFrete.SetFocus;
//                     Abort;
//                    End;
//                End;
//            End;
//        End;
//     If TRIM(IBQ1.FieldByName('EMPRESA_CLIENTE').AsString) = '1' then
//         MaskeditNMGUERRA.Text := TRIM(IBQ1.FieldByName('NMGUERRA').AsString) +'   Placa: ' + TRIM(IBQ1.FieldByName('ESTADO_PLACA').AsString) + ' ' +
//                                  TRIM(IBQ1.FieldByName('PLACA').AsString) + '   ANTT: ' +
//                                  TRIM(IBQ1.FieldByName('ANTT').AsString) + '    ' +
//                                  TRIM(IBQ1.FieldByName('OBS').AsString)
//     Else
//        MaskeditNMGUERRA.Text := 'Cliente Retira ' +TRIM(IBQ1.FieldByName('NMGUERRA').AsString);
//     MaskEditPlaca.Text      := TRIM(IBQ1.FieldByName('PLACA').AsString);
//     ComboBoxEstado.Text     := TRIM(IBQ1.FieldByName('ESTADO_PLACA').AsString);
//     ComboBoxTIPO_RODADO.Text:= TRIM(IBQ1.FieldByName('TIPO').AsString);
//     If TRIM(IBQ1.FieldByName('EMPRESA_CLIENTE').AsString) <> '' Then
//        Begin
//         If TRIM(IBQ1.FieldByName('EMPRESA_CLIENTE').AsString) = '1' Then
//           ComboBoxFrete.Text := '1';
//         If TRIM(IBQ1.FieldByName('EMPRESA_CLIENTE').AsString) = '2' Then
//           ComboBoxFrete.Text := '2';
//         ComboBoxFrete.TabStop := False;
//         ComboBoxFrete.Enabled := False;
//         // exportação
//         if (Copy(MaskEdit9.Text, 1, 1) = '7') and ((TRIM(MaskEditUFEMBARQ.Text) = '') or (TRIM(MaskEditxLocEmbarq.Text) = '')) then
//           Begin
//            GroupBoxExportacao.Visible := True;
//            if not BitBtnFechar.Focused then
//               Begin
//                Application.MessageBox('ATENÇÃO: ESTADO DO EMBARQUE EM BRANCO OU NOME DO LOCAL DE EMBARQUE EM BRANCO.','Aviso', mb_OK);
//                MaskEditUFEMBARQ.SetFocus;
//               End;
//            Abort;
//           End;
//        End
//    End;
end;

procedure TTelaNF.MaskEdit17Exit(Sender: TObject);
Begin
// {$REGION 'Consiste Número'}
// If StrIsInteger(MaskEdit17.Text) = False Then
//    Begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit17.SetFocus;
//     Abort;
//    End;
// {$ENDREGION}
//
// QTDItemOr              := 0;
// VARQUANTIDADE_PRODUZIDA:= 0;
// VARCARGAQUANTIDADE     := 0;
// VARCARGAPESOTOT        := 0;
// VARCARGAVLPEDIDO       := 0;
// VARIPI                 := 0;
// VARPESO_CAIXA_LIMPA    := 0;
// VARQUANTIDADE_EXPEDIDA := 0;
// If ((DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString = 'S') and (StrToFloatDef(MaskEdit2.Text,0) < 999993)) Then
//    Begin
//     IBQ1.Active := False;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('Select first 1 Pedido.NRPEDIDO, Pedido.CDCLIENTE, Pedido.CONDPAGTO, Pedido.PAGTO_CHEQUE, Pedido.TPBAIXA, Pedido.IPI, Pedido.USOCONSUMO, Clientes.EXIGE_LAUDO, Familia.LIBERA_LAUDO, Pedido.PEDIDCLI, Pedido.REFEREN,');
//     IBQ1.SQL.Add('Pedido.Situacao, Pedido.REFERENCIA, Pedido.DESCRICAO_AMOSTRA, Pedido.CDFAMILIA, Pedido.NR_EMPRESA, Pedido.FATURAMENTO_BLOQUEADO, Pedido.FATURAMENTO_SO_CDNATOPE, Pedido.VLUNITCR');
//     IBQ1.SQL.Add('from PEDIDO');
//     IBQ1.SQL.Add('LEFT OUTER JOIN Clientes ON (Pedido.CDCLIENTE = Clientes.CDCLIENTE)');
//     IBQ1.SQL.Add('LEFT OUTER JOIN Familia  ON (Pedido.CDFAMILIA = Familia.CDFAMILIA)');
//     IBQ1.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit17.Text) + '''');
//     IBQ1.Active := True;
//     VARIPI := IBQ1.FieldByName('IPI').AsFloat;
//     MaskEditCXPR2.Text := IBQ1.FieldByName('SITUACAO').AsString;
//     {$REGION 'Consiste Exigencia de Laudo no Pedido'}
//     If (DMIB.IBQueryParametros.FieldByName('EXIGE_LAUDO_NF').AsString = 'S') And
//        (TRIM(IBQ1.FieldByName('REFERENCIA').AsString) <> '')                 And
//        (IBQ1.FieldByName('SITUACAO').AsString<>'A TITULO DE AMOSTRA')        And
//        (IBQ1.FieldByName('EXIGE_LAUDO').AsString = 'S')                      Then
//        Begin
//         // tirando a familia de bobinas e bobinas onduladas... pois não gera o laudo no sistema!!!
//         If (TRIM(IBQ1.FieldByName('LIBERA_LAUDO').AsString) <> 'S') Then
//            Begin
//             IBQ7.Active := False;
//             IBQ7.SQL.Clear;
//             IBQ7.SQL.Add('select count(NRPEDIDO) as vezes from nfitem');
//             IBQ7.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit17.Text) + '''');
//             IBQ7.Active := True;
//             IBQ6.Active := False;
//             IBQ6.SQL.Clear;
//             IBQ6.SQL.Add('Select First 1 NRPEDIDO, NR_DE_IMPRESSOES from LAUDO');
//             IBQ6.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit17.Text) + '''');
//             IBQ6.Active := True;
//             if (IBQ1.FieldByName('CDCLIENTE').Asstring='10002') or (IBQ1.FieldByName('CDCLIENTE').Asstring='18371') then
//                bEGIN
//
//                end
//             else
//                BEGIN
//                 If IBQ6.IsEmpty then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CLIENTE EXIGE LAUDO. O QUAL NÃO FOI EMITIDO.'+#13+'NÃO É PERMITIDO A GERAÇÃO DA NOTA SEM O LAUDO EMITIDO, FAVOR VERIFICAR','Aviso', mb_OK);
//                     Abort;
//                     MaskEdit17.SetFocus;
//                    End;
//                 If StrToFloatDef(IBQ6.FieldByName('NR_DE_IMPRESSOES').AsString,0) < StrToFloatDef(IBQ7.FieldByName('VEZES').AsString,0) then
//                    Begin
//                     Application.MessageBox('ATENÇÃO: CLIENTE EXIGE LAUDO. O QUAL NÃO FOI IMPRESSO.'+#13+'NÃO É PERMITIDO A GERAÇÃO DA NOTA SEM O LAUDO IMPRESSO, FAVOR VERIFICAR','Aviso', mb_OK);
//                     Abort;
//                     MaskEdit17.SetFocus;
//                    End;
//                END;
//            End;
//        End;
//       {$ENDREGION}
//
//     {$REGION 'Consistencia para Faturamento Bloqueado no Pedido '}
//     If TRIM(IBQ1.FieldByName('FATURAMENTO_BLOQUEADO').AsString) = 'S' Then
//        Begin
//         Application.MessageBox('ATENÇÃO: PEDIDO BLOQUEADO PELO ADMINISTRATIVO.'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit17.SetFocus;
//         Abort;
//        End;
//     {$ENDREGION}
//
//     {$REGION 'Consistencia para Bloqueio de Faturamento em uma Determinada CFOP'}
//     If StrToFloatDef(Ibq1.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString,0) > 0 Then
//        Begin
//         if Trim(IBQ1.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString) <> Trim(Maskedit9.Text) then
//            Begin
//             Application.MessageBox(PWideChar('ATENÇÃO: CFOP DIFERENTE DO DESIGNADO PELO ADMINISTRATIVO ('+Trim(Ibq1.FieldByName('FATURAMENTO_SO_CDNATOPE').AsString)+')'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.'), 'Aviso', mb_OK);
//             MaskEdit17.SetFocus;
//             Abort;
//            End;
//        End;
//     {$ENDREGION}
//
//     {$REGION 'Alerta de Amostra'}
//     If (TRIM(IBQ1.FieldByName('DESCRICAO_AMOSTRA').AsString) <> '') Then
//        Begin
//         Application.MessageBox(PWideChar('ATENÇÃO: CLIENTE EXIGE ENVIO DE AMOSTRA ' +IBQ1.FieldByName('DESCRICAO_AMOSTRA').AsString), 'Aviso', mb_OK);
//        End;
//     {$ENDREGION}
//
//     {$REGION 'Verifica se o Apontamento da Fábrica foi Efetuado ou esta com Baixa Parcial ou Total'}
//     if (DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_AP_FINAL_PRODUCAO').AsString = 'S') and
//        ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995') or
//        (MaskEdit2.Text <> '999993')  or (MaskEdit2.Text <> '999996') or
//        (MaskEdit2.Text <> '999997')  or (MaskEdit2.Text <> '999998') or
//        (MaskEdit2.Text <> '999999')) then
//         begin
//           IBQ4.Active := False;
//           IBQ4.SQL.Clear;
//           IBQ4.SQL.Add('select first 1 afl.tp_apontamento ');
//           IBQ4.SQL.Add('from aponta_final_log afl ');
//           IBQ4.SQL.Add('where afl.nrpedido = '''+Trim(MaskEdit2.Text)+''' ');
//           IBQ4.SQL.Add('order by afl.controle desc ');
//           IBQ4.Active := True;
//           if Trim(IBQ4.FieldByName('TP_APONTAMENTO').AsString) = '' then
//             begin
//               Application.MessageBox('ATENÇÃO: PEDIDO SEM APONTAMENTO DA FABRICA,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//               MaskEdit2.SetFocus;
//               Abort;
//             end
//           else
//             begin
//               if (Trim(IBQ4.FieldByName('TP_APONTAMENTO').AsString) = 'P') and
//                  (Trim(ComboBoxBaixa.Text) = 'T' ) then
//                 begin
//                   Application.MessageBox('ATENÇÃO: ESTE PEDIDO NÃO ESTA COM APONTAMENTO FINAL,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                   MaskEdit2.SetFocus;
//                   Abort;
//                 end;
//             end;
//         end;
//       {$ENDREGION}
//
//     {$REGION 'Consistencia para Pedidos com condição de pagamento diferentes'}
//     If ((TRIM(IBQ1.FieldByName('CONDPAGTO').AsString) <> MaskEdit8.Text) and (StrToFloatDef(MaskEdit2.Text,0) < 999993)) then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         Application.MessageBox('ATENÇÃO: CONDIÇÃO DE PAGAMENTO DIFERENTE DO PEDIDO PRINCIPAL.'+#13+'NÃO É POSSÍVEL CONTINUAR.', 'Aviso', mb_OK);
//         Abort;
//         MaskEdit17.SetFocus;
//        End;
//     {$ENDREGION}
//
//     {$REGION 'Consistencia para Pedidos que devem ser faturado em outro CNPJ'}
//     If ((TRIM(IBQ1.FieldByName('NR_EMPRESA').AsString) <> ComboBoxEmpresa.Text) and (StrToFloatDef(MaskEdit2.Text,0) < 999993)) then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         Application.MessageBox('ATENÇÃO: PEDIDO DEVE SER FATURADO EM CNPJ DIFERENTE DO PEDIDO PRINCIPAL.'+ #13 + 'NÃO É POSSÍVEL CONTINUAR.', 'Aviso', mb_OK);
//         Abort;
//         MaskEdit17.SetFocus;
//        End;
//     {$ENDREGION}
//
//     If TRIM(IBQ1.FieldByName('TPBAIXA').AsString) = 'T' then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         If StrToIntDef(LabelITEM.Caption,0) = 1 then
//            Begin
//             Application.MessageBox('ATENÇÃO: PEDIDO JÁ ESTA BAIXADO, FAVOR VERIFICAR.', 'Aviso', mb_OK);
//             MaskEdit17.SetFocus;
//            End
//         Else
//         If VARDUPINCLUIDA = 'SIM' then
//            Begin
//             BitBtnFechar.Enabled := True;
//             BitBtnFechar.Click;
//            End
//         Else
//         If Application.MessageBox('PEDIDO JÁ BAIXADO!.(YES) SE DESEJA TENTAR NOVAMENTE (NO) SE DESEJAR CONCLUIR A NOTA.','PERGUNTA', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//            MaskEdit17.SetFocus
//         Else
//            Begin
//             BitBtnIncluiItem.Enabled := False;
//             If VARDUPINCLUIDA = 'NAO' then
//                BitBtnInclusao.Click;
//             BitBtnFechar.Enabled := True;
//            End;
//        End
//     Else
//     If ((TRIM(IBQ1.FieldByName('CDCLIENTE').AsString) <> MaskEditCodigoCli_For.Text) and (StrToFloatDef(MaskEdit2.Text,0) <999993)) then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         Application.MessageBox('ATENÇÃO: CLIENTE DIFERENTE DO PEDIDO PRINCIPAL.' +#13 + 'NÃO É POSSÍVEL CONTINUAR.', 'Aviso', mb_OK);
//         MaskEdit17.SetFocus;
//        End
//     Else
//     If ((TRIM(IBQ1.FieldByName('USOCONSUMO').AsString) <> TRIM(MaskEditUSOCONSUMO_ABR.Text)) and (StrToFloatDef(MaskEdit2.Text,0) < 999993)) then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         Application.MessageBox('ATENÇÃO: TIPO DE NOTA DIFERENTE DO PEDIDO PRINCIPAL, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit17.SetFocus;
//        End
//     Else
//     If IBQ1.IsEmpty then
//        Begin
//         BitBtnAlteracao.Enabled := False;
//         Application.MessageBox('ATENÇÃO: PEDIDO INEXISTENTE, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit17.SetFocus;
//        End
//     Else
//        Begin
//
//         {$REGION 'Bloqueia Lançar duas Vezes a mesma referencia na nota'}
//         IF (DMIB.IBQueryEmpresa.FieldByName('Empresa1').Asstring='EMB. MARA LTDA') Then
//             Begin
//              If StrToFloatDef(LabelITEM.Caption,0)>1 then
//                 Begin
//                  IBQ8.Active := False;
//                  IBQ8.SQL.Clear;
//                  IBQ8.SQL.Add('SELECT First 1 NFITEM.referen, NFITEM.pedidcli, NFITEM.vlunit');
//                  IBQ8.SQL.Add('FROM NFITEM');
//                  IBQ8.SQL.Add('Where NRNF = ''' + MaskEdit1.Text + ''' ');
//                  If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                     IBQ8.SQL.Add('and SERIE=1')
//                  Else
//                     IBQ8.SQL.Add('and SERIE=0');
//                  IBQ8.SQL.Add('and NR_EMPRESA = '''+TelaNF.ComboBoxEmpresa.Text+ ''' ');
//                  IBQ8.Active := True;
//                  If (Trim(IBQ8.FieldByName('REFEREN').AsString) = Trim(IBQ1.FieldByName('REFEREN').AsString))  and
//                     (Trim(IBQ8.FieldByName('PEDIDCLI').AsString)= Trim(IBQ1.FieldByName('PEDIDCLI').AsString)) and
//                     (IBQ8.FieldByName('VLUNIT').AsFloat         = IBQ1.FieldByName('VLUNITCR').AsFloat)          then
//                     Begin
//                      Application.MessageBox('ATENÇÃO: NÃO É PERMITIDO LANCAR A MESMA REFERÊNCIA 2 VEZES'+ #13 + 'NA MESMA NOTA. FAVOR EFETUAR A UNIFICAÇÃO DO PEDIDO.','Aviso', mb_OK);
//                      BitBtnLimpaCamposItem.Click;
//                      Abort;
//                     End;
//                 End;
//             End;
//          {$ENDREGION}
//
//         IBQ1.Active := False;
//         IBQ1.SQL.Clear;
//         IBQ1.SQL.Add('Select NRPEDIDO, MAQUINA, CDCLIENTE, QUANTIDADE, PESOTOT, VLPEDIDO, QUANTIDADE_PRODUZIDA, PESO_CAIXA_LIMPA, QUANTIDADE_EXPEDIDA, APONTADO_ONDULADEIRA, QUANTIDADE_APONTADOR, CONFERIDO_POR');
//         IBQ1.SQL.Add('from CARGA');
//         IBQ1.SQL.Add('Where NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//         IBQ1.Active := True;
//
//         {$REGION 'Bloqueia o Faturamento para pedidos não apontados na Onduladeira'}
//         If (DMIB.IBQueryParametros.FieldByName('EXIGE_AP_ONDU_NF').AsString = 'S') and
//            (TRIM(IBQ1.FieldByName('APONTADO_ONDULADEIRA').AsString) <> 'S')        and
//            ((MaskEdit17.Text <> '999994') or (MaskEdit17.Text <> '999995')         or
//             (MaskEdit17.Text <> '999993')                                          or
//            (MaskEdit17.Text <> '999996') or (MaskEdit2.Text <> '999997')           or
//            (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999'))           then
//            Begin
//             IBQ4.Active := False;
//             IBQ4.SQL.Clear;
//             IBQ4.SQL.Add('Select First 1 NRPEDIDO');
//             IBQ4.SQL.Add('from APONTA');
//             IBQ4.SQL.Add('Where NRPEDIDO = ''' + TRIM(MaskEdit17.Text) +'''  and ');
//             IBQ4.SQL.Add('Maquina<=:MAQCHAPA');
//             IBQ4.ParamByName('MAQCHAPA').AsFloat := DMIB.IBQueryParametros.FieldByName('MAQCHAPA').AsFloat;
//             IBQ4.Active := True;
//             If IBQ4.IsEmpty then
//                Begin
//                 Application.MessageBox('ATENÇÃO: PEDIDO NÃO APONTADO NA ONDULADEIRA,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit17.SetFocus;
//                 Abort;
//                End;
//            End;
//         {$ENDREGION}
//
//         {$REGION 'Se For Obrigatorio a Conferencia da Expedição checa se esta ok'}
//         If (DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_CONFERENCIA_EXPEDICAO').AsString = 'S') and
//            (Trim(IBQ1.FieldByName('CONFERIDO_POR').AsString) = '') and
//            ((MaskEdit2.Text <> '999994') or (MaskEdit2.Text <> '999995')         or
//             (MaskEdit2.Text <> '999993') or
//             (MaskEdit2.Text <> '999996') or (MaskEdit2.Text <> '999997')          or
//             (MaskEdit2.Text <> '999998') or (MaskEdit2.Text <> '999999'))         then
//             Begin
//              Application.MessageBox('ATENÇÃO: PEDIDO SEM CONFERENCIA DA EXPEDIÇÃO,'+ #13 + 'NÃO É PERMITIDO O SEU FATURAMENTO. FAVOR VERIFICAR.','Aviso', mb_OK);
//              MaskEdit17.SetFocus;
//              Abort;
//             End;
//         {$ENDREGION}
//
//         VARCARGAQUANTIDADE        := IBQ1.FieldByName('QUANTIDADE').AsFloat;
//         VARQUANTIDADE_PRODUZIDA   := IBQ1.FieldByName('QUANTIDADE_PRODUZIDA').AsFloat;
//         VARCARGAPESOTOT           := IBQ1.FieldByName('PESOTOT').AsFloat;
//         VARCARGAVLPEDIDO          := IBQ1.FieldByName('VLPEDIDO').AsFloat;
//         VARPESO_CAIXA_LIMPA       := IBQ1.FieldByName('PESO_CAIXA_LIMPA').AsFloat;
//         MaskEditQtdApontada.Text  := FloatToStr(IBQ1.FieldByName('QUANTIDADE_APONTADOR').AsFloat);
//         If TRIM(ComboBoxFatura.Text) = 'S' Then
//            VARQUANTIDADE_EXPEDIDA  := IBQ1.FieldByName('QUANTIDADE_EXPEDIDA').AsFloat
//         Else
//            VARQUANTIDADE_EXPEDIDA  := 0;
//        If (DMIB.IBQueryParametros.FieldByName('LIBERA_NF_PRE').AsString <> 'S') And (TRIM(IBQ1.FieldByName('MAQUINA').AsString)= IntToStr(DMIB.IBQueryParametros.FieldByName('MAQCHAPA') .AsInteger)) Then
//           Begin
//            BitBtnAlteracao.Enabled := False;
//            if Application.MessageBox('ATENÇÃO: NÃO É POSSÍVEL FATURAR UM PEDIDO QUE ESTÁ EM PROGRAMAÇÃO.'+ #13 + 'DESEJA TENTAR NOVAMENTE?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//               MaskEdit17.SetFocus
//            ELSE
//               BitBtnIncluiItem.Enabled := False;
//           End
//        else
//           Begin
//            If TRIM(IBQ1.FieldByName('CDCLIENTE').AsString) <> MaskEditCodigoCli_For.Text then
//               Application.MessageBox('ATENÇÃO: ESTE Nº DE PEDIDO.' + #13 +'NÃO PERTENCE A ESTE CLIENTE OU PEDIDO JÁ BAIXADO.', 'Aviso', mb_OK)
//            Else
//               Begin
//                IBQ1.Active := False;
//                IBQ1.SQL.Clear;
//                IBQ1.SQL.Add('SELECT First 1 Pedido.NRPEDIDO, Pedido.CDCLIENTE, Pedido.DATAPED, Pedido.DATEENT, Pedido.REFEREN, Pedido.QUANTIDA, Pedido.VLPEDICR, Pedido.PESOTOT, Pedido.PESOCX, Pedido.PRECOMED, Familia.PROGOND,');
//                IBQ1.SQL.Add('Pedido.CDFAMILIA, Pedido.TPBAIXA, Pedido.CDVENDED, Pedido.CDPAPEL, Pedido.CDCAIXA, Pedido.PEDIDCLI, Pedido.VLUNITCR, Pedido.VLPEDIDO, Pedido.IPI, Pedido.UNIDADE, Pedido.VALIDACAO, Pedido.PEDIDCLIITEM,');
//                IBQ1.SQL.Add('Pedido.CONDPAGTO, Pedido.PAGTO_CHEQUE, Pedido.PESOCP, Pedido.SITUACAO, Pedido.PCCOMISS, Pedido.REFERENCIA, Clientes.NOME, Familia.NOME NOMEFAMILI, Papel.NOME NOMEPAPEL, Pedido.DATEENT, Pedido.PESOCAIXA, Clientes.IMPRIME_FAMILA_NF');
//                IBQ1.SQL.Add('FROM Pedido');
//                IBQ1.SQL.Add('LEFT OUTER JOIN Clientes ON (Pedido.CDCLIENTE = Clientes.CDCLIENTE)');
//                IBQ1.SQL.Add('LEFT OUTER JOIN Papel    ON (Pedido.CDPAPEL = Papel.CDPAPEL)');
//                IBQ1.SQL.Add('LEFT OUTER JOIN Familia  ON (Pedido.CDFAMILIA = Familia.CDFAMILIA)');
//                IBQ1.SQL.Add('Where Pedido.NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//                IBQ1.Active := True;
//
//                {$REGION 'Verifica Pedido com a mesma data e referencia caso exista exige que se fature o de menor numeração.'}
//                IBQ4.Active := False;
//                IBQ4.SQL.Clear;
//                IBQ4.SQL.Add('Select First 1 Carga.NRPEDIDO, Carga.DTENTREGA, Carga.REFERENCIA, Carga.CDCLIENTE, Carga.QUANTIDADE_EXPEDIDA, Situacao_Pedido.CAIXA_PRONTA');
//                IBQ4.SQL.Add('from CARGA');
//                IBQ4.SQL.Add('LEFT OUTER JOIN Pedido          ON (Carga.NRPEDIDO  = Pedido.NRPEDIDO)');
//                IBQ4.SQL.Add('LEFT OUTER JOIN Situacao_Pedido ON (Pedido.SITUACAO = Situacao_Pedido.Descricao)');
//                IBQ4.SQL.Add('Where (Carga.CDCLIENTE = ''' + MaskEditCodigoCli_For.Text + ''') and (Carga.REFERENCIA=''' + TRIM(IBQ1.FieldByName('REFEREN').AsString) + ''') ');
//                IBQ4.SQL.Add('and (Carga.DTENTREGA=''' + FormatDateTime('MM/DD/YYYY',IBQ1.FieldByName('DATEENT').AsDateTime) + ''') ');
//                IBQ4.SQL.Add('and (Carga.NRPEDIDO<>''' + MaskEdit17.Text + ''') ');
//                IBQ4.SQL.Add('and ((Carga.SITUACAO<>''ANTECIPAÇÃO DO CLIENTE'') or (Carga.SITUACAO<>''CAIXAS PRONTAS EXPEDIÇÃO''))');
//                IBQ4.Active := True;
//                If (IBQ4.FieldByName('NRPEDIDO').AsFloat > 0) And (IBQ4.FieldByName('NRPEDIDO').AsFloat < StrToFloatDef(MaskEdit17.Text,0)) Then
//                   Begin
//                    If ((TRIM(DMIB.IBQueryParametros.FieldByName('CONTROLA_PEDIDO_FATURAMENTO').AsString) = 'S') and
//                       (TRIM(IBQ4.FieldByName('CAIXA_PRONTA').AsString) = 'N') and (TRIM(MaskEditCXPR2.Text) <> 'CAIXAS PRONTAS EXPEDIÇÃO')) Then
//                       Begin
//                        Application.MessageBox(PWideChar('ATENÇÃO: EXISTE PEDIDO: ' + IBQ4.FieldByName('NRPEDIDO').AsString +' COM A MESMA DATA DE ENTREGA, PORÉM COM NUMERAÇÃO MENOR.' + #13+ 'FATURAR ESTE PEDIDO PRIMEIRO, FAVOR VERIFICAR'), 'Aviso', mb_OK);
//                        BitBtnLimpaCamposItem.Click;
//                        MaskEdit17.SetFocus;
//                        Abort;
//                       End;
//                   End;
//                {$ENDREGION}
//
//                {$REGION 'Verifica Pedido com data anterior na Carga da mesma referencia'}
//                IBQ4.Active := False;
//                IBQ4.SQL.Clear;
//                IBQ4.SQL.Add('Select First 1 Carga.NRPEDIDO, Carga.DTENTREGA, Carga.REFERENCIA, Carga.CDCLIENTE, Carga.QUANTIDADE_EXPEDIDA, Situacao_Pedido.CAIXA_PRONTA  ');
//                IBQ4.SQL.Add('from CARGA');
//                IBQ4.SQL.Add('LEFT OUTER JOIN Pedido          ON (Carga.NRPEDIDO  = Pedido.NRPEDIDO)');
//                IBQ4.SQL.Add('LEFT OUTER JOIN Situacao_Pedido ON (Pedido.SITUACAO = Situacao_Pedido.Descricao)');
//                IBQ4.SQL.Add('Where Carga.CDCLIENTE = ''' + MaskEditCodigoCli_For.Text+ ''' and Carga.REFERENCIA=''' + TRIM(IBQ1.FieldByName('REFEREN').AsString) + ''' ');
//                IBQ4.SQL.Add('and Carga.DTENTREGA<''' + FormatDateTime('MM/DD/YYYY',IBQ1.FieldByName('DATEENT').AsDateTime) + ''' ');
//                IBQ4.SQL.Add('and ((Carga.SITUACAO<>''ANTECIPAÇÃO DO CLIENTE'') or (Carga.SITUACAO<>''CAIXAS PRONTAS EXPEDIÇÃO''))');
//                IBQ4.Active := True;
//                If IBQ4.FieldByName('NRPEDIDO').AsFloat > 0 Then
//                   Begin
//                    If VARQUANTIDADE_EXPEDIDA > 0 Then
//                       Begin
//                        JvNavPanelHeader1.ColorFrom := clFuchsia;
//                        JvNavPanelHeader1.ColorTo   := clPurple;
//                        JvNavPanelHeader1.Caption   := 'ATENÇÃO: Existem Pedidos com Data de Entrega Anterior desta Referêcia na Carga, QUANTIDADE DESTE PEDIDO JÁ FATURADA: '+ FormatFloat('#,###,###,##0', VARQUANTIDADE_EXPEDIDA);
//                       End
//                    Else
//                       Begin
//                        JvNavPanelHeader1.ColorFrom := clRed;
//                        JvNavPanelHeader1.ColorTo := clMaroon;
//                        JvNavPanelHeader1.Caption := 'ATENÇÃO: Existem Pedidos com Data de Entrega Anterior desta Referêcia na Carga.';
//                       End;
//                    JvNavPanelHeader1.Visible := True;
//                    If ((TRIM(DMIB.IBQueryParametros.FieldByName('CONTROLA_PEDIDO_FATURAMENTO').AsString) = 'S') And
//                       (TRIM(IBQ4.FieldByName('CAIXA_PRONTA').AsString) = 'N') and
//                       (TRIM(MaskEditCXPR2.Text) <> 'CAIXAS PRONTAS EXPEDIÇÃO')) Then
//                       Begin
//                        Application.MessageBox(PWideChar('ATENÇÃO: EXISTE PEDIDO: ' + IBQ4.FieldByName('NRPEDIDO').AsString + ' COM DATA DE ENTREGA ANTERIOR A ESTE.' + #13 +'NÃO É PERMITIDO FATURAR ESTE PEDIDO, FAVOR VERIFICAR'), 'Aviso', mb_OK);
//                        BitBtnLimpaCamposItem.Click;
//                        MaskEdit17.SetFocus;
//                        Abort;
//                       End;
//                   End
//                Else
//                   Begin
//                    If VARQUANTIDADE_EXPEDIDA > 0 Then
//                       Begin
//                        JvNavPanelHeader1.ColorFrom := clFuchsia;
//                        JvNavPanelHeader1.ColorTo := clPurple;
//                        JvNavPanelHeader1.Caption :='ATENÇÃO: QUANTIDADE DESTE PEDIDO JÁ FATURADA: ' + FormatFloat('#,###,###,##0', VARQUANTIDADE_EXPEDIDA);
//                        JvNavPanelHeader1.Visible := True;
//                       End;
//                   End;
//                {$ENDREGION}
//
//                MaskEditCodigoCli_For.Text := TRIM(IBQ1.FieldByName('CDCLIENTE').AsString);
//                MaskEditNomeCli.Text       := TRIM(IBQ1.FieldByName('NOME').AsString);
//                MaskEdit8.Text             := TRIM(IBQ1.FieldByName('CONDPAGTO').AsString);
//                MaskEditPGTO_CHEQUE.Text   := TRIM(IBQ1.FieldByName('PAGTO_CHEQUE').AsString);
//                ComboBoxUnidade.Text       := TRIM(IBQ1.FieldByName('UNIDADE').AsString);
//                MaskEdit19.Text            := FloatToStr(VARCARGAQUANTIDADE);
//                QTDItemOr                  := VARCARGAQUANTIDADE;
//                If TRIM(MaskEditSV.Text) <> '0' Then
//                   VARVLUNITCR := ((IBQ1.FieldByName('VLUNITCR').AsFloat) *(100 - StrToFloatDef(MaskEditSV.Text,0)) / 100)
//                Else
//                   VARVLUNITCR := IBQ1.FieldByName('VLUNITCR').AsFloat;
//                MaskEditVALIDADOR_PEDIDO.Text := IBQ1.FieldByName('VALIDACAO').AsString;
//                If VARPESO_CAIXA_LIMPA > 0 then
//                   Begin
//                    IF ((IBQ1.FieldByName('cdfamilia').AsFloat <> 4) And
//                       (IBQ1.FieldByName('cdfamilia').AsFloat <> 1) And
//                       (IBQ1.FieldByName('cdfamilia').AsFloat <> 3)) Then
//                       VARPESOCX := IBQ1.FieldByName('pesocx').AsFloat +VARPESO_CAIXA_LIMPA - IBQ1.FieldByName('pesocaixa').AsFloat
//                    Else
//                       VARPESOCX := IBQ1.FieldByName('PESOCX').AsFloat;
//                   End
//                Else
//                  VARPESOCX := IBQ1.FieldByName('PESOCX').AsFloat;
//                If DMIB.IBQueryParametros.FieldByName('IMPRIME_PAPEL_NA_NF').AsString = 'S' then
//                   Begin
//                    If TRIM(IBQ1.FieldByName('IMPRIME_FAMILA_NF').AsString) = 'N' Then
//                       MaskEdit21.Text := TRIM(IBQ1.FieldByName('NOMEPAPEL').AsString)
//                    Else
//                       MaskEdit21.Text := TRIM(IBQ1.FieldByName('NOMEFAMILI').AsString) +' ' + TRIM(IBQ1.FieldByName('NOMEPAPEL').AsString)
//                   End
//                Else
//                   MaskEdit21.Text := TRIM(IBQ1.FieldByName('NOMEFAMILI').AsString);
//                MaskEdit22.Text := TRIM(IBQ1.FieldByName('REFEREN').AsString);
//
//                {$REGION 'Bloqueia alteração de Descrição e Referencia'}
//                If (DMIB.IBQueryParametros.FieldByName('BLOQUEIA_DESCRICAO_NF_PEDIDO').AsString = 'S') and (StrToFloatDef(MaskEdit17.Text,0) < 999993) then
//                   Begin
//                    MaskEdit22.TabStop  := False;
//                    MaskEdit21.TabStop  := False;
//                    MaskEdit22.ReadOnly := True;
//                    MaskEdit21.ReadOnly := True;
//                    MaskEdit24.ReadOnly := True;
//                   End
//                Else
//                   Begin
//                    MaskEdit22.TabStop  := True;
//                    MaskEdit21.TabStop  := True;
//                    MaskEdit22.ReadOnly := False;
//                    MaskEdit21.ReadOnly := False;
//                    MaskEdit24.ReadOnly := False;
//                   End;
//                {$ENDREGION}
//
//                MaskEdit23.Text := FloatToStr(VARCARGAPESOTOT);
//
//                {$REGION 'Verifica Pedido do Cliente Quando o mesmo é Obrigatório'}
//                If ((Trim(IBQ1.FieldByName('PEDIDCLI').AsString) = '') and(StrToFloatDef(MaskEdit17.Text,0) < 999993)
//                 and(Trim(MaskeditEPEDCLI.Text) = 'S') and (Trim(Maskedit9.Text)<> '5911')) then
//                   Begin
//                    Application.MessageBox('ATENÇÃO: PEDIDO SEM NÚMERO DO PEDIDO DO CLIENTE' + #13 +'O QUAL É OBRIGATÓRIO PARA ESTE CLIENTE' + #13 +'FAVOR VERIFICAR COM O DEPARTAMENTO DE VENDAS', 'Aviso', mb_OK);
//                    Abort;
//                    MaskEdit17.SetFocus;
//                   End;
//                {$ENDREGION '}
//
//                {$REGION 'Verifica Item do Pedido do Cliente Quando o mesmo é Obrigatório'}
//                If ((TRIM(IBQ1.FieldByName('PEDIDCLIITEM').AsString) = '') And(StrToFloatDef(MaskEdit17.Text,0) < 999993) And(TRIM(MaskeditEITEMPEDCLI.Text) = 'S')) Then
//                   Begin
//                    Application.MessageBox('ATENÇÃO: PEDIDO SEM NÚMERO DO ÍTEM DO PEDIDO DO CLIENTE' + #13 +'O QUAL É OBRIGATÓRIO PARA ESTE CLIENTE' + #13 +'FAVOR VERIFICAR COM O DEPARTAMENTO DE VENDAS', 'Aviso', mb_OK);
//                    Abort;
//                    MaskEdit17.SetFocus;
//                   End;
//                {$ENDREGION}
//
//                MaskEdit24.Text                := TRIM(IBQ1.FieldByName('PEDIDCLI').AsString);
//                MaskEditPedidoClienteItem.Text := TRIM(IBQ1.FieldByName('PEDIDCLIITEM').AsString);
//                If StrToFloatDef(MaskEditSV.Text,0) = 0 Then
//                   Begin
//                    if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '4' then
//                       MaskEditVLUNIT.Text := FormatFloat('######0.0000',IBQ1.FieldByName('VLUNITCR').AsFloat);
//                    if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '5' then
//                       MaskEditVLUNIT.Text := FormatFloat('######0.00000',IBQ1.FieldByName('VLUNITCR').AsFloat);
//                    MaskEditVLTOTAL.Text := FormatFloat('######0.00', VARCARGAVLPEDIDO);
//                   End
//                Else
//                   Begin
//                    if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '4' then
//                       MaskEditVLUNIT.Text := FormatFloat('######0.0000',(((IBQ1.FieldByName('VLUNITCR').AsFloat *(100 - StrToFloatDef(MaskEditSV.Text,0))) / 100)));
//                    if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '5' then
//                       MaskEditVLUNIT.Text := FormatFloat('######0.00000',(((IBQ1.FieldByName('VLUNITCR').AsFloat *(100 - StrToFloatDef(MaskEditSV.Text,0))) / 100)));
//                    MaskEditVLTOTAL.Text := FormatFloat('######0.00',(((VARCARGAVLPEDIDO * (100 - StrToFloatDef(MaskEditSV.Text,0))) / 100)));
//                   End;
//                JvDateEditDTENTREGAPED.Text := TRIM(IBQ1.FieldByName('DATEENT').AsString);
//
//                {$REGION 'Traz da Referencia Fator de Conversão de quantidade para quando o expedido é em pacotes e NCM e O GTIN_EAN'}
//                IBQ1.Active := False;
//                IBQ1.SQL.Clear;
//                IBQ1.SQL.Add('SELECT First 1 FATOR_QTD, NCM, GTIN_EAN');
//                IBQ1.SQL.Add('from REFERE');
//                IBQ1.SQL.Add('Where CDREFE = ''' + MaskEdit22.Text +''' AND CDCLIENTE = ''' + MaskEditCodigoCli_For.Text + '''');
//                IBQ1.Active := True;
//                MaskEditFATORQ.Text   := TRIM(IBQ1.FieldByName('FATOR_QTD').AsString);
//                MaskEditGTIN_EAN.Text := TRIM(IBQ1.FieldByName('GTIN_EAN').AsString);
//                If TRIM(IBQ1.FieldByName('NCM').AsString)<>'' Then
//                   Begin
//                    IBQ1.Active := False;
//                    IBQ1.SQL.Clear;
//                    IBQ1.SQL.Add('Select First 1 * from CLASSIFICACAO_FISCAL');
//                    IBQ1.SQL.Add('Where IDCLASS = ''' + MaskEdit26.Text +''' and DESATIVA=''N'' ');
//                    IBQ1.Active := True;
//                    If IBQ1.IsEmpty then
//                        MaskEdit17.SetFocus
//                    Else
//                        Begin
//                         If ((TRIM(MaskEditI_S_T.Text) = 'IPI55') or (TRIM(MaskEditI_S_T.Text) = 'IPI52')) and (IBQ1.FieldByName('PCAIPI').AsFloat <> 0) Then
//                            Begin
//                             If (MaskEdit9.Text) <> '5902' Then
//                                Begin
//                                 Application.MessageBox('ATENÇÃO: A SITUAÇÃO TRIBUTARIA CADASTRADA NA OBSERVAÇÃO FISCAL DESTA NOTA DEVE TER IPI COM ALÍQUOTA 0, FAVOR VERIFICAR.','Aviso', mb_OK);
//                                 MaskEdit17.SetFocus;
//                                 Abort;
//                                End;
//                            End;
//                         If (MaskEdit2.Text <> '999999') and (MaskEdit2.Text <> '999998') and
//                            (DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString <> 'N')
//                            and (MaskEdit2.Text <> '999997') and (MaskEdit2.Text <> '999996')
//                            and (MaskEdit2.Text <> '999993') and
//                            (MaskEdit2.Text <> '999995') and (MaskEdit2.Text <> '999994') then
//                            Begin
//                             If VARIPI <> IBQ1.FieldByName('PCAIPI').AsFloat then
//                                Begin
//                                 Application.MessageBox('ATENÇÃO IPI DIFERENTE DA REFERÊNCIA. FAVOR CORRIGIR OU CASO ESTEJA CORRETO ENTRAR EM CONTATO COM VENDAS, PARA QUE A MESMA FAÇA O DEVIDO ACERTO, NA REFERÊNCIA E NO PEDIDO.','Aviso', mb_OK);
//                                 MaskEdit17.SetFocus
//                                End
//                             Else
//                                Begin
//                                 LabelIPIOriginal.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                                 LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                                 If TRIM(ComboBoxFatura.Text) = 'S' then
//                                    Begin
//                                     If MaskEdit2.Text = '999999' then
//                                        if Application.MessageBox('RECOLHE IPI?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//                                           LabelIPI.Caption := '0';
//                                    End;
//                                End;
//                            End
//                         Else
//                            Begin
//                             LabelIPIOriginal.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                             LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                             If MaskEdit2.Text = '999999' then
//                                Begin
//                                 if Application.MessageBox('RECOLHE IPI?', 'Pergunta',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//                                 Else
//                                    LabelIPI.Caption := '0';
//                                End;
//                            End;
//                         MaskEditDescClass.Text :=TRIM(IBQ1.FieldByName('DESCRICAO_CNM').AsString)+' IPI: '+TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                        End;
//
//                   End;
//                {$ENDREGION}
//
//                IBQ1.Active := False;
//                MaskEditCodigoCli_For.ReadOnly := True;
//                If BitBtnInclusao.Enabled = False then
//                   BitBtnInclusao.Enabled := False
//                Else
//                   BitBtnInclusao.Enabled := True;
//               End;
//           End;
//        End;
//    End;
end;

procedure TTelaNF.ComboBoxFaturaExit(Sender: TObject);
begin
 If (ComboBoxFatura.Text <> 'S') and (ComboBoxFatura.Text <> 'E') then
    ComboBoxFatura.SetFocus;
end;

procedure TTelaNF.ShowHint (Sender: TObject);
begin
End;

procedure TTelaNF.FormActivate(Sender: TObject);
begin
// DMIB.IBQueryDT.Active := False;
// DMIB.IBQueryDT.SQL.Clear;
// DMIB.IBQueryDT.SQL.Add('select current_time, current_date, current_timestamp from rdb$database');
// DMIB.IBQueryDT.Active := True;

// if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('EDITA_PORTARDOR_NA_NF').AsString)<>'S' then
//    begin
//     ComboBoxPortador.Visible := False;
//     LabelPortador.Visible    := False;
//    end;

// {$REGION 'Exige Motivo da Emissão da NF'}
//// if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_MOTIVO_EMISSAO_NF').AsString) = 'S' then
////    begin
////     IBQ9.Active := False;
////     IBQ9.SQL.Clear;
////     IBQ9.SQL.Add('select CONTROLE, descricao, exige_complemento, exige_justificativa ');
////     IBQ9.SQL.Add('from nf_motivo_emissao ');
////     IBQ9.SQL.Add('order by descricao ');
////     IBQ9.Active := True;
////     LabelMotivoEmissao.Visible    := True;
////     ComboBoxMotivoEmissao.Visible := True;
////     ComboBoxMotivoEmissao.Enabled := True;
////    end
//// else
////    begin
////     LabelMotivoEmissao.Visible    := False;
////     ComboBoxMotivoEmissao.Visible := False;
////    end;
// {$ENDREGION}

// MaskEditItensNota.Text := DMIB.IBQueryParametros.FieldByName('LIMITE_ITENS_NF').AsString;
// VARDUPINCLUIDA         := 'NAO';
// VARRETENCOES           := 'NAO';
//
// {$REGION 'Exige Validor do Pedido'}
//// if DMIB.IBQueryParametros.FieldByName('VALIDACAO_PEDIDO_NF').AsString = 'S' then
////    begin
////     Label51.Visible           := True;
////     MaskEditValidacao.Visible := True;
////    end;
// {$ENDREGION}
//
// {$REGION 'Tipo de Frete'}
//// If DMIB.IBQueryParametros.FieldByName('TIPO_FRETE').AsString = 'P' THEN
////    Begin
////     Label48.Visible := False;
////     MaskEditVLTOTFRE.Visible := False;
////    End;
// {$ENDREGION}
//
// {$REGION 'Altera o ICMS na NF'}
// If DMIB.IBQueryParametros.FieldByName('ALTERA_ICMS_NF').AsString = 'S' THEN
//    Begin
//     MaskEditICM.TabStop := True;
//     MaskEditICM.ReadOnly := False;
//    End
// Else
//    Begin
//     MaskEditICM.TabStop := False;
//     MaskEditICM.ReadOnly := True;
//    End;
// {$ENDREGION}
//
// {$REGION 'Exige Numero do Pedido na nf'}
//// If DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString = 'N' then
////    Begin
////     LabelNumeroPedido.Font.Color := ClBlack;
////     LabelClifor.Font.Color := clRed;
////     Label10.Font.Color := clRed;
////    End;
// {$ENDREGION}
//
//  if BitBtnInclusao.Visible = True then
//    begin
//      JvDateEdit1.Text := DateToStr((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime));
//      JvDateEdit2.SetFocus;
//    end;
// If BitBtnAlteracao.Visible = True then
//    Begin
//     GroupBoxITEM.Visible := False;
//     GroupBox6.Visible    := False;
//    End;
end;

procedure TTelaNF.JvDateEdit2Enter(Sender: TObject);
begin
// If (BitBtnInclusao.Visible = True) and (JvDateEdit2.Text = '  /  /    ') then
//    JvDateEdit2.Text := DateToStr((DMIB.IBQueryDT.FieldByName('current_date').AsDateTime));
end;

procedure TTelaNF.JvDateEdit2Exit(Sender: TObject);
begin
// If BitBtnInclusao.Visible = True then
//    Begin
//     If JvDateEdit2.Text = '  /  /    ' then
//       JvDateEdit2.SetFocus;
//     If StrToDate(JvDateEdit2.Text) < StrToDate(JvDateEdit1.Text) then
//        Begin
//         JvDateEdit2.SetFocus;
//         Application.MessageBox('ATENÇÃO: DATA INVÁLIDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//        End
//     Else
//        Begin
//         JvDateEditV1.Text := JvDateEdit2.Text;
//         JvDateEditV2.Text := JvDateEdit2.Text;
//         JvDateEditv3.Text := JvDateEdit2.Text;
//         JvDateEditV4.Text := JvDateEdit2.Text;
//         JvDateEditV5.Text := JvDateEdit2.Text;
//         JvDateEditV6.Text := JvDateEdit2.Text;
//        End;
//    End;
end;

procedure TTelaNF.ComboBoxFreteExit(Sender: TObject);
begin
// If (ComboBoxFrete.Text <> '1') and (ComboBoxFrete.Text <> '2') and (ComboBoxFrete.Text <> '9') then
//    ComboBoxFrete.SetFocus
end;

procedure TTelaNF.ComboBoxEspecieExit(Sender: TObject);
begin
// if ComboBoxEspecie.Text = '' then
//    ComboBoxEspecie.SetFocus
// else
// if Uppercase(ComboBoxEspecie.Text) = 'PALLETS' then
//    begin
//     if (Pos(Trim(Maskedit9.Text),'5909|5949') <> 0) and ((Trim(MaskEditRefNF.Text) = '') or (Trim(MaskEditRefNF.Text) = '0')) then
//        begin
//         Application.MessageBox('ATENÇÃO: DIGITE A NOTA FISCAL REFERENCIAL.','Aviso', mb_OK);
//         MaskEditRefNF.SetFocus;
//        end;
//    end;
end;

procedure TTelaNF.ComboBoxEstadoExit(Sender: TObject);
begin
// IBQ1.Close;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select First 1 CDIBGE, NOMEIBGE as CIDADE, ESTADOIBGE ');
// IBQ1.SQL.Add('From CIDADEIBGE ');
// IBQ1.SQL.Add('Where ESTADOIBGE = ''' + ComboBoxEstado.Text + ''' ');
// IBQ1.SQL.Add('Order By NOMEIBGE');
// IBQ1.Open;
// If IBQ1.IsEmpty then
//    Begin
//     Application.MessageBox('ATENÇÃO: ESTADO DA PLACA DO CAMINHÃO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     ComboBoxEstado.SetFocus;
//     Abort;
//    End;
end;

procedure TTelaNF.MaskEdit26Exit(Sender: TObject);
begin
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEdit26.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit26.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
// If MaskEdit26.Text = '' then
//    MaskEdit26.SetFocus
// Else
//    Begin
//     IBQ1.Active := False;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('Select First 1 * from CLASSIFICACAO_FISCAL');
//     IBQ1.SQL.Add('Where IDCLASS = ''' + MaskEdit26.Text +''' and DESATIVA=''N'' ');
//     IBQ1.Active := True;
//     If IBQ1.IsEmpty then
//        MaskEdit26.SetFocus
//     Else
//        Begin
//         If ((TRIM(MaskEditI_S_T.Text) = 'IPI55') or (TRIM(MaskEditI_S_T.Text) = 'IPI52')) and (IBQ1.FieldByName('PCAIPI').AsFloat <> 0) Then
//            Begin
//             If (MaskEdit9.Text) <> '5902' Then
//                Begin
//                 Application.MessageBox('ATENÇÃO: A SITUAÇÃO TRIBUTARIA CADASTRADA NA OBSERVAÇÃO FISCAL DESTA NOTA DEVE TER IPI COM ALÍQUOTA 0, FAVOR VERIFICAR.','Aviso', mb_OK);
//                 MaskEdit26.SetFocus;
//                 Abort;
//                End;
//            End;
//         If (MaskEdit2.Text <> '999999') and (MaskEdit2.Text <> '999998') and
//            (DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString <> 'N')
//            and (MaskEdit2.Text <> '999997') and (MaskEdit2.Text <> '999996')
//            and (MaskEdit2.Text <> '999993') and
//            (MaskEdit2.Text <> '999995') and (MaskEdit2.Text <> '999994') then
//            Begin
//             If VARIPI <> IBQ1.FieldByName('PCAIPI').AsFloat then
//                Begin
//                 Application.MessageBox('ATENÇÃO IPI DIFERENTE DA REFERÊNCIA. FAVOR CORRIGIR OU CASO ESTEJA CORRETO ENTRAR EM CONTATO COM VENDAS, PARA QUE A MESMA FAÇA O DEVIDO ACERTO, NA REFERÊNCIA E NO PEDIDO.','Aviso', mb_OK);
//                 MaskEdit26.SetFocus
//                End
//             Else
//                Begin
//                 LabelIPIOriginal.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                 LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//                 If TRIM(ComboBoxFatura.Text) = 'S' then
//                    Begin
//                     If MaskEdit2.Text = '999999' then
//                        if Application.MessageBox('RECOLHE IPI?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//                           LabelIPI.Caption := '0';
//                    End;
//                End;
//            End
//         Else
//            Begin
//             LabelIPIOriginal.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//             LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//             If MaskEdit2.Text = '999999' then
//                Begin
//                 if Application.MessageBox('RECOLHE IPI?', 'Pergunta',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//                 Else
//                    LabelIPI.Caption := '0';
//                End;
//            End;
//         MaskEditDescClass.Text :=TRIM(IBQ1.FieldByName('DESCRICAO_CNM').AsString)+' IPI: '+TRIM(IBQ1.FieldByName('PCAIPI').AsString);
//        End;
//    End;
end;

procedure TTelaNF.MaskEdit27Exit(Sender: TObject);
begin
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEdit27.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit27.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
// If (MaskEdit27.Text = '') or (MaskEdit27.Text = '0') then
//    MaskEdit27.Text := '0'
// Else
//   Begin
//    IBQ1.Active := False;
//    IBQ1.SQL.Clear;
//    IBQ1.SQL.Add('Select First 1 CDBENEF, FINALIDA, DTVALID, TPIMPOST, PCBENEF, CDOBSFIS');
//    IBQ1.SQL.Add('from BENEFIS');
//    IBQ1.SQL.Add('Where CDBENEF = ''' + MaskEdit27.Text + '''');
//    IBQ1.Active := True;
//    If IBQ1.IsEmpty then
//       Begin
//        MaskEditBeneficio.Text := '';
//        MaskEdit27.SetFocus;
//       End
//    Else
//    if Application.MessageBox('SERÁ ATUALIZADO AS TAXAS DE ACORDO COM O BENEFÍCIO FISCAL,' +#13' CONTINUAR?', 'PERGUNTA', mb_YesNo + mb_IconInformation +mb_DefButton1) = mrYes then
//       Begin
//        MaskEditBeneficio.Text := TRIM(IBQ1.FieldByName('FINALIDA').AsString);
//        If TRIM(IBQ1.FieldByName('TPIMPOST').AsString) = 'IPI' then
//           Begin
//            LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCBENEF').AsString);
//            Application.MessageBox('ATENÇÃO: IPI ALTERADO.', 'Aviso', mb_OK);
//           End;
//        If TRIM(IBQ1.FieldByName('TPIMPOST').AsString) = 'ICMS' then
//           Begin
//            MaskEditICM.Text := TRIM(IBQ1.FieldByName('PCBENEF').AsString);
//            VARBASERED := 100; // sem redução de BASE DE CÁLCULO.
//            Application.MessageBox('ATENÇÃO: ICMS ALTERADO.', 'Aviso', mb_OK);
//           End;
//        If TRIM(IBQ1.FieldByName('TPIMPOST').AsString) = 'PICM' then
//           Begin
//            LabelIPI.Caption := TRIM(IBQ1.FieldByName('PCBENEF').AsString);
//            MaskEditICM.Text := TRIM(IBQ1.FieldByName('PCBENEF').AsString);
//            If ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//               Begin
//                If StrtoFloatDef(MaskEditICM.Text,0)>0 then
//                   Begin
//                    MaskEditICM.Text              :='0';
//                   End;
//               End;
//            VARBASERED := 100; // sem redução de BASE DE CÁLCULO.
//            Application.MessageBox('ATENÇÃO: IPI E ICMS ALTERADO.', 'Aviso', mb_OK);
//           End;
//       End
//    Else
//       Begin
//        MaskEditICM.Text := LabelICMORIGINAL.Caption; // volta icms
//        LabelIPI.Caption := LabelIPIOriginal.Caption; // volta ipi
//        MaskEdit27.Text := '0';
//        MaskEditICM.Text := LabelICMORIGINAL.Caption;
//        If ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//           Begin
//            If StrtoFloatDef(MaskEditICM.Text,0)>0 then
//               Begin
//                MaskEditICM.Text              :='0';
//               End;
//           End;
//        MaskEdit26.SetFocus;
//        MaskEditBeneficio.Text := '';
//       End;
//   End;
end;

procedure TTelaNF.MaskEdit28Exit(Sender: TObject);
begin
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEdit28.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit28.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select First 1 * from SITUACAO_TRIBUTARIA');
// IBQ1.SQL.Add('Where CDSITTRI = ''' + MaskEdit28.Text + '''');
// IBQ1.Active := True;
// If IBQ1.IsEmpty then
//    Begin
//     Maskeditclafisca.Text         := '';
//     MaskEditPercentualPIS.Text    := '';
//     MaskEditPercentualCOFINS.Text := '';
//     MaskEditPISSN.Text            := '';
//     MaskEditCOFINSSN.Text         := '';
//     MaskEdit28.SetFocus;
//    End
// Else
//    Begin
//     Maskeditclafisca.Text         := TRIM(IBQ1.FieldByName('DESCRICAO').AsString);
//     MaskEditPISSN.Text            := TRIM(IBQ1.FieldByName('PIS').AsString);
//     MaskEditCOFINSSN.Text         := TRIM(IBQ1.FieldByName('COFINS').AsString);
//     MaskEditPercentualPIS.Text    := DMIB.IBQueryEmpresa.FieldByName('PIS').AsString;
//     MaskEditPercentualCOFINS.Text := DMIB.IBQueryEmpresa.FieldByName('COFINS').AsString;
//    End;
// If TRIM(MaskEditPIS_COFINS.Text) = 'N' Then
//    Begin
//     MaskEditPISSN.Text           := 'N';
//     MaskEditCOFINSSN.Text        := 'N';
//     MaskEditPercentualPIS.Text   := '0';
//     MaskEditPercentualCOFINS.Text:= '0';
//     MaskEditPercentualPIS.Text   := '0';
//     MaskEditPercentualCOFINS.Text:= '0';
//    End;
//  If TRIM(MaskEditEXPORTADOR.Text) = 'S' Then
//     Begin
//      MaskEditPISSN.Text            := 'N';
//      MaskEditCOFINSSN.Text         := 'N';
//      MaskEditPercentualPIS.Text    := '0';
//      MaskEditPercentualCOFINS.Text := '0';
//      MaskEditPercentualPIS.Text    := '0';
//      MaskEditPercentualCOFINS.Text := '0';
//     End;
end;
//
procedure TTelaNF.ComboBoxBaixaExit(Sender: TObject);
begin
// If Pos(Trim(ComboBoxBaixa.Text),'P|T') = 0 then
//    ComboBoxBaixa.SetFocus;
// If ComboBoxBaixa.Text = 'T' then
//    Begin
//     If DMIB.IBQueryParametros.FieldByName('BLOQUEIA_NF_PROGAMACAO').AsString = 'S' Then
//        Begin
//         IBQ3.Close;
//         IBQ3.SQL.Clear;
//         IBQ3.SQL.Add('SELECT First 1 NRPEDIDO FROM PROGRAMACAO');
//         IBQ3.SQL.Add('WHERE NRPEDIDO=''' + MaskEdit17.Text + '''');
//         IBQ3.Open;
//         If not IBQ3.IsEmpty then
//            Begin
//             Application.MessageBox('ATENÇÃO: NÃO É POSSÍVEL FATURAR ESTE PEDIDO' +#13 + 'O MESMO SE ENCONTRA NA PROGRAMAÇÃO DA ONDULADEIRA','Aviso', mb_OK);
//             MaskEdit17.SetFocus;
//            End;
//        End;
//    End;
end;

procedure TTelaNF.BitBtnConsisteClick(Sender: TObject);
var Erro: String;
begin
// Erro := '';
// if (MaskEditRefNF.Enabled) then
//    begin
//     if Trim(MaskEditRefNF.Text) = '' then
//        Erro := Erro + '==> NOTA FISCAL REFERENCIAL PRECISA SER PREENCHIDO.';
//    end;
//
// {$REGION 'Consiste Notas de Aparas'}
// if Trim(MaskEdit2.Text) = '999996' then
//    begin
//      IBQ2.Active := False;
//      IBQ2.SQL.Clear;
//      IBQ2.SQL.Add('select First 1 PERMITE_NOTA_APARAS');
//      IBQ2.SQL.Add('from clientes ');
//      IBQ2.SQL.Add('where clientes.CDCLIENTE = '''+MaskEditCodigoCli_For.Text+''' ');
//      IBQ2.Active := True;
//      if Trim(IBQ2.FieldByName('PERMITE_NOTA_APARAS').AsString) = 'N' then
//         Erro := Erro + '==> NÃO É PERMITIDO NOTAS DE APARAS PARA ESTE CLIENTE.';
//    end;
// {$ENDREGION}
//
// {$REGION 'Consiste Qtd. de Pallets'}
// if (Trim(MaskEditNF_PALETE.Text)='S') and (Trim(ComboBoxEspecie.Text)= 'PALLETS')  then
//    begin
//     if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('CONTROLE_PALLET_CLIENTE').AsString) = 'S' then
//        begin
//         //1 Verificar se a quantidade esta ok
//         IBQ2.Active := False;
//         IBQ2.SQL.Clear;
//         IBQ2.SQL.Add('select paletes_no_cliente.nrpalete - paletes_no_cliente.qtd_baixado as qtd_pallet');
//         IBQ2.SQL.Add('from paletes_no_cliente ');
//         IBQ2.SQL.Add('where paletes_no_cliente.nrnf = '''+MaskEditRefNF.Text+''' ');
//         IBQ2.Active := True;
//         if IBQ2.FieldByName('QTD_PALLET').AsFloat < StrToFloat(MaskEdit19.Text) then
//            begin
//             Erro := Erro + '==> QTD DE PALLETS MAIOR QUE A DISPONÍVEL PARA ENVIO.';
//            end;
//        end;
//    end;
//  {$ENDREGION}
//
// {$REGION 'Bloqueia Vendas na Filial'}
//  If (Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('BLOQUEIA_VENDAS_FILIAL').AsString)='S') Then
//    Begin
//     if Trim(ComboBoxEmpresa.Text)='2' then
//        Begin
//         if Pos(Trim(MaskEdit9.Text),'5101|6101') <> 0 then
//            ERRO:=ERRO+'==> NATUREZA DA OPERAÇÃO BLOQUEADA PARA ESTA EMPRESA';
//        End;
//    End;
// {$ENDREGION}
//
// {$REGION 'Verificação de Consumidor final para as CFOPs 5911 e 6911'}
// if Trim(ComboBoxCliFor.Text)='C' then
//    Begin
//     if ((Trim(MaskEdit9.Text)='5911') or (Trim(MaskEdit9.Text)='6911')) then
//        Begin
//         IBQ2.Active := False;
//         IBQ2.SQL.Clear;
//         IBQ2.SQL.Add('SELECT First 1 Clientes.NF_AMOSTRA_COM_IPI');
//         IBQ2.SQL.Add('FROM Clientes');
//         IBQ2.SQL.Add('Where Clientes.CDCLIENTE = ''' +MaskEditCodigoCli_For.Text + '''');
//         IBQ2.Active := True;
//         If (TRIM(IBQ2.FieldByName('NF_AMOSTRA_COM_IPI').AsString) = 'S') and (ComboBoxConsumidorFinal.Text<>'CONSUMIDOR FINAL') then
//            ERRO:=ERRO+'==>NOTA DEVE SER EMITIDA COM O TIPO DE NOTA ==>CONSUMIDOR FINAL';
//        End;
//    End;
// {$ENDREGION}
//
// if Trim(Erro) <> '' then
//    Begin
//     Application.MessageBox(PWideChar('ATENÇÃO: As(s) Seguinte(s) Inconsistência(s) Foi/Foram Encontrada(s): '#13#13+ERRO+#13' Favor Corrigir para Continuar.'),'Aviso',mb_OK);
//     MaskEdit17.SetFocus;
//     Abort;
//    end;
end;

procedure TTelaNF.BitBtnGravaNFClick(Sender: TObject);
begin
//  BitBtnConsiste.Click;
//
//  {$REGION 'Puxa o último nº'}
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('SELECT MAX(NRNF) as MA from NF');
//  IBQ1.SQL.Add('WHERE NF.SERIE=1');
//  IBQ1.SQL.Add('and NF.NR_EMPRESA=''' + ComboBoxEmpresa.Text + ''' ');
//  IBQ1.Active := True;
//  {$ENDREGION}
//
//  MaskEdit1.Text := IntToStr(IBQ1.FieldByName('MA').AsInteger + 1);
//  MaskEdit1.Refresh;
//
//  {$REGION 'Grava NF'}
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('Insert INTO NF (VERSAO_NFE, NRNF, SERIE, NR_EMPRESA, TPDOCTO, DTEMISNF, DTSAIDA, NRPEDIDO,');
//  IBQ1.SQL.Add('CDMOTIVO_EMISSAO, CDCLIENTE, ESPECIE, CDCONDPG, CDTRANSP, PLACA, ESTADO_PLACA, CDNATOPE, FATURA,');
//  IBQ1.SQL.Add('FRETEC, PCFRETE, CDOBSFIS, INDSTAT, CDVENDED, CLIFOR, SOLICITANTE, BASEIPI, USUARIO, UFEMBARQ,');
//  IBQ1.SQL.Add('XLOCEMBARQ, QTD_PALETES_BONS, RETORNO_PALETES_TOTAL, TIPO_TRANPORTE, REFERENCIA_NF_DEVOLUCAO,');
//  IBQ1.SQL.Add('JUSTIFICATIVA_EMISSAO, CODIGO_PARA_CHAVE_NFE,  DT_P_RETORNO) ');
//
//  IBQ1.SQL.Add('VALUES (:VERSAO_NFE, :NRNF, :SERIE, :NR_EMPRESA, :TPDOCTO, :DTEMISNF, :DTSAIDA, :NRPEDIDO, :CDMOTIVO_EMISSAO,');
//  IBQ1.SQL.Add(':CDCLIENTE, :ESPECIE, :CDCONDPG, :CDTRANSP, :PLACA, :ESTADO_PLACA, :CDNATOPE, :FATURA, :FRETEC, :PCFRETE, :CDOBSFIS,');
//  IBQ1.SQL.Add(':INDSTAT, :CDVENDED, :CLIFOR, :SOLICITANTE, :BASEIPI, :USUARIO, :UFEMBARQ, :XLOCEMBARQ, :QTD_PALETES_BONS,');
//  IBQ1.SQL.Add(':RETORNO_PALETES_TOTAL, :TIPO_TRANPORTE, :REFERENCIA_NF_DEVOLUCAO, :JUSTIFICATIVA_EMISSAO, :CODIGO_PARA_CHAVE_NFE,');
//  if JvDateEditPRetorno.Text <> '  /  /    ' then
//     IBQ1.SQL.Add(':DT_P_RETORNO) ')
//  else
//     IBQ1.SQL.Add('NULL) ');
//  IBQ1.ParamByName('VERSAO_NFE').AsString := '2';
//  IBQ1.ParamByName('NRNF').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//  if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//     IBQ1.ParamByName('SERIE').AsFloat := 1
//  else
//     IBQ1.ParamByName('SERIE').AsFloat := 0;
//  IBQ1.ParamByName('NR_EMPRESA').AsFloat               := StrToFloatDef(ComboBoxEmpresa.Text,0);
//  IBQ1.ParamByName('TPDOCTO').AsString                 := 'NF';
//  IBQ1.ParamByName('DTEMISNF').AsDateTime              := StrToDate(JvDateEdit1.Text);
//  IBQ1.ParamByName('DTSAIDA').AsDateTime               := StrToDate(JvDateEdit2.Text);
//  IBQ1.ParamByName('NRPEDIDO').AsFloat                 := StrToFloatDef(MaskEdit2.Text,0);
//  IBQ1.ParamByName('CDCLIENTE').AsFloat                := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//  IBQ1.ParamByName('ESPECIE').AsString                 := Trim(ComboBoxEspecie.Text);
//  IBQ1.ParamByName('CDCONDPG').AsFloat                 := StrToFloatDef(MaskEdit8.Text,0);
//  IBQ1.ParamByName('CDTRANSP').AsFloat                 := StrToFloatDef(MaskEdit10.Text,0);
//  IBQ1.ParamByName('PLACA').AsString                   := Trim(MaskEditPlaca.Text);
//  IBQ1.ParamByName('ESTADO_PLACA').AsString            := Trim(ComboBoxEstado.Text);
//  IBQ1.ParamByName('CDNATOPE').AsFloat                 := StrToFloatDef(MaskEdit9.Text,0);
//  IBQ1.ParamByName('FATURA').AsString                  := Trim(ComboBoxFatura.Text);
//  IBQ1.ParamByName('FRETEC').AsString                  := Trim(ComboBoxFrete.Text);
//  IBQ1.ParamByName('PCFRETE').AsFloat                  := StrToFloatDef(MaskEditPCFRETE.Text,0);
//  IBQ1.ParamByName('CDOBSFIS').AsFloat                 := StrToFloatDef(MaskEdit12.Text,0);
//  IBQ1.ParamByName('INDSTAT').AsString                 := 'G';
//  IBQ1.ParamByName('CDVENDED').AsFloat                 := StrToFloatDef(MaskEditCDVENDED.Text,0);
//  IBQ1.ParamByName('CLIFOR').AsString                  := Trim(ComboBoxCliFor.Text);
//  IBQ1.ParamByName('SOLICITANTE').AsString             := Trim(MaskEditSolicitante.Text);
//  IBQ1.ParamByName('BASEIPI').AsFloat                  := 0;
//  IBQ1.ParamByName('USUARIO').AsString                 := TrazNOMEUSUARIO;
//  IBQ1.ParamByName('UFEMBARQ').AsString                := Trim(MaskEditUFEMBARQ.Text);
//  IBQ1.ParamByName('XLOCEMBARQ').AsString              := Trim(MaskEditxLocEmbarq.Text);
//
//  if JvDateEditPRetorno.Text <> '  /  /    ' then
//    IBQ1.ParamByName('DT_P_RETORNO').AsDateTime := StrToDate(JvDateEditPRetorno.Text);
//
//  IBQ1.ParamByName('QTD_PALETES_BONS').AsFloat         := 0;
//  IBQ1.ParamByName('RETORNO_PALETES_TOTAL').AsString   := '';
//  IBQ1.ParamByName('TIPO_TRANPORTE').AsString          := Trim(ComboBoxTIPO_RODADO.Text);
//  IBQ1.ParamByName('REFERENCIA_NF_DEVOLUCAO').AsString := Trim(MaskEditREFNFE.Text);
//  if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_MOTIVO_EMISSAO_NF').AsString) = 'S' then
//     IBQ1.ParamByName('CDMOTIVO_EMISSAO').AsString     := IBQ9.FieldByName('CONTROLE').AsString
//  Else
//     IBQ1.ParamByName('CDMOTIVO_EMISSAO').AsString     := '0';
//  IBQ1.ParamByName('JUSTIFICATIVA_EMISSAO').AsString   := MaskEditJutifica.Text;
//  IBQ1.ParamByName('CODIGO_PARA_CHAVE_NFE').AsString   := FormatFloat('00000000',Random(99999999));
//  IBQ1.ExecSQL;
//  {$ENDREGION}
//  BitBtnInclusao.Enabled := True;
//  BitBtnFechar.Enabled   := False;
end;

procedure TTelaNF.MaskEditNFQUANTIDAExit(Sender: TObject);
begin
//  if MaskEditNFQUANTIDA.Text = '' then
//    MaskEditNFQUANTIDA.Text := '0';
//
//  if (ComboBoxEspecie.Text <> ' ') and (MaskEditNFQUANTIDA.Text = '0') then
//    MaskEditNFQUANTIDA.SetFocus;
end;

procedure TTelaNF.BitBtnIncluiItemClick(Sender: TObject);
var Faturado: Real;
    VarNrSequen_do_NFITEM_FECHAMENTO : Integer;
    // variáveis do nfitem_fechamento
    VarNmguerra       : string;
    VarPCPROG         : Real;
    VarQUANTIDA_PED   : Integer;
    VarQtdVendidaHoje : Real;
    VarSomaEntreguei  : Real;
    // variáveis da carga_exclusao
    VarCDEXCLUSAO     : Integer;
    VarCDEXCLUSAO_pai : Integer;
begin
//  {$REGION 'Zerando as Váriaveis'}
//  VarNmguerra       := '';
//  VarPCPROG         := 0;
//  VarQUANTIDA_PED   := 0;
//  VarQtdVendidaHoje := 0;
//  VarSomaEntreguei  := 0;
//  VarCDEXCLUSAO_pai := 0;
//  {$ENDREGION}
//
//  BitBtnConsiste.Click;
//
//  Consiste_I.Click;
//
//  {$REGION 'Consiste IPI para CFOP 5902 que não pode ser 0'}
//  if TRIM(MaskEditCDNATOPEITEM.Text) = '5902' then
//    LabelIPI.Caption := '0'
//  else
//    begin
//      if ((LabelIPI.Caption = '0') and ((TRIM(MaskEditI_S_T.Text) = 'IPI50') or (TRIM(MaskEditI_S_T.Text) = ''))) then
//        begin
//          Application.MessageBox('ATENÇÃO: ALÍQUOTA DE IPI INCORRETA. FAVOR VERIFICAR', 'Aviso', mb_OK);
//          MaskEdit17.SetFocus;
//          Abort;
//        end;
//    end;
//  {$ENDREGION}
//
//  {$REGION 'Consiste Peso Total para pedidos 999.994 e 999.996'}
//  if ((Trim(MaskEdit17.Text) = '999994') or (Trim(MaskEdit17.Text) = '999996')) and (StrToFloatDef(MaskEdit23.Text,0) = 0) then
//    begin
//      Application.MessageBox('ATENÇÃO: PESO TOTAL INVÁLIDO, FAVOR VERIFICAR','Aviso', mb_OK);
//      MaskEdit23.SetFocus;
//      Abort;
//    end;
// {$ENDREGION}
//
//  {$REGION 'Consiste Tipos de Aparas para notas se parametro estiver Ativo'}
//  if (Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('CONSISTE_DESCRICAO_APARAS').AsString)='S') Then
//     begin
//      if (Pos(Trim(MaskEdit2.Text),'999996|999997') <> 0)  then
//         begin
//         if ((Trim(MaskEdit22.Text)<>'REFUGO')          and
//             (Trim(MaskEdit22.Text)<>'CANUDOS')         and
//             (MaskEdit22.Text      <>'FARDOS GRANDE')   and
//             (MaskEdit22.Text      <>'FARDOS PEQUENO')) then
//             Begin
//              Application.MessageBox('ATENÇÃO: CAMPO REFERENCIA DESTE TIPO DE NOTA DEVE SER: '+#13'REGUGO, CANUDOS, FARDOS GRANDE OU FARDOS PEQUENO'+#13+'FAVOR VERIFICAR','Aviso', mb_OK);
//              MaskEdit22.SetFocus;
//              Abort;
//              end;
//         end;
//     end;
// {$ENDREGION}
//
//  {$REGION 'Consiste Pedido do Cliente para quando é exigido pelo mesmo'}
//  if ((Trim(MaskEdit24.Text)      = '') and (StrToFloatDef(MaskEdit17.Text,0) < 999993)
//  and (Trim(MaskeditEPEDCLI.Text) = 'S')and (Trim(Maskedit9.Text)<> '5911') ) then
//    begin
//      Application.MessageBox('ATENÇÃO: PEDIDO SEM NÚMERO DO PEDIDO DO CLIENTE' +#13 + 'O QUAL É OBRIGATÓRIO PARA ESTE CLIENTE' + #13 +'FAVOR VERIFICAR COM O DEPARTAMENTO DE VENDAS', 'Aviso', mb_OK);
//      MaskEdit17.SetFocus;
//      Abort;
//    end;
//  {$ENDREGION}
//
//  {$REGION 'Consiste Validador'}
//  if (DMIB.IBQueryParametros.FieldByName('VALIDACAO_PEDIDO_NF').AsString = 'S') and (StrToFloatDef(MaskEdit17.Text,0) > 21284) then
//    begin
//      if StrToFloatDef(MaskEditValidacao.Text,0) - StrToFloatDef(MaskEditVALIDADOR_PEDIDO.Text,0) <> 0 then
//        begin
//          Application.MessageBox('ATENÇÃO: VALIDADOR INVÁLIDO, FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//          Abort;
//        end;
//    end;
//  {$ENDREGION}
//
//  {$REGION 'Consiste Situação tributaria para os CFOP: 5915, 5920, 6915, 6920 que não pode ser 000'}
//  if ((Trim(MaskEdit9.Text)='5915') or (Trim(MaskEdit9.Text)='6915') or (Trim(MaskEdit9.Text)='5920') or (Trim(MaskEdit9.Text)='6920')) then
//    begin
//      if Trim(MaskEdit28.Text)='000' then
//        begin
//          Application.MessageBox('ATENÇÃO: SITUAÇÃO TRIBUTARIA INCORRETA PARA ESTA CFOP,'+#13+'FAVOR VERIFICAR','Aviso', mb_OK);
//          Abort;
//        end;
//    end;
//  {$ENDREGION}
//
//  {$REGION 'Consiste 5924, 6924 onde o ICMS tem que ser sempre 0'}
//  if ((Trim(MaskEdit9.Text)='5924') or (Trim(MaskEdit9.Text)='6924') ) then
//    begin
//      if StrtoFloatDef(MaskEditICM.Text,0)>0 then
//        begin
//          Application.MessageBox('ATENÇÃO: ICMS INCORRETO PARA PARA ESTA CFOP,'+#13+'FAVOR VERIFICAR','Aviso', mb_OK);
//          Abort;
//        end;
//    end;
//  {$ENDREGION}
//
//  Faturado := 0;
//
//  {$REGION 'Limita Quantidade faturada a quantidade do Pedido'}
//  if (DMIB.IBQueryParametros.FieldByName('LIMITA_DTD_AO_PEDIDO').AsString = 'S') and (StrToFloatDef(MaskEdit17.Text,0) < 999993) then
//    begin
//      if Trim(ComboBoxFatura.Text) = 'S' Then
//        begin
//          IBQ1.Active := False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('SELECT nfitem.nrpedido, clientes.pcprog, Clientes.PERCENTUAL_FATURAMENTO, Pedido.quantida, Pedido.LIMITAR_QUANTIDADE_FATURADA_A,');
//          IBQ1.SQL.Add('SUM(nfitem.quantida) Entregue');
//          IBQ1.SQL.Add('from nf');
//          IBQ1.SQL.Add('LEFT OUTER JOIN nfitem   ON (nfitem.nrnf     = nf.nrnf and nfitem.serie=nf.serie and nfitem.NR_EMPRESA=nf.NR_EMPRESA)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN Pedido   ON (nfitem.nrpedido = pedido.nrpedido)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN clientes ON (nf.cdcliente    = clientes.cdcliente)');
//          IBQ1.SQL.Add('where ((nfitem.nrpedido=''' + MaskEdit17.Text +''') and (nf.indstat<>''C'') )');
//          IBQ1.SQL.Add('and ((nf.CDNATOPE<>''5920'') or (nf.CDNATOPE<>''6920'') )');
//          IBQ1.SQL.Add('group by 1,2,3,4,5');
//          IBQ1.Active := True;
//
//          MaskEditQTDFaturada.Text:= FloatToStr(((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)));
//
//          if (IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat) > 0 then
//            VARPERCENTUAL := IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat
//          else
//            VARPERCENTUAL := IBQ1.FieldByName('pcprog').AsFloat;
//
//          if not (IBQ1.IsEmpty) then
//            begin
//              {$REGION 'Calculo para quando o Pedido não teve Faturamento'}
//              If (TRIM(MaskEditFATORQ.Text) = '') or (MaskEditFATORQ.Text = '0') Then
//                  Begin
//                   {$REGION 'Sem Fator de Conversão de Quantidades'}
//                   if StrToFloatDef(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString,0)>0  then
//                      begin
//                       If ((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)) >(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsFloat) Then
//                           Begin
//                            MaskEditQTDFaturada.Text:= FloatToStr(((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)));
//                            Application.MessageBox(PWideChar('ATENÇÃO: QUANTIDADE PARA FATURAMENTO LIMITADO A: '+IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString+#13'FAVOR VERIFICAR NO PEDIDO.'),'Aviso', mb_OK);
//                            Abort;
//                           End;
//                      end
//                   else
//                      Begin
//                       If ((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                           Begin
//                            MaskEditQTDFaturada.Text:= FloatToStr(((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)));
//                            Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO.','Aviso', mb_OK);
//                            Abort;
//                           End;
//                      End;
//                   {$ENDREGION}
//                  End
//              Else
//                  Begin
//                   {$REGION 'Com Fator de Conversão de Quantidades'}
//                   if StrToFloatDef(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString,0)>0  then
//                      Begin
//                       If ((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)) >(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsFloat) Then
//                           Begin
//                            MaskEditQTDFaturada.Text:= FloatToStr(((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)));
//                            Application.MessageBox(PWideChar('ATENÇÃO: QUANTIDADE PARA FATURAMENTO LIMITADO A: '+IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString+#13'FAVOR VERIFICAR NO PEDIDO.'),'Aviso', mb_OK);
//                            Abort;
//                           End;
//                      End
//                   else
//                      Begin
//                       If ((IBQ1.FieldByName('ENTREGUE').AsFloat)+(StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0)))) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                           Begin
//                            MaskEditQTDFaturada.Text:= FloatToStr(((IBQ1.FieldByName('ENTREGUE').AsFloat)+(StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0)))));
//                            Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                            Abort;
//                           End;
//                      End;
//                   {$ENDREGION}
//                  End;
//              {$ENDREGION}
//            end
//          else
//            begin
//              {$REGION 'Calculo para quando o Pedido não teve Faturamento'}
//              IBQ1.Active := False;
//              IBQ1.SQL.Clear;
//              IBQ1.SQL.Add('select First 1 clientes.pcprog, Clientes.PERCENTUAL_FATURAMENTO, Pedido.quantida, Pedido.LIMITAR_QUANTIDADE_FATURADA_A');
//              IBQ1.SQL.Add('from PEDIDO');
//              IBQ1.SQL.Add('LEFT OUTER JOIN clientes ON  (Pedido.cdcliente    = clientes.cdcliente)');
//              IBQ1.SQL.Add('where Pedido.nrpedido=''' + MaskEdit17.Text + ''' ');
//              IBQ1.Active := True;
//              If (IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat) > 0 Then
//                 VARPERCENTUAL := IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat
//              Else
//                 VARPERCENTUAL := IBQ1.FieldByName('pcprog').AsFloat;
//              If (TRIM(MaskEditFATORQ.Text) = '') or (MaskEditFATORQ.Text = '0') Then
//                 Begin
//                  {$REGION 'Sem Fator de Conversão de Quantidades'}
//                  if StrToFloatDef(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString,0)>0  then
//                     begin
//                      If StrToFloatDef(MaskEdit19.Text,0) >(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsFloat) Then
//                         Begin
//                          MaskEditQTDFaturada.Text:= FloatToStr(StrToFloatDef(MaskEdit19.Text,0));
//                          Application.MessageBox(PWideChar('ATENÇÃO: QUANTIDADE PARA FATURAMENTO LIMITADO A: '+IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString+#13'FAVOR VERIFICAR NO PEDIDO.'),'Aviso', mb_OK);
//                          Abort;
//                         End;
//                     end
//                  else
//                     Begin
//                      If StrToFloatDef(MaskEdit19.Text,0) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                         Begin
//                          MaskEditQTDFaturada.Text:= FloatToStr(StrToFloatDef(MaskEdit19.Text,0));
//                          Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                          Abort;
//                         End;
//                     End;
//                  {$ENDREGION}
//                 End
//              Else
//                 Begin
//                  {$REGION 'Sem Fator de Conversão de Quantidades'}
//                  if StrToFloatDef(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString,0)>0  then
//                     Begin
//                      If (StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0))>(IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsFloat)) Then
//                         Begin
//                          MaskEditQTDFaturada.Text:= FloatToStr((StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0))));
//                          Application.MessageBox(PWideChar('ATENÇÃO: QUANTIDADE PARA FATURAMENTO LIMITADO A: '+IBQ1.FieldByName('LIMITAR_QUANTIDADE_FATURADA_A').AsString+#13'FAVOR VERIFICAR NO PEDIDO.'),'Aviso', mb_OK);
//                          Abort;
//                         End;
//                     End
//                  Else
//                     Begin
//                      If (StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0))>(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL)) Then
//                         Begin
//                          MaskEditQTDFaturada.Text:= FloatToStr((StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0))));
//                          Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                          Abort;
//                         End;
//                     End;
//                  {$ENDREGION}
//                 End;
//              {$ENDREGION}
//            end;
//        end;
//    end;
//   {$ENDREGION}
//
//  {$REGION 'Limita Quantidade faturada ao percentual de Faturamento Liberado para o Cliente'}
//  if (DMIB.IBQueryParametros_Fiscal.FieldByName('LIMITA_DTD_AO_PER_FAT').AsString = 'S') and (StrToFloatDef(MaskEdit17.Text,0) < 999993) then
//    begin
//      if Trim(ComboBoxFatura.Text) = 'S' then
//        begin
//          IBQ1.Active := False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('SELECT First 1 nfitem.nrpedido, clientes.pcprog, Clientes.PERCENTUAL_FATURAMENTO, Pedido.quantida, SUM(nfitem.quantida) Entregue');
//          IBQ1.SQL.Add('from nf');
//          IBQ1.SQL.Add('LEFT OUTER JOIN nfitem          ON (nfitem.nrnf     = nf.nrnf and nfitem.serie=nf.serie and nfitem.NR_EMPRESA=nf.NR_EMPRESA)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN Pedido          ON (nfitem.nrpedido = pedido.nrpedido)');
//          IBQ1.SQL.Add('LEFT OUTER JOIN clientes        ON (nf.cdcliente    = clientes.cdcliente)');
//          IBQ1.SQL.Add('where ((nfitem.nrpedido=''' + MaskEdit17.Text +''') and (nf.indstat<>''C'') )');
//          IBQ1.SQL.Add('group by 1,2,3,4');
//          IBQ1.Active := True;
//
//          VARPERCENTUAL := IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat;
//
//          if StrToFloatDef(IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsString,0) > 0 then
//            begin
//              if TRIM(IBQ1.FieldByName('NRPEDIDO').AsString) <> '' then
//                begin
//                  {$REGION 'Calculo para quando o Pedido já Teve Faturamento'}
//                  If (TRIM(MaskEditFATORQ.Text) = '') or (MaskEditFATORQ.Text = '0') Then
//                      Begin
//                       {$REGION 'Sem Fator de Conversão de Quantidades'}
//                       If ((IBQ1.FieldByName('ENTREGUE').AsFloat) +StrToFloatDef(MaskEdit19.Text,0)) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                           Begin
//                            Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                            Abort;
//                           End;
//                       {$ENDREGION}
//                      End
//                  Else
//                      Begin
//                       {$REGION 'Com Fator de Conversão de Quantidades'}
//                        If ((IBQ1.FieldByName('ENTREGUE').AsFloat)+(StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0)))) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                           Begin
//                            Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                            Abort;
//                           End;
//                       {$ENDREGION}
//                      End;
//                  {$ENDREGION}
//                end
//              else
//                begin
//                  {$REGION 'Calculo para quando o Pedido não teve Faturamento'}
//                  IBQ1.Active := False;
//                  IBQ1.SQL.Clear;
//                  IBQ1.SQL.Add('select First 1 clientes.pcprog, Clientes.PERCENTUAL_FATURAMENTO, Pedido.quantida');
//                  IBQ1.SQL.Add('from PEDIDO');
//                  IBQ1.SQL.Add('LEFT OUTER JOIN clientes ON  (Pedido.cdcliente    = clientes.cdcliente)');
//                  IBQ1.SQL.Add('where Pedido.nrpedido=''' + MaskEdit17.Text + ''' ');
//                  IBQ1.Active := True;
//                  VARPERCENTUAL := IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsFloat;
//                  If StrToFloatDef(IBQ1.FieldByName('PERCENTUAL_FATURAMENTO').AsString,0) > 0 Then
//                     Begin
//                      If (TRIM(MaskEditFATORQ.Text) = '') or (MaskEditFATORQ.Text = '0') Then
//                         Begin
//                          {$REGION 'Sem Fator de Conversão de Quantidades'}
//                          If StrToFloatDef(MaskEdit19.Text,0) >(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL) Then
//                             Begin
//                              Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                              Abort;
//                             End;
//                          {$ENDREGION}
//                         End
//                      Else
//                         Begin
//                          {$REGION 'Com Fator de Conversão de Quantidades'}
//                          If (StrToFloatDef(MaskEdit19.Text,0) * (StrToFloatDef(MaskEditFATORQ.Text,0))>(IBQ1.FieldByName('quantida').AsFloat * VARPERCENTUAL)) Then
//                             Begin
//                              Application.MessageBox('ATENÇÃO: QUANTIDADE DE PECAS MAIOR QUE QUANTIDADE DO PEDIDO,'#13'FAVOR VERIFICAR NO PEDIDO','Aviso', mb_OK);
//                              Abort;
//                             End;
//                          {$ENDREGION}
//                         End;
//                     End;
//                  {$ENDREGION}
//                end;
//            end;
//        end;
//    end;
//  {$ENDREGION}
//
//  {$REGION 'Destino da Sobras da Expedição'}
//  if ((StrToFloatDef(MaskEdit17.Text,0) < 999993) And (DMIB.IBQueryParametros.FieldByName('SOBRAS_NF').AsString = 'S') And (TRIM(ComboBoxBaixa.Text) = 'T')) Then
//    begin
//      if LabelITEM.Caption = '1' then
//        begin
//          IBQ1.Active := False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('SELECT MAX(NRNF) as MA from NF');
//
//          if TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//            IBQ1.SQL.Add('WHERE NF.SERIE = 1')
//          else
//            IBQ1.SQL.Add('WHERE NF.SERIE = 0');
//
//          IBQ1.SQL.Add('and NF.NR_EMPRESA=''' + TRIM(ComboBoxEmpresa.Text) + ''' ');
//          IBQ1.Active := True;
//        end;
//
//      if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//        begin
//          TelaSobrasNF := TTelaSobrasNF.Create(Application);
//
//          if LabelITEM.Caption = '1' then
//           TelaSobrasNF.MaskEditNF.Text := IntToStr(IBQ1.FieldByName('MA').AsInteger + 1)
//          else
//           TelaSobrasNF.MaskEditNF.Text := MaskEdit1.Text;
//
//          TelaSobrasNF.MaskEdit4.Text       := MaskEditQTDFaturada.Text;
//          TelaSobrasNF.MaskEdit17.Text      := MaskEdit17.Text;
//          TelaSobrasNF.MaskEdit3.Text       := MaskEditCodigoCli_For.Text;
//          TelaSobrasNF.MaskEditNomeCli.Text := MaskEditNomeCli.Text;
//          TelaSobrasNF.MaskEdit22.Text      := MaskEdit22.Text;
//          TelaSobrasNF.ShowModal;
//          FreeAndNil(TelaSobrasNF);
//        end
//      else
//        begin
//          TelaSobrasNF := TTelaSobrasNF.Create(Application);
//
//          if LabelITEM.Caption = '1' then
//            TelaSobrasNF.MaskEditNF.Text := IntToStr(IBQ1.FieldByName('MA').AsInteger + 1)
//          else
//            TelaSobrasNF.MaskEditNF.Text := MaskEdit1.Text;
//
//          TelaSobrasNF.MaskEdit4.Text       := MaskEditQTDFaturada.Text;
//          TelaSobrasNF.MaskEdit17.Text      := MaskEdit17.Text;
//          TelaSobrasNF.MaskEdit22.Text      := MaskEdit22.Text;
//          TelaSobrasNF.MaskEdit3.Text       := MaskEditCodigoCli_For.Text;
//          TelaSobrasNF.MaskEditNomeCli.Text := MaskEditNomeCli.Text;
//          TelaSobrasNF.ShowModal;
//          FreeAndNil(TelaSobrasNF);
//        end;
//    end;
//  {$ENDREGION}
//
//  try
//   IBT1.Active := False;
//   IBT1.StartTransaction;
//   if LabelITEM.Caption = '1' then
//      BitBtnGravaNF.Click;
//   BitBtnFechar.Enabled := False;
//   {$REGION 'Grava Item da NF'}
//   IBQ1.Active := False;
//   IBQ1.SQL.Clear;
//   IBQ1.SQL.Add('insert into nfitem(NRNF, NRSEQUEN, SERIE, NR_EMPRESA, NRPEDIDO, QUANTIDA, VLUNIT, VLTOTAL,');
//   IBQ1.SQL.Add('IDCLASS, UNIDADE,BASEIPI ,VLTOTIPI, PCIPI, CDBENEF, REFEREN, DESCPRO, PEDIDCLI, PEDIDCLIITEM,');
//   IBQ1.SQL.Add('PESOTOTL, QUANTESPE, SITUTRI, VLDESCI, VLTOTICM, PCICM, TIPO_BAIXA, BASE_CALCULO_ICMS, GTIN_EAN,');
//   if ComboBoxBaixa.Text = 'T' then
//      IBQ1.SQL.Add('DATA_BAIXA_TOTAL, ORIGEM_BAIXA_TOTAL,');
//   IBQ1.SQL.Add('VALOR_PIS, VALOR_COFINS, CDNATOPEITEM, PCPIS, PCCOFINS, CSTPIS, CSTCOFINS, CSTIPI)');
//   IBQ1.SQL.Add('values(:NRNF, :NRSEQUEN, :SERIE, :NR_EMPRESA, :NRPEDIDO, :QUANTIDA, :VLUNIT, :VLTOTAL, :IDCLASS,');
//   IBQ1.SQL.Add(':UNIDADE, :BASEIPI, :VLTOTIPI, :PCIPI, :CDBENEF, :REFEREN, :DESCPRO, :PEDIDCLI, :PEDIDCLIITEM,');
//   IBQ1.SQL.Add(':PESOTOTL, :QUANTESPE, :SITUTRI, :VLDESCI, :VLTOTICM, :PCICM, :TIPO_BAIXA, :BASE_CALCULO_ICMS,');
//   IBQ1.SQL.Add(':GTIN_EAN,');
//   if ComboBoxBaixa.Text = 'T' then
//      IBQ1.SQL.Add(':DATA_BAIXA_TOTAL, :ORIGEM_BAIXA_TOTAL,');
//   IBQ1.SQL.Add(' :VALOR_PIS, :VALOR_COFINS, :CDNATOPEITEM, :PCPIS, :PCCOFINS, :CSTPIS, :CSTCOFINS, :CSTIPI)');
//   IBQ1.ParamByName('NRNF').AsFloat          := StrToFloatDef(MaskEdit1.Text,0);
//   IBQ1.ParamByName('NRSEQUEN').AsFloat      := StrToFloatDef(LabelITEM.Caption,0);
//   if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//      IBQ1.ParamByName('SERIE').AsFloat := 1
//   else
//      IBQ1.ParamByName('SERIE').AsFloat := 0;
//   IBQ1.ParamByName('NR_EMPRESA').AsFloat    := StrToFloatDef(ComboBoxEmpresa.Text,0);
//   IBQ1.ParamByName('NRPEDIDO').AsFloat      := StrToFloatDef(MaskEdit17.Text,0);
//   IBQ1.ParamByName('UNIDADE').AsString      := Trim(ComboBoxUnidade.Text);
//   IBQ1.ParamByName('QUANTIDA').AsFloat      := StrToFloatDef(MaskEdit19.Text,0);
//   IBQ1.ParamByName('TIPO_BAIXA').AsString   := Trim(ComboBoxBaixa.Text);
//   IBQ1.ParamByName('GTIN_EAN').AsString     := Trim(MaskEditGTIN_EAN.Text);
//   IBQ1.ParamByName('QUANTESPE').AsFloat     := StrToFloatDef(MaskEdit20.Text,0);
//   IBQ1.ParamByName('DESCPRO').AsString      := Trim(MaskEdit21.Text);
//   IBQ1.ParamByName('REFEREN').AsString      := Trim(MaskEdit22.Text);
//   IBQ1.ParamByName('PESOTOTL').AsFloat      := StrToFloatDef(MaskEdit23.Text,0);
//   IBQ1.ParamByName('PEDIDCLI').AsString     := Trim(MaskEdit24.Text);
//   IBQ1.ParamByName('PEDIDCLIITEM').AsString := Trim(MaskEditPedidoClienteItem.Text);
//   IBQ1.ParamByName('IDCLASS').AsString      := Trim(MaskEdit26.Text);
//   IBQ1.ParamByName('CDBENEF').AsFloat       := StrToFloatDef(MaskEdit27.Text,0);
//   IBQ1.ParamByName('SITUTRI').AsString      := Trim(MaskEdit28.Text);
//   IBQ1.ParamByName('VLDESCI').AsFloat       := 0;
//   IBQ1.ParamByName('BASEIPI').AsFloat       := StrToFloatDef(MaskEditVLTOTAL.Text,0);
//   IBQ1.ParamByName('VLTOTIPI').AsFloat      := (StrToFloatDef(MaskEditVLTOTAL.Text,0) * StrToFloatDef(LabelIPI.Caption,0) / 100);
//   IBQ1.ParamByName('PCIPI').AsFloat         := StrToFloatDef(LabelIPI.Caption,0);
//   if TelaNF.ComboBoxConsumidorFinal.Text = 'CONSUMIDOR FINAL' then
//      begin
//       IBQ1.ParamByName('VLTOTICM').AsFloat          := ((StrToFloatDef(MaskEditVLTOTAL.Text,0) + ((StrToFloatDef(MaskEditVLTOTAL.Text,0) * StrToFloatDef(LabelIPI.Caption,0) / 100))) * StrToFloatDef(MaskEditICM.Text,0) / 100);
//       IBQ1.ParamByName('BASE_CALCULO_ICMS').AsFloat := ((StrToFloatDef(MaskEditVLTOTAL.Text,0) + ((StrToFloatDef(MaskEditVLTOTAL.Text,0)* StrToFloatDef(LabelIPI.Caption,0) / 100))));
//      end
//   else
//      begin
//       if Trim(TelaNF.MaskEditREDUCAO_ICMS_CLIENTE.Text) = '' then
//          IBQ1.ParamByName('VLTOTICM').AsFloat :=(StrToFloatDef(MaskEditVLTOTAL.Text,0) * StrToFloatDef(MaskEditICM.Text,0) /100) * VARBASERED / 100
//       else
//          IBQ1.ParamByName('VLTOTICM').AsFloat :=(StrToFloatDef(MaskEditVLTOTAL.Text,0) * StrToFloatDef(MaskEditICM.Text,0) /100) * (StrToFloatDef(MaskEditREDUCAO_ICMS_CLIENTE.Text,0)) / 100;
//       if StrToFloatDef(MaskEditICM.Text,0) = 0 then
//          IBQ1.ParamByName('BASE_CALCULO_ICMS').AsFloat := 0
//       else
//          begin
//           if TRIM(TelaNF.MaskEditREDUCAO_ICMS_CLIENTE.Text) = '' then
//              IBQ1.ParamByName('BASE_CALCULO_ICMS').AsFloat :=(StrToFloatDef(MaskEditVLTOTAL.Text,0))
//           else
//              IBQ1.ParamByName('BASE_CALCULO_ICMS').AsFloat :=(StrToFloatDef(MaskEditVLTOTAL.Text,0)) *(StrToFloatDef(MaskEditREDUCAO_ICMS_CLIENTE.Text,0)) / 100;
//          end;
//       MaskEditDiferimento.Text := FormatFloat('#########0.00',StrToFloatDef(MaskEditDiferimento.Text,0) + (StrToFloatDef(MaskEditVLTOTAL.Text,0)* StrToFloatDef(MaskEditICM.Text,0) / 100) * (100 - VARBASERED) / 100);
//      end;
//   if TRIM(MaskEditPISSN.Text) = 'S' then
//      IBQ1.ParamByName('VALOR_PIS').AsFloat := (StrToFloatDef(MaskEditVLTOTAL.Text,0) * DMIB.IBQueryEmpresa.FieldByName('PIS').AsFloat / 100)
//   else
//      IBQ1.ParamByName('VALOR_PIS').AsFloat := 0;
//   if Trim(MaskEditCOFINSSN.Text) = 'S' then
//      IBQ1.ParamByName('VALOR_COFINS').AsFloat :=(StrToFloatDef(MaskEditVLTOTAL.Text,0) * DMIB.IBQueryEmpresa.FieldByName('COFINS').AsFloat / 100)
//   else
//      IBQ1.ParamByName('VALOR_COFINS').AsFloat := 0;
//   IBQ1.ParamByName('PCICM').AsFloat        := StrToFloatDef(MaskEditICM.Text,0);
//   IBQ1.ParamByName('VLUNIT').AsFloat       := StrToFloatDef(MaskEditVLUNIT.Text,0);
//   IBQ1.ParamByName('VLTOTAL').AsFloat      := StrToFloatDef(MaskEditVLTOTAL.Text,0);
//   IBQ1.ParamByName('CDNATOPEITEM').AsFloat := StrToFloatDef(MaskEditCDNATOPEITEM.Text,0);
//   IBQ1.ParamByName('PCPIS').AsFloat        := StrToFloatDef(MaskEditPercentualPIS.Text,0);
//   IBQ1.ParamByName('PCCOFINS').AsFloat     := StrToFloatDef(MaskEditPercentualCOFINS.Text,0);
//   IBQ1.ParamByName('CSTPIS').AsString      := Trim(MaskEditCST_PIS.Text);
//   IBQ1.ParamByName('CSTCOFINS').AsString   := TRIM(MaskEditCST_COFINS.Text);
//   IBQ1.ParamByName('CSTIPI').AsString      := Copy(TRIM(MaskEditI_S_T.Text),4,2);
//
//   if ComboBoxBaixa.Text = 'T' then
//      begin
//       IBQ1.ParamByName('DATA_BAIXA_TOTAL').AsDateTime:= StrToDate(JvDateEdit2.Text);
//       IBQ1.ParamByName('ORIGEM_BAIXA_TOTAL').AsString:= 'NF';
//      end;
//   IBQ1.ExecSQL;
//   // Atualiza a linha com os totais da nf
//   IBQ1.Active := False;
//   IBQ1.SQL.Clear;
//   IBQ1.SQL.Add('SELECT SUM(VLTOTAL) as VLTOTAL, SUM(VLTOTIPI) AS VLTOTIPI, ');
//   IBQ1.SQL.Add('SUM(PESOTOTL) AS PESOTOTL, SUM(QUANTESPE) AS QUANTESPE, ');
//   IBQ1.SQL.Add('SUM(VLTOTIPI) AS VLTOTIPI, SUM(VALOR_COFINS) AS VLTOTCOFINS, SUM(VALOR_PIS) AS VLTOTPIS');
//   IBQ1.SQL.Add('FROM NFITEM');
//   IBQ1.SQL.Add('Where NRNF = ''' + MaskEdit1.Text + ''' ');
//   if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//      IBQ1.SQL.Add('and SERIE = 1')
//   else
//      IBQ1.SQL.Add('and SERIE = 0');
//   IBQ1.SQL.Add('and NR_EMPRESA = ''' +TelaNF.ComboBoxEmpresa.Text + ''' ');
//   IBQ1.Active := True;
//   MaskEditVLTOTNF.Text     := FormatFloat('###########0.00',(IBQ1.FieldByName('VLTOTAL').AsFloat + IBQ1.FieldByName('VLTOTIPI').AsFloat));
//   MaskEditVLTOTMER.Text    := FormatFloat('###########0.00',(IBQ1.FieldByName('VLTOTAL').AsFloat));
//   MaskEditPESOLIQT.Text    := FormatFloat('###########0.00',(IBQ1.FieldByName('PESOTOTL').AsFloat));
//   MaskEditPESOBRUT.Text    := FormatFloat('###########0.00',(IBQ1.FieldByName('PESOTOTL').AsFloat));
//   MaskEditNFQUANTIDA.Text  := FormatFloat('###########0.00',(IBQ1.FieldByName('QUANTESPE').AsFloat));
//   MaskEditVLTOTIPI.Text    := FormatFloat('###########0.00',(IBQ1.FieldByName('VLTOTIPI').AsFloat));
//   MaskEditVLTOTCOFINS.Text := FormatFloat('###########0.00',(IBQ1.FieldByName('VLTOTCOFINS').AsFloat));
//   MaskEditVLTOTPIS.Text    := FormatFloat('###########0.00',(IBQ1.FieldByName('VLTOTPIS').AsFloat));
//   if StrToFloatDef(MaskEditPCFRETE.Text,0) > 0 then
//      MaskEdit36.Text := FormatFloat('###########0.00',((StrToFloatDef(MaskEditVLTOTAL.Text,0) *StrToFloatDef(MaskEditPCFRETE.Text,0) / 100) +StrToFloatDef(MaskEdit36.Text,0)))
//   else
//      MaskEdit36.Text := FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTFRE.Text,0));
//   if Trim(ComboBoxConsumidorFinal.Text) = 'CONSUMIDOR FINAL' then
//      MaskEditVLTOTICMS.Text := FormatFloat('###########0.00',((StrToFloatDef(MaskEditVLTOTNF.Text,0) *StrToFloatDef(MaskEditICM.Text,0) / 100)))
//     // tirado a base de redução pois lugar nenhum tem redução para consumidor final
//   else
//      begin
//       if Trim(MaskEditREDUCAO_ICMS_CLIENTE.Text) = '' then
//          MaskEditVLTOTICMS.Text := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTAL.Text,0) *StrToFloatDef(MaskEditICM.Text,0) / 100) * VARBASERED / 100 + StrToFloatDef(MaskEditVLTOTICMS.Text,0))
//       else
//          MaskEditVLTOTICMS.Text := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTAL.Text,0) *StrToFloatDef(MaskEditICM.Text,0) / 100) *(StrToFloatDef(MaskEditREDUCAO_ICMS_CLIENTE.Text,0)) / 100 +StrToFloatDef(MaskEditVLTOTICMS.Text,0));
//      end;
//   if ComboBoxConsumidorFinal.Text = 'CONSUMIDOR FINAL' then
//      MaskEditBASEICMS.Text := MaskEditVLTOTNF.Text
//   else
//   if MaskEditICM.Text = '0' then
//      MaskEditBASEICMS.Text := FormatFloat('###########0.00',StrToFloatDef(MaskEditBASEICMS.Text,0) +((StrToFloatDef(MaskEditVLTOTAL.Text,0))) * 0)
//   else
//      begin
//       if TRIM(MaskEditREDUCAO_ICMS_CLIENTE.Text) = '' then
//          MaskEditBASEICMS.Text := FormatFloat('###########0.00',StrToFloatDef(MaskEditBASEICMS.Text,0) +((StrToFloatDef(MaskEditVLTOTAL.Text,0))))
//       else
//          MaskEditBASEICMS.Text := FormatFloat('###########0.00',StrToFloatDef(MaskEditBASEICMS.Text,0) + ((StrToFloatDef(MaskEditVLTOTAL.Text,0) *(StrToFloatDef(MaskEditREDUCAO_ICMS_CLIENTE.Text,0)) / 100)));
//      end;
//   if StrToFloatDef(LabelIPI.Caption,0) > 0 then
//      MaskEditBASEIPI.Text := FormatFloat('###########0.00',StrToFloatDef(MaskEditBASEIPI.Text,0) +((StrToFloatDef(MaskEditVLTOTAL.Text,0))));
//   MaskEditICM.Text := LabelICMORIGINAL.Caption;
//   // Para o segundo ítem
//   IBQ1.Active := False;
//   IBQ1.SQL.Clear;
//   IBQ1.SQL.Add('UPDATE PEDIDO SET TPBAIXA = :TPBAIXA, DATABX = :DATABX ');
//   IBQ1.SQL.Add('Where NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//   IBQ1.ParamByName('TPBAIXA').AsString := TRIM(ComboBoxBaixa.Text);
//   IBQ1.ParamByName('DATABX').AsDate    := (DMIB.IBQueryDT.FieldByName('current_date').AsDateTime);
//   IBQ1.ExecSQL;
//   {$ENDREGION}
//
//   if ComboBoxBaixa.Text = 'P' then
//      begin
//       {$REGION ' Atualiza dados de uma baixa Parcial'}
//        // Atualiza Caixa e Valores na Carga
//        // Baixa 1 a quantidade apontador de fundo caso exista
//        // Baixa pedido C
//       {$REGION ' Atualiza Carga'}
//        IBQ1.Active := False;
//        IBQ1.SQL.Clear;
//        IBQ1.SQL.Add('UPDATE CARGA SET QUANTIDADE = :QUANTIDADE, PESOTOT = :PESOTOT, VLPEDIDO = :VLPEDIDO,');
//        IBQ1.SQL.Add('QUANTIDADE_PRODUZIDA= :QUANTIDADE_PRODUZIDA, QUANTIDADE_EXPEDIDA= QUANTIDADE_EXPEDIDA+ :QUANTIDADE_EXPEDIDA');
//        IBQ1.SQL.Add('Where (NRPEDIDO = ''' + MaskEdit17.Text +''') ');
//        IBQ1.SQL.Add('and (DESDOBRA=''C'') ');
//        if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//          begin
//            if QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//              IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//            else
//              IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr - (StrToFloatDef(MaskEdit19.Text,0) * StrToFloatDef(MaskEditFATORQ.Text,0));
//          end
//        else
//          begin
//            if QTDItemOr - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//              IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//            else
//              IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr -StrToFloatDef(MaskEdit19.Text,0);
//          end;
//
//        // Quantidade Produzida a ser Baixada
//        if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//          begin
//            if VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//              IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := 0
//            else
//              IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEditBaixaAT.Text,0);
//          end
//        else
//          begin
//            if VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//              IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := 0
//            else
//              IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEdit19.Text,0);
//          end;
//
//        // Peso a ser Baixado
//        if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//          begin
//            if VARPESOCX * (QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0)) < 0 then
//              IBQ1.ParamByName('PESOTOT').AsFloat := 0
//            else
//              IBQ1.ParamByName('PESOTOT').AsFloat := VARPESOCX *(QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0));
//          end
//        else
//          begin
//            if VARPESOCX * (QTDItemOr - StrToFloatDef(MaskEdit19.Text,0)) < 0 then
//              IBQ1.ParamByName('PESOTOT').AsFloat := 0
//            else
//              IBQ1.ParamByName('PESOTOT').AsFloat := VARPESOCX *(QTDItemOr - StrToFloatDef(MaskEdit19.Text,0));
//          end;
//
//        // Valor do Pedido a ser Baixado
//        if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//          begin
//            if VARVLUNITCR * (QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0)) < 0 then
//              IBQ1.ParamByName('VLPEDIDO').AsFloat := 0
//            else
//              IBQ1.ParamByName('VLPEDIDO').AsFloat := VARVLUNITCR * (QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0));
//          end
//        else
//          begin
//            if VARVLUNITCR * (QTDItemOr - StrToFloatDef(MaskEdit19.Text,0)) < 0 then
//              IBQ1.ParamByName('VLPEDIDO').AsFloat := 0
//            else
//              IBQ1.ParamByName('VLPEDIDO').AsFloat := VARVLUNITCR *(QTDItemOr - StrToFloatDef(MaskEdit19.Text,0));
//          end;
//
//        // Quantidade Expedida a ser Baixada
//        if ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) then
//          IBQ1.ParamByName('QUANTIDADE_EXPEDIDA').AsFloat := StrToFloatDef(MaskEditBaixaAT.Text,0)
//        else
//          IBQ1.ParamByName('QUANTIDADE_EXPEDIDA').AsFloat := StrToFloatDef(MaskEdit19.Text,0);
//        IBQ1.ExecSQL;
//        {$ENDREGION}
//
//       {$REGION ' Atualiza Carga (Fundo)'}
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('UPDATE CARGA SET QUANTIDADE = :QUANTIDADE, PESOTOT = :PESOTOT, VLPEDIDO = :VLPEDIDO, QUANTIDADE_PRODUZIDA= :QUANTIDADE_PRODUZIDA');
//      IBQ1.SQL.Add('Where (NRPEDIDO = ''' + MaskEdit17.Text +''') and (DESDOBRA<>''C'') ');
//      If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//         Begin
//          If QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//             IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//          Else
//             IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr -StrToFloatDef(MaskEditBaixaAT.Text,0);
//         End
//      Else
//         Begin
//          If QTDItemOr - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//          Else
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr -StrToFloatDef(MaskEdit19.Text,0);
//         End;
//      If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//         Begin
//          If VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//            IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := 0
//          Else
//            IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEditBaixaAT.Text,0);
//         End
//      Else
//         Begin
//          If VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//            IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := 0
//          Else
//            IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat := VARQUANTIDADE_PRODUZIDA - StrToFloatDef(MaskEdit19.Text,0);
//         End;
//      IBQ1.ParamByName('PESOTOT').AsFloat := 0;
//      IBQ1.ParamByName('VLPEDIDO').AsFloat := 0;
//      IBQ1.ExecSQL;
//      {$ENDREGION}
//
//       {$REGION ' Atualiza dados da Sobra'}
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('UPDATE SOBRAFAB SET QUANTIDADE = :QUANTIDADE');
//      IBQ1.SQL.Add('Where (PEDIDOGERA = ''' + MaskEdit17.Text + ''') ');
//      If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//         Begin
//          If QTDItemOr - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//          Else
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr -StrToFloatDef(MaskEditBaixaAT.Text,0);
//         End
//      Else
//         Begin
//          If QTDItemOr - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//          Else
//            IBQ1.ParamByName('QUANTIDADE').AsFloat := QTDItemOr -StrToFloatDef(MaskEdit19.Text,0);
//         End;
//      IBQ1.ExecSQL;
//      {$ENDREGION}
//
//
//       {$REGION ' Atualiza Mezaninos'}
//      // 1 caso 1 só lançamento
//      IBQ7.Active := False;
//      IBQ7.SQL.Clear;
//      IBQ7.SQL.Add('SELECT Mezaninos.NRPEDIDO ,count(nrpedido) as contador, SUM(QUANTIDADE) as QUANTIDADE');
//      IBQ7.SQL.Add('FROM MEZANINOS');
//      IBQ7.SQL.Add('WHERE Mezaninos.NRPEDIDO=''' + MaskEdit17.Text + ''' ');
//      IBQ7.SQL.Add('group by 1');
//      IBQ7.Active := True;
//      If TRIM(IBQ7.FieldByName('CONTADOR').AsString) <> '' Then
//         Begin
//          If (IBQ7.FieldByName('CONTADOR').AsString) = '1' Then
//             Begin
//              IBQ1.Active := False;
//              IBQ1.SQL.Clear;
//              IBQ1.SQL.Add('UPDATE MEZANINOS SET QUANTIDADE = :QUANTIDADE');
//              IBQ1.SQL.Add('Where (NRPEDIDO = ''' + MaskEdit17.Text + ''') ');
//              If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//                 Begin
//                  If IBQ7.FieldByName('QUANTIDADE').AsFloat - StrToFloatDef(MaskEditBaixaAT.Text,0) < 0 then
//                     IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//                  Else
//                     IBQ1.ParamByName('QUANTIDADE').AsFloat := IBQ7.FieldByName('QUANTIDADE').AsFloat -StrToFloatDef(MaskEditBaixaAT.Text,0);
//                 End
//              Else
//                 Begin
//                  If IBQ7.FieldByName('QUANTIDADE').AsFloat - StrToFloatDef(MaskEdit19.Text,0) < 0 then
//                    IBQ1.ParamByName('QUANTIDADE').AsFloat := 0
//                  Else
//                    IBQ1.ParamByName('QUANTIDADE').AsFloat := IBQ7.FieldByName('QUANTIDADE').AsFloat -StrToFloatDef(MaskEdit19.Text,0);
//                 End;
//              IBQ1.ExecSQL;
//             End
//          Else
//             Begin
//              TelaBaixaLocalizacao := TTelaBaixaLocalizacao.Create(Application);
//              TelaBaixaLocalizacao.ShowModal;
//              FreeAndNil(TelaBaixaLocalizacao);
//             End;
//         End;
//       {$ENDREGION}
//
//      {$ENDREGION}
//      end
//   else
//      Begin
//
//       {$REGION 'Insere o Pedido Faturado na Carga Excluida Para que se houver um exclusão da NF pode ser feito o Retorno'}
//        IBQ2.Close;
//        IBQ2.SQL.Clear;
//        IBQ2.SQL.Add('SELECT max(CDEXCLUSAO) as MA FROM CARGA_EXCLUIDA');
//        IBQ2.Open;
//        VarCDEXCLUSAO := IBQ2.FieldByName('MA').AsInteger + 1;
//        If VarCDEXCLUSAO_pai = 0 then
//           VarCDEXCLUSAO_pai := VarCDEXCLUSAO;
//        IBQ2.Close;
//        IBQ2.SQL.Clear;
//        IBQ2.SQL.Add('SELECT * FROM CARGA');
//        IBQ2.SQL.Add('Where Carga.NRPEDIDO =''' + MaskEdit17.Text + ''' ');
//        IBQ2.Open;
//        IBQ2.First;
//        While not IBQ2.Eof do  // Vai levar a tampa e fundo p/ carga excluida ou seja, tudo que está na carga.
//              Begin
//               IBQ1.Active := False;
//               IBQ1.SQL.Clear;
//               IBQ1.SQL.Add('Insert INTO CARGA_EXCLUIDA (CDEXCLUSAO, CDEXCLUSAO_PAI, NRPEDIDO, DESDOBRA, NRSEQUEN, PESOCX, VLUNITCR, CDCLIENTE, CDVENDEDOR, REFERENCIA, DTENTRA, DATA_ENTREGA_DE, DTENTREGA, PESOTOT, ');
//               IBQ1.SQL.Add('VLPEDIDO, PRECOMED, QUANTIDADE, MAQUINA, QTD_ORIGINAL, USUARIO, QUANTIDADE_PRODUZIDA, FORMA_PAGAMENTO, PEDIDO_TIPO, ANTECIPA, GERADO_EM, SITUACAO,');
//               IBQ1.SQL.Add('DIAS_PRORROGADOS,EMBARQUE, QUANTIDADE_EMBARQUE, PRIORIDADE_POR, OBS_PRIORIDADE,  AGENDAMENTO_HORARIO, ');
//               IBQ1.SQL.Add('MAQUINA_APONTANDO, HORALANC, TURNO, PESO_CAIXA_LIMPA, QUANTIDADE_EXPEDIDA, APONTADO_ONDULADEIRA, ROTEIRO1_MAQUINA1_CODIGO, ');
//               IBQ1.SQL.Add('ROTEIRO1_MAQUINA1_NOME, ROTEIRO1_MAQUINA1_TIPO, ROTEIRO1_MAQUINA2_CODIGO, ROTEIRO1_MAQUINA2_NOME, ROTEIRO1_MAQUINA2_TIPO, ROTEIRO1_MAQUINA3_CODIGO, ROTEIRO1_MAQUINA3_NOME, ');
//               IBQ1.SQL.Add('ROTEIRO1_MAQUINA3_TIPO, ROTEIRO1_MAQUINA4_CODIGO, ROTEIRO1_MAQUINA4_NOME, ROTEIRO1_MAQUINA4_TIPO, ROTEIRO1_MAQUINA5_CODIGO, ROTEIRO1_MAQUINA5_NOME, ');
//               IBQ1.SQL.Add('ROTEIRO1_MAQUINA5_TIPO, ROTEIRO1_MAQUINA6_CODIGO, ROTEIRO1_MAQUINA6_NOME, ROTEIRO1_MAQUINA6_TIPO, ROTEIRO1_MAQUINA7_CODIGO, ROTEIRO1_MAQUINA7_NOME, ');
//               IBQ1.SQL.Add('ROTEIRO1_MAQUINA7_TIPO, ROTEIRO1_MAQUINA8_CODIGO, ROTEIRO1_MAQUINA8_NOME, ROTEIRO1_MAQUINA8_TIPO, ROTEIRO2_MAQUINA1_CODIGO, ');
//               IBQ1.SQL.Add('ROTEIRO2_MAQUINA1_NOME, ROTEIRO2_MAQUINA1_TIPO, ROTEIRO2_MAQUINA2_CODIGO, ROTEIRO2_MAQUINA2_NOME, ROTEIRO2_MAQUINA2_TIPO, ROTEIRO2_MAQUINA3_CODIGO, ');
//               IBQ1.SQL.Add('ROTEIRO2_MAQUINA3_NOME, ROTEIRO2_MAQUINA3_TIPO, ROTEIRO2_MAQUINA4_CODIGO, ROTEIRO2_MAQUINA4_NOME, ROTEIRO2_MAQUINA4_TIPO, ROTEIRO2_MAQUINA5_CODIGO, ');
//               IBQ1.SQL.Add('ROTEIRO2_MAQUINA5_NOME, ROTEIRO2_MAQUINA5_TIPO, ROTEIRO2_MAQUINA6_CODIGO, ROTEIRO2_MAQUINA6_NOME, ROTEIRO2_MAQUINA6_TIPO, ROTEIRO2_MAQUINA7_CODIGO, ');
//               IBQ1.SQL.Add('ROTEIRO2_MAQUINA7_NOME, ROTEIRO2_MAQUINA7_TIPO, ROTEIRO2_MAQUINA8_CODIGO, ROTEIRO2_MAQUINA8_NOME, ROTEIRO2_MAQUINA8_TIPO, PROGRAMADO_IMPRESSORA, ');
//               IBQ1.SQL.Add('SEQUENCIA_PROGRAMACAO, SEQUENCIA_PROG_ROT1_MAQ1, SEQUENCIA_PROG_ROT1_MAQ2, SEQUENCIA_PROG_ROT1_MAQ3, SEQUENCIA_PROG_ROT1_MAQ4, ');
//               IBQ1.SQL.Add('SEQUENCIA_PROG_ROT1_MAQ5, SEQUENCIA_PROG_ROT1_MAQ6, SEQUENCIA_PROG_ROT1_MAQ7, SEQUENCIA_PROG_ROT1_MAQ8, QUANTIDADE_APONTADOR, EXCLUIDA_POR, EXCLUIDA_DATAHORA, ');
//               IBQ1.SQL.Add('DT_PRIORIDADE, AGENDAMENTO_DATA, DATALANC ) ');
//               IBQ1.SQL.Add('VALUES (:CDEXCLUSAO, :CDEXCLUSAO_PAI, :NRPEDIDO, :DESDOBRA, :NRSEQUEN, :PESOCX, :VLUNITCR, :CDCLIENTE, :CDVENDEDOR, :REFERENCIA, :DTENTRA, :DATA_ENTREGA_DE ,:DTENTREGA, :PESOTOT, ');
//               IBQ1.SQL.Add(':VLPEDIDO, :PRECOMED, :QUANTIDADE, :MAQUINA, :QTD_ORIGINAL, :USUARIO, :QUANTIDADE_PRODUZIDA, :FORMA_PAGAMENTO, :PEDIDO_TIPO, :ANTECIPA, :GERADO_EM, :SITUACAO, ');
//               IBQ1.SQL.Add(':DIAS_PRORROGADOS, :EMBARQUE, :QUANTIDADE_EMBARQUE, :PRIORIDADE_POR, :OBS_PRIORIDADE, :AGENDAMENTO_HORARIO, ');
//               IBQ1.SQL.Add(':MAQUINA_APONTANDO, :HORALANC, :TURNO, :PESO_CAIXA_LIMPA, :QUANTIDADE_EXPEDIDA, :APONTADO_ONDULADEIRA, :ROTEIRO1_MAQUINA1_CODIGO, ');
//               IBQ1.SQL.Add(':ROTEIRO1_MAQUINA1_NOME, :ROTEIRO1_MAQUINA1_TIPO, :ROTEIRO1_MAQUINA2_CODIGO, :ROTEIRO1_MAQUINA2_NOME, :ROTEIRO1_MAQUINA2_TIPO, :ROTEIRO1_MAQUINA3_CODIGO, :ROTEIRO1_MAQUINA3_NOME, ');
//               IBQ1.SQL.Add(':ROTEIRO1_MAQUINA3_TIPO, :ROTEIRO1_MAQUINA4_CODIGO, :ROTEIRO1_MAQUINA4_NOME, :ROTEIRO1_MAQUINA4_TIPO, :ROTEIRO1_MAQUINA5_CODIGO, :ROTEIRO1_MAQUINA5_NOME, ');
//               IBQ1.SQL.Add(':ROTEIRO1_MAQUINA5_TIPO, :ROTEIRO1_MAQUINA6_CODIGO, :ROTEIRO1_MAQUINA6_NOME, :ROTEIRO1_MAQUINA6_TIPO, :ROTEIRO1_MAQUINA7_CODIGO, :ROTEIRO1_MAQUINA7_NOME, ');
//               IBQ1.SQL.Add(':ROTEIRO1_MAQUINA7_TIPO, :ROTEIRO1_MAQUINA8_CODIGO, :ROTEIRO1_MAQUINA8_NOME, :ROTEIRO1_MAQUINA8_TIPO, :ROTEIRO2_MAQUINA1_CODIGO, ');
//               IBQ1.SQL.Add(':ROTEIRO2_MAQUINA1_NOME, :ROTEIRO2_MAQUINA1_TIPO, :ROTEIRO2_MAQUINA2_CODIGO, :ROTEIRO2_MAQUINA2_NOME, :ROTEIRO2_MAQUINA2_TIPO, :ROTEIRO2_MAQUINA3_CODIGO, ');
//               IBQ1.SQL.Add(':ROTEIRO2_MAQUINA3_NOME, :ROTEIRO2_MAQUINA3_TIPO, :ROTEIRO2_MAQUINA4_CODIGO, :ROTEIRO2_MAQUINA4_NOME, :ROTEIRO2_MAQUINA4_TIPO, :ROTEIRO2_MAQUINA5_CODIGO, ');
//               IBQ1.SQL.Add(':ROTEIRO2_MAQUINA5_NOME, :ROTEIRO2_MAQUINA5_TIPO, :ROTEIRO2_MAQUINA6_CODIGO, :ROTEIRO2_MAQUINA6_NOME, :ROTEIRO2_MAQUINA6_TIPO, :ROTEIRO2_MAQUINA7_CODIGO, ');
//               IBQ1.SQL.Add(':ROTEIRO2_MAQUINA7_NOME, :ROTEIRO2_MAQUINA7_TIPO, :ROTEIRO2_MAQUINA8_CODIGO, :ROTEIRO2_MAQUINA8_NOME, :ROTEIRO2_MAQUINA8_TIPO, :PROGRAMADO_IMPRESSORA, ');
//               IBQ1.SQL.Add(':SEQUENCIA_PROGRAMACAO, :SEQUENCIA_PROG_ROT1_MAQ1, :SEQUENCIA_PROG_ROT1_MAQ2, :SEQUENCIA_PROG_ROT1_MAQ3, :SEQUENCIA_PROG_ROT1_MAQ4, ');
//               IBQ1.SQL.Add(':SEQUENCIA_PROG_ROT1_MAQ5, :SEQUENCIA_PROG_ROT1_MAQ6, :SEQUENCIA_PROG_ROT1_MAQ7, :SEQUENCIA_PROG_ROT1_MAQ8, :QUANTIDADE_APONTADOR, :EXCLUIDA_POR, :EXCLUIDA_DATAHORA, ');
//               If TRIM(IBQ2.FieldByName('DT_PRIORIDADE').AsString) = '' then
//                  IBQ1.SQL.Add('Null')
//               else
//                 IBQ1.SQL.Add(' ''' + FormatDateTime('MM/DD/YYYY',IBQ2.FieldByName('DT_PRIORIDADE').AsDateTime) + ''' ');
//               IBQ1.SQL.Add(', ');
//               If TRIM(IBQ2.FieldByName('AGENDAMENTO_DATA').AsString) = '' then
//                  IBQ1.SQL.Add('Null')
//               else
//                  IBQ1.SQL.Add(' ''' + FormatDateTime('MM/DD/YYYY',IBQ2.FieldByName('AGENDAMENTO_DATA').AsDateTime) + ''' ');
//               IBQ1.SQL.Add(', ');
//               If TRIM(IBQ2.FieldByName('DATALANC').AsString) = '' then
//                  IBQ1.SQL.Add('Null')
//               else
//                  IBQ1.SQL.Add(' ''' + FormatDateTime('MM/DD/YYYY',IBQ2.FieldByName('DATALANC').AsDateTime) + '''');
//               IBQ1.SQL.Add(') ');
//               IBQ1.ParamByName('CDEXCLUSAO').AsFloat               := VarCDEXCLUSAO;
//               IBQ1.ParamByName('CDEXCLUSAO_PAI').AsFloat           := VarCDEXCLUSAO_pai;
//               IBQ1.ParamByName('NRPEDIDO').AsFloat                 := IBQ2.FieldByName('NRPEDIDO').AsFloat;
//               IBQ1.ParamByName('DESDOBRA').AsString                := IBQ2.FieldByName('DESDOBRA').AsString;
//               IBQ1.ParamByName('NRSEQUEN').AsFloat                 := IBQ2.FieldByName('NRSEQUEN').AsFloat;
//               IBQ1.ParamByName('PESOCX').AsFloat                   := IBQ2.FieldByName('PESOCX').AsFloat;
//               IBQ1.ParamByName('VLUNITCR').AsFloat                 := IBQ2.FieldByName('VLUNITCR').AsFloat;
//               IBQ1.ParamByName('CDCLIENTE').AsFloat                := IBQ2.FieldByName('CDCLIENTE').AsFloat;
//               IBQ1.ParamByName('CDVENDEDOR').AsFloat               := IBQ2.FieldByName('CDVENDEDOR').AsFloat;
//               IBQ1.ParamByName('REFERENCIA').AsString              := IBQ2.FieldByName('REFERENCIA').AsString;
//               IBQ1.ParamByName('SITUACAO').AsString                := IBQ2.FieldByName('SITUACAO').AsString;
//               IBQ1.ParamByName('GERADO_EM').AsDateTime             := IBQ2.FieldByName('GERADO_EM').AsDateTime;
//               IBQ1.ParamByName('DTENTRA').AsDate                   := IBQ2.FieldByName('DTENTRA').AsDateTime;
//               IBQ1.ParamByName('DATA_ENTREGA_DE').AsDate           := IBQ2.FieldByName('DATA_ENTREGA_DE').AsDateTime;
//               IBQ1.ParamByName('DTENTREGA').AsDate                 := IBQ2.FieldByName('DTENTREGA').AsDateTime;
//               IBQ1.ParamByName('PESOTOT').AsFloat                  := IBQ2.FieldByName('PESOTOT').AsFloat;
//               IBQ1.ParamByName('VLPEDIDO').AsFloat                 := IBQ2.FieldByName('VLPEDIDO').AsFloat;
//               IBQ1.ParamByName('PRECOMED').AsFloat                 := IBQ2.FieldByName('PRECOMED').AsFloat;
//               IBQ1.ParamByName('MAQUINA').AsFloat                  := IBQ2.FieldByName('MAQUINA').AsFloat;
//               IBQ1.ParamByName('QUANTIDADE').AsFloat               := IBQ2.FieldByName('QUANTIDADE').AsFloat;
//               IBQ1.ParamByName('QTD_ORIGINAL').AsFloat             := IBQ2.FieldByName('QTD_ORIGINAL').AsFloat;
//               IBQ1.ParamByName('USUARIO').AsString                 := IBQ2.FieldByName('USUARIO').AsString;
//               IBQ1.ParamByName('QUANTIDADE_PRODUZIDA').AsFloat     := IBQ2.FieldByName('QUANTIDADE_PRODUZIDA').AsFloat;
//               IBQ1.ParamByName('FORMA_PAGAMENTO').AsString         := IBQ2.FieldByName('FORMA_PAGAMENTO').AsString;
//               IBQ1.ParamByName('ANTECIPA').AsString                := IBQ2.FieldByName('ANTECIPA').AsString;
//               IBQ1.ParamByName('PEDIDO_TIPO').AsString             := IBQ2.FieldByName('PEDIDO_TIPO').AsString;
//               IBQ1.ParamByName('DIAS_PRORROGADOS').AsFloat         := IBQ2.FieldByName('DIAS_PRORROGADOS').AsFloat;
//               IBQ1.ParamByName('EMBARQUE').AsFloat                 := IBQ2.FieldByName('EMBARQUE').AsFloat;
//               IBQ1.ParamByName('QUANTIDADE_EMBARQUE').AsFloat      := IBQ2.FieldByName('QUANTIDADE_EMBARQUE').AsFloat;
//               IBQ1.ParamByName('PRIORIDADE_POR').AsString          := IBQ2.FieldByName('PRIORIDADE_POR').AsString;
//               IBQ1.ParamByName('OBS_PRIORIDADE').AsString          := IBQ2.FieldByName('OBS_PRIORIDADE').AsString;
//               IBQ1.ParamByName('AGENDAMENTO_HORARIO').AsString     := IBQ2.FieldByName('AGENDAMENTO_HORARIO').AsString;
//               IBQ1.ParamByName('MAQUINA_APONTANDO').AsFloat        := IBQ2.FieldByName('MAQUINA_APONTANDO').AsFloat;
//               IBQ1.ParamByName('HORALANC').AsString                := IBQ2.FieldByName('HORALANC').AsString;
//               IBQ1.ParamByName('TURNO').AsString                   := IBQ2.FieldByName('TURNO').AsString;
//               IBQ1.ParamByName('PESO_CAIXA_LIMPA').AsFloat         := IBQ2.FieldByName('PESO_CAIXA_LIMPA').AsFloat;
//               IBQ1.ParamByName('QUANTIDADE_EXPEDIDA').AsFloat      := IBQ2.FieldByName('QUANTIDADE_EXPEDIDA').AsFloat;
//               IBQ1.ParamByName('APONTADO_ONDULADEIRA').AsString    := 'S';
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA1_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA1_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA1_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA1_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA1_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA1_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA2_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA2_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA2_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA2_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA2_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA2_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA3_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA3_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA3_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA3_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA3_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA3_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA4_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA4_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA4_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA4_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA4_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA4_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA5_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA5_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA5_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA5_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA5_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA5_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA6_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA6_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA6_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA6_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA6_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA6_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA7_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA7_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA7_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA7_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA7_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA7_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA8_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO1_MAQUINA8_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA8_NOME').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA8_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO1_MAQUINA8_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO1_MAQUINA8_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA1_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA1_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA1_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA1_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA1_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA1_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA2_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA2_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA2_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA2_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA2_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA2_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA3_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA3_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA3_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA3_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA3_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA3_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA4_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA4_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA4_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA4_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA4_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA4_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA5_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA5_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA5_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA5_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA5_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA5_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA6_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA6_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA6_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA6_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA6_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA6_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA7_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA7_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA7_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA7_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA7_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA7_TIPO').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA8_CODIGO').AsFloat := IBQ2.FieldByName('ROTEIRO2_MAQUINA8_CODIGO').AsFloat;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA8_NOME').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA8_NOME').AsString;
//               IBQ1.ParamByName('ROTEIRO2_MAQUINA8_TIPO').AsString  := IBQ2.FieldByName('ROTEIRO2_MAQUINA8_TIPO').AsString;
//               IBQ1.ParamByName('PROGRAMADO_IMPRESSORA').AsString   := IBQ2.FieldByName('PROGRAMADO_IMPRESSORA').AsString;
//               IBQ1.ParamByName('SEQUENCIA_PROGRAMACAO').AsFloat    := IBQ2.FieldByName('SEQUENCIA_PROGRAMACAO').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ1').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ1').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ2').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ2').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ3').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ3').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ4').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ4').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ5').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ5').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ6').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ6').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ7').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ7').AsFloat;
//               IBQ1.ParamByName('SEQUENCIA_PROG_ROT1_MAQ8').AsFloat := IBQ2.FieldByName('SEQUENCIA_PROG_ROT1_MAQ8').AsFloat;
//               IBQ1.ParamByName('QUANTIDADE_APONTADOR').AsFloat     := IBQ2.FieldByName('QUANTIDADE_APONTADOR').AsFloat;
//               IBQ1.ParamByName('EXCLUIDA_POR').AsString            := TrazNOMEUSUARIO;
//               IBQ1.ParamByName('EXCLUIDA_DATAHORA').AsDateTime     := (DMIB.IBQueryDT.FieldByName('current_timestamp').AsDateTime);
//               IBQ1.ExecSQL;
//               VarCDEXCLUSAO := VarCDEXCLUSAO + 1;
//               IBQ2.Next;
//              End;
//        {$ENDREGION}
//
//       {$REGION 'Exclui da Carga'}
//       IBQ1.Active := False;
//       IBQ1.SQL.Clear;
//       IBQ1.SQL.Add('DELETE FROM CARGA Where NRPEDIDO = ''' +MaskEdit17.Text + ''' ');
//       IBQ1.ExecSQL;
//       {$ENDREGION}
//
//       {$REGION 'Exclui da Programacao de Entrega'}
//       IBQ1.Active := False;
//       IBQ1.SQL.Clear;
//       IBQ1.SQL.Add('UPDATE PROGRAMACAOENTREGAITEM SET STATUS=:STATUS');
//       IBQ1.SQL.Add('Where NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//       IBQ1.ParamByName('STATUS').AsString := 'NF EMITIDA';
//       IBQ1.ExecSQL;
//       {$ENDREGION}
//
//       {$REGION 'Baixa na Sobra da Fabrica e Insere no Historico'}
//        IBQ2.Active := False;
//        IBQ2.SQL.Clear;
//        IBQ2.SQL.Add('Select * FROM SOBRAFAB Where PEDIDOGERA = ''' +MaskEdit17.Text + ''' ');
//        IBQ2.Active:= True;
//        If not IBQ2.IsEmpty then
//           Begin
//             IBQ1.Active:=False;
//             IBQ1.SQL.Clear;
//             IBQ1.SQL.Add('Insert INTO SOBRAS_FABRICA_BAIXADAS (CONTROLE, NRPEDIDO, QUANTIDADE, DATALANC, REFERENCIA, CDCLIENTE, LANCADO_POR, LANCADO_EM, DESDOBRA, NRSEQUEN, COMPLETA_PARCIAL, TIPO, BAIXADA_POR, BAIXADA_EM)');
//             IBQ1.SQL.Add('VALUES (:CONTROLE, :NRPEDIDO, :QUANTIDADE, :DATALANC, :REFERENCIA, :CDCLIENTE, :LANCADO_POR, :LANCADO_EM, :DESDOBRA, :NRSEQUEN, :COMPLETA_PARCIAL, :TIPO, :BAIXADA_POR, :BAIXADA_EM)');
//             IBQ1.ParamByName('CONTROLE').AsFloat         := Gerar_id('GEN_SOBRAS_FABRICA_BAIXADAS');
//             IBQ1.ParamByName('NRPEDIDO').AsFloat         := IBQ2.FieldByName('NRPEDIDO').AsFloat;
//             IBQ1.ParamByName('DESDOBRA').AsString        := IBQ2.FieldByName('DESDOBRA').AsString;
//             IBQ1.ParamByName('NRSEQUEN').AsFloat         := IBQ2.FieldByName('NRSEQUEN').AsFloat;
//             IBQ1.ParamByName('QUANTIDADE').AsFloat       := IBQ2.FieldByName('QUANTIDADE').AsFloat;
//             IBQ1.ParamByName('CDCLIENTE').AsFloat        := IBQ2.FieldByName('CDCLIENTE').AsFloat;
//             IBQ1.ParamByName('DATALANC').AsDateTime      := IBQ2.FieldByName('DATALANC').AsDateTime;
//             IBQ1.ParamByName('REFERENCIA').AsString      := IBQ2.FieldByName('REFERENCIA').AsString;
//             IBQ1.ParamByName('COMPLETA_PARCIAL').AsString:= IBQ2.FieldByName('COMPLETA_PARCIAL').AsString;
//             IBQ1.ParamByName('TIPO').AsString            := IBQ2.FieldByName('TIPO').AsString;
//             IBQ1.ParamByName('LANCADO_POR').AsString     := IBQ2.FieldByName('LANCADO_POR').AsString;
//             IBQ1.ParamByName('LANCADO_EM').AsDateTime    := IBQ2.FieldByName('LANCADO_EM').AsDateTime;
//             IBQ1.ParamByName('BAIXADA_POR').AsString     := TrazNOMEUSUARIO;
//             IBQ1.ParamByName('BAIXADA_EM').AsDateTime    := DMIB.IBQueryDT.FieldByName('current_timestamp').AsDateTime;
//             IBQ1.ExecSQL;
//           End;
//        {$ENDREGION}
//
//       {$REGION 'Exclui da Sobra da Fabrica'}
//       IBQ1.Active := False;
//       IBQ1.SQL.Clear;
//       IBQ1.SQL.Add('DELETE FROM SOBRAFAB Where PEDIDOGERA = ''' +MaskEdit17.Text + ''' ');
//       IBQ1.ExecSQL;
//       {$ENDREGION}
//
//       {$REGION 'Baixa nos Mezaninos'}
//       IBQ1.Active := False;
//       IBQ1.SQL.Clear;
//       IBQ1.SQL.Add('DELETE FROM MEZANINOS Where NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//       IBQ1.ExecSQL;
//       {$ENDREGION}
//      End;
//    {$REGION 'Baixa de Pedidos de Caixas Prointas'}
//    IBQ1.SQL.Clear;
//    IBQ1.SQL.Add('SELECT First 1 NRPEDIDO, SITUACAO FROM PEDIDO ');
//    IBQ1.SQL.Add('WHERE PEDIDO.NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//    IBQ1.Active := True;
//    If TRIM(IBQ1.FieldByName('SITUACAO').AsString)= 'CAIXAS PRONTAS EXPEDIÇÃO' then
//       Begin
//        IBQ3.SQL.Clear;
//        IBQ3.SQL.Add('SELECT PEDIDOGERA, QUANTIDADE FROM SOBRAFAB ');
//        IBQ3.SQL.Add('WHERE SOBRAFAB.PEDIDOGERA = ''' + MaskEdit17.Text + ''' ');
//        IBQ3.Active := True;
//        If not IBQ3.IsEmpty then
//           Begin
//            If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//               Begin
//                If StrToFloatDef(MaskEditBaixaAT.Text,0) >= IBQ3.FieldByName('QUANTIDADE').AsFloat then
//                   Begin
//                    IBQ1.Active := False;
//                    IBQ1.SQL.Clear;
//                    IBQ1.SQL.Add('DELETE FROM SOBRAFAB Where PEDIDOGERA = ''' +MaskEdit17.Text + ''' ');
//                    IBQ1.ExecSQL;
//                    Application.MessageBox('ATENÇÃO: PEDIDO DE CAIXAS PRONTAS.'#13'FEITA BAIXA TOTAL NO CONTROLE DE SOBRAS DE CAIXAS.','Aviso', mb_OK);
//                   End
//                Else
//                   Begin
//                    IBQ1.Active := False;
//                    IBQ1.SQL.Clear;
//                    IBQ1.SQL.Add('UPDATE SOBRAFAB SET QUANTIDADE = :QUANTIDADE, PEDIDOGERA=NULL, GERADOPEDI=NULL ');
//                    IBQ1.SQL.Add('Where PEDIDOGERA = ''' + MaskEdit17.Text + ''' ');
//                    IBQ1.ParamByName('QUANTIDADE').AsFloat := IBQ3.FieldByName('QUANTIDADE').AsFloat -StrToFloatDef(MaskEditBaixaAT.Text,0);
//                    IBQ1.ExecSQL;
//                    Application.MessageBox('ATENÇÃO: PEDIDO DE CAIXAS PRONTAS.'#13'FEITA BAIXA PARCIAL NO CONTROLE DE SOBRAS DE CAIXAS','Aviso', mb_OK);
//                   End;
//               End
//            Else
//               Begin
//                If StrToFloatDef(MaskEdit19.Text,0) >= IBQ3.FieldByName('QUANTIDADE').AsFloat then
//                   Begin
//                    IBQ1.Active := False;
//                    IBQ1.SQL.Clear;
//                    IBQ1.SQL.Add('DELETE FROM SOBRAFAB Where PEDIDOGERA = ''' +MaskEdit17.Text + ''' ');
//                    IBQ1.ExecSQL;
//                    Application.MessageBox('ATENÇÃO: PEDIDO DE CAIXAS PRONTAS.'#13'FEITA BAIXA TOTAL NO CONTROLE DE SOBRAS DE CAIXAS.','Aviso', mb_OK);
//                   End
//                Else
//                  Begin
//                   IBQ1.Active := False;
//                   IBQ1.SQL.Clear;
//                   IBQ1.SQL.Add('UPDATE SOBRAFAB SET QUANTIDADE = :QUANTIDADE, PEDIDOGERA=NULL, GERADOPEDI=NULL ');
//                   IBQ1.SQL.Add('Where PEDIDOGERA = ''' + MaskEdit17.Text + ''' ');
//                   IBQ1.ParamByName('QUANTIDADE').AsFloat := IBQ3.FieldByName('QUANTIDADE').AsFloat -StrToFloatDef(MaskEdit19.Text,0);
//                   IBQ1.ExecSQL;
//                   Application.MessageBox('ATENÇÃO: PEDIDO DE CAIXAS PRONTAS.'#13'FEITA BAIXA PARCIAL NO CONTROLE DE SOBRAS DE CAIXAS','Aviso', mb_OK);
//                  End;
//               End;
//           End;
//       End;
//    {$ENDREGION}
//
//    If (MaskEdit2.Text <> '999999') and (MaskEdit2.Text <> '999998') and
//       (MaskEdit2.Text <> '999997') and (MaskEdit2.Text <> '0')      and
//       (MaskEdit2.Text <> '999996') and (MaskEdit2.Text <> '999995') and
//       (MaskEdit2.Text <> '999993') and (MaskEdit2.Text <> '999994') then
//       Begin
//        {$REGION 'Atualiza tabela de Pedidos Baixados'}
//        IBQ1.Close;
//        IBQ1.SQL.Clear;
//        IBQ1.SQL.Add('insert into pedibaix (NRPEDIDO, DATABAIX, QUANBAIX, TPDOCTO, NFNUMERO, SERIE, NR_EMPRESA)');
//        IBQ1.SQL.Add('values (:NRPEDIDO, :DATABAIX, :QUANBAIX, :TPDOCTO, :NFNUMERO, :SERIE, :NR_EMPRESA)');
//        IBQ1.ParamByName('NRPEDIDO').AsFloat := StrToFloatDef(MaskEdit17.Text,0);
//        IBQ1.ParamByName('DATABAIX').AsDateTime := StrToDate(JvDateEdit1.Text);
//        If ((TRIM(MaskEditFATORQ.Text) <> '') and (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//            IBQ1.ParamByName('QUANBAIX').AsFloat := StrToFloatDef(MaskEditBaixaAT.Text,0)
//         Else
//            IBQ1.ParamByName('QUANBAIX').AsFloat := StrToFloatDef(MaskEdit19.Text,0);
//        IBQ1.ParamByName('TPDOCTO').AsString := 'NF';
//        IBQ1.ParamByName('NFNUMERO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//        If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//           IBQ1.ParamByName('SERIE').AsFloat := 1
//        Else
//           IBQ1.ParamByName('SERIE').AsFloat := 0;
//        IBQ1.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//        IBQ1.ExecSQL;
//        {$ENDREGION}
//
//        {$REGION 'Tabela de Pedidos Entregues com Falta no Pedido'}
//        If ComboBoxBaixa.Text = 'T' then
//           // vai p/ a tabela de pedidos que chegaram incompletos até o cliente...
//           Begin
//            IBQ3.Close;
//            IBQ3.SQL.Clear;
//            IBQ3.SQL.Add('Select First 1 Pedido.CDCLIENTE, Pedido.QUANTIDA, Clientes.PCPROG, Clientes.NMGUERRA ');
//            IBQ3.SQL.Add('from PEDIDO ');
//            IBQ3.SQL.Add('Left Outer Join CLIENTES');
//            IBQ3.SQL.Add('On (Pedido.CDCLIENTE = Clientes.CDCLIENTE) ');
//            IBQ3.SQL.Add('Where Pedido.NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//            IBQ3.Open;
//            VarNmguerra := IBQ3.FieldByName('NMGUERRA').AsString;
//            VarPCPROG := IBQ3.FieldByName('PCPROG').AsFloat;
//            VarQUANTIDA_PED := IBQ3.FieldByName('QUANTIDA').AsInteger;
//            IBQ3.Close;
//            IBQ3.SQL.Clear;
//            IBQ3.SQL.Add('Select sum(QUANBAIX) as SOMAENTREGUEI ');
//            // essa busca já trouxe a quantidade fatorada só eque ainda não traz nada dessa leva por causa do commit.
//            IBQ3.SQL.Add('from PEDIBAIX ');
//            IBQ3.SQL.Add('Where Pedibaix.NRPEDIDO = ''' + MaskEdit17.Text + ''' ');
//            IBQ3.Open;
//            VarSomaEntreguei := IBQ3.FieldByName('SOMAENTREGUEI').AsFloat;
//            If ((TRIM(MaskEditFATORQ.Text) <> '') and  (TRIM(MaskEditFATORQ.Text) <> '0')) Then
//               VarQtdVendidaHoje := StrToFloatDef(MaskEditBaixaAT.Text,0)
//            Else
//               VarQtdVendidaHoje := StrToFloatDef(MaskEdit19.Text,0);
//             If VarSomaEntreguei + VarQtdVendidaHoje < VarQUANTIDA_PED then
//                // Condição para que alimente a tabela NFITEM_FECHAMENTOnfitemcagada.
//                Begin
//                 IBQ3.Close;
//                 IBQ3.SQL.Clear;
//                 IBQ3.SQL.Add('Select max(NRSEQUEN) as ma ');
//                 IBQ3.SQL.Add('from NFITEM_FECHAMENTO ');
//                 IBQ3.Open;
//                 VarNrSequen_do_NFITEM_FECHAMENTO := IBQ3.FieldByName('MA').AsInteger + 1;
//                 IBQ1.Close;
//                 IBQ1.SQL.Clear;
//                 IBQ1.SQL.Add('insert into NFITEM_FECHAMENTO (NRSEQUEN, TPDOCTO, NRNF, ITEM_NA_NF, SERIE, NR_EMPRESA, CDCLIENTE, NMGUERRA, CDREFE, NRPEDIDO, DATA, QUANTIDA_PED, PCPROG, QUANTIDA_BAIX) ');
//                 IBQ1.SQL.Add('values (:NRSEQUEN, :TPDOCTO, :NRNF, :ITEM_NA_NF, :SERIE, :NR_EMPRESA, :CDCLIENTE, :NMGUERRA, :CDREFE, :NRPEDIDO, :DATA, :QUANTIDA_PED, :PCPROG, :QUANTIDA_BAIX) ');
//                 IBQ1.ParamByName('NRSEQUEN').AsFloat   := VarNrSequen_do_NFITEM_FECHAMENTO;
//                 IBQ1.ParamByName('TPDOCTO').AsString   := 'NF';
//                 IBQ1.ParamByName('NRNF').AsFloat       := StrToFloatDef(MaskEdit1.Text,0);
//                 IBQ1.ParamByName('ITEM_NA_NF').AsFloat := StrToFloatDef(LabelITEM.Caption,0);
//                 If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                    IBQ1.ParamByName('SERIE').AsFloat := 1
//                 Else
//                    IBQ1.ParamByName('SERIE').AsFloat := 0;
//                 IBQ1.ParamByName('NR_EMPRESA').AsFloat   := StrToFloatDef(ComboBoxEmpresa.Text,0);
//                 IBQ1.ParamByName('CDCLIENTE').AsFloat    := StrToFloatDef(MaskEditCodigoCli_For.Text,0); // só vai cliente
//                 IBQ1.ParamByName('NMGUERRA').AsString    := VarNmguerra;
//                 IBQ1.ParamByName('CDREFE').AsString      := MaskEdit22.Text; // conferir.
//                 IBQ1.ParamByName('NRPEDIDO').AsFloat     := StrToFloatDef(MaskEdit17.Text,0);
//                 IBQ1.ParamByName('DATA').AsDateTime      := DMIB.IBQueryDT.FieldByName('current_date').AsDateTime;
//                 IBQ1.ParamByName('QUANTIDA_PED').AsFloat := VarQUANTIDA_PED;
//                 IBQ1.ParamByName('PCPROG').AsFloat       := VarPCPROG;
//                 IBQ1.ParamByName('QUANTIDA_BAIX').AsFloat:= VarSomaEntreguei + VarQtdVendidaHoje;
//                 IBQ1.ExecSQL;
//                End;
//           End;
//           {$ENDREGION}
//       End;
//
//   {$REGION 'update Palete_no_cliente'}
//   if (Trim(MaskEditNF_PALETE.Text)='S') and (Trim(ComboBoxEspecie.Text)= 'PALLETS')  then
//      begin
//       if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('CONTROLE_PALLET_CLIENTE').AsString) = 'S' then
//          begin
//           IBQ1.Active := False;
//           IBQ1.SQL.Clear;
//           IBQ1.SQL.Add('update paletes_no_cliente  set ');
//           IBQ1.SQL.Add('paletes_no_cliente.qtd_baixado = :qtd_baixado + paletes_no_cliente.qtd_baixado');
//           IBQ1.SQL.Add('where paletes_no_cliente.nrnf = '''+MaskEditRefNF.Text+''' ');
//           IBQ1.ParamByName('QTD_BAIXADO').AsFloat := StrToFloat(MaskEdit19.Text);
//           IBQ1.ExecSQL;
//          end;
//      end;
//   {$ENDREGION}
//
//   IBT1.Commit;
//   If StrToFloatDef(LabelITEM.Caption,0) = StrToFloatDef(MaskEditItensNota.Text,0) then
//     Begin
//         Application.MessageBox('NOTA FISCAL COMPLETA.', 'Aviso', mb_OK);
//         BitBtnIncluiItem.Enabled := False;
//         BitBtnInclusao.Enabled := True;
//         // retirado o click para evitar duplicidade de nf
//         BitBtnFechar.Enabled := True; // botao do cancela ativado
//     End
//   Else
//   if Application.MessageBox('ITEM INCLUÍDO COM SUCESSO NA NOTA' + #13 +' DESEJA INCLUIR OUTRO ÍTEM?', 'INCLUIR', mb_YesNo + mb_IconInformation +mb_DefButton1) = mrYes then
//      Begin
//       LabelITEM.Caption := IntToStr(StrToIntDef(LabelITEM.Caption,0) + 1);
//       BitBtnLimpaCamposItem.Click;
//       If VarCDNATOPE2 = 0 then
//          MaskEditCDNATOPEITEM.Text := MaskEdit9.Text
//       Else
//       If (LabelITEM.Caption = '2') or (LabelITEM.Caption = '4') or
//          (LabelITEM.Caption = '6') or (LabelITEM.Caption = '8') or
//          (LabelITEM.Caption = '10') or (LabelITEM.Caption = '12') or
//          (LabelITEM.Caption = '14') or (LabelITEM.Caption = '16') then
//          If VarCDNATOPE2 <> 0 then
//             MaskEditCDNATOPEITEM.Text := IntToStr(VarCDNATOPE2)
//          Else
//             MaskEditCDNATOPEITEM.Text := MaskEdit9.Text;
//       if Pos(Trim(MaskEdit2.Text),'999999|999998|999997|999996|999995|999994|999993') <> 0 then
//          Begin
//           MaskEdit17.Text := MaskEdit2.Text;
//           If MaskEdit2.Text = '999998' then
//              MaskEdit21.Text := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999998').AsString;
//           If MaskEdit2.Text = '999997' then
//              MaskEdit21.Text := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString;
//           If MaskEdit2.Text = '999996' then
//              MaskEdit21.Text := DMIB.IBQueryParametros.FieldByName('DESC_NOTA_999997').AsString;
//           ComboBoxUnidade.SetFocus;
//          end
//       Else
//          MaskEdit17.SetFocus;
//      End
//   Else
//      Begin
//       BitBtnIncluiItem.Enabled := False;
//       BitBtnInclusao.Enabled := True;
//       BitBtnFechar.Enabled := True; // botao do cancela ativado
//       BitBtnInclusao.Click; // Criando as duplicatas
//       BitBtnFechar.SetFocus;
//      End;
//  except
//   on E: Exception do
//      begin
//       IBT1.Rollback;
//       if Application.MessageBox(PWideChar('ERRO NA GRAVAÇÃO, DESEJA TENTAR GRAVAR NOVAMENTE?' + #13 +'Cód do erro: ' + E.MESSAGE), 'Aviso',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//          BitBtnFechar.SetFocus;
//      end;
//  end;
end;

procedure TTelaNF.BitBtnLimpaCamposItemClick(Sender: TObject);
begin
// If (MaskEdit9.Text) = '5124' Then
//    MaskEditICM.Text := LabelICMORIGINAL.Caption;
// MaskEditDescricaoNatopeitem.Text := '';
// MaskEditBaixaAT.Text             := '';
// MaskEditValidacao.Text           := '0';
// MaskEditQtdApontada.Text         := '0';
// MaskEditDescClass.Text           := '';
// JvNavPanelHeader1.Visible        := False;
// MaskEditSolicitante.Text         := '';
// JvDateEditPRetorno.Text          := '';
// MaskEditBeneficio.Text           := '';
// MaskEdit17.Text                  := '0';
// ComboBoxUnidade.Text             := '';
// LabelIPI.Caption                 := '';
// MaskEdit19.Text                  := '0';
// MaskEdit20.Text                  := '0';
// MaskEdit21.Text                  := '';
// MaskEdit22.Text                  := '';
// MaskEdit23.Text                  := '0';
// MaskEdit24.Text                  := '';
// MaskEdit26.Text                  := '0';
// MaskEdit27.Text                  := '0';
// If TRIM(MaskEditCST_OBS.Text) <> 'S' Then
//    Begin
//     MaskEdit28.Text              := '000';
//     Maskeditclafisca.Text        := '';
//     MaskEditPISSN.Text           := '';
//     MaskEditCOFINSSN.Text        := '';
//     MaskEditPercentualPIS.Text   := '';
//     MaskEditPercentualCOFINS.Text:= '';
//    End;
// MaskEditVLUNIT.Text := '0';
// MaskEditVLTOTAL.Text := '0';
// JvDateEditDTENTREGAPED.Text := '';
// MaskEditFATORQ.Text := '';
end;

procedure TTelaNF.MaskEdit12Exit(Sender: TObject);
begin
// if not BitBtnFechar.Focused then
//    begin
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEdit12.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit12.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//
//     if MaskEdit12.Text = '0' then
//        begin
//         MaskEditI_S_T.Text             := '';
//         MaskEditPIS_COFINS.Text        := '';
//         MaskEditObservacaoFiscald.Text := '';
//         MaskEditObservacaoFiscal.Text  := '';
//         MaskEditCST_PIS.Text           := '';
//         MaskEditCST_COFINS.Text        := '';
//         Abort;
//        end;
//     if MaskEdit12.Text = '9999' then
//        begin
//         TelaEntradaObservacaoFiscal := TTelaEntradaObservacaoFiscal.Create(Application);
//         TelaEntradaObservacaoFiscal.ShowModal;
//         FreeAndNil(TelaEntradaObservacaoFiscal);
//        end
//     else
//        begin
//         IBQ1.Active := False;
//         IBQ1.SQL.Clear;
//         IBQ1.SQL.Add('Select First 1 CDOBSFIS, MOTIVO_DA_OBS, OBSERVACAO_FISCAL,IPI_SITUACAO_TRIBUTARIA,');
//         IBQ1.SQL.Add('SITUACAO_TRIBUTARIA, PIS_COFINS, CST_PIS,CST_COFINS, ENQUADRAMENTO_LEGAL_IPI');
//         IBQ1.SQL.Add('From OBSFISC');
//         IBQ1.SQL.Add('Where CDOBSFIS = ''' + MaskEdit12.Text + ''' ');
//         IBQ1.Active := True;
//         if IBQ1.IsEmpty then
//            begin
//             MaskEdit12.SetFocus;
//             MaskEditObservacaoFiscald.Text := '';
//            end
//         else
//           begin
//             MaskEditI_S_T.Text             := Trim(IBQ1.FieldByName('IPI_SITUACAO_TRIBUTARIA').AsString);
//             MaskEditPIS_COFINS.Text        := Trim(IBQ1.FieldByName('PIS_COFINS').AsString);
//             MaskEditObservacaoFiscald.Text := Trim(IBQ1.FieldByName('MOTIVO_DA_OBS').AsString);
//             MaskEditObservacaoFiscal.Text  := Trim(IBQ1.FieldByName('OBSERVACAO_FISCAL').AsString);
//             MaskEditCST_PIS.Text           := Trim(IBQ1.FieldByName('CST_PIS').AsString);
//             MaskEditCST_COFINS.Text        := Trim(IBQ1.FieldByName('CST_COFINS').AsString);
//             MaskEditENQUADRAMENTO_IPI.Text := Trim(IBQ1.FieldByName('ENQUADRAMENTO_LEGAL_IPI').AsString);
//             if Trim(IBQ1.FieldByName('SITUACAO_TRIBUTARIA').AsString) <> '' then
//                begin
//                 MaskEditCST_OBS.Text := 'S';
//                 MaskEdit28.Text      := Trim(IBQ1.FieldByName('SITUACAO_TRIBUTARIA').AsString);
//                 IBQ1.Active := False;
//                 IBQ1.SQL.Clear;
//                 IBQ1.SQL.Add('Select First 1 CDSITTRI, DESCRICAO, PIS, COFINS, T_I_S from SITUACAO_TRIBUTARIA');
//                 IBQ1.SQL.Add('Where CDSITTRI = ''' + MaskEdit28.Text + '''');
//                 IBQ1.Active := True;
//                 Maskeditclafisca.Text         := Trim(IBQ1.FieldByName('DESCRICAO').AsString);
//                 MaskEditPISSN.Text            := Trim(IBQ1.FieldByName('PIS').AsString);
//                 MaskEditCOFINSSN.Text         := Trim(IBQ1.FieldByName('COFINS').AsString);
//                 MaskEditPercentualPIS.Text    := DMIB.IBQueryEmpresa.FieldByName('PIS').AsString;
//                 MaskEditPercentualCOFINS.Text := DMIB.IBQueryEmpresa.FieldByName('COFINS').AsString;
//                 MaskEdit28.TabStop            := False;
//                 Maskeditclafisca.TabStop      := False;
//                 MaskEdit28.Enabled            := True;
//                 Maskeditclafisca.ReadOnly     := True;
//                end
//             else
//                begin
//                 MaskEditCST_OBS.Text      := 'N';
//                 MaskEdit28.Text           := '000';
//                 Maskeditclafisca.Text     := '';
//                 MaskEdit28.TabStop        := True;
//                 Maskeditclafisca.TabStop  := True;
//                 MaskEdit28.ReadOnly       := False;
//                 Maskeditclafisca.ReadOnly := False;
//                end;
//             if Trim(MaskEditPIS_COFINS.Text) = 'N' then
//                begin
//                 MaskEditPISSN.Text            := 'N';
//                 MaskEditCOFINSSN.Text         := 'N';
//                 MaskEditPercentualPIS.Text    := '0';
//                 MaskEditPercentualCOFINS.Text := '0';
//                 MaskEditPercentualPIS.Text    := '0';
//                 MaskEditPercentualCOFINS.Text := '0';
//                end;
//             if Trim(MaskEditEXPORTADOR.Text) = 'S' then
//                begin
//                 MaskEditPISSN.Text            := 'N';
//                 MaskEditCOFINSSN.Text         := 'N';
//                 MaskEditPercentualPIS.Text    := '0';
//                 MaskEditPercentualCOFINS.Text := '0';
//                 MaskEditPercentualPIS.Text    := '0';
//                 MaskEditPercentualCOFINS.Text := '0';
//                end;
//           end;
//        end;
//    end;
end;

procedure TTelaNF.JvDateEdit1Exit(Sender: TObject);
begin
// If BitBtnInclusao.Visible = True then
//    Begin
//     If StrToDateTime(JvDateEdit1.Text) <(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime) then
//        Begin
//         Application.MessageBox('ATENÇÃO: DATA DO PEDIDO INVÁLIDA, FAVOR VERIFICAR.', 'Aviso', mb_OK);
//         JvDateEdit1.SetFocus;
//        End
//     Else
//        JvDateEdit2.SetFocus;
//    End;
end;

procedure TTelaNF.MaskEdit8Exit(Sender: TObject);
begin
// If not BitBtnFechar.Focused then
//    Begin
//     {$REGION 'Verifica se Campo é Numerico'}
//     if StrIsInteger(MaskEdit8.Text) = False then
//        begin
//         Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit8.SetFocus;
//         Abort;
//        end;
//     {$ENDREGION}
//
//     If MaskEdit8.Text = '' then
//        MaskEdit8.SetFocus
//     Else
//        Begin
//         IBQ2.Active := False;
//         IBQ2.SQL.Clear;
//         IBQ2.SQL.Add('SELECT First 1 CDCONDPG, NMCONDPG, DDPAGTO1, DDPAGTO2, DDPAGTO3, DDPAGTO4, DDPAGTO5, DDPAGTO6, PRAZO, DUPLICATA');
//         IBQ2.SQL.Add('FROM Condpag');
//         IBQ2.SQL.Add('Where CDCONDPG= ''' + TRIM(MaskEdit8.Text) +''' and Condpag.BLOQUEADA=''N'' ');
//         IBQ2.Active := True;
//         If IBQ2.IsEmpty then
//            MaskEdit8.SetFocus
//         Else
//            MaskEditCondpg.Text := TRIM(IBQ2.FieldByName('NMCONDPG').AsString);
//         Qtddupli := IBQ2.FieldByName('DUPLICATA').AsFloat;
//         DT1 := IBQ2.FieldByName('DDPAGTO1').AsInteger;
//         DT2 := IBQ2.FieldByName('DDPAGTO2').AsInteger;
//         DT3 := IBQ2.FieldByName('DDPAGTO3').AsInteger;
//         DT4 := IBQ2.FieldByName('DDPAGTO4').AsInteger;
//         DT5 := IBQ2.FieldByName('DDPAGTO5').AsInteger;
//         DT6 := IBQ2.FieldByName('DDPAGTO6').AsInteger;
//         If ((VARCRIADUPLICATA = 'S') And (Qtddupli=0) and (trim(MaskEdit8.Text)='S') ) Then
//             Begin
//              Application.MessageBox('ATENÇÃO: CONDIÇÃO DE PAGAMENTO ÍNVALIDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//              MaskEdit8.SetFocus;
//              Abort;
//             End;
//        End;
//    End;
end;

procedure TTelaNF.MaskEditPESOBRUTExit(Sender: TObject);
begin
//  if MaskEditPESOBRUT.Text = '' then
//    MaskEditPESOBRUT.Text := '0';
//
//  if (StrToFloatDef(MaskEditPESOBRUT.Text,0) < 0) then
//    MaskEditPESOBRUT.SetFocus;
end;

procedure TTelaNF.MaskEditPESOLIQTExit(Sender: TObject);
begin
//  if MaskEditPESOLIQT.Text = '' then
//    MaskEditPESOLIQT.Text := '0';
end;

procedure TTelaNF.MaskEditPESOBRUTKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
//  CharSet := [#8, #48 .. #57];
//  if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditPESOLIQTKeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
//  CharSet := [#8, #48 .. #57];
//  if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditPlacaExit(Sender: TObject);
begin
//  if Trim(MaskEditPlaca.Text)='' then
//    MaskEditPlaca.SetFocus;
//
//  if BitBtnInclusao.Visible = True then
//    if Application.MessageBox('CONFIRMA GRAVAÇÃO DA NOTA FISCAL?','INCLUIR DOCUMENTO', mb_YesNo + mb_IconInformation + mb_DefButton1)= mrYes then
//      begin
//        LabelITEM.Caption         := '1';
//        GroupBox1.Enabled         := False;
//        MaskEditCDNATOPEITEM.Text := MaskEdit9.Text;
//      end
//    else
//      MaskEdit2.SetFocus;
end;

procedure TTelaNF.MaskEditReferenciaMotivoEmissaoExit(Sender: TObject);
begin
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('SELECT First 1 CDCLIENTE ');
//  IBQ1.SQL.Add('FROM NF');
//  IBQ1.SQL.Add('Where NRNF = :NRNF');
//  IBQ1.SQL.Add('and NF.SERIE=1');
//  IBQ1.SQL.Add('and NF.NR_EMPRESA = '''+ComboBoxEmpresa.Text+''' ');
//  IBQ1.ParamByName('NRNF').AsFloat := StrToFloatDef(MaskEditReferenciaMotivoEmissao.Text,0);
//  IBQ1.Active := True;
//
//  if Trim(IBQ1.FieldByName('CDCLIENTE').AsString) = '' then
//    begin
//      Application.MessageBox('ATENÇÃO: NOTA INVÁLIDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//      MaskEditReferenciaMotivoEmissao.SetFocus;
//      Abort;
//    end
end;

procedure TTelaNF.MaskEditRefNFExit(Sender: TObject);
begin
//  if not BitBtnFechar.Focused then
//    begin
//      if Pos(Trim(MaskEdit9.Text),'1201|1202|2201|2202') <> 0 then
//        begin
//          if MaskeditREFNF.Text = '' then
//            MaskeditREFNF.Text := '0';
//
//          IBQ1.Active := False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('SELECT First 1 CLIFOR, CDCLIENTE, CHAVE FROM NF');
//          IBQ1.SQL.Add('Where NRNF = :NRNF');
//          IBQ1.SQL.Add('and NF.SERIE=1');
//          IBQ1.SQL.Add('and NF.NR_EMPRESA = '''+ComboBoxEmpresa.Text+''' ');
//          IBQ1.ParamByName('NRNF').AsFloat := StrToFloatDef(MaskeditREFNF.Text,0);
//          IBQ1.Active := True;
//          if Trim(IBQ1.FieldByName('CLIFOR').AsString) <> Trim(ComboBoxCliFor.Text) then
//            begin
//              Application.MessageBox('ATENÇÃO: NOTA INVÁLIDA VERIFIQUE SE A NFE É DE CLIENTE/FORNECEDOR, FAVOR VERIFICAR.','Aviso', mb_OK);
//              MaskEditRefNF.SetFocus;
//              Abort;
//            end
//          else
//            if Trim(IBQ1.FieldByName('CDCLIENTE').AsString)<> Trim(MaskEditCodigoCli_For.Text) then
//              begin
//                Application.MessageBox('ATENÇÃO: NOTA INVÁLIDA CODIGO CLIENTE/FORNECEDOR DIFERE DA NOTA A SER GERADA, FAVOR VERIFICAR.','Aviso', mb_OK);
//                MaskEditRefNF.SetFocus;
//                Abort;
//              end;
//          MaskeditREFNFE.Text   := Trim(IBQ1.FieldByName('CHAVE').AsString);
//        end
//      else
//        begin
//          if Trim(MaskEditRefNF.Text) = '' then
//            MaskEditRefNF.Text := '0';
//
//          IBQ1.Active := False;
//          IBQ1.SQL.Clear;
//          IBQ1.SQL.Add('select paletes_no_cliente.chave_acesso ');
//          IBQ1.SQL.Add('from paletes_no_cliente ');
//          IBQ1.SQL.Add('where paletes_no_cliente.nrnf = '''+Trim(MaskEditRefNF.Text)+''' ');
//          IBQ1.Active := True;
//          if Trim(IBQ1.FieldByName('CHAVE_ACESSO').AsString) = '' then
//            begin
//              Application.MessageBox('ATENÇÃO: NOTA INVÁLIDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//              MaskEditRefNF.SetFocus;
//              Abort;
//            end
//          else
//            begin
//              MaskEditREFNFE.ReadOnly     := False;
//              MaskEditREFNFE.Text         := IBQ1.FieldByName('CHAVE_ACESSO').AsString;
//              LabelNFEReferencial.Enabled := True;
//            end;
//        end;
//
//
//
//
//    end;
end;

procedure TTelaNF.MaskEdit9KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit8KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit5KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditNFQUANTIDAKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit10KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditCodigoCli_ForKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.JvDateEdit2KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditPCFRETEKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.ComboBoxFreteKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.ComboBoxMotivoEmissaoExit(Sender: TObject);
begin
// if Trim(IBQ9.FieldByName('EXIGE_COMPLEMENTO').AsString) = 'S' then
//    begin
//      LabelReferenciaMotivoEmissao.Enabled    := True;
//      MaskEditReferenciaMotivoEmissao.Enabled := True;
//      MaskEditReferenciaMotivoEmissao.SetFocus;
//    end
// else
// if Trim(IBQ9.FieldByName('EXIGE_JUSTIFICATIVA').AsString) = 'S' then
//    begin
//     LabelReferenciaMotivoEmissao.Caption := 'Justif.:';
//     LabelReferenciaMotivoEmissao.Enabled := True;
//     MaskEditJutifica.Visible             := True;
//     MaskEditJutifica.SetFocus;
//    end
// else
//    begin
//     LabelReferenciaMotivoEmissao.Enabled    := False;
//     MaskEditReferenciaMotivoEmissao.Enabled := False;
//    end;
end;

procedure TTelaNF.ComboBoxNFPalletExit(Sender: TObject);
begin
//  if ComboBoxNFPallet.Text = '' then
//    ComboBoxNFPallet.SetFocus
//  else
//   if ComboBoxNFPallet.Text = 'S' then
//     begin
//       LabelNotaFiscalReferencial.Enabled := True;
//       MaskEditRefNF.Enabled              := True;
//       LabelNFEReferencial.Enabled        := True;
//       MaskEditREFNFE.Enabled             := True;
//     end;
//
end;

procedure TTelaNF.ComboBoxTIPO_RODADOExit(Sender: TObject);
begin
// If (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'CARRETA')   and
//    (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'CONTAINER') and
//    (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'TOCO')      and
//    (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'TRUCK')     and
//    (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'VAN')       and
//    (UpperCase(ComboBoxTIPO_RODADO.Text) <> 'UTILITÁRIO') then
//     ComboBoxTIPO_RODADO.SetFocus
end;

procedure TTelaNF.MaskEdit17KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
//  CharSet := [#8, #48 .. #57];
//  if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit19KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit20KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit25KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit27KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit23KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditVLUNITKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditVLTOTALKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
//  CharSet := [#8, #44, #48 .. #57];
//  if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEdit17Enter(Sender: TObject);
begin
// JvNavPanelHeader1.Visible := False;
// JvNavPanelHeader1.Caption := '';
// If MaskEdit17.Text = '0' then
//    Begin
//     If LabelITEM.Caption = '1' Then
//        MaskEdit17.Text := MaskEdit2.Text;
//    End;
// MaskEdit17.SetFocus;
end;

procedure TTelaNF.MaskEdit19Exit(Sender: TObject);
begin
//  if StrIsFloat(MaskEdit19.Text) = False then
//    begin
//      Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//      MaskEdit19.SetFocus;
//      Abort;
//    end;
//
//  if MaskEdit19.Text = '' then
//    MaskEdit19.Text := '0';
//
//  if StrToFloatDef(MaskEdit19.Text,0) <= 0 then
//    MaskEdit19.SetFocus;
//
//  if DMIB.IBQueryParametros_Fiscal.FieldByName('BLOQUEIA_BX_MENOR_QTD_PEDIDO').AsString = 'S' then
//    begin
////      IBQ1.Active := False;
////      IBQ1.SQL.Clear;
////      IBQ1.SQL.Add('select (pedido.quantida - carga.quantidade_expedida ) as quantida');
////      IBQ1.SQL.Add('from pedido ');
////      IBQ1.SQL.Add('inner join carga on carga.nrpedido = pedido.nrpedido');
////      IBQ1.SQL.Add('where pedido.nrpedido  = '''+MaskEdit17.Text+''' ');
////      IBQ1.Active := True;
//      //ALTERADO EM 28/07/2015 - Verificar se o erro persiste.
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('select  pedido.quantida, ');
//      IBQ1.SQL.Add('      ( select sum(pedibaix.quanbaix) ');
//      IBQ1.SQL.Add('        from pedibaix ');
//      IBQ1.SQL.Add('        where pedibaix.nrpedido = pedido.nrpedido)as QtdFaturada,');
//      IBQ1.SQL.Add('      (  pedido.quantida -     ');
//      IBQ1.SQL.Add('        (select sum(pedibaix.quanbaix)  ');
//      IBQ1.SQL.Add('         from pedibaix                  ');
//      IBQ1.SQL.Add('         where pedibaix.nrpedido = pedido.nrpedido))qtdtotal');
//      IBQ1.SQL.Add('from pedido ');
//      IBQ1.SQL.Add('where pedido.nrpedido  = '''+MaskEdit17.Text+''' ');
//      IBQ1.Active := True;
//      if (Trim(MaskEditFATORQ.Text) = '') or (MaskEditFATORQ.Text = '0') then
//         begin
//          if (IBQ1.FieldByName('QTDTOTAL').AsFloat > StrToFloat(Maskedit19.Text)) and (ComboBoxBaixa.Text = 'T') then
//             begin
//              ComboBoxBaixa.ItemIndex := 1;
//              Application.MessageBox('ATENÇÃO: QUANTIDADE FATURADA MENOR QUE O PEDIDO. ESTA BAIXA NÃO PODERÁ SER TOTAL.','Aviso', mb_OK);
//             end;
//         end
//      else
//         begin
//          if (IBQ1.FieldByName('QTDTOTAL').AsFloat > (StrToFloat(Maskedit19.Text)*StrToFloat(MaskEditFATORQ.Text))) and (ComboBoxBaixa.Text = 'T') then
//            begin
//              ComboBoxBaixa.ItemIndex := 1;
//              Application.MessageBox('ATENÇÃO: QUANTIDADE FATURADA MENOR QUE O PEDIDO. ESTA BAIXA NÃO PODERÁ SER TOTAL.','Aviso', mb_OK);
//            end;
//         end;
//    end;
//
//  {$REGION 'Consistencia NF de Pallet de Cliente'}
//  if (Pos(Trim(Maskedit9.Text),'5909|5949') <> 0) and (Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('CONTROLE_PALLET_CLIENTE').AsString) = 'S') and
//     (Uppercase(ComboBoxEspecie.Text) = 'PALLETS') then
//    begin
//      IBQ1.Active := False;
//      IBQ1.SQL.Clear;
//      IBQ1.SQL.Add('select quantida ');
//      IBQ1.SQL.Add('from nf ');
//      IBQ1.SQL.Add('where nf.nrnf  = '''+MaskEditReferenciaMotivoEmissao.Text+''' ');
//      IBQ1.SQL.Add('and   nf.serie = ''1'' ');
//      IBQ1.SQL.Add('and   nf.nr_empresa = ''1'' ');
//      IBQ1.Active := True;
//      if IBQ1.FieldByName('QUANTIDA').AsFloat < StrToFloat(Maskedit19.Text) then
//        begin
//          Application.MessageBox('ATENÇÃO: QUANTIDADE DE PALLETS MAIOR  QUE OS EMITIDOS NA NF DE VENDA, FAVOR VERIFICAR.','Aviso', mb_OK);
//        end;
//    end;
//  {$ENDREGION}
//
//  MaskEditVLTOTAL.Text := FormatFloat('######0.00', StrToFloatDef(MaskEdit19.Text,0)* StrToFloatDef(MaskEditVLUNIT.Text,0));
//  MaskEdit23.Text      := FormatFloat('######0.0', StrToFloatDef(MaskEdit19.Text,0) *VARPESOCX);
//
//  if Trim(MaskEdit17.Text) = '999994' then
//    begin
//      MaskEdit23.TabStop := False;
//      MaskEdit23.Text    := MaskEdit19.Text;
//    end;
//  if ((Trim(MaskEditFATORQ.Text) <> '') and (Trim(MaskEditFATORQ.Text) <> '0')) then
//    begin
//      MaskEditBaixaAT.Text := FormatFloat('######0', StrToFloatDef(MaskEdit19.Text,0) *StrToFloatDef(MaskEditFATORQ.Text,0));
//      MaskEditVLUNIT.Text  := FormatFloat('######0.00',VARVLUNITCR * StrToFloatDef(MaskEditFATORQ.Text,0));
//      MaskEditVLTOTAL.Text := FormatFloat('######0.00',StrToFloatDef(MaskEdit19.Text,0) * StrToFloatDef(MaskEditVLUNIT.Text,0));
//      MaskEdit23.Text      := FormatFloat('######0.0', StrToFloatDef(MaskEdit19.Text,0) *VARPESOCX * StrToFloatDef(MaskEditFATORQ.Text,0));
//
//      if (ComboBoxBaixa.Text = 'T') and (StrToFloatDef(MaskEditBaixaAT.Text,0) < QTDItemOr) then
//        if Application.MessageBox('TEM CERTEZA QUE A BAIXA NA CARGA VAI SER TOTAL?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//          ComboBoxBaixa.ItemIndex := 0
//        else
//          ComboBoxBaixa.ItemIndex := 1;
//    end
//  else
//    begin
//      if (ComboBoxBaixa.Text = 'T') and (StrToFloatDef(MaskEdit19.Text,0) < QTDItemOr) then
//        if Application.MessageBox('TEM CERTEZA QUE A BAIXA NA CARGA VAI SER TOTAL?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//          ComboBoxBaixa.ItemIndex := 0
//        else
//          ComboBoxBaixa.ItemIndex := 1;
//    end;
end;

procedure TTelaNF.MaskEdit20Exit(Sender: TObject);
begin
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEdit20.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit20.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
//  if MaskEdit20.Text = '' then
//    MaskEdit20.Text := '0';
end;

procedure TTelaNF.MaskEdit21Exit(Sender: TObject);
begin
//  If MaskEdit21.Text = '' then
//    MaskEdit21.SetFocus;
end;

procedure TTelaNF.MaskEdit22Exit(Sender: TObject);
begin
// If MaskEdit22.Text = '' then
//    MaskEdit22.SetFocus;
end;

procedure TTelaNF.MaskEdit28KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditVLUNITExit(Sender: TObject);
begin
// If StrIsFloat(MaskEditVLUNIT.Text) = False Then
//    Begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEditVLUNIT.SetFocus;
//     Abort;
//    End;
// If (StrToFloatDef(MaskEditVLUNIT.Text,0) <= 0) then
//     MaskEditVLUNIT.SetFocus;
// if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '4' then
//    MaskEditVLUNIT.Text := FormatFloat('######0.0000',StrToFloatDef(MaskEditVLUNIT.Text,0));
// if Trim(DMIB.IBQueryParametros_Vendas.FieldByName('CASAS_DECIMAIS_VALOR_UNITARIO').Asstring) = '5' then
//    MaskEditVLUNIT.Text := FormatFloat('######0.00000',StrToFloatDef(MaskEditVLUNIT.Text,0));
// MaskEditVLTOTAL.Text := FormatFloat('######0.00', StrToFloatDef(MaskEdit19.Text,0)* StrToFloatDef(MaskEditVLUNIT.Text,0));
end;

procedure TTelaNF.MaskEdit4KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.BitBtnInclusaoClick(Sender: TObject);
Var VAR1             : String;
    VARABATIMENTO    : Real;
    VARVALORPISCOFINS: Real;
    V1               : Real;
    V2               : Real;
    V3               : Real;
begin
// try
//  IBT5.Active := False;
//  IBT5.StartTransaction;
//
//  {$REGION 'Avisa Emissão de Nota de Entrada'}
//  if (MaskEdit9.Text = '1201') and (ComboBoxCliFor.Text='C') then
//      begin
//       TelaNotificacoes_via_email:=TTelaNotificacoes_via_email.Create(Application);
//       TelaNotificacoes_via_email.PrcTNVEmail(
//       15,
//       'Atenção: Foi Emitida a Nota Fiscal de Entrada Nº: '+Maskedit1.Text,
//       'Cliente: '+MaskEditNomeCli.Text+'   '+'Obs. Fiscal: '+MaskEditObservacaoFiscald.Text
//       );
//       FreeAndNil(TelaNotificacoes_via_email);
//      end;
//  {$ENDREGION}
//
//  MaskEditVLTOTNF.Text     := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTNF.Text,0)));
//  MaskEditVLTOTIPI.Text    := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTIPI.Text,0)));
//  MaskEditVLTOTPIS.Text    := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTPIS.Text,0)));
//  MaskEditVLTOTCOFINS.Text := FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTCOFINS.Text,0)));
//  BitBtnIncluiItem.Enabled := False;
//  BitBtnFechar.Enabled     := True;
//
//  {$REGION 'Consulta Valor da Base de Cálculo ICMS itens para o Total da NF'}
//  IBQ5.Active := False;
//  IBQ5.SQL.Clear;
//  IBQ5.SQL.Add('SELECT SUM(VLTOTICM) as VLTOTICM, SUM(BASE_CALCULO_ICMS) as BASE_CALCULO_ICMS');
//  IBQ5.SQL.Add('FROM NFITEM');
//  IBQ5.SQL.Add('Where NRNF = ''' + MaskEdit1.Text + ''' ');
//  if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//     IBQ5.SQL.Add('and SERIE = 1')
//  else
//     IBQ5.SQL.Add('and SERIE = 0');
//  IBQ5.SQL.Add('and NR_EMPRESA = ''' +TelaNF.ComboBoxEmpresa.Text + ''' ');
//  IBQ5.Active := True;
//  {$ENDREGION}
//
//  MaskEditBASEICMS.Text    := IBQ5.FieldByName('BASE_CALCULO_ICMS').AsString;
//  MaskEditVLTOTICMS.Text   := IBQ5.FieldByName('VLTOTICM').AsString;
//
//  {$REGION 'Atualiza Tabela Nf com os Totais'}
//  IBQ5.Active := False;
//  IBQ5.SQL.Clear;
//  IBQ5.SQL.Add('UPDATE NF SET VLTOTNF=:VLTOTNF, VLTOTMER = :VLTOTMER, PESOLIQT= :PESOLIQT, PESOBRUT= :PESOBRUT,');
//  IBQ5.SQL.Add('QUANTIDA= :QUANTIDA, VLDESC= :VLDESC, VLTOTICMS=:VLTOTICMS, PCICMS=:PCICMS, VLTOTIPI=:VLTOTIPI,');
//  IBQ5.SQL.Add('VLTOTFRE=:VLTOTFRE, VLCOMIS=:VLCOMIS, BASEICMS=:BASEICMS, ICMSFRETE=:ICMSFRETE, VLTOTISS= :VLTOTISS,');
//  IBQ5.SQL.Add('OBS_FISCAL= :OBS_FISCAL, BASEIPI= :BASEIPI, LIBERA_FRETE= :LIBERA_FRETE, CST_IPI=:CST_IPI,');
//  IBQ5.SQL.Add('VALOR_TOTAL_PIS=:VALOR_TOTAL_PIS, VALOR_TOTAL_COFINS=:VALOR_TOTAL_COFINS,');
//  IBQ5.SQL.Add('VALOR_DIFERIMENTO=:VALOR_DIFERIMENTO, RESULTADO_NFE= :RESULTADO_NFE, ENQUADRAMENTO_IPI=:ENQUADRAMENTO_IPI');
//  if ((Pos(Trim(MaskEdit2.Text),'999999|999997|999996|999995|999994|999993') <> 0) or (Trim(ComboBoxCliFor.Text) = 'F')) then
//     begin
//      if Trim(DMIB.IBQueryParametros.FieldByName('GERA_EMBARQUE_999').AsString) = 'N' then
//          IBQ5.SQL.Add(',EMBARQUE=:EMBARQUE, SEQUENCIA=:SEQUENCIA');
//      if (Pos(Trim(MaskEdit2.Text),'999996|999997') <> 0)  then
//          IBQ5.SQL.Add(',DATA_BASE_APARAS=:DATA_BASE_APARAS');
//     end;
//
//  IBQ5.SQL.Add('Where NRNF     = ''' + MaskEdit1.Text + ''' ');
//  IBQ5.SQL.Add('and NR_EMPRESA = ''' +TRIM(ComboBoxEmpresa.Text) + ''' ');
//  if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//     IBQ5.SQL.Add('and NF.SERIE=''1''')
//  else
//     IBQ5.SQL.Add('and NF.SERIE=''0''');
//  IBQ5.ParamByName('VLTOTNF').AsFloat            := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//  IBQ5.ParamByName('VLTOTMER').AsFloat           := StrToFloatDef(MaskEditVLTOTMER.Text,0);
//  IBQ5.ParamByName('PESOLIQT').AsFloat           := StrToFloatDef(MaskEditPESOLIQT.Text,0);
//  IBQ5.ParamByName('PESOBRUT').AsFloat           := StrToFloatDef(MaskEditPESOBRUT.Text,0);
//  IBQ5.ParamByName('QUANTIDA').AsFloat           := StrToFloatDef(MaskEditNFQUANTIDA.Text,0);
//  IBQ5.ParamByName('VLDESC').AsFloat             := 0;
//  IBQ5.ParamByName('VLTOTICMS').AsFloat          := StrToFloatDef(MaskEditVLTOTICMS.Text,0);
//  IBQ5.ParamByName('BASEICMS').AsFloat           := StrToFloatDef(MaskEditBASEICMS.Text,0);
//  IBQ5.ParamByName('VALOR_DIFERIMENTO').AsFloat  :=StrToFloatDef(MaskEditDiferimento.Text,0);
//  IBQ5.ParamByName('BASEIPI').AsFloat            := StrToFloatDef(MaskEditBASEIPI.Text,0);
//  IBQ5.ParamByName('PCICMS').AsFloat             := 0; // StrToFloatDef(MaskEditICM.Text,0);
//  IBQ5.ParamByName('VLTOTIPI').AsFloat           := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//  IBQ5.ParamByName('VALOR_TOTAL_PIS').AsFloat    := StrToFloatDef(MaskEditVLTOTPIS.Text,0);
//  IBQ5.ParamByName('VALOR_TOTAL_COFINS').AsFloat := StrToFloatDef(MaskEditVLTOTCOFINS.Text,0);
//  IBQ5.ParamByName('VLTOTFRE').AsFloat           := StrToFloatDef(MaskEdit36.Text,0);
//  IBQ5.ParamByName('VLCOMIS').AsFloat            := StrToFloatDef(MaskEdit37.Text,0);
//  IBQ5.ParamByName('ICMSFRETE').AsFloat          := StrToFloatDef(MaskEditICMSFRETE.Text,0);
//  IBQ5.ParamByName('VLTOTISS').AsFloat           := StrToFloatDef(MaskEditVLTOTISS.Text,0);
//  IBQ5.ParamByName('RESULTADO_NFE').AsString     := '';
//  IBQ5.ParamByName('CST_IPI').AsString           := TRIM(MaskEditI_S_T.Text);
//  IBQ5.ParamByName('ENQUADRAMENTO_IPI').AsString := TRIM(MaskEditENQUADRAMENTO_IPI.Text);
//
//  if VARBASERED = 100 Then
//     IBQ5.ParamByName('OBS_FISCAL').AsString := MaskEditObservacaoFiscal.Text
//  else
//     IBQ5.ParamByName('OBS_FISCAL').AsString := 'DIFERIMENTO PARCIAL DE: ' + FormatFloat('R$ #,###,###,##0.00', StrToFloatDef(MaskEditDiferimento.Text,0))+ ' ' + MaskEditObservacaoFiscal.Text;
//  IBQ5.ParamByName('LIBERA_FRETE').AsString := '';
//  if ((Pos(Trim(MaskEdit2.Text),'999999|999997|999996|999995|999994|999993') <> 0) or (Trim(ComboBoxCliFor.Text) = 'F')) then
//      begin
//       if Trim(DMIB.IBQueryParametros.FieldByName('GERA_EMBARQUE_999').AsString) = 'N' then
//          begin
//           if (Trim(MaskEdit9.Text) <> '5915') and (Trim(MaskEditCodigoCli_For.Text) <> '10135') then
//              begin
//               IBQ5.ParamByName('EMBARQUE').AsFloat  := 1;
//               IBQ5.ParamByName('SEQUENCIA').AsFloat := 1;
//              end;
//           if (Pos(Trim(MaskEdit2.Text),'999996') <> 0)  then
//              IBQ5.ParamByName('DATA_BASE_APARAS').AsDateTime:= StrToDate(JvDateEdit2.Text);
//          end;
//      end;
//  IBQ5.ExecSQL;
//  {$ENDREGION}
//
//  BitBtnInclusao.Enabled := False;
//
//  {$REGION 'Verifica novamente se a CFOP vai ter duplicatas ou não'}
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('Select First 1 GERADUP FROM NATUOPE');
//  IBQ1.SQL.Add('Where CDNATOPE = ''' + MaskEdit9.Text + '''');
//  IBQ1.Active := True;
//  If IBQ1.FieldByName('GERADUP').AsString = 'S' then
//   VARCRIADUPLICATA := 'S';
//  {$ENDREGION}
//
//  if (Pos(Trim(MaskEdit2.Text),'999994|999995|999996|999999') <> 0) or (VARCRIADUPLICATA = 'N') then
//      begin
//
//       {$REGION 'Incluir Nf no Controle de Aparas'}
//       if (MaskEdit2.Text = '999996') Then
//          begin
//            IBQ5.Active := False;
//            IBQ5.SQL.Clear;
//            IBQ5.SQL.Add('Insert INTO REMESSAS_APARAS (NRNF, PESO, LANCADA_EM, LANCADA_POR, SERIE, NR_EMPRESA, TPDOCTO)');
//            IBQ5.SQL.Add('VALUES (:NRNF, :PESO, :LANCADA_EM, :LANCADA_POR, :SERIE, :NR_EMPRESA, :TPDOCTO)');
//            IBQ5.ParamByName('NRNF').AsFloat          := StrToFloatDef(MaskEdit1.Text,0);
//            IBQ5.ParamByName('PESO').AsFloat          := 0;
//            IBQ5.ParamByName('LANCADA_EM').AsDateTime := JvDateEdit2.Date;
//            IBQ5.ParamByName('LANCADA_POR').AsString  := TrazNOMEUSUARIO;
//            If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//              IBQ5.ParamByName('SERIE').AsFloat := 1
//            Else
//              IBQ5.ParamByName('SERIE').AsFloat := 0;
//            IBQ5.ParamByName('NR_EMPRESA').AsFloat :=StrToFloatDef(ComboBoxEmpresa.Text,0);
//            IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//            IBQ5.ExecSQL;
//          end;
//       {$ENDREGION}
//
//       Application.MessageBox(PWideChar('NOTA INCLUÍDA COM SUCESSO (SEM DUPLICATAS). Nº DA NF: '+MaskEdit1.Text), 'Aviso', mb_OK);
//       IBT5.Commit;
//       BitBtnImprimir.Enabled := True;
//       If DMIB.IBQueryDireitos.FieldByName('IDD').AsString = 'X' then
//          IDD.Enabled := True;
//      end
//  else
//      begin
//       {$REGION 'Checagem do Valor minimo para desdobramento de duplicatas'}
//       If DMIB.IBQueryParametros.FieldByName('MIN_DUPL_DESD').AsFloat > 0 Then// Travar valor minimo p/ desdobramento de duplicata
//          If Qtddupli > 1 then
//             If StrToFloatDef(MaskEditVLTOTNF.Text,0)<DMIB.IBQueryParametros.FieldByName('MIN_DUPL_DESD').AsFloat then
//                Begin
//                 If TRIM(MaskEditLibera_Duplicata.Text) <> 'S' Then
//                    Begin
//                     Qtddupli := 1;
//                     Application.MessageBox(PWideChar('ATENÇÃO: NÃO É PERMITIDO DESDOBRAR DUPLICATAS C/ VALOR ABAIXO DE R$'+ FormatFloat('#,###,##0.00',DMIB.IBQueryParametros.FieldByName('MIN_DUPL_DESD').AsFloat) +' SERÁ GERADA UMA ÚNICA DUPLICATA.'), 'Aviso', mb_OK);
//                    End;
//                End;
//       {$ENDREGION}
//
//       {$REGION 'Inclui Nf no Controle de Aparas '}
//       If (MaskEdit2.Text = '999997') Then
//           Begin
//            IBQ5.Active := False;
//            IBQ5.SQL.Clear;
//            IBQ5.SQL.Add('Insert INTO REMESSAS_APARAS (NRNF, SERIE, PESO, LANCADA_EM, LANCADA_POR, NR_EMPRESA, TPDOCTO)');
//            IBQ5.SQL.Add('VALUES (:NRNF, :SERIE, :PESO, :LANCADA_EM, :LANCADA_POR, :NR_EMPRESA, :TPDOCTO)');
//            IBQ5.ParamByName('NRNF').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//            If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//              IBQ5.ParamByName('SERIE').AsFloat       := 1
//            Else
//              IBQ5.ParamByName('SERIE').AsFloat       := 0;
//            IBQ5.ParamByName('PESO').AsFloat          := StrToFloatDef(MaskEditPESOLIQT.Text,0);
//            IBQ5.ParamByName('LANCADA_EM').AsDateTime := JvDateEdit2.Date;
//            IBQ5.ParamByName('LANCADA_POR').AsString  := TrazNOMEUSUARIO;
//            IBQ5.ParamByName('NR_EMPRESA').AsFloat    := StrToFloatDef(ComboBoxEmpresa.Text,0);
//            IBQ5.ParamByName('TPDOCTO').AsString      := 'NF';
//            IBQ5.ExecSQL;
//           End;
//       {$ENDREGION}
//
//       {$REGION 'Inclusao de Duplicatas'}
//       {$REGION 'Insere Duplicatas com 1 Parcela'}
//      If Qtddupli = 1 then
//         Begin
//          IBQ5.Active := False;
//          IBQ5.SQL.Clear;
//          IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//          IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS) ');
//          IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//          IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//          IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//          IBQ5.ParamByName('SEQUEN').AsString     := '1';
//          IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//          If TRIM(MaskEditPORTADORE.Text) = '' Then
//             Begin
//              IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//              IBQ5.ParamByName('PORTADOR').AsFloat          := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//             End
//          Else
//             Begin
//              IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//              IBQ5.ParamByName('PORTADOR').AsFloat          := StrToFloatDef(MaskEditPORTADORE.Text,0);
//             End;
//          IBQ5.ParamByName('DTEMISNF').AsDateTime  := StrToDate(JvDateEdit1.Text);
//          // Acerto da Data de Vencimento por dia da Semana
//          JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//          If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//             Begin
//              If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                 Begin
//                  While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                        Begin
//                         JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                        End;
//                 End;
//             End;
//          // rotina para dia q não pode cair
//          VerificaBloqueiaVenc;
//          IBQ5.ParamByName('DTVENC').AsDateTime        := StrToDate(JvDateEditV1.Text);
//          IBQ5.ParamByName('VLDOCTO').AsFloat          := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//          IBQ5.ParamByName('VLTOTNF').AsFloat          := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//          IBQ5.ParamByName('INCLUIDAPOR').AsString     := TrazNOMEUSUARIO;
//          IBQ5.ParamByName('BAIXADOPOR').AsString      := '';
//          IBQ5.ParamByName('VALOR_IPI').AsFloat        := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//          If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//             IBQ5.ParamByName('SERIE').AsFloat         := 1
//          Else
//             IBQ5.ParamByName('SERIE').AsFloat         := 0;
//          IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//          // Desconto Padrão
//          If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//             IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//          Else
//             IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (StrToFloatDef(MaskEditVLTOTNF.Text,0) * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//          IBQ5.ParamByName('CDCONDPG').AsFloat           := StrToFloatDef(MaskEdit8.Text, 0);
//          IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//          IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '1';
//          IBQ5.ExecSQL;
//         End;
//      {$ENDREGION}
//
//       {$REGION 'Insere Duplicatas com 2 Parcela'}
//      {$REGION ' Insere Duplicatas com 2 Parcela com IPI total na 1 Parcela'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'T' Then
//         Begin
//          If Qtddupli = 2 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 2 +StrToFloatDef(MaskEditVLTOTIPI.Text,0)),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 2),0);
//              AT := A1 + A2;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                 A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                 A1 := A1 - 0.01;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat :=StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime          := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat            := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat            := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString       := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString        := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat          := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat           := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '2';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat  := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString  := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat:= StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime   := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat     := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat     := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString:= TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat   := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat           :=StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '2';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com 2 Parcela com 60% e 40%'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'P' Then
//         Begin
//          If Qtddupli = 2 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTNF.Text,0)) *0.6),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTNF.Text,0)) *0.4),0);
//              AT := A1 + A2;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                 A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                 A1 := A1 - 0.01;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat :=StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime   := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat     := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat     := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString:= TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString        := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat          := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat           := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '2';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat  := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString  := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat:= StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime          := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat            := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat            := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString       := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString        := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat          := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                 IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat           :=StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '2';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com IPI Divido nas Parcelas'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'D' Then
//         Begin
//          If Qtddupli = 2 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 2),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) +StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 2),0);
//              AT := A1 + A2;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL,  DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 2;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                Begin
//                 IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                End
//              Else
//                Begin
//                 IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat            := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat            := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString       := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString        := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat          := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 2;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat         := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // Desconto Padrão
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat  := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat  := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat           := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString          := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '2';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//      {$ENDREGION}
//
//       {$REGION 'Insere Duplicatas com 3 Parcela'}
//
//      {$REGION ' Insere Duplicatas com 3 Parcela com IPI total na 1 Parcela'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'T' Then
//         Begin
//          If Qtddupli = 3 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00', (StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 3 + StrToFloatDef(MaskEditVLTOTIPI.Text,0)),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00', (StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 3),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00', (StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 3),0);
//              AT := A1 + A2 + A3;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString := '3';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat     := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '3';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '3';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com IPI Divido nas Parcelas'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'D' Then
//         Begin
//          If Qtddupli = 3 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 3),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 3),0);
//              A3 := StrToFloatDEf(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 3),0);
//              AT := A1 + A2 + A3;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                 A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                 A1 := A1 - 0.01;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString   := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat    := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString    := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat  := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                Begin
//                 IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime:= StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 3;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat     := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat     := 0;
//               IBQ5.ParamByName('NR_EMPRESA').AsFloat  := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '3';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat:= StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat        := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              // rotina para dia q não pode cair
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 3;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '3';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString   := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat    := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString    := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat  := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime:= StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 3;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat :=StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '3';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$ENDREGION}
//
//       {$REGION 'Insere Duplicatas com 4 Parcela'}
//
//      {$REGION ' Insere Duplicatas com 4 Parcela com IPI total na 1 Parcela'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'T' Then
//         Begin
//          If Qtddupli = 4 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 4 +StrToFloatDef(MaskEditVLTOTIPI.Text,0)),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 4),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 4),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 4),0);
//              AT := A1 + A2 + A3 + A4;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                 Begin
//                  A1 := A1 + 0.01;
//                  AT := AT + 0.01;
//                 End;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                 Begin
//                  A1 := A1 - 0.01;
//                  AT := AT - 0.01;
//                 End;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//                 Begin
//                  If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                     A1 := A1 + 0.01;
//                  If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                     A1 := A1 - 0.01;
//                 End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat     := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat      := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat  := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString  := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat:= StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat :=StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime :=  StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com IPI Divido nas Parcelas'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'D' Then
//         Begin
//          If Qtddupli = 4 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 4),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 4),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 4),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) +StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 4),0);
//              AT := A1 + A2 + A3 + A4;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//              Begin
//                If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                  A1 := A1 + 0.01;
//                If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                  A1 := A1 - 0.01;
//              End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime :=
//                StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 4;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 4;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 4;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 4;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '4';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$ENDREGION}
//
//       {$REGION 'Insere Duplicatas com 5 Parcela'}
//
//      {$REGION ' Insere Duplicatas com 5 Parcela com IPI total na 1 Parcela'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'T' Then
//         Begin
//          If Qtddupli = 5 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 5 + StrToFloatDef(MaskEditVLTOTIPI.Text,0)),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 5),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 5),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 5),0);
//              A5 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 5),0);
//              AT := A1 + A2 + A3 + A4 + A5;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                 A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                  A1 := A1 - 0.01;
//              AT := A1 + A2 + A3 + A4 + A5;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//                 Begin
//                  If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                     A1 := A1 + 0.01;
//                  If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                     A1 := A1 - 0.01;
//                 End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          :=  StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text :=  DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <>  UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat  := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString  := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat:= StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat  := StrToFloatDef(MaskEdit8.Text,0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '5';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PPORTADOR_INICIAL').AsFloat:= StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + DT5);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV5.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV5.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV5.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A5;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A5 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com 5 Parcelas com IPI Divido nas Parcelas'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'D' Then
//         Begin
//          If Qtddupli = 5 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 5),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 5),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 5),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) +StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 5),0);
//              A5 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 5),0);
//              AT := A1 + A2 + A3 + A4 + A5;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              AT := A1 + A2 + A3 + A4 + A5;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00', StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//                 Begin
//                  If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                     A1 := A1 + 0.01;
//                  If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                     A1 := A1 - 0.01;
//                 End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 5;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 5;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat          := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime        := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat          := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat          := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString     := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString      := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat        := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 5;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 5;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString   := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat    := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString    := '5';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat  := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + DT5);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV5.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV5.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV5.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A5;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 5;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A5 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '5';
//              IBQ5.ExecSQL;
//             End;
//         End;
//      {$ENDREGION}
//
//      {$ENDREGION}
//
//       {$REGION 'Insere Duplicatas com 6 Parcela'}
//
//      {$REGION ' Insere Duplicatas com 6 Parcelas com IPI Divido nas Parcelas'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'D' Then
//         Begin
//          If Qtddupli = 6 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              A5 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              A6 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0) + StrToFloatDef(MaskEditVLTOTIPI.Text,0)) / 6),0);
//              AT := A1 + A2 + A3 + A4 + A5 + A6;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//              Begin
//                If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                  A1 := A1 + 0.01;
//                If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                  A1 := A1 - 0.01;
//              End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0);
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                   If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                      Begin
//                       While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                             Begin
//                              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                             End;
//                      End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//              Begin
//                If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                Begin
//                  While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                  Begin
//                    JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                  End;
//                End;
//              End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              // DESCONTO PADRAO
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat         := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '5';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + DT5);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV5.Text) + DT5))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV5.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV5.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A5;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A5 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '6';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat :=  StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV6.Text := DateToStr(StrToDate(JvDateEditV6.Text) + DT6);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV6.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV6.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV6.Text := DateToStr(StrToDate(JvDateEditV6.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV6.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A6;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := 0;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                 IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                 IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A6 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//            End;
//         End;
//      {$ENDREGION}
//
//      {$REGION ' Insere Duplicatas com 5 Parcela com IPI total na 1 Parcela'}
//      If TRIM(MaskEditIPI_TIPO.Text) = 'T' Then
//         Begin
//          If Qtddupli = 6 then
//             Begin
//              A1 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6 +StrToFloatDef(MaskEditVLTOTIPI.Text,0)),0);
//              A2 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6),0);
//              A3 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6),0);
//              A4 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6),0);
//              A5 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6),0);
//              A6 := StrToFloatDef(FormatFloat('###########0.00',(StrToFloatDef(MaskEditVLTOTMER.Text,0)) / 6),0);
//              AT := A1 + A2 + A3 + A4 + A5 + A6;
//              If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                A1 := A1 + 0.01;
//              If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                A1 := A1 - 0.01;
//              If AT <> StrToFloatDef(FormatFloat('###########0.00',StrToFloatDef(MaskEditVLTOTNF.Text,0)),0) then // correção de 2 centavos
//              Begin
//                If AT < StrToFloatDef(MaskEditVLTOTNF.Text,0) - 0.001 then
//                  A1 := A1 + 0.01;
//                If AT > StrToFloatDef(MaskEditVLTOTNF.Text,0) + 0.001 then
//                  A1 := A1 - 0.01;
//              End;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '1';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat  := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                 IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 IBQ5.ParamByName('PORTADOR').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + DT1);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV1.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV1.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV1.Text := DateToStr(StrToDate(JvDateEditV1.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV1.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A1;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A1 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString    := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat     := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString     := '2';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat   := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat  := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat  := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + DT2);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV2.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV2.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV2.Text := DateToStr(StrToDate(JvDateEditV2.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditV2.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A2;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A2 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString  := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat   := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString   := '3';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0) // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + DT3);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditv3.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditv3.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditv3.Text := DateToStr(StrToDate(JvDateEditv3.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime := StrToDate(JvDateEditv3.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat := A3;
//              IBQ5.ParamByName('VLTOTNF').AsFloat := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A3 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '4';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + DT4);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV4.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV4.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV4.Text := DateToStr(StrToDate(JvDateEditV4.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV4.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat      := A4;
//              IBQ5.ParamByName('VLTOTNF').AsFloat      := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString  := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat    := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := (A4 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '5';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + DT5);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV5.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV5.Text))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV5.Text := DateToStr(StrToDate(JvDateEditV5.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime         := StrToDate(JvDateEditV5.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A5;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A5 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//              IBQ5.Active := False;
//              IBQ5.SQL.Clear;
//              IBQ5.SQL.Add('insert into DUPLICAT (TPDOCTO, NRDOCTO, SEQUEN, CDCLIENTE, PORTADOR, PORTADOR_INICIAL, DTEMIS, DTVENC, VLDOCTO, VLTOTNF, VLBAIXAP, VLJUROS, INCLUIDAPOR, PCDESC, VLDESC, BAIXADOPOR,');
//              IBQ5.SQL.Add('VALOR_IPI, SERIE, DESCONTO_PADRAO, NR_EMPRESA, CDCONDPG, NMCONDPG, NR_DE_VENCIMENTOS)');
//              IBQ5.SQL.Add('values (:TPDOCTO, :NRDOCTO, :SEQUEN, :CDCLIENTE, :PORTADOR, :PORTADOR_INICIAL, :DTEMISNF, :DTVENC, :VLDOCTO, :VLTOTNF, 0, 0, :INCLUIDAPOR, 0, 0, :BAIXADOPOR, :VALOR_IPI, :SERIE, :DESCONTO_PADRAO, :NR_EMPRESA, :CDCONDPG, :NMCONDPG, :NR_DE_VENCIMENTOS)');
//              IBQ5.ParamByName('TPDOCTO').AsString := 'NF';
//              IBQ5.ParamByName('NRDOCTO').AsFloat  := StrToFloatDef(MaskEdit1.Text,0);
//              IBQ5.ParamByName('SEQUEN').AsString := '6';
//              IBQ5.ParamByName('CDCLIENTE').AsFloat := StrToFloatDef(MaskEditCodigoCli_For.Text,0);
//              If TRIM(MaskEditPORTADORE.Text) = '' Then
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(ComboBoxPortador.Text,0); // 101
//                 End
//              Else
//                 Begin
//                  IBQ5.ParamByName('PORTADOR_INICIAL').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                  IBQ5.ParamByName('PORTADOR').AsFloat := StrToFloatDef(MaskEditPORTADORE.Text,0);
//                 End;
//              IBQ5.ParamByName('DTEMISNF').AsDateTime := StrToDate(JvDateEdit1.Text);
//              // Acerto da Data de Vencimento por dia da Semana
//              JvDateEditV6.Text := DateToStr(StrToDate(JvDateEditV6.Text) + DT6);
//              If TRIM(MaskEditVENCIMENTO.Text) <> '' Then
//                 Begin
//                  If (UPPERCASE(DiaExtenso((StrToDate(JvDateEditV6.Text)))) <> UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) Then
//                     Begin
//                      While (UPPERCASE(DiaExtenso(StrToDate(JvDateEditV6.Text))) <>UPPERCASE(TRIM(MaskEditVENCIMENTO.Text))) do
//                            Begin
//                             JvDateEditV6.Text := DateToStr(StrToDate(JvDateEditV6.Text) + 1);
//                            End;
//                     End;
//                 End;
//              VerificaBloqueiaVenc;
//              IBQ5.ParamByName('DTVENC').AsDateTime    := StrToDate(JvDateEditV6.Text);
//              IBQ5.ParamByName('VLDOCTO').AsFloat           := A6;
//              IBQ5.ParamByName('VLTOTNF').AsFloat           := StrToFloatDef(MaskEditVLTOTNF.Text,0);
//              IBQ5.ParamByName('INCLUIDAPOR').AsString      := TrazNOMEUSUARIO;
//              IBQ5.ParamByName('BAIXADOPOR').AsString       := '';
//              IBQ5.ParamByName('VALOR_IPI').AsFloat         := StrToFloatDef(MaskEditVLTOTIPI.Text,0) / 6;
//              If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//                IBQ5.ParamByName('SERIE').AsFloat           := 1
//              Else
//                IBQ5.ParamByName('SERIE').AsFloat           := 0;
//              IBQ5.ParamByName('NR_EMPRESA').AsFloat        := StrToFloatDef(ComboBoxEmpresa.Text,0);
//              // DESCONTO PADRAO
//              If TRIM(MaskEditDESCONTO_PADRAO.Text) = '0' Then
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat := 0
//              Else
//                IBQ5.ParamByName('DESCONTO_PADRAO').AsFloat :=(A6 * StrToFloatDef(MaskEditDESCONTO_PADRAO.Text,0)) / 100;
//              IBQ5.ParamByName('CDCONDPG').AsFloat          := StrToFloatDef(MaskEdit8.Text, 0);
//              IBQ5.ParamByName('NMCONDPG').AsString         := TRIM(MaskEditCondpg.Text);
//              IBQ5.ParamByName('NR_DE_VENCIMENTOS').AsString:= '6';
//              IBQ5.ExecSQL;
//             End;
//            IBQ5.Active := False;
//         End;
//      {$ENDREGION}
//
//      {$ENDREGION}
//
//       VARDUPINCLUIDA := 'SIM';
//       {$ENDREGION}
//
//       {$REGION 'Colocar o Numero da Nota de Entrada na NF de Saida'}
//       if (MaskEdit9.Text = '1201') and (ComboBoxCliFor.Text='C') then
//         begin
//           IBQ5.Active := False;
//           IBQ5.SQL.Clear;
//           IBQ5.SQL.Add('update nf set nf_entrada=:nf_entrada ');
//           IBQ5.SQL.Add('Where NRNF     = ''' +MaskeditREFNF.Text+ ''' ');
//           if Trim(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' then
//             IBQ5.SQL.Add('and NF.SERIE=''1''')
//           else
//             IBQ5.SQL.Add('and NF.SERIE=''0''');
//           IBQ5.ParamByName('NF_ENTRADA').AsString := Trim(Maskedit1.Text);
//           IBQ5.ExecSQL;
//         end;
//       {$ENDREGION}
//
//       IBT5.Commit;
//       BitBtnImprimir.Enabled := True;
//       if DMIB.IBQueryDireitos.FieldByName('IDD').AsString = 'X' then
//         IDD.Enabled := True;
//       Application.MessageBox(PWideChar('NOTA E DUPLICATAS INCLUÍDA COM SUCESSO. Nº DA NF: ' +MaskEdit1.Text), 'Aviso', mb_OK);
//      end; // (end do 999999)
// except
//  on E: Exception do
//     begin
//      IBT5.Rollback;
//      if Application.MessageBox(PWideChar('ERRO NA GRAVAÇÃO, DESEJA TENTAR GRAVAR NOVAMENTE?' + #13 +'Cód do erro: ' + E.MESSAGE), 'Aviso',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//         BitBtnImprimir.SetFocus;
//     end;
// end;
end;

procedure TTelaNF.MaskEdit23Exit(Sender: TObject);
begin
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsFloat(MaskEdit23.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEdit23.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
end;

procedure TTelaNF.ComboBoxUnidadeExit(Sender: TObject);
begin
// if Pos(Trim(ComboBoxUnidade.Text),'PC|SV|MT|CT|TN|KG|LT') = 0 then
//    ComboBoxUnidade.SetFocus;
end;

procedure TTelaNF.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
// If Key = VK_F2 then
//    If GroupBox1.Enabled = True then
//       Begin
//        ConsultaTransportadora := TConsultaTransportadora.Create(Application);
//        ConsultaTransportadora.ShowModal;
//        if Application.MessageBox('DESEJA ATUALIZAR O CÓDIGO DA TRANSPORTADORA?','PERGUNTA', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//           MaskEdit10.Text := ConsultaTransportadora.IBQ1.FieldByName('CDTRANSP').AsString;
//        FreeAndNil(ConsultaTransportadora);
//        Application.OnHint := ShowHint;
//        MaskEdit10.SetFocus;
//       End;
// If Key = VK_F3 then
//    If GroupBox1.Enabled = True then
//       Begin
//        ConsultaNatOp := TConsultaNatOp.Create(Application);
//        If MaskEdit9.Text <> '' then
//           Begin
//            ConsultaNatOp.MaskEdit1.Text:= MaskEdit9.Text;
//            ConsultaNatOp.RadioGroup1.ItemIndex:=1;
//           End
//        else
//           ConsultaNatOp.BitBtnGeral.Click;
//        ConsultaNatOp.ShowModal;
//        if Application.MessageBox('DESEJA ATUALIZAR O CÓDIGO DA NATUREZA DE OREPAÇÃO?', 'PERGUNTA',mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//           MaskEdit9.Text := ConsultaNatOp.IBQ1.FieldByName('CDNATOPE').AsString;
//        MaskEdit9.SetFocus;
//        FreeAndNil(ConsultaNatOp);
//        Application.OnHint := ShowHint;
//       End;
// If Key = VK_F4 then
//    Begin
//     ConsultaClasfis := TConsultaClasfis.Create(Application);
//     ConsultaClasfis.ShowModal;
//     if Application.MessageBox('DESEJA ATUALIZAR A CLASSIFICAÇÃO FISCAL?','PERGUNTA', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//        MaskEdit26.Text := ConsultaClasfis.IBQ1.FieldByName('IDCLASS').AsString;
//     FreeAndNil(ConsultaClasfis);
//     Application.OnHint := ShowHint;
//    End;
// If Key = VK_F5 then
//    If GroupBox1.Enabled = True then
//       Begin
//        ConsultaCondPgto := TConsultaCondPgto.Create(Application);
//        ConsultaCondPgto.ShowModal;
//         If MaskEdit8.Text <> '' then
//            ConsultaCondPgto.MaskEdit1.Text:= MaskEdit8.text;
//        if Application.MessageBox('DESEJA ATUALIZAR A CONDIÇÃO DE PAGAMENTO?','PERGUNTA', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//           MaskEdit8.Text := ConsultaCondPgto.IBQ1.FieldByName('CDCONDPG').AsString;
//        MaskEdit8.SetFocus;
//        FreeAndNil(ConsultaCondPgto);
//        Application.OnHint := ShowHint;
//       End;
// If Key = VK_F6 then
//    Begin
//     ConsultaObservacaoFiscal := TConsultaObservacaoFiscal.Create(Application);
//     ConsultaObservacaoFiscal.ShowModal;
//     if Application.MessageBox('DESEJA ATUALIZAR A OBSERVAÇÃO FISCAL?','Pergunta', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//        MaskEdit12.Text := TRIM(ConsultaObservacaoFiscal.IBQ1.FieldByName('CDOBSFIS').AsString);
//     FreeAndNil(ConsultaObservacaoFiscal);
//     Application.OnHint := ShowHint;
//    End;
// If Key = VK_F7 then
//    Begin
//     ConsultaBenefis := TConsultaBenefis.Create(Application);
//     If MaskEdit27.Text <> '' then
//       ConsultaBenefis.IBQ1.Locate('CDBENEF', MaskEdit27.Text, []);
//     ConsultaBenefis.ShowModal;
//     if Application.MessageBox('DESEJA ATUALIZAR O BENEFÍCIO FISCAL?','PERGUNTA', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//        MaskEdit27.Text := TRIM(ConsultaBenefis.IBQ1.FieldByName('CDBENEF').AsString);
//     FreeAndNil(ConsultaBenefis);
//     Application.OnHint := ShowHint;
//    End;
// If Key = VK_F8 then
//    Begin
//     If GroupBox1.Enabled = True then
//        Begin
//         ConsultaClientes := TConsultaClientes.Create(Application);
//         ConsultaClientes.ShowModal;
//         MaskEditCodigoCli_For.Text := ConsultaClientes.IBQ1.FieldByName('CDCLIENTE').AsString;
//         MaskEditNomeCli.Text := ConsultaClientes.IBQ1.FieldByName('NOME').AsString;
//         FreeAndNil(ConsultaClientes);
//         Application.OnHint := ShowHint;
//         MaskEditCodigoCli_For.SetFocus;
//        End;
//    End;
// if Key = VK_F9 then
//    Begin
//     ConsultaFornecedores := TConsultaFornecedores.Create(Application);
//     ConsultaFornecedores.ShowModal;
//     FreeAndNil(ConsultaFornecedores);
//     Application.OnHint := ShowHint;
//    End;
// if Key = VK_F10 then
//    Begin
//     ConsultaTributaria := TConsultaTributaria.Create(Application);
//     ConsultaTributaria.ShowModal;
//     FreeAndNil(ConsultaTributaria);
//     Application.OnHint := ShowHint;
//    End;
// if Key = VK_F11 then
//    Begin
//     ConsultaCarga := TConsultaCarga.Create(Application);
//     ConsultaCarga.ShowModal;
//     FreeAndNil(ConsultaCarga);
//     Application.OnHint := ShowHint;
//    End;
end;

procedure TTelaNF.MaskEdit19Enter(Sender: TObject);
begin
// If (ComboBoxBaixa.Text = 'P') and (VARCARGAQUANTIDADE <= 0) then
//    Application.MessageBox('ATENÇÃO: ESTA BAIXA ESTÁ ZERANDO ESTE PEDIDO NA CARGA.','Aviso', mb_OK);
end;

procedure TTelaNF.MaskEdit12KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditICMSFRETEKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditVLTOTFREExit(Sender: TObject);
begin
// If MaskEditVLTOTFRE.Text = '' then
//    MaskEditVLTOTFRE.Text := '0,00';
// MaskEditVLTOTFRE.Text := FormatFloat('#########0.00',StrToFloatDef(MaskEditVLTOTFRE.Text,0));
// If (StrToFloatDef(MaskEditPCFRETE.Text,0) > 0) and (StrToFloatDef(MaskEditVLTOTFRE.Text,0) > 0) then
//    Begin
//     MaskEditVLTOTFRE.SetFocus;
//     Application.MessageBox('ATENÇÃO: VALOR INCOMPATÍVEL COM A PORCENTAGEM.','Aviso', mb_OK);
//    End;
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select First 1 CDTRANSP, ICMSOUTRES from TRANSPOR');
// IBQ1.SQL.Add('Where CDTRANSP = ''' + MaskEdit10.Text + '''');
// IBQ1.Active := True;
// If IBQ1.IsEmpty then
//     MaskEdit10.SetFocus
// Else
// If TRIM(IBQ1.FieldByName('ICMSOUTRES').AsString) = 'S' then
//    Begin
//     Application.MessageBox('ATENÇÃO: SERÁ RETIDO ICMS SOBRE O FRETE PARA ESTA TRANSPORTADORA.','Aviso', mb_OK);
//     MaskEditICMSFRETE.Text := FormatFloat('#########0.00',(StrToFloatDef(LabelICMORIGINAL.Caption,0) *StrToFloatDef(MaskEditVLTOTFRE.Text,0) / 100));
//    end;
// MaskEdit36.Text := MaskEditVLTOTFRE.Text;
end;

procedure TTelaNF.MaskEditVLTOTFREKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #44, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.MaskEditPCFRETEExit(Sender: TObject);
begin
// If MaskEditPCFRETE.Text = '' then
//    MaskEditPCFRETE.Text := '0';
end;

procedure TTelaNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// If BitBtnInclusao.Enabled = True then
//    if Application.MessageBox('TEM CERTEZA QUE DESEJA SAIR SEM CONCLUÍR A NF?','Pergunta', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//       Close
//    Else
//      Abort;
end;

procedure TTelaNF.MaskEdit1Exit(Sender: TObject);
begin
// If BitBtnAlteracao.Visible = True then
//    Begin
//     IBQ1.Active := False;
//     IBQ1.SQL.Clear;
//     IBQ1.SQL.Add('Select First 1 * from NF');
//     IBQ1.SQL.Add('Where NRNF = ''' + MaskEdit1.Text + ''' ');
//     IBQ1.Active := True;
//     If IBQ1.IsEmpty then
//        Begin
//         Application.MessageBox('ATENÇÃO: NOTA NÃO INEXISTENTE, FAVOR VERIFICAR.','Aviso', mb_OK);
//         MaskEdit1.SetFocus;
//         GroupBox1.Enabled := True;
//         BitBtnAlteracao.Enabled := False;
//        End
//     Else
//        Begin
//         JvDateEdit1.Text           := TRIM(IBQ1.FieldByName('DTEMISNF').AsString);
//         JvDateEdit2.Text           := TRIM(IBQ1.FieldByName('DTSAIDA').AsString);
//         MaskEdit2.Text             := TRIM(IBQ1.FieldByName('NRPEDIDO').AsString);
//         MaskEditCodigoCli_For.Text := TRIM(IBQ1.FieldByName('CDCLIENTE').AsString);
//         ComboBoxEspecie.Text       := TRIM(IBQ1.FieldByName('ESPECIE').AsString);
//         MaskEdit8.Text             := TRIM(IBQ1.FieldByName('CDCONDPG').AsString);
//         MaskEdit10.Text            := TRIM(IBQ1.FieldByName('CDTRANSP').AsString);
//         MaskEdit9.Text             := TRIM(IBQ1.FieldByName('CDNATOPE').AsString);
//         ComboBoxFatura.Text        := TRIM(IBQ1.FieldByName('FATURA').AsString);
//         ComboBoxFrete.Text         := TRIM(IBQ1.FieldByName('FRETEC').AsString);
//         MaskEditPCFRETE.Text       := TRIM(IBQ1.FieldByName('PCFRETE').AsString);
//         MaskEdit12.Text            := TRIM(IBQ1.FieldByName('CDOBSFIS').AsString);
//         MaskEditCDVENDED.Text      := TRIM(IBQ1.FieldByName('CDVENDED').AsString);
//         MaskEditVLTOTNF.Text       := TRIM(IBQ1.FieldByName('VLTOTNF').AsString);
//         MaskEditVLTOTMER.Text      := TRIM(IBQ1.FieldByName('VLTOTMER').AsString);
//         MaskEditPESOLIQT.Text      := TRIM(IBQ1.FieldByName('PESOLIQT').AsString);
//         MaskEditPESOBRUT.Text      := TRIM(IBQ1.FieldByName('PESOBRUT').AsString);
//         MaskEditNFQUANTIDA.Text    := TRIM(IBQ1.FieldByName('QUANTIDA').AsString);
//         MaskEditVLTOTICMS.Text     := TRIM(IBQ1.FieldByName('VLTOTICMS').AsString);
//         MaskEditBASEICMS.Text      := TRIM(IBQ1.FieldByName('BASEICMS').AsString);
//         MaskEditBASEIPI.Text       := TRIM(IBQ1.FieldByName('BASEIPI').AsString);
//         MaskEditICM.Text           := TRIM(IBQ1.FieldByName('PCICMS').AsString);
//         MaskEditVLTOTIPI.Text      := TRIM(IBQ1.FieldByName('VLTOTIPI').AsString);
//         MaskEditVLTOTPIS.Text      := TRIM(IBQ1.FieldByName('VALOR_TOTAL_PIS').AsString);
//         MaskEditVLTOTCOFINS.Text   := TRIM(IBQ1.FieldByName('VALOR_TOTAL_COFINS').AsString);
//         MaskEdit36.Text            := TRIM(IBQ1.FieldByName('VLTOTFRE').AsString);
//         MaskEdit37.Text            := TRIM(IBQ1.FieldByName('VLCOMIS').AsString);
//         MaskEditICMSFRETE.Text     := TRIM(IBQ1.FieldByName('ICMSFRETE').AsString);
//         GroupBox1.Enabled          := False;
//         BitBtnAlteracao.Enabled    := True;
//         LabelPL.Font.Color         := clRed;
//         LabelPB.Font.Color         := clRed;
//         MaskEditPESOLIQT.TabStop   := True;
//         MaskEditPESOBRUT.TabStop   := True;
//         MaskEditPESOLIQT.ReadOnly  := False;
//         MaskEditPESOBRUT.ReadOnly  := False;
//         MaskEditPESOLIQT.SetFocus;
//        End;
//    end;
end;

procedure TTelaNF.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
//  CharSet := [#8, #48 .. #57];
//  if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.Consiste_IClick(Sender: TObject);
 Var Erro: String;
begin
// ERRO:='';
// {$REGION 'Consiste Clientes com Bloqueio para 1 ou 3 Ordens de Compra por NF'}
// if Trim(MaskEditLIMITA_1_PEDIDOCLI_NF.Text)='1' then
//    Begin
//     if Trim(MaskEditPEDIDO_CLIENTE_O.Text) <> Trim(MaskEdit24.Text) then
//        ERRO:=ERRO+'==>BLOQUEADO A INCLUSÃO DE PEDIDOS DO CLIENTE DIFERENTES NA MESMA NF';
//    End;
// if Trim(MaskEditLIMITA_1_PEDIDOCLI_NF.Text)='3' then
//    Begin
//     If (Trim(MaskEditPEDIDO_CLIENTE_2.Text)='') and (Trim(MaskEditPEDIDO_CLIENTE_O.Text) <> Trim(MaskEdit24.Text)) Then
//        MaskEditPEDIDO_CLIENTE_2.Text:=Trim(MaskEdit24.Text);
//     If (Trim(MaskEditPEDIDO_CLIENTE_3.Text)='') Then
//        If Trim(MaskEditPEDIDO_CLIENTE_O.Text) <> Trim(MaskEdit24.Text) Then
//           If Trim(MaskEditPEDIDO_CLIENTE_2.Text) <> Trim(MaskEdit24.Text) Then
//              MaskEditPEDIDO_CLIENTE_3.Text:=Trim(MaskEdit24.Text);
//     If (Trim(MaskEditPEDIDO_CLIENTE_2.Text)<>'') and (Trim(MaskEditPEDIDO_CLIENTE_3.Text)<>'') Then
//        if (Trim(MaskEditPEDIDO_CLIENTE_O.Text) <> Trim(MaskEdit24.Text)) and
//           (Trim(MaskEditPEDIDO_CLIENTE_2.Text) <> Trim(MaskEdit24.Text)) and
//           (Trim(MaskEditPEDIDO_CLIENTE_3.Text) <> Trim(MaskEdit24.Text)) then
//        ERRO:=ERRO+'==>SOMENTE É PERMITIDO A INCLUSÃO DE 3 PEDIDOS DO CLIENTE DIFERENTES EM CADA NF';
//    End;
// {$ENDREGION}
//
// {$REGION 'Consiste se tem Strech Cadastrado'}
// if Trim(ComboBoxCliFor.Text)='C' then
//    Begin
//     if Trim(DMIB.IBQueryParametros_Fiscal.FieldByName('EXIGE_STRECH_FITADEARQUEAR').AsString)='S' Then
//        Begin
//         if Trim(ComboBoxEspecie.Text)='PALLETS' then
//            Begin
//             if Pos(Trim(MaskEdit9.Text),'5101|6101') <> 0 then
//                Begin
//                 IBQ1.Active:=False;
//                 IBQ1.SQL.Clear;
//                 IBQ1.SQL.Add('Select First 1 PALETIZACAO.CDCLIENTE, PALETIZACAO.CDREFE, PALETIZACAO.TIPO, PALETIZACAO.DESDOBRA, PALETIZACAO.NRSEQUEN, PALETIZACAO.LASTRO, PALETIZACAO.QUANTIDADE_TOTAL, PALETIZACAO.CODIGO_PALETE, PALETIZACAO.ETIQUETA_MODELO,');
//                 IBQ1.SQL.Add('PALETIZACAO.CANTONEIRA, PALETIZACAO.CHAPA_EUCATEX, PALETIZACAO.SOLICITA_CHAPA_CANTONEIRA_CLI, PALETIZACAO.TENSAO');
//                 IBQ1.SQL.Add('From PALETIZACAO ');
//                 IBQ1.SQL.Add('Where CDCLIENTE= '''+Trim(MaskEditCodigoCli_For.Text)+''' and CDREFE='''+Trim(MaskEdit22.Text)+''' ');
//                 IBQ1.Active:=True;
//                 if Trim(IBQ1.FieldByName('TENSAO').AsString)='' Then
//                    ERRO:=ERRO+'==>REFERÊNCIA SEM CADASTRO DE FILME STRECH/FITAS DE ARQUEAR';
//                End;
//            End;
//        End;
//    End;
// {$ENDREGION}
//
// if Trim(Erro) <> '' then
//    Begin
//     Application.MessageBox(PWideChar('ATENÇÃO: As(s) Seguinte(s) Inconsistência(s) Foi/Foram Encontrada(s): '#13#13+ERRO+#13' Favor Corrigir para Continuar.'),'Aviso',mb_OK);
//     MaskEdit17.SetFocus;
//     Abort;
//    end;
end;

procedure TTelaNF.BitBtnAlteracaoClick(Sender: TObject);
begin
// GroupBox1.Enabled := True;
// BitBtnAlteracao.Enabled := False;
// Try
//  IBT1.Active := False;
//  IBT1.StartTransaction;
//  IBQ1.Active := False;
//  IBQ1.SQL.Clear;
//  IBQ1.SQL.Add('UPDATE NF SET PESOLIQT= :PESOLIQT, PESOBRUT= :PESOBRUT ');
//  IBQ1.SQL.Add('Where NRNF = ''' + MaskEdit1.Text + '''');
//  If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//     IBQ1.SQL.Add('and NF.SERIE=''1''')
//  Else
//     IBQ1.SQL.Add('and NF.SERIE=''0''');
//  IBQ1.SQL.Add('and NF.NR_EMPRESA=''' + TRIM(ComboBoxEmpresa.Text) + ''' ');
//  IBQ1.ParamByName('PESOLIQT').AsFloat := StrToFloatDef(MaskEditPESOLIQT.Text,0);
//  IBQ1.ParamByName('PESOBRUT').AsFloat := StrToFloatDef(MaskEditPESOBRUT.Text,0);
//  IBQ1.ExecSQL;
//  IBT1.Commit;
//  Application.MessageBox('ATENÇÃO: PESO LIQUIDO E BRUTO DA NOTA FISCAL ALTERADO COM SUCESSO.','Aviso', mb_OK);
//  MaskEdit1.SetFocus;
// Except
//  on E: Exception do
//     Begin
//      IBT1.Rollback;
//      if Application.MessageBox(PWideChar('ERRO NA GRAVAÇÃO, DESEJA TENTAR GRAVAR NOVAMENTE?' + #13 +'Cód do erro: ' + E.MESSAGE), 'Aviso', mb_YesNo + mb_IconInformation + mb_DefButton1) = mrYes then
//         MaskEdit1.SetFocus;
//     End;
// End;
end;

procedure TTelaNF.ComboBoxConsumidorFinalExit(Sender: TObject);
begin
//
// if Pos((ComboBoxConsumidorFinal.Text),'NORMAL|CONSUMIDOR FINAL') = 0 then
//    ComboBoxConsumidorFinal.SetFocus
// Else
//    Begin
//     If ComboBoxConsumidorFinal.Text <> 'NORMAL' Then
//       MaskEditUSOCONSUMO_ABR.Text := 'S'
//     Else
//       MaskEditUSOCONSUMO_ABR.Text := 'N'
//    End;
end;

procedure TTelaNF.ComboBoxCliForExit(Sender: TObject);
begin
//  if Pos(Trim(ComboBoxCliFor.Text),'C|F') = 0 then
//    ComboBoxCliFor.SetFocus
//  else
//    begin
//      if ComboBoxCliFor.Text = 'F' then
//        begin
//          //19/03/2015 - Nota Fiscal Referencial para
//          //Devolução de Mercadoria para fornecedor.
//          LabelNotaFiscalReferencial.Enabled := False;
//          MaskEditRefNF.Enabled              := False;
//          LabelNFEReferencial.Enabled        := True;
//          MaskEditREFNFE.Enabled             := True;
//          MaskEditREFNFE.ReadOnly            := False;
//          MaskEditREFNFE.TabStop             := True;
//          MaskEditREFNFE.EditMask            := '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;_';
//
//
//          LabelClifor.Caption := 'Fornecedor:';
//          Label10.Font.Color  := clRed;
//          // mudar colocar um campo a mais no cadastro de cfop e por la fazer o if
//          if Pos(Trim(MaskEdit9.Text),'5901|5915|5999|6901|6915|6999') <> 0 then
//            begin
//              Label47.Visible             := True;
//              Label44.Visible             := True;
//              MaskEditSolicitante.Visible := True;
//              JvDateEditPRetorno.Visible  := True;
//            end
//          else
//            begin
//              Label47.Visible             := False;
//              Label44.Visible             := False;
//              MaskEditSolicitante.Visible := False;
//              JvDateEditPRetorno.Visible  := False;
//            end;
//        end
//      else
//        begin
//          Label47.Visible             := False;
//          Label44.Visible             := False;
//          MaskEditSolicitante.Visible := False;
//          JvDateEditPRetorno.Visible  := False;
//
//          if DMIB.IBQueryParametros.FieldByName('EXIGE_PEDIDO_NF').AsString = 'S' then
//            begin
//              LabelClifor.Caption := 'Cliente:';
//              Label10.Font.Color  := ClBlue;
//            end;
//        end;
//    end;
end;

procedure TTelaNF.MaskEditICMKeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.BitBtnImprimirClick(Sender: TObject);
begin
// TelaNF.GroupBox1.Enabled := True;
// PerguntaNF := TPerguntaNF.Create(Application);
// PerguntaNF.MaskEdit1.Text := TelaNF.MaskEdit1.Text;
// PerguntaNF.MaskEditClifor.Text := TelaNF.ComboBoxCliFor.Text;
// PerguntaNF.ComboBoxEmpresa.Text := '1';
// PerguntaNF.MaskEditVARTPDOCTO.Text := 'NF';
// PerguntaNF.Show;
// PerguntaNF.BitBtn1.Enabled := True;
// PerguntaNF.BitBtn1.SetFocus;
// PerguntaNF.BitBtn1.Click;
// FreeAndNil(PerguntaNF);
// TelaNF.Close;
end;

procedure TTelaNF.JvDateEditPRetornoExit(Sender: TObject);
begin
// If StrToDate(JvDateEditPRetorno.Text) < (DMIB.IBQueryDT.FieldByName('current_date').AsDateTime) then
//    Begin
//     Application.MessageBox('ATENÇÃO: DATA DO PEDIDO INVÁLIDA. FAVOR VERIFICAR.','Aviso', mb_OK);
//     JvDateEditPRetorno.SetFocus;
//    End;
end;

procedure TTelaNF.MaskEditSolicitanteExit(Sender: TObject);
begin
// If MaskEditSolicitante.Text = '' then
//    MaskEditSolicitante.SetFocus;
end;

procedure TTelaNF.MaskEditUFEMBARQExit(Sender: TObject);
begin
// if Pos(Trim(MaskEditUFEMBARQ.Text),'AC|AL|AM|AP|BA|CE|DF|ES|GO|MA|MT|MS|MG|PA|PB|PR|PE|PI|RJ|RN|RS|RO|RR|SC|SP|SE|TO') = 0 then
//    Begin
//     if not BitBtnFechar.Focused then
//        Begin
//         Application.MessageBox('ATENÇÃO: ESTADO DO EMBARQUE INVÁLIDO. SE FOR SAÍDA VIA FOZ DO IGUAÇÚ INFORME PR.','Aviso', mb_OK);
//         MaskEditUFEMBARQ.SetFocus;
//        End;
//    End;
end;

procedure TTelaNF.IDDClick(Sender: TObject);
begin
// TelaDuplicata := TTelaDuplicata.Create(Application);
// TelaDuplicata.BitBtnAlteracao.Visible := True;
// TelaDuplicata.ComboBoxTipo.Text := 'NF';
// TelaDuplicata.MaskEdit1.Text := MaskEdit1.Text;
// TelaDuplicata.ShowModal;
// // retirado ver se nao vai dar cagada II TelaDuplicata.MaskEditORIGEM.Text:='NF';
// FreeAndNil(TelaDuplicata);
end;

procedure TTelaNF.MaskEdit26KeyPress(Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
// CharSet := [#8, #48 .. #57];
// if not CharInSet(Key, CharSet) then
//    Key := #0;
end;

procedure TTelaNF.ComboBoxEmpresaExit(Sender: TObject);
Var UltimaNF: String;
begin
// If (TRIM(TelaNF.ComboBoxEmpresa.Text) <> '1') and (TRIM(TelaNF.ComboBoxEmpresa.Text) <> '2') Then
//    ComboBoxEmpresa.SetFocus;
// IBQ1.Close;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select MAX(NRNF) as MA from NF');
// If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//    IBQ1.SQL.Add('WHERE NF.SERIE=1')
// Else
//    IBQ1.SQL.Add('WHERE NF.SERIE=0');
// IBQ1.SQL.Add('and NR_EMPRESA = ''' + TelaNF.ComboBoxEmpresa.Text + ''' ');
// IBQ1.Open;
// UltimaNF := IBQ1.FieldByName('MA').AsString;
// IBQ1.Close;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select First 1 INDSTAT from NF');
// IBQ1.SQL.Add('Where NRNF = ''' + UltimaNF + '''');
// If TRIM(DMIB.IBQueryParametros.FieldByName('NFE').AsString) = 'S' Then
//    IBQ1.SQL.Add('and NF.SERIE=1')
// Else
//    IBQ1.SQL.Add('and NF.SERIE=0');
// IBQ1.SQL.Add('and NR_EMPRESA = ''' + TelaNF.ComboBoxEmpresa.Text + ''' ');
// IBQ1.Open;
// If (IBQ1.FieldByName('INDSTAT').AsString <> 'G') then
//    // nota ok
// Else
//    Begin
//     Application.MessageBox('ATENÇÃO: NÃO É PERMITIDO GERAR UMA NOVA NOTA SEM CONCLUIR A ANTERIOR.','Aviso', mb_OK);
//     TelaNF.Close;
//    End;
end;

procedure TTelaNF.MaskEditValidacaoExit(Sender: TObject);
begin
// If StrIsInteger(MaskEditValidacao.Text) = False Then
//    Begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEditValidacao.SetFocus;
//     Abort;
//    End;
end;

procedure TTelaNF.MaskEditCDNATOPEITEMExit(Sender: TObject);
begin
//
// {$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEditCDNATOPEITEM.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEditCDNATOPEITEM.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
//
// If MaskEditCDNATOPEITEM.Text = '' then
//    MaskEditCDNATOPEITEM.SetFocus
// Else
//   Begin
//    IBQ1.Active := False;
//    IBQ1.SQL.Clear;
//    IBQ1.SQL.Add('Select First 1 CDNATOPE, DESCRNAT, CDNATOPE2, GERADUP, CRIADUP, BLOQUEIA_CODIGO_999999 ');
//    IBQ1.SQL.Add('FROM NATUOPE ');
//    IBQ1.SQL.Add('Where CDNATOPE = ''' +TRIM(MaskEditCDNATOPEITEM.Text) + ''' ');
//    IBQ1.Active := True;
//    MaskEditDescricaoNatopeitem.Text := IBQ1.FieldByName('DESCRNAT').AsString;
//    If IBQ1.IsEmpty then
//       Begin
//        Application.MessageBox('ATENÇÃO: CFOP INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//        MaskEditCDNATOPEITEM.SetFocus;
//       End
//    Else
//       Begin
//       // aqui precisa verificar se é o segundo item e se o primeiro exige que o cfop 2 seja outro...
//       End;
//   End;
end;

procedure TTelaNF.FormCreate(Sender: TObject);
begin
// VarCDNATOPE2 := 0;
// ComboBoxPortador.Items.Clear;
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select CDPORTA, Permite_saida_NF ');
// IBQ1.SQL.Add('FROM PORTADOR ');
// IBQ1.SQL.Add('Where (Permite_saida_NF = ''S'') and (CDPORTA<>101) ');
// IBQ1.SQL.Add('Order By CDPORTA ');
// IBQ1.Active := True;
// IBQ1.First;
// ComboBoxPortador.Items.Add('101');
// While not IBQ1.Eof do
//       begin
//        ComboBoxPortador.Items.Add(TRIM(IBQ1.FieldByName('CDPORTA').AsString));
//        IBQ1.Next;
//       end;
// ComboBoxPortador.ItemIndex := 0;
// // Se não tiver + de 1... então não mostrar a seleção
// if ComboBoxPortador.Items.Count = 1 then
//    begin
//     LabelPortador.Visible    := False;
//     ComboBoxPortador.Visible := False;
//    end;
end;

procedure TTelaNF.MaskEditVLTOTALExit(Sender: TObject);
begin
//{$REGION 'Verifica se Campo é Numerico'}
// if StrIsInteger(MaskEditVLTOTAL.Text) = False then
//    begin
//     Application.MessageBox('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.','Aviso', mb_OK);
//     MaskEditVLTOTAL.SetFocus;
//     Abort;
//    end;
// {$ENDREGION}
end;

end.
