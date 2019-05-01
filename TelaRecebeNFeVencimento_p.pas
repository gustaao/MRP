unit TelaRecebeNFeVencimento_p;

interface
{$IF CompilerVersion >= 21.0}
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$IFEND}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvEnterTab, JvComponentBase;

type
  TTelaPedidoComprasConfirmaVencimento = class(TForm)
    JvEnterAsTab1: TJvEnterAsTab;
    Label1: TLabel;
    GroupBoxOK: TGroupBox;
    OKBtn: TButton;
    CancelBtn: TButton;
    Shape1: TShape;
    GroupBoxImpostos: TGroupBox;
    LabelImpostoDescr1: TLabel;
    LabelIMPOSTOV1: TLabel;
    LabelImpostoDescr2: TLabel;
    LabelIMPOSTOV2: TLabel;
    LabelImpostoDescr3: TLabel;
    LabelIMPOSTOV3: TLabel;
    LabelImpostoDescr4: TLabel;
    LabelIMPOSTOV4: TLabel;
    LabelImpostoDescr5: TLabel;
    LabelIMPOSTOV5: TLabel;
    JvDateEditPagaISSQN: TJvDateEdit;
    MaskEditPagaVissqn: TMaskEdit;
    JvDateEditPagaRETPis: TJvDateEdit;
    MaskEditPagaVretPis: TMaskEdit;
    JvDateEditPagaRETcofins: TJvDateEdit;
    MaskEditPagaVretCofins: TMaskEdit;
    JvDateEditPagaRETcsll: TJvDateEdit;
    MaskEditPagaVretCsll: TMaskEdit;
    JvDateEditPagairrf: TJvDateEdit;
    MaskEditPagaVirrf: TMaskEdit;
    LabelImpostoDescr6: TLabel;
    LabelIMPOSTOV6: TLabel;
    JvDateEditPagaRetPrev: TJvDateEdit;
    MaskEditPagaVretprev: TMaskEdit;
    GroupBoxPrimeiro: TGroupBox;
    Labelp1: TLabel;
    Labelv1: TLabel;
    Labelp2: TLabel;
    Labelv2: TLabel;
    Labelp3: TLabel;
    Labelv3: TLabel;
    Labelp4: TLabel;
    Labelv4: TLabel;
    Labelp5: TLabel;
    Labelv5: TLabel;
    Labelp6: TLabel;
    Labelv6: TLabel;
    LabelP7: TLabel;
    LabelV7: TLabel;
    LabelP8: TLabel;
    LabelV8: TLabel;
    LabelP9: TLabel;
    LabelV9: TLabel;
    LabelP10: TLabel;
    LabelV10: TLabel;
    LabelP11: TLabel;
    LabelV11: TLabel;
    LabelP12: TLabel;
    LabelV12: TLabel;
    LabelP13: TLabel;
    LabelV13: TLabel;
    LabelP14: TLabel;
    LabelV14: TLabel;
    LabelP15: TLabel;
    LabelV15: TLabel;
    Label19: TLabel;
    MaskEditDT1: TJvDateEdit;
    MaskEditVL1: TMaskEdit;
    MaskEditDT2: TJvDateEdit;
    MaskEditVL2: TMaskEdit;
    MaskeditDT3: TJvDateEdit;
    MaskEditVL3: TMaskEdit;
    MaskeditDT4: TJvDateEdit;
    MaskEditVL4: TMaskEdit;
    MaskeditDT5: TJvDateEdit;
    MaskEditVL5: TMaskEdit;
    MaskeditDT6: TJvDateEdit;
    MaskEditVL6: TMaskEdit;
    MaskeditDT7: TJvDateEdit;
    MaskEditVL7: TMaskEdit;
    MaskeditDT8: TJvDateEdit;
    MaskEditVL8: TMaskEdit;
    MaskeditDT9: TJvDateEdit;
    MaskEditVL9: TMaskEdit;
    MaskeditDT10: TJvDateEdit;
    MaskEditVL10: TMaskEdit;
    MaskeditDT11: TJvDateEdit;
    MaskEditVL11: TMaskEdit;
    MaskeditDT12: TJvDateEdit;
    MaskEditVL12: TMaskEdit;
    MaskeditDT13: TJvDateEdit;
    MaskEditVL13: TMaskEdit;
    MaskeditDT14: TJvDateEdit;
    MaskEditVL14: TMaskEdit;
    MaskeditDT15: TJvDateEdit;
    MaskEditVL15: TMaskEdit;
    ComboBoxParcelas: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    MaskEditVPreISSQN: TMaskEdit;
    LabelVpreissqn: TLabel;
    Label23: TLabel;
    MaskEditTOTAL_VNF: TMaskEdit;
    GroupBox1: TGroupBox;
    Label73: TLabel;
    MaskEditTotal_VSEG: TMaskEdit;
    Label2: TLabel;
    MaskeditDEMI: TJvDateEdit;
    Label74: TLabel;
    MaskEditTotal_VDESC: TMaskEdit;
    Label24: TLabel;
    MaskeditEnquadramento_imposto: TMaskEdit;
    procedure MaskEditVL1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVL2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVL3KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVL4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVL5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditVL6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxParcelasExit(Sender: TObject);
    Procedure PrcVerificaInconsistencias;
    procedure GroupBoxPrimeiroExit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure GroupBoxImpostosExit(Sender: TObject);
    procedure MaskEditPagaVissqnKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPagaVretPisKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPagaVretCofinsKeyPress(Sender: TObject;var Key: Char);
    procedure MaskEditPagaVretCsllKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPagaVirrfKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPagaVretprevKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditPagaVissqnExit(Sender: TObject);
    procedure MaskEditPagaVretPisExit(Sender: TObject);
    procedure MaskEditPagaVretCofinsExit(Sender: TObject);
    procedure MaskEditPagaVretCsllExit(Sender: TObject);
    procedure MaskEditPagaVirrfExit(Sender: TObject);
    procedure MaskEditPagaVretprevExit(Sender: TObject);
    procedure JvDateEditPagaISSQNExit(Sender: TObject);
    procedure JvDateEditPagaRETPisExit(Sender: TObject);
    procedure JvDateEditPagaRETcofinsExit(Sender: TObject);
    procedure JvDateEditPagaRETcsllExit(Sender: TObject);
    procedure JvDateEditPagairrfExit(Sender: TObject);
    procedure JvDateEditPagaRetPrevExit(Sender: TObject);
    procedure MaskEditDT1Exit(Sender: TObject);
    procedure MaskEditVL1Exit(Sender: TObject);
    procedure MaskEditVL2Exit(Sender: TObject);
    procedure MaskEditVL3Exit(Sender: TObject);
    procedure MaskEditVL4Exit(Sender: TObject);
    procedure MaskEditVL5Exit(Sender: TObject);
    procedure MaskEditVL6Exit(Sender: TObject);
    procedure MaskEditVL7Exit(Sender: TObject);
    procedure MaskEditVL8Exit(Sender: TObject);
    procedure MaskEditVL9Exit(Sender: TObject);
    procedure MaskEditVL10Exit(Sender: TObject);
    procedure MaskEditVL11Exit(Sender: TObject);
    procedure MaskEditVL12Exit(Sender: TObject);
    procedure MaskEditVL13Exit(Sender: TObject);
    procedure MaskEditVL14Exit(Sender: TObject);
    procedure MaskEditVL15Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    Function FunPodeVencimento(VarMaskeditCorrente:TJvDateedit):String;
    procedure MaskEditDT2Exit(Sender: TObject);
    procedure MaskeditDT3Exit(Sender: TObject);
    procedure MaskeditDT4Exit(Sender: TObject);
    procedure MaskeditDT5Exit(Sender: TObject);
    procedure MaskeditDT6Exit(Sender: TObject);
  private
    { Private declarations }
    VarMaskeditValorcorrente: array[1..15] of Tmaskedit;
    VarMaskeditDATAcorrente : array[1..15] of TjvDateEdit;
    VarLabelVcorrente       : array[1..15] of tlabel;
    VarLabelDcorrente       : array[1..15] of tlabel;

  public
    { Public declarations }
    VarDTVENCTOPedidof1,
    VarDTVENCTOPedidof2,
    VarDTVENCTOPedidof3,
    VarDTVENCTOPedidof4,
    VarDTVENCTOPedidof5,
    VarDTVENCTOPedidof6  : String;
  end;

