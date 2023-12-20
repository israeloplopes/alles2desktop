unit u_Aguarde;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
   Tfrm_AGUARDE = class(TForm)
      LB7: TLabel;
      lb2: TLabel;
      Label1: TLabel;
      Label2: TLabel;
    pn_AGUARDE: TPanel;
    Image1: TImage;
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frm_AGUARDE: Tfrm_AGUARDE;

implementation

{$R *.dfm}

end.
