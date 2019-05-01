unit TelaAlteraSenha_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, StdCtrls, Buttons, Mask,
  JvExStdCtrls, JvButton, JvCtrls, IBDatabase, IBCustomDataSet, IBQuery, FMTBcd,
  Provider, DBClient, SqlExpr;
type
  TTelaAlteraSenha = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    MaskEditSenha: TMaskEdit;
    MaskEditConfirmaSenha: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtUsuario: TEdit;
    EdtSenha: TEdit;
    BitBtnSair: TBitBtn;
    BitBtnOK: TBitBtn;
    qUsuario: TSQLQuery;
    cdsUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    dsUsuario: TDataSource;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditSenhaExit(Sender: TObject);
    procedure MaskEditConfirmaSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaAlteraSenha: TTelaAlteraSenha;
  Usuarionovo: STring;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}


procedure TTelaAlteraSenha.MaskEdit1Exit(Sender: TObject);
begin
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select NOME, SENHA FROM USERS');
// IBQ1.SQL.Add('Where NOME=''' + MaskEdit1.Text + '''');
// IBQ1.Active := True;
// If TRIM(IBQ1.FieldByName('NOME').asstring) <> TRIM(MaskEdit1.Text) then
//    Begin
//     Application.MessageBox(PWideChar('ATENÇÃO: USUÁRIO DESCONHECIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
//     MaskEdit1.Setfocus;
//    End
// Else
//   MaskEdit1.Enabled := False;
end;

procedure TTelaAlteraSenha.MaskEdit2Exit(Sender: TObject);
begin
// IBQ1.Active := False;
// IBQ1.SQL.Clear;
// IBQ1.SQL.Add('Select NOME, SENHA FROM USERS');
// IBQ1.SQL.Add('Where NOME=''' + MaskEdit1.Text + '''');
// IBQ1.Active := True;
// If TRIM(IBQ1.FieldByName('SENHA').asstring) <> TRIM(Criptografa(MaskEdit2.Text,136)) then
//    Begin
//     Application.MessageBox(PWideChar('ATENÇÃO: SENHA INVÁLIDA, FAVOR VERIFICAR.'),'Aviso',mb_OK);
//     MaskEdit1.Setfocus;
//     BitBtn1.Enabled := False;
//    End
// Else
//    Begin
//     Application.MessageBox(PWideChar('DIGITE A NOVA SENHA'),'Aviso',mb_OK);
//     MaskEdit1.Enabled := False;
//     MaskEdit2.Enabled := False;
//     MaskEdit3.Setfocus;
//    End;
end;

procedure TTelaAlteraSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
    end;
end;

procedure TTelaAlteraSenha.BitBtnSairClick(Sender: TObject);
begin
  cdsUsuario.Close;
  cdsUsuario.FetchParams;
  cdsUsuario.Params.ParamByName('USUARIO').AsString := Trim(edtUsuario.Text);
  cdsUsuario.Open;

  cdsUsuario.Edit;
  cdsUsuario.FieldByName('SENHA').AsString := Criptografa(MaskEditSenha.Text,136);
  cdsUsuario.Post;
  cdsUsuario.ApplyUpdates(0);

  Application.MessageBox('Senha Cadastrada com Sucesso ! ' , 'Aviso.',MB_OK );

end;

procedure TTelaAlteraSenha.FormCreate(Sender: TObject);
begin
  TelaAlteraSenha.Caption    := wCaptionFormularios;
end;

procedure TTelaAlteraSenha.MaskEditSenhaExit(Sender: TObject);
begin
  if Trim(MaskEditSenha.Text) = '' then
    begin
       MaskEditConfirmaSenha.Enabled := False;
       MaskEditSenha.Setfocus;
    end
  else
    begin
      MaskEditConfirmaSenha.Enabled := True;
      MaskEditConfirmaSenha.Setfocus;
    end;
end;

procedure TTelaAlteraSenha.MaskEditConfirmaSenhaExit(Sender: TObject);
begin
  if ((Trim(MaskEditConfirmaSenha.Text)) = (Trim(MaskEditSenha.Text)))  then
    begin
      BitBtnOK.Enabled := True;
      BitBtnOK.Setfocus;
    end
  else
    begin
      Application.MessageBox('Senhas Não Conferem! Redigite-as.' , 'Aviso.',MB_OK );
      BitBtnOK.Enabled := False;
      MaskEditSenha.Setfocus;
    end;
end;

end.
