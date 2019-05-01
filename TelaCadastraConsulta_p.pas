unit TelaCadastraConsulta_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, SqlExpr,
  Provider, DBClient, JvExButtons, JvBitBtn;

type
  TTelaCadastraConsulta = class(TForm)
    dsAgenda: TDataSource;
    cdsAgenda: TClientDataSet;
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
    cdsAgendaOBSERVACOES: TStringField;
    dspAgenda: TDataSetProvider;
    qAgenda: TSQLQuery;
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
    qAgendaOBSERVACOES: TStringField;
    qVet: TSQLQuery;
    dspVet: TDataSetProvider;
    cdsVet: TClientDataSet;
    cdsVetCDVETERINARIO: TIntegerField;
    cdsVetNOME: TStringField;
    cdsVetCRMV: TStringField;
    dsVet: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    qProc: TSQLQuery;
    dspProc: TDataSetProvider;
    cdsProc: TClientDataSet;
    dsProc: TDataSource;
    cdsProcCDPROCEDIMENTO: TIntegerField;
    dblVeterinario: TDBLookupComboBox;
    Label2: TLabel;
    dblCliente: TDBLookupComboBox;
    qCliente: TSQLQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    qMascote: TSQLQuery;
    dspMascote: TDataSetProvider;
    cdsMascote: TClientDataSet;
    dsMascote: TDataSource;
    cdsClienteCDCLIENTE: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteAPELIDO: TStringField;
    cdsMascoteCDMASCOTE: TIntegerField;
    cdsMascoteCDRACA: TIntegerField;
    cdsMascoteCDTIPO: TIntegerField;
    cdsMascoteCDCLIENTE: TIntegerField;
    cdsMascoteNOME: TStringField;
    cdsMascoteCOR: TStringField;
    cdsMascoteNASCIMENTO: TDateField;
    cdsMascoteOBS: TBlobField;
    cdsMascoteDATA_CADASTRO: TDateField;
    dblMascote: TDBLookupComboBox;
    Label5: TLabel;
    dblProcedimento: TDBLookupComboBox;
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    cdsProcDESCRICAO: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastraConsulta: TTelaCadastraConsulta;

implementation

uses DMPrincipal_p, Principal_p, Funcoes_p;

{$R *.dfm}

procedure TTelaCadastraConsulta.BitBtnAlterarClick(Sender: TObject);
begin
  InsertState(TelaCadastraConsulta);
  cdsAgenda.Edit;
end;

procedure TTelaCadastraConsulta.BitBtnExcluirClick(Sender: TObject);
begin
  BrowseState(TelaCadastraConsulta);
  if cdsAgenda.IsEmpty then
    begin
      Application.MessageBox('Não Existem Registros para Exclusão', 'Aviso.',MB_OK );
    end
  else
    begin
      if Application.MessageBox('Deseja Realmente Excluir este Registro ?','Confirmar Exclusão.',MB_YESNO) = mrYes then
        begin
          cdsAgenda.Delete;
          cdsAgenda.ApplyUpdates(0);
        end;
    end;
end;

procedure TTelaCadastraConsulta.BitBtnGravarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraConsulta);
  if cdsAgenda.State = dsInsert then
    begin
      cdsAgendaCDAGENDA_VETERINARIA.AsInteger := Gerar_id('GEN_AGENDA_VETERINARIA_ID');
    end;
  cdsAgenda.Post;
  cdsAgenda.ApplyUpdates(0);
end;

procedure TTelaCadastraConsulta.BitBtnIncluirClick(Sender: TObject);
begin
  InsertState(TelaCadastraConsulta);
  cdsAgenda.Insert;
  dblCliente.SetFocus;
end;

procedure TTelaCadastraConsulta.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaCadastraConsulta.CancelarClick(Sender: TObject);
begin
  BrowseState(TelaCadastraConsulta);
  cdsAgenda.Cancel;
end;

end.
