object Foodstuff: TFoodstuff
  Left = 0
  Top = 0
  Caption = 'Foodstuff'
  ClientHeight = 299
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 272
    ExplicitTop = 136
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 81
      Height = 13
      Caption = 'T'#202'N TH'#7920'C PH'#7848'M'
    end
    object Edit1: TEdit
      Left = 103
      Top = 10
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 241
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 327
    Height = 258
    Align = alClient
    DataSource = DS1
    DynProps = <>
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleParams.MultiTitle = True
    TitleParams.PopupMenu = PopupMenu1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Item'
        Footers = <>
        Title.Caption = #39135#21697#21517#31281'|T'#202'N TH'#7920'C PH'#7848'M'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemCN'
        Footers = <>
        Title.Caption = #39135#21697#21517#31281'|TI'#7870'NG HOA'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Unit'
        Footers = <>
        Title.Caption = #35336#31639#21934#20301'|'#272#416'N V'#7882
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 96
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Foodstuff')
    Left = 24
    Top = 144
    object Query1Item: TWideStringField
      FieldName = 'Item'
      Size = 30
    end
    object Query1ItemCN: TWideStringField
      FieldName = 'ItemCN'
      Size = 30
    end
    object Query1Unit: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 192
    object Delete1: TMenuItem
      Caption = 'Xo'#769'a'
      OnClick = Delete1Click
    end
  end
  object QUpdate: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Foodstuff')
    Left = 72
    Top = 144
  end
end
