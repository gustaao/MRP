unit TelaOrdemCompraMsg_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, JvExControls, JvXPCore,
  JvXPButtons, Mask, ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TTelaOrdemCompraMsg = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape2: TShape;
    Label14: TLabel;
    Shape1: TShape;
    Label15: TLabel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    PanelCadastro: TPanel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    qMsg: TSQLQuery;
    dspMsg: TDataSetProvider;
    cdsMsg: TClientDataSet;
    dsMsg: TDataSource;
    cdsMsgCDOC_MSG: TIntegerField;
    cdsMsgATIVO: TIntegerField;
    cdsMsgMENSAGENS: TStringField;
    cdsMsgORDEM: TIntegerField;
    cdsMsgNEGRITO: TIntegerField;
    cdsMsgITALICO: TIntegerField;
    cdsMsgCADASTRADO_POR: TStringField;
    cdsMsgCADASTRADO_EM: TDateField;
    cdsMsgALTERADO_POR: TStringField;
    cdsMsgALTERADO_EM: TDateField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaOrdemCompraMsg: TTelaOrdemCompraMsg;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}
procedure TTelaOrdemCompraMsg.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsMsg.Edit;
end;

procedure TTelaOrdemCompraMsg.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsMsg.Cancel;
end;

procedure TTelaOrdemCompraMsg.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsMsg.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsMsg.Delete;
          cdsMsg.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaOrdemCompraMsg.BitbtnGeralClick(Sender: TObject);
begin
  cdsMsg.Filtered := False;
  cdsMsg.Refresh;
end;

procedure TTelaOrdemCompraMsg.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsMsg.State = dsInsert then
    begin
      cdsMsgCDOC_MSG.AsInteger       := Gerar_id('GEN_COLABORADORES_ID');
      cdsMsgCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      cdsMsgCADASTRADO_POR.AsString  := VarNomeUsuario;
    end
  else
    if cdsMsg.State = dsEdit then
      begin
        cdsMsgALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        cdsMsgALTERADO_POR.AsString  := VarNomeUsuario;
      end;
  cdsMsg.Post;
  cdsMsg.ApplyUpdates(0);
end;

procedure TTelaOrdemCompraMsg.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsMsg.Insert;
  cdsMsgCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  cdsMsgCADASTRADO_POR.AsString  := VarNomeUsuario;
  DBedit12.SetFocus;
end;

procedure TTelaOrdemCompraMsg.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskEditPesquisa.Text) <> '' then
    begin
      cdsMsg.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsMsg.Filter   := 'CDOC_MSG  = '''+MaskEditPesquisa.Text+''' ';//Código da Mensagem
        1 : cdsMsg.Filter   := 'UPPER(MENSAGEM) LIKE  '+QuotedStr('%'+UpperCase(MaskeditPesquisa.Text)+'%');//Mensagem
        2 : cdsMsg.Filter   := 'UPPER(CADASTRADO_POR) LIKE  '+QuotedStr('%'+UpperCase(MaskeditPesquisa.Text)+'%');//Usuário
        3 : cdsMsg.Filter   := 'ATIVO = ''0'' ';
      end;
      cdsMsg.Filtered := True;
    end;
end;

procedure TTelaOrdemCompraMsg.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaOrdemCompraMsg.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaOrdemCompraMsg.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;



procedure TTelaOrdemCompraMsg.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsMsg.FieldByName('ATIVO').AsInteger = 0 then
    cor := clRed
  else
    Cor := clBlack;

  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaOrdemCompraMsg.FormActivate(Sender: TObject);
begin
  Browse;
  cdsMsg.Open;
end;

procedure TTelaOrdemCompraMsg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaOrdemCompraMsg.FormKeyPress(Sender: TObject; var Key: Char);
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
