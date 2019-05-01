unit TelaContasReceber_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvDBLookup, DBCtrls, Grids, DBGrids, StdCtrls, JvExControls,
  JvXPCore, JvXPButtons, Mask, ExtCtrls, JvExButtons, JvBitBtn, Buttons, FMTBcd,
  DB, Provider, DBClient, SqlExpr, JvNavigationPane, Menus;

type
  TTelaContasReceber = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnReceber: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape2: TShape;
    Label14: TLabel;
    Shape1: TShape;
    Label15: TLabel;
    Shape3: TShape;
    Label16: TLabel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox3: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    PanelRecebimento: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    qReceber: TSQLQuery;
    cdsReceber: TClientDataSet;
    dspReceber: TDataSetProvider;
    dsReceber: TDataSource;
    qReceberCDCTAS_RECEBER: TIntegerField;
    qReceberCDPEDIDO: TIntegerField;
    qReceberDATA: TDateField;
    qReceberVALOR: TFMTBCDField;
    qReceberVENCIMENTO: TDateField;
    qReceberTIPO_VENDA: TStringField;
    qReceberDATA_RECEBIMENTO: TDateField;
    qReceberLIQUIDADO: TIntegerField;
    qReceberLIQUIDADO_POR: TStringField;
    qReceberLIQUIDADO_EM: TDateField;
    qReceberCDPLANO_CONTAS: TIntegerField;
    qReceberPARCELA: TIntegerField;
    qReceberVALOR_RECEBIDO: TFMTBCDField;
    qReceberVALOR_JUROS: TFMTBCDField;
    qReceberVALOR_ABATIMENTO: TFMTBCDField;
    qReceberCDPORTADOR: TIntegerField;
    qReceberNOME: TStringField;
    qReceberDESCRICAO_CONTA: TStringField;
    qReceberPORTADOR: TStringField;
    cdsReceberCDCTAS_RECEBER: TIntegerField;
    cdsReceberCDPEDIDO: TIntegerField;
    cdsReceberDATA: TDateField;
    cdsReceberVALOR: TFMTBCDField;
    cdsReceberVENCIMENTO: TDateField;
    cdsReceberTIPO_VENDA: TStringField;
    cdsReceberDATA_RECEBIMENTO: TDateField;
    cdsReceberLIQUIDADO: TIntegerField;
    cdsReceberLIQUIDADO_POR: TStringField;
    cdsReceberLIQUIDADO_EM: TDateField;
    cdsReceberCDPLANO_CONTAS: TIntegerField;
    cdsReceberPARCELA: TIntegerField;
    cdsReceberVALOR_RECEBIDO: TFMTBCDField;
    cdsReceberVALOR_JUROS: TFMTBCDField;
    cdsReceberVALOR_ABATIMENTO: TFMTBCDField;
    cdsReceberCDPORTADOR: TIntegerField;
    cdsReceberNOME: TStringField;
    cdsReceberDESCRICAO_CONTA: TStringField;
    cdsReceberPORTADOR: TStringField;
    qReceberCONTA: TStringField;
    cdsReceberCONTA: TStringField;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    qReceberCADASTRADO_POR: TStringField;
    qReceberCADASTRADO_EM: TSQLTimeStampField;
    cdsReceberCADASTRADO_POR: TStringField;
    cdsReceberCADASTRADO_EM: TSQLTimeStampField;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    JvNavPanelHeader2: TJvNavPanelHeader;
    qPesquisa: TSQLQuery;
    Label9: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    cdsClone: TClientDataSet;
    qReceberCDCONTA_DESTINO: TIntegerField;
    cdsReceberCDCONTA_DESTINO: TIntegerField;
    qReceberCONTA_DESTINO: TStringField;
    qReceberDESCRICAO_CONTA_DESTINO: TStringField;
    cdsReceberCONTA_DESTINO: TStringField;
    cdsReceberDESCRICAO_CONTA_DESTINO: TStringField;
    DBEdit17: TDBEdit;
    PopupMenu1: TPopupMenu;
    RelatriodeContasaReceber1: TMenuItem;
    ContasRecebidasPerodo1: TMenuItem;
    ContasVencidas1: TMenuItem;
    qReceberCDPESSOA: TIntegerField;
    cdsReceberCDPESSOA: TIntegerField;
    RelatriodeFluxodeCaixa1: TMenuItem;
    procedure dspReceberGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnReceberClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure cdsReceberAfterOpen(DataSet: TDataSet);
    procedure cdsReceberAfterScroll(DataSet: TDataSet);
    procedure DBEdit13Exit(Sender: TObject);
    procedure ContasRecebidasPerodo1Click(Sender: TObject);
    procedure RelatriodeContasaReceber1Click(Sender: TObject);
    procedure ContasVencidas1Click(Sender: TObject);
    procedure RelatriodeFluxodeCaixa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure GravaResiduoPagamento(VarValorResidual : Real);
  end;

