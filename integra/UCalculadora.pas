unit UCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Printers,RichEdit,
  Mask, Spin, Menus, Grids;

type
  TfrmCalculadora = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabCalculadora: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    edtResultado: TRichEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    btnSoma: TButton;
    btnSubtrai: TButton;
    btnMultiplica: TButton;
    btnDivide: TButton;
    Button14: TButton;
    btnLimpar_Historico: TButton;
    Button16: TButton;
    btnPercentual: TButton;
    btnDiv: TButton;
    btnMod: TButton;
    pnlVl_Final: TPanel;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    PageControl2: TPageControl;
    TabPotencia: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Timer1: TTimer;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button11: TButton;
    edtVl_Base: TSpinEdit;
    edtVl_Potencia: TSpinEdit;
    pnlVl_Potencia: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtVl_Media: TSpinEdit;
    StringGrid1: TStringGrid;
    Button13: TButton;
    pnlVl_Soma_Media: TPanel;
    pnlQt_Media: TPanel;
    pnlVl_Total_Media: TPanel;
    Panel9: TPanel;
    lblQt_Difer: TLabel;
    cmbDatas: TComboBox;
    edtQt_Dias_Datas: TSpinEdit;
    dtpDt_Calculo: TDateTimePicker;
    dtpDt_Calculo_1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Button15: TButton;
    edtDt_Calculo_1: TMaskEdit;
    pnlQt_Difer_Datas: TPanel;
    Panel10: TPanel;
    lblTotal_Hora: TLabel;
    cmbCalcula_Hora: TComboBox;
    edtSoma_Horas: TSpinEdit;
    dtpHoras: TDateTimePicker;
    dtpHoras_1: TDateTimePicker;
    Button17: TButton;
    MaskEdit1: TMaskEdit;
    dtpResultado_Horas: TDateTimePicker;
    pnlTotal_Hora: TPanel;
    ckbTimer_Ativado: TCheckBox;
    Timer2: TTimer;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    pnlCronometro: TPanel;
    btnInicia_Cronometro: TButton;
    Timer3: TTimer;
    Label7: TLabel;
    txtCasas_Decimais: TSpinEdit;
    btnZerar: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtraiClick(Sender: TObject);
    FUNCTION TIRA_PONTO_VIRGULA(NUMERO:String):String;
    procedure btnMultiplicaClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLimpar_HistoricoClick(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PrintRichEdit(const Caption: string;const RichEdt: TRichEdit);
    procedure Cor_Total;
    procedure Cor_Normal;
    procedure btnPercentualClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Calcula_Media;
    function Testa_Data(P_Data:String):String;
    procedure cmbDatasClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure cmbCalcula_HoraClick(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Deleta_Resultado;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckbTimer_AtivadoClick(Sender: TObject);
    function Tempo_Restante(P_Hora_Inicio,P_Hora_Atual:TDateTime;P_Tempo_Atual:String):String;
    procedure Timer2Timer(Sender: TObject);
    procedure btnInicia_CronometroClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure txtCasas_DecimaisChange(Sender: TObject);
    procedure btnZerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;
  V_Entrada, V_Atual, V_Resultado,V_Vl_Media : Extended;
  i, V_Entrada_Div, V_Atual_Div, V_Resultado_Div, V_Qt_Media : Integer;
  V_Operador,V_Ultimo_Operador,V_Tempo_Decorrido,V_Casas_Decimais:String;
  V_Hora_Inicial, V_Hora_Inicial_Cronometro:TDateTime;
  
implementation

uses Math, DateUtils;

{$R *.dfm}


function TfrmCalculadora.TIRA_PONTO_VIRGULA(NUMERO: String): String;
VAR I:INTEGER;
BEGIN
Result:='';
FOR I:=1 TO LENGTH(NUMERO) DO
  BEGIN
   IF Copy(NUMERO,I,1) <> '.' THEN
    IF Copy(NUMERO,I,1) <> ',' THEN
      IF Copy(NUMERO,I,1) <> ' ' THEN
          IF Copy(NUMERO,I,1) <> '/' THEN
            IF Copy(NUMERO,I,1) <> '(' THEN
              IF Copy(NUMERO,I,1) <> ')' THEN
                IF Copy(NUMERO,I,1) <> ':' THEN
                  Result:=Result + Copy(NUMERO,I,1);
  END;

end;

procedure TfrmCalculadora.btnSomaClick(Sender: TObject);
begin

  if V_Operador = '' then
  begin
    V_Operador := '+';
  end;

  try
    V_Entrada := StrToFloat(Edit1.Text);
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual := 0;
  end;

  V_Resultado := V_Entrada + V_Atual;
  V_Atual := V_Resultado;
  V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));

  if V_Atual = 0 then
  begin
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
  end
  else
  begin
    if V_Operador = '+' then
    begin
      Deleta_Resultado;
    end
    else
    begin
      V_Operador := '+';
    end;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada) + ' + ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Soma: ' + FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado >= 0 then
  begin
     pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado);

  Edit1.Clear;

  edtResultado.SelStart := Perform(EM_LINEINDEX, (edtResultado.Lines.Count-1), 0);

  V_Ultimo_Operador := '+';

