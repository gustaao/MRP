unit ListagemProdutos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, Provider, SqlExpr;

type
  TListagemProdutos = class(TForm)
    qProdutos: TSQLQuery;
    qProdutosCDPRODUTO: TIntegerField;
    qProdutosCDFORNECEDOR: TIntegerField;
    qProdutosCDINTERNO: TStringField;
    qProdutosCDBARRAS: TStringField;
    qProdutosCDGRUPO: TIntegerField;
    qProdutosCDSUBGRUPO: TIntegerField;
    qProdutosDESCRICAO: TStringField;
    qProdutosVALOR_CUSTO: TFloatField;
    qProdutosVALOR_VENDA: TFloatField;
    qProdutosVALOR_CONTABIL: TFloatField;
    qProdutosMARGEM: TFloatField;
    qProdutosUNID_ENTRADA: TFloatField;
    qProdutosUNID_SAIDA: TFloatField;
    qProdutosSERVICO: TIntegerField;
    qProdutosIPI: TFloatField;
    qProdutosICMS: TFloatField;
    qProdutosCFOP: TStringField;
    qProdutosSIT_TRIBUTARIA: TStringField;
    qProdutosTIPO_UN_ENTRADA: TStringField;
    qProdutosTIPO_UN_SAIDA: TStringField;
    qProdutosCDCENTRO_CUSTO: TIntegerField;
    qProdutosESTOQUE_QTD: TFloatField;
    qProdutosESTOQUE_MINIMO: TFloatField;
    qProdutosUSO_CONSUMO: TIntegerField;
    qProdutosAPLICACAO: TStringField;
    qProdutosMARCA: TStringField;
    qProdutosNCM: TStringField;
    qProdutosSITUACAO_PIS: TStringField;
    qProdutosSITUACAO_COFINS: TStringField;
    qProdutosCDORIGEM: TIntegerField;
    qProdutosCSOSN: TStringField;
    qProdutosGRUPO: TStringField;
    qProdutosSUBGRUPO: TStringField;
    qProdutosAPELIDO: TStringField;
    qProdutosORIGEM: TStringField;
    qProdutosDESC_SIT_PIS: TStringField;
    qProdutosDESC_ST: TStringField;
    qProdutosDESC_CSOSN: TStringField;
    qProdutosDESC_SIT_COFINS: TStringField;
    qProdutosSITUACAO_IPI_ENTRADA: TStringField;
    qProdutosSITUACAO_IPI_SAIDA: TStringField;
    qProdutosENQ_IPI_ENTRADA: TStringField;
    qProdutosENQ_IPI_SAIDA: TStringField;
    qProdutosDESC_SIT_IPIE: TStringField;
    qProdutosDESC_SIT_IPIS: TStringField;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    cdsProdutosCDPRODUTO: TIntegerField;
    cdsProdutosCDFORNECEDOR: TIntegerField;
    cdsProdutosCDINTERNO: TStringField;
    cdsProdutosCDBARRAS: TStringField;
    cdsProdutosCDGRUPO: TIntegerField;
    cdsProdutosCDSUBGRUPO: TIntegerField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosVALOR_CUSTO: TFloatField;
    cdsProdutosVALOR_VENDA: TFloatField;
    cdsProdutosVALOR_CONTABIL: TFloatField;
    cdsProdutosMARGEM: TFloatField;
    cdsProdutosUNID_ENTRADA: TFloatField;
    cdsProdutosUNID_SAIDA: TFloatField;
    cdsProdutosSERVICO: TIntegerField;
    cdsProdutosIPI: TFloatField;
    cdsProdutosICMS: TFloatField;
    cdsProdutosCFOP: TStringField;
    cdsProdutosSIT_TRIBUTARIA: TStringField;
    cdsProdutosTIPO_UN_ENTRADA: TStringField;
    cdsProdutosTIPO_UN_SAIDA: TStringField;
    cdsProdutosCDCENTRO_CUSTO: TIntegerField;
    cdsProdutosESTOQUE_QTD: TFloatField;
    cdsProdutosESTOQUE_MINIMO: TFloatField;
    cdsProdutosUSO_CONSUMO: TIntegerField;
    cdsProdutosAPLICACAO: TStringField;
    cdsProdutosMARCA: TStringField;
    cdsProdutosNCM: TStringField;
    cdsProdutosSITUACAO_PIS: TStringField;
    cdsProdutosSITUACAO_COFINS: TStringField;
    cdsProdutosCDORIGEM: TIntegerField;
    cdsProdutosCSOSN: TStringField;
    cdsProdutosGRUPO: TStringField;
    cdsProdutosSUBGRUPO: TStringField;
    cdsProdutosAPELIDO: TStringField;
    cdsProdutosORIGEM: TStringField;
    cdsProdutosDESC_SIT_PIS: TStringField;
    cdsProdutosDESC_ST: TStringField;
    cdsProdutosDESC_CSOSN: TStringField;
    cdsProdutosDESC_SIT_COFINS: TStringField;
    cdsProdutosSITUACAO_IPI_ENTRADA: TStringField;
    cdsProdutosSITUACAO_IPI_SAIDA: TStringField;
    cdsProdutosENQ_IPI_ENTRADA: TStringField;
    cdsProdutosENQ_IPI_SAIDA: TStringField;
    cdsProdutosDESC_SIT_IPIE: TStringField;
    cdsProdutosDESC_SIT_IPIS: TStringField;
    dsProdutos: TDataSource;
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemProdutos: TListagemProdutos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemProdutos.MontaRelatorio;
begin
  cdsProdutos.Open;
  qrLabelTitulo.Caption         := 'Listagem de Produtos';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsProdutos.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
