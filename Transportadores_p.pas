unit Transportadores_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids, DBCtrls,
  StdCtrls, Mask, Buttons, ExtCtrls, JvExControls, JvXPCore, JvXPButtons,
  JvExButtons, JvBitBtn, JvExStdCtrls, JvCombobox, JvDBCombobox, pngimage;

type
  TTransportadores = class(TForm)
    qTransp: TSQLQuery;
    cdsTransp: TClientDataSet;
    dspTransp: TDataSetProvider;
    dsTransp: TDataSource;
    DBGrid1: TDBGrid;
    pnlBotoes: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBEditCDIBGE: TDBEdit;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBComboBoxUF: TDBComboBox;
    DBComboBox1: TDBComboBox;
    qContato: TSQLQuery;
    dspContato: TDataSetProvider;
    cdsContato: TClientDataSet;
    dsContato: TDataSource;
    qContatoCDTRANSPORTADOR_CONTATO: TIntegerField;
    qContatoCDTRANSPORTADOR: TIntegerField;
    qContatoNOME: TStringField;
    qContatoCARGO: TStringField;
    qContatoMAIL: TStringField;
    qContatoFONE: TStringField;
    qContatoANIVERSARIO: TDateField;
    qContatoTIME_FUTEBOL: TStringField;
    qContatoOBSERVACOES: TBlobField;
    qContatoTRANSPORTADOR: TStringField;
    cdsContatoCDTRANSPORTADOR_CONTATO: TIntegerField;
    cdsContatoCDTRANSPORTADOR: TIntegerField;
    cdsContatoNOME: TStringField;
    cdsContatoCARGO: TStringField;
    cdsContatoMAIL: TStringField;
    cdsContatoFONE: TStringField;
    cdsContatoANIVERSARIO: TDateField;
    cdsContatoTIME_FUTEBOL: TStringField;
    cdsContatoOBSERVACOES: TBlobField;
    cdsContatoTRANSPORTADOR: TStringField;
    cdsTranspCDTRANSPORTADOR: TIntegerField;
    cdsTranspCDPESSOA: TIntegerField;
    cdsTranspNOME: TStringField;
    cdsTranspAPELIDO: TStringField;
    cdsTranspRG_IE: TStringField;
    cdsTranspFONE: TStringField;
    cdsTranspNUMERO: TStringField;
    cdsTranspCEP: TStringField;
    cdsTranspUF: TStringField;
    cdsTranspPLACA: TStringField;
    cdsTranspESTADO_PLACA: TStringField;
    cdsTranspANTT: TStringField;
    cdsTranspTIPO: TStringField;
    cdsTranspCGMAXIMA: TFMTBCDField;
    cdsTranspCADASTRADO_POR: TStringField;
    cdsTranspCADASTRADO_EM: TDateField;
    cdsTranspALTERADO_POR: TStringField;
    cdsTranspALTERADO_EM: TDateField;
    cdsTranspATIVO: TIntegerField;
    cdsTranspOBSERVACAO: TStringField;
    cdsTranspCOD_IBGE: TStringField;
    cdsTranspEMAIL: TStringField;
    cdsTranspWEBSITE: TStringField;
    cdsTranspNASC_FUNDACAO: TDateField;
    cdsTranspTIPO_PESSOA: TIntegerField;
    cdsTranspCPF_CNPJ: TStringField;
    cdsTranspENDERECO: TStringField;
    cdsTranspBAIRRO: TStringField;
    cdsTranspCIDADE: TStringField;
    cdsTranspDATA_CADASTRO: TDateField;
    cdsTranspCOD_PAIS: TStringField;
    cdsTranspEMAIL_NFE: TStringField;
    cdsTranspPNG: TIntegerField;
    DBCheckBox2: TDBCheckBox;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    ComboBoxTipoPessoa: TJvDBComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label25: TLabel;
    cdsTranspLIMITE_CREDITO: TFloatField;
    cdsTranspCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    cdsTranspPAIS: TStringField;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Label28: TLabel;
    BitBtnAlterar: TJvXPButton;
    BitBtnCancelar: TJvXPButton;
    BitBtnGravar: TJvXPButton;
    BitBtnExcluir: TJvXPButton;
    BitBtnIncluir: TJvXPButton;
    BitBtnCobranca: TJvXPButton;
    BitBtnContato: TJvXPButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure DBComboBoxUFExit(Sender: TObject);
    procedure BitBtnContatoClick(Sender: TObject);
    procedure dspContatoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnCobrancaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Browse;
    procedure Insert;
  end;