end;

procedure TfrmCalculadora.btnSubtraiClick(Sender: TObject);
begin

  if V_Operador = '' then
  begin
    V_Operador := '-';
  end;

  try
    V_Entrada := StrToFloat(Edit1.Text);
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual := 0;
  end;

  if V_Atual = 0 then
  begin
    V_Resultado := V_Entrada;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
  end
  else
  begin
    if V_Operador = '-' then
    begin
      Deleta_Resultado;
    end
    else
    begin
      V_Operador := '-';
    end;
    V_Resultado := V_Atual - V_Entrada;
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada) + ' - ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Subtração: ' + FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado);
  Edit1.Clear;

  V_Ultimo_Operador := '-';

end;

procedure TfrmCalculadora.btnMultiplicaClick(Sender: TObject);
begin

  V_Operador := '*';

  try
    V_Entrada := StrToFloat(Edit1.Text);
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual := 0;
  end;

  if V_Atual = 0 then
  begin
    V_Resultado := V_Entrada;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
  end
  else
  begin
    V_Resultado := V_Atual * V_Entrada;
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada) + ' * ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Multiplicação: ' + FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado);
  Edit1.Clear;

  V_Ultimo_Operador := '*';

end;


procedure TfrmCalculadora.btnDivideClick(Sender: TObject);
begin

  V_Operador := '/';

  try
    V_Entrada := StrToFloat(Edit1.Text);
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual := 0;
  end;

  if V_Atual = 0 then
  begin
    V_Resultado := V_Entrada;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
  end
  else
  begin
    V_Resultado := V_Atual / V_Entrada;
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada) + ' / ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Divisão: ' + FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado);
  Edit1.Clear;

  V_Ultimo_Operador := '/';
  
end;

procedure TfrmCalculadora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ADD then
  begin
    btnSoma.Font.Color := clRed;
    btnSoma.OnClick(Self);
  end
  else if Key = VK_SUBTRACT then
  begin
    btnSubtrai.Font.Color := clRed;
    btnSubtrai.OnClick(Self);
  end
  else if Key = VK_MULTIPLY then
  begin
    btnMultiplica.Font.Color := clRed;
    btnMultiplica.OnClick(Self);
  end
  else if Key = VK_DIVIDE then
  begin
    btnDivide.Font.Color := clRed;
    btnDivide.OnClick(Self);
  end
  else if Key = VK_ESCAPE then
  begin
    btnLimpar_Historico.OnClick(Self);
  end
  else if Key = VK_RETURN then
  begin
    if V_Ultimo_Operador = '+' then
    begin
      btnSomaClick(Self);
    end
    else if V_Ultimo_Operador = '-' then
    begin
      btnSubtraiClick(Self);
    end
    else if V_Ultimo_Operador = '*' then
    begin
      btnMultiplicaClick(Self);
    end
    else if V_Ultimo_Operador = '/' then
    begin
      btnDivideClick(Self);
    end;
  end;

end;

procedure TfrmCalculadora.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ADD then
  begin
    btnSoma.Font.Color := clBlue;
    Edit1.Clear;
  end
  else if Key = VK_SUBTRACT then
  begin
    btnSubtrai.Font.Color := clBlue;
    Edit1.Clear;
  end
  else if Key = VK_MULTIPLY then
  begin
    btnMultiplica.Font.Color := clBlue;
    Edit1.Clear;
  end
  else if Key = VK_DIVIDE then
  begin
    btnDivide.Font.Color := clBlue;
    Edit1.Clear;
  end;

end;

procedure TfrmCalculadora.btnLimpar_HistoricoClick(Sender: TObject);
begin

  edtResultado.Clear;
  Edit1.SetFocus;
  V_Atual := 0;
  V_Atual_Div := 0;

end;

procedure TfrmCalculadora.Button14Click(Sender: TObject);
begin

  edtResultado.Lines.Add('------------------------');
  edtResultado.Lines.Add('0' + ' = ');
  V_Atual := 0;
  V_Atual_Div := 0;
  Edit1.SetFocus;

end;

procedure TfrmCalculadora.Button10Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '0';

end;

procedure TfrmCalculadora.Button12Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + ',';

end;

procedure TfrmCalculadora.Button7Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '1';

end;

procedure TfrmCalculadora.Button8Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '2';

end;

procedure TfrmCalculadora.Button9Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '3';

end;

procedure TfrmCalculadora.Button4Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '4';

end;

procedure TfrmCalculadora.Button5Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '5';

end;

procedure TfrmCalculadora.Button6Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '6';

end;

procedure TfrmCalculadora.Button1Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '7';

end;

procedure TfrmCalculadora.Button2Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '8';

end;

procedure TfrmCalculadora.Button3Click(Sender: TObject);
begin

  Edit1.Text := Edit1.Text + '9';

end;

procedure TfrmCalculadora.PrintRichEdit(const Caption: string;const RichEdt: TRichEdit);
// Requer a Printers e RichEdit declaradas na clausula uses da unit
var
  Range: TFormatRange;
  LastChar, MaxLen, LogX, LogY, OldMap: Integer;
