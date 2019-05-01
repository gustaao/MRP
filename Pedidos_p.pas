unit Pedidos_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, FMTBcd, DB,
  Provider, DBClient, SqlExpr, JvExButtons, JvBitBtn, Menus;

type
  TPedidos = class(TForm)
    pnlTopo: TPanel;
    pnlMeio: TPanel;
    pnlPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    BitBtnGeral: TBitBtn;
    BitBtnOK: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    qPedidos: TSQLQuery;
    cdsPedidos: TClientDataSet;
    dspPedidos: TDataSetProvider;
    dsPedidos: TDataSource;
    qItens: TSQLQuery;
    cdsItens: TClientDataSet;
    dspItens: TDataSetProvider;
    dsItens: TDataSource;
    PanelPedidos2: TPanel;
    PanelPagamentos: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsPag: TDataSource;
    cdsPag: TClientDataSet;
    dspPag: TDataSetProvider;
    qPag: TSQLQuery;
    DBGrid3: TDBGrid;
    qPagCDPEDIDOS_PAGAMENTO: TIntegerField;
    qPagCDPEDIDO: TIntegerField;
    qPagCDPAGAMENTO: TIntegerField;
    qPagVALOR_PAGO: TFMTBCDField;
    qPagPAGAMENTO: TStringField;
    cdsPagCDPEDIDOS_PAGAMENTO: TIntegerField;
    cdsPagCDPEDIDO: TIntegerField;
    cdsPagCDPAGAMENTO: TIntegerField;
    cdsPagVALOR_PAGO: TFMTBCDField;
    cdsPagPAGAMENTO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MaskEditPesquisa: TMaskEdit;
    MaskEditDataI: TMaskEdit;
    MaskEditDataF: TMaskEdit;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCDUSUARIO: TIntegerField;
    cdsPedidosCDCLIENTE: TIntegerField;
    cdsPedidosDATA: TDateField;
    cdsPedidosHORA: TTimeField;
    cdsPedidosVALOR_VENDA: TFloatField;
    cdsPedidosSUBTOTAL: TFloatField;
    cdsPedidosDESCONTO: TFloatField;
    cdsPedidosACRESCIMO: TFloatField;
    cdsPedidosVALOR_TOTAL: TFloatField;
    cdsPedidosNF_EMITIDA: TIntegerField;
    cdsPedidosCDPAGAMENTO: TIntegerField;
    cdsPedidosAPELIDO: TStringField;
    cdsPedidosUSUARIO: TStringField;
    cdsPedidosVENDEDOR: TStringField;
    cdsItensCDPEDIDO_ITENS: TIntegerField;
    cdsItensCDPEDIDO: TIntegerField;
    cdsItensCDPRODUTO: TIntegerField;
    cdsItensVALOR_UNITARIO: TFMTBCDField;
    cdsItensQTD: TFloatField;
    cdsItensVALOR_TOTAL: TFMTBCDField;
    cdsItensSUBTOTAL: TFMTBCDField;
    cdsItensDESCONTO: TFloatField;
    cdsItensACRESCIMO: TFloatField;
    cdsItensCDVENDEDOR: TIntegerField;
    cdsItensCONTADOR: TIntegerField;
    cdsItensDESCRICAO: TStringField;
    cdsItensUNID_SAIDA: TFloatField;
    cdsItensTIPO_UN_SAIDA: TStringField;
    cdsItensMARCA: TStringField;
    Shape3: TShape;
    Label16: TLabel;
    Shape1: TShape;
    Label15: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    cdsPedidosCDPESSOA: TIntegerField;
    cdsPedidosTIPO: TStringField;
    GroupBox3: TGroupBox;
    BitBtnRelatorios: TJvBitBtn;
    PopupMenu1: TPopupMenu;
    RelatriodeOramento1: TMenuItem;
    qPagDATA: TDateField;
    cdsPagDATA: TDateField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RelatriodeOramento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pedidos: TPedidos;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, RelatorioOrcamento_p, PerguntaOrcamento_p;

