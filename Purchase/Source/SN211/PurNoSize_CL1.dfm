object PurNoSize_CL: TPurNoSize_CL
  Left = 259
  Top = 193
  Width = 994
  Height = 457
  BorderIcons = [biSystemMenu]
  Caption = 'PurNoSize_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 113
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
      Top = 9
      Width = 64
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
      Left = 184
      Top = 10
      Width = 81
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
    object Label5: TLabel
      Left = 456
      Top = 76
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 280
      Top = 43
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Button1: TButton
      Left = 678
      Top = 66
      Width = 85
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 267
      Top = 5
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 68
      Top = 5
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 355
      Top = 5
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 435
      Top = 5
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 532
      Top = 72
      Width = 137
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 5
      OnKeyPress = Edit5KeyPress
    end
    object Button2: TButton
      Left = 587
      Top = 2
      Width = 57
      Height = 25
      Caption = 'Baby'
      TabOrder = 7
      OnClick = Button2Click
    end
    object CB2: TCheckBox
      Left = 653
      Top = 6
      Width = 81
      Height = 17
      Caption = 'Mother'
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 361
      Top = 40
      Width = 97
      Height = 24
      TabOrder = 4
    end
    object DataColorGroup: TGroupBox
      Left = 768
      Top = 0
      Width = 169
      Height = 100
      Caption = 'Data color'
      TabOrder = 9
      object Label7: TLabel
        Left = 8
        Top = 64
        Width = 152
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CLSL<=okQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 80
        Width = 152
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CLSL>okQty, okQty>0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 48
        Width = 152
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'okQty=0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 8
        Top = 16
        Width = 153
        Height = 17
        Caption = 'DC RSL issue'
        Color = clSkyBlue
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 8
        Top = 32
        Width = 153
        Height = 17
        Caption = 'PD RSL issue'
        Color = 5105377
        TabOrder = 1
      end
    end
    object CB1: TComboBox
      Left = 531
      Top = 5
      Width = 49
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 10
      Text = 'VN'
      Items.Strings = (
        ''
        'VN'
        'TW')
    end
    object SuppID: TEdit
      Left = 395
      Top = 73
      Width = 58
      Height = 24
      Color = clSilver
      ReadOnly = True
      TabOrder = 11
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 32
      Width = 273
      Height = 73
      TabOrder = 12
      object Label4: TLabel
        Left = 168
        Top = 18
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Month:'
      end
      object CBX2: TComboBox
        Left = 99
        Top = 14
        Width = 73
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 0
        Text = '2006'
        Items.Strings = (
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030')
      end
      object CBX3: TComboBox
        Left = 219
        Top = 14
        Width = 49
        Height = 24
        DropDownCount = 12
        ItemHeight = 16
        TabOrder = 1
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object BuyNoEdit: TEdit
        Left = 100
        Top = 41
        Width = 168
        Height = 24
        TabOrder = 2
      end
      object RB1: TRadioButton
        Left = 16
        Top = 16
        Width = 81
        Height = 17
        Caption = 'ETD Year:'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object RadioButton1: TRadioButton
        Left = 16
        Top = 45
        Width = 81
        Height = 17
        Caption = 'BuyNo:'
        TabOrder = 4
      end
    end
    object CKSuppID: TCheckBox
      Left = 299
      Top = 76
      Width = 94
      Height = 17
      Caption = 'Supplier ID:'
      TabOrder = 13
      OnClick = CKSuppIDClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 978
    Height = 304
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
        Width = 75
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
        Width = 120
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
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
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
        FieldName = 'CLSL'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Surplus'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DCRSL'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'PDRSL'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
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
    UpdateObject = UPQuery1
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1Surplus: TIntegerField
      FieldName = 'Surplus'
    end
    object Query1DCYN: TStringField
      FieldName = 'DCYN'
      FixedChar = True
      Size = 1
    end
    object Query1DCDate: TDateTimeField
      FieldName = 'DCDate'
    end
    object Query1DCCFM: TStringField
      FieldName = 'DCCFM'
      FixedChar = True
      Size = 1
    end
    object Query1PDYN: TStringField
      FieldName = 'PDYN'
      FixedChar = True
      Size = 1
    end
    object Query1PDDate: TDateTimeField
      FieldName = 'PDDate'
    end
    object Query1PDCFM: TStringField
      FieldName = 'PDCFM'
      FixedChar = True
      Size = 1
    end
    object Query1DCRSL: TStringField
      DisplayWidth = 30
      FieldName = 'DCRSL'
      FixedChar = True
      Size = 30
    end
    object Query1PDRSL: TStringField
      FieldName = 'PDRSL'
      FixedChar = True
      Size = 30
    end
  end
  object UPQuery1: TUpdateSQL
    ModifySQL.Strings = (
      'update clzl set YWPM=:YWPM where 1=2')
    Left = 464
    Top = 160
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
