unit PesquisaNaturezaOperacao_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, JvExControls, JvXPCore, JvXPButtons,
  StdCtrls, Mask, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TPesquisaNaturezaOperacao = class(TForm)
    PanelPesquisa: TPanel;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    GroupBox8: TGroupBox;
    BitBtnFechar: TJvXPButton;
    RadioGroupPesquisa: TRadioGroup;
    DBGrid1: TDBGrid;
    qNO: TSQLQuery;
    dspNO: TDataSetProvider;
    cdsNO: TClientDataSet;
    cdsNOCDNATOPE: TSmallintField;
    cdsNODESCRNAT: TStringField;
    cdsNOGERADUP: TStringField;
    cdsNOCRIADUP: TStringField;
    cdsNOCDNATOPE2: TSmallintField;
    cdsNOALTERADO_POR: TStringField;
    cdsNOALTERADO_EM: TDateField;
    cdsNONOTA_DE_REMESSA_COM_RETORNO: TStringField;
    cdsNODESATIVADO: TStringField;
    dsNO: TDataSource;
    cdsNOIMPORTACAO: TIntegerField;
    cdsNODEVOLUCAO: TIntegerField;
    cdsNOENTRADA: TIntegerField;
    procedure BitBtnFecharClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaNaturezaOperacao: TPesquisaNaturezaOperacao;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaNaturezaOperacao.BitBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaNaturezaOperacao.BitbtnGeralClick(Sender: TObject);
begin
  cdsNO.Filtered := False;
  cdsNO.Refresh;
end;

procedure TPesquisaNaturezaOperacao.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskEditPesquisa.Text) <> '' then
    begin
      cdsNO.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsNO.Filter := ' CDNATUOPE = '''+MaskEditPesquisa.Text+''' ';
        1 : cdsNO.Filter := ' UPPER(DESCRNAT) LIKE UPPER(''%'+MaskEditPesquisa.Text+'%'') ';
      end;
    end;
end;

procedure TPesquisaNaturezaOperacao.FormActivate(Sender: TObject);
begin
  cdsNO.Open;
end;

procedure TPesquisaNaturezaOperacao.FormKeyPress(Sender: TObject;
  var Key: Char);
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
