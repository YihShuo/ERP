object MaterialArticle: TMaterialArticle
  Left = 434
  Top = 28
  Width = 1460
  Height = 663
  Caption = 'MaterialArticle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 337
    Width = 1444
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBlue
    ParentColor = False
  end
  object Splitter5: TSplitter
    Left = 0
    Top = 334
    Width = 1444
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1444
    Height = 66
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 41
      Height = 16
      Caption = 'Mat. ID'
    end
    object Label2: TLabel
      Left = 170
      Top = 9
      Width = 62
      Height = 16
      Caption = 'Mat Name'
    end
    object Label4: TLabel
      Left = 166
      Top = 37
      Width = 69
      Height = 16
      Caption = 'SuppName'
      Visible = False
    end
    object Label3: TLabel
      Left = 13
      Top = 37
      Width = 37
      Height = 16
      Caption = 'KHBH'
    end
    object Edit1: TEdit
      Left = 54
      Top = 7
      Width = 102
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 701
      Top = 8
      Width = 75
      Height = 27
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Radio_MatType: TRadioGroup
      Left = 551
      Top = -4
      Width = 143
      Height = 67
      ItemIndex = 0
      Items.Strings = (
        'Show All Material'
        'Only Treatment '#39'P'#39
        'Only Raw Material')
      TabOrder = 2
    end
    object Edit_Supplier: TEdit
      Left = 237
      Top = 33
      Width = 204
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      Visible = False
    end
    object ShowDetail1: TCheckBox
      Left = 704
      Top = 40
      Width = 137
      Height = 17
      Caption = 'Show SampleBOM'
      TabOrder = 4
      OnClick = ShowDetail1Click
    end
    object ShowDetail3: TCheckBox
      Left = 853
      Top = 25
      Width = 166
      Height = 17
      Caption = 'Show ProductionBOM'
      TabOrder = 5
      OnClick = ShowDetail3Click
    end
    object ShowDetail2: TCheckBox
      Left = 853
      Top = 8
      Width = 174
      Height = 17
      Caption = 'Show Purchasing Order'
      TabOrder = 6
      OnClick = ShowDetail2Click
    end
    object ShowDetail4: TCheckBox
      Left = 853
      Top = 43
      Width = 166
      Height = 17
      Caption = 'Show PorudcitonOurder'
      TabOrder = 7
      OnClick = ShowDetail4Click
    end
    object YWPMEdit: TEdit
      Left = 237
      Top = 6
      Width = 307
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
      OnKeyDown = YWPMEditKeyDown
    end
    object StopCK: TCheckBox
      Left = 781
      Top = 8
      Width = 60
      Height = 33
      Caption = 'Stop no show'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
      WordWrap = True
    end
    object SplitCK: TCheckBox
      Left = 448
      Top = 40
      Width = 65
      Height = 17
      Caption = 'Split=*'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object Edit2: TEdit
      Left = 54
      Top = 34
      Width = 102
      Height = 24
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 66
    Width = 1444
    Height = 268
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <
          item
            FieldName = 'cldh'
            ValueType = fvtCount
          end>
        Title.Caption = 'Mat. ID'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'English Name'
        Title.TitleButton = True
        Width = 723
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Title.TitleButton = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'UseCount'
        Footers = <>
        Title.Caption = 'Used'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'lycc'
        Footers = <>
        Title.Caption = 'Size'
        Title.TitleButton = True
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Footers = <>
        Title.TitleButton = True
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Title.Caption = 'Stop'
        Title.TitleButton = True
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'khdh'
        Footers = <>
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 431
    Width = 1444
    Height = 194
    Align = alBottom
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 289
      Top = 1
      Width = 1
      Height = 192
      Color = clBlue
      ParentColor = False
    end
    object Splitter3: TSplitter
      Left = 532
      Top = 1
      Height = 192
      Color = clBlue
      ParentColor = False
    end
    object Splitter4: TSplitter
      Left = 822
      Top = 1
      Height = 192
      Color = clBlue
      ParentColor = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 288
      Height = 192
      Align = alLeft
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 286
        Height = 20
        Align = alTop
        Caption = 'Sample BOM [A2B]'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh3: TDBGridEh
        Left = 1
        Top = 21
        Width = 286
        Height = 170
        Align = alClient
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
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
        PopupMenu = PopupMenu3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR'
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.TitleButton = True
            Title.ToolTips = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'userid'
            Footers = <>
            Title.Caption = 'SampleUserID'
          end>
      end
    end
    object Panel5: TPanel
      Left = 535
      Top = 1
      Width = 287
      Height = 192
      Align = alLeft
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 285
        Height = 20
        Align = alTop
        Caption = 'Production BOM [A3A]'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 21
        Width = 285
        Height = 170
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
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
        PopupMenu = PopupMenu2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.TitleButton = True
            Width = 53
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = 'ShoeName'
            Title.TitleButton = True
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.TitleButton = True
            Width = 108
          end>
      end
    end
    object Panel7: TPanel
      Left = 290
      Top = 1
      Width = 242
      Height = 192
      Align = alLeft
      TabOrder = 2
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 240
        Height = 20
        Align = alTop
        Caption = 'Purchasing Order'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 21
        Width = 240
        Height = 170
        Align = alClient
        DataSource = DataSource4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu4
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.Caption = 'Date'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.TitleButton = True
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'Order NO'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CGLX'
            Footers = <>
            Width = 38
          end>
      end
    end
    object Panel9: TPanel
      Left = 825
      Top = 1
      Width = 618
      Height = 192
      Align = alClient
      TabOrder = 3
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 616
        Height = 20
        Align = alTop
        Caption = 'Production Order [A3B]'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGridEh
        Left = 1
        Top = 21
        Width = 616
        Height = 170
        Align = alClient
        DataSource = DS_A3B
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_A3B
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.TitleButton = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            Title.Caption = 'Recev. Date'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'SHQR'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end>
      end
    end
  end
  object DBGridEh8: TDBGridEh
    Left = 0
    Top = 340
    Width = 1444
    Height = 91
    Align = alBottom
    Color = clScrollBar
    DataSource = DS_clzhzlSub
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Sub_Mat'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Sub_MatName'
        Footers = <>
        Width = 637
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'Supp ID'
        Width = 53
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 100 cldh,ywpm,dwbh,lycc,gjlb,cqdh,tyjh,clzmlb,YPZLS.U' +
        'seCount,'#39#39' as khdh'
      ' from CLZL'
      'left join ( '
      'select CLBH,Count(CLBH) as UseCount from ( '
      
        'select CLBH  from YPZLS,YPZL where YPZL.YPDH=YPZLS.YPDH and YPZL' +
        '.UserDate>='#39'20130208'#39' '
      'union all '
      'select Clzhzl.CLDH1 as CLBH from YPZLS '
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH '
      'inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  '
      'where YPZL.UserDate>='#39'20130208'#39' '
      ') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH  '
      'where 1=1 '
      'and YWPM like '#39'%44"%'#39' '
      'and YWPM like '#39'%8oz%'#39' '
      'and YWPM like '#39'%Canvas%'#39' '
      'and YWPM like '#39'%+2.0-2.2mm%'#39' '
      'and YWPM like '#39'%Rubber%'#39' '
      'and YWPM like '#39'%Shore%'#39
      'and YWPM like '#39'%Hardness%80+/-3'#39
      'and YWPM like '#39'%A%'#39
      'and tyjh<>'#39'Y'#39' '
      'order by  YPZLS.UseCount desc')
    Left = 168
    Top = 112
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.CLZl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1lycc: TStringField
      FieldName = 'lycc'
      Origin = 'DB.CLZl.lycc'
      FixedChar = True
      Size = 1
    end
    object Query1gjlb: TStringField
      FieldName = 'gjlb'
      Origin = 'DB.CLZl.gjlb'
      FixedChar = True
      Size = 4
    end
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      Origin = 'DB.CLZl.cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      Origin = 'DB.CLZl.tyjh'
      FixedChar = True
      Size = 1
    end
    object Query1clzmlb: TStringField
      DisplayLabel = 'Treatment'
      FieldName = 'clzmlb'
      Origin = 'DB.CLZl.clzmlb'
      FixedChar = True
      Size = 1
    end
    object Query1UseCount: TIntegerField
      FieldName = 'UseCount'
    end
    object Query1khdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 329
    Top = 244
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      ''
      'SELECT AA.* FROM'
      '  ('
      
        '  select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,kfxx' +
        'zl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC'
      '  from  XXZLS'
      
        '  left join XXZL   ON XXZLS.XIEXING=XXZL.XIEXING AND  XXZLS.SHEH' +
        'AO=XXZL.SHEHAO'
      
        '  left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHa' +
        'o=kfxxzl.SheHao'
      '  left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH'
      '  WHERE LEFT(XXZLS.XIEXING,1)='#39'C'#39' AND XXZLS.CLBH=:CLDH'
      ''
      '  UNION ALL'
      ''
      
        '  select XXZL.ARTICLE,XXZLS.XIEXING,XXZLS.SHEHAO,XXZLS.CLBH,kfxx' +
        'zl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC'
      '  from  XXZLS'
      
        '  left join XXZL ON XXZLS.XIEXING=XXZL.XIEXING AND XXZLS.SHEHAO=' +
        'XXZL.SHEHAO'
      
        '  left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHa' +
        'o=kfxxzl.SheHao'
      '  left join ZSZL on  ZSZL.ZSDH=XXZLS.CSBH'
      
        '  WHERE LEFT(XXZLS.XIEXING,1)='#39'C'#39' AND XXZLS.CLBH  IN (SELECT  CL' +
        'DH FROM CLZHZL  WHERE  CLDH1=:CLDH )'
      ''
      '  UNION ALL'
      ''
      
        '  select XXZL.ARTICLE,XXZLSVN.XIEXING,XXZLSVN.SHEHAO,XXZLSVN.CLB' +
        'H,kfxxzl.FD,XXZL.JiJie,xxzl.xieming,ZSZL.ZSYWJC'
      '  from  XXZLSVN'
      
        '  left join XXZL ON XXZLSVN.XIEXING=XXZL.XIEXING AND XXZLSVN.SHE' +
        'HAO=XXZL.SHEHAO'
      
        '  left join kfxxzl on XXZL.XieXing=kfxxzl.XieXing and XXZL.SheHa' +
        'o=kfxxzl.SheHao'
      '  left join ZSZL on  ZSZL.ZSDH=XXZLSVN.CSBH'
      '  WHERE LEFT(XXZLSVN.XIEXING,1)='#39'C'#39' AND XXZLSVN.CLBH=:CLDH'
      '  ) AA'
      'GROUP BY  ARTICLE,XIEXING,SHEHAO,CLBH,FD,JiJie,aa.xieming,ZSYWJC'
      'order by JiJie DESC')
    Left = 328
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query2XIEXING: TStringField
      FieldName = 'XIEXING'
      FixedChar = True
      Size = 15
    end
    object Query2SHEHAO: TStringField
      FieldName = 'SHEHAO'
      FixedChar = True
      Size = 5
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query2JiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.' +
        'KFJD,kfxxzl.JiJie,kfxxzl.FD  ,ypzl.userid'
      '  from  ypzlS'
      '  left join ypzl on ypzlS.YPDH=ypzl.YPDH'
      
        '  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.She' +
        'Hao=ypzl.SheHao'
      '  WHERE ypzlS.CLBH=:CLDH and kfxxzl.khdh=:khdh'
      'UNION ALL'
      
        'select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.' +
        'KFJD,kfxxzl.JiJie,kfxxzl.FD  ,ypzl.userid'
      '  from  ypzlS'
      '  left join ypzl on ypzlS.YPDH=ypzl.YPDH'
      
        '  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.She' +
        'Hao=ypzl.SheHao'
      '  left join CLZHZL on CLZHZL.cldh=ypzls.clbh'
      '  WHERE CLZHZL.cldh1=:CLDH and kfxxzl.khdh=:khdh'
      'order by  JiJie DESC'
      ''
      ''
      '')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'khdh'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'khdh'
        ParamType = ptUnknown
      end>
    object Query3devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query3ARTICLE: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query3CLBH: TStringField
      DisplayLabel = 'Mat.ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3YPDH: TStringField
      DisplayLabel = 'Sample Order'
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query3KFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Query3JiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query3FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query3userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 169
    Top = 244
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select  top 10 CGZL.CGDATE,CGZL.PURPOSE,CGZLS.CGNO ,ZSZL.ZSYWJC,' +
        'CGZL.GSBH,CGZL.CGLX'
      '  from  CGZLS'
      '  left join CGZL on CGZLS.CGNO=CGZL.CGNO'
      '  left join ZSZL on  ZSZL.ZSDH=CGZL.ZSBH'
      '  WHERE CGZLS.CLBH=:CLDH'
      'order by CGDATE DESC'
      ''
      '')
    Left = 256
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query4CGDATE: TDateTimeField
      DisplayLabel = 'Purchase|Date'
      FieldName = 'CGDATE'
    end
    object Query4PURPOSE: TStringField
      DisplayLabel = 'Purchase|Stage'
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Query4CGNO: TStringField
      DisplayLabel = 'Purchase|Order NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query4ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query4GSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object Query4CGLX: TStringField
      FieldName = 'CGLX'
      Size = 1
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 257
    Top = 243
  end
  object DS_A3B: TDataSource
    DataSet = Qry_A3B
    Left = 400
    Top = 243
  end
  object Qry_A3B: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select top 10 DDZLTW.DDBH,DDZLTW.ARTICLE,DDZLTW.Pairs,DDZLTW.DDR' +
        'Q,ZLZL.SHQR'
      'from DDZLTW'
      'left join ZLZL on DDZlTW.ZLBH=ZLZL.ZLBH'
      
        'where left(DDZLTW.DDBH,1)='#39'Y'#39'  and DDZLTW.ShipDate>GetDate()-180' +
        ' and exists (select ZLZLS2.ZLBH FROM ZLZLS2 WHERE DDZlTW.ZLBH=ZL' +
        'ZLS2.ZLBH and CLBH=:CLDH)'
      'order by DDZLTW.DDBH'
      '')
    Left = 400
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end>
    object Qry_A3BDDBH: TStringField
      DisplayLabel = 'RY'
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Qry_A3BARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_A3BPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Qry_A3BDDRQ: TDateTimeField
      DisplayLabel = 'Receive Date'
      FieldName = 'DDRQ'
    end
    object Qry_A3BSHQR: TStringField
      DisplayLabel = 'Confirm'
      FieldName = 'SHQR'
      FixedChar = True
      Size = 1
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 675
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 144
    object Excel5: TMenuItem
      Caption = 'Excel'
      OnClick = Excel5Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 328
    Top = 304
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 168
    Top = 304
    object Excel4: TMenuItem
      Caption = 'Excel'
      OnClick = Excel4Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 256
    Top = 304
    object Excel3: TMenuItem
      Caption = 'Excel'
      OnClick = Excel3Click
    end
  end
  object Pop_A3B: TPopupMenu
    Left = 400
    Top = 304
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qry_clzhzlSub: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      'SELECT clzhzl.cldh1 as Sub_Mat'
      ',clzhzl.syl as Usage'
      ',clzl_Sub.ywpm AS Sub_MatName'
      ',clzhzl.USERID'
      ',clzhzl.USERDATE'
      ',clzl_Sub.clzmlb'
      ',clzhzl.zsdh'
      ',zszl.zsywjc'
      'FROM   clzhzl'
      'left JOIN clzl as clzl_Sub ON clzl_Sub.cldh=clzhzl.cldh1'
      'left JOIN zszl ON zszl.zsdh=clzhzl.zsdh'
      'where clzhzl.cldh=:cldh')
    Left = 217
    Top = 115
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end>
    object StringField30: TStringField
      FieldName = 'Sub_Mat'
      FixedChar = True
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'Usage'
    end
    object StringField32: TStringField
      FieldName = 'Sub_MatName'
      FixedChar = True
      Size = 200
    end
    object StringField33: TStringField
      DisplayLabel = 'UserID'
      FieldName = 'USERID'
      FixedChar = True
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
    end
    object Qry_clzhzlSubclzmlb: TStringField
      FieldName = 'clzmlb'
      Origin = 'DB.clzl.clzmlb'
      FixedChar = True
      Size = 1
    end
    object Qry_clzhzlSubzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Qry_clzhzlSubzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
  end
  object DS_clzhzlSub: TDataSource
    DataSet = Qry_clzhzlSub
    Left = 217
    Top = 82
  end
end
