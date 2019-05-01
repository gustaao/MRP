unit ListagemVendedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt, ExtCtrls;

type
  TListagemVendedores = class(TForm)
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
    qVendedor: TSQLQuery;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCDVENDEDOR: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorCOMISSAO: TSingleField;
    cdsVendedorAPELIDO: TStringField;
    cdsVendedorREGIAO: TStringField;
    cdsVendedorENDERECO: TStringField;
    cdsVendedorNUMERO: TStringField;
    cdsVendedorBAIRRO: TStringField;
    cdsVendedorCIDADE: TStringField;
    cdsVendedorCEP: TStringField;
    cdsVendedorUF: TStringField;
    cdsVendedorCPF_CNPJ: TStringField;
    cdsVendedorRG_IE: TStringField;
    cdsVendedorNASC_FUNDACAO: TDateField;
    cdsVendedorMETA: TSingleField;
    cdsVendedorFONE: TStringField;
    cdsVendedorCELULAR: TStringField;
    cdsVendedorCDIBGE: TFMTBCDField;
    cdsVendedorCADASTRADO_POR: TStringField;
    cdsVendedorCADASTRADO_EM: TSQLTimeStampField;
    cdsVendedorALTERADO_POR: TStringField;
    cdsVendedorALTERADO_EM: TSQLTimeStampField;
    cdsVendedorATIVO: TIntegerField;
    dsVendedor: TDataSource;
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
  ListagemVendedores: TListagemVendedores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}


procedure TListagemVendedores.MontaRelatorio;
begin
  cdsVendedor.Open;
  qrLabelTitulo.Caption         := 'Listagem de Vendedores';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsVendedor.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

end.
