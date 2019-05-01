unit RelatorioMovimentacaoProduto_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls, ExtCtrls;

type
  TRelatorioMovimentacaoProduto = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    qRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    cdsRelatorioCDMOVIMENTO: TIntegerField;
    cdsRelatorioCDPRODUTO: TIntegerField;
    cdsRelatorioDATA: TDateField;
    cdsRelatorioHORA: TTimeField;
    cdsRelatorioMOVIMENTO: TStringField;
    cdsRelatorioSALDO_ANTERIOR: TFloatField;
    cdsRelatorioENTRADA: TFloatField;
    cdsRelatorioSAIDA: TFloatField;
    cdsRelatorioSALDO_ATUAL: TFloatField;
    cdsRelatorioCDUSUARIO: TIntegerField;
    cdsRelatorioCDINTERNO: TStringField;
    cdsRelatorioDESCRICAO: TStringField;
    cdsRelatorioNOME: TStringField;
    QRLabel2: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure MontaRelatorio;
  end;

var
  RelatorioMovimentacaoProduto: TRelatorioMovimentacaoProduto;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaData_p;

{$R *.dfm}

procedure TRelatorioMovimentacaoProduto.MontaRelatorio;
begin
  QRLabelTitulo.Caption  := 'Relatório de Movimentação de Produto';
  QRLabelPeriodo.Caption := 'Período de: '+DateToStr(VarDataI)+' até: '+DateToStr(VarDataF);

  cdsRelatorio.Close;
  cdsRelatorio.FetchParams;
  cdsRelatorio.Params.ParamByName('CDPRODUTO').AsInteger := DMPrincipal.qPesquisa.FieldByName('CDPRODUTO').AsInteger;
  cdsRelatorio.Open;

  if not (cdsRelatorio.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;


end.
