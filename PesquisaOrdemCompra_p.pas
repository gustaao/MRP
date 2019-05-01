unit PesquisaOrdemCompra_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TPesquisaOrdemCompra = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    PanelTopo: TPanel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
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
    qOCCDCONDICAO_PAGTO: TIntegerField;
    qOCDESCRICAO: TStringField;
    qOCDESDOBRAMENTO: TIntegerField;
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
    cdsOCCDCONDICAO_PAGTO: TIntegerField;
    cdsOCDESCRICAO: TStringField;
    cdsOCDESDOBRAMENTO: TIntegerField;
    dsOC: TDataSource;
    dsOCI: TDataSource;
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
    cdsOCIICMS: TFMTBCDField;
    cdsOCIIPI: TFMTBCDField;
    cdsOCIIRRF: TFMTBCDField;
    cdsOCIPIS: TFMTBCDField;
    cdsOCICOFINS: TFMTBCDField;
    cdsOCIISS: TFMTBCDField;
    dspOCI: TDataSetProvider;
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
    qOCIICMS: TFMTBCDField;
    qOCIIPI: TFMTBCDField;
    qOCIIRRF: TFMTBCDField;
    qOCIPIS: TFMTBCDField;
    qOCICOFINS: TFMTBCDField;
    qOCIISS: TFMTBCDField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaOrdemCompra: TPesquisaOrdemCompra;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaOrdemCompra.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsOC.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsOC.Filter := ' CDOC = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsOC.Filter := ' CDFORNECEDOR = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsOC.Filter := ' UPPER(NOME) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsOC.Filtered := True;
    end;
end;

procedure TPesquisaOrdemCompra.BitBtnGeralClick(Sender: TObject);
begin
  cdsOC.Filtered := False;
  cdsOC.Refresh;
end;

procedure TPesquisaOrdemCompra.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaOrdemCompra.FormActivate(Sender: TObject);
begin
  cdsOC.Open;
  cdsOCI.Open;
end;

procedure TPesquisaOrdemCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
