unit DMPrincipal_p;

interface

uses
  SysUtils, Classes, IBDatabase, DB, DBXFirebird, SqlExpr, Windows, Messages, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Mask, Buttons, ExtCtrls,
  FMTBcd, Provider, DBClient,JPEG, Registry, IdBaseComponent, IdComponent, IdUDPBase,IdSocketHandle, WinSvc,
  IdUDPClient, OleServer, OleCtrls, IBCustomDataSet, IBQuery, TlHelp32;


type
  TDMPrincipal = class(TDataModule)
    SQLCon: TSQLConnection;
    qEmpresa: TSQLQuery;
    cdsEmpresa: TClientDataSet;
    dspEmpresa: TDataSetProvider;
    dsEmpresa: TDataSource;
    cdsEmpresaCDEMPRESA: TIntegerField;
    cdsEmpresaRAZAO_SOCIAL: TStringField;
    cdsEmpresaAPELIDO: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCNPJ: TStringField;
    cdsEmpresaIE: TStringField;
    cdsEmpresaLOGO: TBlobField;
    cdsEmpresaSITE: TStringField;
    cdsEmpresaTELEFONE: TStringField;
    cdsEmpresaEMAIL: TStringField;
    cdsEmpresaCDIBGE: TFMTBCDField;
    cdsEmpresaEMAIL_NFE: TStringField;
    qIBGE: TSQLQuery;
    cdsIBGE: TClientDataSet;
    dspIBGE: TDataSetProvider;
    dsIBGE: TDataSource;
    cdsIBGECDIBGE: TFMTBCDField;
    cdsIBGENOMEIBGE: TStringField;
    cdsIBGEESTADOIBGE: TStringField;
    cdsIBGECDESTIBGE: TSmallintField;
    cdsIBGECOD_PAIS: TStringField;
    cdsIBGEPAIS: TStringField;
    cdsEmpresaCHAVE: TStringField;
    qData: TSQLQuery;
    cdsData: TClientDataSet;
    dspData: TDataSetProvider;
    DsData: TDataSource;
    qPF: TSQLQuery;
    cdsPF: TClientDataSet;
    dspPF: TDataSetProvider;
    dsPF: TDataSource;
    cdsEmpresaCDSEGMENTO: TIntegerField;
    qEmpresaCDEMPRESA: TIntegerField;
    qEmpresaRAZAO_SOCIAL: TStringField;
    qEmpresaAPELIDO: TStringField;
    qEmpresaENDERECO: TStringField;
    qEmpresaNUMERO: TStringField;
    qEmpresaBAIRRO: TStringField;
    qEmpresaCIDADE: TStringField;
    qEmpresaCEP: TStringField;
    qEmpresaUF: TStringField;
    qEmpresaCNPJ: TStringField;
    qEmpresaIE: TStringField;
    qEmpresaLOGO: TBlobField;
    qEmpresaSITE: TStringField;
    qEmpresaTELEFONE: TStringField;
    qEmpresaEMAIL: TStringField;
    qEmpresaCDIBGE: TFMTBCDField;
    qEmpresaEMAIL_NFE: TStringField;
    qEmpresaCHAVE: TStringField;
    qEmpresaCDSEGMENTO: TIntegerField;
    qEmpresaDESCRICAO: TStringField;
    cdsEmpresaDESCRICAO: TStringField;
    qSeg: TSQLQuery;
    cdsSeg: TClientDataSet;
    dspSeg: TDataSetProvider;
    dsSeg: TDataSource;
    cdsSegCDSEGMENTO: TIntegerField;
    cdsSegDESCRICAO: TStringField;
    qEmpresaPATH_NFE: TStringField;
    cdsEmpresaPATH_NFE: TStringField;
    qPais: TSQLQuery;
    cdsPais: TClientDataSet;
    dspPais: TDataSetProvider;
    dsPais: TDataSource;
    cdsPaisCOD_PAIS: TStringField;
    cdsPaisPAIS: TStringField;
    qOportunidades: TSQLQuery;
    cdsOportunidades: TClientDataSet;
    dspOportunidades: TDataSetProvider;
    dsOpotunidades: TDataSource;
    cdsOportunidadesNOME: TStringField;
    cdsOportunidadesTIPO: TStringField;
    cdsOportunidadesDATA: TDateField;
    cdsClone: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    BlobField1: TBlobField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField2: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    qEmpresaCOD_PAIS: TStringField;
    cdsEmpresaCOD_PAIS: TStringField;
    qEmpresaPAIS: TStringField;
    cdsEmpresaPAIS: TStringField;
    qEmpresaCRT: TIntegerField;
    cdsEmpresaCRT: TIntegerField;
    qPNFe: TSQLQuery;
    cdsPNFe: TClientDataSet;
    dspPNFe: TDataSetProvider;
    dsPNFe: TDataSource;
    cdsPNFeNUMERO: TIntegerField;
    cdsPNFeNFE: TIntegerField;
    cdsPNFeCASAS_DECIMAIS_VALOR_UNITARIO: TIntegerField;
    cdsPNFeNUMERO_COPIAS: TIntegerField;
    cdsPNFeIMPRIME_FATURA: TIntegerField;
    qClassFiscal: TSQLQuery;
    cdsClassFiscal: TClientDataSet;
    dspClassFiscal: TDataSetProvider;
    dsClassFiscal: TDataSource;
    cdsClassFiscalCDCLASSIFICACAO_FISCAL: TIntegerField;
    cdsClassFiscalNRCLASS: TLargeintField;
    cdsClassFiscalPCAIPI: TFMTBCDField;
    cdsClassFiscalDESCRICAO_CNM: TStringField;
    cdsClassFiscalDESATIVA: TStringField;
    cdsClassFiscalNRCLASS2: TStringField;
    qEmpresaCDESTADO: TIntegerField;
    cdsEmpresaCDESTADO: TIntegerField;
    qEI: TSQLQuery;
    cdsEI: TClientDataSet;
    cdsEICDENQUADRAMENTO_IMPOSTO: TIntegerField;
    cdsEIENQUADRAMENTO: TStringField;
    dspEI: TDataSetProvider;
    dsEI: TDataSource;
    qErro: TSQLQuery;
    cdsErro: TClientDataSet;
    dspErro: TDataSetProvider;
    dsErro: TDataSource;
    cdsErroDATA: TDateField;
    cdsErroFORM: TStringField;
    cdsErroCONTROLE: TStringField;
    cdsErroMENSAGEM: TStringField;
    cdsErroENVIADO: TStringField;
    cdsErroUSUARIO: TStringField;
    cdsErroMAQUINA: TStringField;
    cdsErroCDERRO: TIntegerField;
    qSegTrab: TSQLQuery;
    cdsSegTrab: TClientDataSet;
    dspSegTrab: TDataSetProvider;
    dsSegTrab: TDataSource;
    cdsSegTrabCONTROLE: TIntegerField;
    cdsSegTrabDESCRICAO: TStringField;
    qSegTrabCONTROLE: TIntegerField;
    qSegTrabDESCRICAO: TStringField;
    qParametros: TSQLQuery;
    cdsParametros: TClientDataSet;
    dspParametros: TDataSetProvider;
    dsParametros: TDataSource;
    cdsParametrosSERIAL: TStringField;
    cdsParametrosSEGMENTO: TStringField;
    cdsParametrosCAMPO1: TStringField;
    cdsParametrosCAMPO2: TStringField;
    cdsParametrosCAMPO3: TStringField;
    cdsParametrosCAMPO4: TStringField;
    cdsParametrosCAMPO5: TStringField;
    cdsParametrosDATA_EXPIRACAO: TDateField;
    cdsParametrosCADASTRADO_POR: TStringField;
    cdsParametrosCADASTRADO_EM: TSQLTimeStampField;
    cdsParametrosALTERADO_POR: TStringField;
    cdsParametrosALTERADA_EM: TSQLTimeStampField;
    cdsParametrosDATA_INTERNET: TDateField;
    cdsParametrosCAMPO6: TIntegerField;
    qEmpresaSMTP: TStringField;
    qEmpresaPORTA: TIntegerField;
    qEmpresaLOGIN: TStringField;
    qEmpresaSENHA: TStringField;
    qEmpresaEMAIL2: TStringField;
    cdsEmpresaSMTP: TStringField;
    cdsEmpresaPORTA: TIntegerField;
    cdsEmpresaLOGIN: TStringField;
    cdsEmpresaSENHA: TStringField;
    cdsEmpresaEMAIL2: TStringField;
    qMascaraConta: TSQLQuery;
    qMascaraContaSALDO_LIVROCAIXA: TFMTBCDField;
    qMascaraContaMASCARA_PLCONTAS: TStringField;
    qOportunidadesHoje: TSQLQuery;
    cdsOportunidadesHoje: TClientDataSet;
    StringField18: TStringField;
    StringField19: TStringField;
    DateField1: TDateField;
    dspOportunidadesHoje: TDataSetProvider;
    dsOportunidadesHoje: TDataSource;
    qEmpresaOPCAO_TRIBUTARIA: TStringField;
    qEmpresaCAPITAL_SOCIAL: TFloatField;
    cdsEmpresaOPCAO_TRIBUTARIA: TStringField;
    cdsEmpresaCAPITAL_SOCIAL: TFloatField;
    dsBanco: TDataSource;
    cdsBanco: TClientDataSet;
    dspBanco: TDataSetProvider;
    qBanco: TSQLQuery;
    cdsBancoCDEMPRESA_BANCO: TIntegerField;
    cdsBancoCDEMPRESA: TIntegerField;
    cdsBancoNOME_BANCO: TStringField;
    cdsBancoNUMERO_BANCO: TStringField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoCONTA: TStringField;
    cdsBancoTIPO_CONTA: TStringField;
    cdsBancoFONE1: TStringField;
    cdsBancoFONE2: TStringField;
    cdsBancoFONE3: TStringField;
    cdsBancoNOME_GERENTE: TStringField;
    cdsBancoCADASTRADO_POR: TStringField;
    cdsBancoCADASTRADO_EM: TSQLTimeStampField;
    cdsBancoALTERADO_POR: TStringField;
    cdsBancoALTERADO_EM: TSQLTimeStampField;
    dsSocios: TDataSource;
    cdsSocios: TClientDataSet;
    dspSocios: TDataSetProvider;
    qSocios: TSQLQuery;
    cdsSociosCDEMPRESA_SOCIO: TIntegerField;
    cdsSociosCDEMPRESA: TIntegerField;
    cdsSociosNOME: TStringField;
    cdsSociosENDERECO: TStringField;
    cdsSociosNUMERO: TStringField;
    cdsSociosBAIRRO: TStringField;
    cdsSociosCIDADE: TStringField;
    cdsSociosCEP: TStringField;
    cdsSociosUF: TStringField;
    cdsSociosCOD_IBGE: TStringField;
    cdsSociosCPF: TStringField;
    cdsSociosRG: TIntegerField;
    cdsSociosRG_EMISSOR: TStringField;
    cdsSociosQUOTA_SOCIETARIA: TFloatField;
    cdsSociosCADASTRADO_POR: TStringField;
    cdsSociosCADASTRADO_EM: TSQLTimeStampField;
    cdsSociosALTERADO_POR: TStringField;
    cdsSociosALTERADO_EM: TSQLTimeStampField;
    qVacina: TSQLQuery;
    qVacinaCDVACINA: TIntegerField;
    qVacinaCDTIPO: TIntegerField;
    qVacinaDESCRICAO: TStringField;
    qVacinaDIAS: TIntegerField;
    qVacinaAVISO_DIAS: TIntegerField;
    qVacinaCADASTRADO_POR: TStringField;
    qVacinaCADASTRADO_EM: TSQLTimeStampField;
    qVacinaALTERADO_POR: TStringField;
    qVacinaALTERADO_EM: TSQLTimeStampField;
    qVacinaTIPO: TStringField;
    dspVacina: TDataSetProvider;
    cdsVacina: TClientDataSet;
    cdsVacinaCDVACINA: TIntegerField;
    cdsVacinaCDTIPO: TIntegerField;
    cdsVacinaDESCRICAO: TStringField;
    cdsVacinaDIAS: TIntegerField;
    cdsVacinaAVISO_DIAS: TIntegerField;
    cdsVacinaCADASTRADO_POR: TStringField;
    cdsVacinaCADASTRADO_EM: TSQLTimeStampField;
    cdsVacinaALTERADO_POR: TStringField;
    cdsVacinaALTERADO_EM: TSQLTimeStampField;
    cdsVacinaTIPO: TStringField;
    dsVacina: TDataSource;
    qEndCob: TSQLQuery;
    cdsEndCob: TClientDataSet;
    DateField2: TDateField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    IntegerField3: TIntegerField;
    dspEndCob: TDataSetProvider;
    dsEndCob: TDataSource;
    qPesquisa: TSQLQuery;
    qEmpresaPATH_IMAGEM: TStringField;
    cdsEmpresaPATH_IMAGEM: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEmpresaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsEmpresaAfterScroll(DataSet: TDataSet);
    procedure dspSegTrabGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure cdsEmpresaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TrataErro(Sender : TObject; EParamExcecao : Exception);
    procedure CriaRegistroDoWindows;
    procedure LeRegistroDoWindows;
  end;

