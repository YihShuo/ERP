object RWSituation: TRWSituation
  Left = 213
  Top = 254
  Width = 691
  Height = 410
  Caption = 'RWSituation'
  Color = clBtnFace
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Width = 721
    Height = 169
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 576
      Top = 40
      Width = 23
      Height = 24
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 400
      Top = 41
      Width = 50
      Height = 24
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 1016
      Top = 80
      Width = 52
      Height = 24
      Caption = 'count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 112
      Top = 40
      Width = 45
      Height = 24
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 112
      Top = 112
      Width = 85
      Height = 24
      Caption = #26448#26009#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 312
      Top = 40
      Width = 65
      Height = 24
      Caption = #29983#29986#26085':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 760
      Top = 64
      Width = 97
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 880
      Top = 64
      Width = 97
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1168
      Top = 32
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 2
      Visible = False
      OnClick = Button3Click
    end
    object Edit3: TEdit
      Left = 1072
      Top = 80
      Width = 65
      Height = 32
      Color = cl3DDkShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
    object CB1: TComboBox
      Left = 176
      Top = 40
      Width = 73
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VR1'
        'VR2'
        'VR3')
    end
  end
  object DTP1: TDateTimePicker
    Left = 456
    Top = 40
    Width = 113
    Height = 28
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DTP2: TDateTimePicker
    Left = 608
    Top = 40
    Width = 113
    Height = 28
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 169
    Width = 721
    Height = 186
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cldhz'
        Width = 155
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'zwpm'
        Width = 272
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'ywpm'
        Width = 336
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'tclyl'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dwbh'
        Width = 74
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 504
    Top = 288
    Width = 121
    Height = 24
    TabOrder = 4
    Text = 'Edit1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 224
    Top = 112
    Width = 121
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object ddzl: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'SELECT isnull(DDZL.CQDH, '#39'all'#39'), CLZLSL.cldhz , CLZLZ.zwpm,CLZLZ' +
        '.ywpm'
      
        '       ,round(SUM((DDZLS2.KGS/CLZL.TOTKGS)*CLZLSL.CLYL)+0.5,1) A' +
        'S TCLYL, CLZLZ.DWBH'
      'FROM DDZL'
      
        'LEFT JOIN DDZLS2 ON DDZL.DDBH = DDZLS2.DDBH AND  DDZL.CQDH = DDZ' +
        'LS2.CQDH'
      'LEFT JOIN CLZLSL ON DDZLS2.cldh = CLZLSL.cldh'
      'LEFT JOIN CLZL ON DDZLS2.cldh = CLZL.cldh'
      'LEFT JOIN CLZL CLZLZ ON CLZLSL.cldhz = CLZLZ.cldh'
      'where DDZL.CQDH = '#39'VR3'#39
      '  and CLZLSL.CLDHZ like '#39'%%'#39
      '--  and DDZL.SCRQ'
      '  and DDZL.YN <> '#39'2'#39
      
        'GROUP BY  CLZLSL.cldhz ,CLZLZ.zwpm,CLZLZ.ywpm,DDZL.CQDH ,CLZLZ.D' +
        'WBH')
    Left = 568
    Top = 208
    object ddzlcldhz: TStringField
      FieldName = 'cldhz'
      Size = 16
    end
    object ddzlzwpm: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object ddzlywpm: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object ddzltclyl: TFloatField
      FieldName = 'tclyl'
    end
    object ddzldwbh: TStringField
      FieldName = 'dwbh'
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = ddzl
    Left = 600
    Top = 208
  end
  object PrintDBGridEh1: TPrintDBGridEh
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
end
