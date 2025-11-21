object ReplenishDayRateDet: TReplenishDayRateDet
  Left = 298
  Top = 243
  Width = 749
  Height = 345
  Caption = 'ReplenishDayRateDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 733
    Height = 306
    Align = alClient
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
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
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
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24037#24288'|GSBH'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272'|DepName'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 258
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729'|USPrice'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footer.FieldName = 'ACCUS'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37329#38989'|ACCUS'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Title.Caption = #35036'|BLSB'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #21407#22240#32232#34399#21450#21517#31281'|YYBH'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #21407#22240#32232#34399#21450#21517#31281'|YWSM'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #20986#26448#26009#21934#34399'|LLNO'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30332#26009#26085#26399'|CFMDate'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 198
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #35036#26009#20013#25991#21407#22240'|ZWSM'
        Width = 112
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.LLNO,KCLL.GSBH,BDepartment.DepName,CLZL.DWBH,CLZL.YW' +
        'PM,CLZL.ZWPM '
      
        '       ,isnull(KCLLS.YYBH,'#39#39') as YYBH,KCLL.DepID,KCLLS.Qty,CWDJ.' +
        'USPrice,KCLLS.Qty*isnull(CWDJ.USPrice,0) as ACCUS,CLLBFYS.FYLB,'
      
        '       KCLLS.CLBH,isnull(KCLLS.BLSB,'#39#39') as BLSB,KCLL.CFMDate,SCB' +
        'LYY.YWSM,SCBLYY.ZWSM'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      
        'left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBF' +
        'YS.GSBH'
      'left join CWDJ on CWDJ.CLBH=KCLLS.CLBH '
      
        '                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,' +
        'KCLL.CFMDate)) '
      
        '                  and CWDJ.DJMonth=convert(varchar,datepart(MM,K' +
        'CLL.CFMDate)) '
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween'
      '         '#39'2017/04/04'#39' and '#39'2017/04/04'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and BDepartment.DepName like '#39'A1%'#39
      '      and KCLLS.Qty<>0 and IsNull(KCLLS.BLSB,'#39'N'#39')='#39'Y'#39)
    Left = 160
    Top = 160
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1ACCUS: TCurrencyField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
    end
    object Query1FYLB: TStringField
      FieldName = 'FYLB'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 192
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
