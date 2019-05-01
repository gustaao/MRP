unit DMForncedores_p;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TDMFornecedores = class(TDataModule)
    qFoneForn: TSQLQuery;
    cdsFoneForn: TClientDataSet;
    cdsFoneFornCDFORNECEDORES_FONE: TIntegerField;
    cdsFoneFornCDFORNECEDOR: TIntegerField;
    cdsFoneFornTIPO: TStringField;
    dspFoneForn: TDataSetProvider;
    dsFoneForn: TDataSource;
    qForn: TSQLQuery;
    cdsForn: TClientDataSet;
    dspForn: TDataSetProvider;
    dsForn: TDataSource;
    cdsFoneFornAPELIDO: TStringField;
    qFoneFornCDFORNECEDORES_FONE: TIntegerField;
    qFoneFornCDFORNECEDOR: TIntegerField;
    qFoneFornTIPO: TStringField;
    qFoneFornAPELIDO: TStringField;
    qContato: TSQLQuery;
    cdsContato: TClientDataSet;
    dspContato: TDataSetProvider;
    dsContato: TDataSource;
    qContatoCDFORNECEDOR_CONTATO: TIntegerField;
    qContatoCDFORNECEDOR: TIntegerField;
    qContatoNOME: TStringField;
    qContatoCARGO: TStringField;
    qContatoMAIL: TStringField;
    qContatoFORNECEDOR: TStringField;
    cdsContatoCDFORNECEDOR_CONTATO: TIntegerField;
    cdsContatoCDFORNECEDOR: TIntegerField;
    cdsContatoNOME: TStringField;
    cdsContatoCARGO: TStringField;
    cdsContatoMAIL: TStringField;
    cdsContatoFORNECEDOR: TStringField;
    qSeg: TSQLQuery;
    cdsSeg: TClientDataSet;
    dspSeg: TDataSetProvider;
    dsSeg: TDataSource;
    cdsSegCONTROLE: TIntegerField;
    cdsSegDESCRICAO: TStringField;
    qContatoFONE: TStringField;
    qContatoANIVERSARIO: TDateField;
    qContatoTIME_FUTEBOL: TStringField;
    qContatoOBSERVACOES: TBlobField;
    cdsContatoANIVERSARIO: TDateField;
    cdsContatoTIME_FUTEBOL: TStringField;
    cdsContatoOBSERVACOES: TBlobField;
    cdsContatoFONE: TStringField;
    cdsFornCDFORNECEDOR: TIntegerField;
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
    cdsFornCDPESSOA: TIntegerField;
    cdsFornLIMITE_CREDITO: TFloatField;
    cdsFornISO_14000: TIntegerField;
    qFoneFornNUMERO: TStringField;
    cdsFoneFornNUMERO: TStringField;
    procedure dspFoneFornGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspContatoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsFornAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFornecedores: TDMFornecedores;

implementation

{$R *.dfm}

uses Principal_p, DMPrincipal_p, Fornecedores_p;




procedure TDMFornecedores.cdsFornAfterOpen(DataSet: TDataSet);
begin
  cdsFoneForn.Open;
  cdsContato.Open;
end;

procedure TDMFornecedores.dspContatoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('FORNECEDORES_CONTATO');
end;

procedure TDMFornecedores.dspFoneFornGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('FORNECEDORES_FONE');
end;

end.