var
  TelaPedidoComprasConfirmaVencimento: TTelaPedidoComprasConfirmaVencimento;

implementation

uses DMIB_p, TelaRecebeNFE_p, Funcoes_p, FunData_p;

{$R *.dfm}

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL1KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL2KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL3KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL4KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL5KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL6KeyPress(Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.ComboBoxParcelasExit(Sender: TObject);
var i : Integer;
begin
  if ComboBoxParcelas.Text = '' then
    ComboBoxParcelas.Text:='1';

  if StrIsInteger(ComboBoxParcelas.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      ComboBoxParcelas.SetFocus;
      Abort;
    end;
  try
    VarMaskeditDATAcorrente[1]   := MaskeditDT1;
    VarMaskeditDATAcorrente[2]   := MaskeditDT2;
    VarMaskeditDATAcorrente[3]   := MaskeditDT3;
    VarMaskeditDATAcorrente[4]   := MaskeditDT4;
    VarMaskeditDATAcorrente[5]   := MaskeditDT5;
    VarMaskeditDATAcorrente[6]   := MaskeditDT6;
    VarMaskeditDATAcorrente[7]   := MaskeditDT7;
    VarMaskeditDATAcorrente[8]   := MaskeditDT8;
    VarMaskeditDATAcorrente[9]   := MaskeditDT9;
    VarMaskeditDATAcorrente[10]  := MaskeditDT10;
    VarMaskeditDATAcorrente[11]  := MaskeditDT11;
    VarMaskeditDATAcorrente[12]  := MaskeditDT12;
    VarMaskeditDATAcorrente[13]  := MaskeditDT13;
    VarMaskeditDATAcorrente[14]  := MaskeditDT14;
    VarMaskeditDATAcorrente[15]  := MaskeditDT15;

    VarMaskeditValorcorrente[1]  := MaskeditVl1;
    VarMaskeditValorcorrente[2]  := MaskeditVl2;
    VarMaskeditValorcorrente[3]  := MaskeditVl3;
    VarMaskeditValorcorrente[4]  := MaskeditVl4;
    VarMaskeditValorcorrente[5]  := MaskeditVl5;
    VarMaskeditValorcorrente[6]  := MaskeditVl6;
    VarMaskeditValorcorrente[7]  := MaskeditVl7;
    VarMaskeditValorcorrente[8]  := MaskeditVl8;
    VarMaskeditValorcorrente[9]  := MaskeditVl9;
    VarMaskeditValorcorrente[10] := MaskeditVl10;
    VarMaskeditValorcorrente[11] := MaskeditVl11;
    VarMaskeditValorcorrente[12] := MaskeditVl12;
    VarMaskeditValorcorrente[13] := MaskeditVl13;
    VarMaskeditValorcorrente[14] := MaskeditVl14;
    VarMaskeditValorcorrente[15] := MaskeditVl15;

    VarLabelDcorrente[1]         := LabelP1;
    VarLabelDcorrente[2]         := LabelP2;
    VarLabelDcorrente[3]         := LabelP3;
    VarLabelDcorrente[4]         := LabelP4;
    VarLabelDcorrente[5]         := LabelP5;
    VarLabelDcorrente[6]         := LabelP6;
    VarLabelDcorrente[7]         := LabelP7;
    VarLabelDcorrente[8]         := LabelP8;
    VarLabelDcorrente[9]         := LabelP9;
    VarLabelDcorrente[10]        := LabelP10;
    VarLabelDcorrente[11]        := LabelP11;
    VarLabelDcorrente[12]        := LabelP12;
    VarLabelDcorrente[13]        := LabelP13;
    VarLabelDcorrente[14]        := LabelP14;
    VarLabelDcorrente[15]        := LabelP15;

    VarLabelVcorrente[1]         := LabelV1;
    VarLabelVcorrente[2]         := LabelV2;
    VarLabelVcorrente[3]         := LabelV3;
    VarLabelVcorrente[4]         := LabelV4;
    VarLabelVcorrente[5]         := LabelV5;
    VarLabelVcorrente[6]         := LabelV6;
    VarLabelVcorrente[7]         := LabelV7;
    VarLabelVcorrente[8]         := LabelV8;
    VarLabelVcorrente[9]         := LabelV9;
    VarLabelVcorrente[10]        := LabelV10;
    VarLabelVcorrente[11]        := LabelV11;
    VarLabelVcorrente[12]        := LabelV12;
    VarLabelVcorrente[13]        := LabelV13;
    VarLabelVcorrente[14]        := LabelV14;
    VarLabelVcorrente[15]        := LabelV15;
    for i := 1 to 15 do
      begin
        VarMaskeditValorcorrente[I].Enabled := True;
        VarMaskeditDATAcorrente[I].Enabled  := True;
        VarLabelDcorrente[I].Enabled        := True;
        VarLabelVcorrente[I].Enabled        := True;
      end;

    for i := StrToIntDef(ComboBoxParcelas.Text,0)+1 to 15 do
      begin
        VarMaskeditValorcorrente[I].Enabled := False;
        VarMaskeditDATAcorrente[I].Enabled  := False;
        VarMaskeditValorcorrente[I].Text    := '0,00';
        VarMaskeditDATAcorrente[I].Text     := '  /  /    ';
        VarLabelDcorrente[I].Enabled        := False;
        VarLabelVcorrente[I].Enabled        := False;
      end;
  except
    OkBtn.Enabled:=False;
  end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.FormActivate(Sender: TObject);
begin
  ComboBoxParcelas.SetFocus;
end;

function TTelaPedidoComprasConfirmaVencimento.FunPodeVencimento(VarMaskeditCorrente: TJvDateedit): String;
begin
  Result := '';

  if VarMaskeditCorrente.Text <> '  /  /    ' then
    if StrToDate(VarMaskeditCorrente.Text) < DMIB.IBQueryDT.FieldByName('current_date').AsDateTime then
      begin
        Result                   := 'DATA INVÁLIDA.';
        VarMaskeditCorrente.Text := DateToStr(DMIB.IBQueryDT.FieldByName('current_date').AsDateTime);
      end;

  if VarMaskeditCorrente.Text <> '  /  /    ' then
    begin
      if VarMaskeditCorrente = MaskeditDT1 then
         if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof1)))) then
            Result:= 'MÊS DE VENCIMENTO 1 DIFERENTE DO PEDIDO!'#13;

      if VarMaskeditCorrente = MaskeditDT2 then
        if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof2)))) then
          Result:= 'MÊS DE VENCIMENTO 2 DIFERENTE DO PEDIDO!'#13;

      if VarMaskeditCorrente = MaskeditDT3 then
        if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof3)))) then
          Result:= 'MÊS DE VENCIMENTO 3 DIFERENTE DO PEDIDO!'#13;

      if VarMaskeditCorrente = MaskeditDT4 then
        if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof4)))) then
          Result:= 'MÊS DE VENCIMENTO 4 DIFERENTE DO PEDIDO!'#13;

      if VarMaskeditCorrente = MaskeditDT5 then
        if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof5)))) then
          Result:= 'MÊS DE VENCIMENTO 5 DIFERENTE DO PEDIDO!'#13;

      if VarMaskeditCorrente = MaskeditDT6 then
        if MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarMaskeditCorrente.Text)))) < MES(StrToDate(FormatDateTime('DD/MM/YYYY',StrToDate(VarDTVENCTOPedidof6)))) then
          Result:= 'MÊS DE VENCIMENTO 6 DIFERENTE DO PEDIDO!'#13;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.PrcVerificaInconsistencias;