begin

  FillChar(Range, SizeOf(TFormatRange), 0);
  with Printer, Range do
  begin
    BeginDoc;
    hdc := Handle;
    hdcTarget := hdc;
    LogX := GetDeviceCaps(Handle, LOGPIXELSX);
    LogY := GetDeviceCaps(Handle, LOGPIXELSY);
    if IsRectEmpty(RichEdt.PageRect) then
    begin
      rc.right := PageWidth * 1440 div LogX;
      rc.bottom := PageHeight * 1440 div LogY;
    end
    else
    begin
      rc.left := RichEdt.PageRect.Left * 1440 div LogX;
      rc.top := RichEdt.PageRect.Top * 1440 div LogY;
      rc.right := RichEdt.PageRect.Right * 1440 div LogX;
      rc.bottom := RichEdt.PageRect.Bottom * 1440 div LogY;
    end;

    rcPage := rc;
    Title := Caption;
    LastChar := 0;
    MaxLen := RichEdt.GetTextLen;
    chrg.cpMax := -1;
    OldMap := SetMapMode(hdc, MM_TEXT);
    SendMessage(RichEdt.Handle, EM_FORMATRANGE, 0, 0);
    try
    repeat
      chrg.cpMin := LastChar;
      LastChar := SendMessage(RichEdt.Handle, EM_FORMATRANGE, 1,Longint(@Range));
      if (LastChar < MaxLen) and (LastChar < -1) then
      begin
        NewPage;
      end;
      until (LastChar = MaxLen) or (LastChar = -1);
      EndDoc;
      finally
      SendMessage(RichEdt.Handle, EM_FORMATRANGE, 0, 0);
      SetMapMode(hdc, OldMap);
    end;
  end;

end;

procedure TfrmCalculadora.Cor_Total;
begin

  if V_Resultado >= 0 then
  begin
    edtResultado.SelAttributes.Color:=clBLue; // Cor Azul
  end
  else
  begin
    edtResultado.SelAttributes.Color:=clRed; // Cor Azul
  end;
  edtResultado.SelAttributes.Style:=[fsBold]; // Negrito e sublinhado

end;

procedure TfrmCalculadora.Cor_Normal;
begin

  edtResultado.SelAttributes.Style:=[]; // Volta ao estilo normal
  edtResultado.SelAttributes.Color:=clBlack; // Volta à cor normal

end;

procedure TfrmCalculadora.btnPercentualClick(Sender: TObject);
begin

  try
    V_Entrada := StrToFloat(Edit1.Text);
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual := 0;
  end;

  if V_Atual = 0 then
  begin
    V_Resultado := V_Entrada;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
  end
  else
  begin
    V_Resultado := ((V_Atual * V_Entrada)/100);
    V_Atual := V_Resultado;
    V_Atual_Div := StrToInt(FloatToStr(Int(V_Atual)));
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada) + ' % ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('%: ' + FormatFloat(V_Casas_Decimais,V_Resultado) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado);
  Edit1.Clear;

end;

procedure TfrmCalculadora.btnDivClick(Sender: TObject);
begin

  try
    V_Entrada_Div := Trunc(StrToFloat(Edit1.Text));
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual_Div := 0;
  end;

  if V_Atual_Div = 0 then
  begin
    V_Resultado_Div := V_Entrada_Div;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado_Div) + ' = ');
    V_Atual_Div := V_Resultado_Div;
    V_Atual := V_Resultado_Div;
  end
  else
  begin
    V_Resultado_Div := (V_Atual_Div div V_Entrada_Div);
    V_Atual_Div := V_Resultado_Div;
    V_Atual := V_Resultado_Div;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada_Div) + ' D ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Inteiro: ' + FormatFloat(V_Casas_Decimais,V_Resultado_Div) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado_Div >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado_Div);
  Edit1.Clear;

end;

procedure TfrmCalculadora.btnModClick(Sender: TObject);
begin

  try
    V_Entrada_Div := Trunc(StrToFloat(Edit1.Text));
  except
    showmessage('Não é um valor numérico');
    Edit1.Text := '';
    Exit;
  end;

  if edtResultado.Lines.Count = 0 then
  begin
    V_Atual_Div := 0;
  end;

  if V_Atual_Div = 0 then
  begin
    V_Resultado_Div := V_Entrada_Div;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Resultado_Div) + ' = ');
    V_Atual_Div := V_Resultado_Div;
    V_Atual := V_Resultado_Div;
  end
  else
  begin
    V_Resultado_Div := V_Atual_Div mod V_Entrada_Div;
    V_Atual_Div := V_Resultado_Div;
    V_Atual := V_Resultado_Div;
    edtResultado.Lines.Add(FormatFloat(V_Casas_Decimais,V_Entrada_Div) + ' M ');
    edtResultado.Lines.Add('------------------------');
    Cor_Total;
    edtResultado.Lines.Add('Resto: ' + FormatFloat(V_Casas_Decimais,V_Resultado_Div) + ' = ');
    Cor_Normal;
  end;

  if V_Resultado_Div >= 0 then
  begin
    pnlVl_Final.Font.Color := clBlue;
  end
  else
  begin
    pnlVl_Final.Font.Color := clRed;
  end;
  pnlVl_Final.Caption := FormatFloat(V_Casas_Decimais,V_Resultado_Div);
  Edit1.Clear;

