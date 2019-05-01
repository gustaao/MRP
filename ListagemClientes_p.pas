unit ListagemClientes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  pngimage;

type
  TListagemClientes = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    cdsClientesCDCLIENTE: TIntegerField;
    cdsClientesCDPESSOA: TIntegerField;
    cdsClientesCDMASCOTE: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesDATA_CADASTRO: TDateField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesPNG: TIntegerField;
    cdsClientesEMAIL: TStringField;
    cdsClientesRESTRICAO: TIntegerField;
    cdsClientesTIPO_RESTRICAO: TStringField;
    cdsClientesFONE: TStringField;
    cdsClientesFONE2: TStringField;
    cdsClientesNASC_FUNDACAO: TDateField;
    cdsClientesCOD_IBGE: TStringField;
    cdsClientesPAIS: TStringField;
    cdsClientesCOD_PAIS: TStringField;
    cdsClientesSITE: TStringField;
    cdsClientesEMAIL_NFE: TStringField;
    cdsClientesCADASTRADO_POR: TStringField;
    cdsClientesALTERADO_POR: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesCADASTRADO_EM: TDateField;
    cdsClientesALTERADO_EM: TDateField;
    cdsClientesLIMITE_CREDITO: TFloatField;
    cdsClientesCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaRelatorio;
  end;

var
  ListagemClientes: TListagemClientes;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TListagemClientes.MontaRelatorio;
begin
  cdsClientes.Open;
  qrLabelTitulo.Caption         := 'Listagem de Clientes';
  QuickRep1.ReportTitle         := qrLabelTitulo.Caption;
  QuickRep1.PreviewInitialState := wsMaximized;

  if not (cdsClientes.IsEmpty) then
    QuickRep1.Preview
  else
    Application.MessageBox('Atenção: Nenhum Registro Encontrado.','Aviso'  ,mb_OK);
end;

procedure TListagemClientes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if cdsClientesTIPO_PESSOA.AsInteger = 1 then
    cdsClientesCPF_CNPJ.EditMask := '99.999999/9999-99;0;_'
  else
    cdsClientesCPF_CNPJ.EditMask := '999.999.999-99;0;_';
end;

end.
