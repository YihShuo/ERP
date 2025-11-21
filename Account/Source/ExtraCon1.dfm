object ExtraCon: TExtraCon
  Left = 322
  Top = 204
  Width = 1098
  Height = 485
  Caption = 'ExtraCon'
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
      end
      item
        EditButtons = <>
        FieldName = 'JGLX'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Width = 67
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
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 38
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
        FieldName = 'CWBH'
        Footers = <>
        Width = 46
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
          Title.Caption = 'Ratio'
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'Qty_Del'
          Footers = <>
          Title.Caption = 'Qty'
        end
        item
          EditButtons = <>
          FieldName = 'LLNO'
          Footers = <>
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'HGLB'
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'CNO'
          Footers = <>
          Width = 70
        end>
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZL'
      'set'
      '  CFMID1 = :CFMID1,'
      '  CFMID2 = :CFMID2,'
      '  YN = :YN,'
      '  YN_Date = :YN_Date'
      'where'
      '  JGNO = :OLD_JGNO')
    InsertSQL.Strings = (
      'insert into JGZL'
      '  (CFMID1, CFMID2, YN)'
      'values'
      '  (:CFMID1, :CFMID2, :YN)')
    DeleteSQL.Strings = (
      'delete from JGZL'
      'where'
      '  JGNO = :OLD_JGNO')
    Left = 324
    Top = 156
  end
  object JGMas: TQuery
    CachedUpdates = True
    OnNewRecord = JGMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select JGZL.*,ZSZL.ZSYWJC'
      'from JGZL'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
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
    object JGMasJGDate: TDateTimeField
      FieldName = 'JGDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object JGMasJGLX: TStringField
      FieldName = 'JGLX'
      FixedChar = True
      Size = 1
    end
    object JGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
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
    object JGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object JGMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGMasYN_Date: TDateTimeField
      FieldName = 'YN_Date'
    end
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 364
    Top = 132
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZLS'
      'set'
      '  CostID = :CostID,'
      '  YN = :YN'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB')
    InsertSQL.Strings = (
      'insert into JGZLS'
      '  (CostID, YN)'
      'values'
      '  (:CostID, :YN)')
    DeleteSQL.Strings = (
      'delete from JGZLS'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB')
    Left = 468
    Top = 165
  end
  object JGDet: TQuery
    CachedUpdates = True
    AfterOpen = JGDetAfterOpen
    OnNewRecord = JGDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select JGZLS.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CKB' +
        'H'
      'where JGZLS.JGNO=:JGNO'
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'order by JGZLS.CLBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
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
      Size = 11
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetZMLB: TStringField
      FieldName = 'ZMLB'
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
    object JGDetCLPrice: TCurrencyField
      FieldName = 'CLPrice'
      DisplayFormat = '##,#0'
    end
    object JGDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 15
    end
    object JGDetCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
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
    object JGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object JGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGDetUSERID: TStringField
      FieldName = 'USERID'
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
    Left = 508
    Top = 132
  end
  object JGDetZ: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select *'
      'from ('
      'select JGZLS.*,CLZL.YWPM,CLZL.DWBH,JGZL.CKBH'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.ZMLB'
      'where JGZLS.CLBH=:CLBH'
      'and JGZLS.JGNO=:JGNO'
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39' ) JGZLS'
      
        'left join ( select KCLL.JGNO as JGNO_Del,KCLL.LLNO,KCLLS.CLBH, K' +
        'CLLS.DFL,KCLLS.HGLB,KCLLS.CNO,sum(KCLLS.Qty) as Qty_Del'
      #9#9#9'      from KCLL inner join KCLLS'
      #9#9#9'      on KCLL.LLNO=KCLLS.LLNO'
      #9#9#9'      where KCLL.CFMID<>'#39'NO'#39
      #9#9#9'      and KCLL.JGNO=:JGNO'
      #9#9#9'      and KCLLS.DFL=:CLBH'
      
        #9#9#9'      group by KCLL.JGNO,KCLL.LLNO,KCLLS.CLBH, KCLLS.DFL,KCLL' +
        'S.HGLB,KCLLS.CNO'
      
        #9#9#9'    ) KCLLS on JGZLS.JGNO=KCLLS.JGNO_Del and JGZLS.ZMLB=KCLLS' +
        '.CLBH')
    Left = 580
    Top = 133
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
      end
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
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
      Size = 11
    end
    object JGDetZCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGDetZQty_Del: TCurrencyField
      FieldName = 'Qty_Del'
      DisplayFormat = '##,#0.0'
    end
    object JGDetZLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object JGDetZHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object JGDetZCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = JGDetZ
    Left = 612
    Top = 133
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 132
  end
end
