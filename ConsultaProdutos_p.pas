unit ConsultaProdutos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, Mask, DBCtrls, JvExControls, JvXPCore, JvXPButtons;

type
  TConsultaProdutos = class(TForm)
    DBGrid1: TDBGrid;
    PanelButton: TPanel;
    Label1: TLabel;
    qProdutos: TSQLQuery;
    cdsProdutos: TClientDataSet;
    dspProdutos: TDataSetProvider;
    dsProdutos: TDataSource;
    DBEdit1: TDBEdit;
    PanelPesquisa: TPanel;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    GroupBox8: TGroupBox;
    BitBtnFechar: TJvXPButton;
    RadioGroupPesquisa: TRadioGroup;
    cdsProdutosCDPRODUTO: TIntegerField;
    cdsProdutosCDFORNECEDOR: TIntegerField;
    cdsProdutosCDINTERNO: TStringField;
    cdsProdutosCDBARRAS: TStringField;
    cdsProdutosCDGRUPO: TIntegerField;
    cdsProdutosCDSUBGRUPO: TIntegerField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosVALOR_CUSTO: TFloatField;
    cdsProdutosVALOR_VENDA: TFloatField;
    cdsProdutosVALOR_CONTABIL: TFloatField;
    cdsProdutosMARGEM: TFloatField;
    cdsProdutosUNID_ENTRADA: TFloatField;
    cdsProdutosUNID_SAIDA: TFloatField;
    cdsProdutosSERVICO: TIntegerField;
    cdsProdutosIPI: TFloatField;
    cdsProdutosICMS: TFloatField;
    cdsProdutosCFOP: TStringField;
    cdsProdutosSIT_TRIBUTARIA: TStringField;
    cdsProdutosGRUPO: TStringField;
    cdsProdutosSUBGRUPO: TStringField;
    cdsProdutosAPELIDO: TStringField;
    cdsProdutosTIPO_UN_ENTRADA: TStringField;
    cdsProdutosTIPO_UN_SAIDA: TStringField;
    cdsProdutosCDCENTRO_CUSTO: TIntegerField;
    cdsProdutosESTOQUE_QTD: TFloatField;
    cdsProdutosESTOQUE_MINIMO: TFloatField;
    cdsProdutosUSO_CONSUMO: TIntegerField;
    cdsProdutosAPLICACAO: TStringField;
    cdsProdutosFORNECEDOR: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaProdutos: TConsultaProdutos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TConsultaProdutos.BitBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TConsultaProdutos.BitbtnGeralClick(Sender: TObject);
begin
  cdsProdutos.Filtered := False;
  cdsProdutos.Refresh;
end;

procedure TConsultaProdutos.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskEditPesquisa.Text) <> '' then
    begin
      cdsProdutos.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsProdutos.Filter   := 'CDINTERNO = '+MaskEditPesquisa.Text;//Código Interno
        1 : cdsProdutos.Filter   := 'CDBARRAS  = '+MaskEditPesquisa.Text;//Código de Barras
        2 : cdsProdutos.Filter   := 'UPPER(DESCRICAO) LIKE '+QuotedStr('%'+UpperCase(MaskEditPesquisa.Text)+'%');//Descrição
        3 : cdsProdutos.Filter   := 'UPPER(GRUPO)     LIKE '+QuotedStr('%'+UpperCase(MaskEditPesquisa.Text)+'%');//Grupo
        4 : cdsProdutos.Filter   := 'UPPER(SUBGRUPO)  LIKE '+QuotedStr('%'+UpperCase(MaskEditPesquisa.Text)+'%');//SubGrupo
        5 : cdsProdutos.Filter   := 'UPPER(APELIDO)   LIKE '+QuotedStr('%'+UpperCase(MaskEditPesquisa.Text)+'%');//Fornecedor
        6 : cdsProdutos.Filter   := 'UPPER(APLICACAO) LIKE '+QuotedStr('%'+UpperCase(MaskEditPesquisa.Text)+'%');//aplicação
      end;
      cdsProdutos.Filtered := True;
    end;
end;

procedure TConsultaProdutos.FormActivate(Sender: TObject);
begin
  cdsProdutos.Open;
end;

procedure TConsultaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