var
  TelaContasReceber: TTelaContasReceber;
  VarLiquidacao : Boolean = False;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaPlanoContas_p, PesquisaClientes_p,
     PerguntaData_p, RelatorioCtasRecebidasPeriodo_p, RelatorioFluxoCaixa_p;

{$R *.dfm}

procedure TTelaContasReceber.GravaResiduoPagamento(VarValorResidual : Real);
begin
  cdsReceber.Insert;
  cdsReceberCDCTAS_RECEBER.AsInteger := Gerar_id('GEN_CTAS_RECEBER_ID');
  cdsReceberLIQUIDADO.AsInteger      := 0;
  cdsReceberCADASTRADO_POR.AsString  := 'Sistema';
  cdsReceberCADASTRADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  cdsReceberCDPEDIDO.AsInteger       := cdsClone.FieldByName('CDPEDIDO').AsInteger;
  cdsReceberDATA.AsDateTime          := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  cdsReceberVALOR.AsFloat            := VarValorResidual;
  cdsReceberVENCIMENTO.AsDateTime    := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime + 15;
  cdsReceberTIPO_VENDA.AsString      := 'Residual';
  cdsReceberCDPLANO_CONTAS.AsInteger := cdsClone.FieldByName('CDPLANO_CONTAS').AsInteger;

  cdsReceberPARCELA.AsInteger        := cdsClone.FieldByName('PARCELA').AsInteger + 1;
  cdsReceberNOME.AsString            := cdsClone.FieldByName('NOME').AsString;
  cdsReceberDESCRICAO_CONTA.AsString := cdsClone.FieldByName('DESCRICAO_CONTA').AsString;
  cdsReceberCDPESSOA.AsInteger       := cdsClone.FieldByName('CDPESSOA').AsInteger;
  cdsReceber.Post;
end;


procedure TTelaContasReceber.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsReceber.Edit;
end;

procedure TTelaContasReceber.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  VarLiquidacao := False;
  cdsReceber.Cancel;
end;

procedure TTelaContasReceber.BitBtnExcluirClick(Sender: TObject);
begin
  if cdsReceber.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsReceber.Delete;
          cdsReceber.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaContasReceber.BitbtnGeralClick(Sender: TObject);
var VarQuery : String;
begin
  VarQuery := ('select ctas_receber.cdctas_receber, ctas_receber.cdpedido,             '+
               '       ctas_receber.data, ctas_receber.valor, ctas_receber.vencimento, '+
               '       ctas_receber.tipo_venda, ctas_receber.data_recebimento,         '+
               '       ctas_receber.liquidado,  ctas_receber.liquidado_por,            '+
               '       ctas_receber.liquidado_em, ctas_receber.cdplano_contas,         '+
               '       ctas_receber.parcela, ctas_receber.valor_recebido,              '+
               '       ctas_receber.valor_juros, ctas_receber.valor_abatimento,        '+
               '       ctas_receber.cdportador, ctas_receber.cadastrado_por,           '+
               '       ctas_receber.cadastrado_em, ctas_receber.cdconta_destino,       '+
               '       plc.conta as conta_destino, ctas_receber.cdpessoa,              '+
               '       plc.descricao_conta as descricao_conta_destino,                 '+
               '      (select nome from ( select c.nome,c.cdpessoa from clientes c union  '+
               '                          select f.nome, f.cdpessoa from fornecedores f union '+
               '                          select t.nome, t.cdpessoa from transportadores t)   '+
               '       where cdpessoa = pedidos.cdpessoa ),                              '+
               '       plano_contas.descricao_conta, plano_contas.conta, portador.portador    '+
               'from ctas_receber                                                    '+
               'left join pedidos on pedidos.cdpedido = ctas_receber.cdpedido        '+
               'left join plano_contas on plano_contas.cdplano_contas = ctas_receber.cdplano_contas '+
               'left join plano_contas plc on plc.cdplano_contas = ctas_receber.cdconta_destino     '+
               'left join portador on portador.cdportador = ctas_receber.cdportador                 ');
  if not (CheckBox1.Checked) then
    VarQuery := VarQuery + ' where (ctas_receber.liquidado <> 1) or (ctas_receber.liquidado is null)';

   cdsReceber.Close;
   cdsReceber.CommandText := VarQuery;
   cdsReceber.Open;