end;

procedure TfrmCalculadora.Button16Click(Sender: TObject);
begin

  edtResultado.Print('RESULTADO ' + #10 + Text);
  
end;

procedure TfrmCalculadora.Button11Click(Sender: TObject);
var
  V_Retorno : Extended;

begin

  V_Retorno := Power(edtVl_Base.Value,edtVl_Potencia.Value);
  pnlVl_Potencia.Caption := FormatFloat('#,#00',V_Retorno);

end;

procedure TfrmCalculadora.Button13Click(Sender: TObject);
begin

  if StringGrid1.Cells[0,0] = '' then
  begin
    StringGrid1.Cells[0,0] := edtVl_Media.Text;
  end
  else
  begin
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    StringGrid1.Update;
    StringGrid1.Cells[0,StringGrid1.RowCount-1] := edtVl_Media.Text;
  end;

  Calcula_Media;
  edtVl_Media.SetFocus;

end;

procedure TfrmCalculadora.Calcula_Media;
begin

  V_Vl_Media := 0;
  V_Qt_Media := 0;

  for i := 0 to StringGrid1.RowCount-1 do
  begin
    V_Vl_Media := V_Vl_Media + StrToFloat(StringGrid1.Cells[0,i]);
    V_Qt_Media := V_Qt_Media + 1;
  end;
  pnlVl_Total_Media.Caption := FormatFloat('#,#00.0000',(V_Vl_Media / V_Qt_Media));
  pnlVl_Soma_Media.Caption := FormatFloat('#,#00',V_Vl_Media);
  pnlQt_Media.Caption := FormatFloat('#,#00', V_Qt_Media);

end;

function TfrmCalculadora.Testa_Data(P_Data: String): String;
var
  V_Data : String;
  V_Data_Correta : TDate;
  V_Acerto : Boolean;

begin

  //verificando se a data está totalmente preenchida
  V_Acerto := False;

  if V_Acerto = False then
  begin
    if (Copy(P_Data,7,4) = '    ') or (Copy(P_Data,7,4) = '____')   then
    begin
      V_Data := Copy(P_Data,1,6) + FormatDateTime('YYYY',Date);
      V_Acerto := True;
    end;
  end;

  //verificando se a data está com o ano incompleto
  if V_Acerto = False then
  begin
    if (Copy(P_Data,8,3) = '   ') or (Copy(P_Data,8,3) = '___') then
    begin
      V_Data := Copy(P_Data,1,6) + Copy(FormatDateTime('YYYY',Date),1,3) + Copy(P_Data,7,1);
      V_Acerto := True;
    end;
  end;

  //verificando se a data está com o ano incompleto
  if V_Acerto = False then
  begin
    if (Copy(P_Data,9,2) = '  ') or (Copy(P_Data,9,2) = '__') then
    begin
      if StrToInt(Copy(P_Data,7,2)) >= 40 then
      begin
        V_Data := Copy(P_Data,1,6) + '19' + Copy(P_Data,7,2);
      end
      else
      begin
        V_Data := Copy(P_Data,1,6) + Copy(FormatDateTime('YYYY',Date),1,2) + Copy(P_Data,7,2);
      end;
      V_Acerto := True;
    end;
  end;

  if V_Acerto = False then
  begin
    V_Data := P_Data;
  end;

  try
    V_Data_Correta := StrToDate(V_Data);
    Result := V_Data;
  except
    ShowMessage('Data incorreta');
    Result := 'FALSE';
  end;

end;

procedure TfrmCalculadora.cmbDatasClick(Sender: TObject);
begin

  if cmbDatas.Text = 'SOMA DIAS A UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SUBTRAI DIAS DE UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SOMA MESES A UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SUBTRAI MESES DE UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SOMA ANOS A UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SUBTRAI ANOS DE UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SOMA SEMANAS A UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'SUBTRAI SEMANAS DE UMA DATA' then
  begin
    edtQt_Dias_Datas.Left := 5;
    edtQt_Dias_Datas.Top := 34;
    edtQt_Dias_Datas.Visible := True;
    dtpDt_Calculo_1.Visible := False;
    MonthCalendar1.Visible := True;
    pnlQt_Difer_Datas.Visible := False;
    lblQt_Difer.Visible := False;
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'DIFERENÇA DE DIAS ENTRE DUAS DATAS' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := True;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de dias entre datas:';
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'DIFERENÇA DE SEMANAS ENTRE DUAS DATAS' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := True;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de semanas entre datas:';
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'DIFERENÇA DE MESES ENTRE DUAS DATAS' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := True;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de meses entre datas:';
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'DIFERENÇA DE ANOS ENTRE DUAS DATAS' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := True;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de anos entre datas:';
    pnlQt_Difer_Datas.Width := 106;
    pnlQt_Difer_Datas.Left := 319;
  end
  else if cmbDatas.Text = 'CALCULA IDADE' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := false;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de anos entre datas:';
    pnlQt_Difer_Datas.Width := 330;
    pnlQt_Difer_Datas.Left := 95;
  end
  else if cmbDatas.Text = 'DIFERENÇA REAL ENTRE DUAS DATAS (ANOS/MESES/DIAS)' then
  begin
    dtpDt_Calculo_1.Left := 5;
    dtpDt_Calculo_1.Top := 34;
    dtpDt_Calculo_1.Visible := True;
    edtQt_Dias_Datas.Visible := False;
    MonthCalendar1.Visible := False;
    pnlQt_Difer_Datas.Visible := True;
    lblQt_Difer.Visible := True;
    lblQt_Difer.Caption := 'Diferença de dias entre datas:';
    pnlQt_Difer_Datas.Width := 330;
    pnlQt_Difer_Datas.Left := 95;
  end;

end;

procedure TfrmCalculadora.Button15Click(Sender: TObject);
var
  Dt_Calc_Mes_Idade : TDate;
  V_Qt_Anos,V_Qt_Meses,V_Qt_Dias: Integer;

begin

  if cmbDatas.Text = 'SOMA DIAS A UMA DATA' then
  begin
    MonthCalendar1.Date := IncDay(dtpDt_Calculo.Date,edtQt_Dias_Datas.Value);
  end
  else if cmbDatas.Text = 'SUBTRAI DIAS DE UMA DATA' then
  begin
    MonthCalendar1.Date := IncDay(dtpDt_Calculo.Date,(edtQt_Dias_Datas.Value*(-1)));
  end
  else if cmbDatas.Text = 'SOMA MESES A UMA DATA' then
  begin
    MonthCalendar1.Date := IncMonth(dtpDt_Calculo.Date,edtQt_Dias_Datas.Value);
  end
  else if cmbDatas.Text = 'SUBTRAI MESES DE UMA DATA' then
  begin
    MonthCalendar1.Date := IncMonth(dtpDt_Calculo.Date,(edtQt_Dias_Datas.Value*(-1)));
  end
  else if cmbDatas.Text = 'SOMA ANOS A UMA DATA' then
  begin
    MonthCalendar1.Date := IncYear(dtpDt_Calculo.Date,edtQt_Dias_Datas.Value);
  end
  else if cmbDatas.Text = 'SUBTRAI ANOS DE UMA DATA' then
  begin
    MonthCalendar1.Date := IncYear(dtpDt_Calculo.Date,(edtQt_Dias_Datas.Value*(-1)));
  end
  else if cmbDatas.Text = 'SOMA SEMANAS A UMA DATA' then
  begin
    MonthCalendar1.Date := IncWeek(dtpDt_Calculo.Date,edtQt_Dias_Datas.Value);
  end
  else if cmbDatas.Text = 'SUBTRAI SEMANAS DE UMA DATA' then
  begin
    MonthCalendar1.Date := IncWeek(dtpDt_Calculo.Date,(edtQt_Dias_Datas.Value*(-1)));
  end
  else if cmbDatas.Text = 'DIFERENÇA DE DIAS ENTRE DUAS DATAS' then
  begin
    pnlQt_Difer_Datas.Caption :=  IntToStr(DaysBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date));
  end
  else if cmbDatas.Text = 'DIFERENÇA DE SEMANAS ENTRE DUAS DATAS' then
  begin
    pnlQt_Difer_Datas.Caption :=  IntToStr(WeeksBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date));
  end
  else if cmbDatas.Text = 'DIFERENÇA DE MESES ENTRE DUAS DATAS' then
  begin
    pnlQt_Difer_Datas.Caption := IntToStr(MonthsBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date));
  end
  else if cmbDatas.Text = 'DIFERENÇA DE ANOS ENTRE DUAS DATAS' then
  begin
    pnlQt_Difer_Datas.Caption :=  IntToStr(YearsBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date));
  end
  else if cmbDatas.Text = 'CALCULA IDADE' then
  begin
    if StrToInt(FormatDateTime('MM',dtpDt_Calculo.Date)) < StrToInt(FormatDateTime('MM',Date)) then
    begin

      //verificar o calculo, está errado na hora de transformar dias acima da quantidade de dia do mes
      //para meses e dias.

      V_Qt_Anos := YearsBetween(dtpDt_Calculo.Date,Date);
      V_Qt_Meses := MonthsBetween(Date,StrToDate(FormatDateTime('DD/MM',dtpDt_Calculo.Date) + '/' +
                                                 FormatDateTime('YYYY',Date )));
      V_Qt_Dias := (DaysInMonth(dtpDt_Calculo.Date) - StrToInt(FormatDateTime('DD',dtpDt_Calculo.Date))) +
                   StrToInt(FormatDateTime('DD',Date));

      if DaysInMonth(dtpDt_Calculo.Date) < V_Qt_Dias then
      begin
        V_Qt_Meses := V_Qt_Meses + (V_Qt_Dias div (DaysInMonth(dtpDt_Calculo.Date)));
        V_Qt_Dias := V_Qt_Dias - DaysInMonth(dtpDt_Calculo.Date);
      end;

      pnlQt_Difer_Datas.Caption :=  IntToStr(V_Qt_Anos) + ' anos '+
                                    IntToStr(V_Qt_Meses) + ' meses e '+
                                    IntToStr(V_Qt_Dias) + ' dias';
    end
    else
    begin
      V_Qt_Anos := YearsBetween(dtpDt_Calculo.Date,Date);
      V_Qt_Meses := MonthsBetween(StrToDate(FormatDateTime('DD/MM',dtpDt_Calculo.Date  ) + '/' +
                                    IntToStr(StrToInt( FormatDateTime( 'YYYY',Date ) )-1) ),Date);
      V_Qt_Dias := (DaysInMonth(dtpDt_Calculo.Date) - StrToInt(FormatDateTime('DD',dtpDt_Calculo.Date))) +
                   StrToInt(FormatDateTime('DD',Date));
      if DaysInMonth(dtpDt_Calculo.Date) < V_Qt_Dias then
      begin                                     
        V_Qt_Meses := V_Qt_Meses + (V_Qt_Dias div (DaysInMonth(dtpDt_Calculo.Date)));
        V_Qt_Dias := V_Qt_Dias - DaysInMonth(dtpDt_Calculo.Date);
      end;

      pnlQt_Difer_Datas.Caption := IntToStr(V_Qt_Anos)  + ' anos ' +
                                   IntToStr(V_Qt_Meses) + ' meses e ' +
                                   IntToStr(V_Qt_Dias) + ' dias';
    end;
  end
  else if cmbDatas.Text = 'DIFERENÇA REAL ENTRE DUAS DATAS (ANOS/MESES/DIAS)' then
  begin
    if StrToInt(FormatDateTime('MM',dtpDt_Calculo.Date)) < StrToInt(FormatDateTime('MM',dtpDt_Calculo_1.Date)) then
    begin

      //verificar o calculo, está errado na hora de transformar dias acima da quantidade de dia do mes
      //para meses e dias.

      V_Qt_Anos := YearsBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date);
      V_Qt_Meses := MonthsBetween(dtpDt_Calculo_1.Date,StrToDate(FormatDateTime('DD/MM',dtpDt_Calculo.Date) + '/' +
                                                 FormatDateTime('YYYY',dtpDt_Calculo_1.Date)));
      V_Qt_Dias := (DaysInMonth(dtpDt_Calculo.Date) - StrToInt(FormatDateTime('DD',dtpDt_Calculo.Date))) +
                   StrToInt(FormatDateTime('DD',dtpDt_Calculo_1.Date));

      if DaysInMonth(dtpDt_Calculo.Date) < V_Qt_Dias then
      begin
        V_Qt_Meses := V_Qt_Meses + (V_Qt_Dias div (DaysInMonth(dtpDt_Calculo.Date)));
        V_Qt_Dias := V_Qt_Dias - DaysInMonth(dtpDt_Calculo.Date);
      end;

      pnlQt_Difer_Datas.Caption :=  IntToStr(V_Qt_Anos) + ' anos '+
                                    IntToStr(V_Qt_Meses) + ' meses e '+
                                    IntToStr(V_Qt_Dias) + ' dias';
    end
    else
    begin
      V_Qt_Anos := YearsBetween(dtpDt_Calculo.Date,dtpDt_Calculo_1.Date);
      V_Qt_Meses := MonthsBetween(StrToDate(FormatDateTime('DD/MM',dtpDt_Calculo.Date  ) + '/' +
                                    IntToStr(StrToInt( FormatDateTime( 'YYYY',dtpDt_Calculo_1.Date))-1)),dtpDt_Calculo_1.Date);
      V_Qt_Dias := (DaysInMonth(dtpDt_Calculo.Date) - StrToInt(FormatDateTime('DD',dtpDt_Calculo.Date))) +
                   StrToInt(FormatDateTime('DD',dtpDt_Calculo_1.Date));
      if DaysInMonth(dtpDt_Calculo.Date) < V_Qt_Dias then
      begin
        V_Qt_Meses := V_Qt_Meses + (V_Qt_Dias div (DaysInMonth(dtpDt_Calculo.Date)));
        V_Qt_Dias := V_Qt_Dias - DaysInMonth(dtpDt_Calculo.Date);
      end;

      pnlQt_Difer_Datas.Caption := IntToStr(V_Qt_Anos)  + ' anos ' +
                                   IntToStr(V_Qt_Meses) + ' meses e ' +
                                   IntToStr(V_Qt_Dias) + ' dias';
    end;
  end;

