unit ListagemGrupo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, QRCtrls, DB, DBClient, Provider, SqlExpr;

type
  TListagemGrupo = class(TForm)
    QuickRep1: TQuickRep;
    qGrupo: TSQLQuery;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    cdsGrupoCDGRUPO: TIntegerField;
    cdsGrupoDESCRICAO: TStringField;
    dsGrupo: TDataSource;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemGrupo: TListagemGrupo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemGrupo.MontaRelatorio;
begin
  cdsGrupo.Open;
  qrLabelTitulo.Caption         := 'Listagem de Grupo';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsGrupo.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;


end.
