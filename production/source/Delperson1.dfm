object Delperson: TDelperson
  Left = 316
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Delperson'
  ClientHeight = 286
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 29
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 165
    Height = 29
    Caption = 'Deliver Person:'
  end
  object Label2: TLabel
    Left = 256
    Top = 120
    Width = 25
    Height = 33
    Caption = '%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 192
    Width = 113
    Height = 41
    Caption = 'SAVE'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 192
    Width = 113
    Height = 41
    Caption = 'CANCEL'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 304
    Top = 192
    Width = 105
    Height = 41
    Caption = 'CLOSE'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 168
    Top = 120
    Width = 81
    Height = 37
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 48
    Top = 80
    Width = 121
    Height = 37
    TabOrder = 4
    Visible = False
  end
  object Edit3: TEdit
    Left = 296
    Top = 72
    Width = 121
    Height = 37
    TabOrder = 5
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 32
    Top = 144
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select GSBH,Delperson'
      'from BasData'
      'where GSBH=:GSBH')
    UpdateObject = UpdateSQL1
    Left = 32
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Delperson: TIntegerField
      FieldName = 'Delperson'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update BasData'
      'set'
      '  GSBH = :GSBH,'
      '  Delperson = :Delperson'
      'where'
      '  GSBH = :OLD_GSBH')
    InsertSQL.Strings = (
      'insert into BasData'
      '  (GSBH, Delperson)'
      'values'
      '  (:GSBH, :Delperson)')
    DeleteSQL.Strings = (
      'delete from BasData'
      'where'
      '  GSBH = :OLD_GSBH')
    Left = 72
    Top = 144
  end
end