Var i : Integer;
    VarTxtInconsist : String;
    VarSomaGeral : Real;
    VarTotalVnfISSQNVsegVdesc : Real;
begin
  VarTxtInconsist           := '';
  VarSomaGeral              := 0;
  VarTotalVnfISSQNVsegVdesc := 0;

  for i:= 1 to 15 do
    begin
      if ((VarMaskeditValorcorrente[I].Enabled = True) and (StrToFloatDef(VarMaskeditValorcorrente[I].text,0) = 0) Or
         (VarMaskeditDATAcorrente[I].Enabled=True) and (VarMaskeditDatacorrente[I].text = '  /  /    ')) then
        VarTxtInconsist:=VarTxtInconsist+IntToStr(I)+' ';

      VarSomaGeral:=VarSomaGeral+StrToFloatDef(VarMaskeditValorCorrente[I].Text,0);
    end;

  if VarTxtInconsist <> '' then
    VarTxtInconsist:='NO(s) DESDOBRAMENTO(s): '+VarTxtInconsist;

  {Checkbox para NF com desconto no total da NF}
  if not(TelaRecebeNFE.CheckBoxDESCONTO_TOTAL_NF.checked) then
    VarTotalVnfISSQNVsegVdesc := StrToFloatDef(MaskEditTOTAL_VNF.Text,0)-(StrToFloatDef(MaskEditVPreISSQN.text,0))
  else
    VarTotalVnfISSQNVsegVdesc := StrToFloatDef(MaskEditTOTAL_VNF.Text,0)-(StrToFloatDef(MaskEditVPreISSQN.text,0)+StrToFloatDef(MaskEditTotal_VDESC.text,0));

  If FormatFloat('#######0.00',VarSomaGeral)  <> FormatFloat('#######0.00',VarTotalVnfISSQNVsegVdesc) then
    VarTxtInconsist:=VarTxtInconsist+' NO VALOR A PAGAR PARA O FORNECEDOR ('+FormatFloat('#######0.00',VarSomaGeral)+') DEVERÁ SER DESCONTADO: O(s) IMPOSTO(s) RETIDOS E O VALOR DO DESCONTO.  ('+FormatFloat('#######0.00',VarTotalVnfISSQNVsegVdesc)+') ';

 //Inconsistências do mes

  if FunPodeVencimento(MaskeditDT1) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 1 DIFERENTE DO PEDIDO';
  if FunPodeVencimento(MaskeditDT2) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 2 DIFERENTE DO PEDIDO';
  if FunPodeVencimento(MaskeditDT3) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 3 DIFERENTE DO PEDIDO';
  if FunPodeVencimento(MaskeditDT4) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 4 DIFERENTE DO PEDIDO';
  if FunPodeVencimento(MaskeditDT5) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 5 DIFERENTE DO PEDIDO';
  if FunPodeVencimento(MaskeditDT6) <> '' then
      VarTxtInconsist:=VarTxtInconsist+' VENCIMENTO DO MES 6 DIFERENTE DO PEDIDO';

 //Fim das inconsistências do mes

  if VarTxtInconsist <> '' then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: O(s) LANÇAMENTO(s) POSSUI(em) INCONSISTÊNCIA(s) '+VarTxtInconsist+' FAVOR VERIFICAR.'),'Aviso',mb_OK);
      OkBtn.Enabled := False;
    end
  else
    OkBtn.Enabled := True;
