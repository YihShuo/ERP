object IT_ORGLEVEL_DONVI: TIT_ORGLEVEL_DONVI
  Left = 0
  Top = 0
  Caption = 'IT_ORGLEVEL_DONVI'
  ClientHeight = 342
  ClientWidth = 493
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 785
    object Label14: TLabel
      Left = 19
      Top = 11
      Width = 41
      Height = 16
      Caption = 'DV_MA'
    end
    object Label15: TLabel
      Left = 196
      Top = 11
      Width = 46
      Height = 16
      Caption = 'DV_TEN'
    end
    object Label1: TLabel
      Left = 7
      Top = 35
      Width = 46
      Height = 16
      Caption = 'Sumline'
    end
    object Query4: TButton
      Left = 391
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Query4Click
    end
    object DV_MAEdit: TEdit
      Left = 64
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object DV_TenEdit: TEdit
      Left = 248
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object SumlineEdit: TEdit
      Left = 59
      Top = 32
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object ProdCK: TCheckBox
      Left = 191
      Top = 36
      Width = 103
      Height = 17
      Caption = 'San xuat don vi'
      TabOrder = 4
    end
  end
  object DBGridEh5: TDBGridEh
    Left = 0
    Top = 57
    Width = 493
    Height = 285
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    RowHeight = 20
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh5DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_MA'
        Footer.FieldName = 'DV_MA'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Width = 112
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_TEN'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Width = 199
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sumline'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Width = 139
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = ST_DONVIQry
    Left = 224
    Top = 145
  end
  object ST_DONVIQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      'Select * from ST_DONVI')
    Left = 224
    Top = 97
    object ST_DONVIQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object ST_DONVIQryDV_TEN: TWideStringField
      FieldName = 'DV_TEN'
      Size = 50
    end
    object ST_DONVIQryTienSanluongHeso: TFloatField
      FieldName = 'TienSanluongHeso'
    end
    object ST_DONVIQrysumline: TStringField
      FieldName = 'sumline'
      Size = 30
    end
    object ST_DONVIQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object ST_DONVIQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object ST_DONVIQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
