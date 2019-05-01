unit TelaAgendaBanhoeTosa_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, FMTBcd, ComCtrls, JvExComCtrls,
  JvDateTimePicker, ExtCtrls, DB, Provider, DBClient, SqlExpr, StdCtrls, DBCtrls,
  Buttons, JvExControls, JvDBLookup, Mask, JvExMask, JvToolEdit, DateUtils,
  JvXPCore, JvXPButtons, pngimage;

type
  TTelaAgendaBanhoeTosa = class(TForm)
    StgAgenda: TJvStringGrid;
    qConfig: TSQLQuery;
    cdsConfig: TClientDataSet;
    dspConfig: TDataSetProvider;
    dsConfig: TDataSource;
    Panel1: TPanel;
    dtpDate: TJvDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dsBanhoTosa: TDataSource;
    cdsBanhoTosa: TClientDataSet;
    dspBanhoTosa: TDataSetProvider;
    qBanhoTosa: TSQLQuery;
    cdsBanhoTosaCDBANHOETOSA: TIntegerField;
    cdsBanhoTosaCDMASCOTE: TIntegerField;
    cdsBanhoTosaPROCEDIMENTO: TStringField;
    cdsBanhoTosaTOSADOR: TStringField;
    cdsBanhoTosaDATA: TDateField;
    cdsBanhoTosaHORA: TTimeField;
    cdsBanhoTosaOBSERVACOES: TBlobField;
    cdsBanhoTosaLEVAETRAS: TIntegerField;
    cdsConfigCDCONFIG_BANHOETOSA: TIntegerField;
    cdsConfigTOSADOR: TStringField;
    cdsConfigSEG: TIntegerField;
    cdsConfigTER: TIntegerField;
    cdsConfigQUA: TIntegerField;
    cdsConfigQUI: TIntegerField;
    cdsConfigSEX: TIntegerField;
    cdsConfigSAB: TIntegerField;
    cdsConfigDOM: TIntegerField;
    cdsConfigHORARIO_SEM_INICIO: TTimeField;
    cdsConfigHORARIO_SEM_FIM: TTimeField;
    cdsConfigHORARIO_FIND_INCIO: TTimeField;
    cdsConfigHORARIO_FIND_FIM: TTimeField;
    qTosador: TSQLQuery;
    dspTosador: TDataSetProvider;
    cdsTosador: TClientDataSet;
    dsTosador: TDataSource;
    cdsTosadorCDTOSADOR: TIntegerField;
    cdsTosadorNOME: TStringField;
    cdsTosadorCOMISSAO: TSingleField;
    cdsBanhoTosaNOME: TStringField;
    cdsBanhoTosaAPELIDO: TStringField;
    Label3: TLabel;
    cdsBanhoTosaCDTOSADOR: TIntegerField;
    DBLookupComboProfissional: TJvDBLookupCombo;
    qCA: TSQLQuery;
    dspCA: TDataSetProvider;
    cdsCA: TClientDataSet;
    dsCA: TDataSource;
    cdsCACODIGO: TIntegerField;
    cdsCAQTD_CAMPOS: TIntegerField;
    cdsCANOME_CAMPO1: TStringField;
    cdsCANOME_CAMPO2: TStringField;
    cdsCANOME_CAMPO3: TStringField;
    cdsCANOME_CAMPO4: TStringField;
    cdsCANOME_CAMPO5: TStringField;
    cdsCANOME_CAMPO6: TStringField;
    cdsCAHORARIO_INICIO: TTimeField;
    cdsCAHORARIO_FINAL: TTimeField;
    cdsCACADASTRADO_POR: TStringField;
    cdsCACADASTRADO_EM: TSQLTimeStampField;
    cdsCAINTERVALO: TIntegerField;
    cdsCAATIVO: TIntegerField;
    QAG: TSQLQuery;
    QAGCDAGENDA: TIntegerField;
    QAGCDTOSADOR: TIntegerField;
    QAGNOME: TStringField;
    QAGDATA: TDateField;
    QAGHORA: TTimeField;
    QAGCDPROCEDIMENTO: TIntegerField;
    QAGOBSERVACOES: TStringField;
    QAGCADASTRADO_POR: TStringField;
    QAGCADASTRADO_EM: TSQLTimeStampField;
    dspAG: TDataSetProvider;
    cdsAG: TClientDataSet;
    cdsAGCDAGENDA: TIntegerField;
    cdsAGCDTOSADOR: TIntegerField;
    cdsAGNOME: TStringField;
    cdsAGDATA: TDateField;
    cdsAGHORA: TTimeField;
    cdsAGCDPROCEDIMENTO: TIntegerField;
    cdsAGOBSERVACOES: TStringField;
    cdsAGCADASTRADO_POR: TStringField;
    cdsAGCADASTRADO_EM: TSQLTimeStampField;
    dsAG: TDataSource;
    QAGCDCLIENTE: TIntegerField;
    QAGAPELIDO: TStringField;
    cdsAGCDCLIENTE: TIntegerField;
    cdsAGAPELIDO: TStringField;
    QAGDESCRICAO: TStringField;
    cdsAGDESCRICAO: TStringField;
    qPesquisa: TSQLQuery;
    BitBtnPesquisa: TJvXPButton;
    BitBtnSair: TJvXPButton;
    BitBtnPrior: TJvXPButton;
    BitBtnNext: TJvXPButton;
    BitBtnImprimeAgenda: TJvXPButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure StgAgendaDblClick(Sender: TObject);
    procedure BitBtnPesquisaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure StgAgendaSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtnPriorClick(Sender: TObject);
    procedure BitBtnNextClick(Sender: TObject);
    procedure cdsTosadorAfterScroll(DataSet: TDataSet);
    procedure BitBtnImprimeAgendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaAgenda;

    procedure MostraMarcacao;
    procedure MostraTitulos;
  end;

