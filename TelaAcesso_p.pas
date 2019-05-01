unit TelaAcesso_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GIFImg, ExtCtrls, StdCtrls, Buttons, jpeg, FMTBcd, DB, Provider,
  DBClient, SqlExpr, Registry, AppEvnts;

type
  TTelaAcesso = class(TForm)
    edtUsuario: TEdit;
    EdtSenha: TEdit;
    ImagePetShop: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnEntrar: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    ImageRestaurante: TImage;
    ImageServico: TImage;
    qUsuario: TSQLQuery;
    cdsUsuario: TClientDataSet;
    dspUsuario: TDataSetProvider;
    dsUsuario: TDataSource;
    qTecnica: TSQLQuery;
    dspTecnica: TDataSetProvider;
    cdsTecnica: TClientDataSet;
    cdsTecnicaSERIAL: TStringField;
    cdsTecnicaSEGMENTO: TStringField;
    cdsTecnicaCAMPO1: TStringField;
    cdsTecnicaCAMPO2: TStringField;
    cdsTecnicaCAMPO3: TStringField;
    cdsTecnicaCAMPO4: TStringField;
    cdsTecnicaCAMPO5: TStringField;
    cdsTecnicaDATA_EXPIRACAO: TDateField;
    cdsTecnicaCADASTRADO_POR: TStringField;
    cdsTecnicaCADASTRADO_EM: TSQLTimeStampField;
    cdsTecnicaALTERADO_POR: TStringField;
    cdsTecnicaALTERADA_EM: TSQLTimeStampField;
    cdsTecnicaDATA_INTERNET: TDateField;
    dsTecnica: TDataSource;
    Label5: TLabel;
    LabelVersao: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LeRegistroDoWindows;
    Procedure CriaRegistroDoWindows;
    procedure SerialInvalido;
    procedure Verificar_Serial;
    procedure Permissoes;

  end;

var
  TelaAcesso: TTelaAcesso;
  VarLicenca : string;

implementation

uses Principal_p, DMPrincipal_p, Funcoes_p, TelaAlteraSenha_p, TelaCodigoSerial_p;

{$R *.dfm}

Procedure TTelaAcesso.CriaRegistroDoWindows;
var Reg: TRegistry;
begin
  TelaCodigoSerial := TTelaCodigoSerial.Create(Application);
  TelaCodigoSerial.ShowModal;
  FreeandNil(TelaCodigoSerial);
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
  Reg.WriteString('CHAVE',VarLicenca);
  Reg.Free;
end;

procedure TTelaAcesso.LeRegistroDoWindows;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.KeyExists('\Software\Onzenet\MRP\Configuracoes') then
   begin
     try
       Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
       VarLicenca := Reg.ReadString('CHAVE');
       if (Trim(VarLicenca) = '') then
         SerialInvalido
       else
         if (not ValidaSerial(VarLicenca))then
           SerialInvalido;
     except
       CriaRegistroDoWindows;
     end
   end;
end;

procedure TTelaAcesso.SerialInvalido;
begin
  MessageBox(Application.Handle,PWideChar('ATENÇÃO: CODIGO SERIAL INVALIDA.'),'Aviso',mb_OK);
  TelaCodigoSerial := TTelaCodigoSerial.Create(Application);
  TelaCodigoSerial.ShowModal;
  FreeandNil(TelaCodigoSerial);
end;

procedure TTelaAcesso.Verificar_Serial;
 var
  NomeVol, SisArq: String;
  NumSere,
  Flags,
  TamMax: DWord;
  CodReg, VarLicenca : String;
