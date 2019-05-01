unit ListagemFornecedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TListagemFornecedores = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabelTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qForn: TSQLQuery;
    cdsForn: TClientDataSet;
    dspForn: TDataSetProvider;
    dsForn: TDataSource;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    cdsFornCDFORNECEDOR: TIntegerField;
    cdsFornCDPESSOA: TIntegerField;
    cdsFornNOME: TStringField;
    cdsFornAPELIDO: TStringField;
    cdsFornENDERECO: TStringField;
    cdsFornNUMERO: TStringField;
    cdsFornBAIRRO: TStringField;
    cdsFornCIDADE: TStringField;
    cdsFornUF: TStringField;
    cdsFornCONTATO: TStringField;
    cdsFornSITE: TStringField;
    cdsFornMAIL: TStringField;
    cdsFornCPF_CNPJ: TStringField;
    cdsFornRG_IE: TStringField;
    cdsFornCOD_IBGE: TStringField;
    cdsFornDATA_CADASTRO: TDateField;
    cdsFornTIPO_PESSOA: TIntegerField;
    cdsFornFONE: TStringField;
    cdsFornFAX: TStringField;
    cdsFornATIVO: TIntegerField;
    cdsFornCODSEGMENTO: TIntegerField;
    cdsFornISO: TIntegerField;
    cdsFornGRAU_IMPORTANCIA: TStringField;
    cdsFornCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    cdsFornREACH_ROHS: TIntegerField;
    cdsFornCOD_PAIS: TStringField;
    cdsFornNASC_FUNDACAO: TDateField;
    cdsFornPAIS: TStringField;
    cdsFornCEP: TStringField;
    cdsFornEMAIL_NFE: TStringField;
    cdsFornPNG: TIntegerField;
    cdsFornLIMITE_CREDITO: TFloatField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListagemFornecedores: TListagemFornecedores;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;


{$R *.dfm}

procedure TListagemFornecedores.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  cdsForn.Open;
  qrLabelTitulo.Caption         := 'Listagem de Fornecedores';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if cdsFornTIPO_PESSOA.AsInteger = 1 then
    cdsFornCPF_CNPJ.EditMask := '99.999999/9999-99;0;_'
  else
    cdsFornCPF_CNPJ.EditMask := '999.999.999-99;0;_';
end;

end.