var
  TelaAgendaBanhoeTosa: TTelaAgendaBanhoeTosa;

implementation

uses Principal_p, DMPrincipal_p, TelaCadastraBanho_p, Funcoes_p, TelaAgendamento_p,
     TelaAgendamentoRapido_p, RelatorioAgendaSalao_p;

{$R *.dfm}

procedure TTelaAgendaBanhoeTosa.MontaAgenda;
var i : Integer;
    VarQtdLinhas : Integer;
    VarNumeroHoras : Integer;
    VarHoraInicial : String;
begin
  StgAgenda.ColCount := cdsCAQTD_CAMPOS.AsInteger;

  {$REGION 'Colunas'}
  case cdsCAQTD_CAMPOS.AsInteger of
    3 : begin
          StgAgenda.Cols[0].Add(cdsCANOME_CAMPO1.AsString );
          StgAgenda.Cols[1].Add(cdsCANOME_CAMPO2.AsString );
          StgAgenda.Cols[2].Add(cdsCANOME_CAMPO3.AsString );
        end;
    4 : begin
          StgAgenda.Cols[0].Add(cdsCANOME_CAMPO1.AsString );
          StgAgenda.Cols[1].Add(cdsCANOME_CAMPO2.AsString );
          StgAgenda.Cols[2].Add(cdsCANOME_CAMPO3.AsString );
          StgAgenda.Cols[3].Add(cdsCANOME_CAMPO4.AsString );
        end;
    5 : begin
          StgAgenda.Cols[0].Add(cdsCANOME_CAMPO1.AsString );
          StgAgenda.Cols[1].Add(cdsCANOME_CAMPO2.AsString );
          StgAgenda.Cols[2].Add(cdsCANOME_CAMPO3.AsString );
          StgAgenda.Cols[3].Add(cdsCANOME_CAMPO4.AsString );
          StgAgenda.Cols[4].Add(cdsCANOME_CAMPO5.AsString );
        end;
    6 : begin
          StgAgenda.Cols[0].Add(cdsCANOME_CAMPO1.AsString );
          StgAgenda.Cols[1].Add(cdsCANOME_CAMPO2.AsString );
          StgAgenda.Cols[2].Add(cdsCANOME_CAMPO3.AsString );
          StgAgenda.Cols[3].Add(cdsCANOME_CAMPO4.AsString );
          StgAgenda.Cols[4].Add(cdsCANOME_CAMPO5.AsString );
          StgAgenda.Cols[5].Add(cdsCANOME_CAMPO6.AsString );
        end;
  end;
  {$ENDREGION}

  VarNumeroHoras     := StrToInt(FormatDateTime('hh',cdsCAHORARIO_FINAL.AsDateTime)) - StrToInt(FormatDateTime('hh',cdsCAHORARIO_INICIO.AsDateTime));
  VarQtdLinhas       := (60 div cdsCAINTERVALO.AsInteger);
  VarQtdLinhas       := VarQtdLinhas * VarNumeroHoras;
  StgAgenda.RowCount := VarQtdLinhas + 2;

  VarHoraInicial := FormatDateTime('hh:mm',cdsCAHORARIO_INICIO.AsDateTime);
  StgAgenda.Rows[1].Add(VarHoraInicial);

  for i := 2 to StgAgenda.RowCount do
    begin
      VarHoraInicial := FormatDateTime('hh:mm', IncMinute(StrToTime(VarHoraInicial),cdsCAINTERVALO.AsInteger));
      StgAgenda.Rows[i].Add(VarHoraInicial);
    end;

