unit u_funcoes;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, winsock,
      Dialogs, ExtCtrls, StdCtrls, Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
      Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, TlHelp32, ShellAPI, Data.DB, IdComponent,
      IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, Registry;




procedure memoria;
procedure MostraTelaNotifica(pMSG, rMSG : WideString);
procedure executasginiconsp;
procedure MostraTelaAguarde(pMsg: WideString);
procedure MostraTelaAviso(pMsg, rMsg :WideString);
procedure fechatelaaguarde();
Function VersaoExe: String;
function RemoveZeros(S: string): string;
function TamanhoArquivoBytes(arquivo: string): Int64;
function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
function RetornaKiloBytes(ValorAtual: real): string;
function PosInvertido(const Frase: String; const Caractere : Char; const Inicio: Integer) : Integer;
Function tirapontos(texto : String) : String;
Function RemoveAcento(aText : string) : string;
function StrZero(const strvalor: string; const intComprimento: integer): string;
function PegaTimeZone: string;
function ZerarTxt(FileName: String): Boolean;
function ValidaGTIN(AGTIN: string): boolean;
function IsFileInUse(FileName: TFileName): Boolean;
function tbStrZero(const I: integer; const Casas: byte): string;


implementation

uses u_notifica, u_dados, u_aguarde,u_aviso;

function IsFileInUse(FileName: TFileName): Boolean;
var
HFileRes: HFILE;
begin
Result := False;
if not FileExists(FileName) then Exit;
HFileRes := CreateFile(PChar(FileName),
GENERIC_READ or GENERIC_WRITE,
0,
nil,
OPEN_EXISTING,
FILE_ATTRIBUTE_NORMAL,
0);
Result := (HFileRes = INVALID_HANDLE_VALUE);
if not Result then
CloseHandle(HFileRes);
end;

function tbStrZero(const I: integer; const Casas: byte): string;
var
Ch: Char;
begin
Result := IntToStr(I);
if Length(Result) > Casas then
begin
Ch := '*';
Result := '';
end
else Ch := '0';
while Length(Result) < Casas do Result := Ch + Result;
end;

function ValidaGTIN(AGTIN: string): boolean;
var
  i, soma, resultado, base10: integer;
begin
  //Verifica se todos os caracteres de AGTIN s�o n�meros
  for i:= 1 to Length(AGTIN) do
    if not (AGTIN[i] in ['0'..'9']) then
    begin
      Result:= False;
      Exit;
    end;
  //Verifica se AGTIN tem o tamanho necess�rio
  if Length(AGTIN) in [8,12,13,14] then
  begin
    soma:= 0;
    for i:= 1 to (Length(AGTIN) -1) do
    begin
      //Se for par, multiplica por 3. Se �mpar, por 1
      if Odd(i) then
        soma:= soma + (strtoint(AGTIN[i]) * 1)
      else
        soma:= soma + (strtoint(AGTIN[i]) * 3);
    end;
    base10:= soma;
    //Verifica se base10 � m�ltiplo de 10
    if not (base10 mod 10 = 0) then
    begin
      while not (base10 mod 10 = 0) do
      begin
        base10:= base10 + 1;
      end;
    end;
    resultado:= base10 - soma;
    //Verifica se o resultado encontrado � igual ao caractere de controle
    if resultado = strtoint(AGTIN[Length(AGTIN)]) then
      Result:= True
    else
      Result:= False;
  end
  else
    Result:= False;
end;

function PegaTimeZone: string;
var
   TimeZone: TTimeZoneInformation;
begin
   GetTimeZoneInformation(TimeZone);
   Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
end;

function StrZero(const strvalor: string; const intComprimento: integer): string;
var
   strZeros, strRetorno   : string;
   intTamanho, intContador: integer;
begin
   intTamanho      := Length(Trim(strvalor));
   strZeros        := ' ';
   for intContador := 1 to intComprimento do
      strZeros     := strZeros + '0';
   strRetorno      := Copy(Trim(strZeros) + Trim(strvalor), intTamanho + 1, intComprimento);
   Result          := strRetorno;
end;

function ZerarTxt(FileName: String): Boolean;
var
   TXT: TextFile;
begin
   try
      Result := True;
      try
         AssignFile(TXT, FileName);
         Rewrite(TXT)
      finally
         CloseFile(TXT);
      end;
   except
      Result := False;
   end;
end;

function TamanhoArquivoBytes(arquivo: string): Int64;
var
   search_rec: TSearchRec;
begin
   if FindFirst(arquivo, faAnyFile, search_rec) = 0 then
      Result := Int64(search_rec.FindData.nFileSizeHigh) shl Int64(32) + Int64(search_rec.FindData.nFileSizeLow)
   else
      Result := -1;

   FindClose(search_rec);
end;

function RemoveAcento(aText : string) : string;
const
  ComAcento = '��������������������������������';
  SemAcento = 'aaeouaoaeioucunyAAEOUAOAEIOUCUNY';
