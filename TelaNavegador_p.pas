unit TelaNavegador_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, StdCtrls, Mask, Buttons;

type
  TTelaNavegador = class(TForm)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    MaskEdit1: TMaskEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaNavegador: TTelaNavegador;

implementation

{$R *.dfm}

end.