end;

procedure TfrmCalculadora.cmbCalcula_HoraClick(Sender: TObject);
begin

  ckbTimer_Ativado.Checked := False;
  if cmbCalcula_Hora.Text = 'SOMA SEGUNDOS A UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI SEGUNDOS DE UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'SOMA MINUTOS A UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI MINUTOS DE UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'SOMA HORAS A UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI HORAS DE UMA HORA' then
  begin
    edtSoma_Horas.Visible := True;
    edtSoma_Horas.Top := 34;
    edtSoma_Horas.Left := 5;
    dtpHoras_1.Visible := False;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE SEGUNDOS ENTRE DUAS HORAS' then
  begin
    edtSoma_Horas.Visible := False;
    dtpHoras_1.Top := 34;
    dtpHoras_1.Left := 5;
    dtpHoras_1.Visible := True;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE MINUTOS ENTRE DUAS HORAS' then
  begin
    edtSoma_Horas.Visible := False;
    dtpHoras_1.Top := 34;
    dtpHoras_1.Left := 5;
    dtpHoras_1.Visible := True;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE HORAS ENTRE DUAS HORAS' then
  begin
    edtSoma_Horas.Visible := False;
    dtpHoras_1.Top := 34;
    dtpHoras_1.Left := 5;
    dtpHoras_1.Visible := True;
    ckbTimer_Ativado.Visible := False;
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA ENTRE DUAS HORAS' then
  begin
    edtSoma_Horas.Visible := False;
    dtpHoras_1.Top := 34;
    dtpHoras_1.Left := 5;
    dtpHoras_1.Visible := True;
    ckbTimer_Ativado.Visible := True;
  end;

