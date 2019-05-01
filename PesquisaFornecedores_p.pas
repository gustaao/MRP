unit PesquisaFornecedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, Grids,
  DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TPesquisaFornecedores = class(TForm)
    DBGrid1: TDBGrid;
    PanelPesquisa: TPanel;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    GroupBox8: TGroupBox;
    BitBtnFechar: TJvXPButton;
    RadioGroupPesquisa: TRadioGroup;
    qForn: TSQLQuery;
    cdsForn: TClientDataSet;
    cdsFornCDFORNECEDOR: TIntegerField;
    cdsFornNOME: TStringField;
    cdsFornAPELIDO: TStringField;
    cdsFornENDERECO: TStringField;
    cdsFornNUMERO: TStringField;
    cdsFornBAIRRO: TStringField;
    cdsFornCIDADE: TStringField;
    cdsFornCEP: TStringField;
    cdsFornUF: TStringField;
    cdsFornCONTATO: TStringField;
    cdsFornSITE: TStringField;
    cdsFornMAIL: TStringField;
    cdsFornCOD_IBGE: TStringField;
    cdsFornDATA_CADASTRO: TDateField;
    cdsFornTIPO_PESSOA: TIntegerField;
    cdsFornFONE: TStringField;
    cdsFornFAX: TStringField;
    dspForn: TDataSetProvider;
    dsForn: TDataSource;
    cdsFornCDPESSOA: TIntegerField;
    cdsFornCPF_CNPJ: TStringField;
    cdsFornRG_IE: TStringField;
    cdsFornATIVO: TIntegerField;
    cdsFornCODSEGMENTO: TIntegerField;
    cdsFornISO: TIntegerField;
    cdsFornGRAU_IMPORTANCIA: TStringField;
    cdsFornCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    cdsFornREACH_ROHS: TIntegerField;
    cdsFornCOD_PAIS: TStringField;
    cdsFornNASC_FUNDACAO: TDateField;
    cdsFornPAIS: TStringField;
    cdsFornEMAIL_NFE: TStringField;
    cdsFornPNG: TIntegerField;
    cdsFornLIMITE_CREDITO: TFloatField;
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaFornecedores: TPesquisaFornecedores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaFornecedores.BitbtnGeralClick(Sender: TObject);
begin
  cdsForn.Filtered := False;
end;

procedure TPesquisaFornecedores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsForn.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsForn.Filter := ' CDFORNECEDOR = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsForn.Filter := ' UPPER(NOME) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : cdsForn.Filter := ' UPPER(APELIDO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        3 : cdsForn.Filter := ' CNPJ = '''+MaskeditPesquisa.Text+''' ';
      end;
    end;
end;

procedure TPesquisaFornecedores.FormActivate(Sender: TObject);
begin
  cdsForn.Open;
end;

procedure TPesquisaFornecedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    Close;
end;

end.
