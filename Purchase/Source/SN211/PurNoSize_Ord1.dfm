object PurNoSize_Ord: TPurNoSize_Ord
  Left = 267
  Top = 181
  Width = 948
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'PurNoSize_Ord'
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
    Width = 932
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 213
      Top = 20
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Label5: TLabel
      Left = 348
      Top = 19
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 200
      Top = 55
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 50
      Top = 91
      Width = 30
      Height = 16
      Caption = 'SKU:'
    end
    object Button1: TButton
      Left = 788
      Top = 51
      Width = 76
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 116
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 406
      Top = 16
      Width = 83
      Height = 24
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 51
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = PurNoSize.DS4
      ReadOnly = True
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 279
      Top = 48
      Width = 153
      Height = 33
      Color = 14286847
      DataField = 'YWPM'
      DataSource = PurNoSize.DS4
      ReadOnly = True
      TabOrder = 8
    end
    object CB1: TCheckBox
      Left = 220
      Top = 91
      Width = 65
      Height = 17
      Caption = 'NO OK'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object Button2: TButton
      Left = 788
      Top = 13
      Width = 75
      Height = 33
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CB2: TCheckBox
      Left = 292
      Top = 91
      Width = 65
      Height = 17
      Caption = 'Mother'
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 278
      Top = 16
      Width = 65
      Height = 24
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 496
      Top = 8
      Width = 273
      Height = 73
      TabOrder = 9
      object Label8: TLabel
        Left = 179
        Top = 18
        Width = 39
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
    object CB3: TCheckBox
      Left = 467
      Top = 91
      Width = 104
      Height = 17
      Caption = 'Cancel Order '
      TabOrder = 10
    end
    object BUYNOCK: TCheckBox
      Left = 364
      Top = 91
      Width = 93
      Height = 17
      Caption = 'Lock BuyNo'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Edit5: TEdit
      Left = 83
      Top = 88
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 932
    Height = 340
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'BuyNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shehao'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Surplus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UseStock'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldCLSL'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select ZLZLS.buyno as BuyNo,ZLZLS.ZLBH,ZLZLS.CLBH,ZLZLS.XXCC,ZLZ' +
        'LS.CLSL,'
      'ZLZLS.XieXing,ZLZLS.SheHao,ZLZLS.Article,ZLZLS.XieMing,'
      
        'isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) oldCLSL,ZLZ' +
        'LS.UseStock'
      
        'from (select  ddzl.buyno,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.Size as ' +
        'XXCC,isnull(sum(ZLZLS2.CLSL),0) as CLSL,'
      
        '      DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,CGKCUSE' +
        '.Qty as UseStock'
      '      from ZLZLS2'
      '      left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH'
      '      left join KFZL on KFDH=DDZl.KHBH '
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        '      left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.' +
        'CLBH=ZLZLS2.CLBH '
      
        '      left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHa' +
        'o=DDZL.SheHao'
      '      where ZLZLS2.ZMLB='#39'N'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '
      '       '#39'2008/11/01'#39'and '#39'2008/11/30'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and ZLZLS2.ZLBH like '#39'%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and ZLZLS2.CLBH='#39'A010000637'#39
      '      and ZLZLS2.SIZE='#39'ZZZZZZ'#39
      '      and ZLZLS2.CLSL<>0'
      '      and DDZL.GSBH='#39'VA12'#39
      
        '      and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZL' +
        'S2.ZLBH )'
      
        'group by ddzl.buyno,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.Size,ZLZLS2.Z' +
        'MLB,CGKCUSE.Qty'
      ',DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing'
      ') ZLZLS '
      'left join (select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,'
      
        '           isnull(sum(CGZLSS.Qty),0) as okQty,isnull(max(CGZLSS.' +
        'CLSL),0) as oldCLSL '
      '           from CGZLSS '
      '           left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH'
      '           left join KFZL on KFDH=DDZl.KHBH '
      
        '           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.' +
        'SheHao=DDZL.SheHao'
      
        '           where convert(smalldatetime,convert(varchar,DDZL.Ship' +
        'Date,111)) between '
      '           '#39'2008/11/01'#39'and '#39'2008/11/30'#39
      '           and KFZL.KFJC like '#39'%%'#39
      '           and CGZLSS.ZLBH like '#39'%'#39
      '           and XXZL.XieMing like '#39'%%'#39
      '           and CGZLSS.CLBH='#39'A010000637'#39
      '           and DDZL.GSBH='#39'VA12'#39
      '           and CGZLSS.XXCC='#39'ZZZZZZ'#39
      
        '           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH' +
        '=CGZLSS.ZLBH )'
      '           group by  CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC'
      
        '           ) CGZL on CGZL.CLBH=ZLZLS.CLBH and CGZL.ZLBH=ZLZLS.ZL' +
        'BH and CGZL.XXCC=ZLZLS.XXCC'
      'order by zlzls.buyno,ZLZLS.ZLBH')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1BuyNo: TStringField
      FieldName = 'BuyNo'
      FixedChar = True
      Size = 10
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1Surplus: TIntegerField
      FieldName = 'Surplus'
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1oldCLSL: TFloatField
      FieldName = 'oldCLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#,##0.0'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 128
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
end
