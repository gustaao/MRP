unit PesquisaEnqIPI_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, Buttons, Mask,
  ExtCtrls, Grids, DBGrids;

type
  TPesquisaEnqIPI = class(TForm)
    PanelTopo: TPanel;
    DBGrid1: TDBGrid;
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    dsEnqIPI: TDataSource;
    cdsEnqIPI: TClientDataSet;
    cdsEnqIPIDESCRICAO: TStringField;
    dspEnqIPI: TDataSetProvider;
    qEnqIPI: TSQLQuery;
    cdsEnqIPICODIGO_ENQUADRAMENTO: TStringField;
    cdsEnqIPICDSITUACAO_ENTRADA: TIntegerField;
    cdsEnqIPICDSITUACAO_SAIDA: TIntegerField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaEnqIPI: TPesquisaEnqIPI;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}

procedure TPesquisaEnqIPI.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaEnqIPI.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
