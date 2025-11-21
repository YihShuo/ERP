object Directory_LeaveRuler_ID: TDirectory_LeaveRuler_ID
  Left = 0
  Top = 0
  Caption = 'Directory_LeaveRuler_ID'
  ClientHeight = 294
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 522
    object Label1: TLabel
      Left = 22
      Top = 12
      Width = 37
      Height = 16
      Caption = 'S'#7889' th'#7867
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 12
      Width = 54
      Height = 16
      Caption = 'H'#7885' v'#224' t'#234'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 63
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 268
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 395
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 474
    Height = 253
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = #24037#34399'|S'#7889' th'#7867
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Title.Caption = #22995#21517'|H'#7885' v'#224' t'#234'n'
        Width = 252
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 104
  end
  object Query1: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Department, Position, Name FROM Directory')
    Left = 80
    Top = 152
    object Query1ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query1Name: TWideStringField
      FieldName = 'Name'
      Size = 10
    end
  end
end
