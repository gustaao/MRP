unit RelatorioPedidos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TRelatorioPedidos = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRLabelPeriodo: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    qPedidos: TSQLQuery;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    cdsPedidosCDPEDIDO_ITENS: TIntegerField;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDPRODUTO: TIntegerField;
    cdsPedidosVALOR_UNITARIO: TFMTBCDField;
    cdsPedidosQTD: TFloatField;
    cdsPedidosTOTAL: TFMTBCDField;
    cdsPedidosSUBTOTAL: TFMTBCDField;
    cdsPedidosDESCONTO: TFloatField;
    cdsPedidosACRESCIMO: TFloatField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCONTADOR: TIntegerField;
    cdsPedidosDESCRICAO: TStringField;
    cdsPedidosUNID_SAIDA: TFloatField;
    cdsPedidosTIPO_UN_SAIDA: TStringField;
    cdsPedidosMARCA: TStringField;
    cdsPedidosDATA: TDateField;
    cdsPedidosTIPO: TStringField;
    cdsPedidosVALOR_TOTAL: TFloatField;
    cdsPedidosCDPESSOA: TIntegerField;
    cdsPedidosAPELIDO: TStringField;
    cdsPedidosNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioPedidos: TRelatorioPedidos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}


procedure TRelatorioPedidos.MontaRelatorio;
begin
  QRLabelTitulo.Caption := 'Pedido de Compras';


end;

end.
