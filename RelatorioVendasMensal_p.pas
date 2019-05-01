unit RelatorioVendasMensal_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DateUtils, FMTBcd, DB, DBClient,
  Provider, SqlExpr;

type
  TRelatorioVendasMensal = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabelSemana1Data: TQRLabel;
    QRLabelSemana2Data: TQRLabel;
    QRLabelSemana3Data: TQRLabel;
    QRLabelSemana4Data: TQRLabel;
    QRLabelSemana5Data: TQRLabel;
    QRLabelSemana1: TQRLabel;
    QRLabelSemana2: TQRLabel;
    QRLabelSemana3: TQRLabel;
    QRLabelSemana4: TQRLabel;
    QRLabelSemana5: TQRLabel;
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
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabelTotalMes: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabelValor1: TQRLabel;
    QRLabelValor2: TQRLabel;
    QRLabelValor3: TQRLabel;
    QRLabelValor4: TQRLabel;
    QRLabelValor5: TQRLabel;
    qPagto: TSQLQuery;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    dsPagto: TDataSource;
    qTotalSemana: TSQLQuery;
    cdsTotalSemana: TClientDataSet;
    cdsTotalSemanaVALOR: TFMTBCDField;
    dspTotalSemana: TDataSetProvider;
    dsTotalSemana: TDataSource;
    qSemanaTotal: TSQLQuery;
    cdsSemanaTotal: TClientDataSet;
    dspSemanaTotal: TDataSetProvider;
    dsSemanaTotal: TDataSource;
    cdsSemanaTotalVALOR: TFMTBCDField;
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
  RelatorioVendasMensal: TRelatorioVendasMensal;
  VarDia, VarMes, VarAno : Word;
  VarData            : TDateTime;
  VarDatainicial     : TDateTime;
  VarDataFinal       : TDateTime;
  DataSemanaI : Array[1..5] of TdateTime;
  DataSemanaF : Array[1..5] of TdateTime;
  VarNumeroSemanas : Integer = 4;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaMesAno_p;

{$R *.dfm}


procedure TRelatorioVendasMensal.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[1];
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[1];
  cdsTotalSemana.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
  cdsTotalSemana.Open;
  QRLabelValor1.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);

  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[2];
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[2];
  cdsTotalSemana.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
  cdsTotalSemana.Open;
  QRLabelValor2.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);

  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[3];
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[3];
  cdsTotalSemana.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
  cdsTotalSemana.Open;
  QRLabelValor3.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);

  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[4];
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[4];
  cdsTotalSemana.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
  cdsTotalSemana.Open;
  QRLabelValor4.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);

  cdsTotalSemana.Close;
  cdsTotalSemana.FetchParams;
  cdsTotalSemana.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[5];
  cdsTotalSemana.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[5];
  cdsTotalSemana.Params.ParamByName('CDPAGAMENTO').AsInteger := cdsPagtoCDPAGAMENTO.AsInteger;
  cdsTotalSemana.Open;
  QRLabelValor5.Caption := FormatFloat('###,###,#0.00',cdsTotalSemanaVALOR.AsFloat);

end;

procedure TRelatorioVendasMensal.MontaRelatorio;
begin
  cdsPagto.Open;

  {$REGION 'Definido o Mes'}
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
  VarDataFinal   := LastDayOfMonth(((VarData)),False) ;

  case DayOfWeek(VarDataInicial) of
    1 : begin //Domingo
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 6;
        end;
    2 : begin //Segunda
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 5;
        end;
    3 : begin //Terça
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 4;
        end;
    4 : begin //Quarta
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 3;
        end;
    5 : begin //Quinta
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 3;
        end;
    6 : begin //Sexta
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 2;
        end;
    7 : begin //Sabado
          DataSemanaI[1] := VarDataInicial;
          DataSemanaF[1] := VarDataInicial + 6;
        end;
  end;

  //Segunda Semana
  DataSemanaI[2] := DataSemanaF[1]+1;
  DataSemanaF[2] := DataSemanaF[1]+7;

  //Terceira Semana
  DataSemanaI[3] := DataSemanaF[2]+1;
  DataSemanaF[3] := DataSemanaF[2]+7;

  if ((DataSemanaF[3]+7)>= VarDataFinal) or ((DataSemanaF[3]+9)>= VarDataFinal) then
    VarNumeroSemanas := 4
  else
    VarNumeroSemanas := 5;

  if VarNumeroSemanas = 4 then
    begin
      //Quarta Semana
      DataSemanaI[4] := DataSemanaF[3]+1;
      DataSemanaF[4] := VarDataFinal;
    end
  else
    begin
      //Quarta Semana
      DataSemanaI[4] := DataSemanaF[3]+1;
      DataSemanaF[4] := DataSemanaF[3]+7;

      //Quinta Semana
      DataSemanaI[5] := DataSemanaF[4]+1;
      DataSemanaF[5] := VarDataFinal;
    end;

 {$REGION 'Definido os Labels do Cabecalho'}
  QRLabelSemana1Data.Caption := FormatDateTime('dd/mm',DataSemanaI[1]) +' - '+FormatDateTime('dd/mm',DataSemanaF[1]);
  QRLabelSemana2Data.Caption := FormatDateTime('dd/mm',DataSemanaI[2]) +' - '+FormatDateTime('dd/mm',DataSemanaF[2]);
  QRLabelSemana3Data.Caption := FormatDateTime('dd/mm',DataSemanaI[3]) +' - '+FormatDateTime('dd/mm',DataSemanaF[3]);
  QRLabelSemana4Data.Caption := FormatDateTime('dd/mm',DataSemanaI[4]) +' - '+FormatDateTime('dd/mm',DataSemanaF[4]);

  if VarNumeroSemanas = 5 then
    begin
      QRLabelSemana5.Caption     := '5ª Semana';
      QRLabelSemana5Data.Caption := FormatDateTime('dd/mm',DataSemanaI[5]) +' - '+FormatDateTime('dd/mm',DataSemanaF[5]);
    end
  else
    begin
      QRLabelSemana5.Enabled          := False;
      QRLabelSemana5Data.Enabled      := False;
    end;
  {$ENDREGION}

  QuickRep1.Preview;

end;




procedure TRelatorioVendasMensal.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i : Integer;
begin
  for i := 1 to VarNumeroSemanas do
    begin
      cdsSemanaTotal.Close;
      cdsSemanaTotal.FetchParams;
      cdsSemanaTotal.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[i];
      cdsSemanaTotal.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[i];
      cdsSemanaTotal.Open;
      TQRLabel(FindComponent('QRLabelTotalValor'+IntToStr(i))).Caption :=  FormatFloat('###,###,#0.00',cdsSemanaTotalVALOR.AsFloat);
    end;
  cdsSemanaTotal.Close;
  cdsSemanaTotal.FetchParams;
  cdsSemanaTotal.Params.ParamByName('DATAI').AsDateTime      := DataSemanaI[1];
  cdsSemanaTotal.Params.ParamByName('DATAF').AsDateTime      := DataSemanaF[5];
  cdsSemanaTotal.Open;
  QRLabelTotalMes.Caption :=  FormatFloat('###,###,#0.00',cdsSemanaTotalVALOR.AsFloat);
end;

end.
