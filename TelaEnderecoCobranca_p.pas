unit TelaEnderecoCobranca_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExButtons, JvBitBtn, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask,
  Grids, DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr, JvExControls,
  JvXPCore, JvXPButtons;

type
  TTelaEnderecoCobranca = class(TForm)
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    DBEditCDIBGE: TDBEdit;
    Label25: TLabel;
    DBGrid1: TDBGrid;
    qEndCob: TSQLQuery;
    cdsEndCob: TClientDataSet;
    dspEndCob: TDataSetProvider;
    dsEndCob: TDataSource;
    cdsEndCobCDENDERECO: TIntegerField;
    cdsEndCobCDPESSOA: TIntegerField;
    cdsEndCobENDERECO: TStringField;
    cdsEndCobNUMERO: TStringField;
    cdsEndCobBAIRRO: TStringField;
    cdsEndCobCIDADE: TStringField;
    cdsEndCobCEP: TStringField;
    cdsEndCobUF: TStringField;
    cdsEndCobEMAIL: TStringField;
    cdsEndCobCOD_IBGE: TStringField;
    cdsEndCobPAIS: TStringField;
    cdsEndCobCOD_PAIS: TStringField;
    cdsEndCobFONE: TStringField;
    cdsEndCobFAX: TStringField;
    MaskEditCodigo: TMaskEdit;
    MaskEditNome: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
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
  TelaEnderecoCobranca: TTelaEnderecoCobranca;

implementation

uses Principal_p, DMPrincipal_p, funcoes_p, DMclientes_p;

{$R *.dfm}

procedure TTelaEnderecoCobranca.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsEndCob.Edit;
end;

procedure TTelaEnderecoCobranca.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsEndCob.Cancel;
end;

procedure TTelaEnderecoCobranca.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsEndCob.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsEndCob.Delete;
          cdsEndCob.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaEnderecoCobranca.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsEndCob.State = dsInsert then
    begin
      cdsEndCobCDENDERECO.AsInteger := Gerar_id('GEN_ENDERECO_COBRANCA_ID');
      cdsEndCobCDPESSOA.AsInteger   := StrToInt(MaskeditCodigo.Text);
    end;

  cdsEndCob.Post;
  cdsEndCob.ApplyUpdates(0);
end;

procedure TTelaEnderecoCobranca.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsEndCob.Insert;
  DBEdit4.SetFocus;
end;

procedure TTelaEnderecoCobranca.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaEnderecoCobranca.Browse;
begin
  BitBtnIncluir.Enabled  := True;
  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaEnderecoCobranca.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTelaEnderecoCobranca.DBComboBox1Exit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBox1.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TTelaEnderecoCobranca.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  cdsEndCobCIDADE.AsString    := ConvertePalavras(DMPrincipal.cdsIBGE.FieldByName('NOMEIBGE').AsString);
  cdsEndCobCOD_IBGE.AsInteger := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsInteger;
end;

end.