end;

procedure TTelaContasReceber.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsReceber.State = dsInsert then
      begin
        cdsReceberCDCTAS_RECEBER.AsInteger := Gerar_id('GEN_CTAS_RECEBER_ID');
        cdsReceberLIQUIDADO.AsInteger      := 0;
        cdsReceberCADASTRADO_POR.AsString  := VarNomeUsuario;
        cdsReceberCADASTRADO_EM.AsDateTime := Date;
      end
    else
      if (cdsReceber.State = dsEdit) and (VarLiquidacao) then
        begin
          if cdsReceberVALOR.AsFloat > cdsReceberVALOR_RECEBIDO.AsFloat  then
            begin
              if Application.MessageBox('O Valor Recebido é Inferior ao Cadastrado.'
                + #13#10 + '      Deseja colocara Diferença como Abatimento?' +
                #13#10#13#10 +
                'Se Não Colocar como Abatimento o Sistema irá Gerar outro' +
                #13#10 + 'Registro de Contas a Receber com a Diferença   ',
                'Atenção', MB_YESNO + MB_ICONINFORMATION + MB_TOPMOST) = mrNo then
                begin
                  cdsReceberVALOR_ABATIMENTO.AsFloat := 0;
                  cdsReceberVALOR_JUROS.AsFloat      := 0;
                  cdsReceber.Post;
                  GravaResiduoPagamento( (cdsReceberVALOR.AsFloat - cdsReceberVALOR_RECEBIDO.AsFloat) );
                end
              else
                cdsReceber.Post;
            end
          else
            cdsReceber.Post;
        end
      else
        cdsReceber.Post;

    cdsReceber.ApplyUpdates(0);
    VarLiquidacao := False;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaContasReceber.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsReceber.Insert;
  cdsReceberDATA.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  DBedit12.SetFocus;
end;