//  StgAgenda.Rows[2].Add('8:30');
//  StgAgenda.Rows[3].Add('9:00');
//  StgAgenda.Rows[4].Add('9:30');
//  StgAgenda.Rows[5].Add('10:00');
//  StgAgenda.Rows[6].Add('10:30');
//  StgAgenda.Rows[7].Add('11:00');
//  StgAgenda.Rows[8].Add('11:30');
//  StgAgenda.Rows[9].Add('12:00');
//  StgAgenda.Rows[10].Add('12:30');
//  StgAgenda.Rows[11].Add('13:00');
//  StgAgenda.Rows[12].Add('13:30');
//  StgAgenda.Rows[13].Add('14:00');
//  StgAgenda.Rows[14].Add('14:30');
//  StgAgenda.Rows[15].Add('15:00');
//  StgAgenda.Rows[16].Add('15:30');
//  StgAgenda.Rows[17].Add('16:00');
//  StgAgenda.Rows[18].Add('16:30');
//  StgAgenda.Rows[19].Add('17:00');
//  StgAgenda.Rows[20].Add('17:30');
end;


procedure TTelaAgendaBanhoeTosa.MostraTitulos;
begin
//  StgAgenda.Cols[1].Add('Cliente');
//  StgAgenda.Cols[2].Add('Procedimento');
//  StgAgenda.Cols[3].Add('Mascote');
//  StgAgenda.Cols[4].Add('Obs.');
//  StgAgenda.Cols[5].Add('Leva e Tráz');
//
//  StgAgenda.Rows[0].Add('Horário');
//  StgAgenda.Rows[1].Add('8:00');
//  StgAgenda.Rows[2].Add('8:30');
//  StgAgenda.Rows[3].Add('9:00');
//  StgAgenda.Rows[4].Add('9:30');
//  StgAgenda.Rows[5].Add('10:00');
//  StgAgenda.Rows[6].Add('10:30');
//  StgAgenda.Rows[7].Add('11:00');
//  StgAgenda.Rows[8].Add('11:30');
//  StgAgenda.Rows[9].Add('12:00');
//  StgAgenda.Rows[10].Add('12:30');
//  StgAgenda.Rows[11].Add('13:00');
//  StgAgenda.Rows[12].Add('13:30');
//  StgAgenda.Rows[13].Add('14:00');
//  StgAgenda.Rows[14].Add('14:30');
//  StgAgenda.Rows[15].Add('15:00');
//  StgAgenda.Rows[16].Add('15:30');
//  StgAgenda.Rows[17].Add('16:00');
//  StgAgenda.Rows[18].Add('16:30');
//  StgAgenda.Rows[19].Add('17:00');
//  StgAgenda.Rows[20].Add('17:30');
end;

procedure TTelaAgendaBanhoeTosa.BitBtnPesquisaClick(Sender: TObject);
begin
  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.MostraMarcacao;
var i,x : Integer;
begin
  {$REGION 'Limpa Agenda'}
  for x := 1 to StgAgenda.RowCount do
    begin
      StgAgenda.Cells[1,x] := '';
      StgAgenda.Cells[2,x] := '';
    end;
  {$ENDREGION}

  cdsAG.Close;
  cdsAG.FetchParams;
  cdsAG.Params.ParamByName('DATA').AsDateTime     := dtpDate.Date;
  cdsAG.Params.ParamByName('CDTOSADOR').AsInteger := cdsTosadorCDTOSADOR.AsInteger;
  cdsAG.Open;
  for i := 0 to cdsAG.RecordCount -1 do
    begin
      for x := 1 to StgAgenda.RowCount do
        begin
          if StgAgenda.Cells[0,x] = FormatDateTime('hh:mm',cdsAGHORA.AsDateTime) then
            begin
              StgAgenda.Cells[1,x] := (cdsAGAPELIDO.AsString);
              StgAgenda.Cells[2,x] := (cdsAGDESCRICAO.AsString);
              //StgAgenda.Cells[3,x] := (cdsAGNOME.AsString);
            end;
        end;
      {$REGION '01 - 08:00- Desabilitado'}
