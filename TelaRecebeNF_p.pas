unit TelaRecebeNF_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, JvXPCore, JvXPButtons, Mask, ExtCtrls,
  JvExButtons, JvBitBtn, Buttons, JvExControls, JvNavigationPane, JvExMask,
  JvToolEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls;

type
  TTelaRecebeNF = class(TForm)
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
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    ScrollBox1: TScrollBox;
    Label4: TLabel;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    PanelCamposNFe: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Label7: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    PanelCampoItens: TPanel;
    Label10: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    ComboBoxTipoNFe: TComboBox;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    procedure dspENFGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspENFIGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure ComboBoxTipoNFeExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
    procedure ControleEstoque;
    procedure GravaContasPagar;
  end;

var
  TelaRecebeNF: TTelaRecebeNF;
  VarComponente : String;
  VarDataVencimento : array[1..10] of TDateTime;
  VarValorParcela   : array[1..10] of Real;

implementation

{$R *.dfm}

uses Principal_p, DMPrincipal_p, Funcoes_p, PesquisaOrdemCompra_p,
     TelaRecebeNFVencimento_p, PesquisaFornecedores_p, DMRecebeNFe_p;

procedure TTelaRecebeNF.ControleEstoque;
var i : Integer;
begin
  DMRecebeNFe.cdsENFI.First;
  for i := 0 to DMRecebeNFe.cdsENFI.RecordCount -1  do
    begin
      DMRecebeNFe.qPesquisa.Active := False;
      DMRecebeNFe.qPesquisa.SQL.Clear;
      DMRecebeNFe.qPesquisa.SQL.Add('update produtos set estoque_qtd = estoque_qtd + :estoque_qtd ');
      DMRecebeNFe.qPesquisa.SQL.Add('where cdproduto=:cdproduto ');
      DMRecebeNFe.qPesquisa.Params.ParamByName('ESTOQUE_QTD').AsFloat := DMRecebeNFe.cdsENFIQUANTIDADE.AsFloat * DMRecebeNFe.cdsENFIUNIDADE.AsFloat;
      DMRecebeNFe.qPesquisa.Params.ParamByName('CDPRODUTO').AsInteger := DMRecebeNFe.cdsENFICDPRODUTO.AsInteger;
      DMRecebeNFe.qPesquisa.ExecSQL;
      DMRecebeNFe.cdsENFI.Next;
    end;
end;

procedure TTelaRecebeNF.GravaContasPagar;
var i : Integer;
begin
  for i := i to DMRecebeNFe.cdsENFDESDOBRAMENTO.AsInteger do
    begin
      DMRecebeNFe.qPesquisa.Active := False;
      DMRecebeNFe.qPesquisa.SQL.Clear;
      DMRecebeNFe.qPesquisa.SQL.Add('insert into ctas_pagar ( cdctas_pagar, cdfornecedor, numero_documento, liquidado,');
      DMRecebeNFe.qPesquisa.SQL.Add('                         descricao, valor, vencimento, cadastrado_por, cadastrado_em )');
      DMRecebeNFe.qPesquisa.SQL.Add('values ( :cdctas_pagar, :cdfornecedor, :numero_documento, :liquidado,');
      DMRecebeNFe.qPesquisa.SQL.Add('         :descricao, :valor, :vencimento, :cadastrado_por, :cadastrado_em )');
      DMRecebeNFe.qPesquisa.Params.ParamByName('CDCTAS_PAGAR').AsInteger    := Gerar_id('GEN_CTAS_PAGAR_ID');
      DMRecebeNFe.qPesquisa.Params.ParamByName('CDFORNECEDOR').AsInteger    := DMRecebeNFe.cdsENFCDPESSOA.AsInteger;
      DMRecebeNFe.qPesquisa.Params.ParamByName('NUMERO_DOCUMENTO').AsString := DMRecebeNFe.cdsENFNNF.AsString;
      DMRecebeNFe.qPesquisa.Params.ParamByName('LIQUIDADO').AsInteger       := 0;
      case DMRecebeNFe.cdsENFNOTA_DE_SERVICO.AsInteger  of
        0 : DMRecebeNFe.qPesquisa.Params.ParamByName('DESCRICAO').AsString := 'Nota Fical Produto - O.C.: '+ DMRecebeNFe.cdsENFCDOC.AsString;
        1 : DMRecebeNFe.qPesquisa.Params.ParamByName('DESCRICAO').AsString := 'Nota Fical Serviço - O.C.: '+ DMRecebeNFe.cdsENFCDOC.AsString;
      end;
      DMRecebeNFe.qPesquisa.Params.ParamByName('VALOR').AsFloat             := VarValorParcela[i];
      DMRecebeNFe.qPesquisa.Params.ParamByName('VENCIMENTO').AsDateTime     := VarDataVencimento[i];
      DMRecebeNFe.qPesquisa.Params.ParamByName('CADASTRADO_POR').AsString   := Copy(VarNomeUsuario,0,9);
      DMRecebeNFe.qPesquisa.Params.ParamByName('CADASTRADO_EM').AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
      DMRecebeNFe.qPesquisa.ExecSQL;
    end;
