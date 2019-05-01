unit PerguntaMesAno_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvXPCore, JvXPButtons;

type
  TPerguntaMesAno = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cbMes: TComboBox;
    cbAno: TComboBox;
    GroupBoxBotoes: TGroupBox;
    BitBtnFechar: TJvXPButton;
    BitBtnOK: TJvXPButton;
    procedure FormActivate(Sender: TObject);
    procedure cbAnoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PerguntaMesAno: TPerguntaMesAno;
  Vardia, VarMes, VarAno : Word;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPerguntaMesAno.cbAnoExit(Sender: TObject);
begin
  BitBtnOK.Enabled := True;
  BitBtnOK.SetFocus;
end;

procedure TPerguntaMesAno.FormActivate(Sender: TObject);
begin
  DecodeDate(DMPrincipal.cdsData.FieldByName('current_date').AsDateTime,VarAno,VarMes,Vardia);

  cbAno.Items.Clear;
  cbAno.Items.Add(FloatToStr(VarAno +2));
  cbAno.Items.Add(FloatToStr(VarAno +1));
  cbAno.Items.Add(FloatToStr(VarAno));
  cbAno.Items.Add(FloatToStr(VarAno -1));
  cbAno.Items.Add(FloatToStr(VarAno -2));
end;

end.
