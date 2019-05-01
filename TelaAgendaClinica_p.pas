unit TelaAgendaClinica_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, JvExGrids, JvStringGrid, DBCtrls, StdCtrls, Buttons, ComCtrls,
  JvExComCtrls, JvDateTimePicker, ExtCtrls, FMTBcd, Provider, DB, SqlExpr,
  DBClient, pngimage, JvExControls, JvXPCore, JvXPButtons;

type
  TTelaAgendaClinica = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtpDate: TJvDateTimePicker;
    BitBtnSair: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    StgAgenda: TJvStringGrid;
    Label3: TLabel;
    dsAgenda: TDataSource;
    cdsAgenda: TClientDataSet;
    qAgenda: TSQLQuery;
    dspAgenda: TDataSetProvider;
    qVet: TSQLQuery;
    dspVet: TDataSetProvider;
    cdsVet: TClientDataSet;
    dsVet: TDataSource;
    cdsVetCDVETERINARIO: TIntegerField;
    cdsVetNOME: TStringField;
    qAgendaCDAGENDA_VETERINARIA: TIntegerField;
    qAgendaCDVETERINARIO: TIntegerField;
    qAgendaDATA: TDateField;
    qAgendaHORA: TTimeField;
    qAgendaCDPROCEDIMENTO: TIntegerField;
    qAgendaCDMASCOTE: TIntegerField;
    qAgendaVETERINARIO: TStringField;
    qAgendaPROCEDIMENTO: TStringField;
    qAgendaPACIENTE: TStringField;
    qAgendaCLIENTE: TStringField;
    cdsAgendaCDAGENDA_VETERINARIA: TIntegerField;
    cdsAgendaCDVETERINARIO: TIntegerField;
    cdsAgendaDATA: TDateField;
    cdsAgendaHORA: TTimeField;
    cdsAgendaCDPROCEDIMENTO: TIntegerField;
    cdsAgendaCDMASCOTE: TIntegerField;
    cdsAgendaVETERINARIO: TStringField;
    cdsAgendaPROCEDIMENTO: TStringField;
    cdsAgendaPACIENTE: TStringField;
    cdsAgendaCLIENTE: TStringField;
    cdsVetCRMV: TStringField;
    qAgendaOBSERVACOES: TStringField;
    cdsAgendaOBSERVACOES: TStringField;
    BitBtnPrior: TJvXPButton;
    BitBtnNext: TJvXPButton;
    BitBtnPesquisa: TJvXPButton;
    BitBtnImprimeAgenda: TJvXPButton;
    JvXPButton2: TJvXPButton;
    procedure FormCreate(Sender: TObject);
    procedure dspAgendaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StgAgendaDblClick(Sender: TObject);
    procedure BitBtnPesquisaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnPriorClick(Sender: TObject);
    procedure BitBtnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MostraTitulos;
    procedure MostraMarcacao;
  end;

var
  TelaAgendaClinica: TTelaAgendaClinica;

implementation

uses DMPrincipal_p, Principal_p, Funcoes_p, TelaCadastraConsulta_p;


{$R *.dfm}

procedure TTelaAgendaClinica.MostraTitulos;
begin
  StgAgenda.Cols[1].Add('Cliente');
  StgAgenda.Cols[2].Add('Paciente');
  StgAgenda.Cols[3].Add('Procedimento');
  StgAgenda.Cols[4].Add('Obs.');

  StgAgenda.Rows[0].Add('Horário');
  StgAgenda.Rows[1].Add('8:00');
  StgAgenda.Rows[2].Add('8:30');
  StgAgenda.Rows[3].Add('9:00');
  StgAgenda.Rows[4].Add('9:30');
  StgAgenda.Rows[5].Add('10:00');
  StgAgenda.Rows[6].Add('10:30');
  StgAgenda.Rows[7].Add('11:00');
  StgAgenda.Rows[8].Add('11:30');
  StgAgenda.Rows[9].Add('12:00');
  StgAgenda.Rows[10].Add('12:30');
  StgAgenda.Rows[11].Add('13:00');
  StgAgenda.Rows[12].Add('13:30');
  StgAgenda.Rows[13].Add('14:00');
  StgAgenda.Rows[14].Add('14:30');
  StgAgenda.Rows[15].Add('15:00');
  StgAgenda.Rows[16].Add('15:30');
  StgAgenda.Rows[17].Add('16:00');
  StgAgenda.Rows[18].Add('16:30');
  StgAgenda.Rows[19].Add('17:00');
  StgAgenda.Rows[20].Add('17:30');
  StgAgenda.Rows[21].Add('18:00');
end;

procedure TTelaAgendaClinica.StgAgendaDblClick(Sender: TObject);
begin
  if VarMeusAcessos[18] = '001' then
    begin
      TelaCadastraConsulta := TTelaCadastraConsulta.Create(Application);
      TelaCadastraConsulta.cdsAgenda.Open;
      TelaCadastraConsulta.cdsVet.Open;
      TelaCadastraConsulta.cdsProc.Open;
      TelaCadastraConsulta.cdsCliente.Open;
      TelaCadastraConsulta.cdsMascote.Open;
      TelaCadastraConsulta.ShowModal;
      FreeAndNil(TelaCadastraConsulta);
    end;
end;