end;

procedure TfrmCalculadora.Button17Click(Sender: TObject);
begin

  if cmbCalcula_Hora.Text = 'SOMA SEGUNDOS A UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncSecond(dtpHoras.Time,edtSoma_Horas.Value);
    lblTotal_Hora.Caption := 'SOMA SEGUNDOS A UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI SEGUNDOS DE UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncSecond(dtpHoras.Time,(edtSoma_Horas.Value*(-1)));
    lblTotal_Hora.Caption := 'SUBTRAI SEGUNDOS DE UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'SOMA MINUTOS A UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncMinute(dtpHoras.Time,edtSoma_Horas.Value);
    lblTotal_Hora.Caption := 'SOMA MINUTOS A UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI MINUTOS DE UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncMinute(dtpHoras.Time,(edtSoma_Horas.Value*(-1)));
    lblTotal_Hora.Caption := 'SUBTRAI MINUTOS DE UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'SOMA HORAS A UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncHour(dtpHoras.Time,edtSoma_Horas.Value);
    lblTotal_Hora.Caption := 'SOMA HORAS A UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'SUBTRAI HORAS DE UMA HORA' then
  begin
    dtpResultado_Horas.Visible := True;
    pnlTotal_Hora.Visible := False;
    dtpResultado_Horas.Time := IncHour(dtpHoras.Time,(edtSoma_Horas.Value*(-1)));
    lblTotal_Hora.Caption := 'SUBTRAI HORAS DE UMA HORA:';
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE SEGUNDOS ENTRE DUAS HORAS' then
  begin
    dtpResultado_Horas.Visible := False;
    pnlTotal_Hora.Visible := True;
    pnlTotal_Hora.Caption := IntToStr(SecondsBetween(dtpHoras.Time,dtpHoras_1.Time));
    lblTotal_Hora.Caption := 'DIFERENÇA DE SEGUNDOS ENTRE DUAS HORAS:';
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE MINUTOS ENTRE DUAS HORAS' then
  begin
    dtpResultado_Horas.Visible := False;
    pnlTotal_Hora.Visible := True;
    pnlTotal_Hora.Caption := IntToStr(MinutesBetween(dtpHoras.Time,dtpHoras_1.Time));
    lblTotal_Hora.Caption := 'DIFERENÇA DE MINUTOS ENTRE DUAS HORAS:';
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA DE HORAS ENTRE DUAS HORAS' then
  begin
    dtpResultado_Horas.Visible := False;
    pnlTotal_Hora.Visible := True;
    pnlTotal_Hora.Caption := IntToStr(HoursBetween(dtpHoras.Time,dtpHoras_1.Time));
    lblTotal_Hora.Caption := 'DIFERENÇA DE HORAS ENTRE DUAS HORAS:';
  end
  else if cmbCalcula_Hora.Text = 'DIFERENÇA ENTRE DUAS HORAS' then
  begin
    dtpResultado_Horas.Visible := true;
    pnlTotal_Hora.Visible := false;
    dtpResultado_Horas.Time := (StrToTime('23:59:59') + StrToTime('00:00:01')-dtpHoras.Time)+dtpHoras_1.Time;
    lblTotal_Hora.Caption := 'DIFERENÇA ENTRE DUAS HORAS:';
  end;

  lblTotal_Hora.Visible := True;

