unit TelaCapturaXML_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ACBrNFe, JvExStdCtrls,
  JvButton, JvCtrls, ComCtrls, pcnConversao, ACBrUtil, pcnNFeRTXT, Mask, DB, IBCustomDataSet, IBQuery,
  Buttons, JvExMask, JvEnterTab, JvComponentBase, Math,
  ExtCtrls, JvNavigationPane, registry, ShellAPI, IBDatabase, JvGIF, ACBrBase,
  ACBrDFe, JvExControls, JvXPCore, JvXPButtons, Grids, DBGrids, JvToolEdit,
  pngimage, JvExButtons, JvBitBtn, DBCtrls, Barcd3, Menus;

type
  TTelaCapturaXML = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    JvNavPanelHeader2: TJvNavPanelHeader;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox2: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitbtnGeral: TJvXPButton;
    PanelCampos: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    LabelChaveAcesso: TLabel;
    MaskeditOC: TMaskEdit;
    BitBtnXML: TJvXPButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    PanelItens: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    PanelNotas: TPanel;
    PanelLeft: TPanel;
    DBGrid1: TDBGrid;
    PanelRigth: TPanel;
    Label21: TLabel;
    Label23: TLabel;
    PopupMenu1: TPopupMenu;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    procedure BitBtnXMLClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitbtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  TelaCapturaXML: TTelaCapturaXML;
    VarItemAba         : String;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, DMRecebeNFe_p;

{$R *.dfm}