procedure TTelaContasReceber.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskEditPesquisa.Text) <> '' then
    begin
      cdsReceber.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsReceber.Filter   := 'CDCTAS_RECEBER    = '''+MaskEditPesquisa.Text+''' ';//Código do Documento
        1 : cdsReceber.Filter   := 'CDPEDIDO          = '''+MaskEditPesquisa.Text+''' ';//Código do Documento
        2 : cdsReceber.Filter   := 'CDPESSOA          = '''+MaskEditPesquisa.Text+''' ';//Código do Fornecedor
        3 : cdsReceber.Filter   := 'UPPER(NOME) LIKE  '+QuotedStr('%'+UpperCase(MaskeditPesquisa.Text)+'%');//Fornecedor
        4 : cdsReceber.Filter   := 'UPPER(VENCIMENTO) = '''+FormatDateTime('MM/DD/YYYY',StrToDate(MaskEditPesquisa.Text))+''' ';//Vencimento
      end;
      cdsReceber.Filtered := True;
    end;
end;

procedure TTelaContasReceber.BitBtnReceberClick(Sender: TObject);
begin
  Insert;
  cdsReceber.Edit;
  VarLiquidacao                     := True;
  cdsReceberLIQUIDADO.AsInteger     := 1;
  cdsReceberLIQUIDADO_POR.AsString  := VarNomeUsuario;
  cdsReceberLIQUIDADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
  PanelRecebimento.Visible          := True;
  DBEdit13.SetFocus;
end;

procedure TTelaContasReceber.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaContasReceber.Browse;
begin
  if (VarMeusAcessos[107] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[108] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[109] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[110] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled    := True;
//  BitBtnAlterar.Enabled    := True;
  BitBtnGravar.Enabled     := False;
//  BitBtnExcluir.Enabled    := True;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
//  BitBtnRelatorios.Enabled := True;
  PanelCampos.Enabled      := False;
end;

procedure TTelaContasReceber.cdsReceberAfterOpen(DataSet: TDataSet);
begin
  cdsClone.CloneCursor(cdsReceber,True,False);
end;

procedure TTelaContasReceber.cdsReceberAfterScroll(DataSet: TDataSet);
begin
  cdsClone.CloneCursor(cdsReceber,True,False);
  if cdsReceberLIQUIDADO.AsInteger = 1 then
    PanelRecebimento.Visible := True
  else
    PanelRecebimento.Visible := False;
end;

procedure TTelaContasReceber.ContasRecebidasPerodo1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioCtasRecebidasPeriodo := TRelatorioCtasRecebidasPeriodo.Create(Application);
        RelatorioCtasRecebidasPeriodo.ContasRecebidas;
        FreeAndNil(RelatorioCtasRecebidasPeriodo);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasReceber.ContasVencidas1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioCtasRecebidasPeriodo := TRelatorioCtasRecebidasPeriodo.Create(Application);
        RelatorioCtasRecebidasPeriodo.ContasNaoRecebidas;
        FreeAndNil(RelatorioCtasRecebidasPeriodo);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasReceber.DBEdit12Exit(Sender: TObject);
begin
  if not (BitBtnCancelar.Focused) then
    begin
      qPesquisa.Active := False;
      qPesquisa.SQL.Clear;
      qPesquisa.SQL.Add('select plano_contas.cdplano_contas, ');
      qPesquisa.SQL.Add('       plano_contas.conta,          ');
      qPesquisa.SQL.Add('       plano_contas.descricao_conta ');
      qPesquisa.SQL.Add('from plano_contas  ');
      qPesquisa.SQL.Add('where plano_contas.conta = '''+cdsReceberCONTA.AsString+''' ');
      qPesquisa.Active := True;

      if (qPesquisa.IsEmpty) then
        begin
          Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );
          DBEdit12.SetFocus;
        end
      else
       begin
         cdsReceberDESCRICAO_CONTA.AsString := qPesquisa.FieldByName('DESCRICAO_CONTA').AsString;
       end;
    end;
end;

procedure TTelaContasReceber.DBEdit13Exit(Sender: TObject);
begin
  if (not BitBtnCancelar.Focused) then
    begin
      qPesquisa.Active := False;
      qPesquisa.SQL.Clear;
      qPesquisa.SQL.Add('select plano_contas.cdplano_contas, ');
      qPesquisa.SQL.Add('       plano_contas.conta,          ');
      qPesquisa.SQL.Add('       plano_contas.descricao_conta ');
      qPesquisa.SQL.Add('from plano_contas  ');
      qPesquisa.SQL.Add('where plano_contas.conta = '''+cdsReceberCONTA_DESTINO.AsString+''' ');
      qPesquisa.Active := True;

      if (qPesquisa.IsEmpty) then
        begin
          Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );
          DBEdit13.SetFocus;
        end
      else
       begin
         cdsReceberDESCRICAO_CONTA_DESTINO.AsString := qPesquisa.FieldByName('DESCRICAO_CONTA').AsString;
         cdsReceberCDCONTA_DESTINO.AsInteger        := qPesquisa.FieldByName('CDPLANO_CONTAS').AsInteger;
       end;
    end;
end;

procedure TTelaContasReceber.DBEdit2Exit(Sender: TObject);
begin
  qPesquisa.Active := False;
  qPesquisa.SQL.Clear;
  qPesquisa.SQL.Add('select *  ');
  qPesquisa.SQL.Add('from ( select clientes.cdpessoa,   ');
  qPesquisa.SQL.Add('              clientes.tipo_pessoa,');
  qPesquisa.SQL.Add('              clientes.nome,       ');
  qPesquisa.SQL.Add('              clientes.apelido,    ');
  qPesquisa.SQL.Add('              clientes.endereco,   ');
  qPesquisa.SQL.Add('              clientes.numero,     ');
  qPesquisa.SQL.Add('              clientes.bairro,     ');
  qPesquisa.SQL.Add('              Clientes.cidade,     ');
  qPesquisa.SQL.Add('              Clientes.cep,        ');
  qPesquisa.SQL.Add('              clientes.uf,         ');
  qPesquisa.SQL.Add('              clientes.ie_rg,      ');
  qPesquisa.SQL.Add('              clientes.cod_ibge,   ');
  qPesquisa.SQL.Add('              clientes.cpf_cnpj,   ');
  qPesquisa.SQL.Add('              clientes.cod_pais,   ');
  qPesquisa.SQL.Add('              clientes.limite_credito,');
  qPesquisa.SQL.Add('              clientes.cdenquadramento_imposto');
  qPesquisa.SQL.Add('       from clientes   ');
  qPesquisa.SQL.Add('       union           ');
  qPesquisa.SQL.Add('       select fornecedores.cdpessoa, ');
  qPesquisa.SQL.Add('              fornecedores.tipo_pessoa,');
  qPesquisa.SQL.Add('              fornecedores.nome,       ');
  qPesquisa.SQL.Add('              fornecedores.apelido,    ');
  qPesquisa.SQL.Add('              fornecedores.endereco,   ');
  qPesquisa.SQL.Add('              fornecedores.numero,     ');
  qPesquisa.SQL.Add('              fornecedores.bairro,     ');
  qPesquisa.SQL.Add('              fornecedores.cidade,     ');
  qPesquisa.SQL.Add('              fornecedores.cep,        ');
  qPesquisa.SQL.Add('              fornecedores.uf,         ');
  qPesquisa.SQL.Add('              fornecedores.rg_ie as ie_rg,');
  qPesquisa.SQL.Add('              fornecedores.cod_ibge,   ');
  qPesquisa.SQL.Add('              fornecedores.cpf_cnpj,   ');
  qPesquisa.SQL.Add('              fornecedores.cod_pais,   ');
  qPesquisa.SQL.Add('              fornecedores.limite_credito,');
  qPesquisa.SQL.Add('              fornecedores.cdenquadramento_imposto');
  qPesquisa.SQL.Add('       from fornecedores ');
  qPesquisa.SQL.Add('       union             ');
  qPesquisa.SQL.Add('       select transportadores.cdpessoa, ');
  qPesquisa.SQL.Add('              transportadores.tipo_pessoa,');
  qPesquisa.SQL.Add('              transportadores.nome,       ');
  qPesquisa.SQL.Add('              transportadores.apelido,    ');
  qPesquisa.SQL.Add('              transportadores.endereco,   ');
  qPesquisa.SQL.Add('              transportadores.numero,     ');
  qPesquisa.SQL.Add('              transportadores.bairro,     ');
  qPesquisa.SQL.Add('              transportadores.cidade,     ');
  qPesquisa.SQL.Add('              transportadores.cep,        ');
  qPesquisa.SQL.Add('              transportadores.uf,         ');
  qPesquisa.SQL.Add('              transportadores.rg_ie as ie_rg,');
  qPesquisa.SQL.Add('              transportadores.cod_ibge,   ');
  qPesquisa.SQL.Add('              transportadores.cpf_cnpj,   ');
  qPesquisa.SQL.Add('              transportadores.cod_pais,   ');
  qPesquisa.SQL.Add('              transportadores.limite_credito,');
  qPesquisa.SQL.Add('              transportadores.cdenquadramento_imposto');
  qPesquisa.SQL.Add('       from transportadores  ');
  qPesquisa.SQL.Add('                    )        ');
  qPesquisa.SQL.Add('where cdpessoa  = '''+cdsReceberCDPESSOA.AsString+''' ');
  qPesquisa.Active := True;

  if (qPesquisa.IsEmpty) then
    begin
      Application.MessageBox('Atenção: Registro Não Encontrado, Favor Verificar.', 'Aviso.',MB_OK );
      DBEdit2.SetFocus;
    end
  else
   begin
     cdsReceberNOME.AsString := qPesquisa.FieldByName('NOME').AsString;
   end;
end;

procedure TTelaContasReceber.DBEdit6Exit(Sender: TObject);
begin
  if cdsReceberVALOR.AsFloat < cdsReceberVALOR_RECEBIDO.AsFloat  then
    cdsReceberVALOR_JUROS.AsFloat := cdsReceberVALOR.AsFloat - cdsReceberVALOR_RECEBIDO.AsFloat
  else
    if cdsReceberVALOR.AsFloat > cdsReceberVALOR_RECEBIDO.AsFloat  then
      cdsReceberVALOR_ABATIMENTO.AsFloat := cdsReceberVALOR.AsFloat - cdsReceberVALOR_RECEBIDO.AsFloat;
end;

procedure TTelaContasReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if (cdsReceber.FieldByName('VENCIMENTO').AsDateTime > DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime) and
     (cdsReceber.FieldByName('LIQUIDADO').AsInteger <> 1) then
    cor := clGreen
  else
    if (cdsReceber.FieldByName('VENCIMENTO').AsDateTime = DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime) and
       (cdsReceber.FieldByName('LIQUIDADO').AsInteger <> 1) then
      cor := clBlue
    else
      if (cdsReceber.FieldByName('VENCIMENTO').AsDateTime < DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime) and
         (cdsReceber.FieldByName('LIQUIDADO').AsInteger <> 1) then
        Cor := clRed
      else
        Cor := clBlack;

  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTelaContasReceber.Insert;
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






procedure TTelaContasReceber.RelatriodeContasaReceber1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioCtasRecebidasPeriodo := TRelatorioCtasRecebidasPeriodo.Create(Application);
        RelatorioCtasRecebidasPeriodo.ContasaReceber;
        FreeAndNil(RelatorioCtasRecebidasPeriodo);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasReceber.RelatriodeFluxodeCaixa1Click(Sender: TObject);
begin
  try
    PerguntaData := TPerguntaData.Create(Application);
    PerguntaData.GroupBoxValor.Visible := True;
    if PerguntaData.ShowModal = MROK Then
      begin
        RelatorioFluxoCaixa := TRelatorioFluxoCaixa.Create(Application);
        RelatorioFluxoCaixa.MontaRelatorio;
        FreeAndNil(RelatorioFluxoCaixa);
      end;
  finally
    FreeAndNil(PerguntaData);
  end;
end;

procedure TTelaContasReceber.dspReceberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'CTAS_RECEBER';
end;

procedure TTelaContasReceber.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[107] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[108] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[109] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[110] <> '001' then
    BitBtnRelatorios.Enabled := False;

  if VarMeusAcessos[111] <> '001' then
    BitBtnReceber.Visible := False;
  {$ENDREGION}

  DMPrincipal.qMascaraConta.Active := True;
  DMPrincipal.qMascaraConta.Refresh;
  BitbtnGeral.Click;
  cdsReceberCONTA.EditMask         := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  cdsReceberCONTA_DESTINO.EditMask := DMPrincipal.qMascaraContaMASCARA_PLCONTAS.AsString;
  Browse;
end;

procedure TTelaContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaContasReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;
      if VarComponente = 'DBEdit12' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          cdsReceberCONTA.AsString           := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
          cdsReceberCDPLANO_CONTAS.AsInteger := PesquisaPlanoContas.cdsPlContasCDPLANO_CONTAS.AsInteger;
          FreeAndNil(PesquisaPlanoContas);
          DBEdit12.SetFocus;
        end;

      if VarComponente = 'DBEdit2' then
        begin
          PesquisaClientes := TPesquisaClientes.Create(Application);
          PesquisaClientes.ShowModal;
          cdsReceberNOME.AsString       := Trim(PesquisaClientes.cdsClientesNOME.AsString);
          cdsReceberCDPESSOA.AsInteger  := PesquisaClientes.cdsClientesCDPESSOA.AsInteger;
          FreeAndNil(PesquisaClientes);
          DBEdit2.SetFocus;
        end;

      if VarComponente = 'DBEdit13' then
        begin
          PesquisaPlanoContas := TPesquisaPlanoContas.Create(Application);
          PesquisaPlanoContas.ShowModal;
          cdsReceberCONTA_DESTINO.AsString           := Trim(PesquisaPlanoContas.cdsPlContasCONTA.AsString);
          cdsReceberDESCRICAO_CONTA_DESTINO.AsString := Trim(PesquisaPlanoContas.cdsPlContasDESCRICAO_CONTA.AsString);
          cdsReceberCDCONTA_DESTINO.AsInteger        := PesquisaPlanoContas.cdsPlContasCDPLANO_CONTAS.AsInteger;
          FreeAndNil(PesquisaPlanoContas);
          DBEdit13.SetFocus;
        end;
    end;
end;

end.