end;

procedure TfrmCalculadora.TabSheet3Show(Sender: TObject);
begin

  dtpDt_Calculo.Date := Date;
  dtpDt_Calculo_1.Date := Date;
  MonthCalendar1.Date := Date;
  
end;

procedure TfrmCalculadora.TabSheet4Show(Sender: TObject);
begin

  dtpHoras.Time := Time;
  dtpHoras_1.Time := Time;
  
end;

procedure TfrmCalculadora.Deleta_Resultado;
begin

  if edtResultado.Lines.Count = 0 then
  begin
    //não faz nada
  end
  else if edtResultado.Lines.Count = 1 then
  begin
    edtResultado.Lines.Delete(edtResultado.Lines.Count-1);
  end
  else if edtResultado.Lines.Count > 1 then
  begin
    edtResultado.Lines.Delete(edtResultado.Lines.Count-1);
    edtResultado.Lines.Delete(edtResultado.Lines.Count-1);
  end;

end;

procedure TfrmCalculadora.Timer1Timer(Sender: TObject);
begin

  StatusBar1.Panels[2].Text := TimeToStr(Time);
  if ckbTimer_Ativado.Checked then
  begin
    dtpHoras.Time := Time;
    Button17Click(Self);
    if FormatDateTime('HH:NN:SS', dtpResultado_Horas.Time) = '00:00:00' then
    begin
      frmCalculadora.Update;
    end;
  end;

