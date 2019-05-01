unit PesquisaTransportadores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons, Mask,
  ExtCtrls, Grids, DBGrids;

type
  TPesquisaTransportadores = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    qTransp: TSQLQuery;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    cdsTranspCDTRANSPORTADOR: TIntegerField;
    cdsTranspNOME: TStringField;
    cdsTranspAPELIDO: TStringField;
    cdsTranspCPF_CNPJ: TStringField;
    cdsTranspRG_IE: TStringField;
    cdsTranspFONE: TStringField;
    cdsTranspENDERECO: TStringField;
    cdsTranspNUMERO: TStringField;
    cdsTranspBAIRRO: TStringField;
    cdsTranspCIDADE: TStringField;
    cdsTranspCEP: TStringField;
    cdsTranspUF: TStringField;
    cdsTranspPLACA: TStringField;
    cdsTranspESTADO_PLACA: TStringField;
    cdsTranspANTT: TStringField;
    cdsTranspTIPO: TStringField;
    cdsTranspCGMAXIMA: TFMTBCDField;
    cdsTranspCADASTRADO_POR: TStringField;
    cdsTranspCADASTRADO_EM: TDateField;
    cdsTranspALTERADO_POR: TStringField;
    cdsTranspALTERADO_EM: TDateField;
    cdsTranspATIVO: TIntegerField;
    cdsTranspOBSERVACAO: TStringField;
    cdsTranspCOD_IBGE: TStringField;
    cdsTranspEMAIL: TStringField;
    cdsTranspWEBSITE: TStringField;
    cdsTranspNASC_FUNDACAO: TDateField;
    dsTransp: TDataSource;
    RadioGroupPesquisa: TRadioGroup;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaTransportadores: TPesquisaTransportadores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaTransportadores.BitBtn2Click(Sender: TObject);
begin
  if Trim(edtPesquisa.Text) <> '' then
    begin
      cdsTransp.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsTransp.Filter := ' CDTRANSPORTADOR = '''+edtPesquisa.Text+''' ';
        1 : cdsTransp.Filter := ' UPPER(NOME) LIKE UPPER(''%'+edtPesquisa.Text+'%'') ';
        2 : cdsTransp.Filter := ' UPPER(APELIDO) LIKE UPPER(''%'+edtPesquisa.Text+'%'') ';
        3 : cdsTransp.Filter := ' CPF_CNPJ = '''+edtPesquisa.Text+''' ';
      end;
    end;
end;

procedure TPesquisaTransportadores.BitBtnGeralClick(Sender: TObject);
begin
  cdsTransp.Filtered := False;
  cdsTransp.Refresh;
end;

procedure TPesquisaTransportadores.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaTransportadores.FormActivate(Sender: TObject);
begin
  cdsTransp.Open;
end;

end.
