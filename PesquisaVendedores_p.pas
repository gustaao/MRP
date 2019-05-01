unit PesquisaVendedores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons, Mask,
  ExtCtrls, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons;

type
  TPesquisaVendedores = class(TForm)
    DBGrid1: TDBGrid;
    qVendedor: TSQLQuery;
    cdsVendedor: TClientDataSet;
    dspVendedor: TDataSetProvider;
    dsVendedor: TDataSource;
    cdsVendedorCDVENDEDOR: TIntegerField;
    cdsVendedorNOME: TStringField;
    cdsVendedorCOMISSAO: TSingleField;
    cdsVendedorAPELIDO: TStringField;
    cdsVendedorREGIAO: TStringField;
    cdsVendedorENDERECO: TStringField;
    cdsVendedorNUMERO: TStringField;
    cdsVendedorBAIRRO: TStringField;
    cdsVendedorCIDADE: TStringField;
    cdsVendedorCEP: TStringField;
    cdsVendedorUF: TStringField;
    cdsVendedorCPF_CNPJ: TStringField;
    cdsVendedorRG_IE: TStringField;
    cdsVendedorNASC_FUNDACAO: TDateField;
    cdsVendedorCADASTRADO_POR: TStringField;
    cdsVendedorCADASTRADO_EM: TSQLTimeStampField;
    cdsVendedorALTERADO_POR: TStringField;
    cdsVendedorALTERADO_EM: TSQLTimeStampField;
    cdsVendedorMETA: TSingleField;
    cdsVendedorFONE: TStringField;
    cdsVendedorCELULAR: TStringField;
    cdsVendedorCDIBGE: TFMTBCDField;
    cdsVendedorATIVO: TIntegerField;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaVendedores: TPesquisaVendedores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaVendedores.BitBtnGeralClick(Sender: TObject);
begin
  cdsVendedor.Filtered := False;
end;

procedure TPesquisaVendedores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsVendedor.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsVendedor.Filter := 'CDVENDEDOR  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsVendedor.Filter := 'NOME LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
        2 : cdsVendedor.Filter := 'CPF_CNPJ    = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsVendedor.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TPesquisaVendedores.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaVendedores.FormCreate(Sender: TObject);
begin
  cdsVendedor.open;
end;

end.
