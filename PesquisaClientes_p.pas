unit PesquisaClientes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls,
  Buttons, Mask, ExtCtrls, pngimage, JvExControls, JvXPCore, JvXPButtons;

type
  TPesquisaClientes = class(TForm)
    qClientes: TSQLQuery;
    cdsClientes: TClientDataSet;
    dspClientes: TDataSetProvider;
    dsClientes: TDataSource;
    PanelBotoes: TPanel;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnGeral: TBitBtn;
    BitBtnOK: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtnSair: TBitBtn;
    PanelCorpo: TPanel;
    PanelTopo: TPanel;
    DBGrid1: TDBGrid;
    cdsClientesCDPESSOA: TIntegerField;
    cdsClientesTIPO_PESSOA: TIntegerField;
    cdsClientesNOME: TStringField;
    cdsClientesAPELIDO: TStringField;
    cdsClientesENDERECO: TStringField;
    cdsClientesNUMERO: TStringField;
    cdsClientesBAIRRO: TStringField;
    cdsClientesCIDADE: TStringField;
    cdsClientesCEP: TStringField;
    cdsClientesUF: TStringField;
    cdsClientesIE_RG: TStringField;
    cdsClientesCOD_IBGE: TStringField;
    cdsClientesCPF_CNPJ: TStringField;
    cdsClientesCOD_PAIS: TStringField;
    cdsClientesLIMITE_CREDITO: TFloatField;
    cdsClientesCDENQUADRAMENTO_IMPOSTO: TIntegerField;
    GroupBox3: TGroupBox;
    BitBtnAdd: TJvXPButton;
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaClientes: TPesquisaClientes;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaCadastraCliente_p;

{$R *.dfm}

procedure TPesquisaClientes.BitBtnOKClick(Sender: TObject);
var wSQL : string;
begin
  if Trim(MaskeditPesquisa.Text)<> '' then
    begin
//      cdsClientes.Close;
//      case rgPesquisa.ItemIndex of
//        0 : wSQL := ('select * from clientes p where p.cdcliente      =    ''' +edtPesquisa.Text+''' ');
//        1 : wSQL := ('select * from clientes p where upper(p.nome)    like upper('''+edtPesquisa.Text+'%'') ');
//        2 : wSQL := ('select * from clientes p where upper(p.apelido) like upper('''+edtPesquisa.Text+'%'') ');
//        3 : wSQL := ('select * from clientes p where p.cpf_cnpj       =    ''' +edtPesquisa.Text+''' ');
//      end;
//      wSQL := wSQL + ('order by apelido ');
//      cdsClientes.CommandText := wSQL;
//      cdsClientes.Open;

      cdsClientes.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsClientes.Filter := 'CDPESSOA  =  '''+MaskeditPesquisa.Text+''' ';
        1 : cdsClientes.Filter := 'UPPER(NOME)    LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        2 : cdsClientes.Filter := 'UPPER(APELIDO) LIKE UPPER(''%'+MaskeditPesquisa.Text+'%'') ';
        3 : cdsClientes.Filter := 'CPF_CNPJ   = '''+MaskeditPesquisa.Text+''' ';
      end;
      cdsClientes.Filtered := True;


      if (cdsClientes.IsEmpty) then
        begin
          MaskeditPesquisa.SelectAll;
          MaskeditPesquisa.SetFocus;
        end
      else
        if cdsClientes.RecordCount > 1 then
          DBGrid1.SetFocus
        else
          BitBtnSair.SetFocus;
    end;
end;

procedure TPesquisaClientes.BitBtnGeralClick(Sender: TObject);
begin
  cdsClientes.Filtered := False;
  cdsClientes.Refresh;
end;

procedure TPesquisaClientes.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TPesquisaClientes.DBGrid1Exit(Sender: TObject);
begin
  BitBtnSair.SetFocus;
end;

procedure TPesquisaClientes.FormActivate(Sender: TObject);
begin
  cdsClientes.Open;
  DBGrid1.SetFocus;
end;

procedure TPesquisaClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    BitBtnOK.Click
  else
    if Key = VK_F3 then
      BitBtnGeral.Click
    else
      if Key = VK_F4 then
        BitBtnAdd.Click
      else
        if Key = VK_F5 then
          BitBtnSair.Click;
end;

procedure TPesquisaClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TPesquisaClientes.BitBtnAddClick(Sender: TObject);
begin
  TelaCadastraCliente := TTelaCadastraCliente.Create(Application);
  TelaCadastraCliente.ShowModal;
  FreeAndNil(TelaCadastraCliente);
end;

end.















