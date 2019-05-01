unit Funcoes_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Registry,SqlExpr,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ComCtrls, Buttons,DB,DBTables,JPEG,  ExtCtrls, TypInfo,
  DateUtils,IdBaseComponent, IdComponent, IdTCPConnection, TlHelp32, WinSvc,
  IdTCPClient, IdDayTime;



function Gerar_id(generator_name: string): Integer;
Procedure InsertState ( Form : TForm );
procedure BrowseState ( Form : TForm );
function Criptografia(StringASerConvertida : String; Criptografar : Boolean) : String;
function Criptografa(const S: string; Key: Longint): String;
function Descriptografa(const S: string; Key: Longint): String;
function Encrypt(const InString:string; StartKey,MultKey,AddKey:Integer): string;
function Decrypt(const InString:string; StartKey,MultKey,AddKey:Integer): string;
function fmLRString( wBuffer : String; wLen : Integer; wLtrim : Boolean; wStrCat : String ) : String;
function RemoveAcento(Str:String): String;
function Brancos( wString : String; final : Integer ) : String;
Function HexToInt(const HexStr: string): longint;
function ValidaSerial(Licenca:String) : Boolean;
function CompletaComZeros(StringRecebida: String; TamanhoFinal: Integer) : String;
function RetornaDataServNet : TDate;
function IsFireBirdRunning: boolean;
function VersaoExe: String;
function TiraCharNaoPermitido(StringRecebida : String) : String;
function Consulta_id(generator_name: string): Integer;
function ConvertePalavras(FraseRecebida: String): String;
function VerificarService(nService, sMachine: string; dwServiceType, dwServiceState: DWord): boolean;

Function StrIsInteger(const S: string): boolean;external 'MRP.dll';
Function StrIsFloat(const S: string): boolean;external 'MRP.dll';

function FormataCNPJeCPF(fDoc: String): String;
function FormataIE( Inscricao, Estado : String ) : String;
function Mes(const Data: TDateTime): Integer;
function IsWeekEnd (dData : TDateTime) : Boolean;
function DiaExtenso (dData : TDateTime) : String;
function IdadeN(Data: TDateTime; Completa: Boolean = False): String;
function QuintoDiaUtil(Data: TDateTime; NumFeriados: Byte): TDateTime;
function IncDiasUteis(Data : TDate; Dias : Word) : TDate;
function LastDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
function NextMonth (Data : TDateTime) : TDateTime;
function MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;

implementation

uses DMPrincipal_p;

Function HexToInt(const HexStr: string): longint;
var iNdx: integer;
    cTmp: Char;
begin
  Result := 0;
  for iNdx := 1 to Length(HexStr) do
    begin
      cTmp := HexStr[iNdx];
      case cTmp of
        '0'..'9': Result := 16 * Result + (Ord(cTmp) - $30);
        'A'..'F': Result := 16 * Result + (Ord(cTmp) - $37);
        'a'..'f': Result := 16 * Result + (Ord(cTmp) - $57);
      else
        raise EConvertError.Create('Illegal character in hex string');
      end;
    end;
end;

function ValidaSerial(Licenca:String) : Boolean;
var CodReg : String;
    NomeVol, SisArq: String;
    NumSere,
    Flags,
    TamMax: DWord;
    ChaveProduto : string;
