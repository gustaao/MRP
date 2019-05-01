unit ConsultaProdutoVenda_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, FMTBcd,
  DB, DBClient, Provider, SqlExpr, JvExControls, JvXPCore, JvXPButtons;

type
  TConsultaProdutoVenda = class(TForm)
    DBGrid1: TDBGrid;
    PanelButton: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    qProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
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
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaProdutoVenda: TConsultaProdutoVenda;

implementation

{$R *.dfm}

procedure TConsultaProdutoVenda.BitBtnGeralClick(Sender: TObject);
begin
  cdsProdutos.Filtered := False;
  cdsProdutos.Refresh;
end;

procedure TConsultaProdutoVenda.BitBtnOKClick(Sender: TObject);
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

procedure TConsultaProdutoVenda.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TConsultaProdutoVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//   begin
//     Key := #0;
//     Perform(WM_NEXTDLGCTL,0,0);
//   end
//  else
    if BitBtnOK.Focused then
      BitBtnOK.Click;
end;

procedure TConsultaProdutoVenda.RadioGroupPesquisaClick(Sender: TObject);
begin
  MaskEditPesquisa.SetFocus;
end;

end.