end;

procedure TTelaRecebeNF.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  DMRecebeNFe.cdsENF.Edit;
end;

procedure TTelaRecebeNF.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  DMRecebeNFe.cdsENF.Cancel;
end;

procedure TTelaRecebeNF.BitBtnExcluirClick(Sender: TObject);
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

procedure TTelaRecebeNF.BitBtnGravarClick(Sender: TObject);
var VarAtualizaEstoque : Boolean;
begin
  try
    VarAtualizaEstoque := False;
    Browse;
    if DMRecebeNFe.cdsENF.State = dsInsert then
      begin
        DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_ID');
        VarAtualizaEstoque := True;
      end;
    DMRecebeNFe.cdsENF.Post;
    DMRecebeNFe.cdsENF.ApplyUpdates(0);

    DMRecebeNFe.cdsENFI.ApplyUpdates(0);

    if VarAtualizaEstoque then
      begin
        GravaContasPagar;
        ControleEstoque;
      end;
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTelaRecebeNF.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  DMRecebeNFe.cdsENF.Insert;
  DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger := Consulta_id('GEN_NF_FORNECEDOR_ID')+ 1;
  DMRecebeNFe.cdsENFDATA_ENTRADA.AsDateTime   := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  DBEdit2.SetFocus;
end;