{$R *.dfm}

procedure TPedidos.BitBtnOKClick(Sender: TObject);
begin
  if (Trim(MaskeditPesquisa.Text) <> '')or((RadioGroupPesquisa.ItemIndex = 3)and (MaskEditDataI.Text <> '  /  /    ')) then
    begin
      cdsPedidos.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsPedidos.Filter := 'CDPEDIDO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsPedidos.Filter := 'UPPER(APELIDO)   LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : cdsPedidos.Filter := 'CPF_CNPJ  = '''+MaskeditPesquisa.Text+''' ';
        3 : cdsPedidos.Filter := '(DATA >= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataI.Text))+''' and DATA <= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataF.Text))+''' ) ';
      end;
      cdsPedidos.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TPedidos.BitBtnGeralClick(Sender: TObject);
begin
  cdsPedidos.Filtered := False;
  cdsPedidos.Refresh;
end;

procedure TPedidos.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPedidos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsPedidos.FieldByName('TIPO').AsString = 'V' then
    cor := clGreen
  else
    if cdsPedidos.FieldByName('TIPO').AsString = 'O' then
      cor := clBlue
    else
      if cdsPedidos.FieldByName('TIPO').AsString = 'D' then
        Cor := clRed;

  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TPedidos.FormActivate(Sender: TObject);
begin
  cdsPedidos.Open;
  cdsItens.Open;
  cdsPag.Open;
end;

procedure TPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPedidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TPedidos.RadioGroupPesquisaClick(Sender: TObject);
begin
  case RadioGroupPesquisa.ItemIndex of
    0 : begin
          MaskEditPesquisa.Enabled := True;
          MaskEditPesquisa.TabStop := True;
          Label1.Enabled           := False;
          MaskEditDataI.Enabled    := False;
          MaskEditDataI.TabStop    := False;
          Label2.Enabled           := False;
          MaskEditDataF.Enabled    := False;
          MaskEditDataF.TabStop    := False;
          MaskEditPesquisa.SetFocus;
        end;
    1 : begin
          MaskEditPesquisa.Enabled := True;
          MaskEditPesquisa.TabStop := True;
          Label1.Enabled           := False;
          MaskEditDataI.Enabled    := False;
          MaskEditDataI.TabStop    := False;
          Label2.Enabled           := False;
          MaskEditDataF.Enabled    := False;
          MaskEditDataF.TabStop    := False;
          MaskEditPesquisa.SetFocus;
        end;
    2 : begin
          MaskEditPesquisa.Enabled := True;
          MaskEditPesquisa.TabStop := True;
          Label1.Enabled           := False;
          MaskEditDataI.Enabled    := False;
          MaskEditDataI.TabStop    := False;
          Label2.Enabled           := False;
          MaskEditDataF.Enabled    := False;
          MaskEditDataF.TabStop    := False;
          MaskEditPesquisa.SetFocus;
        end;
    3 : begin
          MaskEditPesquisa.Enabled := False;
          MaskEditPesquisa.TabStop := False;
          Label1.Enabled           := True;
          MaskEditDataI.Enabled    := True;
          MaskEditDataI.TabStop    := True;
          Label2.Enabled           := True;
          MaskEditDataF.Enabled    := True;
          MaskEditDataF.TabStop    := True;
          MaskEditDataI.SetFocus;
        end;
  end;

end;

procedure TPedidos.RelatriodeOramento1Click(Sender: TObject);
begin
  try
    PerguntaOrcamento := TPerguntaOrcamento.Create(Application);
    if PerguntaOrcamento.ShowModal = mrOk then
      begin
        RelatorioOrcamento := TRelatorioOrcamento.Create(Application);
        RelatorioOrcamento.MontaRelatorio;
        FreeAndNil(RelatorioOrcamento);
      end;
    FreeAndNil(PerguntaOrcamento);
  Finally
    FreeAndNil(RelatorioOrcamento);
    FreeAndNil(PerguntaOrcamento);
  end;
end;

end.
