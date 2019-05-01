unit PesquisaSTPIS_Cofins_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, StdCtrls,
  Buttons, Mask, ExtCtrls;

type
  TPesquisaSTPIS_Cofins = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    qSTPisCofins: TSQLQuery;
    dspSTPisCofins: TDataSetProvider;
    cdsSTPisCofins: TClientDataSet;
    dsSTPisCofins: TDataSource;
    PanelTopo: TPanel;
    cdsSTPisCofinsCDSITUACAO: TStringField;
    cdsSTPisCofinsDESCRICAO: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaSTPIS_Cofins: TPesquisaSTPIS_Cofins;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaSTPIS_Cofins.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsSTPisCofins.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsSTPisCofins.Filter := ' CSOSN = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsSTPisCofins.Filter := ' UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsSTPisCofins.Filtered := True;
    end;
end;

procedure TPesquisaSTPIS_Cofins.BitBtnGeralClick(Sender: TObject);
begin
  cdsSTPisCofins.Filtered := False;
  cdsSTPisCofins.Refresh;
end;

procedure TPesquisaSTPIS_Cofins.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaSTPIS_Cofins.FormActivate(Sender: TObject);
begin
  cdsSTPisCofins.Open;
end;

procedure TPesquisaSTPIS_Cofins.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
