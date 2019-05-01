unit TelaConfiguracaoVenda_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, DBCtrls;

type
  TTelaConfiguracaoVenda = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    qConfigVenda: TSQLQuery;
    dspConfigVenda: TDataSetProvider;
    cdsConfigVenda: TClientDataSet;
    dsConfigVenda: TDataSource;
    cdsConfigVendaMOSTRAR_CUPOM_TELA: TIntegerField;
    cdsConfigVendaMOSTRAR_OF: TIntegerField;
    cdsConfigVendaGRAVAR_COMISSAO_CTAS_PAGAR: TIntegerField;
    cdsConfigVendaCOMISSAO_CONFORME_RECEBIMENTO: TIntegerField;
    cdsConfigVendaIMAGEM_VENDA: TBlobField;
    cdsConfigVendaMOSTRAR_DESCONTO_VENDA: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    cdsConfigVendaPULAR_VALOR_UNITARIO_VENDA: TIntegerField;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaConfiguracaoVenda: TTelaConfiguracaoVenda;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}


procedure TTelaConfiguracaoVenda.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsConfigVenda.Edit;
end;

procedure TTelaConfiguracaoVenda.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsConfigVenda.Cancel;
end;

procedure TTelaConfiguracaoVenda.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsConfigVenda.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsConfigVenda.Delete;
          cdsConfigVenda.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConfiguracaoVenda.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  cdsConfigVenda.Post;
  cdsConfigVenda.ApplyUpdates(0);
  cdsConfigVenda.Refresh;
end;

procedure TTelaConfiguracaoVenda.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsConfigVenda.Insert;
end;

procedure TTelaConfiguracaoVenda.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConfiguracaoVenda.Browse;
begin
  if (cdsConfigVenda.IsEmpty) then
    BitBtnIncluir.Enabled  := True
  else
    BitBtnIncluir.Enabled  := False;

  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaConfiguracaoVenda.FormActivate(Sender: TObject);
begin
  cdsConfigVenda.Open;
  Browse;
end;

procedure TTelaConfiguracaoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaConfiguracaoVenda.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


end.
