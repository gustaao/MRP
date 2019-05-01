unit RelatorioFichaCadastral_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ExtCtrls;

type
  TRelatorioFichaCadastral = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabelTitulo: TQRLabel;
    DetailBand1: TQRBand;
    qRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    cdsRelatorioRAZAO_SOCIAL: TStringField;
    cdsRelatorioAPELIDO: TStringField;
    cdsRelatorioENDERECO: TStringField;
    cdsRelatorioNUMERO: TStringField;
    cdsRelatorioBAIRRO: TStringField;
    cdsRelatorioCIDADE: TStringField;
    cdsRelatorioCEP: TStringField;
    cdsRelatorioUF: TStringField;
    cdsRelatorioCNPJ: TStringField;
    cdsRelatorioIE: TStringField;
    cdsRelatorioLOGO: TBlobField;
    cdsRelatorioSITE: TStringField;
    cdsRelatorioTELEFONE: TStringField;
    cdsRelatorioEMAIL: TStringField;
    cdsRelatorioOPCAO_TRIBUTARIA: TStringField;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    UF: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    cdsRelatorioNOME_BANCO: TStringField;
    cdsRelatorioNUMERO_BANCO: TStringField;
    cdsRelatorioAGENCIA: TStringField;
    cdsRelatorioCONTA: TStringField;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  RelatorioFichaCadastral: TRelatorioFichaCadastral;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TRelatorioFichaCadastral.MontaRelatorio;
begin
  QRLabelTitulo.Caption := 'Ficha Cadastral Empresa';
  cdsRelatorio.Open;

  if not(cdsRelatorio.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

procedure TRelatorioFichaCadastral.PageHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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




end.
