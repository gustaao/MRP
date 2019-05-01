unit TelaRelatoriosVendas_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, pngimage;

type
  TTelaRelatoriosVendas = class(TForm)
    JvXPButton1: TJvXPButton;
    JvXPButton2: TJvXPButton;
    JvXPButton3: TJvXPButton;
    JvXPButton4: TJvXPButton;
    JvXPButton5: TJvXPButton;
    BitBtnSair: TJvXPButton;
    JvXPButton6: TJvXPButton;
    procedure JvXPButton1Click(Sender: TObject);
    procedure JvXPButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvXPButton3Click(Sender: TObject);
    procedure JvXPButton4Click(Sender: TObject);
    procedure JvXPButton5Click(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure JvXPButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaRelatoriosVendas: TTelaRelatoriosVendas;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, RelatorioBoletimCaixa_p, PerguntaDataUnica_p,
     RelatorioVendasSemanal_p, RelatorioVendasMensal_p, PerguntaMesAno_p, RelatorioVendasAnual_p,
     GraficoVendasDia_p;

{$R *.dfm}

procedure TTelaRelatoriosVendas.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaRelatoriosVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaRelatoriosVendas.JvXPButton1Click(Sender: TObject);
begin
  PerguntaDataUnica := TPerguntaDataUnica.Create(Application);
  if PerguntaDataUnica.ShowModal = mrOk then
    begin
      RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
      RelatorioBoletimCaixa.cdsCaixa.FetchParams;
      RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := VarDataI;
      RelatorioBoletimCaixa.cdsCaixa.Open;

      RelatorioBoletimCaixa.cdsResumo.FetchParams;
      RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := VarDataI;
      RelatorioBoletimCaixa.cdsResumo.Open;

      RelatorioBoletimCaixa.qTotal.Close;
      RelatorioBoletimCaixa.qTotal.Params.ParamByName('DATA').AsDate := VarDataI;
      RelatorioBoletimCaixa.qTotal.Open;

      RelatorioBoletimCaixa.QRLabelTituloResumo.Caption := 'Resumo das Vendas dia: ' + DateToStr(VarDataI);
      RelatorioBoletimCaixa.MontaGrafico;
      RelatorioBoletimCaixa.QRCompositeReport1.Prepare;
      RelatorioBoletimCaixa.QRCompositeReport1.Preview;
      FreeAndNil(RelatorioBoletimCaixa);
    end;
  FreeAndNil(PerguntaDataUnica);
end;

procedure TTelaRelatoriosVendas.JvXPButton2Click(Sender: TObject);
begin
  PerguntaDataUnica := TPerguntaDataUnica.Create(Application);
  if PerguntaDataUnica.ShowModal = mrOk then
    begin
      RelatorioBoletimCaixa := TRelatorioBoletimCaixa.Create(Application);
      RelatorioBoletimCaixa.cdsCaixa.FetchParams;
      RelatorioBoletimCaixa.cdsCaixa.Params.ParamByName('DATA').AsDateTime := VarDataI;
      RelatorioBoletimCaixa.cdsCaixa.Open;

      RelatorioBoletimCaixa.cdsResumo.FetchParams;
      RelatorioBoletimCaixa.cdsResumo.Params.ParamByName('DATA').AsDateTime := VarDataI;
      RelatorioBoletimCaixa.cdsResumo.Open;

      RelatorioBoletimCaixa.qTotal.Close;
      RelatorioBoletimCaixa.qTotal.Params.ParamByName('DATA').AsDate := VarDataI;
      RelatorioBoletimCaixa.qTotal.Open;

      RelatorioBoletimCaixa.QRLabelTituloResumo.Caption := 'Resumo das Vendas dia: ' + DateToStr(VarDataI);

      RelatorioBoletimCaixa.QRCompositeReport1.Prepare;
      RelatorioBoletimCaixa.QRCompositeReport1.Preview;
      FreeAndNil(RelatorioBoletimCaixa);
    end;
  FreeAndNil(PerguntaDataUnica);
end;

procedure TTelaRelatoriosVendas.JvXPButton3Click(Sender: TObject);
begin
  PerguntaDataUnica := TPerguntaDataUnica.Create(Application);
  if PerguntaDataUnica.ShowModal = mrOk then
    begin
      RelatorioVendasSemanal := TRelatorioVendasSemanal.Create(Application);
      RelatorioVendasSemanal.MontaRelatorio;
      FreeAndNil(RelatorioVendasSemanal);
    end;
  FreeAndNil(PerguntaDataUnica);
end;

procedure TTelaRelatoriosVendas.JvXPButton4Click(Sender: TObject);
begin
  PerguntaMesAno := TPerguntaMesAno.Create(Application);
  if PerguntaMesAno.ShowModal = mrOk then
    begin
      RelatorioVendasMensal := TRelatorioVendasMensal.Create(Application);
      RelatorioVendasMensal.MontaRelatorio;
      FreeAndNil(RelatorioVendasMensal);
    end;
  FreeAndNil(PerguntaMesAno);
end;

procedure TTelaRelatoriosVendas.JvXPButton5Click(Sender: TObject);
begin
  PerguntaMesAno := TPerguntaMesAno.Create(Application);
  if PerguntaMesAno.ShowModal = mrOk then
    begin
      RelatorioVendasAnual := TRelatorioVendasAnual.Create(Application);
      RelatorioVendasAnual.MontaRelatorio;
      FreeAndNil(RelatorioVendasAnual);
    end;
  FreeAndNil(PerguntaMesAno);
end;

procedure TTelaRelatoriosVendas.JvXPButton6Click(Sender: TObject);
begin
  GraficoVendasDia := TGraficoVendasDia.Create(Application);
  GraficoVendasDia.Show;
end;

end.
