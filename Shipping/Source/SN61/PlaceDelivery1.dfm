object PlaceDelivery: TPlaceDelivery
  Left = 334
  Top = 179
  Width = 776
  Height = 601
  BorderIcons = [biSystemMenu]
  Caption = 'PlaceDelivery'
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
    Width = 768
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
    Width = 768
    Height = 529
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PDName'
        Footers = <>
        Width = 153
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'PDName_VN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PDName VN'
        Width = 411
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User ID'
        Width = 70
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Width = 100
      end>
  end
  object Button1: TButton
    Left = 189
    Top = 7
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
      
        'SELECT PDName,PDName_VN,UserID,UserDate,'#39'1'#39' YN,PDName PDName_Tem' +
        'p from Ship_PlaceDelivery WHERE 1=2')
    UpdateObject = UpdateSQL1
    Left = 72
    Top = 128
    object Query1PDName: TStringField
      FieldName = 'PDName'
      Origin = 'MYDB.Ship_PlaceDelivery.PDName'
      FixedChar = True
      Size = 100
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1PDName_VN: TStringField
      FieldName = 'PDName_VN'
      FixedChar = True
      Size = 150
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1PDName_Temp: TStringField
      FieldName = 'PDName_Temp'
      FixedChar = True
      Size = 100
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Ship_PlaceDelivery'
      'set'
      '  PDName = :PDName,'
      '  UserID = :UserID,'
      '  UserDate = getdate()'
      'where'
      '  PDName = :OLD_PDName')
    InsertSQL.Strings = (
      'insert into Ship_PlaceDelivery'
      '  (PDName, UserID, UserDate, YN)'
      'values'
      '  (:PDName, :UserID, getdate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'delete from Ship_PlaceDelivery'
      'where'
      '  PDName = :OLD_PDName')
    Left = 72
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
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
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 32
    Top = 128
  end
end
