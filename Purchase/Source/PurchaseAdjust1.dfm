object PurchaseAdjust: TPurchaseAdjust
  Left = 345
  Top = 159
  Width = 870
  Height = 500
  Caption = 'PurchaseAdjust'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 862
    Height = 193
    Align = alTop
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 92
      end
      item
        Color = 10354687
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CGLX'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 51
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 862
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
      Left = 120
      Top = 27
      Width = 41
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 264
      Top = 28
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 456
      Top = 27
      Width = 109
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 672
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 352
      Top = 24
      Width = 105
      Height = 24
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 568
      Top = 24
      Width = 97
      Height = 24
      TabOrder = 4
    end
    object Button2: TButton
      Left = 768
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Modify'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 862
    Height = 212
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 333
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'XqQty'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 59
      end>
  end
  object CGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CGZL.*,ZSZL.ZSYWJC'
      'from CGZL'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      ''
      '')
    UpdateObject = UpdateSQL1
    Left = 324
    Top = 132
    object CGMasCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object CGMasCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object CGMasUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object CGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGMasCGLX: TStringField
      FieldName = 'CGLX'
      FixedChar = True
      Size = 1
    end
    object CGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = CGMas
    Left = 356
    Top = 132
  end
  object CGDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select CGZLS.*,CLZL.YWPM,CLZL.DWBH'
      'from CGZLS'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'where CGZLS.CGNO=:CGNO'
      'order by CGZLS.CLBH'
      '')
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetXqQty: TCurrencyField
      FieldName = 'XqQty'
      DisplayFormat = '#,##0.00'
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS4: TDataSource
    DataSet = CGDet
    Left = 500
    Top = 132
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 88
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL'
      'set'
      '  USERDate = :USERDate'
      'where'
      '  CGNO = :OLD_CGNO')
    InsertSQL.Strings = (
      'insert into CGZL'
      '  (CGNO, GSBH, ZSBH, CGDate, USERDate, USERID, CGLX, YN, ZSYWJC)'
      'values'
      
        '  (:CGNO, :GSBH, :ZSBH, :CGDate, :USERDate, :USERID, :CGLX, :YN,' +
        ' :ZSYWJC)')
    DeleteSQL.Strings = (
      'delete from CGZL'
      'where'
      '  CGNO = :OLD_CGNO')
    Left = 320
    Top = 168
  end
end
