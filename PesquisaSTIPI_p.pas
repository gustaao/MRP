unit PesquisaSTIPI_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, StdCtrls,
  Buttons, Mask, ExtCtrls;

type
  TPesquisaSTIPI = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    PanelTopo: TPanel;
    qSTIPI: TSQLQuery;
    dspSTIPI: TDataSetProvider;
    cdsSTIPI: TClientDataSet;
    dsSTIPI: TDataSource;
    cdsSTIPICDSITUACAO: TStringField;
    cdsSTIPIDESCRICAO: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaSTIPI: TPesquisaSTIPI;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaSTIPI.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsSTIPI.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsSTIPI.Filter := ' CDSITUACAO = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsSTIPI.Filter := ' UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsSTIPI.Filtered := True;
    end;
end;

procedure TPesquisaSTIPI.BitBtnGeralClick(Sender: TObject);
begin
  cdsSTIPI.Filtered := False;
  cdsSTIPI.Refresh;
end;

procedure TPesquisaSTIPI.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaSTIPI.FormActivate(Sender: TObject);
begin
  cdsSTIPI.Open;
end;

procedure TPesquisaSTIPI.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
