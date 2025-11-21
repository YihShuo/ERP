object KindLoading: TKindLoading
  Left = 386
  Top = 306
  Width = 333
  Height = 485
  BorderIcons = [biSystemMenu]
  Caption = 'KindLoading'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 37
      Height = 16
      Caption = 'Name'
    end
    object Edit1: TEdit
      Left = 48
      Top = 8
      Width = 137
      Height = 24
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 317
    Height = 405
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KDName'
        Footers = <>
        Width = 160
      end>
  end
  object Button1: TButton
    Left = 72
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Ship_KindLoading')
    UpdateObject = UpdateSQL1
    Left = 72
    Top = 128
    object Query1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'MYDB.Ship_KindLoading.ID'
    end
    object Query1KDName: TStringField
      FieldName = 'KDName'
      Origin = 'MYDB.Ship_KindLoading.KDName'
      FixedChar = True
      Size = 100
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Ship_KindLoading set KDName=:KDName'
      'where ID=:ID')
    InsertSQL.Strings = (
      'INSERT INTO Ship_KindLoading ([KDName]) VALUES (:KDName)')
    DeleteSQL.Strings = (
      'delete Ship_KindLoading'
      'where ID=:old_ID')
    Left = 72
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 224
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
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 160
  end
end
