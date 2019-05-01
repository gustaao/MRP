unit TelaServidor_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Registry, StdCtrls, Mask, Buttons,DB, SqlExpr,
  FMTBcd, Provider, DBClient, Grids, DBGrids, DBCtrls, ExtCtrls, ComCtrls,
  JvExControls, JvAnimatedImage, JvGIFCtrl;

type
  TTelaServidor = class(TForm)
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditBase: TMaskEdit;
    EditHost: TMaskEdit;
    EditPassword: TMaskEdit;
    EditUser: TMaskEdit;
    OpenDialog: TOpenDialog;
    SpeedButton1: TSpeedButton;
    JvGIFAnimator1: TJvGIFAnimator;
    Label1: TLabel;
    Label4: TLabel;
    procedure LeRegistroDoWindows;
    procedure CriaRegistroDoWindows;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GravaBase;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  TelaServidor: TTelaServidor;

implementation

uses DMPrincipal_p, Funcoes_p;


{$R *.dfm}


procedure TTelaServidor.GravaBase;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
  Reg.WriteString('BASE'     , EditBase.Text );
  Reg.WriteString('HOST'     , EditHost.Text );
  Reg.WriteString('USER'     , EditUser.Text );
  Reg.WriteString('PASSWORD' , EditPassword.Text );
  Reg.Free;
end;

procedure TTelaServidor.LeRegistroDoWindows;
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.KeyExists('\Software\Onzenet\MRP\Configuracoes') then
    begin
      try
        Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
        EditBase.Text     := Reg.ReadString('BASE');
        EditHost.Text     := Reg.ReadString('HOST');
        EditUser.Text     := Reg.ReadString('USER');
        EditPassword.Text := Reg.ReadString('PASSWORD');
        wBase             := Reg.ReadString('BASE');
        wHost             := Reg.ReadString('HOST');
        wUser             := Reg.ReadString('USER');
        wPassword         := Reg.ReadString('PASSWORD');

      except
        CriaRegistroDoWindows;
      end
    end
  else
    CriaRegistroDoWindows;
end;

procedure TTelaServidor.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
    begin
      EditBase.Text := OpenDialog.FileName;
    end;

end;

procedure TTelaServidor.CriaRegistroDoWindows;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);

  EditBase.Text     := Reg.ReadString('BASE');
  EditHost.Text     := Reg.ReadString('HOST');
  EditUser.Text     := Reg.ReadString('USER');
  EditPassword.Text := Reg.ReadString('PASSWORD');
  Reg.Free;
end;


procedure TTelaServidor.BitBtn1Click(Sender: TObject);
begin
  GravaBase;
  LeRegistroDoWindows;
  DMPrincipal.SQLCon.Connected := False;
   with DMPrincipal.SQLCon do
   Begin
     ConnectionName             := ('FBConnection');
     DriverName                 := ('Firebird');
     GetDriverFunc              := ('getSQLDriverINTERBASE');
     LibraryName                := ('dbxfb.dll');
     vendorlib                  := ('fbclient.DLL');
     LoginPrompt                := False;
     Params.Values['DATABASE']  := wHost+':'+wBase;
     Params.Values['USER_NAME'] := wUser;
     Params.Values['PASSWORD']  := wPassword;
     Params.Values['SQLDialect']:= '3';
   end;
  DMPrincipal.SQLCon.Connected := True;
  TelaServidor.Close;
end;

procedure TTelaServidor.FormActivate(Sender: TObject);
begin
  LeRegistroDoWindows;

  EditHost.Text     := wHost;
  EditBase.Text     := wBase;
  EditUser.Text     := wUser;
  EditPassword.Text := wPassword;
end;

procedure TTelaServidor.BitBtn2Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TTelaServidor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   begin
     key := #0;
     perform( wm_NextDlgCtl, 0 , 0 );
   end;
  if (key = #27) then
   Application.Terminate;
end;

end.