var
  DMPrincipal: TDMPrincipal;
  wBase               : String;
  wHost               : String;
  wUser               : String;
  wPassword           : String;
  wCaptionFormularios : String = 'MRP Comércio ';

implementation

uses TelaServidor_p, Funcoes_p;

{$R *.dfm}


procedure TDMPrincipal.TrataErro(Sender : TObject; EParamExcecao : Exception);
var
  numErro : Integer;
begin
  numErro := 0;
  if Copy(EParamExcecao.Message, 1, 18) = 'EscapeCommFunction' then
    numErro := 1;
  if Copy(EParamExcecao.Message, 1, 34) = 'Unable to complete network request' then
    numErro := 2;
  if Copy(EParamExcecao.Message, 1, 16) = 'Access violation' then
    numErro := 3;
  if Copy(EParamExcecao.Message, 1, 31) = 'Floating point division by zero' then
    numErro := 4;
  if Copy(EParamExcecao.Message, 1, 20) = 'Invalid input value.' then
    numErro := 5;
  if Copy(EParamExcecao.Message, 1, 27) = 'Access violation at address' then
    numErro := 6;
  if Copy(EParamExcecao.Message, 1, 23) = 'Grid index out of range' then
    numErro := 7;
  if Copy(EParamExcecao.Message, 1, 23) = 'Address' then
    numErro := 7;

  case numErro of
    1: begin
         Application.ProcessMessages;    //simplesmente não faz nada, pois não tem o que fazer...
       end;
    2: begin
         ShowMessage('ERRO : Não foi possível conectar ao Banco de Dados !' + #13+#13 +
                     'O Aplicativo será encerrado !');
         Application.Terminate;
       end;
    3: begin
         ShowMessage('Ocorreu um erro grave !' + #13+#13 +
                     'O APLICATIVO SERÁ ENCERRADO !');
         Application.Terminate;
       end;
    4: begin
         ShowMessage('Erro detectado : DIVISAO POR ZERO !');
       end;
    5: begin
         ShowMessage('Dados Inválidos. Digite Novamente');
       end;

    6: begin
