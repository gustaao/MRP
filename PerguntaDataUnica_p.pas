unit PerguntaDataUnica_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, JvExMask,
  JvToolEdit, ExtCtrls;

type
  TPerguntaDataUnica = class(TForm)
    Panel1: TPanel;
    GroupBoxData: TGroupBox;
    Label1: TLabel;
    Maskedit1: TJvDateEdit;
    GroupBoxBotoes: TGroupBox;
    BitBtnFechar: TJvXPButton;
    BitBtnOK: TJvXPButton;
    procedure Maskedit1Exit(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PerguntaDataUnica: TPerguntaDataUnica;

implementation

uses Principal_p, DMPrincipal_p, funcoes_p;

{$R *.dfm}



procedure TPerguntaDataUnica.BitBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TPerguntaDataUnica.FormActivate(Sender: TObject);
begin
  Maskedit1.SetFocus;
end;

procedure TPerguntaDataUnica.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
    end;
end;

procedure TPerguntaDataUnica.Maskedit1Exit(Sender: TObject);
begin
  if not BitBtnFechar.Focused then
    begin
      try
        VarDataI := StrToDate(Maskedit1.text);
        BitBtnOK.Enabled := True;
        BitBtnOK.SetFocus;
      except
         Application.MessageBox(PWideChar('Data Inválida, Favor Verificar.'),'Aviso', mb_OK);
         Maskedit1.setFocus;
         exit;
      end;
    end;
end;

end.
