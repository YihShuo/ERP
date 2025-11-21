object CBY_ExtraPur: TCBY_ExtraPur
  Left = 407
  Top = 134
  Width = 1066
  Height = 500
  Caption = 'CBY_ExtraPur'
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
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 1050
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 162
      Top = 23
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 312
      Top = 23
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
    end
    object Label3: TLabel
      Left = 8
      Top = 23
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From'
    end
    object Button1: TButton
      Left = 576
      Top = 16
      Width = 97
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
    object Button2: TButton
      Left = 688
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 800
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 20
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 20
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 400
      Top = 20
      Width = 137
      Height = 24
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1050
    Height = 185
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 94
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'JGDate'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Width = 71
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        Width = 71
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CFMDate2'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 34
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 249
    Width = 1050
    Height = 123
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = pop1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGridEh2ColExit
    OnEditButtonClick = DBGridEh2EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 256
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        ReadOnly = True
        Width = 63
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        ReadOnly = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 190
      end>
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 372
    Width = 1050
    Height = 89
    Align = alBottom
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 256
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end>
  end
  object JGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select JGZL.*,ZSZL.ZSYWJC'
      'from JGZL'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH')
    UpdateObject = UpMas
    Left = 20
    Top = 79
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 12
    end
    object JGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object JGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object JGMasUSERDATE: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasUSERID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate2: TDateTimeField
      FieldName = 'CFMDate2'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      Size = 15
    end
    object JGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CBY_LineSideStockS'
      'SET'
      '  ZSBH = :ZSBH,'
      '  CFMID2 = :CFMID2,'
      '  CFMDate2 = :CFMDate2'
      'WHERE'
      '  LSNO = :OLD_JGNO')
    Left = 20
    Top = 111
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 20
    Top = 47
  end
  object JGDet: TQuery
    CachedUpdates = True
    AfterOpen = JGDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      
        'SELECT DISTINCT JGZLS.LSNO AS JGNO, JGZLS.CLBH, CLZL.YWPM, CLZL.' +
        'DWBH, ABS(JGZLS.Qty) AS Qty, JGZLS.USPrice, JGZLS.VNPrice, JGZLS' +
        '.USACC, JGZLS.VNACC, JGZLS.Memo2 AS Memo, JGZLS.BJNO FROM CBY_Li' +
        'neSideStockS AS JGZLS'
      'LEFT JOIN CLZL ON CLZL.CLDH = JGZLS.CLBH'
      'WHERE JGZLS.LSNO = :JGNO AND JGZLS.ToCLBH = '#39'ZZZZZZZZZZ'#39
      'ORDER BY JGZLS.CLBH')
    UpdateObject = UPDet
    Left = 20
    Top = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object JGDetJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 12
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object JGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object JGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object JGDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object JGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object JGDetBJNO: TStringField
      FieldName = 'BJNO'
      Size = 11
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CBY_LineSideStockS'
      'SET'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  Memo2 = :Memo,'
      '  BJNO = :BJNO,'
      '  CostID = '#39'627'#39','
      '  YN = '#39'1'#39
      'WHERE'
      '  LSNO = :OLD_JGNO AND'
      '  CLBH = :OLD_CLBH AND'
      '  ToCLBH = '#39'ZZZZZZZZZZ'#39)
    Left = 52
    Top = 328
  end
  object DS4: TDataSource
    DataSet = JGDet
    Left = 20
    Top = 295
  end
  object JGDetZ: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'SELECT JGZLS.ToCLBH AS CLBH, JGZLS.CLBH AS ZMLB, CLZL.YWPM, CLZL' +
        '.DWBH, CLZHZL.SYL AS Qty FROM CBY_LineSideStockS AS JGZLS'
      'LEFT JOIN CLZL ON CLZL.CLDH = JGZLS.CLBH'
      
        'LEFT JOIN CLZHZL ON CLZHZL.CLDH = JGZLS.ToCLBH AND CLZHZL.CLDH1 ' +
        '= JGZLS.CLBH'
      'WHERE JGZLS.ToCLBH = :CLBH'
      'AND JGZLS.LSNO = :JGNO'
      'AND JGZLS.ToCLBH <> '#39'ZZZZZZZZZZ'#39)
    Left = 52
    Top = 424
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object JGDetZCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetZZMLB: TStringField
      FieldName = 'ZMLB'
      Origin = 'DB.JGZLS.ZMLB'
      FixedChar = True
      Size = 15
    end
    object JGDetZYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetZDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object JGDetZQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.JGZLS.Qty'
      DisplayFormat = '##,#0.0000'
    end
  end
  object DS2: TDataSource
    DataSet = JGDetZ
    Left = 20
    Top = 424
  end
  object pop1: TPopupMenu
    Left = 52
    Top = 295
    object SNP1: TMenuItem
      Caption = 'Key Total'
      OnClick = SNP1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 111
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 53
    Top = 79
  end
end
