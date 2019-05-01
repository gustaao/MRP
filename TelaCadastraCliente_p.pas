unit TelaCadastraCliente_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Buttons, JvExStdCtrls,
  JvCombobox, JvDBCombobox, DBCtrls, Mask, ExtCtrls, DB;

type
  TTelaCadastraCliente = class(TForm)
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEditCDIBGE: TDBEdit;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    ComboBoxTipoPessoa: TJvDBComboBox;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure FormActivate(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBoxCidadeExit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
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
  TelaCadastraCliente: TTelaCadastraCliente;

implementation

uses Principal_p, DMPrincipal_p, DMClientes_p, Funcoes_p;

{$R *.dfm}

procedure TTelaCadastraCliente.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMClientes.cdsClientes.Edit;
end;

procedure TTelaCadastraCliente.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMClientes.cdsClientes.Cancel;
end;

procedure TTelaCadastraCliente.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMClientes.cdsClientes.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMClientes.cdsClientes.Delete;
          DMClientes.cdsClientes.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCadastraCliente.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMClientes.cdsClientes.State = dsInsert then
      begin
        DMClientes.cdsClientesCDCLIENTE.AsInteger       := Gerar_id('GEN_CLIENTES_ID');
        DMClientes.cdsClientesCDPESSOA.AsInteger        := Gerar_id('GEN_PESSOA_ID');
        DMClientes.cdsClientesDATA_CADASTRO.AsDateTime  := Date;
      end;
    DMClientes.cdsClientesPAIS.AsString         := ConvertePalavras(DMPrincipal.cdsPaisPAIS.AsString);
    DMClientes.cdsClientes.Post;
    DMClientes.cdsClientes.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaCadastraCliente.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMPrincipal.cdsIBGE.Close;
  DMClientes.cdsClientes.Insert;
  DMClientes.cdsClientesCDCLIENTE.AsInteger := Consulta_id('GEN_CLIENTES_ID') + 1;
  DBEdit2.SetFocus;
end;

procedure TTelaCadastraCliente.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCadastraCliente.Browse;
begin
  if (VarMeusAcessos[65] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[66] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[67] = '001' then
    BitBtnAlterar.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaCadastraCliente.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnAlterar.Enabled    := False;
  BitBtnExcluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  PanelCampos.Enabled      := True;
end;


procedure TTelaCadastraCliente.DBComboBox1Exit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBox1.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TTelaCadastraCliente.DBEdit12Enter(Sender: TObject);
begin
  case ComboBoxTipoPessoa.ItemIndex of
    0 : DMClientes.cdsClientesCPF_CNPJ.EditMask := '999.999.999-99;0;_';
    1 : DMClientes.cdsClientesCPF_CNPJ.EditMask := '99.999999/9999-99;0;_';
  end;
end;

procedure TTelaCadastraCliente.DBLookupComboBoxCidadeExit(Sender: TObject);
begin
  DMClientes.cdsClientesCIDADE.AsString    := ConvertePalavras(DMPrincipal.cdsIBGE.FieldByName('NOMEIBGE').AsString);
  DMClientes.cdsClientesCOD_IBGE.AsInteger := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsInteger;
end;

procedure TTelaCadastraCliente.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[65] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[66] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[67] <> '001' then
    BitBtnAlterar.Enabled := False;

  {$ENDREGION}

  Browse;
  DMClientes.cdsClientes.Open;
  DMClientes.cdsLinha.Open;
  DMClientes.cdsClienteLinha.Open;

  DMPrincipal.cdsPais.Close;
  DMPrincipal.cdsPais.CommandText := ('select  * from paisibge order by (case when paisibge.cod_pais = ''1058'' then 1 else paisibge.pais end) ');
  DMPrincipal.cdsPais.Open;

  DMPrincipal.cdsIBGE.Open;
  DMPrincipal.cdsEI.Open;
end;

end.