//         Application.Terminate;
       end;
    7: begin
         exit;
       end;
   else
     ShowMessage('MENSAGEM DE ERRO CAPTURADA:' + #13+#13+EParamExcecao.Message);
   end;
end;

procedure TDMPrincipal.cdsEmpresaAfterOpen(DataSet: TDataSet);
begin
  cdsBanco.Open;
  cdsSocios.Open;
end;

procedure TDMPrincipal.cdsEmpresaAfterScroll(DataSet: TDataSet);
begin
  cdsClone.CloneCursor(cdsEmpresa,True,False);
end;

procedure TDMPrincipal.CriaRegistroDoWindows;
var
  Reg: TRegistry;
begin
  TelaServidor := TTelaServidor.Create(Self);
  TelaServidor.ShowModal;
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);

//  Reg.WriteString('BASE'     , 'c:\visao.gdb' );
  Reg.WriteString('SERVIDOR' , TelaServidor.EditHost.Text );
//  Reg.WriteString('USER'     , 'SYSDBA'       );
//  Reg.WriteString('PASSWORD' , 'bruna2011'    );
  Reg.Free;
  TelaServidor.Free;
  TelaServidor := nil;
  LeRegistroDoWindows;
end;

procedure TDMPrincipal.DataModuleCreate(Sender: TObject);
begin
//else
//Mensagem('Servidor Firebird está Desativado ou não Instalado');
//  if VerificarService('FirebirdServerDefaultInstance','',SERVICE_WIN32,SERVICE_STATE_ALL) then
//    begin
      Application.OnException := TrataErro;
      LeRegistroDoWindows;

      if ( wHost = ('') )then
       begin
         TelaServidor := TTelaServidor.Create(Self);
         TelaServidor.ShowModal;
         TelaServidor.Free;
         TelaServidor := nil;
         LeRegistroDoWindows;
       end
      else
        begin
          try
            SQLCon.Connected := False;
            with SQLCon do
              begin
                ConnectionName             := ('FBConnection');
                DriverName                 := ('Firebird');
                GetDriverFunc              := ('getSQLDriverINTERBASE');
                LibraryName                := ('dbxfb.dll');
                vendorlib                  := ('fbclient.DLL');
                LoginPrompt                := False;
                Params.Values['DATABASE']  := wHost+':'+wBase;
                Params.Values['USER_NAME'] := wUser;
                Params.Values['PASSWORD']  := wPassword;
                Params.Values['SQLDialect']:= '3';
              end;
            SQLCon.Connected := True;
            cdsEmpresa.Open;
            cdsData.Open;
            cdsPF.Open;
            cdsSeg.Open;
            cdsPNFe.Open;
            cdsOportunidades.Open;
            cdsPais.Open;
            cdsIBGE.Open;
            cdsParametros.Open;
            cdsErro.Open;
            qMascaraConta.Active := True;
          except
            on E: Exception do
               begin
                 Application.MessageBox(PWideChar('Atenção: '+#13+'Cód do erro: '+E.MESSAGE),'Aviso de Erro'  ,MB_OK+mb_IconInformation);
                SQLCon.Connected := False;
                TelaServidor := TTelaServidor.Create(Self);
                TelaServidor.ShowModal;
                TelaServidor.Free;
                TelaServidor := nil;
                LeRegistroDoWindows;
               end;
          end;
        end;
//    end
//  else
//    begin
//      Application.MessageBox('Servidor de Banco de Dados Firebird desativado ou não instalado.'
//        + #13#10 + '         Por favor verifique junto ao Serviço de Suporte.',
//        'Atenção', MB_OK + MB_ICONWARNING);
//      Application.Terminate;
//    end;
end;

procedure TDMPrincipal.dspEmpresaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'EMPRESA';
end;

procedure TDMPrincipal.dspSegTrabGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'SEGMENTO_TRABALHO';
end;

procedure TDMPrincipal.LeRegistroDoWindows;
var Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.KeyExists('\Software\Onzenet\MRP\Configuracoes') then
    begin
      try
        Reg.OpenKey('\Software\Onzenet\MRP\Configuracoes', True);
        wBase     := 'c:\visao.gdb';
        wHost     := Reg.ReadString('HOST');
          wUser     := 'SYSDBA';
        wPassword := 'bruna2011';
      except
        CriaRegistroDoWindows;
      end;
    end
  else
    CriaRegistroDoWindows;
end;

end.
