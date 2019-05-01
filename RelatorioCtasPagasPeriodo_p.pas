unit RelatorioCtasPagasPeriodo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls, ExtCtrls;

type
  TRelatorioCtasPagasPeriodo = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    qCtasPagar: TSQLQuery;
    qCtasPagarCDCTAS_PAGAR: TIntegerField;
    qCtasPagarCDFORNECEDOR: TIntegerField;
    qCtasPagarNOME: TStringField;
    qCtasPagarNUMERO_DOCUMENTO: TStringField;
    qCtasPagarDESCRICAO: TStringField;
    qCtasPagarVALOR: TFMTBCDField;
    qCtasPagarVALOR_PAGO: TFMTBCDField;
    qCtasPagarVENCIMENTO: TDateField;
    qCtasPagarDATA_PAGTO: TDateField;
    qCtasPagarFORMA_PAGTO: TStringField;
    qCtasPagarCADASTRADO_POR: TStringField;
    qCtasPagarCADASTRADO_EM: TDateField;
    qCtasPagarLIQUIDADO: TIntegerField;
    qCtasPagarLIQUIDADO_POR: TStringField;
    qCtasPagarLIQUIDADO_EM: TDateField;
    qCtasPagarCDPLANO_CONTAS: TIntegerField;
    qCtasPagarDESCRICAO_CONTA: TStringField;
    qCtasPagarCONTA: TStringField;
    dspCtasPagar: TDataSetProvider;
    cdsCtasPagar: TClientDataSet;
    cdsCtasPagarCDCTAS_PAGAR: TIntegerField;
    cdsCtasPagarCDFORNECEDOR: TIntegerField;
    cdsCtasPagarNUMERO_DOCUMENTO: TStringField;
    cdsCtasPagarDESCRICAO: TStringField;
    cdsCtasPagarVALOR: TFMTBCDField;
    cdsCtasPagarVALOR_PAGO: TFMTBCDField;
    cdsCtasPagarVENCIMENTO: TDateField;
    cdsCtasPagarDATA_PAGTO: TDateField;
    cdsCtasPagarFORMA_PAGTO: TStringField;
    cdsCtasPagarCADASTRADO_POR: TStringField;
    cdsCtasPagarCADASTRADO_EM: TDateField;
    cdsCtasPagarLIQUIDADO: TIntegerField;
    cdsCtasPagarLIQUIDADO_POR: TStringField;
    cdsCtasPagarLIQUIDADO_EM: TDateField;
    cdsCtasPagarCDPLANO_CONTAS: TIntegerField;
    cdsCtasPagarCONTA: TStringField;
    cdsCtasPagarNOME: TStringField;
    cdsCtasPagarDESCRICAO_CONTA: TStringField;
    dsCtasPagar: TDataSource;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioCtasPagasPeriodo: TRelatorioCtasPagasPeriodo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaData_p;

{$R *.dfm}

procedure TRelatorioCtasPagasPeriodo.MontaRelatorio;
begin
  QRLabelTitulo.Caption  := 'Relatório de Contas a Pagas x Período';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

  cdsCtasPagar.Close;
  cdsCtasPagar.FetchParams;
  cdsCtasPagar.Params.ParamByName('DATAI').AsDateTime := VarDataI;
  cdsCtasPagar.Params.ParamByName('DATAF').AsDateTime := VarDataF;
  cdsCtasPagar.Open;


//  cdsCtasPagar.Filtered := False;
//  cdsCtasPagar.Filter := ( '(VENCIMENTO >= '''+FormatDateTime('DD/MM/YYYY',VarDataI)+''' and VENCIMENTO <= '''+FormatDateTime('DD/MM/YYYY',VarDataF)+''' )'+
//                           'and LIQUIDADO = 1  ');
//  cdsCtasPagar.Filtered := True;

  if not(cdsCtasPagar.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
