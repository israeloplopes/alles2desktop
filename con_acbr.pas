unit con_acbr;

uses  Windows, Dialogs, Messages, SysUtils, Classes, Controls, StdCtrls, Mask,
      MaskUtils, Winsock, StrUtils, ShDocVw, Forms, IdSNTP, WinInet, Graphics,
      ExtCtrls, IdHTTP, DBClient, DB, IniFiles, IdDayTime, DateUtils, ShellApi,
      ComCtrls, ToolWin, Variants, TlHelp32, Math, ACBrNfe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass,
      ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, XMLIntf, XMLDoc, ACBrMail,
      ACBrNFeDANFeRLClass, pcnNFe, pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
      FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL, ACBrNFeConfiguracoes;

procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);

procedure Tfrm_PREFACBR.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

interface

implementation

end.
