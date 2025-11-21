object Commit: TCommit
  Left = 540
  Top = 309
  Width = 450
  Height = 324
  Caption = 'Commit File'
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 442
    Height = 41
    Align = alBottom
    Caption = 'COMMIT'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
    OnMouseDown = Panel1MouseDown
    OnMouseUp = Panel1MouseUp
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 442
    Height = 211
    Align = alClient
    Color = clBlack
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 440
      Height = 209
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
      WordWrap = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 41
    Align = alTop
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 216
      Height = 39
      Align = alLeft
      Caption = 'SELECT FILE'
      Color = clSilver
      TabOrder = 0
      OnClick = Panel4Click
      OnMouseDown = Panel4MouseDown
      OnMouseUp = Panel4MouseUp
    end
    object Panel5: TPanel
      Left = 225
      Top = 1
      Width = 216
      Height = 39
      Align = alRight
      Caption = 'TRUNCATE TABLE'
      Color = clSilver
      TabOrder = 1
      OnClick = Panel5Click
      OnMouseDown = Panel5MouseDown
      OnMouseUp = Panel5MouseUp
    end
  end
  object Query1: TADOQuery
    Connection = ADOConn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM File_Download')
    Left = 8
    Top = 49
    object Query1FilePath: TStringField
      FieldName = 'FilePath'
      Size = 100
    end
    object Query1UpdateTime: TStringField
      FieldName = 'UpdateTime'
      Size = 25
    end
    object Query1FileStream: TBlobField
      FieldName = 'FileStream'
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 40
    Top = 49
  end
  object ADOConn: TADOConnection
    CommandTimeout = 300
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tyx;Persist Security Info=True;User' +
      ' ID=tyx;Initial Catalog=LIY_TYXUAN;Data Source=192.168.23.9'
    ConnectionTimeout = 150
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 72
    Top = 49
  end
end
