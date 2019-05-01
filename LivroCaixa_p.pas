unit LivroCaixa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  Mask, DBCtrls, Grids, DBGrids, JvExButtons, JvBitBtn;

type
  TLivroCaixa = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    qLCaixa: TSQLQuery;
    cdsLCaixa: TClientDataSet;
    dspLCaixa: TDataSetProvider;
    dsLCaixa: TDataSource;
    qLCaixaCDLIVRO_CAIXA: TIntegerField;
    qLCaixaDATA: TDateField;
    qLCaixaMOTIVO_RAZAO: TStringField;
    qLCaixaCREDITO: TFMTBCDField;
    qLCaixaDEBITO: TFMTBCDField;
    qLCaixaSALDO: TFMTBCDField;
    qLCaixaCONTA_ORIGEM: TStringField;
    qLCaixaCONTA_DESTINO: TStringField;
    qLCaixaDOCUMENTO: TStringField;
    qLCaixaLANCADO_POR: TStringField;
    qLCaixaLANCADO_EM: TDateField;
    cdsLCaixaCDLIVRO_CAIXA: TIntegerField;
    cdsLCaixaDATA: TDateField;
    cdsLCaixaMOTIVO_RAZAO: TStringField;
    cdsLCaixaCREDITO: TFMTBCDField;
    cdsLCaixaDEBITO: TFMTBCDField;
    cdsLCaixaSALDO: TFMTBCDField;
    cdsLCaixaCONTA_ORIGEM: TStringField;
    cdsLCaixaCONTA_DESTINO: TStringField;
    cdsLCaixaDOCUMENTO: TStringField;
    cdsLCaixaLANCADO_POR: TStringField;
    cdsLCaixaLANCADO_EM: TDateField;
    PanelCorpo: TPanel;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    qPF: TSQLQuery;
    dspPF: TDataSetProvider;
    cdsPF: TClientDataSet;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    dsPF: TDataSource;
    BitBtnRelatorios: TJvBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  LivroCaixa: TLivroCaixa;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}
procedure TLivroCaixa.Browse;
begin
  if (VarMeusAcessos[113] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[114] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled    := True;
  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
//  BitBtnRelatorios.Enabled := True;
  PanelCampos.Enabled      := False;
end;

procedure TLivroCaixa.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  BitBtnRelatorios.Enabled := False;
  PanelCampos.Enabled      := True;
end;


procedure TLivroCaixa.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsLCaixa.Cancel;
end;

procedure TLivroCaixa.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsLCaixa.State = dsInsert then
      begin
        cdsLCaixaCDLIVRO_CAIXA.AsInteger := Gerar_id('GEN_LIVRO_CAIXA_ID');
        cdsLCaixaSALDO.AsFloat           := ((cdsPF.FieldByName('SALDO_LIVROCAIXA').AsFloat + cdsLCaixaCREDITO.AsFloat)-cdsLCaixaDEBITO.AsFloat);
        cdsLCaixaLANCADO_EM.AsDateTime   := Date;
      end;
    cdsLCaixa.Post;
    cdsLCaixa.ApplyUpdates(0);

    cdsPF.Edit;
    cdsPF.FieldByName('SALDO_LIVROCAIXA').AsFloat := cdsLCaixaSALDO.AsFloat;
    cdsPF.Post;
    cdsPF.ApplyUpdates(0);
    cdsLCaixa.Refresh;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TLivroCaixa.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsLCaixa.Insert;
  cdsLCaixaDATA.AsDateTime := Date;
  DBedit1.SelectAll;
  DBedit1.SetFocus;
end;

procedure TLivroCaixa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TLivroCaixa.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[113] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[114] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsLCaixa.Close;
  cdsLCaixa.CommandText := (' select * from livro_caixa '+
                            ' where data = ''' + FormatDateTime('MM/DD/YYYY',Date) +''' ');
  cdsLCaixa.Open;
  cdsPF.Open;
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  cdsLCaixaCONTA_ORIGEM.EditMask  := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  cdsLCaixaCONTA_DESTINO.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  BitBtnGravar.Enabled   := False;
  BitBtnCancelar.Enabled := False;
end;

procedure TLivroCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TLivroCaixa.FormCreate(Sender: TObject);
begin
//  if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'PETSHOP' then
//    begin
//
//    end
//  else
//    begin
//      LivroCaixa.Caption := 'Livro Caixa';
//    end;
end;

procedure TLivroCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13  then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
