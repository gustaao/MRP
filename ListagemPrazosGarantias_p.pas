unit ListagemPrazosGarantias_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TListagemPrazosGarantias = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qCN: TSQLQuery;
    qCNCDCALENDARIO_NEGOCIOS: TIntegerField;
    qCNDESCRICAO: TStringField;
    qCNPRAZO: TIntegerField;
    qCNOBS: TBlobField;
    qCNPRAZO_AVISO: TIntegerField;
    qCNCDPRODUTO: TIntegerField;
    qCNPRODUTO: TStringField;
    qCNCDINTERNO: TStringField;
    qCNCADASTRADO_POR: TStringField;
    qCNCADASTRADO_EM: TSQLTimeStampField;
    qCNALTERADO_POR: TStringField;
    qCNALTERADO_EM: TSQLTimeStampField;
    dspCN: TDataSetProvider;
    cdsCN: TClientDataSet;
    cdsCNCDCALENDARIO_NEGOCIOS: TIntegerField;
    cdsCNDESCRICAO: TStringField;
    cdsCNPRAZO: TIntegerField;
    cdsCNOBS: TBlobField;
    cdsCNPRAZO_AVISO: TIntegerField;
    cdsCNCDPRODUTO: TIntegerField;
    cdsCNPRODUTO: TStringField;
    cdsCNCDINTERNO: TStringField;
    cdsCNCADASTRADO_POR: TStringField;
    cdsCNCADASTRADO_EM: TSQLTimeStampField;
    cdsCNALTERADO_POR: TStringField;
    cdsCNALTERADO_EM: TSQLTimeStampField;
    dsCN: TDataSource;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemPrazosGarantias: TListagemPrazosGarantias;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemPrazosGarantias.MontaRelatorio;
begin
  cdsCN.Open;

  qrLabelTitulo.Caption         := 'Listagem de Prazos & Garantias';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsCN.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;



end.
