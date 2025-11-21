object Adjust_CBY_Extra_Con: TAdjust_CBY_Extra_Con
  Left = 219
  Top = 225
  Width = 1037
  Height = 450
  Caption = 'Adjust CBY Extra ConFirm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1021
    Height = 185
    Align = alTop
    DataSource = DS1
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
        FieldName = 'JGNO'
        Footers = <>
        ReadOnly = True
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'JGDate'
        Footers = <>
        ReadOnly = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        ReadOnly = True
        Width = 63
      end
      item
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        ReadOnly = True
        Width = 55
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CFMDate2'
        Footers = <>
        ReadOnly = True
        Width = 110
      end
      item
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 47
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 1021
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
      Left = 120
      Top = 15
      Width = 28
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 8
      Top = 11
      Width = 113
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 11
      Width = 113
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 520
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 608
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Modify'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button3: TButton
      Left = 689
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 233
    Width = 1021
    Height = 84
    Align = alClient
    DataSource = DS2
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
        ReadOnly = True
        Width = 91
      end
      item
        ButtonStyle = cbsNone
        Color = clInfoBk
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
        ButtonStyle = cbsNone
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Width = 63
      end
      item
        ButtonStyle = cbsNone
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Width = 59
      end
      item
        ButtonStyle = cbsNone
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Width = 82
      end
      item
        ButtonStyle = cbsNone
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 88
      end
      item
        ButtonStyle = cbsNone
        Color = 13565951
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 385
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        ReadOnly = True
        Width = 191
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 317
    Width = 1021
    Height = 94
    Align = alBottom
    TabOrder = 3
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 1
      Width = 1019
      Height = 92
      Align = alClient
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
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Width = 67
        end>
    end
  end
  object DS1: TDataSource
    DataSet = JGMas
    Left = 20
    Top = 52
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 4
    Top = 124
  end
  object DS2: TDataSource
    DataSet = JGDet
    Left = 20
    Top = 284
  end
  object JGDetZ: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    DataSource = DS2
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
    Left = 60
    Top = 373
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
  object DS3: TDataSource
    DataSet = JGDetZ
    Left = 28
    Top = 373
  end
  object JGDet: TQuery
    CachedUpdates = True
    AfterOpen = Query1AfterOpen
    OnNewRecord = Query1NewRecord
    DatabaseName = 'DB'
    DataSource = DS1
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
    Left = 56
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JGNO'
        ParamType = ptUnknown
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
    object JGDetUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUserID: TStringField
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
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CBY_LineSideStockS'
      'set'
      '  CFMDate1 = :CFMDate1,'
      '  YN = :YN'
      'where'
      '  LSNO = :OLD_JGNO')
    Left = 44
    Top = 92
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CBY_LineSideStockS'
      'SET'
      '  Qty = :Qty,'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  CostID = :CostID'
      'WHERE'
      '  LSNO = :OLD_JGNO AND'
      '  CLBH = :OLD_CLBH AND'
      '  ToCLBH = '#39'ZZZZZZZZZZ'#39
      '')
    Left = 92
    Top = 285
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
    Left = 12
    Top = 92
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
    object JGMasUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
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
    object JGMasUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object JGMasJGDate: TDateTimeField
      FieldName = 'JGDate'
    end
    object JGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
    object JGMasCFMDate2: TDateTimeField
      FieldName = 'CFMDate2'
    end
  end
end