procedure TTelaRecebeNF.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaRecebeNF.Browse;
begin
  if (VarMeusAcessos[167] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[168] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[169] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[170] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
end;

procedure TTelaRecebeNF.ComboBoxTipoNFeExit(Sender: TObject);
begin
  case ComboBoxTipoNFe.ItemIndex of
    0 : begin
          DBEdit8.TabStop := True;
          Label15.Font.Color := clRed;
        end;

    1 : begin
          DBEdit8.TabStop := False;
          Label15.Font.Color := clBlack;
        end;
  end;
end;

procedure TTelaRecebeNF.DBEdit10Exit(Sender: TObject);
begin
  if DMRecebeNFe.cdsENFVALOR_TOTAL_NF.AsFloat = 0 then
    begin
      Application.MessageBox('Valor da NFe Não Informado', 'Atenção', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
      DBEdit10.SetFocus;
    end;
end;

procedure TTelaRecebeNF.DBEdit1Exit(Sender: TObject);
var i : Integer;
begin
  if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if DMRecebeNFe.cdsENF.State in ([dsEdit,dsInsert]) then
        begin
          DMRecebeNFe.cdsOCI.Close;
          DMRecebeNFe.cdsOCI.FetchParams;
          DMRecebeNFe.cdsOCI.Params.ParamByName('CDOC').AsInteger := DMRecebeNFe.cdsENFCDOC.AsInteger;
          DMRecebeNFe.cdsOCI.Open;

          if (DMRecebeNFe.cdsOCI.IsEmpty) then
            begin
              Application.MessageBox('Registro Não Encontrado!', 'Aviso.',MB_OK );
              DBEDit1.SetFocus;
            end
          else
            if DMRecebeNFe.cdsOCI.FieldByName('CDFORNECEDOR').AsInteger <> DMRecebeNFe.cdsENFCDPESSOA.AsInteger then
              begin
                Application.MessageBox('Ordem de Compra de Outro Fornecedor!', 'Aviso.',MB_OK );
                DBEDit1.SetFocus;
              end
            else
              begin
                for i := 0 to DMRecebeNFe.cdsOCI.RecordCount -1 do
                  begin
                    DMRecebeNFe.cdsENFI.Insert;
                    DMRecebeNFe.cdsENFICDNF_FORNECEDOR_ITEM.AsInteger := Gerar_id('GEN_NF_FORNECEDOR_ITENS_ID');
                    DMRecebeNFe.cdsENFICDNF_FORNECEDOR.AsInteger      := DMRecebeNFe.cdsENFCDNF_FORNECEDOR.AsInteger;
                    DMRecebeNFe.cdsENFIVALOR_UNITARIO.AsFloat         := DMRecebeNFe.cdsOCI.FieldByName('VALOR_UNITARIO').AsFloat;
                    DMRecebeNFe.cdsENFIVALOR_MERCADORIA.AsFloat       := DMRecebeNFe.cdsOCI.FieldByName('VALOR_TOTAL').AsFloat;
                    DMRecebeNFe.cdsENFICDPRODUTO.AsInteger            := DMRecebeNFe.cdsOCI.FieldByName('CDPRODUTO').AsInteger;
                    DMRecebeNFe.cdsENFIDESCRICAO.AsString             := DMRecebeNFe.cdsOCI.FieldByName('DESCRICAO').AsString;
                    DMRecebeNFe.cdsENFIESTOQUE.AsInteger              := 0;
                    DMRecebeNFe.cdsENFIQUANTIDADE.AsFloat             := DMRecebeNFe.cdsOCI.FieldByName('QTD').AsFloat;
                    DMRecebeNFe.cdsENFINRSEQUEN.AsInteger             := DMRecebeNFe.cdsOCI.FieldByName('NUMERO_ITEM').AsInteger;
                    DMRecebeNFe.cdsENFIUNIDADE.AsString               := DMRecebeNFe.cdsOCI.FieldByName('UNIDADE').AsString;
                    DMRecebeNFe.cdsENFICFOP.AsString                  := DMRecebeNFe.cdsOCI.FieldByName('CFOP').AsString;
                    DMRecebeNFe.cdsENFIICMS.AsFloat                   := DMRecebeNFe.cdsOCI.FieldByName('ICMS').AsFloat;
                    DMRecebeNFe.cdsENFIVALOR_BASE_ICMS.AsFloat        := 0;
                    DMRecebeNFe.cdsENFIVALOR_ICMS.AsFloat             := DMRecebeNFe.cdsOCI.FieldByName('VALOR_ICMS').AsFloat;
                    DMRecebeNFe.cdsENFIVALOR_BASE_IPI.AsFloat         := 0;
                    DMRecebeNFe.cdsENFIIPI.AsFloat                    := DMRecebeNFe.cdsOCI.FieldByName('IPI').AsFloat;
                    DMRecebeNFe.cdsENFIVALOR_IPI.AsFloat              := DMRecebeNFe.cdsOCI.FieldByName('VALOR_IPI').AsFloat;
                    DMRecebeNFe.cdsENFIVALOR_BASE_PIS.AsFloat         := 0;
                    DMRecebeNFe.cdsENFIPIS.AsFloat                    := 0;
                    DMRecebeNFe.cdsENFIVALOR_PIS.AsFloat              := 0;
                    DMRecebeNFe.cdsENFIVALOR_BASE_COFINS.AsFloat      := 0;
                    DMRecebeNFe.cdsENFICOFINS.AsFloat                 := 0;
                    DMRecebeNFe.cdsENFIVALOR_COFINS.AsFloat           := 0;
                    if StrToIntDef(DMRecebeNFe.cdsOCI.FieldByName('CFOP').AsString,0) = 1 then
                      begin
                        DMRecebeNFe.cdsENFIVALOR_BASE_ISSQN.AsFloat       := 0;
                        DMRecebeNFe.cdsENFIISSQN.AsFloat                  := 0;
                        DMRecebeNFe.cdsENFIVALOR_ISSQN.AsFloat            := 0;
                        DMRecebeNFe.cdsENFIVALOR_CSLL.AsFloat             := 0;
                        DMRecebeNFe.cdsENFIVALOR_IRRF.AsFloat             := 0;
                        DMRecebeNFe.cdsENFIVALOR_BASE_IRRF.AsFloat        := 0;
                        DMRecebeNFe.cdsENFIVALOR_BASE_INSS.AsFloat        := 0;
                        DMRecebeNFe.cdsENFIVALOR_INSS.AsFloat             := 0;
                      end
                    else
                      begin
                        DMRecebeNFe.cdsENFIVALOR_BASE_ISSQN.AsFloat       := 0;
                        DMRecebeNFe.cdsENFIISSQN.AsFloat                  := 0;
                        DMRecebeNFe.cdsENFIVALOR_ISSQN.AsFloat            := 0;
                        DMRecebeNFe.cdsENFIVALOR_CSLL.AsFloat             := 0;
                        DMRecebeNFe.cdsENFIVALOR_IRRF.AsFloat             := 0;
                        DMRecebeNFe.cdsENFIVALOR_BASE_IRRF.AsFloat        := 0;
                        DMRecebeNFe.cdsENFIVALOR_BASE_INSS.AsFloat        := 0;
                        DMRecebeNFe.cdsENFIVALOR_INSS.AsFloat             := 0;
                      end;
                    DMRecebeNFe.cdsENFI.Post;
                    DMRecebeNFe.qPesquisa.Next;
                  end;

                // Confirme os vencimentos então
                TelaRecebeNFVencimento := TTelaRecebeNFVencimento.Create(Application);
                TelaRecebeNFVencimento.MaskeditEnquadramento_imposto.Text := '';
                TelaRecebeNFVencimento.MaskeditDEMI.Text                  := DMRecebeNFe.cdsENFDATA_EMISSAO.AsString;
                TelaRecebeNFVencimento.ComboBoxParcelas.Text              := DMRecebeNFe.cdsOCI.FieldByName('DESDOBRAMENTO').AsString;
                TelaRecebeNFVencimento.VarDTVENCTOPedidof1                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA1').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof2                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA2').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof3                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA3').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof4                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA4').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof5                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA5').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof6                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA6').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof6                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA7').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof6                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA8').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof6                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA9').AsDateTime);
                TelaRecebeNFVencimento.VarDTVENCTOPedidof6                := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA10').AsDateTime);
                TelaRecebeNFVencimento.Maskeditdt1.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA1').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL1.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR1').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt2.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA2').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL2.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR2').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt3.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA3').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL3.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR3').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt4.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA4').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL4.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR4').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt5.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA5').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL5.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR5').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt6.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA6').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL6.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR6').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt7.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA7').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL7.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR7').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt8.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA8').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL8.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR8').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt9.Text                   := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA9').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL9.Text                   := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR9').AsFloat);
                TelaRecebeNFVencimento.Maskeditdt10.Text                  := DateToStr(DMRecebeNFe.cdsOCI.FieldByName('DATA10').AsDateTime);
                TelaRecebeNFVencimento.MaskeditVL10.Text                  := FloatToStr(DMRecebeNFe.cdsOCI.FieldByName('VALOR10').AsFloat);
                TelaRecebeNFVencimento.MaskEditTOTAL_VNF.Text             := FloatToStr(DMRecebeNFe.cdsENFVALOR_TOTAL_NF.AsFloat);
                TelaRecebeNFVencimento.MaskEditVPreISSQN.Text             := '0';
                TelaRecebeNFVencimento.MaskEditTOTAL_VSEG.Text            := '0';
                TelaRecebeNFVencimento.MaskEditTOTAL_VDESC.Text           := '0';

                //Nota Fiscal de Serviço
                if ComboBoxTipoNFe.ItemIndex = 1 then
                  begin
                    TelaRecebeNFVencimento.GroupBoxImpostos.Visible := True;
                    TelaRecebeNFVencimento.GroupBoxImpostos.Enabled := True;
                  end
                else
                  TelaRecebeNFVencimento.GroupBoxImpostos.Visible := False;

                if TelaRecebeNFVencimento.ShowModal = MROK then
                  begin
                    DMRecebeNFe.cdsENFDESDOBRAMENTO.AsInteger := StrToInt(TelaRecebeNFVencimento.ComboBoxParcelas.Text);
                  end
                else
                  DBedit1.SetFocus;

                FreeAndNil(TelaRecebeNFVencimento);
              end;
        end;
    end;