begin
  //Pega InformaÁıes do HD.......................................
  SetLength(NomeVol,255);
  SetLength(SisArq,255);
  GetVolumeInformation('c:\', PChar(NomeVol), 255, @NumSere, TamMax, Flags, PChar(SisArq), 255);
  //.............................................................
  ChaveProduto := (Copy(IntToStr(NumSere),1,7));

  CodReg := Copy(Licenca,1,7);
  CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
  CodReg := IntToStr(HexToInt( CodReg ));
  if CodReg = ChaveProduto then
    begin
      CodReg := Copy(Licenca,8,7);
      CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
      CodReg := IntToStr(HexToInt( CodReg ));
      CodReg := CompletaComZeros(CodReg,5);

      if CodReg = Copy(ChaveProduto,3,5) then
        begin
          CodReg := Copy(Licenca,15,7);
          CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
          CodReg := IntToStr(HexToInt( CodReg ));
          CodReg := CompletaComZeros(CodReg,3);

          if CodReg = Copy(ChaveProduto,5,3) then
            begin
              CodReg := Copy(Licenca,22,7);
              CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
              CodReg := IntToStr(HexToInt( CodReg ));
              CodReg := CompletaComZeros(CodReg,1);

              if CodReg = Copy(ChaveProduto,7,1) then
                begin
                  CodReg := Copy(Licenca,29,7);
                  CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
                  CodReg := IntToStr(HexToInt( CodReg ));
                  CodReg := CompletaComZeros(CodReg,2);

                  if CodReg = Copy(ChaveProduto,6,2) then
                    begin
                      CodReg := Copy(Licenca,36,7);
                      CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
                      CodReg := IntToStr(HexToInt( CodReg ));
                      CodReg := CompletaComZeros(CodReg,4);

                      if CodReg = Copy(ChaveProduto,4,4) then
                        begin
                          CodReg := Copy(Licenca,43,7);
                          CodReg := CodReg[2]+CodReg[3]+CodReg[4]+CodReg[6]+ CodReg[5]+CodReg[1]+CodReg[7];
                          CodReg := IntToStr(HexToInt( CodReg ));

                          if CodReg = Copy(ChaveProduto,2,6) then
                            Result := True
                          else
                            Result := False;
                        end
                      else
                        Result := False;
                    end
                  else
                    Result := False;
                end
              else
                Result := False;
            end
          else
            Result := False;
        end
      else
        Result := False;
    end
  else
    Result := False;
end;

function Criptografa(const S: string; Key: Longint): String;
var
  i: Integer;
  Resultado: String;
begin
  Key := Key * 1;
  Resultado := '';
  for i := 1 to Length(S) do
  begin
    Resultado := Resultado + Char(Byte(S[i]) + (Key));
  end;
  Result := Resultado;
end;

function Descriptografa(const S: string; Key: Longint): String;
var
  i: Integer;
  Resultado: String;
begin
  Key := Key * 1;
  Resultado := '';
  for i := 1 to Length(S) do
  begin
    Resultado := Resultado + Char(Byte(S[i]) - (Key));
  end;
  Result := Resultado;
end;

function Consulta_id(generator_name: string): Integer;
 var Query: TSQLQuery;
begin
  Query := TSQLQuery.Create(nil);
  try
    Query.Close;
    Query.SQLConnection := DMPrincipal.SQLCon;
    Query.SQL.Text := 'SELECT GEN_ID('+generator_name+',0) AS ID FROM RDB$DATABASE';
    Query.Open;
    Result := Query.Fields[0].AsInteger;
  finally
    Query.Free;
  end;
end;

function Gerar_id(generator_name: string): Integer;
 var Query: TSQLQuery;
begin
  Query := TSQLQuery.Create(nil);
  try
    Query.Close;
    Query.SQLConnection := DMPrincipal.SQLCon;
    Query.SQL.Text := 'SELECT GEN_ID('+generator_name+',1) AS ID FROM RDB$DATABASE';
    Query.Open;
    Result := Query.Fields[0].AsInteger;
  finally
    Query.Free;
  end;
end;

Procedure InsertState ( Form : TForm );
var i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
    begin
      if Form.Components[i] is TDBComboBox then
       begin
         ( Form.Components[i] as TDBComboBox).Style    := csDropDown;
         ( Form.Components[i] as TDBComboBox).readOnly := False;
       end;

      if Form.Components[i] is TDBLookupComboBox then
         ( Form.Components[i] as TDBLookupComboBox).readOnly := False;

      if Form.Components[i] is TDBCheckBox then
         ( Form.Components[i] as TDBCheckBox).ReadOnly := False;

      if Form.Components[i] is TDBEdit then
         ( Form.Components[i] as TDBEdit).ReadOnly := False;

      if Form.Components[i] is TMaskEdit then
         ( Form.Components[i] as TMaskEdit).ReadOnly := False;

      if Form.Components[i] is TEdit then
        begin
           if ( Form.Components[i] as TEdit).Name = ('EditPesquisa') then
            begin
             ( Form.Components[i] as TEdit).ReadOnly := True;
             ( Form.Components[i] as TEdit).Text := ('');
            end
             else
              ( Form.Components[i] as TEdit).ReadOnly := False;
        end;

      if Form.Components[i] is TBitBtn then
       Begin
         if( Form.Components[i] as TBitBtn).Name = 'BitBtnIncluir' Then
           (Form.Components[i] as TBitBtn).Enabled := False;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnAlterar' Then
           (Form.Components[i] as TBitBtn).Enabled := False;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnExcluir' Then
           (Form.Components[i] as TBitBtn).Enabled := False;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnCancelar' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnGravar' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnPesquisa' Then
           (Form.Components[i] as TBitBtn).Enabled := False;
       end;

      if Form.Components[i] is TDBGrid then
       begin
         if ( Form.Components[i] as TDBGrid).Name = ('DBGridOpcoes') then
           ( Form.Components[i] as TDBGrid).Enabled := True;
       end;

      if Form.Components[i] is TDBNavigator then
         ( Form.Components[i] as TDBNavigator).Enabled := False;
    end;
end;

procedure BrowseState ( Form : TForm );
var i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
    begin
      if Form.Components[i] is TDBComboBox then
       begin
         ( Form.Components[i] as TDBComboBox).Style    := csSimple;
         ( Form.Components[i] as TDBComboBox).readOnly := True;
       end;

      if Form.Components[i] is TDBLookupComboBox then
         ( Form.Components[i] as TDBLookupComboBox).readOnly :=True;

      if Form.Components[i] is TDBCheckBox then
         ( Form.Components[i] as TDBCheckBox).ReadOnly :=True;


      if Form.Components[i] is TDBEdit then
         ( Form.Components[i] as TDBEdit).ReadOnly := True;

      if Form.Components[i] is TMaskEdit then
         ( Form.Components[i] as TMaskEdit).ReadOnly := False;

      if Form.Components[i] is TEdit then
        begin
           if ( Form.Components[i] as TEdit).Name = ('EditPesquisa') then
            begin
             ( Form.Components[i] as TEdit).ReadOnly := False;
             ( Form.Components[i] as TEdit).Text := ('');
            end
             else
              ( Form.Components[i] as TEdit).ReadOnly := True;
        end;

      if Form.Components[i] is TDBGrid then
       begin
         if ( Form.Components[i] as TDBGrid).Name = ('DBGridOpcoes') then
           ( Form.Components[i] as TDBGrid).Enabled := False;
       end;

      if Form.Components[i] is TBitBtn then
       Begin
         if( Form.Components[i] as TBitBtn).Name = 'BitBtnGravar' Then
           (Form.Components[i] as TBitBtn).Enabled := False;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnCancelar' Then
           (Form.Components[i] as TBitBtn).Enabled := False;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnIncluir' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnAlterar' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnExcluir' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

         if( Form.Components[i] as TBitBtn).Name = 'BitBtnPesquisa' Then
           (Form.Components[i] as TBitBtn).Enabled := True;

       end;
      if Form.Components[i] is TDBNavigator then
         ( Form.Components[i] as TDBNavigator).Enabled := True;
    end;
end;

function Criptografia(StringASerConvertida : String; Criptografar : Boolean) : String;
begin
  if Criptografar then
    Result := Encrypt(StringASerConvertida, 8 , 1, 8)
  else
    Result := Decrypt(StringASerConvertida, 8, 1, 8);
end;

function Encrypt(const InString:string; StartKey,MultKey,AddKey:Integer): string;
var
  I : Byte;
begin
  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function Decrypt(const InString:string; StartKey,MultKey,AddKey:Integer): string;
var
  I : Byte;
begin
  Result := '';
  for I := 1 to Length(InString) do
  begin
    Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
    StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function fmLRString( wBuffer : String; wLen : Integer; wLtrim : Boolean; wStrCat : String ) : String;
var wLenBuffer, i : Integer;
    wRetorno : String;
begin
     wLenBuffer := length( wBuffer );

     if wLenBuffer >= wLen then
        exit;

     for i:=1 to wLen - wLenBuffer do
         wRetorno := wRetorno + wStrCat;

     if wLtrim then
        Result := wRetorno + wBuffer
     else
        Result := wBuffer + wRetorno;
end;

function RemoveAcento(Str:String): String;
Const
ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
if Pos(Str[x],ComAcento)<>0 Then
Str[x] := SemAcento[Pos(Str[x],ComAcento)];
Result := Str;
end;

function Brancos( wString : String; final : Integer ) : String;
var i , wQuantidade : Integer;
begin
     if final < length( wString ) then
        exit;

     wQuantidade := final - length( wString );

     for i:=1 to wQuantidade do
         wString := wString + ' ';

     result := wString;
end;

function CompletaComZeros(StringRecebida: String; TamanhoFinal: Integer) : String;
var
  NovosZeros : String;
  NumeroDeZeros, i : Integer;
begin
  NovosZeros := '';
  NumeroDeZeros := TamanhoFinal- length(StringRecebida);
  for i:= 1 to NumeroDeZeros do
    NovosZeros := NovosZeros + '0';
  CompletaComZeros := NovosZeros+StringRecebida;
end;

function RetornaDataServNet : TDate;
var
   sdata:string;
   IdDayTime1 : TIdDayTime;
begin
   try
     try
       IdDayTime1 := TIdDayTime.Create(nil);
       IdDayTime1.Host := 'time.nist.gov';
       sdata:=IdDayTime1.DayTimeStr;
       sdata:=Trim(Copy(sdata,Pos(' ',sData),9));
       Result := StrToDate( StringReplace(sData,'-','/',[rfReplaceAll]) );
     except
       Result := Date;
     end;
   finally
     IdDayTime1.Free;
   end;
end;

function IsFireBirdRunning: boolean;
const PROCESS_TERMINATE = $0001;
var Co: BOOL;
    FS: THandle;
    FP: TProcessEntry32;
    s: string;
begin
  FS        := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FP.dwSize := Sizeof(FP);
  Co        := Process32First(FS, FP);
  while integer(Co) <> 0 do
    begin
      s  := s + FP.szExeFile + #13;
      Co := Process32Next(FS, FP);
    end;
  CloseHandle(FS);
  if pos('fbserver', s) > 0 then
    IsFireBirdRunning := true
  else
    IsFireBirdRunning := false;
end;

function VersaoExe: String;
type
  PFFI = ^vs_FixedFileInfo;
var
  F : PFFI;
  Handle : Dword;
  Len : Longint;
  Data : Pchar;
  Buffer : Pointer;
  Tamanho : Dword;
  Parquivo: Pchar;
  Arquivo : String;
begin
  Arquivo := Application.ExeName;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
  begin
    Data:=StrAlloc(Len+1);
    if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
    begin
      VerQueryValue(Data, '\',Buffer,Tamanho);
      F := PFFI(Buffer);
      Result := Format('%d.%d.%d.%d',
      [HiWord(F^.dwFileVersionMs),
      LoWord(F^.dwFileVersionMs),
      HiWord(F^.dwFileVersionLs),
      Loword(F^.dwFileVersionLs)]
      );
    end;
    StrDispose(Data);
  end;
  StrDispose(Parquivo);
end;

function TiraCharNaoPermitido(StringRecebida : String) : String;
var
  i: integer;
  StringASerDevolvida : String;
begin
  StringASerDevolvida := '';
  for i := 1 to length(StringRecebida) do
    begin
    if (StringRecebida[i] in ['0'..'9']) or
       (StringRecebida[i] in ['A'..'Z']) or
       (StringRecebida[i] in ['a'..'z'])then
      StringASerDevolvida := StringASerDevolvida + StringRecebida[i];
    end;
  Result := StringASerDevolvida;
end;

function ConvertePalavras(FraseRecebida: String): String;
var i : integer;
    FraseAlterada : String;
begin
  //Converte a primeira letra da string;
  FraseAlterada := UpperCase(Copy(FraseRecebida, 1, 1));

  //Converte a primeira letra de cada palavra na string;
  for i := 2 to Length(FraseRecebida) do
    begin
      if FraseRecebida[i-1] = '' then
        FraseAlterada := FraseAlterada + UpperCase(FraseRecebida[i])
      else
        begin
          if FraseRecebida[i] = '«' then
            FraseAlterada := FraseAlterada + 'Á'
          else
            if FraseRecebida[i] = ' ' then
              FraseAlterada := FraseAlterada + 'Í'
            else
              if FraseRecebida[i] = '…' then
                FraseAlterada := FraseAlterada + 'È'
              else
                if FraseRecebida[i] = '√' then
                  FraseAlterada := FraseAlterada + '„'
                else
                  if FraseRecebida[i] = '’' then
                    FraseAlterada := FraseAlterada + 'ı'
                  else
                    FraseAlterada := FraseAlterada + LowerCase(FraseRecebida[i]);
        end;
    end;

  //Analisa casos especiais;
  for i:= 2 to Length(FraseRecebida) do
    begin
      if (Copy(FraseAlterada, i, 4) = ' Do ') or
         (Copy(FraseAlterada, i, 4) = ' Da ') or
         (Copy(FraseAlterada, i, 4) = ' De ') or
         (Copy(FraseAlterada, i, 5) = ' Dos ') or
         (Copy(FraseAlterada, i, 5) = ' Das ') then
      FraseAlterada[i+1] := 'd';
    end;

  Result := FraseAlterada;
end;

function VerificarService(nService, sMachine: string; dwServiceType, dwServiceState: DWord): boolean;
const
  cnMaxServices = 4096;
type
  TSvcA = array[0..cnMaxServices]
          of TEnumServiceStatus;
  PSvcA = ^TSvcA;
var
  i : integer;
  hSCManager:SC_Handle;
  pcbBytesNeeded,
  lpServicesReturned,
  lpResumeHandle: DWord;
  lpServices: PSvcA;
begin
  try
    Result := false;
    hSCManager := OpenSCManager(
      PChar(sMachine),
      Nil,
      SC_MANAGER_ALL_ACCESS);
    if(hSCManager > 0)then
    begin

      lpResumeHandle := 0;
      New(lpServices);

      EnumServicesStatus(
        hSCManager,
         dwServiceType,
        dwServiceState,
        lpServices^[0],
        SizeOf(lpServices^),
        pcbBytesNeeded,
        lpServicesReturned,
        lpResumeHandle);
      for i := 0 to lpServicesReturned-1 do

       if Uppercase(StrPas(lpServices^[i].lpServiceName)) = Uppercase(nService) Then
        begin
          Result := true;
          Break;
        end;
    end;
  finally
    Dispose(lpServices);
    CloseServiceHandle(hSCManager);
  end;
end;

function FormataCNPJeCPF(fDoc: String): String;
var vTam, xx : Integer;
    vDoc : String;
begin
  vTam := Length(fDoc);
  for xx := 1 To vTam Do
    if (Copy(fDoc,xx,1) <> '.') And (Copy(fDoc,xx,1) <> '-') And (Copy(fDoc,xx,1) <> '/') then
      vDoc := vDoc + Copy(fDoc,xx,1);
  fDoc := vDoc;
  vTam := Length(fDoc);
  vDoc := '';
  vDoc := '';
  for xx := 1 To vTam do
    begin
      vDoc := vDoc + Copy(fDoc,xx,1);
      if vTam = 11 then
        begin
          if (xx in [3,6]) then
            vDoc := vDoc + '.';
          if xx = 9 then
            vDoc := vDoc + '-';
        end;
      if vTam = 14 then
        begin
          if (xx in [2,5]) then
            vDoc := vDoc + '.';

          if xx = 8 then
            vDoc := vDoc + '/';

          if xx = 12 then
            vDoc := vDoc + '-';
        end;
    end;
  Result := vDoc;
end;

function FormataIE( Inscricao, Estado : String ) : String;
var Mascara : String;
    Contador_1 : Integer;
    Contador_2 : Integer;
begin
  if Estado = 'AC' then Mascara := '**.***.***/***-**';
  if Estado = 'AL' then Mascara := '*********';
  if Estado = 'AP' then Mascara := '*********';
  if Estado = 'AM' then Mascara := '**.***.***-*';
  if Estado = 'BA' then Mascara := '******-**';
  if Estado = 'CE' then Mascara := '********-*';
  if Estado = 'DF' then Mascara := '***********-**';
  if Estado = 'ES' then Mascara := '*********';
  if Estado = 'GO' then Mascara := '**.***.***-*';
  if Estado = 'MA' then Mascara := '*********';
  if Estado = 'MT' then Mascara := '**********-*';
  if Estado = 'MS' then Mascara := '*********';
  if Estado = 'MG' then Mascara := '***.***.***/****';
  if Estado = 'PA' then Mascara := '**-******-*';
  if Estado = 'PB' then Mascara := '********-*';
  if Estado = 'PR' then Mascara := '********-**';
  if Estado = 'PE' then Mascara := '**.*.***.*******-*';
  if Estado = 'PI' then Mascara := '*********';
  if Estado = 'RJ' then Mascara := '**.***.**-*';
  if Estado = 'RN' then Mascara := '**.***.***-*';
  if Estado = 'RS' then Mascara := '***/*******';
  if Estado = 'RO' then Mascara := '***.*****-*';
  if Estado = 'RR' then Mascara := '********-*';
  if Estado = 'SC' then Mascara := '***.***.***';
  if Estado = 'SP' then Mascara := '***.***.***.***';
  if Estado = 'SE' then Mascara := '*********-*';
  if Estado = 'TO' then Mascara := '***********';

  Contador_2 := 1;
  Result := '';
  Mascara := Mascara + '****';
  for Contador_1 := 1 To Length( Mascara ) do
    begin
      if Copy( Mascara, Contador_1, 1 ) = '*' then
        Result := Result + Copy( Inscricao, Contador_2, 1 );

      if Copy( Mascara, Contador_1, 1 ) <> '*' then
        Result := Result + Copy( Mascara , Contador_1, 1 );

      if Copy( Mascara, Contador_1, 1 ) = '*' then
        Contador_2 := Contador_2 + 1;
    end;
  Result := Trim( Result );
end;

// Retorna o mÍs da data informada
// ===================================================================
function Mes(const Data: TDateTime): Integer;
var
  Ano, Mes, Dia : Word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  Result := Mes;
end;

function IsWeekEnd (dData : TDateTime) : Boolean;
begin
  Result := false;
  if (DayOfWeek(dData) = 1) or (DayOfWeek(dData) = 7) then Result := True;
end;

function DiaExtenso (dData : TDateTime) : String;
var
  xDia : String;
begin
  case DayOfWeek (dData) of
    1: xDia := 'Domingo';
    2: xDia := 'Segunda-feira';
    3: xDia := 'TerÁa-feira';
    4: xDia := 'Quarta-feira';
    5: xDia := 'Quinta-feira';
    6: xDia := 'Sexta-feira';
    7: xDia := 'S·bado';
  end;
  DiaExtenso := xDia;
end;

function IdadeN(Data: TDateTime; Completa: Boolean = False): String;
var AnoAtual, MesAtual, DiaAtual: word;
    AnoData, MesData, DiaData: word;
    Anos, Meses, Dias: Integer;
begin
  if Data > Date then
  begin
    ShowMessage('Data De Nascimento Maior que a Data de Hoje!');
    Exit;
  end;
  DecodeDate(Date, AnoAtual, MesAtual, DiaAtual);
  DecodeDate(Data, AnoData, MesData, DiaData);

  // Obtendo as diferenÁas de cada parte da data
  Anos  := AnoAtual - AnoData;
  Meses := MesAtual - MesData;
  Dias  := DiaAtual - DiaData;

  // Calculando meses
  if Meses < 0 then
    begin
      Dec(Anos);
      Meses := 12 + Meses;
    end;

  if Dias < 0 then
    begin
      Meses := Meses - 1;
      If MesAtual - 1 in [4,6,9,11] then
        Dias := DiaAtual + 30 - DiaData
      else
        if MesAtual - 1 = 0 then // janeiro
          Dias := DiaAtual + 31 - DiaData
        else
          if MesAtual - 1 = 2 then
            if AnoAtual mod 4 = 0 then // bissexto
              Dias := DiaAtual + 29 - DiaData
            else
              Dias := DiaAtual + 28 - DiaData;
    end;

  if Completa then
    begin
      if Anos < 0 then
        Anos := 0;

      if Meses < 0 then
        Meses := 0;

      if (Dias <> 1) then
      begin
        Result := IntToStr(Anos)  + ' Ano, ' +
                  IntToStr(Meses) + ' MÍs e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // 1 ano
      if (Anos = 1) and (Meses = 0) and (Dias = 0) then
      begin
        Result := IntToStr(Anos)  + ' Ano.';
      end;

      // 1 ano, 1 dia
      if (Anos = 1) and (Meses = 0) and (Dias = 1) then
      begin
        Result := IntToStr(Anos)  + ' Ano e ' +
                  IntToStr(Dias)  + ' Dia.';
      end;

      // 1 ano, varios dias
      if (Anos = 1) and (Meses = 0) and (Dias > 1) then
      begin
        Result := IntToStr(Anos)  + ' Ano e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // 1 ano, varios meses, 1 dia
      if (Anos = 1) and (Meses > 0) and (Dias = 1) then
      begin
        Result := IntToStr(Anos)  + ' Ano, ' +
                  IntToStr(Meses) + ' Meses e ' +
                  IntToStr(Dias)  + ' Dia.';
      end;

      // 1 ano, varios meses, varios dias
      if (Anos = 1) and (Meses > 0) and (Dias > 0) then
      begin
        Result := IntToStr(Anos)  + ' Ano, ' +
                  IntToStr(Meses) + ' Meses e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // Varios anos
      if (Anos > 1) and (Meses = 0) and (Dias = 0) then
      begin
        Result := IntToStr(Anos)  + ' Anos.';
      end;

      // varios anos, 1 dia
      if (Anos > 1) and (Meses = 0) and (Dias = 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos e ' +
                  IntToStr(Dias)  + ' Dia.';
      end;

      // varios anos, varios dias
      if (Anos > 1) and (Meses = 0) and (Dias > 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // varios anos, 1 mes, 1 dia
      if (Anos > 1) and (Meses = 1) and (Dias = 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos, ' +
                  IntToStr(Meses) + ' MÍs e ' +
                  IntToStr(Dias)  + ' Dia.';
      end;

      // varios anos, 1 mes, varios dias
      if (Anos > 1) and (Meses = 1) and (Dias > 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos, ' +
                  IntToStr(Meses) + ' MÍs e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // varios anos, varios meses, 1 dia
      if (Anos > 1) and (Meses > 1) and (Dias = 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos, ' +
                  IntToStr(Meses) + ' Meses e ' +
                  IntToStr(Dias)  + ' Dia.';
      end;

      // varios anos, varios meses, varios dias
      if (Anos > 1) and (Meses > 1) and (Dias > 1) then
      begin
        Result := IntToStr(Anos)  + ' Anos, ' +
                  IntToStr(Meses) + ' Meses e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // varios dias
      if (Anos = 0) and (Meses = 0) and (Dias > 1) then
      begin
        Result := IntToStr(Dias)  + ' Dias.';
      end;

      // 1 dia
      if (Anos = 0) and (Meses = 0) and (Dias = 1) then
      begin
        Result := IntToStr(Dias)  + ' Dia.';
      end;

      // 1 mes
      if (Anos = 0) and (Meses = 1) and (Dias = 0) then
      begin
        Result := IntToStr(Meses)  + ' MÍs.';
      end;

      // 1 mes 1 dia
      if (Anos = 0) and (Meses = 1) and (Dias = 1) then
      begin
        Result := IntToStr(Meses)  + ' MÍs e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // 1 mes, varios dias
      if (Anos = 0) and (Meses = 1) and (Dias > 1) then
      begin
        Result := IntToStr(Meses)  + ' MÍs e ' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // varios meses e dias
      if (Anos = 0) and (Meses > 1) and (Dias > 1) then
      begin
        Result := IntToStr(Meses)  + ' Meses e' +
                  IntToStr(Dias)  + ' Dias.';
      end;

      // varios meses
      if (Anos = 0) and (Meses > 1) and (Dias = 0) then
      begin
        Result := IntToStr(Meses)  + ' Meses.';
      end;
    end
  else
    begin
      if Anos = 1 then
        Result := IntToStr(Anos)  + ' Ano.';

      if Anos > 1 then
        Result := IntToStr(Anos)  + ' Anos.';

      if Anos = 0 then
        begin
          if Meses = 0 then
            Exit;

          if Meses = 1 then
            Result := IntToStr(Meses)  + ' MÍs.';

          if Meses > 1 then
            Result := IntToStr(Meses)  + ' Meses.';
        end;
    end;
end;

function QuintoDiaUtil(Data: TDateTime; NumFeriados: Byte): TDateTime;
Var
   Dia, Mes, Ano: Word;
   QuintoDia, I: Byte;
begin
     DecodeDate(Data, Ano, Mes, Dia);
     Data := EncodeDate(Ano, Mes, 1);
     QuintoDia := 0;
     // Nunca se sabe, por isto
     // percorro atÈ mais ou menos metade do mÍs
     for I := 1 to 15 do
     begin
          //Form1.Memo1.Lines.Add(DateToStr(Data)+' - '+InttoStr(DayOfWeek(Data)));
          if (DayOfWeek(Data) <> 1) and (DayOfWeek(Data) <> 7) then
             Inc(QuintoDia);
          if QuintoDia = 5 then
              break
          else
             Data := Data + 1;
     end;
     if NumFeriados = 0 then
        Result := Data
     else
     begin
          Data := Data + NumFeriados;
          if DayofWeek(Data) = 1 then
          Result := Data +1;
          if DayofWeek(Data) = 7 then
          Result := Data + 2;
     end;
end;

function IncDiasUteis(Data : TDate; Dias : Word) : TDate;
var
  I : Integer;
begin
  I := DayOfWeek(Data);

  Result := Data + Dias + (((Dias + I - 2) div 5) * 2);

  if I = 1 then
    Result := Result + 1;
end;

function LastDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
var
  Ano, Mes, Dia : word;
  AuxData : TDateTime;
  DiaDaSemana : Integer;
begin
  AuxData := FirstDayOfMonth (NextMonth (Data), False) - 1;
  if lSabDom then
  begin
    DecodeDate (Auxdata, Ano, Mes, Dia);
    DiaDaSemana := DayOfWeek (AuxData);
    if DiaDaSemana = 1 then
      Dia := Dia - 2
    else if DiaDaSemana = 7 then
      Dec (Dia);
    AuxData := EnCodeDate (Ano, Mes, Dia);
  end;
  LastDayOfMonth := AuxData;
end;

function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean) : TDateTime;
var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia := 1;
  if lSabDom then
  begin
    DiaDaSemana := DayOfWeek (Data);
    if DiaDaSemana = 1 then
      Dia := 2
    else if DiaDaSemana = 7 then
      Dia := 3;
  end;
  FirstDayOfMonth := EncodeDate (Ano, Mes, Dia);
end;

function NextMonth (Data : TDateTime) : TDateTime;
var
  Ano, Mes, Dia : word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  if Mes = 12 then
  begin
    Mes := 1;
    Inc (Ano);
  end else
  Inc (Mes);
  NextMonth := MenorDataValida (Ano, Mes, Dia);
end;

function MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;
var
  Continua : Boolean;
  DataAux  : TDateTime;
begin
  Continua := True;
  DataAux  := Date;
  while Continua do
  try
    DataAux  := EncodeDate (Ano, Mes, Dia);
    Continua := False;
  except
    Dec(Dia);
  end;
  MenorDataValida := DataAux;
end;

procedure MakeRounded(Control: TWinControl);
var  R: TRect;
     Rgn: HRGN;
begin
  with Control do
    begin
      R := ClientRect;
      rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
      Perform(EM_GETRECT, 0, lParam(@r));
      InflateRect(r, - 5, - 5);
      Perform(EM_SETRECTNP, 0, lParam(@r));
      SetWindowRgn(Handle, rgn, True);
      Invalidate;
    end;
end;

end.