begin
  //Pega Informações do HD.......................................
  SetLength(NomeVol,255);
  SetLength(SisArq,255);
  GetVolumeInformation('c:\', PChar(NomeVol), 255, @NumSere, TamMax, Flags, PChar(SisArq), 255);
  //.............................................................
  CodReg := (Copy(IntToStr(NumSere),1,7));

  if VarLicenca = '' then
    begin
      TelaCodigoSerial := TTelaCodigoSerial.Create(Application);
      TelaCodigoSerial.ShowModal;
      FreeandNil(TelaCodigoSerial);
    end
  else
    begin

      VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,1,7);
      VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
      VarLicenca := IntToStr(HexToInt( VarLicenca ));
      if VarLicenca = CodReg then
        begin
          VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,8,7);
          VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
          VarLicenca := IntToStr(HexToInt( VarLicenca ));

          if VarLicenca = Copy(CodReg,3,5) then
            begin
              VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,15,7);
              VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
              VarLicenca := IntToStr(HexToInt( VarLicenca ));

              if VarLicenca = Copy(CodReg,5,3) then
                begin
                  VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,22,7);
                  VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
                  VarLicenca := IntToStr(HexToInt( VarLicenca ));

                  if VarLicenca = Copy(CodReg,7,1) then
                    begin
                      VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,29,7);
                      VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
                      VarLicenca := IntToStr(HexToInt( VarLicenca ));

                      if VarLicenca = Copy(CodReg,7,1) then
                        begin
                          VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,36,7);
                          VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
                          VarLicenca := IntToStr(HexToInt( VarLicenca ));

                          if VarLicenca = Copy(CodReg,4,4) then
                            begin
                              VarLicenca := Copy(DMPrincipal.cdsEmpresa.FieldByName('CHAVE').AsString,43,7);
                              VarLicenca := VarLicenca[2]+VarLicenca[3]+VarLicenca[4]+VarLicenca[6]+ VarLicenca[5]+VarLicenca[1]+VarLicenca[7];
                              VarLicenca := IntToStr(HexToInt( VarLicenca ));

                              if VarLicenca = Copy(CodReg,2,6) then
                              else
                                SerialInvalido;
                            end
                          else
                            SerialInvalido;
                        end
                      else
                        SerialInvalido;
                    end
                  else
                    SerialInvalido;
                end
              else
                SerialInvalido;
            end
          else
            SerialInvalido;
        end
      else
        SerialInvalido;
    end;
end;

