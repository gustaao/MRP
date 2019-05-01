unit PesquisaCSOSN_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, StdCtrls,
  Buttons, Mask, ExtCtrls;

type
  TPesquisaCSOSN = class(TForm)
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
    qCSOSN: TSQLQuery;
    dspCSOSN: TDataSetProvider;
    cdsCSOSN: TClientDataSet;
    dsCSOSN: TDataSource;
    cdsCSOSNCSOSN: TStringField;
    cdsCSOSNDESCRICAO: TStringField;
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
  PesquisaCSOSN: TPesquisaCSOSN;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaCSOSN.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsCSOSN.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCSOSN.Filter := ' CSOSN = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsCSOSN.Filter := ' UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsCSOSN.Filtered := True;
    end;
end;

procedure TPesquisaCSOSN.BitBtnGeralClick(Sender: TObject);
begin
  cdsCSOSN.Filtered := False;
  cdsCSOSN.Refresh;
end;

procedure TPesquisaCSOSN.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaCSOSN.FormActivate(Sender: TObject);
begin
  cdsCSOSN.Open;
end;

procedure TPesquisaCSOSN.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
