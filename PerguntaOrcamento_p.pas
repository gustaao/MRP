unit PerguntaOrcamento_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, JvExControls, JvXPCore, JvXPButtons;

type
  TPerguntaOrcamento = class(TForm)
    Panel1: TPanel;
    GroupBoxConta: TGroupBox;
    Label3: TLabel;
    MaskEditCDPedido: TMaskEdit;
    RadioGroupData: TRadioGroup;
    GroupBoxBotoes: TGroupBox;
    BitBtnFechar: TJvXPButton;
    BitBtnOK: TJvXPButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskeditValidade: TComboBox;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PerguntaOrcamento: TPerguntaOrcamento;

implementation

{$R *.dfm}

procedure TPerguntaOrcamento.FormActivate(Sender: TObject);
begin
  MaskeditCDPedido.SetFocus;
end;

end.
