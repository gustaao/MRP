unit TelaContatoTransportador_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvExButtons, JvBitBtn;

type
  TTelaContatoTransportador = class(TForm)
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaContatoTransportador: TTelaContatoTransportador;

implementation

uses Principal_p, DMPrincipal_p, Transportadores_p, Funcoes_p;

{$R *.dfm}

procedure TTelaContatoTransportador.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaContatoTransportador.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;

procedure TTelaContatoTransportador.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  Transportadores.cdsContato.Edit;
end;

procedure TTelaContatoTransportador.BitBtnExcluirClick(Sender: TObject);
begin
  if Transportadores.cdsContato.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          Transportadores.cdsContato.Delete;
          Transportadores.cdsContato.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaContatoTransportador.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if Transportadores.cdsContato.State = dsInsert then
    begin
      Transportadores.cdsContatoCDTRANSPORTADOR_CONTATO.AsInteger := Gerar_id('GEN_TRANSPORTADORES_CONTATO_ID');
    end;

  Transportadores.cdsContato.Post;
  Transportadores.cdsContato.ApplyUpdates(0);
end;

procedure TTelaContatoTransportador.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  Transportadores.cdsContato.Insert;
  DBEdit3.SetFocus;
end;

procedure TTelaContatoTransportador.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaContatoTransportador.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  Transportadores.cdsContato.Cancel;
end;

procedure TTelaContatoTransportador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContatoTransportador.FormKeyPress(Sender: TObject; var Key: Char);
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
