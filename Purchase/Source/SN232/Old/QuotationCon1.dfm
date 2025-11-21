object QuotationCon: TQuotationCon
  Left = 275
  Top = 216
  Width = 828
  Height = 500
  Caption = 'QuotationCon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 820
    Height = 193
    Align = alTop
    DataSource = DS3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BJNO'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSBH'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSYWJC'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFMDate'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFMID'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YN'
        Width = 27
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 820
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 32
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Button1: TButton
      Left = 280
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 400
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 520
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 257
    Width = 820
    Height = 209
    Align = alClient
    DataSource = DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        ReadOnly = True
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        ReadOnly = True
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        ReadOnly = True
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USPrice'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VNPrice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Memo'
        ReadOnly = True
        Width = 164
        Visible = True
      end>
  end
  object QuoMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      'select CGBJ.*,ZSZL.ZSYWJC'
      'from CGBJ'
      'left join ZSZL on CGBJ.ZSBH=ZSZL.ZSDH'
      '')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object QuoMasBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object QuoMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QuoMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object QuoMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object QuoMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object QuoMasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object QuoMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object QuoMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CGBJ'
      'set'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID'
      'where'
      '  BJNO = :OLD_BJNO')
    InsertSQL.Strings = (
      'insert into CGBJ'
      '  (CFMDate, CFMID)'
      'values'
      '  (:CFMDate, :CFMID)')
    DeleteSQL.Strings = (
      'delete from CGBJ'
      'where'
      '  BJNO = :OLD_BJNO')
    Left = 324
    Top = 156
  end
  object DS3: TDataSource
    DataSet = QuoMas
    Left = 364
    Top = 132
  end
  object QuoDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select CGBJS.*,CLZL.YWPM,CLZL.DWBH'
      'from CGBJS'
      'left join CLZL on CLZL.CLDH=CGBJS.CLBH'
      'where CGBJS.BJNO=:BJNO'
      'order by CGBJS.CLBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'BJNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object QuoDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object QuoDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QuoDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object QuoDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object QuoDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object QuoDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object QuoDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object QuoDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object QuoDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object QuoDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CGBJS'
      'set'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice'
      'where'
      '  BJNO = :OLD_BJNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CGBJS'
      '  (USPrice, VNPrice)'
      'values'
      '  (:USPrice, :VNPrice)')
    DeleteSQL.Strings = (
      'delete from CGBJS'
      'where'
      '  BJNO = :OLD_BJNO and'
      '  CLBH = :OLD_CLBH')
    Left = 468
    Top = 165
  end
  object DS4: TDataSource
    DataSet = QuoDet
    Left = 508
    Top = 132
  end
end