var
  x: Cardinal;
begin;
  for x := 1 to Length(aText) do
  try
    if (Pos(aText[x], ComAcento) <> 0) then
      aText[x] := SemAcento[ Pos(aText[x], ComAcento) ];
  except on E: Exception do
    raise Exception.Create('Erro no processo.');
  end;

  Result := aText;
end;

Function tirapontos(texto : String) : String;
Begin

  While pos('-', Texto) <> 0 Do
    delete(Texto,pos('-', Texto),1);

  While pos('.', Texto) <> 0 Do
    delete(Texto,pos('.', Texto),1);

  While pos('/', Texto) <> 0 Do
    delete(Texto,pos('/', Texto),1);

  While pos(',', Texto) <> 0 Do
    delete(Texto,pos(',', Texto),1);

  Result := Texto;
End;

function PosInvertido(const Frase: String; const Caractere : Char; const Inicio: Integer) : Integer;
var
 i : Integer;
begin
 Result := -1;
 if (Inicio > Length(Frase)) or (Inicio < 0) then
   exit;
 for I := Inicio DownTo 0 do
   if (Frase[i] = Caractere) Then
     begin
       Result := I;
       Break;
     end;
end;

procedure MostraTelaAguarde(pMsg: WideString);
begin
   Application.CreateForm(Tfrm_Aguarde, frm_Aguarde);
   frm_Aguarde.lb2.Caption := trim(pMsg);
   frm_Aguarde.Show;
   frm_Aguarde.Cursor := crHourGlass;
   frm_Aguarde.Update;
   frm_Aguarde.BringToFront;
end;

procedure FechaTelaAguarde();
begin
   if Assigned(frm_Aguarde) then
   begin
      frm_Aguarde.Cursor := crDefault;
      // frm_Aguarde.Close;
      frm_Aguarde.Destroy;
   end;
end;

procedure MostraTelaNotifica(pMsg, rMsg: WideString);
begin
   Application.CreateForm(Tfrm_NOTIFICA, frm_NOTIFICA);
   frm_NOTIFICA.lbl_TITULO.Caption := trim(pMsg);
   frm_NOTIFICA.lbl_AVISO.caption  := trim(rMsg);
   frm_NOTIFICA.Show;
   frm_NOTIFICA.Cursor := crNo;
   frm_NOTIFICA.Update;
   frm_NOTIFICA.BringToFront;
   frm_NOTIFICA.TIMER1.ENABLED:=TRUE;
end;

procedure MostraTelaAviso(pMsg, rMsg: WideString);
begin
   Application.CreateForm(Tfrm_AVISO, frm_AVISO);
   frm_AVISO.lb2.Caption := trim(pMsg);
   frm_AVISO.lb3.caption := trim(rMsg);
   frm_AVISO.ShowModal;
   frm_AVISO.Cursor := crNo;
   frm_AVISO.Update;
   frm_AVISO.BringToFront;
//  mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
//  mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdcliente');
//  mostratelaaviso('PODE DEMORAR ALGUNS INSTANTES','Favor aguardar...');
end;

function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
resultado: Real;
begin
resultado := ((ValorAtual * 100) / ValorMaximo);
Result    := FormatFloat('0%', resultado);
end;

function RetornaKiloBytes(ValorAtual: real): string;
var
resultado : real;
begin
resultado := ((ValorAtual / 1024));
Result    := FormatFloat('0.00 KBs', resultado);
end;

FUNCTION RemoveZeros(S: string): string;
var
I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do
      begin
      Dec(I);
      end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
      begin
      Inc(J);
     end;
Result := Copy(S, J, (I-J)+1);
end;

procedure ExecutaSGINICONSP;
begin
  dm_dados.zqry_sgconexao.close;
  dm_dados.zqry_sgconexao.open;
  dm_dados.zqry_SGINICONSP.Params.Clear;
  dm_dados.zqry_Sginiconsp.Close;
  dm_dados.zqry_SGINICONSP.SQL.Clear;
  dm_dados.zqry_sginiconsp.SQL.text:='execute procedure sginiconsp(:empresa, :usuario, :filial, :conexao)';
  dm_dados.zqry_sginiconsp.ParamByName('empresa').AsInteger:=dm_Dados.zqry_SGCONEXAOCODEMP.AsInteger;
  dm_dados.zqry_sginiconsp.ParamByName('filial').AsInteger:=dm_Dados.zqry_SGCONEXAOCODFILIAL.AsInteger;
  dm_dados.zqry_sginiconsp.ParamByName('usuario').value:=dm_Dados.zqry_SGCONEXAOUSER.value;
  dm_dados.zqry_sginiconsp.ParamByName('conexao').AsInteger:=dm_Dados.zqry_SGCONEXAOCURRENT_CONNECTION.AsInteger;
  dm_dados.zqry_SGINICONSP.Open;
end;

procedure memoria;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except
  end;
  Application.ProcessMessages;
end;

Function VersaoExe: String;
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


end.
