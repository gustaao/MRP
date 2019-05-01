unit RelatorioDemosntrativoConta_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls, ExtCtrls;

type
  TRelatorioDemonstrativoConta = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    qContas: TSQLQuery;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    dsContas: TDataSource;
    cdsContasCONTA: TStringField;
    cdsContasDESCRICAO_CONTA: TStringField;
    cdsContasNUMERO_DOCUMENTO: TStringField;
    cdsContasDESCRICAO: TStringField;
    cdsContasDATA_PAGTO: TDateField;
    cdsContasFORMA_PAGTO: TStringField;
    cdsContasSAIDA: TFMTBCDField;
    cdsContasENTRADA: TFMTBCDField;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioDemonstrativoConta: TRelatorioDemonstrativoConta;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaData_p;

{$R *.dfm}


procedure TRelatorioDemonstrativoConta.MontaRelatorio;
begin
  QRLabelTitulo.Caption  := 'Relatório Demonstrativo de Contas';
  QRLabelPeriodo.Caption := '';//'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

  cdsContas.Open;

  cdsContas.Filtered := False;
//  cdsContas.Filter := ( 'DATA_PAGTO = '''+FormatDateTime('DD/MM/YYYY',VarDataI)+''' or DATA_PAGTO <= '''+FormatDateTime('DD/MM/YYYY',VarDataF)+
//                        ''' CONTA = '''+PerguntaData.MaskEditConta.Text+''' ');
  cdsContas.Filter := ( 'CONTA = '''+PerguntaData.MaskEditConta.Text+''' ');
  cdsContas.Filtered := True;

  if not(cdsContas.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
