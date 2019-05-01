unit PerguntaData_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Buttons,
  JvToolEdit, JvExMask, JvExStdCtrls, JvButton, JvCtrls, JvExControls, JvXPCore, JvXPButtons,
  JvNavigationPane;
type
  TPerguntaData = class(TForm)
    GroupBoxBotoes: TGroupBox;
    BitBtnFechar: TJvXPButton;
    BitBtnOK: TJvXPButton;
    JvNavPanelHeader2: TJvNavPanelHeader;
    Panel1: TPanel;
    GroupBoxData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Maskedit1: TJvDateEdit;
    Maskedit2: TJvDateEdit;
    GroupBoxConta: TGroupBox;
    Label3: TLabel;
    MaskEditConta: TMaskEdit;
    GroupBoxValor: TGroupBox;
    Label4: TLabel;
    MaskEditValor: TMaskEdit;
    CheckBoxSabDom: TCheckBox;
    GroupBoxItem: TGroupBox;
    Label5: TLabel;
    MaskEditItem: TMaskEdit;
    MaskEditDescricao: TMaskEdit;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Maskedit2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEditContaExit(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditItemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RadioBobina: TradioGroup;
  end;

var
  PerguntaData: TPerguntaData;
  VarComponente : String;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaPlanoContas_p, RelatorioBoletimCaixa_p;

{$R *.dfm}

procedure TPerguntaData.MaskEdit1Exit(Sender: TObject);
begin
  if not BitBtnFechar.Focused then
    begin
      try
        VarDataI := strtodate(Maskedit1.text);
      except
         Application.MessageBox(PWideChar('Data Inválida, Favor Verificar.'),'Aviso', mb_OK);
         Maskedit1.setFocus;
         exit;
      end;
    end;
end;

procedure TPerguntaData.BitBtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TPerguntaData.BitBtnOKClick(Sender: TObject);
begin
//  RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
//  RelatorioBoletimCaixa.cdsCaixa.FetchParams;
//  RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := VarDataI;
//  RelatorioBoletimCaixa.cdsCaixa.Open;
//  RelatorioBoletimCaixa.cdsResumo.FetchParams;
//  RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := VarDataI;
//  RelatorioBoletimCaixa.cdsResumo.Open;
//  RelatorioBoletimCaixa.qTotal.Open;
//  RelatorioBoletimCaixa.QRCompositeReport1.Preview;
end;

procedure TPerguntaData.FormActivate(Sender: TObject);
begin
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  MaskEditConta.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
end;

procedure TPerguntaData.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'MaskeditConta' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          MaskeditConta.Text := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
          FreeAndNil(PesquisaPlanoContas);
          MaskeditConta.SetFocus;
        end;
    end;
end;

procedure TPerguntaData.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
    end;
end;

procedure TPerguntaData.Maskedit2Exit(Sender: TObject);
begin
  if not BitBtnFechar.Focused then
    begin
      try
        VarDataF := strtodate(Maskedit2.text);
      except
        Application.MessageBox(PWideChar('Data Inválida, Favor Verificar.'),'Aviso', mb_OK);
        Maskedit2.setFocus;
        exit;
      end;

      if StrToDate(Maskedit1.text) > StrToDate(Maskedit2.text) then
        begin
          Application.MessageBox(PWideChar('Data Inicial Maior que a Data Final, Favor Verificar.'),'Aviso', mb_OK);
          MaskEdit2.Text := '';
          Abort;
        end
      else
        begin
          if GroupBoxConta.Visible then
            MaskEditConta.SetFocus
          else
            if GroupBoxValor.Visible then
              MaskEditValor.SetFocus
            else
             if GroupBoxItem.Visible then
               MaskEditItem.SetFocus
             else
               BitBtnOK.setFocus;
        end;
    end;
end;

procedure TPerguntaData.MaskEditContaExit(Sender: TObject);
begin
  if not (BitBtnOK.Enabled)  then
    BitBtnOK.Enabled := True;
end;

procedure TPerguntaData.MaskEditItemExit(Sender: TObject);
begin
  DMPrincipal.qPesquisa.Active := False;
  DMPrincipal.qPesquisa.SQL.Clear;
  DMPrincipal.qPesquisa.SQL.Add('select cdproduto, cdinterno, descricao ');
  DMPrincipal.qPesquisa.SQL.Add('from Produtos ');
  DMPrincipal.qPesquisa.SQL.Add('where upper(cdinterno) = upper('''+MaskEditItem.Text+''') ');
  DMPrincipal.qPesquisa.Active := True;
  if Trim(DMPrincipal.qPesquisa.FieldByName('DESCRICAO').AsString) <> '' then
    begin
      MaskEditDescricao.Text := DMPrincipal.qPesquisa.FieldByName('DESCRICAO').AsString;
      if not (BitBtnOK.Enabled)  then
        BitBtnOK.Enabled := True;
    end
  else
    Application.MessageBox('Produto Não Encontrado.', 'Atenção', MB_OK + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
end;

end.
