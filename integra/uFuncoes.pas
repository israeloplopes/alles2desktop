unit uFuncoes;

interface

uses  Windows, Dialogs, Messages, SysUtils, Classes, Controls, StdCtrls, Mask,
      MaskUtils, Winsock, StrUtils, ShDocVw, Forms, IdSNTP, WinInet, Graphics,
      ExtCtrls, IdHTTP, DBClient, DB, IniFiles, IdDayTime, DateUtils, ShellApi,
      ComCtrls, ToolWin, Variants, TlHelp32;


function TamanhoArquivoFormatado(const bytes: Longint): string;
function TamanhoArquivoBytes(arquivo: string): Int64;
function isProcessRunning(exeFileName: string): Boolean;
function IsDllRegistered(dllName : String) : Boolean;
Function VersaoExe: String;
function ZerarTxt(FileName: String): Boolean;
function PegaTimeZone: string;
function RemoveAcento(aText : string) : string;
Function tirapontos(texto : String) : String;
function StrZero(const strvalor: string; const intComprimento: integer): string;
procedure MostraTelaAguarde(pMsg: WideString);
procedure MostraTelaAviso(pMsg, rMsg :WideString);
procedure MostraTelaNotifica(pMSG, rMSG : WideString);
procedure FechaTelaAguarde();
procedure Memoria;

implementation

// permite formatar o tamanho de um arquivo em bytes em


uses uAguarde, uAviso, uNotifica;// Kb, Mb ou Gb

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

function TamanhoArquivoFormatado(const bytes: Longint): string;
const
   b  = 1;         // byte
   kb = 1024 * b;  // kilobyte
   mb = 1024 * kb; // megabyte
   gb = 1024 * mb; // gigabyte
begin
   if bytes > gb then
      Result := FormatFloat('#.## GB', bytes / gb)
   else if bytes > mb then
      Result := FormatFloat('#.## MB', bytes / mb)
   else if bytes > kb then
      Result := FormatFloat('#.## KB', bytes / kb)
   else
      Result := FormatFloat('#.## bytes', bytes);
end;

// funÁ„o que permite obter o tamanho de um arquivo em bytes
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

procedure MostraTelaAguarde(pMsg: WideString);
begin
   Application.CreateForm(Tfrm_Aguarde, frm_Aguarde);
   frm_Aguarde.lb2.Caption := trim(pMsg);
   frm_Aguarde.Show;
   frm_Aguarde.Cursor := crHourGlass;
   frm_Aguarde.Update;
   frm_Aguarde.BringToFront;
end;

procedure MostraTelaAviso(pMsg, rMsg: WideString);
begin
   Application.CreateForm(Tfrm_AVISO, frm_AVISO);
   frm_AVISO.lb2.Caption := trim(pMsg);
   frm_AVISO.lb3.caption := trim(rMsg);
   frm_AVISO.Show;
   frm_AVISO.Cursor := crNo;
   frm_AVISO.Update;
   frm_AVISO.BringToFront;
//  mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
//  mostratelaaviso('Nada localizado com base nas informaÁıes','tab.: vdcliente');
//  mostratelaaviso('PODE DEMORAR ALGUNS INSTANTES','Favor aguardar...');
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
//  mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
//  mostratelaaviso('Nada localizado com base nas informaÁıes','tab.: vdcliente');
//  mostratelaaviso('PODE DEMORAR ALGUNS INSTANTES','Favor aguardar...');
end;


procedure Memoria;
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

function isProcessRunning(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function IsDllRegistered(dllName : String) : Boolean;
var
  hModule : LONG;
begin
  Result := False;

  // Em versıes antigas coloque PChar no lugar de PWideChar.
  hModule := LoadLibrary(PWideChar(dllName));

  if (hModule > 32) Then
  begin
    FreeLibrary(hModule);
    Result := True;
  end
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

Function CurrentYear: Integer;
var
  SystemTime: TSystemTime;
begin
  GetLocalTime(SystemTime);
  Result := SystemTime.wYear;
end;

Function CurrentMonth: Integer;
var
  SystemTime: TSystemTime;
begin
  GetLocalTime(SystemTime);
  Result := SystemTime.wMonth;
end;

function GetFileList(const Path: string): TStringList;
var
   I: Integer;
   SearchRec: TSearchRec;
begin
   Result := TStringList.Create;
   try
     I := FindFirst(Path, 0, SearchRec);
     while I = 0 do
     begin
       Result.Add(copy(SearchRec.Name,1,Pos('.',SearchRec.Name)-1));  // alterar esta linha
       I := FindNext(SearchRec);
     end;
   except
     Result.Free;
     raise;
   end;
end;

function PegaTimeZone: string;
var
   TimeZone: TTimeZoneInformation;
begin
   GetTimeZoneInformation(TimeZone);
   Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
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

function RemoveAcento(aText : string) : string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸Ò˝¿¬ ‘€√’¡…Õ”⁄«‹—›';
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

end.