procedure TTelaAcesso.Permissoes;
var i,x : Integer;
begin
  x := 1;
  for i := 0 to Length(cdsUsuario.FieldByName('ACESSO').AsString) -1 do
    begin
      VarMeusAcessos[i] := Copy(cdsUsuario.FieldByName('ACESSO').AsString,x,3);
      x := x + 3;
    end;

  {$REGION ' Permissões de Vendas'}
  if VarMeusAcessos[0] <> '001' then
    Principal.BitBtnPDV.Visible := False;

  if VarMeusAcessos[1] <> '001' then
    Principal.BitBtnPedidos.Visible := False;

  DMPrincipal.cdsParametros.Open;
  if StrToBool(DMPrincipal.cdsParametrosCAMPO5.AsString) = True then
    begin
      if VarMeusAcessos[2] <> '001' then
        Principal.BitBtnNFE.Visible := False;
    end
  else
    Principal.BitBtnNFE.Visible := False;


  if VarMeusAcessos[3] <> '001' then
    Principal.BitBtnBCaixa.Visible := False;

  if VarMeusAcessos[4] <> '001' then
    Principal.BitBtnMovimentacao.Visible := False;

  if VarMeusAcessos[5] <> '001' then
    Principal.BitBtnConfigVenda.Visible := False;

  if VarMeusAcessos[181] <> '001' then
    Principal.BitBtnFormaPagto.Visible := False;

  {$ENDREGION}

  {$REGION ' Permissões do Salão'}
  if StrToBoolDef(cdsTecnicaCAMPO1.AsString,False) = True then
    begin
      if VarMeusAcessos[5] <> '001' then
        Principal.BitBtnEspecialistas.Visible := False;

      if VarMeusAcessos[10] <> '001' then
        Principal.BitBtnAgendaBanhoTosa.Visible := False;

      if VarMeusAcessos[29] <> '001' then
        Principal.BitBtnProcedimentos2.Visible := False;//Consulta Vaterinário, Esteticitas, Médico
    end
  else
    Principal.cpBanhoeTosa.Visible := False;
  {$ENDREGION}

  {$REGION ' Permissões do Serviço'}
  if StrToBoolDef(cdsTecnicaCAMPO3.AsString,False) = True then
    begin
      if VarMeusAcessos[12] <> '001' then
        Principal.BitBtnOrdemServico.Visible := False;
    end
  else
    Principal.cpServicos.Visible := False;
  {$ENDREGION}

  {$REGION ' Permissoes Clinica'}
  if StrToBoolDef(cdsTecnicaCAMPO2.AsString,False) = True then
    begin
      if VarMeusAcessos[17] <> '001' then
        Principal.BitBtnAgendaClinica.Visible := False;//Agenda Clinica

      if VarMeusAcessos[19] <> '001' then
        Principal.BitBtnveterinarios.Visible := False;//Profissionais (Veterinários, Esteticistas, Médicos)

      if VarMeusAcessos[24] <> '001' then
        Principal.BitBtnConsulta.Visible := False;//Consulta Vaterinário, Esteticitas, Médico

      if VarMeusAcessos[29] <> '001' then
        Principal.BitBtnProcedimentos.Visible := False;//Consulta Vaterinário, Esteticitas, Médico
    end
  else
    Principal.cpClinica.Visible := False;
  {$ENDREGION}

  {$REGION ' Permissoes Cadastros Gerais'}
  if VarMeusAcessos[34] <> '001' then
    Principal.BitBtnEmpresa.Visible := False;//Empresa

  if VarMeusAcessos[39] <> '001' then
    Principal.BitBtnFornecedores.Visible := False;//Fornecedores

  if VarMeusAcessos[44] <> '001' then
    Principal.BitBtnGrupo.Visible := False;//Grupo

  if VarMeusAcessos[49] <> '001' then
    Principal.BitBtnSubGrupo.Visible := False;//SubGrupo

  if VarMeusAcessos[195] <> '001' then
    Principal.BitBtnLinha.Visible := False;//Linha de Produtos

  if VarMeusAcessos[54] <> '001' then
    Principal.BitBtnProdutos.Visible := False;//Produtos

  if VarMeusAcessos[59] <> '001' then
    Principal.BitBtnVendedores.Visible := False;//Vendedores

  if VarMeusAcessos[64] <> '001' then
    Principal.BitBtnClientes.Visible := False;//Clientes

  if VarMeusAcessos[69] <> '001' then
    Principal.BitBtnCargosFuncoes.Visible := False;//Cargos e Funções

  if VarMeusAcessos[74] <> '001' then
    Principal.BitBtnColaboradores.Visible := False;//Colaboradores

  if VarMeusAcessos[79] <> '001' then
    Principal.BitBtnTransportadores.Visible := False;//Transportadores

  if VarMeusAcessos[84] <> '001' then
    Principal.BitBtnUsuarios.Visible := False;//Usuários

  if VarMeusAcessos[150] <> '001' then
    Principal.BitBtnOportunidades.Visible := False;//Oportunidade de Negócios

  if VarMeusAcessos[151] <> '001' then
    Principal.BitBtnPrazos.Visible := False;//Prazos e Garantias

  if VarMeusAcessos[156] <> '001' then
    Principal.BitBtnSegmentoTrabalho.Visible := False;//Segmento de Trabalho

  if VarMeusAcessos[176] <> '001' then
    Principal.BitBtnRejeicao.Visible := False;//Código de Rejeição.

  {$ENDREGION}

  {$REGION  ' Permissões Financeiro/Contábil'}
  if VarMeusAcessos[90] <> '001' then
    Principal.BitBtnPlanoContas.Visible := False;//Plano de Contas

  if VarMeusAcessos[95] <> '001' then
    Principal.BitBtnDespesaConta.Visible := False;//Despesa em Conta

  if VarMeusAcessos[100] <> '001' then
    Principal.BitBtnContasPagar.Visible := False;//Contas a Pagar

  if VarMeusAcessos[106] <> '001' then
    Principal.BitBtnContasReceber.Visible := False;//Contas a Receber

  if VarMeusAcessos[112] <> '001' then
    Principal.BitBtnLivroCaixa.Visible := False;//Livro Caixa

  if VarMeusAcessos[115] <> '001' then
    Principal.BitBtnComissoes.Visible := False;//Comissões

  if VarMeusAcessos[120] <> '001' then
    Principal.BitBtnNaturezaOperacao.Visible := False;//Natureza Operação

  if VarMeusAcessos[125] <> '001' then
    Principal.BitBtnClassFiscal.Visible := False;//Classificação Fiscal

  if VarMeusAcessos[130] <> '001' then
    Principal.BitBtnSitTributaria.Visible := False;//Situação Tributária

  if VarMeusAcessos[135] <> '001' then
    Principal.BitBtnCentroCusto.Visible := False;//Centro Custo

  if VarMeusAcessos[190] <> '001' then
    Principal.BitBtnICMS.Visible := False;//Centro Custo

  if VarMeusAcessos[186] <> '001' then
    Principal.BitBtnconfigContabil.Visible := False;//Configuração Contábil
  {$ENDREGION}

  {$REGION ' Permissões Cadastros Específicos'}
  if StrToBoolDef(cdsTecnicaCAMPO4.AsString,False) = True then
    begin
      if VarMeusAcessos[140] <> '001' then
        Principal.BitBtnMascote.Visible := False;//Mascote

      if VarMeusAcessos[145] <> '001' then
        Principal.BitBtnRacas.Visible := False;//Raças
    end
  else
    Principal.cpEspecificos.Visible := False;

  {$ENDREGION}

  {$REGION 'Suprimentos'}
  if VarMeusAcessos[161] <> '001' then
    Principal.BitBtnOC.Visible := False;//Ordem de Compras

  if VarMeusAcessos[166] <> '001' then
    Principal.BitBtnENF.Visible := False;//Entrada de NFe (Fornecedor)

  if VarMeusAcessos[171] <> '001' then
    Principal.BitBtnOC_MSG.Visible := False;//Mensagens da Ordem de Compra

  {$ENDREGION}