//      if cdsBanhoTosaHORA.AsDateTime = StrToTime('08:00') then
//        begin
//          StgAgenda.Cells[1,1] := (cdsBanhoTosaAPELIDO.AsString);
//          StgAgenda.Cells[2,1] := (cdsBanhoTosaPROCEDIMENTO.AsString);
//          StgAgenda.Cells[3,1] := (cdsBanhoTosaNOME.AsString);
//          StgAgenda.Cells[4,1] := (cdsBanhoTosaOBSERVACOES.AsString);
//          case cdsBanhoTosaLEVAETRAS.AsInteger of
//            1 : StgAgenda.Cells[5,1] := 'Sim';
//            0 : StgAgenda.Cells[5,1] := 'Não';
//          end;
//        end;
      {$ENDREGION}
       cdsAG.Next;
    end;
 end;

procedure TTelaAgendaBanhoeTosa.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaAgendaBanhoeTosa.cdsTosadorAfterScroll(DataSet: TDataSet);
begin
  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.FormActivate(Sender: TObject);
begin
  cdsConfig.Open;
  cdsBanhoTosa.Open;
  cdsTosador.Open;
  cdsCA.open;
  dtpDate.Date := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  MontaAgenda;
  DBLookupComboProfissional.KeyValue := cdsTosadorNOME.AsString;
  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaAgendaBanhoeTosa.FormCreate(Sender: TObject);
begin
//  dtpDate.Date               := Date;
//  StgAgenda.ColCount         := 6;
//  StgAgenda.RowCount         := 20;
//  MostraTitulos;
//  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TTelaAgendaBanhoeTosa.BitBtnPriorClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date - 1;
  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.BitBtnImprimeAgendaClick(Sender: TObject);
begin
  RelatorioAgendaSalao := TRelatorioAgendaSalao.Create(Application);
  VarcodigoTosadorAgenda := cdsTosadorCDTOSADOR.AsInteger;
  VarDataDia             := dtpDate.Date;
  RelatorioAgendaSalao.MontaAgenda;
  FreeAndNil(RelatorioAgendaSalao);
  StgAgenda.Clear;
end;

procedure TTelaAgendaBanhoeTosa.BitBtnNextClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date + 1;
  MostraMarcacao;
end;

procedure TTelaAgendaBanhoeTosa.StgAgendaDblClick(Sender: TObject);
begin
//  TelaAgendamento := TTelaAgendamento.Create(Application);
//  TelaAgendamento.ShowModal;
//  FreeAndNil(TelaAgendamento);
//  TelaAgendamentoRapido := TTelaAgendamentoRapido.Create(Application);
//  TelaCadastraBanho := TTelaCadastraBanho.Create(Application);
//  BrowseState(TelaAgendaBanhoeTosa);
//  TelaCadastraBanho.cdsBanho.Close;
//  TelaCadastraBanho.cdsBanho.CommandText := ('select bt.cdbanhoetosa,bt.cdmascote,   '+
//                                             'bt.procedimento,bt.tosador,bt.data,    '+
//                                             'bt.hora,bt.observacoes,bt.levaetras,   '+
//                                             'mascote.nome,mascote.obs,bt.cdtosador, '+
//                                             'clientes.apelido, bt.cdcliente from banhoetosa bt            '+
//                                             'left join mascote on mascote.cdmascote = bt.cdmascote        '+
//                                             'left join clientes on clientes.cdcliente = mascote.cdcliente '+
//                                             'where bt.data = '''+ FormatDateTime('MM/DD/YYYY',Date)+'''   ');
//
//  TelaCadastraBanho.cdsBanho.Open;
//
//
//  TelaCadastraBanho.cdsCliente.Open;
//  TelaCadastraBanho.cdsMascote.Open;
//  TelaCadastraBanho.cdsTosador.Open;
//  TelaCadastraBanho.cdsTipo.Open;
//  TelaCadastraBanho.ShowModal;
//  BitBtnPesquisa.Click;
end;