procedure TTelaAgendaClinica.MostraMarcacao;
var i : Integer;
begin
  StgAgenda.Clear;
  MostraTitulos;
  cdsAgenda.Close;
  cdsAgenda.CommandText := 'select av.cdagenda_veterinaria,av.cdveterinario, '+
                           'av.data,av.hora,av.cdprocedimento,av.cdmascote,  '+
                           'av.observacoes,veterinarios.nome as veterinario, '+
                           'procedimentos.descricao as procedimento,       '+
                           'mascote.nome as paciente,clientes.apelido as cliente '+
                           'from agenda_veterinaria av '+
                           'left join veterinarios on veterinarios.cdveterinario = av.cdveterinario     '+
                           'left join procedimentos on procedimentos.cdprocedimento = av.cdprocedimento '+
                           'left join mascote on mascote.cdmascote = av.cdmascote                       '+
                           'left join clientes on clientes.cdcliente = mascote.cdcliente                '+
                           'where av.data =:data and   av.cdveterinario=:cdveterinario                  ';
  cdsAgenda.Params.ParamByName('DATA').AsDateTime         := dtpDate.Date;
  cdsAgenda.Params.ParamByName('CDVETERINARIO').AsInteger := cdsVetCDVETERINARIO.AsInteger;
  cdsAgenda.Open;
  for i := 0 to cdsAgenda.RecordCount -1 do
    begin
      {$REGION '01 - 08:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('08:00') then
        begin
          StgAgenda.Cells[1,1] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,1] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,1] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,1] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '02 - 08:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('08:30') then
        begin
          StgAgenda.Cells[1,2] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,2] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,2] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,2] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '03 - 09:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('09:00') then
        begin
          StgAgenda.Cells[1,3] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,3] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,3] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,3] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '04 - 09:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('09:30') then
        begin
          StgAgenda.Cells[1,4] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,4] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,4] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,4] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '05 - 10:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('09:30') then
        begin
          StgAgenda.Cells[1,5] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,5] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,5] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,5] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '06 - 10:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('09:30') then
        begin
          StgAgenda.Cells[1,6] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,6] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,6] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,6] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '07 - 11:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('11:00') then
        begin
          StgAgenda.Cells[1,7] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,7] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,7] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,7] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '08 - 11:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('11:30') then
        begin
          StgAgenda.Cells[1,8] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,8] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,8] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,8] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '09 - 12:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('11:30') then
        begin
          StgAgenda.Cells[1,9] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,9] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,9] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,9] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '10 - 12:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('12:30') then
        begin
          StgAgenda.Cells[1,10] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,10] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,10] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,10] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '11 - 13:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('13:00') then
        begin
          StgAgenda.Cells[1,11] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,11] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,11] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,11] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '12 - 13:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('13:30') then
        begin
          StgAgenda.Cells[1,12] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,12] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,12] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,12] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '13 - 14:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('14:00') then
        begin
          StgAgenda.Cells[1,13] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,13] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,13] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,13] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '14 - 14:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('14:30') then
        begin
          StgAgenda.Cells[1,13] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,13] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,13] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,13] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '15 - 15:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('15:00') then
        begin
          StgAgenda.Cells[1,15] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,15] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,15] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,15] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '16 - 15:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('15:30') then
        begin
          StgAgenda.Cells[1,16] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,16] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,16] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,16] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '17 - 16:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('16:00') then
        begin
          StgAgenda.Cells[1,17] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,17] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,17] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,17] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '18 - 16:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('16:30') then
        begin
          StgAgenda.Cells[1,18] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,18] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,18] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,18] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '19 - 17:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('17:00') then
        begin
          StgAgenda.Cells[1,19] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,19] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,19] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,19] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '20 - 17:30'}
      if cdsAgendaHORA.AsDateTime = StrToTime('17:30') then
        begin
          StgAgenda.Cells[1,20] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,20] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,20] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,20] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}

      {$REGION '21 - 18:00'}
      if cdsAgendaHORA.AsDateTime = StrToTime('18:00') then
        begin
          StgAgenda.Cells[1,21] := (cdsAgendaCLIENTE.AsString);
          StgAgenda.Cells[2,21] := (cdsAgendaPACIENTE.AsString);
          StgAgenda.Cells[3,21] := (cdsAgendaPROCEDIMENTO.AsString);
          StgAgenda.Cells[4,21] := (cdsAgendaOBSERVACOES.AsString);
        end;
      {$ENDREGION}
       cdsAgenda.Next;
    end;
 end;


procedure TTelaAgendaClinica.BitBtnNextClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date + 1;
  MostraMarcacao;
end;

procedure TTelaAgendaClinica.BitBtnPesquisaClick(Sender: TObject);
begin
  MostraMarcacao
end;

procedure TTelaAgendaClinica.BitBtnPriorClick(Sender: TObject);
begin
  dtpDate.Date := dtpDate.Date - 1;
  MostraMarcacao;
end;

procedure TTelaAgendaClinica.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaAgendaClinica.dspAgendaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('AGENDA_VETERINARIA');
end;

procedure TTelaAgendaClinica.FormActivate(Sender: TObject);
begin
  cdsAgenda.Open;
  cdsVet.Open;
end;

procedure TTelaAgendaClinica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTelaAgendaClinica.FormCreate(Sender: TObject);
begin
  dtpDate.Date       := Date;
  StgAgenda.ColCount := 4;
  StgAgenda.RowCount := 22;
  MostraTitulos;
end;

end.
