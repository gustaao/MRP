unit DMClientes_p;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TDMClientes = class(TDataModule)
    qFoneCli: TSQLQuery;
    cdsFoneCli: TClientDataSet;
    cdsFoneCliCDCLIENTES_FONE: TIntegerField;
    cdsFoneCliCDCLIENTE: TIntegerField;
    cdsFoneCliTIPO: TStringField;
    dspFoneCli: TDataSetProvider;
    dsFoneCli: TDataSource;
    qFoneCliCDCLIENTES_FONE: TIntegerField;
    qFoneCliCDCLIENTE: TIntegerField;
    qFoneCliTIPO: TStringField;
    qFoneCliAPELIDO: TStringField;
    qMascote: TSQLQuery;
    cdsMascote: TClientDataSet;
    dspMascote: TDataSetProvider;
    dsMascote: TDataSource;
    qMascoteCDMASCOTE: TIntegerField;
    qMascoteCDRACA: TIntegerField;
    qMascoteCDTIPO: TIntegerField;
    qMascoteCDCLIENTE: TIntegerField;
    qMascoteNOME: TStringField;
    qMascoteCOR: TStringField;
    qMascoteNASCIMENTO: TDateField;
    qMascoteOBS: TBlobField;
    qMascoteDATA_CADASTRO: TDateField;
    qMascoteAPELIDO: TStringField;
    qMascoteRACA: TStringField;
    qMascoteTIPO: TStringField;
    cdsMascoteCDMASCOTE: TIntegerField;
    cdsMascoteCDRACA: TIntegerField;
    cdsMascoteCDTIPO: TIntegerField;
    cdsMascoteCDCLIENTE: TIntegerField;
    cdsMascoteNOME: TStringField;
    cdsMascoteCOR: TStringField;
    cdsMascoteNASCIMENTO: TDateField;
    cdsMascoteOBS: TBlobField;
    cdsMascoteDATA_CADASTRO: TDateField;
    cdsMascoteAPELIDO: TStringField;
    cdsMascoteRACA: TStringField;
    cdsMascoteTIPO: TStringField;
    qTipo: TSQLQuery;
    cdsTipo: TClientDataSet;
    dspTipo: TDataSetProvider;
    dsTipo: TDataSource;
    qRaca: TSQLQuery;
    cdsRacas: TClientDataSet;
    dspRacas: TDataSetProvider;
    dsRacas: TDataSource;
    cdsTipoCDTIPO: TIntegerField;
    cdsTipoDESCRICAO: TStringField;
    cdsRacasCDRACA: TIntegerField;
    cdsRacasDESCRICAO: TStringField;
    qContato: TSQLQuery;
    cdsContato: TClientDataSet;
    dspContato: TDataSetProvider;
    dsContato: TDataSource;
    qContatoCDCLIENTE_CONTATO: TIntegerField;
    qContatoCDCLIENTE: TIntegerField;
    qContatoNOME: TStringField;
    qContatoCARGO: TStringField;
    qContatoMAIL: TStringField;
    qContatoFONE: TStringField;
    qContatoANIVERSARIO: TDateField;
    qContatoTIME_FUTEBOL: TStringField;
    qContatoOBSERVACOES: TBlobField;
    qContatoCLIENTE: TStringField;
    cdsContatoCDCLIENTE_CONTATO: TIntegerField;
    cdsContatoCDCLIENTE: TIntegerField;
    cdsContatoNOME: TStringField;
    cdsContatoCARGO: TStringField;
    cdsContatoMAIL: TStringField;
    cdsContatoFONE: TStringField;
    cdsContatoANIVERSARIO: TDateField;
    cdsContatoTIME_FUTEBOL: TStringField;
    cdsContatoOBSERVACOES: TBlobField;
    cdsContatoCLIENTE: TStringField;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
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
    dsContatoCli: TDataSource;
    dspContatoCli: TDataSetProvider;
    qContatoCli: TSQLQuery;
    cdsContatoCli: TClientDataSet;
    cdsContatoCliCDCLIENTE_CONTATO: TIntegerField;
    cdsContatoCliCDCLIENTE: TIntegerField;
    cdsContatoCliNOME: TStringField;
    cdsContatoCliCARGO: TStringField;
    cdsContatoCliMAIL: TStringField;
    cdsContatoCliFONE: TStringField;
    cdsContatoCliANIVERSARIO: TDateField;
    cdsContatoCliTIME_FUTEBOL: TStringField;
    cdsContatoCliOBSERVACOES: TBlobField;
    cdsContatoCliCLIENTE: TStringField;
    qContatoCliCDCLIENTE_CONTATO: TIntegerField;
    qContatoCliCDCLIENTE: TIntegerField;
    qContatoCliNOME: TStringField;
    qContatoCliCARGO: TStringField;
    qContatoCliMAIL: TStringField;
    qContatoCliFONE: TStringField;
    qContatoCliANIVERSARIO: TDateField;
    qContatoCliTIME_FUTEBOL: TStringField;
    qContatoCliOBSERVACOES: TBlobField;
    qContatoCliCLIENTE: TStringField;
    qLinha: TSQLQuery;
    cdsLinha: TClientDataSet;
    dspLinha: TDataSetProvider;
    dsLinha: TDataSource;
    cdsLinhaCDLINHA_PRODUTOS: TIntegerField;
    cdsLinhaDESCRICAO: TStringField;
    cdsLinhaCADASTRADO_POR: TStringField;
    cdsLinhaCADASTRADO_EM: TSQLTimeStampField;
    cdsLinhaALTERADO_POR: TStringField;
    cdsLinhaALTERADO_EM: TSQLTimeStampField;
    cdsClientesCDLINHA_PRODUTOS: TIntegerField;
    qClienteLinha: TSQLQuery;
    cdsClienteLinha: TClientDataSet;
    dslClienteLinha: TDataSetProvider;
    dsClienteLinha: TDataSource;
    qClienteLinhaCDCLIENTE_LINHA: TIntegerField;
    qClienteLinhaCDCLIENTE: TIntegerField;
    qClienteLinhaCDLINHA_PRODUTOS: TIntegerField;
    qClienteLinhaCADASTRADO_POR: TStringField;
    qClienteLinhaCADASTRADO_EM: TSQLTimeStampField;
    qClienteLinhaALTERADO_POR: TStringField;
    qClienteLinhaALTERADO_EM: TSQLTimeStampField;
    qClienteLinhaDESCRICAO: TStringField;
    cdsClienteLinhaCDCLIENTE_LINHA: TIntegerField;
    cdsClienteLinhaCDLINHA_PRODUTOS: TIntegerField;
    cdsClienteLinhaCDCLIENTE: TIntegerField;
    cdsClienteLinhaCADASTRADO_POR: TStringField;
    cdsClienteLinhaCADASTRADO_EM: TSQLTimeStampField;
    cdsClienteLinhaALTERADO_POR: TStringField;
    cdsClienteLinhaALTERADO_EM: TSQLTimeStampField;
    cdsClienteLinhaDESCRICAO: TStringField;
    qContatoCliDEPARTAMENTO: TStringField;
    cdsContatoCliDEPARTAMENTO: TStringField;
    qFoneContato: TSQLQuery;
    cdsFoneContato: TClientDataSet;
    dspFoneContato: TDataSetProvider;
    dsFoneContato: TDataSource;
    cdsFoneContatoCDCLIENTE_CONTATO_FONE: TIntegerField;
    cdsFoneContatoCDCLIENTE_CONTATO: TIntegerField;
    cdsFoneContatoDESCRICAO: TStringField;
    cdsFoneContatoFONE: TStringField;
    cdsFoneContatoCADASTRADO_POR: TStringField;
    cdsFoneContatoCADASTRADO_EM: TSQLTimeStampField;
    qFoneCliNUMERO: TStringField;
    cdsFoneCliAPELIDO: TStringField;
    cdsFoneCliNUMERO: TStringField;
    procedure dspMascoteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure dspContatoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsClientesAfterOpen(DataSet: TDataSet);
    procedure dspContatoCliGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dslClienteLinhaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsFoneContatoAfterScroll(DataSet: TDataSet);
    procedure dspFoneCliGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClientes: TDMClientes;