end;


procedure TTelaAcesso.BitBtnEntrarClick(Sender: TObject);
var VarSenha : String;
begin
  cdsUsuario.Close;
  cdsUsuario.FetchParams;
  cdsUsuario.Params.ParamByName('USUARIO').AsString := edtUsuario.Text;
  cdsUsuario.Open;

  if  cdsUsuario.IsEmpty then
    begin
      Application.MessageBox('Usuário ou Senha Inválidos.', 'Aviso.',MB_OK );
      edtUsuario.SetFocus;
    end
  else
    if Trim(cdsUsuario.FieldByName('SENHA').AsString) = '' then
      begin
          TelaAlteraSenha := TTelaAlteraSenha.Create(Application);
          TelaAlteraSenha.edtUsuario.Text     := edtUsuario.Text;
          TelaAlteraSenha.edtUsuario.ReadOnly := True;
          TelaAlteraSenha.edtUsuario.TabStop  := False;
          TelaAlteraSenha.edtUsuario.Color    := clBtnFace;
          TelaAlteraSenha.EdtSenha.ReadOnly   := True;
          TelaAlteraSenha.EdtSenha.TabStop    := False;
          TelaAlteraSenha.EdtSenha.Color      := clBtnFace;
          TelaAlteraSenha.ShowModal;
          FreeAndNil(TelaAlteraSenha);
          Application.Terminate;
      end
    else
      begin
        VarSenha := Criptografa(Trim(EdtSenha.Text), 136);
        if cdsUsuario.FieldByName('SENHA').AsString <> VarSenha then
          begin
            Application.MessageBox('Usuário ou Senha Inválidos.', 'Aviso.',MB_OK );
            edtUsuario.SetFocus;
          end
        else
          begin
            VarNomeUsuario := cdsUsuario.FieldByName('NOME').AsString;
            if (cdsUsuario.FieldByName('CDUSUARIO').AsInteger <> 0) then
              Permissoes
            else
              Principal.cpConfiguracoes.Visible := True;

            ModalResult := mrOk;
          end;
      end;
end;

procedure TTelaAcesso.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TTelaAcesso.FormCreate(Sender: TObject);
begin
  cdsTecnica.Open;
  DMPrincipal.cdsEmpresa.Open;
  VarCodigoUsuario := 1;
  LeRegistroDoWindows;
  LabelVersao.Caption := VersaoExe;

//  DMPrincipal.SQLParametros.Open;
//
//  if (DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'COMERCIAL') or
//     (DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'COMERCIO')  then
//    begin
//      wCaptionFormularios   := 'Software de Gerenciamento Comercial';
//      Label1.Caption        := 'Controle de Acesso';
//      TelaAcesso.Caption    := wCaptionFormularios;
//      ImageServico.Visible  := True;
//    end
//  else
//    if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'RESTAURANTE' then
//      begin
//        wCaptionFormularios   := 'Software de Gerenciamento de Restaurante e Lancheria';
//        Label1.Caption        := 'Controle de Acesso';
//        TelaAcesso.Caption     := wCaptionFormularios;
//      end
//    else
//      if DMPrincipal.SQLParametros.FieldByName('SEGMENTO').AsString = 'PETSHOP' then
//        begin
//          wCaptionFormularios   := 'Software de Gerenciamento de PetShop';
//          Label1.Caption        := 'Controle de Acesso';
//          TelaAcesso.Caption     := wCaptionFormularios;
//        end;
end;

procedure TTelaAcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

procedure TTelaAcesso.FormShow(Sender: TObject);
begin
  SetWindowLong(TelaAcesso.Handle, GWL_ExStyle, GetWindowLong(TelaAcesso.Handle, GWL_ExStyle) or
  WS_EX_AppWindow);
end;

end.