procedure TTelaCapturaXML.Browse;
begin
  if (VarMeusAcessos[167] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[168] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[169] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[170] = '001' then
    BitBtnRelatorios.Enabled := True;

  BitBtnGravar.Enabled     := False;
  BitBtnSair.Enabled       := True;
  BitBtnCancelar.Enabled   := False;
  PanelCampos.Enabled      := False;
end;

procedure TTelaCapturaXML.Insert;
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

procedure TTelaCapturaXML.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMRecebeNFe.cdsENF.Edit;
end;

procedure TTelaCapturaXML.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMRecebeNFe.cdsENF.Cancel;
end;

procedure TTelaCapturaXML.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if DMRecebeNFe.cdsENF.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          DMRecebeNFe.cdsENF.Delete;
          DMRecebeNFe.cdsENF.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCapturaXML.BitbtnGeralClick(Sender: TObject);
begin
  DMRecebeNFe.cdsENF.Filtered := False;
  DMRecebeNFe.cdsENF.Refresh;
end;

procedure TTelaCapturaXML.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if DMRecebeNFe.cdsENF.State = dsInsert then
      begin
        DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_ID');
      end;

    DMRecebeNFe.cdsENFLANCADO_POR.AsString  := VarNomeUsuario;
    DMRecebeNFe.cdsENFLANCADO_EM.AsDateTime := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
    DMRecebeNFe.cdsENF.Post;
    DMRecebeNFe.cdsENF.ApplyUpdates(0);

    DMRecebeNFe.cdsENFI.ApplyUpdates(0);
    DMRecebeNFe.cdsENFFatura.ApplyUpdates(0);
    DMRecebeNFe.cdsCtasPagar.ApplyUpdates(0);
    DMRecebeNFe.cdsProdutos.ApplyUpdates(0);
    DMRecebeNFe.cdsMovimenta.ApplyUpdates(0);

  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaCapturaXML.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMRecebeNFe.cdsENF.Insert;
  DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger := Consulta_id('GEN_NF_FORNECEDOR_ID') + 1;
  MaskeditOC.SetFocus;
end;

procedure TTelaCapturaXML.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      DMRecebeNFe.cdsENF.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : DMRecebeNFe.cdsENF.Filter := 'NNF          = '''+MaskeditPesquisa.Text+''' ';
        1 : DMRecebeNFe.cdsENF.Filter := 'CDPESSOA     = '''+MaskeditPesquisa.Text+''' ';
        2 : DMRecebeNFe.cdsENF.Filter := 'UPPER(NOME) LIKE    UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        3 : DMRecebeNFe.cdsENF.Filter := 'DATA_EMISSAO = '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskEditPesquisa.Text))+''' ';//Data Emissão
        4 : DMRecebeNFe.cdsENF.Filter := 'DATA_ENTRADA = '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskEditPesquisa.Text))+''' ';//Data Entrada
      end;
      DMRecebeNFe.cdsENF.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaCapturaXML.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCapturaXML.BitBtnXMLClick(Sender: TObject);
var   NFeRTXT: TNFeRTXT;
      i,x : Integer;
      VarItem : String;
      Label Fornecedor;
begin
  OpenDialog1.FileName   :=  '';
  OpenDialog1.InitialDir := Acbrnfe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
    begin
      {$REGION 'Buscando o XML'}
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.Add;
      NFeRTXT := TNFeRTXT.Create(ACBrNFe1.NotasFiscais.Items[0].NFe);
      NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
      if NFeRTXT.LerTxt then
         NFeRTXT.Free
      else
        begin
           NFeRTXT.Free;
           ACBrNFe1.NotasFiscais.Clear;
           try
              ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
           except
              ShowMessage('Arquivo NFe Inválido');
              exit;
           end;
        end;
      {$ENDREGION}

      if Trim(MaskeditOC.Text) <> '' then
        begin
          {$REGION 'Consiste Fornecedor - Desabilitado'}
          //if ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF <> DMRecebeNFe.cdsOCI then
          //  begin
          //    Application.MessageBox(PWideChar('ATENÇÃO: FORNECEDOR DIVERGENTE DA NOTA FISCAL. FAVOR VERIFICAR.'),'Aviso',mb_OK);
          //    Maskedit2.SetFocus;
          //    Abort;
          //  end;
          {$ENDREGION}

          {$REGION 'Consiste Valor da NFe e Ordem de Compra - Desabilitado'}
          //if (ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF) > IBQ1.FieldByName('VALORT').AsFloat then
          //  begin
          //    Application.MessageBox(PWideChar('ATENÇÃO: NOTA FISCAL COM VALOR MAIOR QUE A ORDEM DE COMPRA. FAVOR VERIFICAR.'),'Aviso',mb_OK);
          //    MaskeditOC.SetFocus;
          //    Abort;
          //  end;
          {$ENDREGION}
        end;

      try
        for i := 0 to ACBrNFe1.NotasFiscais.Count-1 do
          begin
            with ACBrNFe1.NotasFiscais.Items[i].NFe do
              begin
                {$REGION 'Cabeçalho da NFe'}
                DMRecebeNFe.cdsENFCHAVE_ACESSO.AsString          := procNFe.chNFe;
                DMRecebeNFe.cdsENFPROTOCOLO_AUTORIZACAO.AsString := procNFe.nProt + FormatDateTime('  dd/mm/yyyy  hh:mm', procNFe.dhRecbto );
                DMRecebeNFe.cdsENFNNF.AsString                   := IntToStr(Ide.nNF);
                DMRecebeNFe.cdsENFSERIE.AsInteger                := Ide.serie;
                DMRecebeNFe.cdsENFDATA_EMISSAO.AsDateTime        := Ide.dEmi;
                DMRecebeNFe.cdsENFDATA_ENTRADA.AsDateTime        := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                DMRecebeNFe.cdsENFNATUREZA_OPERACAO.AsString     := Ide.natOp;
                {$ENDREGION}

                {$REGION 'Localiza o Fornecedor'}
                Fornecedor:

                DMRecebeNFe.cdsForn.Close;
                DMRecebeNFe.cdsForn.FetchParams;
                DMRecebeNFe.cdsForn.Params.ParamByName('CPF_CNPJ').AsString := Emit.CNPJCPF;
                DMRecebeNFe.cdsForn.Open;

                if DMRecebeNFe.cdsForn.IsEmpty then
                  begin
                    if Application.MessageBox('                 Fornecedor Não Cadastrado!'
                      + #13#10 + 'Deseja que o Sistema Efetue o Cadastramento Rápido?!',
                      'Atenção', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
                      begin
                        DMRecebeNFe.cdsForn.Insert;
                        DMRecebeNFe.cdsFornCDFORNECEDOR.AsInteger     := Gerar_id('GEN_FORNECEDORES_ID');
                        DMRecebeNFe.cdsFornCDPESSOA.AsInteger         := Gerar_id('GEN_PESSOA_ID');
                        DMRecebeNFe.cdsFornDATA_CADASTRO.AsDateTime   := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                        DMRecebeNFe.cdsFornNOME.AsString              := Emit.xNome;
                        DMRecebeNFe.cdsFornAPELIDO.AsString           := Emit.xFant;
                        DMRecebeNFe.cdsFornTIPO_PESSOA.AsInteger      := 1;
                        DMRecebeNFe.cdsFornCPF_CNPJ.AsString          := Emit.CNPJCPF;
                        DMRecebeNFe.cdsFornRG_IE.AsString             := Emit.IE;
                        DMRecebeNFe.cdsFornENDERECO.AsString          := Emit.EnderEmit.xLgr;
                        DMRecebeNFe.cdsFornNUMERO.AsString            := Emit.EnderEmit.nro;
                        DMRecebeNFe.cdsFornBAIRRO.AsString            := Emit.EnderEmit.xBairro;
                        DMRecebeNFe.cdsFornCIDADE.AsString            := Emit.EnderEmit.xMun;
                        DMRecebeNFe.cdsFornCEP.AsString               := IntToStr(Emit.EnderEmit.CEP);
                        DMRecebeNFe.cdsFornCOD_IBGE.AsString          := IntToStr(Emit.EnderEmit.cMun);
                        DMRecebeNFe.cdsFornUF.AsString                := Emit.EnderEmit.UF;
                        DMRecebeNFe.cdsFornPAIS.AsString              := Emit.EnderEmit.xPais;
                        DMRecebeNFe.cdsFornFONE.AsString              := Emit.EnderEmit.fone;
                        DMRecebeNFe.cdsForn.Post;
                        DMRecebeNFe.cdsForn.ApplyUpdates(0);
                        DMRecebeNFe.cdsForn.Refresh;
                        Goto Fornecedor;
                      end
                    else
                      begin
                        MaskeditOC.SetFocus;
                        Abort;
                      end;
                  end
                else
                  begin
                    DMRecebeNFe.cdsENFCDPESSOA.AsInteger := DMRecebeNFe.cdsFornCDPESSOA.AsInteger;
                    DMRecebeNFe.cdsENFNOME.AsString      := DMRecebeNFe.cdsFornNOME.AsString;
                    DMRecebeNFe.cdsENFCDPESSOA.AsInteger := DMRecebeNFe.cdsFornCDPESSOA.AsInteger;
                    DMRecebeNFe.cdsENFCPF_CNPJ.AsString  := DMRecebeNFe.cdsFornCPF_CNPJ.AsString;
                    DMRecebeNFe.cdsENFRG_IE.AsString     := DMRecebeNFe.cdsFornRG_IE.AsString;
                  end;
                {$ENDREGION}

                {$REGION 'Peso Liquido/Bruto'}
                for x := 0 to Transp.Vol.Count-1 do
                  begin
                    with Transp.Vol.Items[x] do
                      begin
                        DMRecebeNFe.cdsENFPESO_LIQUIDO.AsFloat := pesoL;
                        DMRecebeNFe.cdsENFPESO_BRUTO.AsFloat   := pesoB;
                      end;
                  end;
                {$ENDREGION}

                {$REGION 'Cálculo do Imposto'}
                DMRecebeNFE.cdsENFBASE_CALC_ICMS.AsFloat    := Total.ICMSTot.vBC;
                DMRecebeNFE.cdsENFTOTAL_ICMS.AsFloat        := Total.ICMSTot.vICMS;
                DMRecebeNFE.cdsENFBASE_CALC_ICMS_ST.AsFloat := Total.ICMSTot.vBCST;
                DMRecebeNFE.cdsENFVALOR_ICMS_ST.AsFloat     := Total.ICMSTot.vST;
                DMRecebeNFE.cdsENFVALOR_MERCADORIA.AsFloat  := Total.ICMSTot.vProd;
                DMRecebeNFE.cdsENFTOTAL_VFRETE.AsFloat      := Total.ICMSTot.vFrete;
                DMRecebeNFE.cdsENFTOTAL_SEGURO.AsFloat      := Total.ICMSTot.vSeg;
                DMRecebeNFE.cdsENFTOTAL_VDESC.AsFloat       := Total.ICMSTot.vDesc;
                DMRecebeNFE.cdsENFOUTRAS_DESPESAS.AsFloat   := Total.ICMSTot.vOutro;
                DMRecebeNFE.cdsENFTOTAL_IPI.AsFloat         := Total.ICMSTot.vIPI;
                DMRecebeNFe.cdsENFVALOR_TOTAL_NF.AsFloat    := Total.ICMSTot.vNF;
                {$ENDREGION}

                {$REGION 'Desdobramento - Duplicatas'}
                DMRecebeNFe.cdsENFDESDOBRAMENTO.AsInteger := Cobr.Dup.Count;

                DMRecebeNFe.cdsENFFatura.Open;
                DMRecebeNFe.cdsCtasPagar.Open;
                for x := 0 to Cobr.Dup.Count - 1 do
                  begin
                    with Cobr.Dup.Items[x] do
                      begin
                        DMRecebeNFe.cdsENFFatura.Insert;
                        DMRecebeNFe.cdsENFFaturaCDNF_FORNECEDOR_FATURA.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_FATURA_ID');
                        DMRecebeNFe.cdsENFFaturaCDNF_FORNECEDOR.AsInteger        := DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger;
                        DMRecebeNFe.cdsENFFaturaNUMERO_FTURA.AsInteger           := x + 1;
                        DMRecebeNFe.cdsENFFaturaVENCIMENTO.AsDateTime            := (dVenc);
                        DMRecebeNFe.cdsENFFaturaVALOR.AsFloat                    :=  vDup;
                        DMRecebeNFe.cdsENFFatura.Post;

                        DMRecebeNFe.cdsCtasPagar.Insert;
                        DMRecebeNFe.cdsCtasPagarCDCTAS_PAGAR.AsInteger           := Gerar_id('GEN_CTAS_PAGAR_ID');
                        DMRecebeNFe.cdsCtasPagarCDFORNECEDOR.AsInteger           := DMRecebeNFe.cdsENFCDPESSOA.AsInteger;
                        DMRecebeNFe.cdsCtasPagarNUMERO_DOCUMENTO.AsString        := nDup;
                        DMRecebeNFe.cdsCtasPagarDESCRICAO.AsString               := 'NFe - '+IntToStr(Ide.nNF);
                        DMRecebeNFe.cdsCtasPagarVALOR.AsFloat                    := vDup;
                        DMRecebeNFe.cdsCtasPagarVENCIMENTO.AsDateTime            := dVenc;
                        DMRecebeNFe.cdsCtasPagarCADASTRADO_POR.AsString          := 'MRP';
                        DMRecebeNFe.cdsCtasPagarLIQUIDADO.AsInteger              := 0;
                        DMRecebeNFe.cdsCtasPagarCADASTRADO_EM.AsDateTime         := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;  
                        DMRecebeNFe.cdsCtasPagar.Post;
                      end;
                  end;
                {$ENDREGION}

                {$REGION 'Inserindo os Itens da NFe'}
                for x := 0 to Det.Count-1 do
                  begin
                    DMRecebeNFe.cdsENFI.Insert;
                    DMRecebeNFe.cdsENFICDNF_FORNECEDOR_ITEM.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_ITENS_ID');
                    DMRecebeNFe.cdsENFICDNF_FORNECEDOR.AsInteger      := DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger;
                    with Det.Items[x] do
                      begin
                        {$REGION 'Consistindo os Itens'}
                        //1º Verifica se o Código Interno é o Mesmo do Fornecedor.
                        DMRecebeNFe.qPesquisa.Active := False;
                        DMRecebeNFe.qPesquisa.SQL.Clear;
                        DMRecebeNFe.qPesquisa.SQL.Add('select produtos.cdinterno, produtos.descricao');
                        DMRecebeNFe.qPesquisa.SQL.Add('from produtos');
                        DMRecebeNFe.qPesquisa.SQL.Add('where produtos.cdinterno = '''+Prod.cProd+''' ');
                        DMRecebeNFe.qPesquisa.Active := True;

                        if Trim(DMRecebeNFe.qPesquisa.FieldByName('CDINTERNO').AsString) = '' then
                          begin
                            //2º Verifica se as Primeiras 8 Posições do Código Interno Esta na nota do Fornecedor.
                            DMRecebeNFe.qPesquisa.Active := False;
                            DMRecebeNFe.qPesquisa.SQL.Clear;
                            DMRecebeNFe.qPesquisa.SQL.Add('select produtos.cdinterno, produtos.descricao');
                            DMRecebeNFe.qPesquisa.SQL.Add('from produtos ');
                            DMRecebeNFe.qPesquisa.SQL.Add('where produtos.cdinterno = '''+Copy(Prod.cProd,1,8)+''' ');
                            DMRecebeNFe.qPesquisa.Active := True;

                            if Trim(DMRecebeNFe.qPesquisa.FieldByName('CDINTERNO').AsString) = '' then
                              begin
                                //3º Verifica se Existe Na Tabela de Compatibilidade
                                DMRecebeNFe.qPesquisa.Active := False;
                                DMRecebeNFe.qPesquisa.SQL.Clear;
                                DMRecebeNFe.qPesquisa.SQL.Add('select nfc.cdcompatibilidade, nfc.cdproduto, nfc.cdproduto_fornecedor,');
                                DMRecebeNFe.qPesquisa.SQL.Add('       nfc.cdfornecedor, nfc.cadastrado_por, nfc.cadastrado_em,');
                                DMRecebeNFe.qPesquisa.SQL.Add('       produtos.descricao');
                                DMRecebeNFe.qPesquisa.SQL.Add('from nf_fornecedor_compat nfc');
                                DMRecebeNFe.qPesquisa.SQL.Add('join produtos on produtos.cdproduto = nfc.cdproduto ');
                                DMRecebeNFe.qPesquisa.SQL.Add('where nfc.cdfornecedor = '''+DMRecebeNFe.cdsENFCDPESSOA.AsString+''' ');
                                DMRecebeNFe.qPesquisa.SQL.Add('and nfc.cdproduto_fornecedor = '''+Prod.cProd+''' ');
                                DMRecebeNFe.qPesquisa.Active := True;

                                if Trim(DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsString) = '' then
                                  begin
                                    repeat
                                      VarItem := InputBox('Código do Produto', 'Digite o Código Interno do Produto:  ' + IntToStr(x + 1) +' - '+ Prod.xProd +' '+infAdProd, '');

                                      if Trim(VarItem) <> '' then
                                        begin
                                          DMRecebeNFe.qPesquisa.Active := False;
                                          DMRecebeNFe.qPesquisa.SQL.Clear;
                                          DMRecebeNFe.qPesquisa.SQL.Add('select produtos.cdproduto, produtos.cdinterno, produtos.descricao ');
                                          DMRecebeNFe.qPesquisa.SQL.Add('from produtos ');
                                          DMRecebeNFe.qPesquisa.SQL.Add('where produtos.cdinterno = '''+UpperCase(VarItem)+''' ');
                                          DMRecebeNFe.qPesquisa.Active := True;

                                          {$REGION 'Cadastramento Rápido (Pensar Melhor)'}
                                          ////Item Não Encontrado - Cadastramento Rápido
                                          //if Trim(DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsString) = '' then
                                          //  begin
                                          //    if Application.MessageBox('Produto Não Encontrado ou Não Cadastrado!'
                                          //      + #13#10 + 'Deseja que o Sistema Efetue o Cadastramento Rápido?!',
                                          //      'Atenção', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
                                          //      begin
                                          //        DMRecebeNFe.cdsProdutos.Open;
                                          //        DMRecebeNFe.cdsProdutos.Insert;
                                          //        DMRecebeNFe.cdsProdutosCDPRODUTO.AsInteger    := Gerar_id('GEN_PRODUTOS_ID');
                                          //        DMRecebeNFe.cdsProdutosCDFORNECEDOR.AsInteger := DMRecebeNFe.cdsENFCDPESSOA.AsInteger;
                                          //        DMRecebeNFe.cdsProdutosCDINTERNO.AsString     := Prod.cProd;
                                          //        DMRecebeNFe.cdsProdutosCDBARRAS.AsString      := Prod.cEAN;
                                          //        DMRecebeNFe.cdsProdutosDESCRICAO.AsString     := Prod.xProd;
                                          //        DMRecebeNFe.cdsProdutosVALOR_CUSTO.AsFloat    := Prod.vUnCom;
                                          //        DMRecebeNFe.cdsProdutosVALOR_VENDA.AsFloat    := 0;
                                          //        DMRecebeNFe.cdsProdutosMARGEM.AsFloat         := 0;
                                          //        DMRecebeNFe.cdsProdutosUNID_ENTRADA.AsFloat   := 1;
                                          //        DMRecebeNFe.cdsProdutosUNID_SAIDA.AsFloat     := 1;
                                          //        DMRecebeNFe.cdsProdutosSERVICO.AsInteger      := 0;
                                          //        DMRecebeNFe.cdsProdutosIPI.AsFloat            := P
                                          //
                                          //      end;
                                          //  end;
                                          {$ENDREGION}

                                          {$REGION 'Cadastramento de Compatibilidade'}
                                          if Trim(DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsString) <> '' then
                                            begin
                                              if Application.MessageBox('Deseja que o Sistema Efetue o Cadastramento de Compatibilidade?!',
                                                'Atenção', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
                                                begin
                                                  DMRecebeNFe.qInsert.Active := False;
                                                  DMRecebeNFe.qInsert.SQL.Clear;
                                                  DMRecebeNFe.qInsert.SQL.Add('insert into nf_fornecedor_compat (cdcompatibilidade, cdproduto,');
                                                  DMRecebeNFe.qInsert.SQL.Add('cdproduto_fornecedor, cdfornecedor, cadastrado_por, cadastrado_em)');
                                                  DMRecebeNFe.qInsert.SQL.Add('values (:cdcompatibilidade, :cdproduto, :cdproduto_fornecedor,');
                                                  DMRecebeNFe.qInsert.SQL.Add(':cdfornecedor, :cadastrado_por, :cadastrado_em)');
                                                  DMRecebeNFe.qInsert.ParamByName('CDCOMPATIBILIDADE').AsInteger   := Gerar_id('GEN_NF_FORNECEDOR_COMPAT_ID');
                                                  DMRecebeNFe.qInsert.ParamByName('CDPRODUTO').AsInteger           := DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsInteger;
                                                  DMRecebeNFe.qInsert.ParamByName('CDPRODUTO_FORNECEDOR').AsString := Prod.cProd;
                                                  DMRecebeNFe.qInsert.ParamByName('CDFORNECEDOR').AsInteger        := DMRecebeNFe.cdsENFCDPESSOA.AsInteger;
                                                  DMRecebeNFe.qInsert.ParamByName('CADASTRADO_POR').AsString       := 'MRP';
                                                  DMRecebeNFe.qInsert.ParamByName('CADASTRADO_EM').AsDateTime      := DMPrincipal.cdsData.FieldByName('CURRENT_TIMESTAMP').AsDateTime;
                                                  DMRecebeNFe.qInsert.ExecSQL;
                                                end;
                                            end;
                                          {$ENDREGION}
                                        end
                                      else
                                        begin
                                          if MessageBox(Application.Handle,PWideChar('Deseja Cancelar o Recebimento?'),'Pergunta',mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
                                            begin
                                              Browse;
                                              DMRecebeNFe.cdsENF.Cancel;
                                            end;
                                        end;

                                    until Trim(DMRecebeNFe.qPesquisa.FieldByName('CDINTERNO').AsString) <> '';

                                  end;
                              end;
                          end;
                        {$ENDREGION}

                        DMRecebeNFe.cdsProdutos.Open;
                        DMRecebeNFe.cdsMovimenta.Open;

                        DMRecebeNFe.cdsProdutos.Filtered := False;
                        DMRecebeNFe.cdsProdutos.Filter := 'CDPRODUTO  = '''+DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsString+''' ';
                        DMRecebeNFe.cdsProdutos.Filtered := True;
                        if not (DMRecebeNFe.cdsProdutos.IsEmpty) then
                          begin
                            DMRecebeNFe.cdsMovimenta.Insert;
                            DMRecebeNFe.cdsMovimentaCDMOVIMENTO.AsInteger  := Gerar_id('GEN_MOVIMENTACAO_PRODUTO_ID');
                            DMRecebeNFe.cdsMovimentaCDPRODUTO.AsInteger    := DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsInteger;
                            DMRecebeNFe.cdsMovimentaDATA.AsDateTime        := DMprincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
                            DMRecebeNFe.cdsMovimentaHORA.AsDateTime        := DMprincipal.cdsData.FieldByName('CURRENT_TIME').AsDateTime;
                            DMRecebeNFe.cdsMovimentaMOVIMENTO.AsString     := ('Entrada NFe - ' + DMRecebeNFe.cdsENFNNF.AsString);
                            DMRecebeNFe.cdsMovimentaSALDO_ANTERIOR.AsFloat := DMRecebeNFe.cdsProdutosESTOQUE_QTD.AsFloat;
                            DMRecebeNFe.cdsMovimentaSAIDA.AsFloat          := 0;
                            DMRecebeNFe.cdsMovimentaSALDO_ATUAL.AsFloat    := DMRecebeNFe.cdsProdutosESTOQUE_QTD.AsFloat + Prod.qCom;
                            DMRecebeNFe.cdsMovimentaCDUSUARIO.AsInteger    := VarCodigoUsuario;
                            DMRecebeNFe.cdsMovimenta.Post;


                            DMRecebeNFe.cdsProdutos.Edit;
                            DMRecebeNFe.cdsProdutosESTOQUE_QTD.AsFloat := DMRecebeNFe.cdsProdutosESTOQUE_QTD.AsFloat + Prod.qCom;
                            DMRecebeNFe.cdsProdutos.Post;


                          end;

                        DMRecebeNFe.cdsENFIVALOR_UNITARIO.AsFloat    := Prod.vUnTrib;
                        DMRecebeNFe.cdsENFIVALOR_MERCADORIA.AsFloat  := Prod.vProd;
                        DMRecebeNFe.cdsENFICDPRODUTO.AsInteger       := DMRecebeNFe.qPesquisa.FieldByName('CDPRODUTO').AsInteger;
                        DMRecebeNFe.cdsENFIDESCRICAO.AsString        := DMRecebeNFe.qPesquisa.FieldByName('DESCRICAO').AsString;
                        DMRecebeNFe.cdsENFIESTOQUE.AsInteger         := 0;
                        DMRecebeNFe.cdsENFINRSEQUEN.AsInteger        := Prod.nItem;
                        DMRecebeNFe.cdsENFIUNIDADE.AsString          := Prod.uCom;
                        DMRecebeNFe.cdsENFIQUANTIDADE.AsFloat        := Prod.qCom;
                        DMRecebeNFe.cdsENFIPRODUTO.AsString          := Prod.xProd;
                        DMRecebeNFe.cdsENFICFOP.AsString             := Prod.CFOP;
                        DMRecebeNFe.cdsENFINCM.AsString              := Prod.NCM;
                        with Imposto do
                          begin
                            {$REGION 'ICMS'}
                            with ICMS do
                              begin
                                DMRecebeNFe.cdsENFIICMS.AsFloat              := pICMS;
                                DMRecebeNFe.cdsENFIVALOR_BASE_ICMS.AsFloat   := vBC;
                                DMRecebeNFe.cdsENFIVALOR_ICMS.AsFloat        := vICMS;
                                DMRecebeNFe.cdsENFICST.AsString              := CSTICMSToStr(ICMS.CST);
                                DMRecebeNFe.cdsENFIORIGEM.AsString           := OrigToStr(ICMS.orig);
                              end;
                            {$ENDREGION}  

                            {$REGION 'IPI'}
                            with IPI do
                              begin
                                DMRecebeNFe.cdsENFIVALOR_BASE_IPI.AsFloat    := vBC;
                                DMRecebeNFe.cdsENFIIPI.AsFloat               := pIPI;
                                DMRecebeNFe.cdsENFIVALOR_IPI.AsFloat         := vIPI;
                              end;
                            {$ENDREGION}

                            {$REGION 'PIS'}
                            with PIS do
                              begin
                                DMRecebeNFe.cdsENFIVALOR_BASE_PIS.AsFloat    := vBC;
                                DMRecebeNFe.cdsENFIPIS.AsFloat               := pPIS;
                                DMRecebeNFe.cdsENFIVALOR_PIS.AsFloat         := vPIS;
                              end;
                            {$ENDREGION}

                            {$REGION 'COFINS'}
                            with COFINS do
                              begin
                                DMRecebeNFe.cdsENFIVALOR_BASE_COFINS.AsFloat := vBC;
                                DMRecebeNFe.cdsENFICOFINS.AsFloat            := pCOFINS;
                                DMRecebeNFe.cdsENFIVALOR_COFINS.AsFloat      := vCOFINS;
                              end;
                            {$ENDREGION}

                            {$REGION 'ISSQN'}
                            with ISSQN do
                              begin
                                DMRecebeNFe.cdsENFIVALOR_BASE_ISSQN.AsFloat  := vBC;
                                DMRecebeNFe.cdsENFIISSQN.AsFloat             := vAliq;
                                DMRecebeNFe.cdsENFIVALOR_ISSQN.AsFloat       := vISSQN
                              end;
                            {$ENDREGION}

                            DMRecebeNFe.cdsENFIVALOR_CSLL.AsFloat        := 0;
                            DMRecebeNFe.cdsENFIVALOR_IRRF.AsFloat        := 0;
                            DMRecebeNFe.cdsENFIVALOR_BASE_IRRF.AsFloat   := 0;
                            DMRecebeNFe.cdsENFIVALOR_BASE_INSS.AsFloat   := 0;
                            DMRecebeNFe.cdsENFIVALOR_INSS.AsFloat        := 0;
                          end;
                      end;
                    DMRecebeNFe.cdsENFI.Post;
                  end;
                {$ENDREGION}

              end;
          end;
      finally
      end
    end;
end;

procedure TTelaCapturaXML.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[167] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[168] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[169] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[170] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  DMRecebeNFe.cdsENF.Open;
  DMRecebeNFe.cdsENFI.Open;
end;

procedure TTelaCapturaXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TTelaCapturaXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if kEY = #13 then
    begin
      Key := #0;
      Perform(Wm_NextDlgCtl, 0, 0);
    end;
end;


end.
