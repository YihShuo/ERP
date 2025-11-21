object PurSize_Ord: TPurSize_Ord
  Left = 267
  Top = 227
  Width = 952
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'PurSize_Ord'
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
    Width = 936
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
      Left = -2
      Top = 16
      Width = 85
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
      Left = 212
      Top = 15
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Label5: TLabel
      Left = 347
      Top = 15
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label6: TLabel
      Left = 0
      Top = 49
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 212
      Top = 46
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 50
      Top = 81
      Width = 30
      Height = 16
      Caption = 'SKU:'
    end
    object Button1: TButton
      Left = 770
      Top = 44
      Width = 76
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 87
      Top = 12
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
      Left = 409
      Top = 12
      Width = 73
      Height = 24
      TabOrder = 1
      OnKeyPress = Edit3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 86
      Top = 44
      Width = 117
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = PurSize.DS4
      ReadOnly = True
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 282
      Top = 40
      Width = 145
      Height = 33
      Color = 14286847
      DataField = 'YWPM'
      DataSource = PurSize.DS4
      ReadOnly = True
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 213
      Top = 84
      Width = 92
      Height = 17
      Caption = 'NO OK'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object Button2: TButton
      Left = 770
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 486
      Top = 2
      Width = 273
      Height = 73
      TabOrder = 7
      object Label8: TLabel
        Left = 176
        Top = 18
        Width = 42
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
    object CB2: TCheckBox
      Left = 287
      Top = 85
      Width = 99
      Height = 17
      Caption = 'Cancel Order'
      TabOrder = 8
    end
    object BUYNOCK: TCheckBox
      Left = 396
      Top = 85
      Width = 93
      Height = 17
      Caption = 'Lock BuyNo'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 85
      Top = 78
      Width = 116
      Height = 24
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 282
      Top = 11
      Width = 57
      Height = 24
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 936
    Height = 347
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
        FieldName = 'BUYNO'
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
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldCLSL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UseStock'
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
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 128
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
      
        'select DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.SIZE as XXCC,sum(ZLZLS2.CLS' +
        'L) as CLSL,'
      
        'DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,isnull(CGKCUS' +
        'E.Qty,0) as UseStock,'
      'isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) as oldCLSL '
      'from ZLZLS2'
      'left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH'
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL on KFDH=DDZl.KHBH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join (select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,sum(CGZLSS' +
        '.Qty) as okQty,'
      '           max(CGZLSS.CLSL) as oldCLSL'
      '           from CGZLSS '
      '           left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH'
      '           left join KFZL on KFDH=DDZl.KHBH '
      
        '           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.' +
        'SheHao=DDZL.SheHao'
      
        '           where convert(smalldatetime,convert(varchar,DDZL.Ship' +
        'Date,111)) between '
      '           '#39'2008/11/01'#39'and '#39'2008/11/30'#39
      '           and kfzl.kfjc like '#39'%%'#39
      '           and CGZLSS.ZLBH like '#39'%'#39
      '           and XXZL.XieMing like '#39'%%'#39
      '           and CGZLSS.CLBH='#39'J030001081'#39
      '           and CGZLSS.XXCC<>'#39'ZZZZZZ'#39
      '           and DDZL.GSBH='#39'VA3'#39
      
        '           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH' +
        '=CGZLSS.ZLBH )'
      '           group by  CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC'
      
        ') CGZL on CGZL.CLBH=ZLZLS2.CLBH and CGZL.ZLBH=ZLZLS2.ZLBH and CG' +
        'ZL.XXCC=ZLZLS2.Size'
      'where ZLZLS2.ZMLB='#39'N'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/11/01'#39'and '#39'2008/11/30'#39
      'and kfzl.kfjc like '#39'%%'#39
      'and ZLZLS2.ZLBH like '#39'%'#39
      'and XXZL.XieMing like '#39'%%'#39
      'and ZLZLS2.CLBH='#39'J030001081'#39
      'and ZLZLS2.SIZE<>'#39'ZZZZZZ'#39
      'and ZLZLS2.CLSL<>0'
      'and DDZL.GSBH='#39'VA3'#39
      
        'and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZLS2.ZLB' +
        'H )'
      'group by DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.ZMLB,CGKCUSE.Qty'
      
        ',ZLZLS2.SIZE,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,' +
        'CGZL.okQty,CGZL.oldCLSL'
      'order by DDZL.BUYNO,ZLZLS2.ZLBH')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
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
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
end
