unit ListagemPlanoContas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, QRCtrls, DB, DBClient, Provider, SqlExpr;

type
  TListagemPlanoContas = class(TForm)
    QuickRep1: TQuickRep;
    qPlContas: TSQLQuery;
    dspPlContas: TDataSetProvider;
    cdsPlContas: TClientDataSet;
    cdsPlContasCDPLANO_CONTAS: TIntegerField;
    cdsPlContasCONTA: TStringField;
    cdsPlContasDESCRICAO_CONTA: TStringField;
    cdsPlContasCONTA_DEBITO: TIntegerField;
    cdsPlContasCONTA_CREDITO: TIntegerField;
    cdsPlContasACEITA_LANCAMENTO: TIntegerField;
    cdsPlContasATIVA: TIntegerField;
    cdsPlContasCDCENTROCUSTO: TIntegerField;
    cdsPlContasCADASTRADO_POR: TStringField;
    cdsPlContasCADASTRADO_EM: TSQLTimeStampField;
    cdsPlContasALTERADO_POR: TStringField;
    cdsPlContasALTERADO_EM: TSQLTimeStampField;
    dsPlcontas: TDataSource;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemPlanoContas: TListagemPlanoContas;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}

procedure TListagemPlanoContas.MontaRelatorio;
begin
  cdsPlContas.Open;
  qrLabelTitulo.Caption         := 'Listagem de Plano de Contas';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsPlContas.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
