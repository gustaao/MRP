unit RelatorioVendasAnual_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TRelatorioVendasAnual = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabelMes1: TQRLabel;
    QRLabelMes2: TQRLabel;
    QRLabelMes3: TQRLabel;
    QRLabelMes4: TQRLabel;
    QRLabelMes5: TQRLabel;
    QRLabelMes6: TQRLabel;
    QRLabelMes7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabelValor1: TQRLabel;
    QRLabelValor2: TQRLabel;
    QRLabelValor3: TQRLabel;
    QRLabelValor4: TQRLabel;
    QRLabelValor5: TQRLabel;
    QRLabelValor6: TQRLabel;
    QRLabelValor7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    SummaryBand1: TQRBand;
    QRLabelTotalValor1: TQRLabel;
    QRLabelTotalValor2: TQRLabel;
    QRLabelTotalValor3: TQRLabel;
    QRLabelTotalValor4: TQRLabel;
    QRLabelTotalValor5: TQRLabel;
    QRLabelTotalValor6: TQRLabel;
    QRLabelTotalValor7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabelTotalAno: TQRLabel;
    QRLabelMes8: TQRLabel;
    QRLabelMes9: TQRLabel;
    QRLabelMes10: TQRLabel;
    QRLabelMes11: TQRLabel;
    QRLabelMes12: TQRLabel;
    QRLabelValor8: TQRLabel;
    QRLabelValor9: TQRLabel;
    QRLabelValor10: TQRLabel;
    QRLabelValor11: TQRLabel;
    QRLabelValor12: TQRLabel;
    QRLabelTotalValor8: TQRLabel;
    QRLabelTotalValor9: TQRLabel;
    QRLabelTotalValor10: TQRLabel;
    QRLabelTotalValor11: TQRLabel;
    QRLabelTotalValor12: TQRLabel;
    qPagto: TSQLQuery;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    dsPagto: TDataSource;
    qTotalMes: TSQLQuery;
    cdsTotalMes: TClientDataSet;
    cdsTotalMesVALOR: TFMTBCDField;
    dspTotalMes: TDataSetProvider;
    dsTotalMes: TDataSource;
    qTotal: TSQLQuery;
    cdsTotal: TClientDataSet;
    dspTotal: TDataSetProvider;
    dsTotal: TDataSource;
    cdsTotalVALOR: TFMTBCDField;
    QRLabelPeriodo: TQRLabel;
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
  RelatorioVendasAnual: TRelatorioVendasAnual;
  VarDia, VarMes, VarAno : Word;
  VarData            : TDateTime;
  VarDataInicial     : TDateTime;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaMesAno_p;

{$R *.dfm}

procedure TRelatorioVendasAnual.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
    VarDataI, VarDataF : TDateTime;
begin
  for i := 0 to 11 do
    begin
      VarDataI := IncMonth(VarDatainicial,i);
      VarDataF := LastDayOfMonth(IncMonth(VarDatainicial,i),False);

      cdsTotalMes.Close;
      cdsTotalMes.FetchParams;
      cdsTotalMes.Params.ParamByName('DATAI').AsDateTime      := VarDataI;
      cdsTotalMes.Params.ParamByName('DATAF').AsDateTime      := VardataF;
      cdsTotalMes.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
      cdsTotalMes.Open;
      TQRLabel(FindComponent('QRLabelValor'+IntToStr(i+1))).Caption := FormatFloat('###,###,#0.00',cdsTotalMesVALOR.AsFloat);
    end;
end;

procedure TRelatorioVendasAnual.MontaRelatorio;
var i : integer;
begin
  cdsPagto.Open;

  {$REGION 'Definido o Mes Inicial'}
  VarDia:= 1;
  if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Janeiro') then
    VarMes := 1
  else
   if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Fevereiro') then
     VarMes := 2
   else
     if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Março') then
       VarMes := 3
     else
       if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Abril') then
         VarMes := 4
       else
         if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Maio') then
           VarMes := 5
         else
           if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Junho') then
             VarMes := 6
           else
             if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Julho') then
               VarMes := 7
             else
               if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Agosto') then
                 VarMes := 8
               else
                 if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Setembro') then
                   VarMes := 9
                 else
                   if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Outubro') then
                     VarMes := 10
                   else
                     if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Novembro') then
                       VarMes := 11
                     else
                       if UpperCase(Trim(PerguntaMesAno.cbMes.Text))= UpperCase('Dezembro') then
                         VarMes := 12;
  {$ENDREGION}

  VarAno         := StrToIntDef(PerguntaMesAno.cbAno.Text,0);
  VarData        := EncodeDate(VarAno,VarMes,VarDia);
  VarDataInicial := FirstDayOfMonth((IncMonth(VarData,-0)),False);

  for i := 1 to 12 do
    begin
      TQRLabel(FindComponent('QRLabelMes'+IntToStr(i))).Caption := FormatDateTime('mmm/yyyy',VarData);
      VarData := IncMonth(VarData,1);
    end;

  QRLabelPeriodo.Caption := 'Periodo de: '+ QRLabelMes1.Caption + ' até: ' +QRLabelMes12.Caption;
  QuickRep1.ReportTitle  := 'Relatório de Vendas Anual ';
  QuickRep1.Preview;
end;

procedure TRelatorioVendasAnual.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : integer;
begin
  for i := 0 to 11 do
    begin
      VarDataI := IncMonth(VarDatainicial,i);
      VarDataF := LastDayOfMonth(IncMonth(VarDatainicial,i),False);

      cdsTotal.Close;
      cdsTotal.FetchParams;
      cdsTotal.Params.ParamByName('DATAI').AsDateTime      := VarDataI;
      cdsTotal.Params.ParamByName('DATAF').AsDateTime      := VardataF;
      cdsTotal.Open;
      TQRLabel(FindComponent('QRLabelTotalValor'+IntToStr(i+1))).Caption := FormatFloat('###,###,#0.00',cdsTotalVALOR.AsFloat);
    end;


  VarDataI := VarDatainicial;
  VarDataF := LastDayOfMonth(IncMonth(VarDatainicial,11),False);
  cdsTotal.Close;
  cdsTotal.FetchParams;
  cdsTotal.Params.ParamByName('DATAI').AsDateTime      := VarDataI;
  cdsTotal.Params.ParamByName('DATAF').AsDateTime      := VardataF;
  cdsTotal.Open;
  QRLabelTotalAno.Caption := FormatFloat('###,###,#0.00',cdsTotalVALOR.AsFloat);
end;

end.
