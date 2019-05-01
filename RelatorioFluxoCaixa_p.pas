unit RelatorioFluxoCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  DateUtils, QRCtrls;

type
  TRelatorioFluxoCaixa = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLoopBand1: TQRLoopBand;
    qFluxo: TSQLQuery;
    dspFluxo: TDataSetProvider;
    cdsFluxo: TClientDataSet;
    dsFluxo: TDataSource;
    QRLabel1: TQRLabel;
    QRLabelDia: TQRLabel;
    cdsFluxoCREDITO: TFMTBCDField;
    cdsFluxoDEBITO: TFMTBCDField;
    cdsFluxoVENCIMENTO: TDateField;
    cdsFluxoDESCRICAO: TStringField;
    QRLabelDescricao: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelCredito: TQRLabel;
    QRLabelDebito: TQRLabel;
    QRLabelSaldo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabelPeriodo: TQRLabel;
    QRLabelTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelSaldoInicial: TQRLabel;
    procedure QRLoopBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioFluxoCaixa: TRelatorioFluxoCaixa;
  VarIncDia : Integer = 0;
  VarSaldo  : Real = 0;

implementation

uses  Principal_p, DMprincipal_p, Funcoes_p, PerguntaData_p;

{$R *.dfm}


procedure TRelatorioFluxoCaixa.MontaRelatorio;
var VarNumeroDias : Integer;
begin
  QRLabelTitulo.Caption       := 'Relatório de Fluxo de Caixa';
  QRLabelPeriodo.Caption      := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);
  QRLabelSaldoInicial.Caption := 'Saldo Inicial: ' + FormatFloat('###,###,###,#0.00',StrToFloatDef(StringReplace(PerguntaData.MaskEditValor.Text,'.','',[rfReplaceAll]),0));
  VarSaldo                    := StrToFloatDef(StringReplace(PerguntaData.MaskEditValor.Text,'.','',[rfReplaceAll]),0);
  VarNumeroDias               := DaysBetween(VarDataI,VarDataF);
  QRLoopBand1.PrintCount      := VarNumeroDias;

 //  if not (cds.IsEmpty) then
    QuickRep1.Preview
//  else
//    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);

end;

procedure TRelatorioFluxoCaixa.QRLoopBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var VarDia : TDateTime;
begin
  VarDia             := VarDataI + VarIncDia;
  QRLabelDia.Caption := DateToStr(VarDia) +' - ' + DiaExtenso(VarDia);

  cdsFluxo.Close;
  cdsFluxo.FetchParams;
  cdsFluxo.Params.ParamByName('DATAI').AsDate := VarDataI + VarIncDia;
  cdsFluxo.Open;

  if (IsWeekEnd(VarDataI + VarIncDia)) then
    begin
      QRLabelDia.Font.Color := clRed;
      if (PerguntaData.CheckBoxSabDom.Checked) then
        QRLoopBand1.Height := 0;
    end
  else
    begin
      QRLabelDia.Font.Color := clBlack;
      QRLoopBand1.Height := 26;
    end;

  QRLabelDescricao.Caption := cdsFluxoDESCRICAO.AsString;
  QRLabelCredito.Caption   := FormatFloat('###,###,###,#0.00', cdsFluxoCREDITO.AsFloat);
  QRLabelDebito.Caption    := FormatFloat('###,###,###,#0.00', cdsFluxoDEBITO.AsFloat);
  VarSaldo                 := VarSaldo + cdsFluxoCREDITO.AsFloat - cdsFluxoDEBITO.AsFloat;
  QRLabelSaldo.Caption     := FormatFloat('###,###,###,#0.00', VarSaldo);




  Inc(VarIncDia);
end;

procedure TRelatorioFluxoCaixa.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  VarIncDia := 0;
  VarSaldo  := StrToFloatDef(StringReplace(PerguntaData.MaskEditValor.Text,'.','',[rfReplaceAll]),0);
end;

end.
