object Deliveraccount_Detail: TDeliveraccount_Detail
  Left = 168
  Top = 252
  Width = 1179
  Height = 394
  BorderIcons = [biSystemMenu]
  Caption = 'Deliveraccount_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1163
    Height = 355
    Align = alClient
    DataSource = DataSource1
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 112
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = DeliverAccount.DataSource1
    SQL.Strings = (
      
        'select KCLLS.LLNo,KCLLS.CLBH,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCL' +
        'LS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.BLSB,KCLLS.USERID,KCLLS.US' +
        'ERDATE'
      
        '       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.CLBH as MJBH,'#39'Ass' +
        'embly'#39' as DType,KCLL.CFMID,KCLL.CFMDate'
      'from KCLLS'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'where KCLLS.SCBH='#39'JHS1912-308'#39' '
      '      and KCLLS.CLBH='#39'W206000009'#39
      '      and KCLLS.CLBH='#39'W206000009'#39
      '      and '#39'Assembly'#39'='#39'Assembly'#39
      '      and KCLL.GSBH='#39'VDH'#39' '
      '      -- and KCLL.CFMID<>'#39'NO'#39' '
      '      and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39
      'union all'
      
        'select JGZLSS.JGNO as LLNO,JGZLS.ZMLB as CLBH,null as DFL,(JGZLS' +
        'S.CLSL*JGZLS.Qty) as CLSL,JGZLSS.ZLBH as SCBH,(JGZLS.Qty*JGZLSS.' +
        'Qty) as TempQty,(JGZLS.Qty*JGZLSS.Qty) as Qty, '
      
        '       JGZLS.MEMO,null as BLSB,JGZLSS.USERID,JGZLSS.USERDATE,nul' +
        'l YYSB,null as YWSM,JGZL.CKBH,JGZLS.CLBH as MJBH,'#39'Gia cong'#39' as D' +
        'Type,JGZL.CFMID1 as CFMID,JGZL.CFMDate1 as CFMDate'
      'from JGZLS'
      
        'Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS' +
        '.CLBH '
      'left join JGZL on JGZL.JGNO=JGZLSS.JGNO'
      'Left join DDZL on DDZL.DDBH=JGZLSS.ZLBH'
      'where  JGZLSS.ZLBH = '#39'JHS1912-308'#39' '
      '    and JGZLS.ZMLB = '#39'W206000009'#39
      '    and JGZLS.CLBH='#39'W206000009'#39
      '    and '#39'Gia cong'#39'='#39'Assembly'#39
      
        '    and JGZL.GSBH='#39'VDH'#39'  and convert(smalldatetime,convert(varch' +
        'ar,JGZL.CFMDate1,111)) <'#39'2017/09/01'#39
      '    --and JGZL.CFMID1<>'#39'NO'#39' '
      'union all'
      
        'select KCLLS.LLNo,KCLLS.CLBH,KCLLS.DFL,KCLLS.CLSL,KCLLS.SCBH,KCL' +
        'LS.TempQty,KCLLS.Qty,KCLLS.MEMO,KCLLS.BLSB,KCLLS.USERID,KCLLS.US' +
        'ERDATE'
      
        '       ,KCLLS.YYBH,SCBLYY.YWSM,KCLL.CKBH,KCLLS.DFL as MJBH,'#39'Gia ' +
        'Cong'#39' as DType,KCLL.CFMID,KCLL.CFMDate'
      'from KCLLS'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'where KCLLS.SCBH='#39'JHS1912-308'#39' '
      '      and KCLLS.CLBH='#39'W206000009'#39
      '      and KCLLS.DFL='#39'W206000009'#39
      '      and '#39'Gia Cong'#39'='#39'Assembly'#39
      
        '      and KCLL.GSBH='#39'VDH'#39'  and convert(smalldatetime,convert(var' +
        'char,KCLL.CFMDATE,111))>='#39'2017/09/01'#39' '
      '    --  and KCLL.CFMID<>'#39'NO'#39' '
      '      and KCLL.SCBH='#39'JJJJJJJJJJ'#39)
    Left = 208
    Top = 112
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLLS.LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCLLS.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.KCLLS.CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1TempQty: TCurrencyField
      FieldName = 'TempQty'
      Origin = 'DB.KCLLS.TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.KCLLS.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.SCBLYY.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCLLS.DFL'
      FixedChar = True
      Size = 1
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 15
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 152
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
