object Upgrade: TUpgrade
  Left = 655
  Top = 248
  Width = 585
  Height = 102
  Caption = 'ERP Upgrade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 575
      Height = 31
      Align = alClient
      Smooth = True
      Step = 5
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 577
    Height = 38
    Align = alClient
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 575
      Height = 36
      Align = alClient
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Query1: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ERP_FileList')
    Left = 8
    Top = 25
    object Query1FileName: TStringField
      FieldName = 'FileName'
      Size = 50
    end
    object Query1FilePath: TStringField
      FieldName = 'FilePath'
      Size = 100
    end
    object Query1UpdateTime: TStringField
      FieldName = 'UpdateTime'
      Size = 25
    end
    object Query1FileSize: TStringField
      FieldName = 'FileSize'
      Size = 10
    end
    object Query1FolderPath: TStringField
      FieldName = 'FolderPath'
      Size = 200
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 72
    Top = 25
  end
  object Query2: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(FileName) FROM ERP_FileList')
    Left = 40
    Top = 25
  end
  object UpdateQry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      'SELECT COUNT(FileName) FROM ERP_FileList')
    Left = 104
    Top = 25
  end
  object ADOConn: TADOConnection
    CommandTimeout = 300
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=LIY_TYXUAN;Data Source=192.168.23.9'
    ConnectionTimeout = 150
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 24
  end
end
