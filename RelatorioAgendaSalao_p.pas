unit RelatorioAgendaSalao_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls, QuickRpt, QRCtrls,
  qrFramelines;

type
  TRelatorioAgendaSalao = class(TForm)
    QuickRep1: TQuickRep;
    qCA: TSQLQuery;
    dspCA: TDataSetProvider;
    cdsCA: TClientDataSet;
    cdsCACODIGO: TIntegerField;
    cdsCAQTD_CAMPOS: TIntegerField;
    cdsCANOME_CAMPO1: TStringField;
    cdsCANOME_CAMPO2: TStringField;
    cdsCANOME_CAMPO3: TStringField;
    cdsCANOME_CAMPO4: TStringField;
    cdsCANOME_CAMPO5: TStringField;
    cdsCANOME_CAMPO6: TStringField;
    cdsCAHORARIO_INICIO: TTimeField;
    cdsCAHORARIO_FINAL: TTimeField;
    cdsCACADASTRADO_POR: TStringField;
    cdsCACADASTRADO_EM: TSQLTimeStampField;
    cdsCAINTERVALO: TIntegerField;
    cdsCAATIVO: TIntegerField;
    dsCA: TDataSource;
    ColumnHeaderBand1: TQRBand;
    QRLoopBand1: TQRLoopBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelHorario: TQRLabel;
    QRLabelCliente: TQRLabel;
    QAG: TSQLQuery;
    QAGCDAGENDA: TIntegerField;
    QAGCDTOSADOR: TIntegerField;
    QAGNOME: TStringField;
    QAGDATA: TDateField;
    QAGHORA: TTimeField;
    QAGCDPROCEDIMENTO: TIntegerField;
    QAGOBSERVACOES: TStringField;
    QAGCADASTRADO_POR: TStringField;
    QAGCADASTRADO_EM: TSQLTimeStampField;
    QAGCDCLIENTE: TIntegerField;
    QAGAPELIDO: TStringField;
    QAGDESCRICAO: TStringField;
    dspAG: TDataSetProvider;
    cdsAG: TClientDataSet;
    cdsAGCDAGENDA: TIntegerField;
    cdsAGCDTOSADOR: TIntegerField;
    cdsAGNOME: TStringField;
    cdsAGDATA: TDateField;
    cdsAGHORA: TTimeField;
    cdsAGCDPROCEDIMENTO: TIntegerField;
    cdsAGOBSERVACOES: TStringField;
    cdsAGCADASTRADO_POR: TStringField;
    cdsAGCADASTRADO_EM: TSQLTimeStampField;
    cdsAGCDCLIENTE: TIntegerField;
    cdsAGAPELIDO: TStringField;
    cdsAGDESCRICAO: TStringField;
    dsAG: TDataSource;
    QRLabelProcedimento: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabelTitulo: TQRLabel;
    QRLabelSubTitulo: TQRLabel;
    qTosador: TSQLQuery;
    dspTosador: TDataSetProvider;
    cdsTosador: TClientDataSet;
    cdsTosadorCDTOSADOR: TIntegerField;
    cdsTosadorNOME: TStringField;
    cdsTosadorCOMISSAO: TSingleField;
    dsTosador: TDataSource;
    QRFrameline5: TQRFrameline;
    QRFrameline6: TQRFrameline;
    QRLabel4: TQRLabel;
    QRLabelObs: TQRLabel;
    procedure QRLoopBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaAgenda;
  end;

var
  RelatorioAgendaSalao: TRelatorioAgendaSalao;

  VarHoraAgenda          : TTime;
  VarCodigoTosadorAgenda : Integer;
  VarDataDia             : TdateTime;
  Contador               : integer;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaAgendaBanhoeTosa_p;

{$R *.dfm}

procedure TRelatorioAgendaSalao.MontaAgenda;
var i : Integer;
    VarQtdLinhas : Integer;
    VarNumeroHoras : Integer;
begin
  cdsCA.Open;

  VarNumeroHoras         := StrToInt(FormatDateTime('hh',cdsCAHORARIO_FINAL.AsDateTime)) - StrToInt(FormatDateTime('hh',cdsCAHORARIO_INICIO.AsDateTime));
  VarQtdLinhas           := (60 div cdsCAINTERVALO.AsInteger);
  VarQtdLinhas           := VarQtdLinhas * VarNumeroHoras;
  QRLoopBand1.PrintCount := VarQtdLinhas + 2;
  VarHoraAgenda          := cdsCAHORARIO_INICIO.AsDateTime;

  cdsTosador.Close;
  cdsTosador.FetchParams;
  cdsTosador.Params.ParamByName('CDTOSADOR').AsInteger := VarCodigoTosadorAgenda;
  cdsTosador.Open;

  QrLabelTitulo.Caption    := 'Agenda de Compromissos Dia: '+DateToStr(VarDataDia);
  QrlabelSubTitulo.Caption := 'Profissional: '+ cdsTosadorNOME.AsString;

  QuickRep1.Preview;
end;

procedure TRelatorioAgendaSalao.QRLoopBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if odd(contador)then
    QRLoopBand1.color := clWhite
  else
    QRLoopBand1.color := clBtnFace;

  Contador := Contador + 1;

  QRLabelHorario.Caption := FormatDateTime('hh:mm',VarHoraAgenda);

  cdsAg.Close;
  cdsAG.FetchParams;
  cdsAG.Params.ParamByName('CDTOSADOR').AsInteger := VarCodigoTosadorAgenda;
  cdsAG.Params.ParamByName('DATA').AsDateTime     := VarDataDia;
  cdsAG.Params.ParamByName('HORA').AsDateTime     := StrToTime(qrLabelHorario.Caption);
  cdsAg.Open;

  QRLabelCliente.Caption      := cdsAGAPELIDO.AsString;
  QRLabelProcedimento.Caption := cdsAGDESCRICAO.AsString;
  QRLabelObs.Caption          := cdsAGOBSERVACOES.AsString;

  VarHoraAgenda := IncMinute(VarHoraAgenda,cdsCAINTERVALO.AsInteger);
end;

end.
