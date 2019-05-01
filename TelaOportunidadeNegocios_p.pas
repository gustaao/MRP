unit TelaOportunidadeNegocios_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvXPCore, JvXPButtons, StdCtrls, Mask, ExtCtrls,
  JvExButtons, JvBitBtn, Buttons, Grids, DBGrids, FMTBcd, DB, Provider,
  DBClient, SqlExpr, Menus;

type
  TTelaOportunidadeNegocios = class(TForm)
    pnlBotoes: TPanel;
    BitBtnIncluir: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRelatorios: TJvBitBtn;
    PanelPesquisa: TPanel;
    Shape1: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Shape2: TShape;
    RadioGroupPesquisa: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEditPesquisa: TMaskEdit;
    BitBtnOK: TJvXPButton;
    BitBtnGeral: TJvXPButton;
    PanelCampos: TPanel;
    DBGrid1: TDBGrid;
    qOportunidades: TSQLQuery;
    cdsOportunidades: TClientDataSet;
    dspOportunidades: TDataSetProvider;
    dsOpotunidades: TDataSource;
    MaskEditDataI: TMaskEdit;
    MaskEditDataF: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    cdsOportunidadesNOME: TStringField;
    cdsOportunidadesTIPO: TStringField;
    cdsOportunidadesDATA: TDateField;
    cdsOportunidadesMOTIVO: TStringField;
    PopupMenu1: TPopupMenu;
    BaixarComoRealizado1: TMenuItem;
    Baixar1: TMenuItem;
    qPedidos: TSQLQuery;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    cdsPedidosCDPEDIDO: TIntegerField;
    cdsPedidosCDVENDEDOR: TIntegerField;
    cdsPedidosCDUSUARIO: TIntegerField;
    cdsPedidosCDCLIENTE: TIntegerField;
    cdsPedidosDATA: TDateField;
    cdsPedidosHORA: TTimeField;
    cdsPedidosQTD: TFloatField;
    cdsPedidosDESCONTO: TFloatField;
    cdsPedidosACRESCIMO: TFloatField;
    cdsPedidosNF_EMITIDA: TIntegerField;
    cdsPedidosCDPAGAMENTO: TIntegerField;
    cdsPedidosCDPLANO_CONTAS: TIntegerField;
    cdsPedidosTIPO: TStringField;
    cdsPedidosVALOR_VENDA: TFloatField;
    cdsPedidosSUBTOTAL: TFloatField;
    cdsPedidosVALOR_TOTAL: TFloatField;
    cdsPedidosVALOR_PAGO: TFloatField;
    cdsPedidosCDPESSOA: TIntegerField;
    cdsPedidosDATA_VALIDADE: TDateField;
    cdsPedidosDIAS_AVISO: TIntegerField;
    cdsPedidosDESCARTAR_AVISO: TIntegerField;
    cdsPedidosRESULTADO: TIntegerField;
    dsPedidos: TDataSource;
    cdsOportunidadesNUMERO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroupPesquisaClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnGeralClick(Sender: TObject);
    procedure BaixarComoRealizado1Click(Sender: TObject);
    procedure Baixar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaOportunidadeNegocios: TTelaOportunidadeNegocios;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p;

{$R *.dfm}



