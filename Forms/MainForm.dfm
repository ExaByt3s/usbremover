object MainFrm: TMainFrm
  Left = 311
  Top = 164
  Width = 716
  Height = 523
  Caption = 'USBRemover'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 124
      Height = 13
      Caption = 'Select the drive to remove'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 32
      Width = 521
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 708
    Height = 432
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 706
      Height = 430
      Align = alClient
      Indent = 19
      TabOrder = 0
    end
  end
  object CoolTrayIcon1: TCoolTrayIcon
    CycleInterval = 0
    Icon.Data = {
      0000010001002020000001001800A80C00001600000028000000200000004000
      000001001800000000000000000000000000000000000000000000000000FFFF
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
      000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      2523212C2724000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000393632898179
      B4A79E554F49544741100D0C000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      00000000000000000000001220123C773C0504044C4742989088BDB1A8BEB3AA
      A59A924C4C46322B295C4F48302D29010101000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000001A261B4C8A4D60CB603F864044443DAB9F97B5AAA1A29890AEA7A1
      F5ECE8FAF2EE72726B47403C5549454F4A41141814000000000000000000FFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000014
      1D14477F475FC85F53C65444B945316A324B5245918880C0B7B1F2E8E4D6CECA
      C9C1BEF5EBE7F5EBE7C6C0BA5A5650564A48655A52343D2F050705000000FFFF
      FF0000000000000000000000000000000000000000000000000B100B4277425C
      C05C53C65444B94537AE392FA8342F6E323F4E3DC5BFB9EFE4DFEFE4DF8C8582
      3A3534E5DBD6EFE4DFEFE4DFEFE4DF7C7B7263575571635D1722180000000000
      0000000000000000000000000000000000000004070538673959B95A53C65444
      B94537AE392FA8342FA83636AE413FA54C335836314D3383867AE9DBD6E9DBD6
      E9DBD6E9DBD68E8482918986E9DBD6E9DBD6C1B8B2726F65444D3E0000000000
      000000000000000000000000000000002E552E57B35753C65444B94537AE392F
      A8342FA83636AE4142B85252C6685FD17960CC7B4686523256344A5E47D3C7C0
      E3D4CEE3D4CEB1A49F625855CFC1BCD7CAC3757B6D344733000000FFFFFF0000
      0000000000000000000021402151A85253C65444B94537AE392FA8342FA83636
      AE4142B85252C6685FD17964D58069D9876EDE8E73E29465C17F3D7244365B37
      98978ADECDC7DECDC7D7C7C1747C6B334E33000000000000FFFFFFFFFFFF0000
      00000000000000458F4553C55444B94537AE392FA8342FA83636AE4142B85252
      C6685FD17964D58069D9876EDE8E73E29478E69B7CEAA181EEA785F1AC6BC386
      4683505E725776816B376138112212000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000027542944B74537AE392FA8342FA83636AE4142B85252C6685FD17964
      D58069D9876EDE8E73E29478E69B7CEAA181EEA785F1AC89F5B18CF8B690FABA
      92FDBE89EEB171C98E3E7B44000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000347F372FA8342FA83636AE4142B85252C6685FD17964D58069D9876E
      DE8E73E29478E69B7CEAA181EEA785F1AC89F5B18CF8B690FABA92FDBE94FFC1
      8AEFB265B87C408247346E37000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000035823936AE4142B85252C6685FD17964D58069D9876EDE8E73E29478
      E69B7CEAA181EEA785F1AC89F5B18CF8B690FABA92FDBE94FFC17BDB9C57A767
      377B3A36773928572A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000377D3B48AA565FD17964D58069D9876EDE8E73E29478E69B7CEAA181
      EEA785F1AC89F5B18CF8B690FABA92FDBE8EF6B86ECA89499755377C3A2E6831
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF0000002F6F333A873E4BA6586BD98973E29478E69B7CEAA181EEA785F1AC89
      F5B18CF8B690FABA90FABB77D8965BB36E3B853F307134000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000001A3D1B38873C43984A6AD08681EEA785F1AC89F5B18CF8B690
      FABA7DE29F63C07A45964D347B37000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000002E6E313A8C3E459C4E4FA95B5AB76B53AD624E
      A65B347E38000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
    IconVisible = True
    IconIndex = 0
    PopupMenu = PopupMenu1
    MinimizeToTray = True
    OnDblClick = CoolTrayIcon1DblClick
    Left = 544
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 640
    Top = 8
  end
  object XJustOne1: TXJustOne
    SwitchToPrevious = True
    Terminate = True
    Left = 592
    Top = 8
  end
end
