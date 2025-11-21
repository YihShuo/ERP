object MA_Inspection_rpt: TMA_Inspection_rpt
  Left = 352
  Top = 207
  Width = 1818
  Height = 681
  Caption = 'MA_Inspection_rpt'
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
    Width = 1802
    Height = 113
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 308
      Top = 67
      Width = 51
      Height = 25
      Caption = 'LEAN'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 308
      Top = 21
      Width = 25
      Height = 25
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 487
      Top = 22
      Width = 59
      Height = 25
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 527
      Top = 67
      Width = 95
      Height = 25
      Caption = 'BUILDING'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 8
      Top = 66
      Width = 51
      Height = 25
      Caption = 'DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 172
      Top = 61
      Width = 12
      Height = 34
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 671
      Top = 22
      Width = 61
      Height = 25
      Caption = 'Model'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 864
      Top = 22
      Width = 74
      Height = 25
      Caption = 'Country'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 742
      Top = 67
      Width = 81
      Height = 25
      Caption = 'DevType'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 975
      Top = 61
      Width = 108
      Height = 42
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1100
      Top = 12
      Width = 108
      Height = 43
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtLine: TEdit
      Left = 363
      Top = 63
      Width = 144
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtRY: TEdit
      Left = 340
      Top = 18
      Width = 131
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 63
      Top = 64
      Width = 104
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 289
      Height = 41
      TabOrder = 5
      object RB1: TRadioButton
        Left = 12
        Top = 16
        Width = 125
        Height = 14
        Caption = 'Hour Inspect'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 140
        Top = 17
        Width = 121
        Height = 14
        Caption = 'Daily Inspect'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object EditArticle: TEdit
      Left = 552
      Top = 17
      Width = 106
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditXuong: TEdit
      Left = 629
      Top = 62
      Width = 90
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 187
      Top = 64
      Width = 107
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 738
      Top = 18
      Width = 109
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object Button3: TButton
      Left = 1100
      Top = 62
      Width = 110
      Height = 42
      Caption = 'MA_Thung'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 946
      Top = 18
      Width = 109
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object Edit3: TEdit
      Left = 831
      Top = 63
      Width = 109
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 1802
    Height = 529
    Align = alClient
    Color = clGradientInactiveCaption
    DataSource = DS1
    EvenRowColor = clMenu
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OddRowColor = clInactiveCaption
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -27
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NO'
        Footers = <>
        Width = 166
      end
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Date'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'RY'
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Article'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DevType'
        Footers = <>
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = 'Country'
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'Model'
        Footers = <>
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Order'#39's Qty'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'PrdQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Production Qty'
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'InsQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Inspection Qty'
      end
      item
        EditButtons = <>
        FieldName = 'DefQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Defect Qty'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'FailQty'
        Footers = <>
        Title.Caption = 'Fail Qty'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'DefectRate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Defect Rate'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Result'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Pass/Fail'
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'PackingRate'
        Footers = <>
        Title.Caption = 'Repacking Rate'
      end
      item
        EditButtons = <>
        FieldName = 'Xuong'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Building'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'LEAN'
        Width = 207
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Title.Caption = 'Auditor'
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select WOPR_MA.ID as NO,WOPR_MA.SCDate, WOPR_MA.SCBH, DDZL.ARTIC' +
        'LE,LBZLS.ywsm,kfxxzl.DevType,xxzl.XieMing as Model, DDZL.Pairs, ' +
        'WOPR_MA.PrdQty,WOPR_MA.InsQty ,WOPR_MA.DefQty,'
      
        '       Case when WOPR_MA.Result='#39'P'#39' then 0 else WOPR_MA.PrdQty e' +
        'nd as FailQty, '
      
        '       Round(1.00*WOPR_MA.DefQty/ WOPR_MA.InsQty,2) as DefectRat' +
        'e,'
      
        '       Case when WOPR_MA.Result='#39'P'#39' then '#39'Pass'#39' else '#39'Fail'#39' end ' +
        ' as Result,null as PackingRate,BDepartment.DepName,BDepartment.X' +
        'uong,WOPR_MA.UserID'
      'From WOPR_MA'
      'left join DDZL on DDZL.DDBH=WOPR_MA.SCBH '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      
        'left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.SheHa' +
        'o = kfxxzl.SheHao '
      
        'left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      
        'where WOPR_MA.GXLB='#39'HI'#39' and  CONVERT(varchar(10),WOPR_MA.SCDate,' +
        '111) between '#39'2023/05/15'#39' and '#39'2023/05/15'#39' '
      'order by WOPR_MA.ID,WOPR_MA.SCDate'
      '')
    Left = 232
    Top = 152
    object Query1SCDate: TDateTimeField
      DisplayWidth = 12
      FieldName = 'SCDate'
    end
    object Query1SCBH: TStringField
      DisplayWidth = 15
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      DisplayWidth = 20
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Model: TStringField
      FieldName = 'Model'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object Query1PrdQty: TSmallintField
      DisplayWidth = 10
      FieldName = 'PrdQty'
    end
    object Query1InsQty: TSmallintField
      DisplayWidth = 10
      FieldName = 'InsQty'
    end
    object Query1DefQty: TSmallintField
      DisplayWidth = 10
      FieldName = 'DefQty'
    end
    object Query1FailQty: TIntegerField
      FieldName = 'FailQty'
    end
    object Query1DefectRate: TFloatField
      DisplayWidth = 10
      FieldName = 'DefectRate'
    end
    object Query1Result: TStringField
      DisplayWidth = 4
      FieldName = 'Result'
      FixedChar = True
      Size = 4
    end
    object Query1PackingRate: TIntegerField
      FieldName = 'PackingRate'
    end
    object Query1DepName: TStringField
      DisplayWidth = 50
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1Xuong: TStringField
      DisplayWidth = 4
      FieldName = 'Xuong'
      FixedChar = True
      Size = 4
    end
    object Query1NO: TStringField
      FieldName = 'NO'
      FixedChar = True
      Size = 15
    end
    object Query1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object Query1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 232
    Top = 192
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    UpdateObject = UpdateSQL1
    Left = 352
    Top = 168
  end
end
