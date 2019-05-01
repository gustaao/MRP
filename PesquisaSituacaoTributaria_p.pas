unit PesquisaSituacaoTributaria_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TPesquisaSituacaoTributaria = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    PanelTopo: TPanel;
    DBGrid1: TDBGrid;
    qST: TSQLQuery;
    dspST: TDataSetProvider;
    cdsST: TClientDataSet;
    dsST: TDataSource;
    cdsSTCODIGOST: TStringField;
    cdsSTDESCRICAO: TStringField;
    cdsSTPIS: TStringField;
    cdsSTCOFINS: TStringField;
    cdsSTT_I_S: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaSituacaoTributaria: TPesquisaSituacaoTributaria;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaSituacaoTributaria.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsST.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsST.Filter := ' CDTRANSPORTADOR = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsST.Filter := ' UPPER(NOME) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsST.Filtered := True;
    end;
end;

procedure TPesquisaSituacaoTributaria.BitBtnGeralClick(Sender: TObject);
begin
  cdsST.Filtered := False;
  cdsST.Refresh;
end;

procedure TPesquisaSituacaoTributaria.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaSituacaoTributaria.FormActivate(Sender: TObject);
begin
  cdsST.Open;
end;

end.
