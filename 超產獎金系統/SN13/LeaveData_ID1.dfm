object LeaveData_ID: TLeaveData_ID
  Left = 0
  Top = 0
  Caption = 'Supervisor'
  ClientHeight = 299
  ClientWidth = 520
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
    Width = 520
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 14
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
      Left = 205
      Top = 13
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
      Left = 61
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 261
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 424
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 520
    Height = 258
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
        FieldName = 'Department'
        Footers = <>
        Title.Caption = #37096#38272'|'#272#417'n v'#7883
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Position'
        Footers = <>
        Title.Caption = #32887#20301'|Ch'#7913'c v'#7909
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Title.Caption = #22995#21517'|H'#7885' v'#224' t'#234'n'
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 104
  end
  object Query1: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Department, Position, Name FROM Directory')
    Left = 16
    Top = 152
    object Query1ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query1Department: TWideStringField
      FieldName = 'Department'
    end
    object Query1Position: TWideStringField
      FieldName = 'Position'
    end
    object Query1Name: TWideStringField
      FieldName = 'Name'
      Size = 10
    end
  end
end
