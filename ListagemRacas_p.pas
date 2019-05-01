unit ListagemRacas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ExtCtrls;

type
  TListagemRacas = class(TForm)
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
    QRLabel5: TQRLabel;
    qRaca: TSQLQuery;
    dspRaca: TDataSetProvider;
    cdsRaca: TClientDataSet;
    dsRaca: TDataSource;
    QRLabel4: TQRLabel;
    cdsRacaCDRACA: TIntegerField;
    cdsRacaDESCRICAO: TStringField;
    cdsRacaCADASTRADO_POR: TStringField;
    cdsRacaCADASTRADO_EM: TSQLTimeStampField;
    cdsRacaALTERADO_POR: TStringField;
    cdsRacaALTERADO_EM: TSQLTimeStampField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemRacas: TListagemRacas;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemRacas.MontaRelatorio;
begin
  cdsRaca.Open;
  qrLabelTitulo.Caption         := 'Listagem de Raças';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsRaca.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
