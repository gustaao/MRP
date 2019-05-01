unit TelaComissoes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask,
  ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd, DB, SqlExpr, Provider,
  DBClient, DBCtrls;

type
  TTelaComissoes = class(TForm)
    PanelBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    dsComissao: TDataSource;
    cdsComissao: TClientDataSet;
    dspComissao: TDataSetProvider;
    qComissao: TSQLQuery;
    qComissaoCDCOMISSAO: TIntegerField;
    qComissaoCDVENDEDOR: TIntegerField;
    qComissaoCDPEDIDO: TIntegerField;
    qComissaoDATA: TDateField;
    qComissaoVALOR: TFloatField;
    qComissaoVENCIMENTO: TDateField;
    qComissaoPAGO: TIntegerField;
    qComissaoCADASTRADO_POR: TStringField;
    qComissaoCADASTRADO_EM: TSQLTimeStampField;
    qComissaoALTERADO_POR: TStringField;
    qComissaoALTERADO_EM: TSQLTimeStampField;
    qComissaoDATA_PAGTO: TDateField;
    qComissaoDATA_PEDIDO: TDateField;
    qComissaoVALOR_VENDA: TFloatField;
    qComissaoCLIENTE: TStringField;
    qComissaoNOME: TStringField;
    qComissaoCOMISSAO: TFloatField;
    qComissaoMETA: TFloatField;
    cdsComissaoCDCOMISSAO: TIntegerField;
    cdsComissaoCDVENDEDOR: TIntegerField;
    cdsComissaoCDPEDIDO: TIntegerField;
    cdsComissaoDATA: TDateField;
    cdsComissaoVALOR: TFloatField;
    cdsComissaoVENCIMENTO: TDateField;
    cdsComissaoPAGO: TIntegerField;
    cdsComissaoCADASTRADO_POR: TStringField;
    cdsComissaoCADASTRADO_EM: TSQLTimeStampField;
    cdsComissaoALTERADO_POR: TStringField;
    cdsComissaoALTERADO_EM: TSQLTimeStampField;
    cdsComissaoDATA_PAGTO: TDateField;
    cdsComissaoDATA_PEDIDO: TDateField;
    cdsComissaoVALOR_VENDA: TFloatField;
    cdsComissaoCLIENTE: TStringField;
    cdsComissaoNOME: TStringField;
    cdsComissaoCOMISSAO: TFloatField;
    cdsComissaoMETA: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    Label12: TLabel;
    MaskEditDataI: TMaskEdit;
    MaskEditDataF: TMaskEdit;
    procedure dspComissaoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;

  end;

var
  TelaComissoes: TTelaComissoes;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaComissoes.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsComissao.Edit;
end;

procedure TTelaComissoes.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsComissao.Cancel;
end;

procedure TTelaComissoes.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsComissao.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsComissao.Delete;
          cdsComissao.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaComissoes.BitBtnGeralClick(Sender: TObject);
begin
  cdsComissao.Filtered := False;
  cdsComissao.Refresh;
end;

procedure TTelaComissoes.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsComissao.State = dsInsert then
      begin
        cdsComissaoCDCOMISSAO.AsInteger     := Gerar_id('GEN_SEGMENTO_TRABALHO_ID');
        cdsComissaoCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsComissaoCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
      end
    else
      if cdsComissao.State = dsEdit then
        begin
          cdsComissaoALTERADO_POR.AsString  := VarNomeUsuario;
          cdsComissaoALTERADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
        end;

    cdsComissao.Post;
    cdsComissao.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaComissoes.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsComissao.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaComissoes.BitBtnOKClick(Sender: TObject);
begin
  if (Trim(MaskeditPesquisa.Text) <> '')or((RadioGroupPesquisa.ItemIndex = 3)and (MaskEditDataI.Text <> '  /  /    ')) then
    begin
      cdsComissao.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsComissao.Filter := 'CDCOMISSAO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsComissao.Filter := 'CDPEDIDO  = '''+MaskeditPesquisa.Text+''' ';
        2 : cdsComissao.Filter := 'UPPER(NOME) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        3 : cdsComissao.Filter := 'UPPER(CLIENTE) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        4 : cdsComissao.Filter := '(DATA >= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataI.Text))+''' and DATA <= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataF.Text))+''' ) ';
      end;
      cdsComissao.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaComissoes.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaComissoes.Browse;
begin
  if (VarMeusAcessos[116] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[117] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[118] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[119] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaComissoes.Insert;
begin
  BitBtnIncluir.Enabled    := False;
  BitBtnAlterar.Enabled    := False;
  BitBtnExcluir.Enabled    := False;
  BitBtnGravar.Enabled     := True;
  BitBtnSair.Enabled       := False;
  BitBtnCancelar.Enabled   := True;
  BitBtnRelatorios.Enabled := False;
  PanelCampos.Enabled      := True;
end;

procedure TTelaComissoes.RadioGroupPesquisaClick(Sender: TObject);
begin
  case RadioGroupPesquisa.ItemIndex of
    0,
    1,
    2,
    3 : begin
          MaskEditPesquisa.Enabled := True;
          MaskEditPesquisa.TabStop := True;
          Label1.Enabled           := False;
          MaskEditDataI.Enabled    := False;
          MaskEditDataI.TabStop    := False;
          Label2.Enabled           := False;
          MaskEditDataF.Enabled    := False;
          MaskEditDataF.TabStop    := False;
          MaskEditPesquisa.SetFocus;
        end;
    4 : begin
          MaskEditPesquisa.Enabled := False;
          MaskEditPesquisa.TabStop := False;
          Label1.Enabled           := True;
          MaskEditDataI.Enabled    := True;
          MaskEditDataI.TabStop    := True;
          Label2.Enabled           := True;
          MaskEditDataF.Enabled    := True;
          MaskEditDataF.TabStop    := True;
          MaskEditDataI.SetFocus;
        end;
  end;
end;

procedure TTelaComissoes.dspComissaoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('COMISSOES');
end;

procedure TTelaComissoes.FormActivate(Sender: TObject);
begin
  cdsComissao.Open;
end;

procedure TTelaComissoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

end.
