object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 285
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_drivername: TLabel
    Left = 0
    Top = 3
    Width = 55
    Height = 13
    Caption = #36830#25509#21517#31216': '
  end
  object lbl_hostname: TLabel
    Left = 0
    Top = 27
    Width = 73
    Height = 13
    Caption = #26381#21153#22120#21517'(IP): '
  end
  object lbl_Port: TLabel
    Left = 0
    Top = 50
    Width = 28
    Height = 13
    Caption = #31471#21475':'
  end
  object lbl_User: TLabel
    Left = 0
    Top = 75
    Width = 43
    Height = 13
    Caption = #29992#25143#21517': '
  end
  object lbl_Password: TLabel
    Left = 0
    Top = 99
    Width = 31
    Height = 13
    Caption = #23494#30721': '
  end
  object lbl_database: TLabel
    Left = 0
    Top = 128
    Width = 67
    Height = 13
    Caption = #40664#35748#25968#25454#24211': '
  end
  object lbl_ServerCharSet: TLabel
    Left = 0
    Top = 152
    Width = 43
    Height = 13
    Caption = #23383#31526#38598': '
  end
  object btn_Select: TButton
    Left = 583
    Top = 252
    Width = 57
    Height = 25
    Caption = #26597#35810
    TabOrder = 0
    OnClick = btn_SelectClick
  end
  object edt_Select: TEdit
    Left = 0
    Top = 256
    Width = 577
    Height = 21
    TabOrder = 1
    Text = 'select * from  srm_stock_check_plan limit 2;'
  end
  object DBGrid1: TDBGrid
    Left = 207
    Top = 0
    Width = 434
    Height = 225
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt_drivername: TEdit
    Left = 80
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'MySQL'
  end
  object edt_hostname: TEdit
    Left = 80
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'localhost'
  end
  object edt_Port: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '3306'
  end
  object edt_User: TEdit
    Left = 80
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'root'
  end
  object edt_Password: TEdit
    Left = 80
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'java'
  end
  object edt_database: TEdit
    Left = 80
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'test531'
  end
  object edt_ServerCharSet: TEdit
    Left = 80
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'utf8'
  end
  object btn_Log: TButton
    Left = 56
    Top = 184
    Width = 75
    Height = 25
    Caption = #30331#38470
    TabOrder = 10
    OnClick = btn_LogClick
  end
  object SQLConnection1: TSQLConnection
    LoginPrompt = False
    Left = 464
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 376
    Top = 192
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    Left = 280
    Top = 48
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 312
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 152
  end
end
