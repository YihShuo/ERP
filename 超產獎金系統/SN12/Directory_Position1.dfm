object Directory_Position: TDirectory_Position
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Directory_Position'
  ClientHeight = 322
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 500
    Height = 273
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PID'
        Footers = <>
        Title.Caption = 'ID ch'#7913'c v'#7909
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NID'
        Footers = <>
        Title.Caption = 'ID qu'#7889'c t'#7883'ch'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Position'
        Footers = <>
        Title.Caption = 'T'#234'n ch'#7913'c v'#7909
        Width = 196
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 72
      Height = 16
      Caption = 'ID qu'#7889'c t'#7883'ch:'
    end
    object Label1: TLabel
      Left = 190
      Top = 17
      Width = 75
      Height = 16
      Caption = 'T'#234'n ch'#7913'c v'#7909':'
    end
    object ed_NID: TEdit
      Left = 77
      Top = 13
      Width = 77
      Height = 24
      ReadOnly = True
      TabOrder = 0
      OnChange = ed_NIDChange
    end
    object ed_position: TEdit
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
  object DS1: TDataSource
    DataSet = Query1
    Left = 336
    Top = 128
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 280
    Top = 128
    object Query1PID: TStringField
      FieldName = 'PID'
    end
    object Query1NID: TStringField
      FieldName = 'NID'
    end
    object Query1Position: TStringField
      FieldName = 'Position'
    end
  end
end
