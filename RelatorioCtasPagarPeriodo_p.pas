unit RelatorioCtasPagarPeriodo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls;

type
  TRelatorioCtasPagarPeriodo = class(TForm)
    QuickRep1: TQuickRep;
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
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioCtasPagarPeriodo: TRelatorioCtasPagarPeriodo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaData_p;

{$R *.dfm}

procedure TRelatorioCtasPagarPeriodo.MontaRelatorio;
//var VarQuery : String;
begin
  QRLabelTitulo.Caption  := 'Relatório de Contas a Pagar x Período';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

//  VarQuery := ('select *         '+
//               'from ctas_pagar  '+
//               'where ctas_pagar.vencimento between '''+FormatDateTime('mm/dd/yyyy',VarDataI)+''' and +'''+FormatDateTime('mm/dd/yyyy',VarDataI)+''' ');

  cdsCtasPagar.Close;
  cdsCtasPagar.FetchParams;
  cdsCtasPagar.Params.ParamByName('DATAI').AsDateTime := VarDataI;
  cdsCtasPagar.Params.ParamByName('DATAF').AsDateTime := VarDataF;
  cdsCtasPagar.Open;

//  cdsCtasPagar.Filtered := False;
//  cdsCtasPagar.Filter := ( 'VENCIMENTO = '''+FormatDateTime('DD/MM/YYYY',VarDataI)+''' or VENCIMENTO <= '''+FormatDateTime('DD/MM/YYYY',VarDataF)+''' ');
//  cdsCtasPagar.Filtered := True;

  if not(cdsCtasPagar.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;


end.
