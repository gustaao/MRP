unit PesquisaCondicaoPagto_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, DBClient, Provider, SqlExpr, StdCtrls,
  Buttons, Mask, ExtCtrls;

type
  TPesquisaCondicaoPagto = class(TForm)
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    PanelTopo: TPanel;
    qCondPagto: TSQLQuery;
    dspCondPagto: TDataSetProvider;
    cdsCondPagto: TClientDataSet;
    dsCondPagto: TDataSource;
    DBGrid1: TDBGrid;
    cdsCondPagtoCDCONDICAO_PAGTO: TIntegerField;
    cdsCondPagtoDESCRICAO: TStringField;
    cdsCondPagtoDDDPAGTO1: TIntegerField;
    cdsCondPagtoDDDPAGTO2: TIntegerField;
    cdsCondPagtoDDDPAGTO3: TIntegerField;
    cdsCondPagtoDDDPAGTO4: TIntegerField;
    cdsCondPagtoDDDPAGTO5: TIntegerField;
    cdsCondPagtoDDDPAGTO6: TIntegerField;
    cdsCondPagtoDDDPAGTO7: TIntegerField;
    cdsCondPagtoDDDPAGTO8: TIntegerField;
    cdsCondPagtoDDDPAGTO9: TIntegerField;
    cdsCondPagtoDDDPAGTO10: TIntegerField;
    cdsCondPagtoATIVO: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaCondicaoPagto: TPesquisaCondicaoPagto;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaCondicaoPagto.BitBtn2Click(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsCondPagto.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsCondPagto.Filter := ' CDCONDICAO_PAGTO = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsCondPagto.Filter := ' UPPER(DESCRICAO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsCondPagto.Filtered := True;
    end;
end;

procedure TPesquisaCondicaoPagto.BitBtnGeralClick(Sender: TObject);
begin
  cdsCondPagto.Filtered := False;
  cdsCondPagto.Refresh;
end;

procedure TPesquisaCondicaoPagto.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaCondicaoPagto.FormActivate(Sender: TObject);
begin
  cdsCondPagto.Open;
end;

procedure TPesquisaCondicaoPagto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
