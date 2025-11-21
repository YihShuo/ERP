object Directory_Department: TDirectory_Department
  Left = 0
  Top = 0
  Caption = 'Directory_Department'
  ClientHeight = 299
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 516
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 51
      Top = 16
      Width = 20
      Height = 16
      Caption = 'DID'
    end
    object Label1: TLabel
      Left = 190
      Top = 17
      Width = 67
      Height = 16
      Caption = 'Department'
    end
    object ed_DID: TEdit
      Left = 77
      Top = 13
      Width = 77
      Height = 24
      TabOrder = 0
    end
    object ed_Department: TEdit
      Left = 262
      Top = 13
      Width = 149
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 417
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 516
    Height = 250
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Department'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select  DID, Name as Department from Directory_Department'
      ''
      '')
    Left = 280
    Top = 128
    object Query1DID: TStringField
      DisplayWidth = 10
      FieldName = 'DID'
      Size = 3
    end
    object Query1Department: TStringField
      DisplayWidth = 30
      FieldName = 'Department'
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 336
    Top = 128
  end
end
