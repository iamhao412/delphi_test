object Fmain: TFmain
  Left = 304
  Top = 17
  Caption = 'Fmain'
  ClientHeight = 462
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lblID: TLabel
    Left = 32
    Top = 27
    Width = 48
    Height = 13
    Caption = #21592#24037#32534#21495
  end
  object lblName: TLabel
    Left = 30
    Top = 67
    Width = 48
    Height = 13
    Caption = #21592#24037#22995#21517
  end
  object edtID: TEdit
    Left = 90
    Top = 24
    Width = 127
    Height = 21
    TabOrder = 0
  end
  object edtName: TEdit
    Left = 90
    Top = 64
    Width = 127
    Height = 21
    TabOrder = 1
  end
  object rgSex: TRadioGroup
    Left = 32
    Top = 107
    Width = 185
    Height = 94
    Caption = #24615#21035
    Items.Strings = (
      #30007
      #22899)
    TabOrder = 2
  end
  object grpHobby: TGroupBox
    Left = 32
    Top = 224
    Width = 185
    Height = 161
    Caption = #20852#36259#29233#22909
    TabOrder = 3
    object chk01: TCheckBox
      Left = 24
      Top = 32
      Width = 97
      Height = 17
      Caption = #29748
      TabOrder = 0
    end
    object chk02: TCheckBox
      Left = 24
      Top = 64
      Width = 97
      Height = 17
      Caption = #26827
      TabOrder = 1
    end
    object chk03: TCheckBox
      Left = 24
      Top = 96
      Width = 97
      Height = 17
      Caption = #20070
      TabOrder = 2
    end
    object chk04: TCheckBox
      Left = 24
      Top = 128
      Width = 97
      Height = 17
      Caption = #30011
      TabOrder = 3
    end
  end
  object btnRead: TButton
    Left = 128
    Top = 397
    Width = 75
    Height = 25
    Caption = #35835'INI'
    TabOrder = 4
    OnClick = btnReadClick
  end
  object btnWrite: TButton
    Left = 30
    Top = 397
    Width = 75
    Height = 25
    Caption = #20889'INI'
    TabOrder = 5
    OnClick = btnWriteClick
  end
  object btnReadSection2: TButton
    Left = 399
    Top = 391
    Width = 121
    Height = 25
    Caption = 'ReadSection2'
    TabOrder = 6
    OnClick = btnReadSection2Click
  end
  object mmo1: TMemo
    Left = 240
    Top = 24
    Width = 296
    Height = 361
    TabOrder = 7
  end
  object btnReadSectionS: TButton
    Left = 240
    Top = 423
    Width = 105
    Height = 25
    Caption = 'btnReadSectionS'
    TabOrder = 8
    OnClick = btnReadSectionSClick
  end
  object btnReadsectionvalues: TButton
    Left = 399
    Top = 422
    Width = 121
    Height = 25
    Caption = 'btnReadsectionvalues'
    TabOrder = 9
    OnClick = btnReadsectionvaluesClick
  end
  object btnReadSection: TButton
    Left = 240
    Top = 392
    Width = 105
    Height = 25
    Caption = 'btnReadSection'
    TabOrder = 10
    OnClick = btnReadSectionClick
  end
  object mmoEncode: TMemo
    Left = 560
    Top = 51
    Width = 241
    Height = 327
    TabOrder = 11
  end
  object btnEncodeString: TButton
    Left = 560
    Top = 384
    Width = 113
    Height = 25
    Caption = 'btnEncodeString'
    TabOrder = 12
    OnClick = btnEncodeStringClick
  end
  object BtnDecodeString: TButton
    Left = 696
    Top = 384
    Width = 105
    Height = 25
    Caption = 'btnDecodeString'
    TabOrder = 13
    OnClick = BtnDecodeStringClick
  end
  object edtCode: TEdit
    Left = 560
    Top = 24
    Width = 241
    Height = 21
    TabOrder = 14
    Text = 'edtCode will be Encodeing'
  end
  object btnFileExists: TButton
    Left = 32
    Top = 432
    Width = 75
    Height = 25
    Caption = 'btnFileExists'
    TabOrder = 15
    OnClick = btnFileExistsClick
  end
end
