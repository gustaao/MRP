unit ListagemSubGrupo_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ExtCtrls;

type
  TListagemSubGrupo = class(TForm)
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
    qSubGrupo: TSQLQuery;
    dspSubGrupo: TDataSetProvider;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoCDSUBGRUPO: TIntegerField;
    cdsSubGrupoDESCRICAO: TStringField;
    dsSubGrupo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure MontaRelatorio;
  end;

var
  ListagemSubGrupo: TListagemSubGrupo;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

Procedure TListagemSubGrupo.MontaRelatorio;
begin
  cdsSubGrupo.Open;
  qrLabelTitulo.Caption         := 'Listagem de SubGrupo';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsSubGrupo.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
