object PurOther_CL: TPurOther_CL
  Left = 401
  Top = 379
  Width = 830
  Height = 487
  BorderIcons = [biSystemMenu]
  Caption = 'PurOther_CL'
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
    Width = 822
    Height = 73
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
      Top = 28
      Width = 86
      Height = 16
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
      Left = 192
      Top = 29
      Width = 86
      Height = 16
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
      Left = 576
      Top = 19
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 280
      Top = 24
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 88
      Top = 24
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 384
      Top = 24
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 480
      Top = 24
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
    object Button2: TButton
      Left = 657
      Top = 18
      Width = 73
      Height = 33
      Caption = 'MatNew'
      TabOrder = 5
      Visible = False
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 822
    Height = 383
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 355
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
      'select *'
      'from clzl'
      'order by CLDH')
    Left = 424
    Top = 160
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      DisplayWidth = 6
      FieldName = 'cllb'
      Origin = 'DB.clzl.cllb'
      FixedChar = True
      Size = 3
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
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
