object TraceCarton: TTraceCarton
  Left = 424
  Top = 351
  Width = 884
  Height = 403
  Caption = 'TraceCarton'
  Color = clBtnFace
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Label3: TLabel
    Left = 504
    Top = 232
    Width = 41
    Height = 16
    Caption = 'Label3'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 205
      Top = 61
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode:'
    end
    object Label5: TLabel
      Left = 422
      Top = 20
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 284
      Top = 20
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label7: TLabel
      Left = 8
      Top = 20
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 195
      Top = 20
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 568
      Top = 61
      Width = 35
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'count:'
    end
    object Label1: TLabel
      Left = 8
      Top = 61
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 688
      Top = 52
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 768
      Top = 52
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1024
      Top = 40
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object cb1: TComboBox
      Left = 281
      Top = 58
      Width = 264
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'CG OK'
        'CG , but meno fixed'
        'CG , but RY deleted')
    end
    object cb2: TComboBox
      Left = 73
      Top = 17
      Width = 120
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
    object Edit3: TEdit
      Left = 606
      Top = 59
      Width = 73
      Height = 24
      Color = cl3DDkShadow
      ReadOnly = True
      TabOrder = 5
      Text = '0'
    end
    object Edit1: TEdit
      Left = 72
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 868
    Height = 275
    Align = alClient
    Color = clMenu
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    RowHeight = 22
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21312'|GSBH'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #26989#21209#35330#21934'|YSBH'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = #37319#36092#21934#34399'|CGNO'
        Title.TitleButton = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'CG_ZSBH'
        Footers = <>
        Title.Caption = #25505#36092#24288#21830'|CG_ZSBH'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'CG_CTS'
        Footers = <>
        Title.Caption = #25505#36092#31665#25976'|CG_CTS'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #37319#36092#26085#26399'|CGDate'
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'BZDate'
        Footers = <>
        Title.Caption = #22806#31665#20633#35387#26085#26399'|BZDate'
        Title.TitleButton = True
        Width = 134
      end>
  end
  object DTP1: TDateTimePicker
    Left = 320
    Top = 17
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 2
  end
  object DTP2: TDateTimePicker
    Left = 448
    Top = 17
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 3
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CGZL.GSBH, YWDD.YSBH,YWBZPO.DDBH, CGZL.CGNO, CGZL.ZSBH as' +
        ' CG_ZSBH, sum(YWBZPO.CTS) as CG_CTS , CGZL.CGDate as CGDate, YWD' +
        'D.BZDate, YWDD.YN '
      'from CGZL                                                       '
      
        'left join (select YSBH,Max(CGNO) as CGNO,MAX(BZDate) as BZDate,M' +
        'AX(YN) as YN from YWDD  where CGNO in (select CGNO from CGZL whe' +
        're CGZL.GSBH='#39'VA12'#39' and convert(smalldatetime,convert(varchar,CG' +
        'ZL.CGDate,111)) between  '#39'2018/06/19'#39'and '#39'2019/07/19'#39')  and YWDD' +
        '.DDBH like '#39'Y1804-0124%'#39' Group by YSBH) YWDD on YWDD.CGNO = CGZL' +
        '.CGNO                         '
      'left join YWBZPO on CGZL.CGNO = YWBZPO.MEMO                     '
      'where CGZL.CGLX = 5                                             '
      
        '      and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)' +
        ') between         '
      '          '#39'2018/06/19'#39'and '#39'2019/07/19'#39
      '      and YWBZPO.DDBH like '#39'Y1804-0124%'#39
      '      and CGZL.GSBH = '#39'VA12'#39'                             '
      ''
      
        'GROUP BY CGZL.GSBH, YWDD.YSBH,YWBZPO.DDBH, CGZL.CGNO, CGZL.ZSBH,' +
        ' CGZL.CGDate, YWDD.BZDate, YWDD.YN '
      'order by CGZL.GSBH, YWBZPO.DDBH')
    Left = 384
    Top = 184
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query1CG_ZSBH: TStringField
      FieldName = 'CG_ZSBH'
    end
    object Query1CGQty: TIntegerField
      FieldName = 'CG_CTS'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1BZDate: TDateTimeField
      FieldName = 'BZDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 184
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page] /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 440
    Top = 208
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 352
    Top = 184
  end
end
