unit RelatorioOrcamento_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls;

type
  TRelatorioOrcamento = class(TForm)
    QuickRep1: TQuickRep;
    qPedidos: TSQLQuery;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabelTitulo: TQRLabel;
    QRLabel3: TQRLabel;
    pedido: TQRDBText;
    QRLabel4: TQRLabel;
    Nome: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel45: TQRLabel;
    cdsPedidosCDPEDIDO_ITENS: TIntegerField;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDPRODUTO: TIntegerField;
    cdsPedidosVALOR_UNITARIO: TFMTBCDField;
    cdsPedidosQTD: TFloatField;
    cdsPedidosVALOR_TOTAL: TFMTBCDField;
    cdsPedidosSUBTOTAL: TFMTBCDField;
    cdsPedidosDESCONTO: TFloatField;
    cdsPedidosACRESCIMO: TFloatField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCONTADOR: TIntegerField;
    cdsPedidosDESCRICAO: TStringField;
    cdsPedidosUNID_SAIDA: TFloatField;
    cdsPedidosTIPO_UN_SAIDA: TStringField;
    cdsPedidosMARCA: TStringField;
    cdsPedidosNOME: TStringField;
    cdsPedidosDATA: TDateField;
    cdsPedidosTOTAL_VENDA: TFloatField;
    QRLabelCidadeData: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabelEndereco: TQRLabel;
    QRLabelEndereco2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabelValidade: TQRLabel;
    QRLabel11: TQRLabel;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
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
  RelatorioOrcamento: TRelatorioOrcamento;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PerguntaOrcamento_p;

{$R *.dfm}


procedure TRelatorioOrcamento.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  case PerguntaOrcamento.RadioGroupData.ItemIndex of
    0 : QRLabelCidadeData.Caption := ConvertePalavras(DMPrincipal.cdsEmpresaCIDADE.AsString) + ', '  +
                                     FormatDateTime('dd "de" mmmm "de" yyyy',cdsPedidosDATA.AsDateTime);
    1 : QRLabelCidadeData.Caption := ConvertePalavras(DMPrincipal.cdsEmpresaCIDADE.AsString) + ', '  +
                                     FormatDateTime('dd "de" mmmm "de" yyyy',DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime);
  end;
end;

procedure TRelatorioOrcamento.MontaRelatorio;
begin
  QRLabelTitulo.Caption         := DMPrincipal.cdsEmpresaRAZAO_SOCIAL.AsString;
  QRLabelEndereco.Caption       := DMPrincipal.cdsEmpresaENDERECO.AsString +', ' + DMPrincipal.cdsEmpresaNUMERO.AsString;
  QRLabelEndereco2.Caption      := DMPrincipal.cdsEmpresaBAIRRO.AsString   +' - '+ ConvertePalavras(DMPrincipal.cdsEmpresaCIDADE.AsString) + ' CEP: ' +DMPrincipal.cdsEmpresaCEP.AsString;
  QuickRep1.PreviewInitialState := wsMaximized;

  cdsPedidos.Close;
  cdsPedidos.FetchParams;
  cdsPedidos.Params.ParamByName('CDPEDIDO').AsInteger := StrToIntDef(PerguntaOrcamento.MaskEditCDPedido.Text,0);
  cdsPedidos.Open;

  QuickRep1.Preview;


end;





procedure TRelatorioOrcamento.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var b1 : TStream;
begin
  // logo da empresa
  b1 := DMPrincipal.cdsEmpresa.CreateBlobStream(DMPrincipal.cdsEmpresa.FieldByName('LOGO'),bmRead);
  if b1.Size > 0 then
    begin
      try
        //QrImage1.Picture.Assign(b1);
        QrImage1.Picture.Bitmap.LoadFromStream(b1);
      except
      end;
    end
  else
    QrImage1.Picture.Assign(nil);
  b1.Free;
end;

procedure TRelatorioOrcamento.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QrlabelValidade.Caption := 'Validade do Orçamento: '+ PerguntaOrcamento.MaskEditValidade.Text + ' dias.';

end;

end.
