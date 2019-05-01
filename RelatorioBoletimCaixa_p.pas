unit RelatorioBoletimCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, QRCtrls, DB, Provider, DBClient, SqlExpr,
  JvExControls, JvChart, StatsClasses, Math, jpeg, Clipbrd;

type
  TRelatorioBoletimCaixa = class(TForm)
    QuickRep1: TQuickRep;
    qCaixa: TSQLQuery;
    qCaixaCDCAIXA: TIntegerField;
    qCaixaDATA: TDateField;
    qCaixaCDUSUARIO: TIntegerField;
    qCaixaDESCRICAO: TStringField;
    qCaixaCREDITO: TFMTBCDField;
    qCaixaDEBITO: TFMTBCDField;
    qCaixaNUMERO_PDV: TIntegerField;
    qCaixaNOME: TStringField;
    cdsCaixa: TClientDataSet;
    cdsCaixaCDCAIXA: TIntegerField;
    cdsCaixaDATA: TDateField;
    cdsCaixaCDUSUARIO: TIntegerField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaCREDITO: TFMTBCDField;
    cdsCaixaDEBITO: TFMTBCDField;
    cdsCaixaNUMERO_PDV: TIntegerField;
    cdsCaixaNOME: TStringField;
    dspCaixa: TDataSetProvider;
    dsCaixa: TDataSource;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel6: TQRLabel;
    qResumo: TSQLQuery;
    cdsResumo: TClientDataSet;
    DspResumo: TDataSetProvider;
    dsResuo: TDataSource;
    QuickRep2: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    DetailBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRCompositeReport1: TQRCompositeReport;
    QRLabelTituloResumo: TQRLabel;
    qCaixaMOVIMENTACAO: TStringField;
    cdsCaixaMOVIMENTACAO: TStringField;
    QRLabel12: TQRLabel;
    qCaixaCDMOVIMENTACAO: TIntegerField;
    cdsCaixaCDMOVIMENTACAO: TIntegerField;
    qTotal: TSQLQuery;
    qTotalTOTALVENDA: TFMTBCDField;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    qCaixaCLIENTE: TStringField;
    cdsCaixaCLIENTE: TStringField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    qCaixaPAGAMENTO: TStringField;
    cdsCaixaPAGAMENTO: TStringField;
    cdsResumoPAGAMENTO: TStringField;
    cdsResumoVALOR: TFMTBCDField;
    PageFooterBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    Chart: TJvChart;
    SummaryBand2: TQRBand;
    QRImage1: TQRImage;
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure SummaryBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaGrafico;
  end;

var
  RelatorioBoletimCaixa: TRelatorioBoletimCaixa;
  //Foo, Foo1, Foo2: Real;
  //Fdt, Fds: Double;
  //Fhgt, Fhg0, Fhg2p: Double;

  FStatHgt, FStatHg0: TStatArray;

  VarComGrafico : Boolean = False;

implementation

uses Principal_p, DMPrincipal_p;

{$R *.dfm}

procedure TRelatorioBoletimCaixa.MontaGrafico;
var
  nValueCount, i: Integer;
begin
  VarComGrafico := True;

  FStatHgt := TStatArray.Create(10);
  FStatHg0 := TStatArray.Create(10);
  Chart.Options.ChartKind := ckChartBar;
  Chart.ClearFloatingMarkers;
  Chart.Data.Clear;
  Chart.Options.PrimaryYAxis.YMax := qTotalTOTALVENDA.AsFloat;
  Chart.Options.PenCount := cdsResumo.RecordCount;

  cdsResumo.First;
  for i := 0 to cdsResumo.RecordCount - 1 do
    begin
      Chart.Data.Value[i,0] := cdsResumoVALOR.AsFloat;
      cdsResumo.Next;
    end;

//  if cdsResumo.RecordCount > 0 then
//    Chart.Data.ValueCount  := cdsResumo.RecordCount;

  with Chart.Options do
    begin
      Title       := 'Resumo de Vendas';
      YAxisHeader := 'Valor das Vendas';
      XAxisHeader := 'Vendas do Dia';

      PrimaryYAxis.YMin := 0;

      if ChartKind = ckChartStackedBar then
        PenStyle[0] := psClear
      else
        PenStyle[0] := psSolid;

      PenStyle[1] := psDash;
      PenStyle[2] := psDot;

      cdsResumo.First;
      PenLegends.Clear;
      for i := 0 to cdsResumo.RecordCount - 1 do
        begin
          PenLegends.Add(cdsResumoPAGAMENTO.AsString);
          cdsResumo.Next;
        end;

      Legend := clChartLegendBelow;
    end;
  Chart.PlotGraph;
  Chart.GraphToClipboard;
end;

procedure TRelatorioBoletimCaixa.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(QuickRep1);
  QRCompositeReport1.Reports.Add(QuickRep2);
end;

procedure TRelatorioBoletimCaixa.SummaryBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if VarComGrafico then
    begin
      QRImage1.Picture.Assign(Clipboard);
    end
  else
    begin
      SummaryBand2.Height := 0;
    end;
end;

end.
