unit Vendas_Pagamento_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Mask, DBCtrls, JvExControls, JvDBLookup, Buttons,
  Grids, DBGrids, ACBrBase, ACBrTroco, ExtCtrls, JvPageList, JvSpeedButton,
  JvExButtons, JvBitBtn, JvXPCore, JvXPButtons;

type
  TVendas_Pagamento = class(TForm)
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtTroco: TEdit;
    EditValorPago: TEdit;
    Shape2: TShape;
    Shape4: TShape;
    Shape1: TShape;
    Shape3: TShape;
    RadioGroupTipoFechamento: TRadioGroup;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditNumeroParcelas: TEdit;
    EditDias1Parcela: TEdit;
    EditValorEntrada: TEdit;
    EditIntervalo: TEdit;
    Label1: TLabel;
    EditCodigo: TEdit;
    EditPagamento: TEdit;
    DBGrid1: TDBGrid;
    LabelValidade: TLabel;
    DBEditValidade: TDBEdit;
    DBEditAviso: TDBEdit;
    LabelAviso: TLabel;
    LabelDias: TLabel;
    BitBtnCancelar: TJvXPButton;
    BitBtnFinalizar: TJvXPButton;
    BitBtnSair: TJvXPButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dspPedidosPagGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure EditValorPagoExit(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnFinalizarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIntervaloExit(Sender: TObject);
    procedure EditValorEntradaKeyPress(Sender: TObject; var Key: Char);
    procedure EditNumeroParcelasEnter(Sender: TObject);
    procedure RadioGroupTipoFechamentoClick(Sender: TObject);
    procedure RadioGroupTipoFechamentoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEditAvisoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Pagar;
    procedure Parcelamento;
    procedure TipoFechamento;
  end;

var
  Vendas_Pagamento: TVendas_Pagamento;

implementation

uses Principal_p, Vendas_p, Funcoes_p, DMVenda_p, DMPrincipal_p;

{$R *.dfm}


procedure TVendas_pagamento.TipoFechamento;
begin
  case RadioGroupTipoFechamento.ItemIndex of
    0 : begin
          LabelValidade.Visible  := False;
          DBEditValidade.Visible := False;
          LabelAviso.Visible     := False;
          LabelDias.Visible      := False;
          DBEditAviso.Visible    := False;

          DMVenda.cdsPedidosTmp.Edit;
          DMVenda.cdsPedidosTmpTIPO.AsString := 'V';
          DMVenda.cdsPedidosTmp.Post;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
          EditCodigo.SetFocus;
        end;

    1 : begin
          LabelValidade.Visible  := True;
          DBEditValidade.Visible := True;
          LabelAviso.Visible     := True;
          LabelDias.Visible      := True;
          DBEditAviso.Visible    := True;

          DMVenda.cdsPedidosTmp.Edit;
          DMVenda.cdsPedidosTmpTIPO.AsString := 'O';
          DMVenda.cdsPedidosTmp.Post;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
          DBEditValidade.SetFocus;
        end;

    2 : begin
          if (VarMeusAcessos[190] <> '001') then
            begin

            end;
          LabelValidade.Visible  := False;
          DBEditValidade.Visible := False;
          LabelAviso.Visible     := False;
          LabelDias.Visible      := False;
          DBEditAviso.Visible    := False;

          DMVenda.cdsPedidosTmp.Edit;
          DMVenda.cdsPedidosTmpTIPO.AsString := 'D';
          DMVenda.cdsPedidosTmp.Post;
          DMVenda.cdsPedidosTmp.ApplyUpdates(0);
        end;
  end;
end;

procedure TVendas_pagamento.Parcelamento;
var VarValorTotal : Real;
    VarValorEntrada : Real;
    VarValorParcela : Real;
    i, VarNumeroParcelas : Integer;
    VarDataPagamento : Real;
    VarIntervalo     : Integer;
    VarIndice : Integer;

begin
  VarValorTotal     := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat;
  VarValorEntrada   := StrToFloatDef(StringReplace(EditValorEntrada.Text ,'.','',[rfReplaceAll]),0);
  VarNumeroParcelas := StrToIntDef(EditNumeroParcelas.Text,0);
  VarDataPagamento  := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  VarIntervalo      := StrToInt(EditIntervalo.Text);
  VarValorParcela   := VarValorTotal - VarValorEntrada;
  VarValorParcela   := VarValorParcela / VarNumeroParcelas;
  //VarIndice         := 1;

  if VarValorEntrada > 0 then
    begin
      DMVenda.jvmPagamento.Append;
      DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger := StrToInt(EditCodigo.Text);
      DMVenda.jvmPagamento.FieldByName('PAGAMENTO').AsString    := EditPagamento.Text;
      DMVenda.jvmPagamento.FieldByName('PARCELA').AsInteger     := 1;
      DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime := VarDataPagamento;
      DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat         := VarValorEntrada;
      DMVenda.jvmPagamento.Post;
      DMVenda.jvmPagamento.Refresh;
    end
  else
    begin
      DMVenda.jvmPagamento.Append;
      DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger := StrToInt(EditCodigo.Text);
      DMVenda.jvmPagamento.FieldByName('PAGAMENTO').AsString    := EditPagamento.Text;
      DMVenda.jvmPagamento.FieldByName('PARCELA').AsInteger     := 1;
      DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime := VarDataPagamento + StrToIntDef(EditDias1Parcela.Text,0);
      DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat         := VarValorParcela;
      DMVenda.jvmPagamento.Post;
      DMVenda.jvmPagamento.Refresh;
    end;
  VarDataPagamento := VarDataPagamento + StrToIntDef(EditDias1Parcela.Text,0);
  for i := 2 to VarNumeroParcelas do
    begin
      VarDataPagamento := VarDataPagamento + StrToIntDef(EditIntervalo.Text,0);
      DMVenda.jvmPagamento.Append;
      DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger := StrToInt(EditCodigo.Text);
      DMVenda.jvmPagamento.FieldByName('PAGAMENTO').AsString    := EditPagamento.Text;
      DMVenda.jvmPagamento.FieldByName('PARCELA').AsInteger     := i;
      DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime := VarDataPagamento;
      DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat         := VarValorParcela;
      DMVenda.jvmPagamento.Post;
      DMVenda.jvmPagamento.Refresh;
    end;
  DBGrid1.SetFocus;
end;

procedure TVendas_Pagamento.RadioGroupTipoFechamentoClick(Sender: TObject);
begin
  TipoFechamento;
end;

procedure TVendas_Pagamento.RadioGroupTipoFechamentoExit(Sender: TObject);
begin
  TipoFechamento;
end;

procedure TVendas_Pagamento.Pagar;
var VarValorTotalRecebido : Real;
begin
  VarValorTotalRecebido := 0;
  //1º Passo - Verifico se é meu primeiro recebimento deste pedido.
  if DMVenda.jvmPagamento.IsEmpty  then
    begin
      VarValorTotalRecebido := (StrToFloatDef(StringReplace(EditValorPago.Text,'.','',[rfReplaceAll]),0));
      DMVenda.jvmPagamento.Insert;
      //2 Passo Se o valor Pago for maior Informo o valor total da Venda.
      if (StrToFloatDef(StringReplace(EditValorPago.Text,'.','',[rfReplaceAll]),0) > DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat) then

        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat
      else
        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := VarValorTotalRecebido;
    end
  else
    begin
      {$REGION 'Obtenho o Valor Total de Pagamento'}
      DMVenda.jvmPagamento.First;
      while not DMVenda.jvmPagamento.Eof do
        begin
          VarValorTotalRecebido := VarValorTotalRecebido + DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat;
          DMVenda.jvmPagamento.Next;
        end;
      VarValorTotalRecebido := VarValorTotalRecebido + StrToFloat(EditValorPago.Text);
      {$ENDREGION}

      if DMVenda.jvmPagamento.Locate('CDPAGAMENTO',EditCodigo.Text,[]) then
        DMVenda.jvmPagamento.Edit
      else
        DMVenda.jvmPagamento.Insert;

      if (VarValorTotalRecebido > DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat) then
        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := (StrToFloatDef(StringReplace(EditValorPago.Text,'.','',[rfReplaceAll]),0))
      else
        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := (StrToFloatDef(StringReplace(EditValorPago.Text,'.','',[rfReplaceAll]),0));
    end;
  //Recebo os outro campos e gravo
  DMVenda.jvmPagamento.FieldByName('CDPAGAMENTO').AsInteger  := DMVenda.cdsTPCDPAGAMENTO.AsInteger;
  DMVenda.jvmPagamento.FieldByName('PAGAMENTO').AsString     := EditPagamento.Text;
  DMVenda.jvmPagamento.FieldByName('VENCIMENTO').AsDateTime  := DMPrincipal.cdsData.FieldByName('CURRENT_DATE').AsDateTime;
  DMVenda.jvmPagamento.Post;
  edtTroco.Text := FloatToStrF(VarValorTotalRecebido - DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat,ffNumber,15,2);


//  if DMVenda.jvmPagamento.Locate('CDPAGAMENTO',EditCodigo.Text,[]) then
//    begin
//      DMVenda.jvmPagamento.Edit;
//      if (StrToFloat(EditValorPago.Text) > DMVenda.cdsPedidoTMPVALORTOTAL.AsFloat) then
//        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := DMVenda.cdsPedidoTMPVALORTOTAL.AsFloat
//      else
//        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat + StrToFloat(EditValorPago.Text);
//    end
//  else
//    begin
//      DMVenda.jvmPagamento.Insert;
//      if (StrToFloat(EditValorPago.Text) > DMVenda.cdsPedidoTMPVALORTOTAL.AsFloat) then
//        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := DMVenda.cdsPedidoTMPVALORTOTAL.AsFloat
//      else
//        DMVenda.jvmPagamento.FieldByName('VALOR').AsFloat := StrToFloat(EditValorPago.Text);
//    end;

  DMVenda.cdsPedidosTmp.Edit;
  if ((StrToFloatDef(StringReplace(EditValorPago.Text,'.','',[rfReplaceAll]),0)) > DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat) then
    DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat := DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat
  else
    DMVenda.cdsPedidosTmpVALOR_PAGO.AsFloat := VarValorTotalRecebido;

  case RadioGroupTipoFechamento.ItemIndex of
    0 : DMVenda.cdsPedidosTmpTIPO.AsString := 'V';
    1 : DMVenda.cdsPedidosTmpTIPO.AsString := 'O';
    2 : DMVenda.cdsPedidosTmpTIPO.AsString := 'D';
  end;
  DMVenda.cdsPedidosTmp.Post;
  DMVenda.cdsPedidosTmp.ApplyUpdates(0);

  edtTroco.Text      := FloatToStrF(VarValorTotalRecebido - DMVenda.cdsPedidosTmpVALOR_TOTAL.AsFloat,ffNumber,15,2);
  EditCodigo.Text    := '';
  EditPagamento.Text := '';
  EditValorPago.Text := FormatFloat('###,####,###,#0.00',VarValorTotalRecebido);

  if (StrToFloatDef(StringReplace(edtTroco.Text,'.','',[rfReplaceAll]),0)) <= 0 then
    EditCodigo.SetFocus;
end;

procedure TVendas_Pagamento.BitBtnCancelarClick(Sender: TObject);
begin
  DMvenda.jvmPagamento.EmptyTable;
  EditCodigo.Text         := '';
  EditPagamento.Text      := '';
  EDitNumeroParcelas.Text := '1';
  RadioGroupTipoFechamento.SetFocus;
end;

procedure TVendas_Pagamento.BitBtnFinalizarClick(Sender: TObject);
begin
  if StrToFloatDef(EdtTroco.Text,0) >= 0  then
    ModalResult := mrOk
  else
    begin
      Application.MessageBox('Pagamento Inferior ao Valor da Venda.' + #13#10
        + '                Não é possivel Finalizar', 'Atenção', MB_OK +
        MB_ICONWARNING);
      Abort;
    end;
end;

procedure TVendas_Pagamento.BitBtnSairClick(Sender: TObject);
begin
  ModalResult := mrClose;
end;

procedure TVendas_Pagamento.DBEditAvisoExit(Sender: TObject);
begin
  EditCodigo.SetFocus;
end;

procedure TVendas_Pagamento.dspPedidosPagGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := ('PEDIDOS_PAGAMENTO')
end;

procedure TVendas_Pagamento.EditCodigoExit(Sender: TObject);
begin
  if not(RadioGroupTipoFechamento.Focused) then
    begin
      if Trim(EditCodigo.Text) = '' then
        EditCodigo.Text := '0';

      if DMVenda.cdsTP.Locate('CDPAGAMENTO',EditCodigo.Text,[]) then
        begin
          EditPagamento.Text := DMVenda.cdsTPPAGAMENTO.AsString;

    //      if DMVenda.jvmPagamento.Locate('CDPAGAMENTO',EditCodigo.Text,[]) then
    //        begin
          if (DMVenda.cdsTPPARCELAMENTO.AsInteger = 1) then
            begin
              Panel1.Enabled := True;
              EditNumeroParcelas.SetFocus;
            end
          else
            EditValorPago.SetFocus;
        end
      else
        begin
          Application.MessageBox('Digite o Código da Forma de Pagamento.',
            'Atenção', MB_OK + MB_ICONWARNING);
          EditCodigo.SetFocus;
        end;
    end;
end;

procedure TVendas_Pagamento.EditCodigoKeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #48..#57];
  if not CharInSet(Key,CharSet) then
    key := #0;
end;

procedure TVendas_Pagamento.EditIntervaloExit(Sender: TObject);
begin
  Parcelamento;
end;

procedure TVendas_Pagamento.EditNumeroParcelasEnter(Sender: TObject);
begin
  if (not BitBtnCancelar.Focused) or (not BitBtnCancelar.Focused) then
    begin
      if not (DMVenda.jvmPagamento.IsEmpty) then
        begin
          if DMVenda.cdsTP.Locate('CDPAGAMENTO',EditCodigo.Text,[]) then
            begin
              if MessageBox(Application.Handle,PWideChar('Deseja Reiniciar o Parcelamento?'),'Pergunta',mb_YesNo+mb_IconInformation+mb_DefButton1) = mrYes then
                begin
                  DMVenda.jvmPagamento.EmptyTable;
                end;
            end;
        end;
    end;
end;

procedure TVendas_Pagamento.EditValorEntradaKeyPress(Sender: TObject;
  var Key: Char);
Var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas_Pagamento.EditValorPagoExit(Sender: TObject);
begin
  Pagar;
end;

procedure TVendas_Pagamento.EditValorPagoKeyPress(Sender: TObject;
  var Key: Char);
Var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TVendas_Pagamento.FormActivate(Sender: TObject);
begin
  RadioGroupTipoFechamento.SetFocus;
end;

procedure TVendas_Pagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TVendas_Pagamento.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
      BitBtnFinalizar.Click
  else
    if Key = VK_F3 then
      BitBtnCancelar.Click
    else
      if Key = VK_F4 then
        BitBtnSair.Click;
end;

end.
