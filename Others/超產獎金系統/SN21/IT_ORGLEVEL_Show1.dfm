object IT_ORGLEVEL_Show: TIT_ORGLEVEL_Show
  Left = 0
  Top = 0
  Caption = 'IT_ORGLEVEL_Show'
  ClientHeight = 225
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 399
    Height = 225
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    RowHeight = 20
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButtons = <>
        FieldName = 'DV_MA1'
        Footer.FieldName = 'DV_MA1'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_TEN'
        Footers = <>
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 22
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object IT_ORGLEVELQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    DataSource = ProdBonus.DS5
    Parameters = <
      item
        Name = 'DV_MA'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      '  Select IT_ORGLEVEL.*,ST_DONVI.DV_TEN'
      '  from IT_ORGLEVEL '
      '  Left join ST_DONVI on ST_DONVI.DV_MA=IT_ORGLEVEL.DV_MA1'
      '  where IT_ORGLEVEL.DV_MA=:DV_MA')
    Left = 168
    Top = 65
    object IT_ORGLEVELQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object IT_ORGLEVELQryDV_MA1: TWideStringField
      FieldName = 'DV_MA1'
      Size = 50
    end
    object IT_ORGLEVELQryDV_TEN: TWideStringField
      FieldName = 'DV_TEN'
      Size = 50
    end
    object IT_ORGLEVELQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object IT_ORGLEVELQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object IT_ORGLEVELQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = IT_ORGLEVELQry
    Left = 168
    Top = 117
  end
end
