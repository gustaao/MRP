unit TelaContaCliente_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls, Grids, DBGrids,
  StdCtrls, Buttons;

type
  TTelaContaCliente = class(TForm)
    qContaCliente: TSQLQuery;
    dspContaCliente: TDataSetProvider;
    cdsContaCliente: TClientDataSet;
    dsContaCliente: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    EditPesquisa: TEdit;
    BitBtnPesquisa: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RadioGroupPesquisa: TRadioGroup;
    cdsContaClienteCDCONTA_CORRENTE: TIntegerField;
    cdsContaClienteCDCLIENTE: TIntegerField;
    cdsContaClienteCDPEDIDO: TIntegerField;
    cdsContaClienteDATA: TDateField;
    cdsContaClienteDESCRICAO: TStringField;
    cdsContaClienteDEBITO: TFMTBCDField;
    cdsContaClienteCREDITO: TFMTBCDField;
    cdsContaClienteSALDO: TFMTBCDField;
    cdsContaClienteCDUSUARIO: TIntegerField;
    cdsContaClienteNOME: TStringField;
    cdsContaClienteAPELIDO: TStringField;
    qContaClienteCDCONTA_CORRENTE: TIntegerField;
    qContaClienteCDCLIENTE: TIntegerField;
    qContaClienteCDPEDIDO: TIntegerField;
    qContaClienteDATA: TDateField;
    qContaClienteDESCRICAO: TStringField;
    qContaClienteDEBITO: TFMTBCDField;
    qContaClienteCREDITO: TFMTBCDField;
    qContaClienteSALDO: TFMTBCDField;
    qContaClienteCDUSUARIO: TIntegerField;
    qContaClienteNOME: TStringField;
    qContaClienteAPELIDO: TStringField;
    Panel3: TPanel;
    Label1: TLabel;
    EditSaldoCliente: TEdit;
    qSoma: TSQLQuery;
    procedure dspContaClienteGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtnPesquisaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaContaCliente: TTelaContaCliente;

implementation

{$R *.dfm}

procedure TTelaContaCliente.BitBtn3Click(Sender: TObject);
begin
  cdsContaCliente.Close;
  cdsContaCliente.CommandText := 'select cc.cdconta_corrente, cc.cdcliente, cc.cdpedido, cc.data, cc.descricao,   '+
                                 'cc.debito, cc.credito, cc.saldo, cc.cdusuario, clientes.nome, clientes.apelido  '+
                                 'from conta_corrente cc  join clientes on clientes.cdcliente = cc.cdcliente      '+
                                 'order by clientes.nome ';
  cdsContaCliente.Open;
end;

procedure TTelaContaCliente.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TTelaContaCliente.BitBtnPesquisaClick(Sender: TObject);
begin
  cdsContaCliente.Filtered := False;
  case RadioGroupPesquisa.ItemIndex of
    0 : cdsContaCliente.Filter := 'UPPER(NOME)    LIKE ' + QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');
    1 : cdsContaCliente.Filter := 'UPPER(APELIDO) LIKE ' + QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');
    2 : cdsContaCliente.Filter := 'cdcliente         = ' + EditPesquisa.Text ;

  end;
  cdsContaCliente.Filtered := True;

  qSoma.Active := False;
  qSoma.SQL.Clear;
  qSoma.SQL.Add('select (sum(conta_corrente.credito)- sum(conta_corrente.debito)) as saldo');
  qSoma.SQL.Add('from conta_corrente ');
  qSoma.SQL.Add('where conta_corrente.cdcliente = '''+cdsContaClienteCDCLIENTE.AsString+''' ');
  qSoma.Active := True;

  EditSaldoCliente.Text := FloatToStrF(qSoma.FieldByName('SALDO').AsFloat,ffNumber,15,2);
end;

procedure TTelaContaCliente.dspContaClienteGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('CONTA_CORRENTE');
end;

procedure TTelaContaCliente.FormActivate(Sender: TObject);
begin
  cdsContaCliente.Open;
end;

procedure TTelaContaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.