var
  Transportadores: TTransportadores;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaContatoTransportador_p,
     TelaEnderecoCobranca_p;

{$R *.dfm}

procedure TTransportadores.Browse;
begin
  if (VarMeusAcessos[80] = '001') then
    BitBtnIncluir.Enabled := True;

  if VarMeusAcessos[81] = '001' then
    BitBtnExcluir.Enabled := True;

  if VarMeusAcessos[82] = '001' then
    BitBtnAlterar.Enabled := True;

  if VarMeusAcessos[83] = '001' then
    BitBtnRelatorios.Enabled := True;

//  BitBtnIncluir.Enabled  := True;
//  BitBtnAlterar.Enabled  := True;
  BitBtnGravar.Enabled   := False;
//  BitBtnExcluir.Enabled  := True;
//  BitBtnRelatorios.Enabled := True;
  BitBtnSair.Enabled     := True;
  BitBtnCancelar.Enabled := False;
  PanelCampos.Enabled    := False;
end;

procedure TTransportadores.DBComboBoxUFExit(Sender: TObject);
begin
  DMPrincipal.cdsIBGE.Close;
  DMPrincipal.cdsIBGE.CommandText := ('Select distinct * ' +
                                     'From CIDADEIBGE '+
                                     'Where ESTADOIBGE = ''' + DBComboBoxUF.Text + ''' '+
                                     'Order By NOMEIBGE');
  DMPrincipal.cdsIBGE.Open;
end;

procedure TTransportadores.DBEdit12Enter(Sender: TObject);
begin
  case ComboBoxTipoPessoa.ItemIndex of
    0 : cdsTranspCPF_CNPJ.EditMask := '999.999.999-99;0;_';
    1 : cdsTranspCPF_CNPJ.EditMask := '99.999999/9999-99;0;_';
  end;
end;

procedure TTransportadores.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Cor:Tcolor;
begin
  if cdsTransp.FieldByName('ATIVO').AsInteger = 1 then
    cor := clBlue
  else
    cor := clRed;
  dbgrid1.canvas.FillRect(rect);
  dbgrid1.canvas.Font.Color := cor;
  dbgrid1.DefaultDrawColumnCell(Rect,dbgrid1.Columns[DataCol].Index,Column,State);
end;

procedure TTransportadores.DBGrid1TitleClick(Column: TColumn);
var vIndice: string;
    vExiste: boolean;
begin
  if cdsTransp.IndexFieldNames = Column.FieldName then
    begin
      vIndice := AnsiUpperCase(Column.FieldName + '_INV');

      try
        cdsTransp.IndexDefs.Find(vIndice);
        vExiste := True;
      except
        vExiste := False;
      end;

      if not (vExiste) then
      begin
        with cdsTransp.IndexDefs.AddIndexDef do
        begin
          Name := vIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;
      cdsTransp.IndexName := vIndice;
    end
  else
    cdsTransp.IndexFieldNames := Column.FieldName;
end;

procedure TTransportadores.DBLookupComboBox1Exit(Sender: TObject);
begin
  cdsTranspCOD_IBGE.AsString := DMPrincipal.cdsIBGE.FieldByName('CDIBGE').AsString;
  cdsTranspCOD_PAIS.AsString := DMPrincipal.cdsIBGE.FieldByName('COD_PAIS').AsString;
  cdsTranspPAIS.AsString     := DMPrincipal.cdsIBGE.FieldByName('PAIS').AsString;
end;

procedure TTransportadores.dspContatoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('TRANSPORTADORES_CONTATO');
end;

procedure TTransportadores.Insert;
begin
  BitBtnIncluir.Enabled  := False;
  BitBtnAlterar.Enabled  := False;
  BitBtnExcluir.Enabled  := False;
  BitBtnGravar.Enabled   := True;
  BitBtnSair.Enabled     := False;
  BitBtnCancelar.Enabled := True;
  PanelCampos.Enabled    := True;
end;


procedure TTransportadores.BitBtnAlterarClick(Sender: TObject);
begin
  Insert;
  cdsTransp.Edit;
end;

procedure TTransportadores.BitBtnCancelarClick(Sender: TObject);
begin
  Browse;
  cdsTransp.Cancel;
end;

procedure TTransportadores.BitBtnCobrancaClick(Sender: TObject);
begin
  TelaEnderecoCobranca := TTelaEnderecoCobranca.Create(Application);

  TelaEnderecoCobranca.MaskEditCodigo.Text := cdsTranspCDPESSOA.AsString;
  TelaEnderecoCobranca.MaskEditNome.Text   := cdsTranspNOME.AsString;

  TelaEnderecoCobranca.cdsEndCob.Close;
  TelaEnderecoCobranca.cdsEndCob.FetchParams;
  TelaEnderecoCobranca.cdsEndCob.Params.ParamByName('CDPESSOA').AsInteger := cdsTranspCDPESSOA.AsInteger;
  TelaEnderecoCobranca.cdsEndCob.Open;
  TelaEnderecoCobranca.Show;
end;

procedure TTransportadores.BitBtnContatoClick(Sender: TObject);
begin
  TelaContatoTransportador := TTelaContatoTransportador.Create(Application);
  TelaContatoTransportador.Show;
end;

procedure TTransportadores.BitBtnExcluirClick(Sender: TObject);
begin
  Browse;
  if cdsTransp.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsTransp.Delete;
          cdsTransp.ApplyUpdates(0);
        end;
    end;
end;

procedure TTransportadores.BitBtnGeralClick(Sender: TObject);
begin
  cdsTransp.Filtered := False;
end;

procedure TTransportadores.BitBtnGravarClick(Sender: TObject);
begin
  try
    Browse;
    if cdsTransp.State = dsInsert then
      begin
        cdsTranspCDTRANSPORTADOR.AsInteger := Gerar_id('GEN_TRANSPORTADORES_ID');
        cdsTranspCDPESSOA.AsInteger        := Gerar_id('GEN_PESSOA_ID');
        cdsTranspCADASTRADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
        cdsTranspCADASTRADO_POR.AsString   := VarNomeUsuario;
      end
    else
      if cdsTransp.State = dsEdit then
        begin
          cdsTranspALTERADO_EM.AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
          cdsTranspALTERADO_POR.AsString   := VarNomeUsuario;
        end;

    cdsTransp.Post;
    cdsTransp.ApplyUpdates(0);
  except
    on E: Exception do
       begin
         Application.MessageBox(PWideChar('Atenção: Não Foi Possível Gravar'+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
       end;
  end;
end;

procedure TTransportadores.BitBtnIncluirClick(Sender: TObject);
begin
  Insert;
  cdsTransp.Insert;
  DBEdit2.SetFocus;
end;

procedure TTransportadores.BitBtnOKClick(Sender: TObject);
begin
  if Trim(MaskeditPesquisa.Text) <> '' then
    begin
      cdsTransp.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsTransp.Filter := 'CDPESSOA  = '''+MaskeditPesquisa.Text+''' ';
        1 : cdsTransp.Filter := 'NOME   LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
        2 : cdsTransp.Filter := 'CPF_CNPJ  = '''+MaskeditPesquisa.Text+''' ';
        3 : cdsTransp.Filter := 'PLACA     = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsTransp.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTransportadores.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTransportadores.FormActivate(Sender: TObject);
begin
  {$REGION 'Permissoes'}
  if VarMeusAcessos[80] <> '001' then
    BitBtnIncluir.Enabled := False;

  if VarMeusAcessos[81] <> '001' then
    BitBtnExcluir.Enabled := False;

  if VarMeusAcessos[82] <> '001' then
    BitBtnAlterar.Enabled := False;

  if VarMeusAcessos[83] <> '001' then
    BitBtnRelatorios.Enabled := False;
  {$ENDREGION}

  Browse;
  cdsTransp.Open;
  DMPrincipal.cdsEI.Open
end;

procedure TTransportadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTransportadores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
       key := #0;
       perform( wm_NextDlgCtl, 0 , 0 );
    end;
  if key = #27 then
    Close;
end;

end.
