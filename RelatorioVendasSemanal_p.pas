unit RelatorioVendasSemanal_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, Provider, DBClient, SqlExpr, QRCtrls;

type
  TRelatorioVendasSemanal = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    qResumo: TSQLQuery;
    cdsResumo: TClientDataSet;
    cdsResumoPAGAMENTO: TStringField;
    cdsResumoVALOR: TFMTBCDField;
    DspResumo: TDataSetProvider;
    dsResuo: TDataSource;
    qPagto: TSQLQuery;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    dsPagto: TDataSource;
    QRDBText1: TQRDBText;
    QRLabelValor1: TQRLabel;
    QRLabelValor2: TQRLabel;
    QRLabelValor3: TQRLabel;
    QRLabelValor4: TQRLabel;
    QRLabelValor5: TQRLabel;
    QRLabelValor6: TQRLabel;
    QRLabelValor7: TQRLabel;
    QRLabelData1: TQRLabel;
    QRLabelData2: TQRLabel;
    QRLabelData3: TQRLabel;
    QRLabelData4: TQRLabel;
    QRLabelData5: TQRLabel;
    QRLabelData6: TQRLabel;
    QRLabelData7: TQRLabel;
    QRLabelDiaSemana1: TQRLabel;
    QRLabelDiaSemana2: TQRLabel;
    QRLabelDiaSemana3: TQRLabel;
    QRLabelDiaSemana4: TQRLabel;
    QRLabelDiaSemana5: TQRLabel;
    QRLabelDiaSemana6: TQRLabel;
    QRLabelDiaSemana7: TQRLabel;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    QRSysData1: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabelTotalValor1: TQRLabel;
    QRLabelTotalValor2: TQRLabel;
    QRLabelTotalValor3: TQRLabel;
    QRLabelTotalValor4: TQRLabel;
    QRLabelTotalValor5: TQRLabel;
    QRLabelTotalValor6: TQRLabel;
    QRLabelTotalValor7: TQRLabel;
    qResumoTotal: TSQLQuery;
    cdsResumoTotal: TClientDataSet;
    dspResumoTotal: TDataSetProvider;
    dsResumoTotal: TDataSource;
    cdsResumoTotalVALOR: TFMTBCDField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabelTotalSemana: TQRLabel;
    qTotalSemana: TSQLQuery;
    cdsTotalSemana: TClientDataSet;
    dspTotalSemana: TDataSetProvider;
    dsTotalSemana: TDataSource;
    cdsTotalSemanaVALOR: TFMTBCDField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioVendasSemanal: TRelatorioVendasSemanal;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaDataUnica_p;

{$R *.dfm}


procedure TRelatorioVendasSemanal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
begin
  for i := 1 to 7 do
    begin
      cdsResumo.Close;
      cdsResumo.FetchParams;
      cdsResumo.Params.ParamByName('DATA').AsDateTime       := StrToDate(TQRLabel(FindComponent('QRLabelData'+IntToStr(i))).Caption);
      cdsResumo.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
      cdsResumo.Open;
      TQRLabel(FindComponent('QRLabelValor'+IntToStr(i))).Caption := FormatFloat('###,###,#0.00',cdsResumoVALOR.AsFloat);
    end;
end;

procedure TRelatorioVendasSemanal.MontaRelatorio;
begin
  QRLabelData1.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI));
  QRLabelData2.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+1);
  QRLabelData3.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+2);
  QRLabelData4.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+3);
  QRLabelData5.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+4);
  QRLabelData6.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+5);
  QRLabelData7.Caption := FormatDateTime('dd/mm/yyyy', StartOfTheWeek(VarDataI)+6);

  cdsPagto.Open;


  QuickRep1.ReportTitle := 'Relatório de Vendas Semanal';
  QuickRep1.Preview;
end;


procedure TRelatorioVendasSemanal.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
begin

  for i := 1 to 7 do
    begin
      cdsResumoTotal.Close;
      cdsResumoTotal.FetchParams;
      cdsResumoTotal.Params.ParamByName('DATA').AsDateTime := StrToDate(TQRLabel(FindComponent('QRLabelData'+IntToStr(i))).Caption);
      cdsResumoTotal.Open;
      TQRLabel(FindComponent('QRLabelTotalValor'+IntToStr(i))).Caption := FormatFloat('###,###,#0.00',cdsResumoTotalVALOR.AsFloat);
    end;

  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime := StrToDate(QRLabelData1.Caption);
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime := StrToDate(QRLabelData7.Caption);
  cdsTotalSemana.Open;
  QRLabelTotalSemana.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);
end;

end.
