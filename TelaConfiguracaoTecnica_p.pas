unit TelaConfiguracaoTecnica_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls, StdCtrls, Mask,
  DBCtrls, JvExButtons, JvBitBtn, Buttons;

type
  TTelaConfiguracaoTecnica = class(TForm)
    qTecnica: TSQLQuery;
    dspTecnica: TDataSetProvider;
    cdsTecnica: TClientDataSet;
    dsTecnica: TDataSource;
    cdsTecnicaSERIAL: TStringField;
    cdsTecnicaSEGMENTO: TStringField;
    cdsTecnicaCAMPO1: TStringField;
    cdsTecnicaCAMPO2: TStringField;
    cdsTecnicaCAMPO3: TStringField;
    cdsTecnicaCAMPO4: TStringField;
    cdsTecnicaCAMPO5: TStringField;
    cdsTecnicaDATA_EXPIRACAO: TDateField;
    cdsTecnicaCADASTRADO_POR: TStringField;
    cdsTecnicaCADASTRADO_EM: TSQLTimeStampField;
    cdsTecnicaALTERADO_POR: TStringField;
    cdsTecnicaALTERADA_EM: TSQLTimeStampField;
    cdsTecnicaDATA_INTERNET: TDateField;
    PanelCampos: TPanel;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBCheckBox5: TDBCheckBox;
    cdsTecnicaCAMPO6: TIntegerField;
    RadioGroupAmbiente: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaConfiguracaoTecnica: TTelaConfiguracaoTecnica;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaConfiguracaoTecnica.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsTecnica.Edit;
end;

procedure TTelaConfiguracaoTecnica.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsTecnica.Cancel;
end;

procedure TTelaConfiguracaoTecnica.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsTecnica.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsTecnica.Delete;
          cdsTecnica.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaConfiguracaoTecnica.BitBtnGravarClick(Sender: TObject);
begin
  Browse;
  if cdsTecnica.State = dsInsert then
    begin
      cdsTecnicaCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      cdsTecnicaCADASTRADO_POR.AsString  := VarNomeUsuario;
    end
  else
    if cdsTecnica.State = dsEdit then
      cdsTecnicaALTERADA_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;

  cdsTecnicaCAMPO6.AsInteger := RadioGroupAmbiente.ItemIndex;


  cdsTecnica.Post;
  cdsTecnica.ApplyUpdates(0);
end;

procedure TTelaConfiguracaoTecnica.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsTecnica.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaConfiguracaoTecnica.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaConfiguracaoTecnica.Browse;
begin
  if (cdsTecnica.IsEmpty) then
    BitBtnIncluir.Enabled  := True
  else
    BitBtnIncluir.Enabled  := False;

  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaConfiguracaoTecnica.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;

procedure TTelaConfiguracaoTecnica.FormActivate(Sender: TObject);
begin
  cdsTecnica.Open;
  browse;
  RadioGroupAmbiente.ItemIndex := cdsTecnicaCAMPO6.AsInteger;
end;

procedure TTelaConfiguracaoTecnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
