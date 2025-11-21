object WareStock_MDet: TWareStock_MDet
  Left = 208
  Top = 220
  Width = 977
  Height = 340
  Caption = 'WareStock_MDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 121
    Width = 961
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Color = clSilver
    ParentColor = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 961
    Height = 121
    Align = alTop
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
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
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364'|CNO'
        Width = 57
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'LastRem'
        Footers = <>
        Title.Caption = #26399#21021'|LastRem'
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20837#24235'|RKQty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
        Title.Caption = #38936#26009'|LLQty'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'JGRK'
        Footers = <>
        Title.Caption = #21152#24037#20837'|JGRK'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'JGCK'
        Footers = <>
        Title.Caption = #21152#24037#20986'|JGCK'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 368
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 961
    Height = 172
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 465
      Top = 1
      Width = 8
      Height = 170
      Color = clSilver
      ParentColor = False
    end
    object DBGridEh3: TDBGridEh
      Left = 473
      Top = 1
      Width = 487
      Height = 170
      Align = alClient
      DataSource = DS3
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      PopupMenu = PopupMenu3
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
          FieldName = 'LLNO'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'DFL'
          Footers = <>
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'SCBH'
          Footers = <>
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'CNO'
          Footers = <>
          Width = 37
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'HGLB'
          Footers = <>
          Width = 33
        end
        item
          EditButtons = <>
          FieldName = 'LLMemo'
          Footers = <>
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 48
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 464
      Height = 170
      Align = alLeft
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      PopupMenu = PopupMenu2
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
          FieldName = 'RKNO'
          Footer.FieldName = 'RKNO'
          Footers = <>
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'CGBH'
          Footers = <>
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'RKSB'
          Footers = <>
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'CNO'
          Footers = <>
          Width = 42
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'HGLB'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'RKMEMO'
          Footers = <>
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 44
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.CKBH,KCRK.CLBH,KCRK.HGLB,case when CNO='#39'ZZZZ'#39' then '#39 +
        #39' else CNO end as CNO,KCRK.LastRem,KCRK.RKQty,KCRK.LLQty,KCRK.JG' +
        'RK,KCRK.JGCK,KCRK.Qty,CLZL.YWPM from ('
      
        'select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as ' +
        'RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,'
      
        '       Round(isnull(round(Sum(LastRem),2),0)+isnull(round(Sum(RK' +
        'Qty),2),0)-isnull(round(Sum(LLQty),2),0)+isnull(round(Sum(JGRK),' +
        '2),0)-isnull(round(Sum(JGCK),2),0),2)  as Qty'
      ' from ('
      'select * from ('
      
        'select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CN' +
        'O,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as ' +
        'JGCK'
      
        '           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR' +
        '='#39'2017'#39' '
      
        '                                 and KCMONTH='#39'10'#39' and CLBH like ' +
        #39'%'#39' and CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39') '
      '                                 ) LastKC'
      'Union all   '
      'select * from ('
      
        'select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CN' +
        'O,'#39#39')='#39#39' or KCRK.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCRKS.CNO end  as ' +
        'CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 ' +
        'as JGCK from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111)) between '
      '                 '#39'2017/11/01'#39' and '#39'2017/11/30'#39
      '           and KCRKS.CLBH like '#39'%'#39'    '
      
        '           and CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39')' +
        ' '
      
        '           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (Is' +
        'Null(KCRKS.CNO,'#39#39')='#39#39' or KCRK.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCRKS' +
        '.CNO end ) RK        '
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.C' +
        'NO,'#39#39')='#39#39' or KCLLS.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCLLS.CNO end as' +
        ' CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0' +
        ' as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2017/11/01'#39' and '#39'2017/11/30'#39
      
        '           and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39' and ' +
        'KCLLS.Qty>0 and KCLLS.CLBH like '#39'%'#39'  and CKBH in (select CKBH fr' +
        'om KCCK where GSBH='#39'VA12'#39') '
      
        '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCL' +
        'LS.CNO end ) LL    '
      'union all '
      'select * from (                                         '
      
        'select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,'#39'ZZZZ'#39' as CNO,0 as Last' +
        'Rem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from ' +
        'JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '          where convert(smalldatetime,convert(varchar,JGZL.CFMDa' +
        'te1,111)) between '
      '                 '#39'2017/11/01'#39' and '#39'2017/11/30'#39
      '                 and JGZL.CFMID1<>'#39'NO'#39' and JGZLS.CLBH like '#39'%'#39' '
      
        '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZLS.Qty>0 and' +
        ' CKBH in (select CKBH from KCCK where GSBH='#39'VA12'#39') '
      '           group by JGZL.CKBH,JGZLS.CLBH ) JGRK'
      'union all'
      'select * from ('
      
        'select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull' +
        '(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCLLS.CN' +
        'O end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KC' +
        'LLS.Qty) as JGCK from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2017/11/01'#39' and '#39'2017/11/30'#39' '
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))>='#39'2017/09/01'#39
      
        '           and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLLS.Qty>0 and KCLL.C' +
        'FMID<>'#39'NO'#39' and KCLLS.CLBH like '#39'%'#39' and CKBH in (select CKBH from' +
        ' KCCK where GSBH='#39'VA12'#39') '
      
        '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (I' +
        'sNull(KCLLS.CNO,'#39#39')='#39#39' or KCLLS.HGLB<>'#39'NK'#39') then '#39'ZZZZ'#39' else KCL' +
        'LS.CNO end ) JGCK'
      ') KCZLS'
      'where 1=1 and CLBH like '#39'%'#39'  '
      'Group by CKBH,CLBH,HGLB,CNO ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLBH'
      'where Qty<0 ')
    Left = 360
    Top = 61
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Query1LastRem: TFloatField
      FieldName = 'LastRem'
      DisplayFormat = '#0.00'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.0000'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '#0.0000'
    end
    object Query1JGRK: TCurrencyField
      FieldName = 'JGRK'
      DisplayFormat = '#0.0000'
    end
    object Query1JGCK: TCurrencyField
      FieldName = 'JGCK'
      DisplayFormat = '#0.0000'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#0.0000'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 357
    Top = 93
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.CKBH,KCRK.HGLB,KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRK' +
        'S.RKSB,KCRKS.CNO,KCRKS.Qty,KCRK.USERDATE,KCRK.USERID,KCRKS.RKMEM' +
        'O from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between '
      '      '#39'2022/07/01'#39' and '#39'2022/07/29'#39'  '
      '     and KCRKS.CLBH='#39'V90G012524'#39'   '
      '     and KCRK.CKBH='#39'BYC'#39' '
      '     and IsNull(KCRKS.CNO,'#39#39')='#39#39)
    Left = 256
    Top = 165
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query2RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query2RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object Query2CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.0000'
    end
    object Query2RKMEMO: TStringField
      FieldName = 'RKMEMO'
      FixedChar = True
      Size = 200
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 253
    Top = 197
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.CKBH,KCLLS.HGLB,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLL' +
        'S.SCBH,KCLLS.CNO,KCLLS.Qty,KCLL.USERDATE,KCLL.USERID,KCLLS.LLMem' +
        'o from KCLLS '
      '       left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) b' +
        'etween '
      '       '#39'2022/07/01'#39' and '#39'2022/07/29'#39'  '
      '       and KCLL.CFMID<>'#39'NO'#39' and KCLLS.Qty>0 '
      '       and KCLLS.CLBH='#39'V90G012524'#39' '
      '       and KCLL.CKBH='#39'BYC'#39' '
      '       and IsNull(KCLLS.CNO,'#39#39')='#39#39)
    Left = 808
    Top = 157
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query3LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query3SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query3CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Query3Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.0000'
    end
    object Query3LLMemo: TStringField
      FieldName = 'LLMemo'
      FixedChar = True
      Size = 200
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 810
    Top = 189
  end
  object PopupMenu1: TPopupMenu
    Left = 396
    Top = 91
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 292
    Top = 195
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 844
    Top = 187
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
  end
end
