unit TelaCodigoSerial_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, DB, IBCustomDataSet, IBQuery,
  IBDatabase, Registry;

type
  TTelaCodigoSerial = class(TForm)
    EditSerial1: TEdit;
    EditSerial2: TEdit;
    EditSerial3: TEdit;
    EditSerial4: TEdit;
    EditSerial5: TEdit;
    EditSerial6: TEdit;
    EditSerial7: TEdit;
    EditChaveProduto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ProductName: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCodigoSerial: TTelaCodigoSerial;

implementation

uses TelaAcesso_p, Principal_p, Funcoes_p, DMPrincipal_p;

{$R *.dfm}




procedure TTelaCodigoSerial.BitBtn1Click(Sender: TObject);
var Reg: TRegistry;
begin
  VarLicenca := EditSerial1.Text +
                EditSerial2.Text +
                EditSerial3.Text +
                EditSerial4.Text +
                EditSerial5.Text +
                EditSerial6.Text +
                EditSerial7.Text;
  if ValidaSerial(VarLicenca) then
    begin
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_CURRENT_USER;
      Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
      Reg.WriteString('CHAVE',VarLicenca);
      Reg.Free;
      MessageBox(Application.Handle,PWideChar('Licença Gravada com Sucesso.' +#13+'Obrigado por usar os Produtos da Onzenet.'),'Aviso',mb_OK);
      Close;
    end
  else
    begin
      MessageBox(Application.Handle,PWideChar('Atenção: Código Serial Inválido Redigite-o.'),'Aviso',mb_OK);
//      EditSerial1.Clear;
//      EditSerial2.Clear;
//      EditSerial3.Clear;
//      EditSerial4.Clear;
//      EditSerial5.Clear;
//      EditSerial6.Clear;
//      EditSerial7.Clear;
      EditSerial1.SetFocus;
      EditSerial1.SelectAll;
    end;
end;

procedure TTelaCodigoSerial.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TTelaCodigoSerial.FormCreate(Sender: TObject);
 var
  NomeVol,
  SisArq: String;
  NumSere,
  Flags,
  TamMax: DWord;
begin
  //Pega Informações do HD.......................................
  SetLength(NomeVol,255);
  SetLength(SisArq,255);
  GetVolumeInformation('c:\', PChar(NomeVol), 255, @NumSere, TamMax, Flags, PChar(SisArq), 255);
  //.............................................................
  EditChaveProduto.Text := (Copy(IntToStr(NumSere),1,7));

end;

end.