end;

procedure TTelaPedidoComprasConfirmaVencimento.GroupBoxPrimeiroExit(
  Sender: TObject);
begin
  PrcVerificaInconsistencias;
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox1Click(Sender: TObject);
var VdataVencImp : Tdate;
begin
  LabelImpostoDescr1.Enabled  := CheckBox1.Checked;
  JvDateEditPagaISSQN.Enabled := CheckBox1.Checked;
  LabelImpostoV1.Enabled      := CheckBox1.Checked;
  MaskeditPagaVISSQN.Enabled  := CheckBox1.Checked;

  if CheckBox1.Checked = false then
    begin
      JvDateEditPagaISSQN.Text := '';
      MaskeditPagaVISSQN.Text  := '0,00';
    end;

  if CheckBox1.Checked = True then
    begin
      VdataVencImp := StrToDate('20/'+Copy(MaskeditDEMI.Text,4,10));
      VdataVencImp := SomaMesTurbo(VdataVencImp,1);

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      JvDateEditPagaISSQN.Date:=VdataVencImp;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox2Click(
  Sender: TObject);
begin
  LabelImpostoDescr2.Enabled   := CheckBox2.Checked;
  JvDateEditPagaRETPis.Enabled := CheckBox2.Checked;
  LabelImpostoV2.Enabled       := CheckBox2.Checked;
  MaskEditPagaVretPis.Enabled  := CheckBox2.Checked;

  if CheckBox2.Checked = false then
    begin
      JvDateEditPagaRETPis.Text := '';
      MaskEditPagaVretPis.Text  := '0,00';
    end;
  // se o cadastro estiver correto essas merdas ja vem preenchidas corretamente.
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox3Click(
  Sender: TObject);
