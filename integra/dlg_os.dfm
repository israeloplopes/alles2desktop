object frm_DLG_OS: Tfrm_DLG_OS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Espelho da Ordem de Servi'#231'o'
  ClientHeight = 450
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_nomestatus: TLabel
    Left = 328
    Top = 392
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  object DBText1: TDBText
    Left = 92
    Top = 79
    Width = 65
    Height = 17
    DataField = 'CODCLI'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 274
    Width = 173
    Height = 163
    Caption = 'Gera Visualiza'#231#227'o'
    Glyph.Data = {
      F63C0000424DF63C000000000000360000002800000048000000480000000100
      180000000000C03C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE
      EEEEE6E6E6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7D6D6D6BDBDBDAEAEAEB4B4B5
      D6D6D6FFFFFFFFFFFFF7F7F7E6E6E6E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFDF8DEDEDEC5C5C5AEAEAE999999848484747474848484B4B4B5D6D6
      D6C5C5C5B4B4B5AEAEAEBDBDBDDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6C5C5C5B4B4
      B5A4A4A5949495BEA087DCA794977D73595C5C686A6B948D89A4A4A594949584
      84847A7A7B948D89BDBDBDEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEEEEEECCCCCCB4B4B5A4A4A5949495AB9888EAB795FE
      DEC5FFE6CFFFD5B6D0AB8E7A726B595C5C474A4A404142404142474A4A666666
      747474949495C5C5C5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6
      E6D6D6D6D6D6D6DEDEDEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7D6
      D6D6BDBDBDA6A9AC96979BA59182D79D88FBCFB4FFF7E8FFFFFFFFFFFFFFF6EF
      FFE5C8FFD0A99E877229292C4E3E3A816468725057474A4A564D4D6666667A7A
      7BA4A4A5D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6E6C5C5C5A4A4A594949584848499
      9999B4B4B5DEDEDEF7F7F7FFFFFFFFFDF8DEDEDEBDBDBDAEAEAE9999999A8E89
      CA8D78F6B49BFFE7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FFDE
      BCE7BA958D6F64564D4D8164689E6F726E575B595C5C595C5C686A6B848484AE
      AEAEE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
      F7F7E6E6E6C5C5C5C4A397E19C84F08F6BEE9473E49376A68B797A7A7B999999
      BDBDBDCCCCCCBDBDBDB4B4B5A4A4A5948D89B8937EEEA284FDD5C4FFFDF8FFFF
      FFFFFFFFFFFFFFFFDED6FAA78BFDB7A4FFF8F7FFFFFFFFFFFFFFEFDFFFD5B6CF
      9B8A6E575B564D4D8E6A6D9E6F72816468666666595C5C686A6BA4A4A5EEEEEE
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E6E6E6BDBDBDC4A397E49376
      FF9873FFA58CFFBDA6FAA78BFF9873FF9873DC957D8E6A6D666666747474948D
      89949495AE8474E08C6EFFBDA6FFEEEFFFFFFFFFF8F7FFEFDFFFEFE7FFFDF8FF
      F6EFFEE5DEFFAF95F8AD92FFCCBBFFF8F7FFFFFFFFFFFFFFE7D6FFD0A9AE8474
      564D4D5F4F529E6F729E83798E6A6D6666667A7A7BBDBDBDF7F7F7FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF7F7F7DEDEDEBDBDBDC4A397E08C6EFF9B7AFFBDA6FFBDA6FFCCBBFFCC
      BBF8AD92F89472FF9873F08F6BBF755C8D6F646666668D6F64D47B5DFAA78BFE
      E5DEFFFFFFFFFDF8FFEFE7FFF6EFFFC5B5F9A486F8AD92FFEFE7FFFFFFFFF6EF
      FFCCBBFBAC8DFBAC8DFFE8E4FFFDF8FFFFFFFFF8F7FFE5C8F5BEA2977D73474A
      4A6E575BAE8474BF8488937A7CB4B4B5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDEDEDEBCB5B2CF9B
      8AEE9473FFA383FFC5B5FFF6EFFFEFE7FFCCBBFFC5B5FFC5B5FFAF95F79C7CF7
      9C7CEE9473BF755CBF755CD57352F08F6BFFCFC5FFFFFFFFF8F7FFEFDFFEDECC
      FEDECCFFEFDFFFEFDFFFEFDFFEB49CFAA78BFFC7ACFFE8E4FFFFFFFFF6EFFDB7
      A4F89472FFCCBBFFFFFFFFFFFFFFFFFFFFF7E8FFDEBCDEAD8874675E474A4A8E
      6A6D9E6F72999999E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFEEEEEEDEDEDEBCB5B2CF9B8AEE9473FFA383FFCCBBFFF6EFFF
      FFFFFFFFFFFEE5DEFFC8BCFFC8BCFFC8BCFEB49CF79C7CFFA383E49376A25942
      CB6C4DFFBDA6FFF8F7FFF8F7FFEFDFFFEFDFFFEFDFFFBDA6F9A486F9A486FEE5
      DEFFF6EFFFEFE7FBCFB4FEB49CFAA78BFFE7D6FFF6EFFFFFFFFFDED6FFDED6FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFD5B6BEA08774675E595C5C686A6B
      949495CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEED6D6D6BC
      B5B2D79D88F08F6BFFA58CFDD5C4FFF8F7FFFFFFFFF8F7FFF8F7FFF8F7FEE5DE
      FFCCBBFFCCBBFFCCBBFEB49CF9A486F9A486E08C6E9A6253A69E97CCCCCCF3E4
      D5FFE6CFFBCFB4FBCFB4FEDECCFFEFDFFFEFDFFEB393FFA383FEB49CFFE6CFFF
      FFFFFFF6EFFEB49CFBAC8DFBAC8DFFEFE7FFFFFFFFFFFFFFF8F7FFF8F7FFF8F7
      FFFFFFFFFFFFFFFFFFFFFDF8FFE6CFFFD0A9BEA087686A6B666666949495D6D6
      D6F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDF8EEEEEED6D6D6BCB5B2D79D88F08F6BFBAC8DFFD6CE
      FFF8F7FFFFFFFFF8F7FFF6EFFFF6EFFFF6EFFFF6EFFEE5DEFFCFC5FFCFC5FFCF
      C5FDB7A4FAA78BFAA78BE6A58EA6A9ACA69E97A59182AB9888D4BFA5F6B49BFB
      AC8DF9A486FEDECCFFEFDFFFE7D6FDD5C4FEB49CF9A486FDD5C4FFE7D6FFF6EF
      FFF6EFFEB49CF79C7CF8AD92FFEFE7FFFFFFFFFDF8FFFDF8FFFDF8FFFDF8FFFF
      FFFFFFFFFFFFFFFFF6EFFEDEC5F7C5A9B4A697948D89B4B4B5EEEEEEFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEE
      D6D6D6C7ABA2DC957DF89472FFAF95FEDECCFFFDF8FFFFFFFFF8F7FFF6EFFFF6
      EFFFF6EFFFF6EFFFF6EFFFF6EFFEE5DEFDD5C4FDD5C4FDD5C4FFBDA6FBAC8DFB
      AC8DE6A58EA59182A68B79A47A69A47A699E8379B4A697DBC7B4FEB393FFA383
      FAA78BFEDEC5FFF7E8FFEFDFFFBDA6F9A486F9A486FFE7D6FFEFE7FFEFE7FFE7
      D6F8AD92F9A486FFC7ACFFEFE7FFFFFFFFF8F7FFF8F7FFF8F7FFF8F7FFFFFFFF
      FFFFFFFFFFFFE7D6FFD0A9E9CAB2DEDEDEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EEEEEECCCCCCC7ABA2DC957DF89472FEB4
      9CFFDED6FFFFFFFFFFFFFFF8F7FFF8F7FFF6EFFFF6EFFFF6EFFFEEEFFFEEEFFF
      EEEFFFEEEFFEE5DEFDD5C4FDD5C4FDD5C4FEBEADFFAF95FFAF95E6A58EA68B79
      A68B79A47A69A57360A57360A48A74A48A74BDA998E9CAB2FEB49CFFA383FFBD
      A6FEDEC5FFF7E8FFEFDFFEB393F79C7CFBAC8DFFEFDFFFFDF8FFEFDFFDD5C4F8
      AD92F8AD92FDD5C4FFEFE7FFF8F7FFF8F7FFF8F7FFFFFFFFFFFFFEE5DEF9CCAE
      FBCFB4FFEFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDF8CCCCCCC7ABA2DC957DF9916EFDB7A4FEE5DEFFFFFFFFFFFFFFF8F7FF
      F8F7FFF6EFFFF6EFFFF6EFFFF6EFFFF6EFFFEFE7FFEFE7FFEFE7FFEFE7FEE5DE
      FFD6CEFFD6CEFFD6CEFEC1B2FEB49CFEB49CE6A58EA48A74A68B79A8927FA892
      7FA47A69A56C58A56C58A59182AB9888CDB09DF1B59DFEB393FFA383FBCFB4FF
      E6CFFFEFDFFFE7D6FBAC8DF9A486FEB49CFFEFDFFFFDF8FEE5DEFDB7A4FDB7A4
      FEE5DEFFF8F7FFF8F7FFFFFFFFEFE7F9CCAEF5BEA2F3E4D5FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC5BDE49376FF
      9873FFBDA6FEE5DEFFFFFFFFFFFFFFF8F7FFF8F7FFF8F7FFF6EFFFF6EFFFF6EF
      FFF6EFFFEFE7FFEFE7FFEFE7FFEFE7FFEFE7FFEFE7FEE5DEFFD6CEFFD6CEFFD6
      CEFFC5B5FDB7A4FDB7A4FEB49CBC947F9E8772A68B79A68B79A8927FA8927FA5
      7360A56C58A57360A59182AB9F9ADBC7B4FEB393FFA383FFA383FEDECCFFEFDF
      FFE7D6FEDECCF9A486F9A486FFC5B5FFEFE7FFF6EFFFF6EFFFF6EFFFFFFFFFF6
      EFFBCFB4F8AD92EDCBBCF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D1CAF9916EFFBDA6FFEFE7FFFFFFFFFFFF
      FFF8F7FFF8F7FFF8F7FFF6EFFFF6EFFFF6EFFFEEEFFFEEEFFFEEEFFFEEEFFFEE
      EFFFE8E4FFE8E4FFE8E4FFE8E4FEE5DEFFD7D4FFD7D4FFD7D4FFC8BCFDB7A4FD
      B7A4FDB7A4F6B49BBEA087A48A74A48A74A48A74A8927FA8927FA48A74A57360
      A8927FA8927FA8927FB4A697DBC7B4FBAC8DFFA383FBAC8DFFE7D6FFEFE7FFE6
      CFF7C5A9F7C5A9FFE7D6FFEFE7FFFDF8FFFDF8FDD5C4EFAA8DEDBEA7FFF6EFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF79C7CFFC5B5FFFFFFFFFFFFFFF8F7FFF8F7FFF8F7FFF6EFFFF6
      EFFFF6EFFFEEEFFFEEEFFFEEEFFFEEEFFFEEEFFFE8E4FFE8E4FFE8E4FFE8E4FF
      E8E4FFE8E4FFDEDEFFDED6FFDED6FFDED6FFCCBBFEBEADFEBEADFEBEADFDB7A4
      FDB7A4EAAC91BC947FA48A74A48A74A68B79A8927FA8927FA8927FA8927FA892
      7FA8927FA8927FBDA998EDCBBCFBAC8DFFA383FFBDA6FFE7D6FFE7D6FFEFDFFF
      F6EFFFFFFFFFDED6EFAA8DEAAC91F3E4D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C
      7CFEE5DEFFFFFFFFF8F7FFF8F7FFF6EFFFF6EFFFF6EFFFF6EFFFF6EFFFEFE7FF
      EFE7FFEFE7FFEFE7FFE8E4FFE8E4FFE8E4FEE5DEFEE5DEFEE5DEFEE5DEFEE5DE
      FFDED6FFDED6FFDED6FFCCBBFEC1B2FEC1B2FEBEADFEBEADFDB7A4FDB7A4FDB7
      A4DCA794B8937EA48A74A68B79A68B79A68B79A8927FA8927FA8927FA8927FA8
      927FAB9888CDB09DF7C5A9FFD5B6FFE5C8FFEFDFFFFDF8FFEFE7F6B49BE49376
      EDCBBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFEE5DEFFFDF8FF
      F6EFFFF6EFFFF6EFFFF6EFFFEEEFFFEEEFFFEEEFFFEEEFFFEEEFFFE8E4FFE8E4
      FFE8E4FFE8E4FEE5DEFEE5DEFEE5DEFEE5DEFEE5DEFEE5DEFFDEDEFFDEDEFFDE
      DEFFCFC5FFC5B5FFC5B5FFC5B5FEBEADFEBEADFEBEADFDB7A4FDB7A4FDB7A4CF
      9B8AA68B79A48A74A48A74A68B79A8927FA8927FA8927FA8927FA8927FA8927F
      AB9888DBC7B4FFFDF8FFFDF8EDBEA7EC8966A47A69999999EEEEEEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFEE5DEFFF8F7FFF8F7FFF6EFFFEEEF
      FFEEEFFFEEEFFFEEEFFFEEEFFFE8E4FFE8E4FFE8E4FFE8E4FEE5DEFEE5DEFEE5
      DEFEE5DEFEE5DEFFDED6FFDED6FFDED6FFDED6FFDED6FFDED6FFCFC5FFC8BCFF
      C8BCFFC8BCFFC5B5FEC1B2FEC1B2FEBEADFEBEADFDB7A4FDB7A4F1B59DBEA087
      A48A74A48A74A68B79A68B79A8927FA8927FA8927FA8927FA69E97A4A4A5C7AB
      A2EC8966EA7953F9916ECA8D78848484CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF6EFF79C7CFFDED6FFF8F7FFEEEFFFEEEFFFEFE7FFEFE7FFEFE7FFEF
      E7FFE8E4FFE8E4FFE8E4FEE5DEFEE5DEFEE5DEFEE5DEFEE5DEFFDED6FFDED6FF
      DED6FFDED6FFDED6FFDED6FFDED6FFDED6FFCFC5FFCFC5FFCFC5FFC8BCFFC8BC
      FFC5B5FFC5B5FEC1B2FEC1B2FEBEADFEBEADFDB7A4FDB7A4EAAC91B8937EA48A
      74A48A74A48A74A48A74AB9888A6A9ACA795919A6253723828D47B5DFF9B7AFF
      9B7AFF9B7A9E8379C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C
      7CFFDED6FFF6EFFFEFE7FFEFE7FFEFE7FFEFE7FFE8E4FFE8E4FFE8E4FEE5DEFE
      E5DEFEE5DEFEE5DEFEE5DEFFDED6FFDED6FFDED6FFDED6FFDED6FFDED6FEE5DE
      FEE5DEFEE5DEFFDED6FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC5
      B5FFC5B5FEBEADFEBEADFFBDA6FFBDA6FFBDA6FDB7A4DCA794A68B79A68B79A4
      A4A5AB9F9AA56C588746344E3E3A29292CC9846EFFA383F79C7CFF9873977D73
      C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFFDED6FFF6EFFF
      EFE7FFEFE7FFE8E4FFE8E4FFE8E4FFE8E4FEE5DEFEE5DEFEE5DEFEE5DEFEE5DE
      FFDED6FFDED6FFDED6FFDED6FFDED6FFD6CEFFDED6FEE5DEFEE5DEFEE5DEFFD6
      CEFFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC8BCFFC5B5FE
      C1B2FEC1B2FEBEADFFBDA6FFBDA6FFBDA6F6B49BC7ABA2977D73874634874634
      564D4D4041423D3A3BCA8D78FFA58CF79C7CFF9873977D73C5C5C5FFFDF8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFFDED6FFEEEFFFE8E4FFE8E4FFE8E4
      FFE8E4FEE5DEFEE5DEFEE5DEFEE5DEFEE5DEFFDED6FFDED6FFDED6FFDED6FFDE
      D6FFDED6FFD6CEFFD6CEFEE5DEFEE5DEFEE5DEFEE5DEFFCFC5FFCFC5FFCFC5FF
      CFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC8BCFFC5B5FEC1B2
      FEC1B2FEBEADFEBEADFEBEADFDB7A4E69281AB6D676E575B5F4F525F4F52474A
      4ADC957DFBAC8DF9A486FF9873977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF6EFF79C7CFFD6CEFFEEEFFFE8E4FFE8E4FEE5DEFEE5DEFEE5DEFEE5
      DEFEE5DEFFDED6FFDED6FFDED6FFDED6FFDED6FFDED6FFD6CEFFD6CEFFD6CEFF
      DED6FFE8E4FFE8E4FFE8E4FFDED6FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5
      FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC5B5FFC5B5FEC1B2FEBE
      ADFEBEADFEBEADFEBEADFFBDA6D79D889E6F727250575F4F52DC957DFFAF95FA
      A78BFF9873977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C
      7CFFD6CEFFEFE7FEE5DEFEE5DEFEE5DEFEE5DEFEE5DEFFDED6FFDED6FFDED6FF
      DED6FFDED6FFDED6FFD6CEFFD6CEFFD6CEFFD6CEFFD6CEFFE8E4FFE8E4FFE8E4
      FFE8E4FFD7D4FFD7D4FFD7D4FFCFC5FFD6CEFFDED6FFDED6FFD6CEFFCFC5FFCF
      C5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC5B5FFC5B5FEC1B2FEBEADFE
      BEADFEBEADFEBEADFDB7A4CA8D78A3716EEFAA8DFFAF95FFAF95FF9873977D73
      C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFFD6CEFFE8E4FE
      E5DEFEE5DEFEE5DEFEE5DEFFDED6FFDED6FFDED6FFDED6FFDED6FFD6CEFFD6CE
      FFD6CEFFD6CEFFD6CEFFCFC5FEE5DEFFEFE7FFEFE7FFEFE7FEE5DEFFD6CEFFD6
      CEFFD6CEFFD6CECDBCA06B97546B9754D4BFA5FFD7D4FFCFC5FFCFC5FFCFC5FF
      CFC5FFCFC5FFCFC5FFC8BCFFC8BCFFC8BCFFC5B5FEC1B2FEC1B2FEBEADFFBDA6
      FFBDA6FFBDA6FFBDA6FEB49CFEB49CFFAF95FF9873977D73C5C5C5FFFDF8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C7CFDD5C4FFE8E4FEE5DEFEE5DEFFDED6
      FFDED6FFDED6FFDED6FFDED6FFDED6FFD6CEFFD6CEFFD6CEFFD6CEFFD6CEFFCF
      C5FFDED6FFEFE7FFEFE7FFEFE7FFEFE7FFDED6FFDED6FFDED6FFDED6B1BE9205
      860B007300007300007300789D5FEDCBBCFFD7D4FFCFC5FFCFC5FFCFC5FFCFC5
      FFCFC5FFCFC5FFC8BCFFC8BCFFC5B5FFC5B5FEC1B2FEBEADFEBEADFEBEADFDB7
      A4FDB7A4FDB7A4FEB49CFF9B7A977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF6EFF79C7CFDD5C4FEE5DEFFDED6FFDED6FFDED6FFDED6FFDED6FFDE
      D6FFD6CEFFD6CEFFD6CEFFD6CEFFD6CEFFD6CEFFCFC5FFD6CEFFEEEFFFEEEFFF
      EEEFFFEEEFFEE5DEFFDED6FFDED6FFDED6F0D1CA22992500870305860B05860B
      007B06006D00227D1B9EAB7DFFD6CEFFD6CEFFCFC5FFCFC5FFCFC5FFCFC5FFCF
      C5FFCFC5FFC8BCFFC8BCFFC5B5FFC5B5FEC1B2FEBEADFEBEADFDB7A4FDB7A4FD
      B7A4FF9B7A977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFF79C
      7CFFCFC5FEE5DEFFDED6FFDED6FFDED6FFDED6FFD6CEFFD6CEFFD6CEFFD6CEFF
      D6CEFFCFC5FFCFC5FFCFC5FFCFC5FFEEEFFFEEEFFFEEEFFFEEEFFFEEEFFEE5DE
      FEE5DEFEE5DEFEE5DE7BBC6E009503069410069410068C0E05860B05860B0073
      000073003D8631CDBCA0FFD7D4FFD7D4FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FF
      CFC5FFC8BCFFC8BCFFC5B5FFC5B5FEBEADFEBEADFEBEADFEBEADFF9B7A977D73
      C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79C7CFFC8BCFFDEDEFF
      DED6FFDED6FFDED6FFD6CEFFD6CEFFD6CEFFD6CEFFCFC5FFCFC5FFCFC5FFCFC5
      FFCFC5FFF6EFFFF8F7FFF8F7FFF8F7FFEEEFFFE8E4FFE8E4FEE5DEFFE6EBC7D5
      AE05A71005A710079C12079C1206941006941005860B05860B05860B00730000
      73005F934BDCC3ADFFD7D4FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BC
      FFC8BCFFC8BCFFC5B5FEC1B2FEC1B2FEBEADFF9B7A977D73C5C5C5FFFDF8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB393FDB7A4FFDEDEFFD6CEFFD6CEFFD6CE
      FFD6CEFFD6CEFFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFDED6FFF8F7FFF8F7FFF8
      F7FFF8F7FFF8F7FFEFE7FFEFE7FFE8E4FFE8E4F3E4D52BC13A05A71008AD1708
      AD1708A615079C12079C12069410068C0E068C0E05860B007B060073001A7815
      8EA571EDCBBCFFD7D4FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8
      BCFFC8BCFFC5B5FEC1B2FF9B7A977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDD5C4F9A486FEE5DEFFD6CEFFD6CEFFD6CEFFCFC5FFCFC5FFCF
      C5FFCFC5FFCFC5FFCFC5FFEFE7FFFFFFFFFFFFFFFFFFFFFFFFFFF6EFFFE8E4FF
      F6EFFFF6EFFFEEEFFFEEEF64D06C0FB72114BC290FB7210AB31A08AD1708A615
      08A615079C12079C12068C0E068C0E068C0E05860B007B06006D002E8024A6B5
      85FFD6CEFFD6CEFFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFFC8BCFF
      C8BCFF9B7A977D73C5C5C5FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6
      EFF89472FFC8BCFFE8E4FFD7D4FFD7D4FFCFC5FFCFC5FFCFC5FFD6CEFEE5DEFF
      F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA9CE5A4AD2A892CCFFF6EFFFF6EF
      85DE8F18CB3C23C83F20C63A19C03014BC290AB31A0AB31A08A61508A61508A6
      15079C12069410069410068C0E05860B05860B007300007300498A39CDBCA0FF
      D7D4FFD7D4FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFF9B7A9E8379
      CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCBBF89472FF
      D7D4FFEEEFFEE5DEFEE5DEFFE8E4FFE8E4FFF6EFFFF8F7FFF8F7FFF8F7FFF8F7
      FFFFFFFFFFFFFFFFFFDEDEDE9180D15A4AD2D4B4D3A3F4AB31DB5931DB5932D5
      532BCF4923C83F20C63A14BC290FB7210AB31A08AD1708AD1708A615079C1207
      9C12069410069410068C0E05860B007B060073000073006B9754E9CAB2FFD7D4
      FFCFC5FFCFC5FFCFC5FFCFC5FFCFC5FFC8BCFF9B7AA59182D6D6D6FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8F79C7CF79C7CFFCFC5FFEFE7
      FFEFE7FFEFE7FFEFE7FFEFE7FFEFE7FFF6EFFFF6EFFFE8E4FFEEEFFFFDF8FFFD
      F8FFFFFFFFF6EFE3DCD785DE8F49E77349E77342E1693CDE6132D55332D55328
      CC4420C63A20C63A14BC290FB7210AB31A08AD1708AD1708A615079C12079C12
      069410068C0E068C0E05860B007B06006D001A78158EA571FFCFC5FFCFC5FFCF
      C5FFCFC5FFCFC5FEC1B2F79C7CAB9F9AE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F7F9A486F89472F98F6BFFAF95FFDED6FFEFE7FFEF
      E7FFEFE7FFEFE7FFEFE7DCC5BD6BCA83A0C49FFEE5DEFFF8F7FFF8F7EFF3E98E
      FFB655FD8C59F48854EF824EEC7B44E36B44E36B39D95B32D5532BCF4928CC44
      20C63A19C03014BC290FB72108AD1708AD1708A61508A615079C12079C120694
      10068C0E05860B05860B0073000073003D8631EDCBBCFFD6CEFFCFC5FFCFC5FF
      BDA6E08C6EAEAEAEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8F7F9A486FAA78BFAA78BF89472F89472FDB7A4FFD7D4FFDED6FFDED6FF
      DED6F0D1CA9AD4A25FE07AC1C4B0FFEEEFB5F5C666FF9960FA9466FF9966FF99
      60FA9459F48851EE7D49E77344E36B3CDE6139D95B32D5532BCF4923C83F20C6
      3A19C0300FB7210AB31A0AB31A08AD1708A61508A615079C1206941006941006
      8C0E05860B05860B0073009EAB7DFFD7D4FFCFC5FFCFC5FFAF95CA8D78CCCCCC
      FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F9A486FF
      AF95FEBEADFEBEADF6B49BF89472F89472FEBEADFFD6CEFFDED6FFDEDEFFD6CE
      C1C4B094DA946CF08F54EF825BF68C60FA9460FA9466FF9966FF9962FC965BF6
      8C54EF824EEC7B49E77342E1693CDE6139D95B32D55328CC4423C83F19C03019
      C0300FB7210AB31A08AD1708AD1708A615079C12079C12069410069410068C0E
      007B06A6B585FFD7D4FFD7D4FFCFC5FF9B7AC4A397E6E6E6FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F9A486FDB7A4FFC5B5FDD5C4
      FFEFE7FFF6EFFFBDA6F98F6BEE94737ABC624BCF5E4BCF5E41DC6141DC6144E3
      6B4EEC7B54EF8259F48860FA9460FA9466FF9966FF9966FF9962FC965BF68C54
      EF824EEC7B49E77342E1693CDE6132D55332D55328CC4420C63A19C03014BC29
      0FB7210AB31A08AD1708A61508A615079C12079C12009503229925F0D1CAFFD6
      CEFFD6CEFEBEADEE9473B4B4B5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F7F9A486FFC5B5FEE5DEFFF6EFFFF8F7FFD6CEEDBE
      A7EFAA8DFDB7A4DE90608AA44B23C33118CB3C32D5533CDE6142E16949E77351
      EE7D54EF825BF68C5BF68C62FC9666FF9966FF9966FF9960FA9459F48854EF82
      4EEC7B44E36B44E36B39D95B32D5532BCF4928CC4420C63A19C03014BC290AB3
      1A0AB31A08AD1708A61508A615009503A6B585FFDEDEFFD6CEFFD6CEFFA58CCF
      9B8ADEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8F7F9A486FFDED6FFFFFFFFEFE7EDCBBCF1B59DEEA284F5BEA2FFFFFFFB
      CFB4FFA383DE906070AD4720C63A24D44B32D5533CDE6144E36B4EEC7B4EEC7B
      59F4885BF68C60FA9460FA9466FF9966FF9966FF9960FA9459F48851EE7D49E7
      7344E36B3CDE6139D95B32D5532BCF4923C83F20C63A19C0300FB7210AB31A0A
      B31A05A71050B741FFDED6FFDED6FFDED6FFC5B5F08F6BBCB5B2F7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB49CF9
      A486FFDED6FFEFE7F1B59DF5BEA2EFAA8DF5BEA2FFFDF8FFE6CFFEDEC5FFBDA6
      FF9B7AC7955950B74118CB3C24D44B39D95B42E16949E7734EEC7B54EF8259F4
      885BF68C60FA9460FA9466FF9966FF9962FC965BF68C54EF824EEC7B49E77342
      E1693CDE6132D55332D55328CC4423C83F19C03019C0300AB31A0FB721DEDAC0
      FFDEDEFFDEDEFFDEDEFFA383D79D88DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8FFC5B5F89472F8AD92
      F1B59DF7C5A9EFAA8DF5BEA2FFFDF8FFE6CFFEDEC5FFE5C8FED8BCFEB49CF991
      6EAB9A513FBA3D18CB3C24D44B39D95B42E16949E7734EEC7B54EF825BF68C5B
      F68C60FA9460FA9466FF9966FF9960FA945BF68C54EF824EEC7B44E36B44E36B
      39D95B32D5532BCF4928CC4420C63A14BC29AFD7A1FFE6EBFEE5DEFEE5DEFEBE
      ADF08F6BC5C5C5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7F8AD92F8AD92F9CCAEF6B4
      9BF7C5A9FFFDF8FFE6CFFFE6CFFFE5C8FFE5C8FFE5C8FFD5B6FFA58CF08F6B8A
      A44B2BC13A18CB3C32D5533CDE6144E36B49E77351EE7D54EF825BF68C5BF68C
      62FC9666FF9966FF9966FF9960FA9459F48851EE7D49E77344E36B41DC6139D9
      5B32D55318CB3C94DA94FFEEEFFFE8E4FFE8E4FFD6CEFF9873CDB09DF7F7F7FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7F1B59DF9CCAEF6B49BF7C5A9FFFDF8FF
      E7D6FFE6CFFFE6CFFFE6CFFEDEC5FEDEC5FEDEC5FFC7ACFFA383DE906070AD47
      20C63A24D44B32D5533CDE6144E36B4EEC7B54EF8259F4885BF68C60FA9460FA
      9466FF9966FF9966FF995BF68C59F48851EE7D49E77342E16931DB5985DE8FFF
      EEEFFFEEEFFFEEEFFFE8E4FFA383E19C84E6E6E6FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE8E4F5BEA2FBCFB4F5BEA2F7C5A9FFFDF8FFE7D6FFE7D6FFE6CF
      FFE6CFFFE6CFFFE6CFFEDEC5FEDEC5FEDEC5FFBDA6FF9B7AC7955950B74118CB
      3C24D44B39D95B42E16949E7734EEC7B54EF8259F4885BF68C60FA9460FA9466
      FF9966FF9962FC965BF68C54EF8249E77393ECA5FFF8F7FFEEEFFFEEEFFFEEEF
      FEB49CEE9473D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E4
      F5BEA2FBCFB4F5BEA2F9CCAEFFFDF8FFEFDFFFE7D6FFE7D6FFE7D6FFE7D6FFE6
      CFFFE6CFFFE5C8FFE5C8FFE5C8FED8BCFFAF95F9916EA89B503FBA3D18CB3C24
      D44B39D95B42E16949E77351EE7D54EF825BF68C5BF68C62FC9662FC9666FF99
      66FF9955FD8CA9F8C0FFFFFFFFF8F7FFF8F7FFF8F7FEB49CF08F6BDECEC9FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E4F5BEA2FBCFB4F5BE
      A2FBCFB4FFFDF8FFEFE7FFEFDFFFEFDFFFE7D6FFE7D6FFE7D6FFE7D6FFE6CFFF
      E6CFFFE6CFFFE5C8FFE5C8FFD5B6FFA58CF08F6B8AA44B2BC13A18CB3C32D553
      3CDE6144E36B49E77351EE7D59F4885BF68C5BF68C55FD8C66FF99CBFCDCFFFF
      FFFFFFFFFFFFFFFFFFFFFEB49CF08F6BDECEC9FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7F7C5A9FDD5C4F7C5A9FBCFB4FFFFFFFF
      F7E8FFF7E8FFEFDFFFEFDFFFEFDFFFE7D6FFE7D6FFE6CFFFE6CFFFE6CFFFE6CF
      FEDEC5FEDEC5FEDEC5FFC7ACFFA383DE906070AD4720C63A24D44B32D5533CDE
      6144E36B49E77349E77359F488A3F4ABEFF3E9FFF8F7FFF8F7FFFFFFFFF6EFFF
      AF95EE9473E3DCD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFE7F9CCAEFDD5C4F9CCAEFFD5B6FFFFFFFFF6EFFFF6EFFFEFE7
      FFEFE7FFEFE7FFEFDFFFE7D6FFE7D6FFE7D6FFE7D6FFE6CFFFE6CFFFE6CFFEDE
      C5FEDEC5FEDEC5FFCCBBFF9873CE9C6050B74128CC4432D55339D95B5FE07A93
      ECA5DAE7CEFFE6EBFFEEEFFFF8F7FFF8F7FFCFC5F79C7CEEA284EEEEEEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7
      F9CCAEFEDEC5F9CCAEFED8BCFFFFFFFFF8F7FFF8F7FFF6EFFFF6EFFFEFE7FFEF
      DFFFEFDFFFEFDFFFE7D6FFE7D6FFE7D6FFE7D6FFE6CFFFE6CFFEDEC5FEDEC5FF
      FDF8EEA284E69281F89472D4A573D4BFA5DEDAC0FFDED6FFDEDEFFE8E4FFE8E4
      FEE5DEFFCCBBFAA78BF89472E9CAB2F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FBCFB4FEDEC5FBCF
      B4FED8BCFFFFFFFFFFFFFFF8F7FFF8F7FFF6EFFFF6EFFFF6EFFFEFE7FFEFDFFF
      EFDFFFEFDFFFEFDFFFE7D6FFE6CFFFE6CFFFE6CFFFE6CFFFF8F7EEA284948D89
      DCC5BDFEB49CFF9873FFA58CFEB49CFDB7A4FDB7A4FBAC8DF79C7CF79C7CF7C5
      A9EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FFD5B6FEDEC5FEDEC5FFD5B6FFEFDFFF
      FFFFFFFFFFFFFFFFFFF8F7FFF6EFFFF6EFFFF6EFFFF6EFFFEFE7FFEFDFFFEFDF
      FFEFDFFFEFDFFFE7D6FFE7D6FFE7D6FFF8F7EFAA8D948D89DEDEDEFFFFFFFEE5
      DEFFC5B5F6B49BFFAF95FFAF95FEC1B2FFDED6FFF8F7FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6EFFFD5B6FFE7D6FED8BCFEDECCFED8BCFED8BCFFF6EFFFFFFF
      FFFFFFFFFFFFFFF8F7FFF8F7FFF6EFFFF6EFFFEFE7FFEFE7FFEFE7FFEFDFFFE7
      D6FFE7D6FFE7D6FFF8F7EFAA8D9A8E89CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFE6CFFED8BCFFE6CFFEDEC5FEDEC5FEDEC5FED8BCFEDECCFFF8F7FFFFFFFFFF
      FFFFFDF8FFFDF8FFF6EFFFF6EFFFF6EFFFEFE7FFEFDFFFEFDFFFEFDFFFEFDFFF
      F8F7F8AD929A8E89CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E8FFDE
      BCFFDEBCFEDECCFEDEC5FEDEC5FEDEC5FED8BCFFE7D6FFFFFFFFFFFFFFFFFFFF
      FDF8FFFDF8FFF6EFFFF6EFFFF6EFFFEFE7FFEFE7FFEFE7FFF8F7F6B49B9A8E89
      CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFED8BCFE
      DEC5FEDEC5FEDEC5FEDEC5FEDEC5FEDEC5FFEFE7FFFFFFFFFFFFFFFFFFFFF8F7
      FFF8F7FFF6EFFFF6EFFFEFE7FFEFE7FFFDF8F6B49B9A8E89CCCCCCFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF8FFE6CFFED8BCFEDECC
      FEDECCFEDECCFEDECCFED8BCFEDEC5FFF6EFFFFFFFFFFFFFFFFFFFFFF8F7FFF6
      EFFFF6EFFFF6EFFFFDF8F5BEA29A8E89CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFFEDEC5FED8BCFEDECCFEDE
      C5FEDEC5FEDEC5FED8BCFFE6CFFFFDF8FFFFFFFFFFFFFFF8F7FFF8F7FFF8F7FF
      F8F7F5BEA29A8E89CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FED8BCFEDEC5FEDEC5FEDEC5FE
      DEC5FEDEC5FED8BCFFEFDFFFFFFFFFFFFFFFFDF8FFFDF8FFFDF8F7C5A99A8E89
      CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D6FED8BCFEDECCFEDECCFEDECCFEDECC
      FED8BCFED8BCFFEFE7FFFFFFFFFFFFFFFFFFF7C5A99A8E89CCCCCCFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDF8FFE6CFFED8BCFEDECCFEDECCFEDECCFEDECCFED8
      BCFEDEC5FFF8F7FFFFFFF9CCAE9A8E89D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF6EFFEDEC5FEDEC5FEDEC5FEDEC5FEDEC5FEDEC5FED8BCFF
      E6CFFFD0A9AEAEAEDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFDFFED8BCFEDEC5FEDEC5FED8BCFFD5B6F7C5A9F9CCAEE3DCD7
      FFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE7D6FED8BCFFD0A9F9CCAEF0D1CAEFF3E9FFFDF8FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
      F8FFE6CFFFEFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 250
    Top = 123
    Width = 173
    Height = 160
    Caption = 'Status da OS'
    Items.Strings = (
      'Pendente'
      'Compra Emitida'
      'Em An'#225'lise'
      'Em Or'#231'amento'
      'Aprovada'
      'Cancelada'
      'Encaminhada'
      'Em Andamento'
      'Pronta '
      'Finalizada')
    TabOrder = 6
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = -1
    Width = 173
    Height = 74
    Caption = 'Intervalo'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label2: TLabel
      Left = 16
      Top = 49
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object MaskEdit1: TMaskEdit
      Left = 97
      Top = 19
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 97
      Top = 46
      Width = 73
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 123
    Width = 272
    Height = 283
    DataSource = dm_DADOS.dts_EQRECMERC
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 412
    Width = 272
    Height = 25
    Caption = 'LIMPAR DADOS DA BUSCA'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 123
    Width = 170
    Height = 145
    ItemHeight = 13
    Items.Strings = (
      'PE PENDENTE'
      'EO EM OR'#199'AMENTO'
      'EC ENCAMINHADA'
      'FN FINALIZADA'
      'CA CANCELADA')
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 8
    Top = 96
    Width = 170
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyUp = Edit1KeyUp
  end
  object DBGrid2: TDBGrid
    Left = 184
    Top = 8
    Width = 272
    Height = 109
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCLI'
        Title.Caption = 'C'#211'DIGO'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Title.Caption = 'NOME'
        Width = 190
        Visible = True
      end>
  end
end