procedure TTelaAgendaBanhoeTosa.StgAgendaSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if VarMeusAcessos[11] = '001' then
    begin
      TelaAgendamentoRapido := TTelaAgendamentoRapido.Create(Application);
      if StgAgenda.Cells[ACol, ARow] = '' then
        begin
          VarCodigoTosador                                := cdsTosadorCDTOSADOR.AsInteger;
          TelaAgendamentoRapido.MaskeditData.Date         := dtpDate.Date;
          TelaAgendamentoRapido.MaskeditHora.Time         := StrToTime(StgAgenda.Cells[0, ARow]);
          TelaAgendamentoRapido.MaskEditEspecialista.Text := cdsTosadorNOME.AsString;
          TelaAgendamentoRapido.BitBtnDesmarcar.Visible := False;
        end
      else
        begin
          qPesquisa.Active := False;
          qPesquisa.SQL.Clear;
          qPesquisa.SQL.Add('select agenda.data,            ');
          qPesquisa.SQL.Add('       agenda.hora,            ');
          qPesquisa.SQL.Add('       agenda.observacoes,     ');
          qPesquisa.SQL.Add('       clientes.apelido,       ');
          qPesquisa.SQL.Add('       clientes.png,           ');
          qPesquisa.SQL.Add('       clientes.tipo_restricao,');
          qPesquisa.SQL.Add('       clientes.fone,          ');
          qPesquisa.SQL.Add('       clientes.fone2,         ');
          qPesquisa.SQL.Add('       tosador.nome,           ');
          qPesquisa.SQL.Add('       procedimentos.descricao ');
          qPesquisa.SQL.Add('from agenda  ');
          qPesquisa.SQL.Add('left join clientes on clientes.cdcliente = agenda.cdcliente');
          qPesquisa.SQL.Add('left join tosador on tosador.cdtosador = agenda.cdtosador');
          qPesquisa.SQL.Add('left join procedimentos on procedimentos.cdprocedimento = agenda.cdprocedimento');
          qPesquisa.SQL.Add('where agenda.data      = '''+FormatDateTime('MM/DD/YYYY',dtpDate.Date)+''' ');
          qPesquisa.SQL.Add('and   agenda.hora      = '''+StgAgenda.Cells[0,ARow]+''' ');
          qPesquisa.SQL.Add('and   agenda.cdtosador = '''+cdsTosadorCDTOSADOR.AsString+''' ');
          //inputbox('','',qPesquisa.SQL.Text);
          qPesquisa.Active := True;
          TelaAgendamentoRapido.MaskeditData.Date         := qPesquisa.FieldByName('DATA').AsDateTime;
          TelaAgendamentoRapido.MaskeditHora.Time         := qPesquisa.FieldByName('HORA').AsDateTime;
          TelaAgendamentoRapido.MaskEditEspecialista.Text := qPesquisa.FieldByName('NOME').AsString;

          if Trim(qPesquisa.FieldByName('FONE').AsString) <> '' then
            TelaAgendamentoRapido.MaskEditFone.Text := qPesquisa.FieldByName('FONE').AsString
          else
            TelaAgendamentoRapido.MaskEditFone.Text := qPesquisa.FieldByName('FONE').AsString;

          if Trim(qPesquisa.FieldByName('PNG').AsString) = '1' then
            TelaAgendamentoRapido.CheckBox1.Checked := True
          else
            TelaAgendamentoRapido.CheckBox1.Checked := False;

          TelaAgendamentoRapido.MaskEditCliente.Text      := qPesquisa.FieldByName('APELIDO').AsString;
          TelaAgendamentoRapido.MaskEditOBS.Text          := qPesquisa.FieldByName('OBSERVACOES').AsString;
          TelaAgendamentoRapido.MaskeditProcedimento.Text := qPesquisa.FieldByName('DESCRICAO').AsString;
          TelaAgendamentoRapido.DBLookupComboBox1.SendToback;
        end;
      TelaAgendamentoRapido.ShowModal;
      FreeAndNil(TelaAgendamentoRapido);
      MostraMarcacao;
    end;
end;

end.
