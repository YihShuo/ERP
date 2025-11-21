object DelayReason: TDelayReason
  Left = 676
  Top = 159
  Width = 963
  Height = 511
  BorderIcons = [biSystemMenu]
  Caption = 'DelayReason'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 12
      Width = 56
      Height = 16
      Caption = 'DR Code'
    end
    object Label2: TLabel
      Left = 176
      Top = 12
      Width = 37
      Height = 16
      Caption = 'Name'
    end
    object Edit1: TEdit
      Left = 100
      Top = 8
      Width = 65
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 224
      Top = 8
      Width = 193
      Height = 24
      TabOrder = 2
    end
    object chkCopyAll: TCheckBox
      Left = 424
      Top = 12
      Width = 73
      Height = 17
      Caption = 'Copy All'
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 947
    Height = 431
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DRCODE'
        Footers = <>
        Title.Caption = 'DR-Code'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'DRMAINCODE'
        Footers = <>
        Title.Caption = 'M-Code'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'DRNAME'
        Footers = <>
        Title.Caption = 'Name'
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Description'
        Footers = <>
        Width = 226
      end
      item
        EditButtons = <>
        FieldName = 'Examples'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'VN'
        Footers = <>
        Width = 226
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM DELAYREASON d')
    UpdateObject = UpdateSQL1
    Left = 208
    Top = 160
    object Query1DRCODE: TStringField
      FieldName = 'DRCODE'
      Origin = 'MYDB.DELAYREASON.DRCODE'
      FixedChar = True
      Size = 4
    end
    object Query1DRMAINCODE: TStringField
      FieldName = 'DRMAINCODE'
      Origin = 'MYDB.DELAYREASON.DRMAINCODE'
      FixedChar = True
      Size = 2
    end
    object Query1DRNAME: TStringField
      FieldName = 'DRNAME'
      Origin = 'MYDB.DELAYREASON.DRNAME'
      FixedChar = True
      Size = 100
    end
    object Query1Description: TStringField
      FieldName = 'Description'
      Origin = 'MYDB.DELAYREASON.Description'
      FixedChar = True
      Size = 200
    end
    object Query1Examples: TStringField
      FieldName = 'Examples'
      Origin = 'MYDB.DELAYREASON.Examples'
      FixedChar = True
      Size = 255
    end
    object Query1VN: TStringField
      FieldName = 'VN'
      Origin = 'DB.DELAYREASON.VN'
      FixedChar = True
      Size = 255
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.DELAYREASON.YN'
      FixedChar = True
      Size = 1
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.DELAYREASON.UserID'
      FixedChar = True
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.DELAYREASON.UserDate'
    end
    object Query1NoUse: TBooleanField
      FieldName = 'NoUse'
      Origin = 'DB.DELAYREASON.NoUse'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 232
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE DELAYREASON'
      'SET'
      '        DRMAINCODE=:DRMAINCODE,'
      '        DRNAME=:DRNAME,'
      '        Description=:Description,'
      '        Examples=:Examples,'
      '        VN=:VN,'
      '        YN=:YN,'
      '        UserID=:UserID,'
      '        UserDate=:UserDate'
      'WHERE DRCODE=:OLD_DRCODe')
    InsertSQL.Strings = (
      
        'INSERT INTO DELAYREASON (DRCODE,DRMAINCODE,DRNAME,Description,Ex' +
        'amples,VN,YN,UserID,UserDate)'
      
        'values (:DRCODE,:DRMAINCODE,:DRNAME,:Description,:Examples,:VN,:' +
        'YN,:UserID,:UserDate)')
    DeleteSQL.Strings = (
      'delete DELAYREASON'
      'where DRCODE=:OLD_DRCODE')
    Left = 248
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 160
  end
end