begin
  LabelImpostoDescr3.Enabled      := CheckBox3.Checked;
  JvDateEditPagaRETcofins.Enabled := CheckBox3.Checked;
  LabelImpostoV3.Enabled          := CheckBox3.Checked;
  MaskEditPagaVretCofins.Enabled  := CheckBox3.Checked;

  if CheckBox3.Checked = false then
    begin
      JvDateEditPagaRETcofins.Text := '';
      MaskEditPagaVretCofins.Text  := '0,00';
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox4Click(
  Sender: TObject);
begin
  LabelImpostoDescr4.Enabled    := CheckBox4.Checked;
  JvDateEditPagaRETcsll.Enabled := CheckBox4.Checked;
  LabelImpostoV4.Enabled        := CheckBox4.Checked;
  MaskEditPagaVretCsll.Enabled  := CheckBox4.Checked;

  if CheckBox4.Checked = false then
    begin
      JvDateEditPagaRETcsll.Text := '';
      MaskEditPagaVretCsll.Text  := '0,00';
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox5Click(
  Sender: TObject);
Var VdataVencImp : Tdate;
begin
  LabelImpostoDescr5.Enabled := CheckBox5.Checked;
  JvDateEditPagairrf.Enabled := CheckBox5.Checked;
  LabelImpostoV5.Enabled     := CheckBox5.Checked;
  MaskEditPagaVirrf.Enabled  := CheckBox5.Checked;

  if CheckBox5.Checked = false then
    begin
      JvDateEditPagairrf.Text := '';
      MaskEditPagaVirrf.Text  := '0,00';
    end;

  if CheckBox5.Checked = True then
    begin
      VdataVencImp := StrToDate('20/'+Copy(MaskeditDEMI.Text,4,10));
      VdataVencImp := SomaMesTurbo(VdataVencImp,1);

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      JvDateEditPagairrf.Date:=VdataVencImp;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.CheckBox6Click(
  Sender: TObject);
