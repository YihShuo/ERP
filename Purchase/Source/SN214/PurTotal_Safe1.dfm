object PurTotal_Safe: TPurTotal_Safe
  Left = 435
  Top = 223
  Width = 773
  Height = 465
  BorderIcons = [biSystemMenu]
  Caption = 'PurTotal_Safe'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 95
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 208
      Top = 12
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 528
      Top = 13
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Button1: TButton
      Left = 672
      Top = 4
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 299
      Top = 9
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 96
      Top = 9
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 384
      Top = 9
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 456
      Top = 9
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CBX1: TComboBox
      Left = 584
      Top = 9
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 765
    Height = 385
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
        Width = 89
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
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 211
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
        Width = 37
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
        Width = 44
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
        Width = 51
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
        Width = 46
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
      
        'select KCSAFE.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCSAFE.MinQty,K' +
        'CSAFE.MaxQty,KCSAFE.BLQty,'
      
        '(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+' +
        'isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty '
      'from KCSAFE  '
      ' left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      ' from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2007'#39
      ' and KCMONTH='#39#39
      ' and KCCLMONTH.CLBH like '#39'%'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCCLMONTH.' +
        'CLBH)) LastKC '
      ' on LastKC.CLBH=KCSAFE.CLBH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS'
      
        'left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(smalldateti' +
        'me,convert(varchar,KCRK.USERDATE,111)) between'
      #39'2008/01/01'#39
      ' and '#39'2008/01/20'#39
      ' and KCRKS.CLBH like '#39'%'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCRKS.CLBH' +
        ') '
      ' group by KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH '
      
        ' left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS' +
        ' '
      
        ' left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(smalldatet' +
        'ime,convert(varchar,KCLL.CFMDATE,111)) between'
      #39'2008/01/01'#39
      ' and '#39'2008/01/20'#39
      ' and KCLLS.CLBH like '#39'%'#39
      ' and KCLL.CFMID<>'#39'NO'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCLLS.CLBH' +
        ')'
      ' group by KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH'
      ' left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS'
      
        ' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatet' +
        'ime,convert(varchar,JGZL.CFMDate1,111))>='
      #39'2008/01/01'#39
      ' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<='
      #39'2008/01/20'#39
      ' and JGZLS.CLBH like '#39'%'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.CLBH' +
        ' )'
      ' group by JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH'
      
        ' left join (select JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK f' +
        'rom JGZLS'
      ' left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      ' left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        ' left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatet' +
        'ime,convert(varchar,JGZL.CFMDate1,111)) between'
      #39'2008/01/01'#39
      ' and '#39'2008/01/20'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      ') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH'
      
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        ' between'
      #39'2008/01/01'#39
      ' and '#39'2008/01/20'#39
      ' and JGZLS.ZMLB like '#39'%'#39
      ' and JGZL.CFMID1 <>'#39'NO'#39
      ' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      
        ' and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.ZMLB' +
        ' )'
      ' group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH'
      ' left join CLZL on CLZL.CLDH=KCSAFE.CLBH '
      ' order by KCSAFE.CLBH ')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 64
    Top = 120
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
