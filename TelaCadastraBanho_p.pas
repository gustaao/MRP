unit TelaCadastraBanho_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  DBCtrls, Mask, Grids, DBGrids, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit, JvExButtons, JvBitBtn;

type
  TTelaCadastraBanho = class(TForm)
    qBanho: TSQLQuery;
    cdsBanho: TClientDataSet;
    dspBanho: TDataSetProvider;
    dsBanho: TDataSource;
    qBanhoCDBANHOETOSA: TIntegerField;
    qBanhoCDMASCOTE: TIntegerField;
    qBanhoPROCEDIMENTO: TStringField;
    qBanhoTOSADOR: TStringField;
    qBanhoDATA: TDateField;
    qBanhoHORA: TTimeField;
    qBanhoOBSERVACOES: TBlobField;
    qBanhoLEVAETRAS: TIntegerField;
    qBanhoNOME: TStringField;
    qBanhoOBS: TBlobField;
    qBanhoAPELIDO: TStringField;
    cdsBanhoCDBANHOETOSA: TIntegerField;
    cdsBanhoCDMASCOTE: TIntegerField;
    cdsBanhoPROCEDIMENTO: TStringField;
    cdsBanhoTOSADOR: TStringField;
    cdsBanhoDATA: TDateField;
    cdsBanhoHORA: TTimeField;
    cdsBanhoOBSERVACOES: TBlobField;
    cdsBanhoLEVAETRAS: TIntegerField;
    cdsBanhoNOME: TStringField;
    cdsBanhoOBS: TBlobField;
    cdsBanhoAPELIDO: TStringField;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditData: TDBEdit;
    Label6: TLabel;
    DBEditHora: TDBEdit;
    Label11: TLabel;
    qMascote: TSQLQuery;
    cdsMascote: TClientDataSet;
    dspMascote: TDataSetProvider;
    dsMascote: TDataSource;
    cdsMascoteCDMASCOTE: TIntegerField;
    cdsMascoteCDRACA: TIntegerField;
    cdsMascoteCDTIPO: TIntegerField;
    cdsMascoteCDCLIENTE: TIntegerField;
    cdsMascoteNOME: TStringField;
    cdsMascoteCOR: TStringField;
    cdsMascoteNASCIMENTO: TDateField;
    cdsMascoteOBS: TBlobField;
    cdsMascoteDATA_CADASTRO: TDateField;
    qCliente: TSQLQuery;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    dsCliente: TDataSource;
    cdsClienteCDCLIENTE: TIntegerField;
    cdsClienteCDMASCOTE: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteAPELIDO: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteNUMERO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteCPF_CNPJ: TStringField;
    cdsClienteIE_RG: TStringField;
    cdsClienteDATA_CADASTRO: TDateField;
    cdsClienteTIPO_PESSOA: TIntegerField;
    cdsClientePNG: TIntegerField;
    cdsClienteEMAIL: TStringField;
    cdsClienteLIMITE_CREDITO: TSingleField;
    cdsClienteRESTRICAO: TIntegerField;
    cdsClienteTIPO_RESTRICAO: TStringField;
    dblMascote: TDBLookupComboBox;
    Label12: TLabel;
    dbcLevatraz: TDBCheckBox;
    qTosador: TSQLQuery;
    cdsTosador: TClientDataSet;
    cdsTosadorCDTOSADOR: TIntegerField;
    cdsTosadorNOME: TStringField;
    cdsTosadorCOMISSAO: TSingleField;
    dspTosador: TDataSetProvider;
    dsTosador: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    qBanhoCDTOSADOR: TIntegerField;
    cdsBanhoCDTOSADOR: TIntegerField;
    dbCliente: TJvDBLookupComboEdit;
    qTipo: TSQLQuery;
    cdsTipo: TClientDataSet;
    dspTipo: TDataSetProvider;
    dsTipo: TDataSource;
    cdsTipoCDBANHOETOSA_TIPO: TIntegerField;
    cdsTipoDESCRICAO: TStringField;
    qBanhoCDCLIENTE: TIntegerField;
    cdsBanhoCDCLIENTE: TIntegerField;
    dblProcedimento: TDBLookupComboBox;
    DBMemoProcedimento: TDBMemo;
    Label2: TLabel;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    procedure BitBtnSairClick(Sender: TObject);
    procedure dspBanhoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastraBanho: TTelaCadastraBanho;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaCadastraBanho.BitBtnAlterarClick(Sender: TObject);
begin
  InsertState(TelaCadastraBanho);
  cdsBanho.Edit;
end;

procedure TTelaCadastraBanho.BitBtnExcluirClick(Sender: TObject);
begin
  BrowseState(TelaCadastraBanho);
  if cdsBanho.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsBanho.Delete;
          cdsBanho.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCadastraBanho.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraBanho);
  if cdsBanho.State = dsInsert then
    begin
      cdsBanhoCDBANHOETOSA.AsInteger := Gerar_id('GEN_BANHOETOSA_ID');
    end;
  cdsBanho.Post;
  cdsBanho.ApplyUpdates(0);
end;

procedure TTelaCadastraBanho.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaCadastraBanho);
  cdsBanho.Insert;
  cdsBanhoLEVAETRAS.AsInteger := 0;
  cdsBanhoDATA.AsDateTime     := Date;
  cdsBanhoTOSADOR.AsString    := cdsTosadorNOME.AsString;
  cdsBanhoCDTOSADOR.AsInteger := cdsTosadorCDTOSADOR.AsInteger;
  dbCliente.SetFocus;
end;

procedure TTelaCadastraBanho.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCadastraBanho.CancelarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraBanho);
  cdsBanho.Cancel;
end;

procedure TTelaCadastraBanho.dspBanhoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('BANHOETOSA');
end;

procedure TTelaCadastraBanho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaCadastraBanho.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;

end;

end.