procedure TTelaOportunidadeNegocios.Baixar1Click(Sender: TObject);
begin
  if cdsOportunidadesNUMERO.AsInteger = 0 then
    begin
      Application.MessageBox('Esta Oportunidade de Negócio não é um Orçamento'
        + #13#10 + '                e não poderá ser baixada.', 'Atenção',
        MB_OK + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
    end
  else
    begin
      cdsPedidos.Close;
      cdsPedidos.FetchParams;
      cdsPedidos.Params.ParamByName('CDPEDIDO').AsInteger := cdsOportunidadesNUMERO.AsInteger;
      cdsPedidos.Open;
      cdsPedidos.Edit;
      cdsPedidosDESCARTAR_AVISO.AsInteger := 1;
      cdsPedidosRESULTADO.AsInteger       := 0;
      cdsPedidos.Post;
      cdsPedidos.ApplyUpdates(0);
      cdsOportunidades.Refresh;
    end;
end;

procedure TTelaOportunidadeNegocios.BaixarComoRealizado1Click(Sender: TObject);
begin
  if cdsOportunidadesNUMERO.AsInteger = 0 then
    begin
      Application.MessageBox('Esta Oportunidade de Negócio não é um Orçamento'
        + #13#10 + '                e não poderá ser baixada.', 'Atenção',
        MB_OK + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
    end
  else
    begin
      cdsPedidos.Close;
      cdsPedidos.FetchParams;
      cdsPedidos.Params.ParamByName('CDPEDIDO').AsInteger := cdsOportunidadesNUMERO.AsInteger;
      cdsPedidos.Open;
      cdsPedidos.Edit;
      cdsPedidosDESCARTAR_AVISO.AsInteger := 1;
      cdsPedidosRESULTADO.AsInteger       := 1;
      cdsPedidos.Post;
      cdsPedidos.ApplyUpdates(0);
      cdsOportunidades.Refresh;
    end;
end;

procedure TTelaOportunidadeNegocios.BitBtnGeralClick(Sender: TObject);
var VarQuery : String;
begin
  VarQuery := ' select nome, tipo,  data, motivo, numero '+
              ' from ( select clientes.nome,             '+
              '        0 as numero,                      '+
              '        ''Cliente'' as Tipo,              '+
              '        cast(lpad(extract(month from clientes.nasc_fundacao),2,''0'') ||''/''||     '+
              '                  extract(day   from clientes.nasc_fundacao)          ||''/''||     '+
              '                  extract(year  from  current_date) as date) as Data,               '+
              '        ''Aniversário/Fundação'' as motivo                                          '+
              '        from clientes                                                               '+
              '        where clientes.nasc_fundacao is not null                                    '+
              '  union                                                                             '+
              '        select clientes_contato.nome || '' - ''|| clientes.nome as nome,            '+
              '        0 as numero,                                                                '+
              '        ''Contato de Cliente'' as Tipo,                                             '+
              '        cast(lpad(extract(month from clientes_contato.aniversario),2,''0'') ||''/''|| '+
              '                  extract(day   from clientes_contato.aniversario)        ||''/''|| '+
              '                  extract(year  from  current_date ) as date) as Data,              '+
              '       ''Aniversário'' as motivo                                                    '+
              '       from clientes_contato                                                        '+
              '       join clientes on clientes.cdcliente = clientes_contato.cdcliente             '+
              '       where clientes_contato.aniversario is not null                               '+
              '  union                                                                             '+
              '       select fornecedores.nome,                                                    '+
              '       0 as numero,                                                                 '+
              '       ''Fornecedor'' as Tipo,                                                      '+
              '       cast(lpad(extract(month from fornecedores.nasc_fundacao),2,''0'') ||''/''||  '+
              '                 extract(day   from fornecedores.nasc_fundacao)        ||''/''||    '+
              '                 extract(year  from  current_date ) as date) as Data,               '+
              '       ''Aniversário/Fundação'' as motivo                                           '+
              '       from fornecedores                                                            '+
              '       where fornecedores.nasc_fundacao is not null                                 '+
              '  union                                                                             '+
              '       select fornecedores_contato.nome,                                            '+
              '       0 as numero,                                                                 '+
              '       ''Contato Fornecedor'' as Tipo,                                              '+
              '       cast(lpad(extract(month from fornecedores_contato.aniversario),2,''0'') ||''/''||  '+
              '                 extract(day from fornecedores_contato.aniversario) ||''/''||             '+
              '                 extract(year from  current_date ) as date) as Data,                      '+
              '       ''Aniversário'' as motivo                                                          '+
              '       from fornecedores_contato                                                          '+
              '       join fornecedores on fornecedores.cdfornecedor = fornecedores_contato.cdfornecedor '+
              '       where fornecedores_contato.aniversario is not null                                 '+
              '  union                                                                                   '+
              '       select transportadores.nome,                                                       '+
              '       0 as numero,                                                                       '+
              '       ''Transportador'' as Tipo,                                                         '+
              '       cast(lpad(extract(month from transportadores.nasc_fundacao),2,''0'') ||''/''||     '+
              '                 extract(day from transportadores.nasc_fundacao)          ||''/''||       '+
              '                 extract(year from  current_date ) as date) as Data,                      '+
              '       ''Aniversário/Fundação'' as motivo                                                 '+
              '       from transportadores                                                               '+
              '       where transportadores.nasc_fundacao is not null                                    '+
              '  union                                                                                   '+
              '       select transportadores_contato.nome,                                               '+
              '       0 as numero,                                                                       '+
              '       ''Contato Transportador'' as Tipo,                                                 '+
              '       cast(lpad(extract(month from transportadores_contato.aniversario),2,''0'') ||''/''|| '+
              '                 extract(day from transportadores_contato.aniversario) ||''/''||          '+
              '                 extract(year from  current_date ) as date) as Data,                      '+
              '       ''Aniversário''                                                                    '+
              '       from transportadores_contato                                                       '+
              '       join transportadores on transportadores.cdtransportador = transportadores_contato.cdtransportador '+
              '       where transportadores_contato.aniversario is not null                              '+
              '  union                                                                                   '+
              '       select case when clientes.cdcliente is null then ''Consumidor''                    '+
              '       else ( select nome from ( select c.nome,c.cdpessoa from clientes c union           '+
              '                                 select f.nome, f.cdpessoa from fornecedores f union      '+
              '                                 select t.nome, t.cdpessoa from transportadores t)        '+
              '              where cdpessoa = clientes.cdcliente )                                       '+
              '       end as nome,                                                                       '+
              '       0 as numero,                                                                       '+
              '       ''Venda'',                                                                         '+
              '       cast(lpad(extract(month from negocios.data_negocio),2,''0'') ||''/''||             '+
              '                 extract(day from negocios.data_negocio) ||''/''||                        '+
              '                 extract(year from  negocios.data_negocio ) as date) as Data,             '+
              '        produtos.descricao as Motivo                                                      '+
              ' from negocios                                                                            '+
              ' left join clientes on clientes.cdcliente = negocios.cdcliente                            '+
              ' left join produtos on produtos.cdproduto = negocios.cdproduto                            '+
              '  union                                                                                   '+
              '       select case when pedidos.cdcliente is null then ''Consumidor''                     '+
              '       else ( select nome from ( select c.nome,c.cdpessoa from clientes c union           '+
              '                                 select f.nome, f.cdpessoa from fornecedores f union      '+
              '                                 select t.nome, t.cdpessoa from transportadores t)        '+
              '              where cdpessoa = pedidos.cdcliente )                                        '+
              '       end as nome,                                                                       '+
              '      pedidos.cdpedido as numero,                                                         '+
              '      ''Orçamento'',                                                                      '+
              '       pedidos.data_validade - pedidos.dias_aviso as Data,                                '+
              '      ''Vencimento do Orçamento Nº: ''|| pedidos.cdpedido as motivo                       '+
              ' from pedidos                                                                             '+
              ' left join clientes on clientes.cdcliente = pedidos.cdcliente                             '+
              ' where (pedidos.data_validade is not null)                                                '+
              ' and   (pedidos.descartar_aviso = 0 or (pedidos.descartar_aviso is null))                 '+
              ' ) order by data asc   ';
  cdsOportunidades.Filtered := False;
  cdsOportunidades.Close;
  cdsOportunidades.CommandText := Varquery;
  cdsOportunidades.Open;
  cdsOportunidades.Refresh;
end;

procedure TTelaOportunidadeNegocios.BitBtnOKClick(Sender: TObject);
begin
  if (Trim(MaskeditPesquisa.Text) <> '')or((RadioGroupPesquisa.ItemIndex = 1)and (MaskEditDataI.Text <> '  /  /    ')) then
    begin
      cdsOportunidades.Filtered := False;
      case RadioGroupPesquisa.ItemIndex of
        0 : cdsOportunidades.Filter := 'NOME LIKE ''%'+MaskeditPesquisa.Text+'%'' ';
        1 : cdsOportunidades.Filter := '(DATA >= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataI.Text))+''' and DATA <= '''+FormatDateTime('DD/MM/YYYY',StrToDate(MaskeditDataF.Text))+''' ) ';
      end;
      cdsOportunidades.Filtered := True;
      MaskeditPesquisa.Clear;
    end;
end;

procedure TTelaOportunidadeNegocios.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TTelaOportunidadeNegocios.FormActivate(Sender: TObject);
begin
  cdsOportunidades.Open;
end;

procedure TTelaOportunidadeNegocios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TTelaOportunidadeNegocios.RadioGroupPesquisaClick(Sender: TObject);
begin
  case RadioGroupPesquisa.ItemIndex of
    0 : begin
          MaskEditPesquisa.Enabled := True;
          MaskEditPesquisa.TabStop := True;
          Label1.Enabled           := False;
          MaskEditDataI.Enabled    := False;
          MaskEditDataI.TabStop    := False;
          Label2.Enabled           := False;
          MaskEditDataF.Enabled    := False;
          MaskEditDataF.TabStop    := False;
          MaskEditPesquisa.SetFocus;
        end;
    1 : begin
          MaskEditPesquisa.Enabled := False;
          MaskEditPesquisa.TabStop := False;
          Label1.Enabled           := True;
          MaskEditDataI.Enabled    := True;
          MaskEditDataI.TabStop    := True;
          Label2.Enabled           := True;
          MaskEditDataF.Enabled    := True;
          MaskEditDataF.TabStop    := True;
          MaskEditDataI.SetFocus;
        end;
  end;
end;

end.