implementation


uses Principal_p, DMPrincipal_p, Funcoes_p, Clientes_p, TelaContatoCliente_p;

{$R *.dfm}

procedure TDMClientes.cdsClientesAfterOpen(DataSet: TDataSet);
begin
  cdsContatoCli.Open;
  cdsFoneCli.Open;
  if Clientes <> nil then
    begin
      clientes.ComboBoxTipoPessoa.ItemIndex := cdsClientesTIPO_PESSOA.AsInteger;
    end;
end;

procedure TDMClientes.cdsClientesAfterScroll(DataSet: TDataSet);
begin
  cdsMascote.Close;
  cdsMascote.FetchParams;
  cdsMascote.Params.ParamByName('CDCLIENTE').AsInteger := cdsClientesCDCLIENTE.AsInteger;
  cdsMascote.Open;

  cdsContato.Close;
  cdsContato.FetchParams;
  cdsContato.Params.ParamByName('CDCLIENTE').AsInteger := cdsClientesCDCLIENTE.AsInteger;
  cdsContato.Open;
end;

procedure TDMClientes.cdsFoneContatoAfterScroll(DataSet: TDataSet);
begin
  if TelaContatoCliente <> nil then
    begin
      if (cdsContatoCli.State = dsBrowse)  then
        begin
          TelaContatoCliente.MaskEditDescricaoFone.Text  := cdsFoneContatoDESCRICAO.AsString;
          TelaContatoCliente.MaskEditFone.Text           := cdsFoneContatoFONE.AsString;
        end;
    end;
end;

procedure TDMClientes.dslClienteLinhaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'CLIENTES_LINHA';
end;

procedure TDMClientes.dspContatoCliGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('CLIENTES_CONTATO');
end;

procedure TDMClientes.dspContatoGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('CLIENTES_CONTATO');
end;

procedure TDMClientes.dspFoneCliGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('CLIENTES_FONE');
end;

procedure TDMClientes.dspMascoteGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := ('MASCOTE');
end;

end.
