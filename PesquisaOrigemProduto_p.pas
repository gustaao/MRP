unit PesquisaOrigemProduto_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, DBGrids, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TPesquisaOrigemProduto = class(TForm)
    PanelTopo: TPanel;
    DBGrid1: TDBGrid;
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    qOM: TSQLQuery;
    dspOM: TDataSetProvider;
    cdsOM: TClientDataSet;
    dsOM: TDataSource;
    cdsOMCDORIGEM_MERCADORIA: TIntegerField;
    cdsOMCDORIGEM: TIntegerField;
    cdsOMDESCRICAO: TStringField;
    cdsOMESPECIFICACAO: TStringField;
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
  PesquisaOrigemProduto: TPesquisaOrigemProduto;

implementation

uses Principal_p, DMPrincipal_P, Funcoes_p;

{$R *.dfm}

procedure TPesquisaOrigemProduto.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsOM.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsOM.Filter := ' CDORIGEM = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsOM.Filter := ' UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsOM.Filtered := True;
    end;
end;

procedure TPesquisaOrigemProduto.BitBtnGeralClick(Sender: TObject);
begin
  cdsOM.Filtered := False;
  cdsOM.Refresh;
end;

procedure TPesquisaOrigemProduto.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaOrigemProduto.FormActivate(Sender: TObject);
begin
  cdsOM.Open;
end;

procedure TPesquisaOrigemProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
