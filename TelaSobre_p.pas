unit TelaSobre_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvStarfield, JvGradient, JvBaseDlg, JvJVCLAboutForm,
  JvPoweredBy, StdCtrls, JvExStdCtrls, JvBehaviorLabel, jpeg, ExtCtrls, ShellAPI,
  JvExExtCtrls, JvImage;

type
  TTelaSobre = class(TForm)
    LabelSoftware: TJvBehaviorLabel;
    JvImage1: TJvImage;
    JvBehaviorLabel1: TJvBehaviorLabel;
    JvBehaviorLabel2: TJvBehaviorLabel;
    JvBehaviorLabel3: TJvBehaviorLabel;
    Bevel1: TBevel;
    LabelVersao: TLabel;
    Label1: TLabel;
    JvBehaviorLabel6: TJvBehaviorLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure JvImage1Click(Sender: TObject);
    procedure JvImage1MouseEnter(Sender: TObject);
    procedure JvImage1MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaSobre: TTelaSobre;

implementation

uses Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}


procedure TTelaSobre.FormCreate(Sender: TObject);
begin
  TelaSobre.Caption   := wCaptionFormularios;
  LabelVersao.Caption := VersaoExe;

//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString <> 'PETSHOP' then
//    begin
//      LabelSoftware.BehaviorOptions.Active := False;
//      LabelSoftware.Caption                := 'Software de Gerenciamento Comercial';
//    end;
//
//
//  LabelSoftware.BehaviorOptions.Active := True;
//  LabelVersao.Caption := VarVersao;
//  LabelData.Caption   := VarDataVersao;
//
//
end;

procedure TTelaSobre.JvImage1Click(Sender: TObject);
begin
  shellexecute(handle,'open','http://www.onzenet.inf.br',nil,nil,sw_show);
end;

procedure TTelaSobre.JvImage1MouseEnter(Sender: TObject);
begin
  TelaSobre.Cursor  := crHandPoint;
end;

procedure TTelaSobre.JvImage1MouseLeave(Sender: TObject);
begin
  TelaSobre.Cursor  := crDefault;
end;

procedure TTelaSobre.Label2Click(Sender: TObject);
begin
  shellexecute(GetDesktopWindow,'open',pchar('mailto:gustavo@onzenet.inf.br'),nil,nil,sw_ShowNormal);
end;

procedure TTelaSobre.Label2MouseEnter(Sender: TObject);
begin
  Label2.Font.Color := clBlue;
  Label2.Font.Style := [fsUnderline];
  TelaSobre.Cursor  := crHandPoint;
end;

procedure TTelaSobre.Label2MouseLeave(Sender: TObject);
begin
  Label2.Font.Color := clWindowText;
  Label2.Font.Style := [];
  TelaSobre.Cursor  := crDefault;
end;

procedure TTelaSobre.Label3Click(Sender: TObject);
begin
  shellexecute(GetDesktopWindow,'open',pchar('mailto:paulo@onzenet.inf.br'),nil,nil,sw_ShowNormal);
end;

procedure TTelaSobre.Label3MouseEnter(Sender: TObject);
begin
  Label3.Font.Color := clBlue;
  Label3.Font.Style := [fsUnderline];
  TelaSobre.Cursor  := crHandPoint;
end;

procedure TTelaSobre.Label3MouseLeave(Sender: TObject);
begin
  Label3.Font.Color := clWindowText;
  Label3.Font.Style := [];
  TelaSobre.Cursor  := crDefault;
end;

end.
