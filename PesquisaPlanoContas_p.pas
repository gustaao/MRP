unit PesquisaPlanoContas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls;

type
  TPesquisaPlanoContas = class(TForm)
    PanelPesquisa: TPanel;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    qPlContas: TSQLQuery;
    dspPlContas: TDataSetProvider;
    cdsPlContas: TClientDataSet;
    cdsPlContasCDPLANO_CONTAS: TIntegerField;
    cdsPlContasCONTA: TStringField;
    cdsPlContasDESCRICAO_CONTA: TStringField;
    cdsPlContasCONTA_DEBITO: TIntegerField;
    cdsPlContasCONTA_CREDITO: TIntegerField;
    cdsPlContasACEITA_LANCAMENTO: TIntegerField;
    cdsPlContasATIVA: TIntegerField;
    cdsPlContasCDCENTROCUSTO: TIntegerField;
    cdsPlContasCADASTRADO_POR: TStringField;
    cdsPlContasCADASTRADO_EM: TSQLTimeStampField;
    cdsPlContasALTERADO_POR: TStringField;
    cdsPlContasALTERADO_EM: TSQLTimeStampField;
    dsPlcontas: TDataSource;
    GroupBox8: TGroupBox;
    BitBtnFechar: TJvXPButton;
    RadioGroupPesquisa: TRadioGroup;
    cdsPlContasCODIGO_EXTENDIDO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaPlanoContas: TPesquisaPlanoContas;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}

procedure TPesquisaPlanoContas.BitBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaPlanoContas.BitbtnGeralClick(Sender: TObject);
begin
  CdsPlcontas.Filtered := False;
end;

procedure TPesquisaPlanoContas.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      CdsPlcontas.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsplcontas.Filter := 'CDPLANO_CONTAS  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsplcontas.Filter := 'CONTA           = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsplcontas.Filter := 'DESCRICAO_CONTA like ''%'+MaskeditPesquisa.Text+'%'' ';
        3 : cdsplcontas.Filter := 'CODIGO_EXTENDIDO like ''%'+MaskeditPesquisa.Text+'%'' ';
      end;
      cdsPlContas.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TPesquisaPlanoContas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsPlContas.FieldByName('ATIVA').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;
  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TPesquisaPlanoContas.FormActivate(Sender: TObject);
begin
  cdsplcontas.Open;
end;

procedure TPesquisaPlanoContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    BitBtnOK.Click
  else
    if Key = VK_F3 then
      BitBtnGeral.Click
    else
      if Key = VK_F5 then
        BitBtnFechar.Click;
end;

procedure TPesquisaPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
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
