object GhiChepDongGoiDuLieuNgay: TGhiChepDongGoiDuLieuNgay
  Left = 0
  Top = 0
  Caption = 'GhiChepDongGoiDuLieuNgay'
  ClientHeight = 299
  ClientWidth = 771
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 12
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Button1: TButton
      Left = 168
      Top = 7
      Width = 77
      Height = 25
      Caption = 'T'#236'm ki'#7871'm'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 251
      Top = 7
      Width = 67
      Height = 24
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button5Click
    end
    object DTP1: TDateTimePicker
      Left = 51
      Top = 9
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 2
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 41
    Width = 771
    Height = 258
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QTemp: TMyADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Category'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM DailyMenu'
      'WHERE Category = :Category')
    Left = 352
    Top = 104
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 103
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ITPC_DongGoiDuLieu'
      'WHERE 1=2')
    Left = 232
    Top = 151
    object Query1NgayThucHien: TDateTimeField
      FieldName = 'NgayThucHien'
    end
    object Query1KetQua: TIntegerField
      FieldName = 'KetQua'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1CFMID1: TStringField
      FieldName = 'CFMID1'
    end
    object Query1CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
