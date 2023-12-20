unit rel_tef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls;

type
  Tfrm_REL_TEF = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLMemo1: TRLMemo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_TEF: Tfrm_REL_TEF;

implementation

{$R *.dfm}

uses fechacupom, principal, checkout, cupom;

procedure Tfrm_REL_TEF.RLReport1AfterPrint(Sender: TObject);
begin
      //frm_rel_tef.RLReport1.Refresh;
      //frm_rel_tef.RLReport1.Free;
end;

procedure Tfrm_REL_TEF.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (frm_fechacupom.tMemoresultado.GetTextLen <> 0) then
  begin
    frm_fechacupom.tMemoresultado.Update;
    rlmemo1.Lines.Clear;
    rlmemo1.Lines.Text:=frm_fechacupom.tmemoresultado.lines.text;
  end;
 // if (frm_cupom.tMemoresultado.GetTextLen <> 0)  then rlmemo1.Lines.Text:=frm_cupom.tmemoresultado.lines.text;
end;

end.