Var VdataVencImp : Tdate;
begin
  LabelImpostoDescr6.Enabled    := CheckBox6.Checked;
  JvDateEditPagaRetPrev.Enabled := CheckBox6.Checked;
  LabelImpostoV6.Enabled        := CheckBox6.Checked;
  MaskEditPagaVretprev.Enabled  := CheckBox6.Checked;

  if CheckBox6.Checked = false then
    begin
      JvDateEditPagaRetPrev.Text := '';
      MaskEditPagaVretprev.Text  := '0,00';
    end;

  if CheckBox6.Checked = True then
    begin
      VdataVencImp := StrToDate('20/'+Copy(MaskeditDEMI.Text,4,10));
      VdataVencImp := SomaMesTurbo(VdataVencImp,1);

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      if IsWeekEnd(VdataVencImp) = true then
        VdataVencImp := VdataVencImp-1;

      JvDateEditPagaRetPrev.Date := VdataVencImp;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.GroupBoxImpostosExit(
  Sender: TObject);
var TxInconsist : String;
    VarSomaRetidos : Real;
    VarSomaVencimentos : Real;

begin
  TxInconsist        := '';
  VarSomaRetidos     := 0;
  VarSomaVencimentos := 0;

  if (StrToFloatDef(MaskEditPagaVISSQN.Text,0) > 0) and (JvDateEditPagaISSQN.Text = '  /  /    ') then
    TxInconsist := TxInconsist + 'Erro na data da guia ISSQN. '+#13;

  if (StrToFloatDef(MaskEditPagaVretPis.Text,0) > 0) and (JvDateEditPagaRETPis.Text = '  /  /    ') then
    TxInconsist := TxInconsist+'Erro na data da guia PIS. '+#13;

  if (StrToFloatDef(MaskEditPagaVretCOFINS.Text,0) > 0) and (JvDateEditPagaRETCOFINS.Text = '  /  /    ') then
    TxInconsist := TxInconsist+'Erro na data da guia COFINS. '+#13;

  if (StrToFloatDef(MaskEditPagaVretcsll.Text,0) > 0) and (JvDateEditPagaRETcsll.Text = '  /  /    ') then
    TxInconsist := TxInconsist+'Erro na data da guia CSLL. '+#13;

  if (StrToFloatDef(MaskEditPagaVIRRF.Text,0) > 0) and (JvDateEditPagaIRRF.Text = '  /  /    ') then
    TxInconsist := TxInconsist+'Erro na data da guia IRRF. '+#13;

  if (StrToFloatDef(MaskEditPagaVretPrev.Text,0) > 0) and (JvDateEditPagaRETPrev.Text = '  /  /    ') then
    TxInconsist := TxInconsist+'Erro na data da guia da Previdência Social (INSS). '+#13;

  if CheckBox1.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVissqn.Text,0);

  if CheckBox2.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVretPis.Text,0);

  if CheckBox3.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVretCofins.Text,0);

  if CheckBox4.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVretCsll.Text,0);

  if CheckBox5.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVirrf.Text,0);

  if CheckBox6.Checked = True then
    VarSomaRetidos := VarSomaRetidos+StrToFloatDef(MaskEditPagaVretprev.Text,0);

  if FormatFloat('#######0.00',VarSomaRetidos) <> FormatFloat('#######0.00',StrToFloatDef(MaskEditVPreISSQN.Text,0)) then
    TxInconsist := TxInconsist+'ATENÇÃO: A SOMA DOS IMPOSTOS RETIDOS '+FormatFloat('R$ #,###,###0.00',VarSomaRetidos)+' NÃO É IGUAL AO TOTAL INFORMADO: '+FormatFloat('R$ #,###,###0.00',StrToFLoatDef(MaskEditVPreISSQN.Text,0))+#13;

  VarSomaVencimentos := StrToFloatDef(MaskeditVl1.Text,0)  + StrToFloatDef(MaskeditVl2.Text,0) + StrToFloatDef(MaskeditVl3.Text,0)  + StrToFloatDef(MaskeditVl4.Text,0)  + StrToFloatDef(MaskeditVl5.Text,0) +
                        StrToFloatDef(MaskeditVl6.Text,0)  + StrToFloatDef(MaskeditVl7.Text,0) + StrToFloatDef(MaskeditVl8.Text,0)  + StrToFloatDef(MaskeditVl9.Text,0)  + StrToFloatDef(MaskeditVl10.Text,0)+
                        StrToFloatDef(MaskeditVl11.Text,0) + StrToFloatDef(MaskeditVl12.Text,0)+ StrToFloatDef(MaskeditVl13.Text,0) + StrToFloatDef(MaskeditVl14.Text,0) + StrToFloatDef(MaskeditVl15.Text,0);


  if FormatFloat('#######0.00',StrToFloatDef(MaskEditTOTAL_VNF.Text,0) - StrToFloatDef(MaskEditTOTAL_VDESC.Text,0) - StrToFloatDef(MaskEditVPreISSQN.Text,0)) <> FormatFloat('#######0.00',VarSomaVencimentos) then
    TxInconsist := TxInconsist+'ATENÇÃO: O TOTAL DA NOTA SUBTRAINDO OS IMPOSTOS RETIDOS ('+FormatFloat('R$ #,###,###0.00',StrToFloatDef(MaskEditTOTAL_VNF.Text,0) - StrToFloatDef(MaskEditVPreISSQN.Text,0))+' É DIFERENTE DA SOMA DOS VENCIMENTOS A PAGAR: '+FormatFloat('R$ #,###,###0.00',VarSomaVencimentos)+#13;

  if TxInconsist <> '' then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: FOI ENCONTRADO O(s) SEGUINTE(s) ERRO(s): '+#13#13+TxInconsist),'Aviso',mb_OK);
      OkBtn.Enabled := False;
    end
  else
    OkBtn.Enabled := True;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVissqnKeyPress(
  Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretPisKeyPress(
  Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretCofinsKeyPress(
  Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretCsllKeyPress(
  Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
 CharSet:= [#8, #44, #48..#57];
 if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVirrfKeyPress(
  Sender: TObject; var Key: Char);
Var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretprevKeyPress(
  Sender: TObject; var Key: Char);
var CharSet: TSysCharSet;
begin
  CharSet:= [#8, #44, #48..#57];
  if not CharInSet(Key,CharSet) then key := #0;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVissqnExit(
  Sender: TObject);
begin
  if StrIsFloat(MaskeditpagaVissqn.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVissqn.Text := '0,00';
      MaskeditpagaVissqn.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretPisExit(
  Sender: TObject);
begin
  if StrIsFloat(MaskeditpagaVretPis.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVretPis.Text := '0,00';
      MaskeditpagaVretPis.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretCofinsExit(
  Sender: TObject);
begin
  if StrIsFloat(MaskeditpagaVretCofins.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVretCofins.Text := '0,00';
      MaskeditpagaVretCofins.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretCsllExit(
  Sender: TObject);
begin
  if StrIsFloat(MaskeditpagaVretCSLL.Text) = False then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVretCSLL.Text := '0,00';
      MaskeditpagaVretCSLL.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVirrfExit(
  Sender: TObject);
begin
  if StrIsFloat(MaskeditpagaVirrf.Text) = False then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVirrf.Text := '0,00';
      MaskeditpagaVirrf.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditPagaVretprevExit(
  Sender: TObject);
begin
  if MaskeditpagaVretprev.Text = '' then
    MaskeditpagaVretprev.Text := '0,00';

  if StrIsFloat(MaskeditpagaVretprev.Text) = False then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskeditpagaVretprev.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagaISSQNExit(Sender: TObject);
begin
  if JvDateEditPagaISSQN.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagaISSQN.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagaISSQN.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagaRETPisExit(Sender: TObject);
begin
  if JvDateEditPagaRETPis.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagaRETPis.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagaRETPis.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagaRETcofinsExit(Sender: TObject);
begin
  if JvDateEditPagaRETCOFINS.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagaRETCOFINS.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagaRETCOFINS.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagaRETcsllExit(Sender: TObject);
begin
  if JvDateEditPagaRETcsll.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagaRETcsll.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagaRETcsll.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagairrfExit(Sender: TObject);
begin
  if JvDateEditPagairrf.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagairrf.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagairrf.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.JvDateEditPagaRetPrevExit(Sender: TObject);
begin
  if JvDateEditPagaRETprev.Text <> '  /  /    ' then
    if IsWeekEnd(JvDateEditPagaRETprev.Date) = true then
      begin
        Application.MessageBox(PWideChar('ATENÇÃO: NÃO É POSSÍVEL LANÇAR IMPOSTOS COM VENCIMENTO EM FINAIS DE SEMANA. ANTECIPE-O.'),'Aviso',mb_OK);
        JvDateEditPagaRETprev.Setfocus;
      end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditDT1Exit(Sender: TObject);
var VarMsg : String;
begin
  if FunPodeVencimento(MaskeditDT1) <> '' then
    begin
      VarMsg := FunPodeVencimento(MaskeditDT1);
      if Trim(VarMsg) <> '' then
        begin
          Application.MessageBox(PWideChar(VarMsg),'Aviso',mb_OK);
          OkBtn.Enabled := False;
        end;
    end
  else
    begin
      OkBtn.Enabled:=True;
    end;
  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT1.Date < TelaRecebeNFE.MaskEditDT1.Date) and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT1.Date := TelaRecebeNFE.MaskEditDT1.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditDT2Exit(Sender: TObject);
begin
  if FunPodeVencimento(MaskeditDT2) <> '' then
    begin
      Application.MessageBox(PWideChar(FunPodeVencimento(MaskeditDT2)),'Aviso',mb_OK);
      OkBtn.Enabled := False;
    end
  else
    OkBtn.Enabled := True;

  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT2.Date < TelaRecebeNFE.MaskEditDT2.Date) and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT2.Date := TelaRecebeNFE.MaskEditDT2.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskeditDT3Exit(Sender: TObject);
begin
  if FunPodeVencimento(MaskeditDT3) <> '' then
    begin
      Application.MessageBox(PWideChar(FunPodeVencimento(MaskeditDT3)),'Aviso',mb_OK);
      OkBtn.Enabled := False;
    end
  else
    OkBtn.Enabled := True;

  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT3.Date < TelaRecebeNFE.MaskEditDT3.Date) and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT3.Date := TelaRecebeNFE.MaskEditDT3.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskeditDT4Exit(Sender: TObject);
begin
  if FunPodeVencimento(MaskeditDT4) <> '' then
    begin
      Application.MessageBox(PWideChar(FunPodeVencimento(MaskeditDT4)),'Aviso',mb_OK);
      OkBtn.Enabled := False;
    end
  else
    OkBtn.Enabled := True;

  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT4.Date < TelaRecebeNFE.MaskEditDT4.Date)and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT4.Date := TelaRecebeNFE.MaskEditDT4.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskeditDT5Exit(Sender: TObject);
begin
  if FunPodeVencimento(MaskeditDT5) <> '' then
    Begin
      Application.MessageBox(PWideChar(FunPodeVencimento(MaskeditDT5)),'Aviso',mb_OK);
      OkBtn.Enabled:=False;
    End
  Else
    Begin
      OkBtn.Enabled:=True;
    End;

  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT5.Date < TelaRecebeNFE.MaskEditDT5.Date) and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT5.Date := TelaRecebeNFE.MaskEditDT5.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskeditDT6Exit(Sender: TObject);
begin
  if FunPodeVencimento(MaskeditDT6) <> '' then
    Begin
      Application.MessageBox(PWideChar(FunPodeVencimento(MaskeditDT6)),'Aviso',mb_OK);
      OkBtn.Enabled:=False;
    End
  Else
    Begin
      OkBtn.Enabled:=True;
    End;
  if DMIB.IBQueryParametros_Finaceiro.FieldByName('BLOQUEIA_DATA_INFERIOR_PEDIDO').AsString = 'S' then
    begin
      if (MaskEditDT6.Date < TelaRecebeNFE.MaskEditDT6.Date) and (VarDesbloqueiaVencimento = False) then
        begin
          Application.MessageBox(PWideChar('ATENÇÃO: DATA INFERIOR AO VENCIMENTO DO PEDIDO PEDIDO. SERÁ RETORNADO O VENCIMENTO ORIGINAL.'),'Aviso',mb_OK);
          MaskEditDT6.Date := TelaRecebeNFE.MaskEditDT6.Date;
        end;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL1Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL1.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL1.Text:='0,00';
      MaskEditVL1.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL2Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL2.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL2.Text := '0,00';
      MaskEditVL2.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL3Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL3.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL3.Text:='0,00';
      MaskEditVL3.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL4Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL4.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL4.Text := '0,00';
      MaskEditVL4.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL5Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL5.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL5.Text := '0,00';
      MaskEditVL5.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL6Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL6.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL6.Text := '0,00';
      MaskEditVL6.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL7Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL7.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL7.Text := '0,00';
      MaskEditVL7.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL8Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL8.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL8.Text := '0,00';
      MaskEditVL8.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL9Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL9.Text) = False then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL9.Text := '0,00';
      MaskEditVL9.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL10Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL10.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL10.Text := '0,00';
      MaskEditVL10.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL11Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL11.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL11.Text := '0,00';
      MaskEditVL11.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL12Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL12.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL12.Text := '0,00';
      MaskEditVL12.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL13Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL13.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL13.Text := '0,00';
      MaskEditVL13.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL14Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL14.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL14.Text := '0,00';
      MaskEditVL14.SetFocus;
      Abort;
    end;
end;

procedure TTelaPedidoComprasConfirmaVencimento.MaskEditVL15Exit(Sender: TObject);
begin
  if StrIsFloat(MaskEditVL15.Text) = False Then
    begin
      Application.MessageBox(PWideChar('ATENÇÃO: NÚMERO INVÁLIDO, FAVOR VERIFICAR.'),'Aviso',mb_OK);
      MaskEditVL15.Text := '0,00';
      MaskEditVL15.SetFocus;
      Abort;
    end;
end;

end.

