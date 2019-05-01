unit ConsultaCliente_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, FMTBcd, DB, Provider,
  DBClient, SqlExpr, Midaslib;

type
  TConsultaCliente = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    EditPesquisa: TEdit;
    BitBtnPesquisa: TBitBtn;
    BitBtnGeral: TBitBtn;
    BitBtnSair: TBitBtn;
    RadioGroupPesquisa: TRadioGroup;
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    cdsClientesCDCLIENTE: TIntegerField;
    cdsClientesCDMASCOTE: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesDATA_CADASTRO: TDateField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesPNG: TIntegerField;
    cdsClientesEMAIL: TStringField;
    cdsClientesLIMITE_CREDITO: TSingleField;
    cdsClientesRESTRICAO: TIntegerField;
    cdsClientesTIPO_RESTRICAO: TStringField;
    cdsClientesFONE: TStringField;
    cdsClientesFONE2: TStringField;
    cdsClientesNASC_FUNDACAO: TDateField;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    qFoneCli: TSQLQuery;
    qFoneCliCDCLIENTES_FONE: TIntegerField;
    qFoneCliCDCLIENTE: TIntegerField;
    qFoneCliTIPO: TStringField;
    qFoneCliNUMERO: TStringField;
    qFoneCliAPELIDO: TStringField;
    cdsFoneCli: TClientDataSet;
    cdsFoneCliCDCLIENTES_FONE: TIntegerField;
    cdsFoneCliCDCLIENTE: TIntegerField;
    cdsFoneCliTIPO: TStringField;
    cdsFoneCliNUMERO: TStringField;
    dspFoneCli: TDataSetProvider;
    dsFoneCli: TDataSource;
    pnlDireita: TPanel;
    pnlCliente: TPanel;
    DBGridFone: TDBGrid;
    DBGrid1: TDBGrid;
    DBGridMascote: TDBGrid;
    cdsMascote: TClientDataSet;
    dsMascote: TDataSource;
    dspMascote: TDataSetProvider;
    qMascote: TSQLQuery;
    cdsMascoteCDMASCOTE: TIntegerField;
    cdsMascoteCDRACA: TIntegerField;
    cdsMascoteCDTIPO: TIntegerField;
    cdsMascoteCDCLIENTE: TIntegerField;
    cdsMascoteNOME: TStringField;
    cdsMascoteCOR: TStringField;
    cdsMascoteNASCIMENTO: TDateField;
    cdsMascoteOBS: TBlobField;
    cdsMascoteDATA_CADASTRO: TDateField;
    cdsMascoteRACA: TStringField;
    cdsMascoteTIPO: TStringField;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnPesquisaClick(Sender: TObject);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaCliente: TConsultaCliente;

implementation

{$R *.dfm}

uses DMPrincipal_p, Clientes_p, Funcoes_p, DMClientes_p, Principal_p;

procedure TConsultaCliente.BitBtn1Click(Sender: TObject);
begin
  Principal.ChamaJanela(TClientes, Clientes);
  DMClientes.cdsClientes.Open;
end;

procedure TConsultaCliente.BitBtnGeralClick(Sender: TObject);
begin
  cdsClientes.Filtered := False;
end;

procedure TConsultaCliente.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TConsultaCliente.cdsClientesAfterScroll(DataSet: TDataSet);
begin
  cdsMascote.Close;
  cdsMascote.FetchParams;
  cdsMascote.Params.ParamByName('CDCLIENTE').AsInteger := cdsClientesCDCLIENTE.AsInteger;
  cdsMascote.Open;
end;

procedure TConsultaCliente.BitBtnPesquisaClick(Sender: TObject);
begin
  if Trim(EditPesquisa.Text) <> '' then
    begin
      cdsClientes.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsClientes.Filter   := 'UPPER(NOME) LIKE '+QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');//Nome Cliente
        1 : cdsClientes.Filter   := 'UPPER(APELIDO) LIKE '+QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');//Apelido
        2 : begin
              cdsMascote.Filtered := False;
              cdsMascote.Filter   := 'UPPER(NOME) LIKE '+QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');//Nome Mascote
              cdsMascote.Filtered := True;
            end;
        3 : cdsClientes.Filter   := 'UPPER(GRUPO)     LIKE '+QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');//Fone
        4 : cdsClientes.Filter   := 'UPPER(SUBGRUPO)  LIKE '+QuotedStr('%'+UpperCase(EditPesquisa.Text)+'%');//Fone Cel
      end;

      cdsClientes.Filtered := True;
    end;
end;

procedure TConsultaCliente.FormActivate(Sender: TObject);
begin
//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'PETSHOP' then
//    begin
//      cdsClientes.Open;
//      cdsMascote.Open;
//      DBGridMascote.Visible := True;
//    end
//  else
//    begin
//      cdsClientes.Open;
//      DBGridMascote.Visible := False;
//      DBGridFone.Align      := alTop;
//    end;
end;

procedure TConsultaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
