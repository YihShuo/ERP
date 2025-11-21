object SemiChemicalMonth_Detail: TSemiChemicalMonth_Detail
  Left = 444
  Top = 311
  Width = 800
  Height = 429
  Caption = 'SemiChemicalMonth_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 201
    Width = 784
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 784
    Height = 201
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = ' '#22823#35330#21934'|YSBH'
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #23567#35330#21934'|DDBH'
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #38617#25976'|Qty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footer.FieldName = 'InQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|InQty'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'INDATE'
        Footers = <>
        Title.Caption = #20837#24235#26085#26399'|INDATE'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'ShipQty'
        Footer.FieldName = 'ShipQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20986#36008#25976#37327'|ShipQty'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|EXEDATE'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Caption = #35330#21934#29376#24907'|DDZT'
        Width = 53
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 204
    Width = 784
    Height = 186
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #26009#34399'|LLNO'
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #27171#21697#21934#34399'|SCBH'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#37329#38989'|VNACC'
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364#30908'|CNO'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB'
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDate'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 56
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    DataSource = SemiChemicalMonth.DS2
    SQL.Strings = (
      
        'Select YWDD.YSBH,YWDD.DDBH,DDZL.ARTICLE,Convert(float,YWDD.Qty) ' +
        'as Qty,Convert(float,YWCPIn.Qty)  as InQty,YWCPIn.INDATE,Convert' +
        '(float,YWCPShip.Qty) as ShipQty,YWCPShip.EXEDATE as ShipDate,DDZ' +
        'L.DDZT '
      'from DDZL'
      'left join YWDD on YWDD.YSBH=DDZL.DDBH'
      'Left join ('
      'Select DDZL.DDBH,Sum(YWCP.Qty) as Qty,Min(YWCP.INDATE) as INDATE'
      'from YWCP '
      'left join YWDD on YWDD.DDBH=YWCP.DDBH'
      'left join DDZL on YWDD.YSBH=DDZL.DDBH'
      'where DDZL.DDBH=:DDBH and YWCP.INDATE is not null'
      'Group by DDZL.DDBH'
      ') YWCPIn on YWCPIn.DDBH=DDZL.DDBH '
      'Left join ('
      
        'Select DDZL.DDBH,Sum(YWCP.Qty) as Qty,Min(YWCP.EXEDATE) as EXEDA' +
        'TE'
      'from YWCP '
      'left join YWDD on YWDD.DDBH=YWCP.DDBH'
      'left join DDZL on YWDD.YSBH=DDZL.DDBH'
      'where DDZL.DDBH=:DDBH and YWCP.EXEDATE is not null'
      'Group by DDZL.DDBH'
      ') YWCPShip on YWCPShip.DDBH=DDZL.DDBH '
      'where DDZL.DDBH=:DDBH '
      'Union all '
      
        'Select shoetest.TestNo as YSBH,YPZL.YPDH as DDBH,YPZL.ARTICLE,YP' +
        'ZL.Quantity as Qty,Case when shoetest.Complete is not null then ' +
        'shoetest2.Qty else 0 end as InQty,shoetest.Complete as INDATE,'
      
        '       Shoetestshipping.Qty as ShipQty,shoetestshipping.ShipDate' +
        '_final as ShipDate,'#39'Y'#39' as DDZT '
      'from YPZL '
      'left join shoetest on YPZL.YPDH=shoetest.YPDH '
      
        'left join (select TestNo, Sum(Qty) as Qty from shoetest2 Group b' +
        'y TestNo) shoetest2 on shoetest2.TestNo=shoeTest.TestNo '
      
        'left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from sho' +
        'etestshipping   Group by TestNO,shipdate_final ) shoetestshippin' +
        'g on shoetest.testno=shoetestshipping.testno '
      'where YPZL.YPDH=:DDBH'
      'Union all '
      
        'Select CBY_Orders.workOrderId as TestNO,CBY_Orders.MasterOrder a' +
        's YPDH,CBY_Orders.style as Article,CBY_Orders.total as Quantity,' +
        'Case when CBY_Orders.StockDate is not null then CBY_Orders.total' +
        ' else 0 end as InQty,CBY_Orders.StockDate as INDATE'
      
        '       ,case when CBY_Orders.ShipDate is not null then CBY_Order' +
        's.total  else 0 end as ShipQty,CBY_Orders.ShipDate,case when CBY' +
        '_Orders.CancelDate is not null then '#39'C'#39' else '#39'Y'#39' end as DDZT '
      'From CBY_Orders'
      'where CBY_Orders.MasterOrder=:DDBH')
    Left = 208
    Top = 88
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1InQty: TFloatField
      FieldName = 'InQty'
    end
    object Query1INDATE: TDateTimeField
      FieldName = 'INDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ShipQty: TFloatField
      FieldName = 'ShipQty'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 208
    Top = 264
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = SemiChemicalMonth.DS2
    SQL.Strings = (
      
        '         Select KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,KCLLS.VNACC as ' +
        'VNACC,KCLLS.CNO,KCLLS.HGLB,KCLL.CFMID,KCLL.CFMDate'
      '     '#9'           From KCLL'
      '     '#9'           Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      '                   Left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        '                   left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and ' +
        'KCZLS.CKBH=KCLL.CKBH'
      
        '                   where  KCLL.YN='#39'5'#39' and KCLL.CFMID<>'#39'NO'#39' and C' +
        'onvert(varchar,KCLL.CFMDate,111) between '#39'2023/02/01'#39' and '#39'2023/' +
        '02/28'#39
      #9#9#9'            and KCCK.GSBH='#39'CDC'#39
      '                  and KCZLS.CWBH = '#39'152'#39
      '           '#9'      and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      
        '    '#9#9'          and not Exists(select * from KCLLS_CB where LLNO' +
        '=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)'
      #9#9#9#9'  and KCLLS.SCBH='#39'LAIV221200018'#39
      '                  UNION ALL'
      
        #9#9#9#9'  Select KCLLS_CB.LLNO,KCLLS_CB.SCBH,KCLLS_CB.CLBH,KCLLS_CB.' +
        'VNACC,KCLLS_CB.CNO,KCLLS_CB.HGLB,KCLL.CFMID,KCLL.CFMDate'
      '                  FROM KCLLS_CB'
      '          '#9'      Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO'
      '                  Left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        #9'                where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL' +
        '.CFMDate,111) between '#39'2023/02/01'#39' and '#39'2023/02/28'#39
      #9#9#9'            and KCCK.GSBH='#39'CDC'#39
      '                  and KCLLS_CB.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      #9#9#9#9'  and KCLLS_CB.SCBH='#39'LAIV221200018'#39)
    Left = 208
    Top = 296
    object Query2LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 12
    end
    object Query2SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '0,00#'
    end
    object Query2CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query2CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query2CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
  end
end
