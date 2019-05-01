unit GraficoVendasDia_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvChart, pngimage, JvXPCore, JvXPButtons, ComCtrls,
  JvExComCtrls, JvDateTimePicker, StdCtrls, ExtCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr, StatsClasses, Math, jpeg, Clipbrd;

type
  TGraficoVendasDia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    dtpDate: TJvDateTimePicker;
    BitBtnPesquisa: TJvXPButton;
    BitBtnSair: TJvXPButton;
    BitBtnPrior: TJvXPButton;
    BitBtnNext: TJvXPButton;
    BitBtnImprimeAgenda: TJvXPButton;
    qResumo: TSQLQuery;
    cdsResumo: TClientDataSet;
    cdsResumoPAGAMENTO: TStringField;
    cdsResumoVALOR: TFMTBCDField;
    DspResumo: TDataSetProvider;
    dsResuo: TDataSource;
    qTotal: TSQLQuery;
    qTotalTOTALVENDA: TFMTBCDField;
    Chart: TJvChart;
    procedure BitBtnNextClick(Sender: TObject);
    procedure BitBtnPriorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnPesquisaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaGrafico;
  end;

var
  GraficoVendasDia: TGraficoVendasDia;
  FStatHgt, FStatHg0: TStatArray;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TGraficoVendasDia.MontaGrafico;
var
  nValueCount, i: Integer;
begin
  cdsResumo.FetchParams;
  cdsResumo.Params.ParamByName('DATA').AsDateTime := dtpDate.Date;
  cdsResumo.Open;
  cdsResumo.Refresh;

  qTotal.Close;
  qTotal.Params.ParamByName('DATA').AsDate := dtpDate.Date;
  qTotal.Open;

  Chart.Data.Clear;
  Chart.ClearFloatingMarkers;
  Chart.Options.PenLegends.Clear;

  if cdsResumo.RecordCount > 0 then
    begin
      FStatHgt := TStatArray.Create(10);
      FStatHg0 := TStatArray.Create(10);
      Chart.Options.ChartKind := ckChartBar;
      Chart.ClearFloatingMarkers;
      Chart.Data.Clear;
      Chart.Options.PrimaryYAxis.YMax := qTotalTOTALVENDA.AsFloat;
      Chart.Options.PenCount := cdsResumo.RecordCount;

      Chart.Options.YStartOffset := 10; //Espaço da Legenda Eixo X
      Chart.Options.XStartOffset := 10; //Espaço da Legenda Eixo Y

      Chart.Data.ValueCount  := cdsResumo.RecordCount;

      cdsResumo.First;
      for i := 0 to cdsResumo.RecordCount - 1 do
        begin
          Chart.Data.Value[i,0] := cdsResumoVALOR.AsFloat;
          cdsResumo.Next;
        end;

    with Chart.Options do
      begin
        Title       := 'Resumo de Vendas';
        YAxisHeader := 'Valor das Vendas';
        XAxisHeader := 'Vendas do Dia: ' + DateToStr(dtpDate.Date);

        //XAxisLegendSkipBy := 10;

        PrimaryYAxis.YMin := 0;

//        if ChartKind = ckChartStackedBar then
//          PenStyle[0] := psClear
//        else
//          PenStyle[0] := psSolid;

//        PenStyle[1] := psDash;
//        PenStyle[2] := psDot;

        cdsResumo.First;
        PenLegends.Clear;
        for i := 0 to cdsResumo.RecordCount - 1 do
          begin
            PenLegends.Add(cdsResumoPAGAMENTO.AsString);
            PenLegends.Strings[i] := cdsResumoPAGAMENTO.AsString;
            cdsResumo.Next;
          end;

        Legend := clChartLegendBelow;
      end;
    end;
  Chart.PlotGraph;
end;

procedure TGraficoVendasDia.BitBtnNextClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date + 1;
  MontaGrafico;
end;

procedure TGraficoVendasDia.BitBtnPesquisaClick(Sender: TObject);
begin
  MontaGrafico;
end;

procedure TGraficoVendasDia.BitBtnPriorClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date - 1;
  MontaGrafico;
end;

procedure TGraficoVendasDia.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TGraficoVendasDia.FormActivate(Sender: TObject);
begin
  dtpDate.Date := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
end;

procedure TGraficoVendasDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
