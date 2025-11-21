object RPFCLsum: TRPFCLsum
  Left = 83
  Top = 150
  Width = 1135
  Height = 555
  Caption = 'RPFCLsum'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 329
    Width = 1119
    Height = 188
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TS3: TTabSheet
      Caption = 'PFMas'
      ImageIndex = 2
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1111
        Height = 157
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footers = <>
            ReadOnly = True
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = 'KGS'
            Footers = <>
            ReadOnly = True
            Width = 135
          end
          item
            EditButtons = <>
            FieldName = 'totalKGS'
            Footers = <>
            ReadOnly = True
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'RealTimes'
            Footers = <>
            ReadOnly = True
            Width = 98
          end
          item
            Color = clAqua
            EditButtons = <>
            FieldName = 'AddTimes'
            Footers = <>
            Width = 78
          end
          item
            Color = clAqua
            EditButtons = <>
            FieldName = 'FinTimes'
            Footers = <>
            ReadOnly = True
            Width = 77
          end>
      end
      object detail_func: TButton
        Left = 784
        Top = 64
        Width = 81
        Height = 25
        Caption = 'detail_func'
        TabOrder = 1
        Visible = False
        OnClick = detail_funcClick
      end
    end
    object TS4: TTabSheet
      Caption = 'PFDet'
      ImageIndex = 3
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1111
        Height = 157
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ddbh'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 154
          end
          item
            EditButtons = <>
            FieldName = 'cqdh'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'khdh'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'xiexing'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'shehao'
            Footers = <>
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'ddrq'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'scrq'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'ddjq'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'kgs'
            Footers = <>
            Width = 86
          end>
      end
    end
    object TS5: TTabSheet
      Caption = 'CLdet'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1111
        Height = 157
        Align = alClient
        DataSource = DS5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldhz'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 284
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end>
      end
    end
    object TS6: TTabSheet
      Caption = 'Amount'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1111
        Height = 157
        Align = alClient
        DataSource = DS6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldhz'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 312
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 270
          end
          item
            EditButtons = <>
            FieldName = 'clyl'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 117
          end>
      end
    end
  end
  object Edit1: TEdit
    Left = 672
    Top = 384
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 1208
      Top = 24
      Width = 36
      Height = 29
      Caption = 'Set'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 144
      Top = 24
      Width = 57
      Height = 24
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 568
      Top = 24
      Width = 15
      Height = 24
      Caption = 'to'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 408
      Top = 24
      Width = 37
      Height = 24
      Caption = 'from'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 336
      Top = 24
      Width = 68
      Height = 24
      Caption = 'SCDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 896
      Top = 16
      Width = 105
      Height = 41
      Caption = 'QUERY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object CB1: TComboBox
      Left = 208
      Top = 24
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
      TabOrder = 1
      Text = 'ALL'
      OnChange = CB1Change
      Items.Strings = (
        'ALL'
        'VR1'
        'VR2'
        'VR3')
    end
    object DTP2: TDateTimePicker
      Left = 584
      Top = 24
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
    object Button3: TButton
      Left = 1048
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Calculate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 448
      Top = 24
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
      TabOrder = 4
    end
    object CKB1: TCheckBox
      Left = 744
      Top = 32
      Width = 97
      Height = 17
      Caption = 'ERROR'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 243
    Width = 1119
    Height = 86
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 1200
      Top = 24
      Width = 81
      Height = 29
      Caption = 'Amount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 896
      Top = 24
      Width = 105
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1119
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    object Label3: TLabel
      Left = 1200
      Top = 24
      Width = 68
      Height = 29
      Caption = 'Check'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 416
      Top = 32
      Width = 55
      Height = 24
      Caption = 'CLDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 144
      Top = 32
      Width = 57
      Height = 24
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 480
      Top = 24
      Width = 137
      Height = 37
      Color = clScrollBar
      DataField = 'cldh'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 208
      Top = 24
      Width = 89
      Height = 37
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 162
    Width = 1119
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 1200
      Top = 24
      Width = 68
      Height = 29
      Caption = 'Check'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 416
      Top = 32
      Width = 55
      Height = 24
      Caption = 'CLDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 480
      Top = 25
      Width = 137
      Height = 37
      Color = clScrollBar
      DataField = 'cldh'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object ddzl: TQuery
    DatabaseName = 'dd'
    DataSource = DS3
    SQL.Strings = (
      
        'select ddzl.ddbh, ddzl.cqdh, ddzl.khdh, ddzl.xiexing, ddzl.sheha' +
        'o, ddzl.article, ddzl.ddrq, ddzl.scrq, ddzl.ddjq , ddzl.pairs, d' +
        'dzls2.kgs'
      'from ddzl'
      
        'left join ddzls2 on ddzl.ddbh = ddzls2.ddbh and ddzl.cqdh = ddzl' +
        's2.cqdh')
    Left = 500
    Top = 432
    object ddzlddbh: TStringField
      FieldName = 'ddbh'
      Size = 16
    end
    object ddzlcqdh: TStringField
      FieldName = 'cqdh'
      Size = 3
    end
    object ddzlkhdh: TStringField
      FieldName = 'khdh'
      Size = 4
    end
    object ddzlxiexing: TStringField
      FieldName = 'xiexing'
      Size = 18
    end
    object ddzlshehao: TStringField
      FieldName = 'shehao'
      Size = 5
    end
    object ddzlarticle: TStringField
      FieldName = 'article'
    end
    object ddzlddrq: TStringField
      FieldName = 'ddrq'
      Size = 8
    end
    object ddzlscrq: TStringField
      FieldName = 'scrq'
      Size = 8
    end
    object ddzlddjq: TStringField
      FieldName = 'ddjq'
      Size = 8
    end
    object ddzlpairs: TFloatField
      FieldName = 'pairs'
    end
    object ddzlkgs: TFloatField
      FieldName = 'kgs'
    end
  end
  object DS4: TDataSource
    DataSet = ddzl
    Left = 532
    Top = 436
  end
  object DS3: TDataSource
    DataSet = ddzls2
    Left = 428
    Top = 436
  end
  object ddzls2: TQuery
    OnCalcFields = ddzls2CalcFields
    AutoRefresh = True
    DatabaseName = 'dd'
    SQL.Strings = (
      
        'select isnull(ddzls2.cldh, '#39#39'ZZZZZZZZ'#39#39') as cldh, isnull(CLZL.TO' +
        'TKGS, 0) as KGS, isnull(SUM(KGS), 0) as totalKGS, 0  as RealTime' +
        's, 0 as AddTimes, 0 as FinTimes'
      'from DDZL'
      
        'LEFT JOIN DDZLS2 ON DDZL.DDBH = DDZLS2.DDBH  AND  DDZL.CQDH = DD' +
        'ZLS2.CQDH'
      'LEFT JOIN CLZL ON DDZLS2.CLDH = CLZL.CLDH '
      'group by ddzls2.cldh, CLZL.TOTKGS')
    UpdateObject = UpMas
    Left = 396
    Top = 436
    object ddzls2cldh: TStringField
      FieldName = 'cldh'
      Size = 16
    end
    object ddzls2KGS: TFloatField
      FieldName = 'KGS'
    end
    object ddzls2totalKGS: TFloatField
      FieldName = 'totalKGS'
    end
    object ddzls2RealTimes: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RealTimes'
      Calculated = True
    end
    object ddzls2AddTimes: TIntegerField
      FieldName = 'AddTimes'
    end
    object ddzls2FinTimes: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FinTimes'
      Calculated = True
    end
  end
  object UpMas: TUpdateSQL
    InsertSQL.Strings = (
      '')
    Left = 396
    Top = 468
  end
  object Amount: TQuery
    DatabaseName = 'dd'
    DataSource = DS3
    SQL.Strings = (
      
        'select  clzlsl.cldhz, clzl.ywpm, clzl.zwpm, sum(clzlsl.clyl) as ' +
        'clyl from '
      '('
      '  select  cldhz, clyl*10 as clyl from clzlsl'
      '  where cldh = '#39'VBR20101'#39' '
      '  union all'
      '  select  cldhz, clyl*20 as clyl from clzlsl'
      '  where cldh = '#39'VCR20101'#39' '
      ') clzlsl'
      'left join clzl on clzl.cldh = clzlsl.cldhz'
      'group by cldhz, clzl.ywpm, clzl.zwpm')
    Left = 732
    Top = 440
    object StringField2: TStringField
      FieldName = 'cldhz'
      Size = 16
    end
    object StringField3: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS6: TDataSource
    DataSet = Amount
    Left = 764
    Top = 444
  end
  object clzlsl: TQuery
    DatabaseName = 'dd'
    DataSource = DS3
    SQL.Strings = (
      
        'select clzlsl.cldh, clzlsl.cldhz, clzl.ywpm, clzl.zwpm, clzlsl.c' +
        'lyl'
      'from clzlsl'
      'left join clzl on clzlsl.cldhz = clzl.cldh'
      'where clzlsl.cldh = :cldh'
      '')
    Left = 612
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cldh'
        ParamType = ptUnknown
      end>
    object clzlslPFBH2: TStringField
      FieldName = 'cldh'
      Size = 16
    end
    object clzlslcldhz: TStringField
      FieldName = 'cldhz'
      Size = 16
    end
    object clzlslywpm: TStringField
      FieldName = 'ywpm'
      Size = 60
    end
    object clzlslzwpm: TStringField
      FieldName = 'zwpm'
      Size = 60
    end
    object clzlslclyl: TFloatField
      FieldName = 'clyl'
    end
  end
  object DS5: TDataSource
    DataSet = clzlsl
    Left = 644
    Top = 444
  end
end
