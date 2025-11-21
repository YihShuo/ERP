object PC_Memo: TPC_Memo
  Left = -387
  Top = 199
  Width = 1300
  Height = 675
  Caption = 'PC Memo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 46
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 336
      Top = 16
      Width = 22
      Height = 13
      Caption = 'SR#'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Season'
    end
    object Label3: TLabel
      Left = 192
      Top = 16
      Width = 14
      Height = 13
      Caption = 'FD'
    end
    object Edit1: TEdit
      Left = 365
      Top = 13
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 576
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CB1: TComboBox
      Left = 59
      Top = 13
      Width = 118
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 212
      Top = 13
      Width = 105
      Height = 21
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 169
    Width = 417
    Height = 468
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'ShoeName'
        Width = 195
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 417
    Top = 169
    Width = 867
    Height = 468
    Align = alClient
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Department'
        Footers = <>
        PickList.Strings = (
          'DEV'
          'TECH'
          'CE')
        Width = 70
      end
      item
        DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 393
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 46
    Width = 1284
    Height = 123
    Align = alTop
    TabOrder = 3
    object Label4: TLabel
      Left = 208
      Top = 32
      Width = 56
      Height = 13
      Caption = 'Shoe Name'
    end
    object Label5: TLabel
      Left = 227
      Top = 54
      Width = 37
      Height = 13
      Caption = 'XieXIng'
    end
    object Label7: TLabel
      Left = 226
      Top = 78
      Width = 39
      Height = 13
      Caption = 'SheHao'
    end
    object Label8: TLabel
      Left = 216
      Top = 100
      Width = 49
      Height = 13
      Caption = 'Developer'
    end
    object Label9: TLabel
      Left = 480
      Top = 9
      Width = 29
      Height = 13
      Caption = 'Memo'
    end
    object Label10: TLabel
      Left = 242
      Top = 9
      Width = 22
      Height = 13
      Caption = 'SR#'
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 193
      Height = 113
      BevelOuter = bvLowered
      TabOrder = 0
      object ShoeImage: TImage
        Left = 0
        Top = -1
        Width = 193
        Height = 114
        Stretch = True
      end
      object Label6: TLabel
        Left = 1
        Top = 1
        Width = 191
        Height = 111
        Align = alClient
        Alignment = taCenter
        Caption = 'No Picture'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -33
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
    end
    object DBEdit1: TDBEdit
      Left = 272
      Top = 5
      Width = 193
      Height = 21
      DataField = 'DEVCODE'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 272
      Top = 28
      Width = 193
      Height = 21
      DataField = 'XieMing'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 272
      Top = 51
      Width = 193
      Height = 21
      DataField = 'XieXing'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 272
      Top = 74
      Width = 193
      Height = 21
      DataField = 'SheHao'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 517
      Top = 5
      Width = 385
      Height = 112
      DataField = 'Remark'
      DataSource = DataSource2
      Enabled = False
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 272
      Top = 96
      Width = 193
      Height = 21
      DataField = 'FD'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    Left = 16
    Top = 248
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
    end
    object Query1JIJIE: TStringField
      FieldName = 'JIJIE'
    end
    object Query1FD: TStringField
      FieldName = 'FD'
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
    end
    object Query1ImgPath: TStringField
      FieldName = 'ImgPath'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 216
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PC_Data_Memo'
      'SET'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  Remark = :Remark,'
      '  Department = :Department,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao AND'
      '  UserID = :OLD_UserID AND'
      '  UserDate = :OLD_UserDate')
    InsertSQL.Strings = (
      'INSERT INTO PC_Data_Memo'
      '  (XieXing, SheHao, Remark, Department, UserID, UserDate)'
      'VALUES'
      '  (:XieXing, :SheHao, :Remark, :Department, :UserID, GETDATE())')
    DeleteSQL.Strings = (
      'DELETE FROM PC_Data_Memo'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao AND'
      '  UserID = :OLD_UserID AND'
      '  UserDate = :OLD_UserDate'
      '  ')
    Left = 440
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 440
    Top = 216
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    AfterScroll = Query2AfterScroll
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'SELECT XieXing, SheHao, Department, UserDate, UserID, Remark, '#39'E' +
        #39' AS Status, Department AS BDep, Remark AS BRemark FROM PC_Data_' +
        'Memo'
      'WHERE XieXing = :XieXing AND SheHao = :SheHao'
      'ORDER BY Department, UserDate')
    UpdateObject = UpdateSQL1
    Left = 440
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
    end
    object Query2Department: TStringField
      FieldName = 'Department'
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
    end
    object Query2Remark: TStringField
      FieldName = 'Remark'
    end
    object Query2Status: TStringField
      FieldName = 'Status'
    end
    object Query2BDep: TStringField
      FieldName = 'BDep'
    end
    object Query2BRemark: TStringField
      FieldName = 'BRemark'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 216
    object INSERT: TMenuItem
      Caption = 'INSERT'
      Visible = False
      OnClick = INSERTClick
    end
    object MODIFY: TMenuItem
      Caption = 'MODIFY'
      Visible = False
      OnClick = MODIFYClick
    end
    object SAVE: TMenuItem
      Caption = 'SAVE'
      Visible = False
      OnClick = SAVEClick
    end
    object CANCEL: TMenuItem
      Caption = 'CANCEL'
      Visible = False
      OnClick = CANCELClick
    end
    object DELETE: TMenuItem
      Caption = 'DELETE'
      Visible = False
      OnClick = DELETEClick
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 216
  end
end