end;

procedure TTelaRecebeNF.DBEdit2Exit(Sender: TObject);
begin
  if (not BitBtnSair.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if DMRecebeNFe.cdsENF.State in ([dsEdit,dsInsert]) then
        begin
          DMRecebeNFe.qPesquisa.active := False;
          DMRecebeNFe.qPesquisa.SQL.Clear;
          DMRecebeNFe.qPesquisa.SQL.Add('select * ');
          DMRecebeNFe.qPesquisa.SQL.Add('from fornecedores');
          DMRecebeNFe.qPesquisa.SQL.add('where fornecedores.cdfornecedor = '''+DMRecebeNFe.cdsENFCDPESSOA.AsString+''' ');
          DMRecebeNFe.qPesquisa.active := True;

          if (DMRecebeNFe.qPesquisa.IsEmpty) then
            begin
              Application.MessageBox('Registro Não Encontrado!', 'Aviso.',MB_OK );
              DBEDit2.SetFocus;
            end
          else
            begin
              DMRecebeNFe.cdsENFNOME.AsString := DMRecebeNFe.qPesquisa.FieldByName('NOME').AsString;
            end;
        end;
    end;
end;

procedure TTelaRecebeNF.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
end;


procedure TTelaRecebeNF.dspENFGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := 'NF_FORNECEDOR';
end;

procedure TTelaRecebeNF.dspENFIGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: WideString);
begin
  TableName := 'NF_FORNECEDOR_ITENS';
end;

procedure TTelaRecebeNF.FormActivate(Sender: TObject);
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

procedure TTelaRecebeNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaRecebeNF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
    begin
      VarComponente := Screen.ActiveControl.Name;

      if VarComponente = 'DBEdit1' then
        begin
          PesquisaOrdemCompra := TPesquisaOrdemCompra.Create(Application);
          PesquisaOrdemCompra.ShowModal;
          DMRecebeNFe.cdsENFCDOC.AsInteger     := PesquisaOrdemCompra.cdsOCCDOC.AsInteger;
          DMRecebeNFe.cdsENFCDPESSOA.AsInteger := PesquisaOrdemCompra.cdsOCCDFORNECEDOR.AsInteger;
          DMRecebeNFe.cdsENFNOME.AsString      := PesquisaOrdemCompra.cdsOCNOME.AsString;
          FreeAndNil(PesquisaOrdemCompra);
          DBEdit1.SetFocus;
        end;

      if VarComponente = 'DBEdit2' then
        begin
          PesquisaFornecedores := TPesquisaFornecedores.Create(Application);
          PesquisaFornecedores.ShowModal;
          DMRecebeNFe.cdsENFCDPESSOA.AsInteger := PesquisaFornecedores.cdsFornCDFORNECEDOR.AsInteger;
          DMRecebeNFe.cdsENFNOME.AsString      := PesquisaFornecedores.cdsFornNOME.AsString;
          FreeAndNil(PesquisaFornecedores);
          DBEdit2.SetFocus;
        end;
    end;
end;

end.
