unit TelaFormaPagto_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, JvXPCore, JvXPButtons, Mask,
  ExtCtrls, JvExButtons, JvBitBtn, Buttons, JvExControls, JvNavigationPane,
  FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TTelaFormaPagto = class(TForm)
    JvNavPanelHeader2: TJvNavPanelHeader;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    DBGrid1: TDBGrid;
    PanelCampos: TPanel;
    qPagto: TSQLQuery;
    dspPagto: TDataSetProvider;
    cdsPagto: TClientDataSet;
    dsPagto: TDataSource;
    qPagtoCDPAGAMENTO: TIntegerField;
    qPagtoPAGAMENTO: TStringField;
    qPagtoCDPLANO_CONTAS: TIntegerField;
    qPagtoDATA: TDateField;
    qPagtoPARCELAMENTO: TIntegerField;
    qPagtoGRAVA_CTAS_RECEBER: TIntegerField;
    qPagtoGRAVA_CTA_CORRENTE: TIntegerField;
    qPagtoPOSSUI_COMPLEMENTO: TIntegerField;
    qPagtoCADASTRADO_POR: TStringField;
    qPagtoCADASTRADO_EM: TSQLTimeStampField;
    qPagtoALTERADO_POR: TStringField;
    qPagtoALTERADO_EM: TSQLTimeStampField;
    qPagtoCONTA: TStringField;
    qPagtoDESCRICAO_CONTA: TStringField;
    cdsPagtoCDPAGAMENTO: TIntegerField;
    cdsPagtoPAGAMENTO: TStringField;
    cdsPagtoCDPLANO_CONTAS: TIntegerField;
    cdsPagtoDATA: TDateField;
    cdsPagtoPARCELAMENTO: TIntegerField;
    cdsPagtoGRAVA_CTAS_RECEBER: TIntegerField;
    cdsPagtoGRAVA_CTA_CORRENTE: TIntegerField;
    cdsPagtoPOSSUI_COMPLEMENTO: TIntegerField;
    cdsPagtoCADASTRADO_POR: TStringField;
    cdsPagtoCADASTRADO_EM: TSQLTimeStampField;
    cdsPagtoALTERADO_POR: TStringField;
    cdsPagtoALTERADO_EM: TSQLTimeStampField;
    cdsPagtoCONTA: TStringField;
    cdsPagtoDESCRICAO_CONTA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    qPesquisa: TSQLQuery;
    procedure dspPagtoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaFormaPagto: TTelaFormaPagto;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaPlanoContas_p;

{$R *.dfm}

procedure TTelaFormaPagto.Browse;
begin
  if (VarMeusAcessos[182] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[183] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[184] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[185] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled   := False;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTelaFormaPagto.DBEdit3Exit(Sender: TObject);
begin
  if Trim(cdsPagtoCONTA.AsString) <> '' then
    begin
      if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
        begin
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select plano_contas.cdplano_contas, ');
          qPesquisa.SQL.Add('       plano_contas.conta,          ');
          qPesquisa.SQL.Add('       plano_contas.descricao_conta ');
          qPesquisa.SQL.Add('from plano_contas  ');
          qPesquisa.SQL.Add('where plano_contas.conta = '''+cdsPagtoCONTA.AsString+''' ');
          qPesquisa.Active := True;

          if (qPesquisa.IsEmpty) then
            begin
              Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );
              DBEdit3.SetFocus;
            end
          else
           begin
             cdsPagtoCDPLANO_CONTAS.AsInteger := qPesquisa.FieldByName('CDPLANO_CONTAS').AsInteger;
             cdsPagtoDESCRICAO_CONTA.AsString := qPesquisa.FieldByName('DESCRICAO_CONTA').AsString;
           end;
        end;
    end;

end;

procedure TTelaFormaPagto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
//var  Check : Integer;
//     R : TRect;
begin
//  if Column.FieldName = 'GRAVA_CTAS_RECEBER' then //COLOQUE O NOME DA COLUNA, NO MEU CASO ''CONCLUIDO''
//    begin
//      DBGrid1.Canvas.FillRect(Rect);
//      Check := 0;
//      if cdsPagtoGRAVA_CTAS_RECEBER.AsInteger = 1 then
//        Check := DFCS_CHECKED
//      else
//        Check := 0;
//      R:=Rect;
//      InflateRect(R,-2,-2);
//      //DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,DFC_BUTTON, DrawState);
//      DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
//    end;
end;

procedure TTelaFormaPagto.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;

procedure TTelaFormaPagto.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsPagto.Edit;
end;

procedure TTelaFormaPagto.BitBtnCancelarClick(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[182] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[183] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[184] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[185] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsPagto.Cancel;
end;

procedure TTelaFormaPagto.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsPagto.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsPagto.Delete;
          cdsPagto.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaFormaPagto.BitbtnGeralClick(Sender: TObject);
begin
  cdsPagto.Filtered := False;
  cdsPagto.Refresh;
end;

procedure TTelaFormaPagto.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsPagto.State = dsInsert then
      begin
        cdsPagtoCDPAGAMENTO.AsInteger  := Gerar_id('GEN_PAGAMENTOS_ID');
      end;
    cdsPagto.Post;
    cdsPagto.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaFormaPagto.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsPagto.Insert;
  DBEdit2.SetFocus;
end;

procedure TTelaFormaPagto.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsPagto.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsPagto.Filter := 'CDPAGAMENTO  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsPagto.Filter := 'UPPER(PAGAMENTO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
      end;
      cdsPagto.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaFormaPagto.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaFormaPagto.dspPagtoGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := 'PAGAMENTOS';
end;

procedure TTelaFormaPagto.FormActivate(Sender: TObject);
begin
  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  cdsPagto.Open;
  cdsPagtoCONTA.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  Browse;
end;

procedure TTelaFormaPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaFormaPagto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit3' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          cdsPagtoCONTA.AsString           := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
          cdsPagtoDESCRICAO_CONTA.AsString := PesquisaPlanoContas.cdsPlContasDESCRICAO_CONTA.AsString;
          cdsPagtoCDPLANO_CONTAS.AsInteger := PesquisaPlanoContas.cdsPlContasCDPLANO_CONTAS.AsInteger;
          FreeAndNil(PesquisaPlanoContas);
          DBEdit3.SetFocus;
        end;
    end;
end;

end.