end;

procedure TfrmCalculadora.FormShow(Sender: TObject);
begin

  StatusBar1.Panels[1].Text := FormatDateTime('DD/MM/YYYY',Date);
  PageControl2.ActivePage := TabPotencia;
  PageControl1.ActivePage := TabCalculadora;
  Edit1.SetFocus;
  V_Hora_Inicial := Time;
  Timer2.Interval := 1000;
  Timer2.Enabled := True;
  V_Casas_Decimais := '#,#00.00';
  
end;

procedure TfrmCalculadora.ckbTimer_AtivadoClick(Sender: TObject);
begin

  if ckbTimer_Ativado.Checked = False then
  begin
    frmCalculadora.Caption := 'Calculadora';
  end;

end;

function TfrmCalculadora.Tempo_Restante(P_Hora_Inicio,
  P_Hora_Atual: TDateTime;P_Tempo_Atual:String): String;
Var
  V_Horas,V_Minutos,V_Segundos,V_Dif,V_Tempo_Decorrido_S,V_Hora_Decorrida,V_Minuto_Decorrido,V_Segundo_Decorrido:Integer;
  V_Diferenca:Extended;
begin

  V_Horas := 0;
  V_Minutos := 0;
  V_Segundos := 0;
  V_Hora_Decorrida := ((StrToInt(Copy(P_Tempo_Atual,1,2)) * 60) * 60);
  V_Minuto_Decorrido := (StrToInt(Copy(P_Tempo_Atual,4,2)) * 60);
  V_Segundo_Decorrido := StrToInt(Copy(P_Tempo_Atual,7,2));

  V_Tempo_Decorrido_S := ((V_Hora_Decorrida + V_Minuto_Decorrido)  + V_Segundo_Decorrido);
  V_Dif := (SecondsBetween(P_Hora_Atual,P_Hora_Inicio) + ((V_Hora_Decorrida + V_Minuto_Decorrido) + V_Segundo_Decorrido));
  //Calcula segundos
  V_Segundos := (V_Dif mod 60);

  //calculma minutos/horas
  if V_Dif div 60 <= 59 then
  begin
    V_Minutos := (V_Dif div 60);
    V_Horas := 0;
  end
  else
  begin
    V_Minutos := ((V_Dif div 60) mod 60);
    V_Horas := ((V_Dif div 60) div 60);
  end;

  Result := FormatFloat('#,#00',V_Horas) + ':' + FormatFloat('#,#00',V_Minutos) + ':' + FormatFloat('#,#00',V_Segundos);

end;

procedure TfrmCalculadora.Timer2Timer(Sender: TObject);
begin

  StatusBar1.Panels[3].Text := Tempo_Restante(V_Hora_Inicial,Time,'00:00:00');
  StatusBar1.Update;

end;

procedure TfrmCalculadora.btnInicia_CronometroClick(Sender: TObject);
begin

  if btnInicia_Cronometro.Caption = 'Iniciar' then
  begin
    btnInicia_Cronometro.Caption := 'Pausa';
    V_Tempo_Decorrido := pnlCronometro.Caption;
    V_Hora_Inicial_Cronometro := Time;
    Timer3.Enabled := True;
  end
  else
  begin
    btnInicia_Cronometro.Caption := 'Iniciar';
    Timer3.Enabled := False;
  end;

end;

procedure TfrmCalculadora.Timer3Timer(Sender: TObject);
begin

  pnlCronometro.Caption := Tempo_Restante(V_Hora_Inicial_Cronometro,Time,V_Tempo_Decorrido);
  pnlCronometro.Update;

end;

procedure TfrmCalculadora.txtCasas_DecimaisChange(Sender: TObject);
begin

  if txtCasas_Decimais.Value > 0 then
  begin
    V_Casas_Decimais := '#,#00.';
  end
  else
  begin
    V_Casas_Decimais := '#,#00';
  end;

  for i := 1 to txtCasas_Decimais.Value do
  begin
    V_Casas_Decimais := V_Casas_Decimais + '0';
  end;

end;

procedure TfrmCalculadora.btnZerarClick(Sender: TObject);
begin

  btnInicia_Cronometro.Caption := 'Pausa';
  btnInicia_CronometroClick(Self);
  pnlCronometro.Caption := '00:00:00';
  V_Tempo_Decorrido := '00:00:00';

end;

end.
