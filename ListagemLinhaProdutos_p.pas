unit ListagemLinhaProdutos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ExtCtrls;

type
  TListagemLinhaProdutos = class(TForm)
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
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    qListagem: TSQLQuery;
    dspListagem: TDataSetProvider;
    cdsListagem: TClientDataSet;
    dsListagem: TDataSource;
    cdsListagemCDLINHA_PRODUTOS: TIntegerField;
    cdsListagemDESCRICAO: TStringField;
    cdsListagemCADASTRADO_POR: TStringField;
    cdsListagemCADASTRADO_EM: TSQLTimeStampField;
    cdsListagemALTERADO_POR: TStringField;
    cdsListagemALTERADO_EM: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemLinhaProdutos: TListagemLinhaProdutos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemLinhaProdutos.MontaRelatorio;
begin
  cdsListagem.Open;
  qrLabelTitulo.Caption         := 'Listagem de Linha de Produtos';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsListagem.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;



end.
