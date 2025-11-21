object CBY_ExtraCon: TCBY_ExtraCon
  Left = 230
  Top = 137
  Width = 1098
  Height = 485
  Caption = 'CBY_ExtraCon'
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
    Width = 1082
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
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
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'JGDate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate2'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 41
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 1082
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 129
      Top = 15
      Width = 19
      Height = 16
      Alignment = taRightJustify
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
      Left = 272
      Top = 15
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 516
      Top = 6
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
    object Button2: TButton
      Left = 605
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 687
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 11
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 11
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 352
      Top = 11
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
    object Button4: TButton
      Left = 772
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 233
    Width = 1082
    Height = 119
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16760767
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    ReadOnly = True
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
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 58
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Width = 54
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 71
      end
      item
        Color = 13565951
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 150
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 1082
    Height = 94
    Align = alBottom
    TabOrder = 3
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 1
      Width = 1080
      Height = 92
      Align = alClient
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
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
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Width = 394
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Width = 67
        end>
    end
  end
  object UpMas: TUpdateSQL
    Left = 20
    Top = 116
  end
  object JGMas: TQuery
    CachedUpdates = True
    OnNewRecord = JGMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT DISTINCT JGZL.LSNO AS JGNO, JGZL.ZSBH, ZSZL.ZSYWJC'
      ', convert(varchar,JGZL.UserDate,111) AS JGDate, JGZL.UserID'
      ', convert(varchar,JGZL.UserDate,111) as UserDate'
      ', JGZL.CFMID1, convert(varchar,JGZL.CFMDate1,111) as CFMDate1'
      
        ', JGZL.CFMID2, convert(varchar,JGZL.CFMDate2,111) as CFMDate2, J' +
        'GZL.YN, JGZL.CKBH '
      'FROM CBY_LineSideStockS AS JGZL'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = JGZL.ZSBH')
    UpdateObject = UpMas
    Left = 20
    Top = 84
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
    object JGMasJGDate: TStringField
      FieldName = 'JGDate'
      FixedChar = True
      Size = 30
    end
    object JGMasUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object JGMasUserDate: TStringField
      FieldName = 'UserDate'
      FixedChar = True
      Size = 30
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate1: TStringField
      FieldName = 'CFMDate1'
      FixedChar = True
      Size = 30
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate2: TStringField
      FieldName = 'CFMDate2'
      FixedChar = True
      Size = 30
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 20
    Top = 52
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CBY_LineSideStockS'
      'SET'
      '  CostID = :CostID,'
      '  YN = :YN'
      'WHERE'
      '  LSNO = :OLD_JGNO AND'
      '  CLBH = :OLD_CLBH AND'
      '  ToCLBH = '#39'ZZZZZZZZZZ'#39)
    Left = 84
    Top = 284
  end
  object JGDet: TQuery
    CachedUpdates = True
    AfterOpen = JGDetAfterOpen
    OnNewRecord = JGDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      
        'SELECT DISTINCT JGZLS.LSNO AS JGNO, JGZLS.CLBH, CLZL.YWPM, CLZL.' +
        'DWBH, ABS(JGZLS.Qty) AS Qty, JGZLS.USPrice, JGZLS.VNPrice, JGZLS' +
        '.USACC, JGZLS.VNACC, JGZLS.Memo2 AS Memo, JGZLS.BJNO, JGZLS.CWHL' +
        ', JGZLS.CostID, JGZLS.UserID, JGZLS.UserDate, JGZLS.YN FROM CBY_' +
        'LineSideStockS AS JGZLS'
      'LEFT JOIN CLZL ON CLZL.CLDH = JGZLS.CLBH'
      'WHERE JGZLS.LSNO = :JGNO AND JGZLS.ToCLBH = '#39'ZZZZZZZZZZ'#39
      'ORDER BY JGZLS.CLBH')
    UpdateObject = UPDet
    Left = 52
    Top = 284
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
      DisplayFormat = '##,#0.0'
    end
    object JGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object JGDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object JGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object JGDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object JGDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 15
    end
    object JGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object JGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object JGDetUSERDATE: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUSERID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object JGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS4: TDataSource
    DataSet = JGDet
    Left = 20
    Top = 284
  end
  object JGDetZ: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'SELECT JGZLS.LSNO AS JGNO, JGZLS.ToCLBH AS CLBH, JGZLS.CLBH AS Z' +
        'MLB, CLZL.YWPM, CLZL.DWBH, CLZHZL.SYL AS Qty FROM CBY_LineSideSt' +
        'ockS AS JGZLS'
      'LEFT JOIN CLZL ON CLZL.CLDH = JGZLS.CLBH'
      
        'LEFT JOIN CLZHZL ON CLZHZL.CLDH = JGZLS.ToCLBH AND CLZHZL.CLDH1 ' +
        '= JGZLS.CLBH'
      'WHERE JGZLS.ToCLBH = :CLBH'
      'AND JGZLS.LSNO = :JGNO'
      'AND JGZLS.ToCLBH <> '#39'ZZZZZZZZZZ'#39)
    Left = 52
    Top = 405
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
    object JGDetZJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 12
    end
  end
  object DS2: TDataSource
    DataSet = JGDetZ
    Left = 20
    Top = 405
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 52
    Top = 84
  end
end
