object SafeMaterial: TSafeMaterial
  Left = 375
  Top = 219
  Width = 967
  Height = 441
  Caption = 'SafeMaterial'
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
    Top = 0
    Width = 951
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 152
      Top = 32
      Width = 64
      Height = 16
      Caption = 'EngName:'
    end
    object Label3: TLabel
      Left = 464
      Top = 32
      Width = 39
      Height = 16
      Caption = 'TYPE:'
    end
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #32232#34399':'
    end
    object Label5: TLabel
      Left = 152
      Top = 16
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #33521#25991#21517':'
    end
    object Label6: TLabel
      Left = 304
      Top = 32
      Width = 59
      Height = 16
      Caption = 'CHName:'
    end
    object Label7: TLabel
      Left = 304
      Top = 16
      Width = 57
      Height = 16
      AutoSize = False
      Caption = #20013#25991#21517':'
    end
    object Label8: TLabel
      Left = 464
      Top = 16
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #39006#21029':'
    end
    object Button1: TButton
      Left = 592
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 224
      Top = 24
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 368
      Top = 24
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 504
      Top = 24
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '0:Material'
      Items.Strings = (
        '0:Material'
        '1:Always'
        '2:Often'
        '3:Need'
        '4:Little')
    end
    object Button2: TButton
      Left = 672
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 752
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Print'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 951
    Height = 345
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
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
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21697#21517'|YWPM'
        Width = 231
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21697#21517'|ZWPM'
        Width = 234
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Title.Caption = #30070#21069#24235#23384'|KCQty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #21046#20196#38656#27714'|CLSL'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'SBLB'
        Footers = <>
        Title.Caption = #39006#21029'|SBLB'
        Width = 37
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
        'CSAFE.MaxQty,KCSAFE.BLQty,KCSAFE.SBLB,UseSL.CLSL,'
      
        '(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+' +
        'isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty '
      'from KCSAFE  '
      ' left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '            from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2008'#39
      '                and KCMONTH='#39'11'#39
      '                and KCCLMONTH.CLBH like '#39'%'#39
      
        '                and exists(select CLBH from KCSAFE where KCSAFE.' +
        'CLBH=KCCLMONTH.CLBH)) LastKC '
      ' on LastKC.CLBH=KCSAFE.CLBH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(' +
        'smalldatetime,convert(varchar,KCRK.USERDATE,111)) between'
      '                '#39'2008/12/01'#39' and '#39'2008/12/30'#39
      '                and KCRKS.CLBH like '#39'%'#39
      
        '                and exists(select CLBH from KCSAFE where KCSAFE.' +
        'CLBH=KCRKS.CLBH) '
      '           group by KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH '
      
        ' left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS' +
        ' '
      
        '            left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert' +
        '(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between'
      '                   '#39'2008/12/01'#39' and '#39'2008/12/30'#39
      '                   and KCLLS.CLBH like '#39'%'#39
      '                   and KCLL.CFMID<>'#39'NO'#39
      
        '                   and exists(select CLBH from KCSAFE where KCSA' +
        'FE.CLBH=KCLLS.CLBH)'
      '            group by KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH'
      ' left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS'
      
        '            left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert' +
        '(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between '
      '                   '#39'2008/12/01'#39' and '#39'2008/12/30'#39
      '                   and JGZLS.CLBH like '#39'%'#39
      '                   and JGZL.CFMID1 <>'#39'NO'#39
      '                   and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '                   and exists(select CLBH from KCSAFE where KCSA' +
        'FE.CLBH=JGZLS.CLBH )'
      '            group by JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH'
      
        ' left join (select JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK f' +
        'rom JGZLS'
      '            left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '            left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fr' +
        'om JGZLS '
      
        '                       left join JGZL on JGZL.JGNO=JGZLS.JGNO wh' +
        'ere convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween'
      '                           '#39'2008/12/01'#39' and '#39'2008/12/30'#39
      '                           and JGZL.CFMID1 <>'#39'NO'#39
      '                           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '                       ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZL' +
        'M.CLBH=JGZLS.CLBH'
      
        '            where convert(smalldatetime,convert(varchar,JGZL.CFM' +
        'Date1,111)) between'
      '                  '#39'2008/12/01'#39' and '#39'2008/12/30'#39
      '                  and JGZLS.ZMLB like '#39'%'#39
      '                  and JGZL.CFMID1 <>'#39'NO'#39
      '                  and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      
        '                  and exists(select CLBH from KCSAFE where KCSAF' +
        'E.CLBH=JGZLS.ZMLB )'
      '            group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH'
      
        'left join (select ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL from ZLZL' +
        'S2 '
      '           left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH '
      '           where ZLZLS2.CLBH  like '#39'%'#39
      
        '           group by ZLZLS2.CLBH ) UseSL on UseSl.CLBH=KCSAFE.CLB' +
        'H '
      ' left join CLZL on CLZL.CLDH=KCSAFE.CLBH '
      ' where KCSAFE.CLBH like '#39'%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and KCSAFE.SBLB='#39'1'#39
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1SBLB: TStringField
      FieldName = 'SBLB'
      FixedChar = True
      Size = 1
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #23433#20840#39006#29986#21697#24235#23384#25976#37327#22577#34920
      '  Saf Material Stock List')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 296
    Top = 200
  end
end
