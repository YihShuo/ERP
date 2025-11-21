object PurOther_safe: TPurOther_safe
  Left = 423
  Top = 285
  Width = 770
  Height = 500
  Caption = 'PurOther_safe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 18
      Width = 79
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 17
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 578
      Top = 11
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 272
      Top = 14
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 80
      Top = 14
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 376
      Top = 14
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 472
      Top = 14
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 762
    Height = 412
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 227
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'MinQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'MaxQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'BLQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCSAFE.CKBH,KCSAFE.CLBH,CLZL.YWPM,CLZL.DWBH,KCSAFE.MinQty' +
        ',KCSAFE.MaxQty,KCSAFE.BLQty,'
      
        '(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+' +
        'isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty '
      'from KCSAFE  '
      
        ' left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty a' +
        's LastRem '
      ' from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2008'#39
      ' and KCMONTH='#39'09'#39
      ' and KCCLMONTH.CLBH like '#39'%'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCCLMONTH.' +
        'CLBH)) LastKC '
      ' on LastKC.CLBH=KCSAFE.CLBH and LastKC.CKBH=KCSAFE.CKBH'
      
        'left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty f' +
        'rom KCRKS'
      
        'left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(smalldateti' +
        'me,convert(varchar,KCRK.USERDATE,111)) between'
      #39'2008/10/01'#39
      ' and '#39'2008/10/26'#39
      ' and KCRKS.CLBH like '#39'%'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCRKS.CLBH' +
        ') '
      
        ' group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH and RK' +
        '.CKBH=KCSAFE.CKBH '
      
        ' left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty ' +
        'from KCLLS '
      
        ' left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(smalldatet' +
        'ime,convert(varchar,KCLL.CFMDATE,111)) between'
      #39'2008/10/01'#39
      ' and '#39'2008/10/26'#39
      ' and KCLLS.CLBH like '#39'%'#39
      ' and KCLL.CFMID<>'#39'NO'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCLLS.CLBH' +
        ')'
      
        ' group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH and LL' +
        '.CKBH=KCSAFE.CKBH'
      
        ' left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK f' +
        'rom JGZLS'
      
        ' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatet' +
        'ime,convert(varchar,JGZL.CFMDate1,111))>='
      #39'2008/10/01'#39
      ' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<='
      #39'2008/10/26'#39
      ' and JGZLS.CLBH like '#39'%'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.CLBH' +
        ' )'
      
        ' group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH a' +
        'nd JGRK.CKBH=KCSAFE.CKBH'
      
        ' left join (select JGZL.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty)' +
        ' as JGCK from JGZLS'
      ' left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      ' left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        ' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatet' +
        'ime,convert(varchar,JGZL.CFMDate1,111)) between'
      #39'2008/10/01'#39
      ' and '#39'2008/10/26'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      ') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH'
      
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        ' between'
      #39'2008/10/01'#39
      ' and '#39'2008/10/26'#39
      ' and JGZLS.ZMLB like '#39'%'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.ZMLB' +
        ' )'
      
        ' group by JGZL.CKBH,JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH a' +
        'nd JGCK.CKBH=KCSAFE.CKBH'
      ' left join CLZL on CLZL.CLDH=KCSAFE.CLBH '
      ' left join KCCK on KCCK.CKBH=KCSAFE.CKBH '
      ' where KCSAFE.CLBH like '#39'%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and KCCK.GSBH='#39'VA12'#39
      ' order by KCSAFE.CLBH ')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1MinQty: TCurrencyField
      FieldName = 'MinQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1MaxQty: TCurrencyField
      FieldName = 'MaxQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1BLQty: TCurrencyField
      FieldName = 'BLQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1KCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '#,##0.0'
    end
  end
  object QueryBJ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(CGZL.ok' +
        'Qty,0) as okQty,'
      
        'isnull(sum(ZLZLS2.CLSL),0) as CLSL,CLZL.DCYN,RSTList.DCDate,RSTL' +
        'ist.DCCFM,CLZL.PDYN,RSTList.PDDate,RSTList.PDCFM,'#39'              ' +
        #39' as DCRSL,'#39'              '#39' as PDRSL '
      'from ZLZLS2'
      'left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH '
      '           from CGZLSS left join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      '           left join ZLZL on ZLZL.ZLBH=CGZLSS.ZLBH'
      '           where CGZLSS.CLBH like '#39'%'#39
      '           and CGZLSS.ZLBH like '#39'YV1312-0414%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      
        '           and convert(smalldatetime,convert(varchar,DDZL.ShipDa' +
        'te,111)) between '
      '           '#39'2013/12/01'#39'and '#39'2013/12/31'#39
      '           and CGZLSS.XXCC='#39'ZZZZZZ'#39
      
        '           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH' +
        '=CGZLSS.ZLBH )'
      '           group by CGZLSS.CLBH ) CGZL on CGZL.CLBH=ZLZLS2.CLBH'
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join KFZL on KFZL.KFDH=DDZl.KHBH '
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join XXZL on XXZl.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=' +
        'ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      'left join RSTList on CLZL.cldh = RSTList.cldh '
      'where ZLZLS2.CLBH like '#39'%'#39
      '      and ZLZLS2.ZLBH like '#39'YV1312-0414%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '
      '     '#39'2013/12/01'#39'and '#39'2013/12/31'#39
      '      and ZLZLS2.ZMLB='#39'N'#39
      '      and ZLZLS2.Size='#39'ZZZZZZ'#39
      '      and DDZL.GSBH='#39'VA12'#39
      '      and KFZL.KFJC like '#39'%%'#39
      
        '      and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZL' +
        'S2.ZLBH )'
      '      and CLZL.CQDH='#39'VN'#39
      
        'and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.' +
        'CLBH )'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      
        'group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CGZL.okQty,CL' +
        'ZL.DCYN,RSTList.DCdate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDdate,RS' +
        'TList.PDCFM  '
      'order by ZLZLS2.CLBH'
      '')
    Left = 424
    Top = 192
  end
end
