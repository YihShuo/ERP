object PurSample_Ord: TPurSample_Ord
  Left = 586
  Top = 294
  Width = 862
  Height = 491
  BorderIcons = [biSystemMenu]
  Caption = 'PurSample_Ord'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 64
    Width = 846
    Height = 388
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <
          item
            FieldName = 'Article'
            ValueType = fvtCount
          end>
        Title.Caption = 'SR#'
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'Req. Qty'
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'oldCLSL'
        Footers = <>
        Title.Caption = 'Old Req Qty'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'MegerNo'
      end
      item
        EditButtons = <>
        FieldName = 'PAIRS'
        Footers = <>
        Title.Caption = 'Pairs'
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 25
      Top = 37
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 424
      Top = 1
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 64
      Height = 16
      Caption = 'MergerNo:'
    end
    object Label2: TLabel
      Left = 200
      Top = 8
      Width = 68
      Height = 16
      Caption = 'SampleNo:'
    end
    object Label3: TLabel
      Left = 240
      Top = 40
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Button1: TButton
      Left = 760
      Top = 34
      Width = 73
      Height = 26
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 34
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = PurSample.DS4
      ReadOnly = True
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 424
      Top = 19
      Width = 249
      Height = 38
      Color = 14286847
      DataField = 'YWPM'
      DataSource = PurSample.DS4
      ReadOnly = True
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 687
      Top = 8
      Width = 65
      Height = 17
      Caption = 'NO OK'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 759
      Top = 4
      Width = 75
      Height = 26
      Caption = 'Copy'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CB2: TCheckBox
      Left = 687
      Top = 35
      Width = 65
      Height = 17
      Caption = 'Mother'
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 4
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'JGNO'
      DataSource = PurSample.DS4
      ReadOnly = True
      TabOrder = 6
    end
    object YPDHEdit: TEdit
      Left = 275
      Top = 4
      Width = 134
      Height = 24
      TabOrder = 7
    end
    object SREdit: TEdit
      Left = 276
      Top = 35
      Width = 133
      Height = 24
      TabOrder = 8
    end
  end
  object CLBHEdit: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object JGNOEdit: TEdit
    Left = 152
    Top = 208
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
      'select ZLZLS.YPZLBH,ZLZLS.CLBH,ZLZLS.CLSL,ZLZLS.KFJD,'
      'ZLZLS.Article,ZLZLS.PAIRS,'
      'isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) oldCLSL'
      
        'from (select  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,isnull(sum(YPZLZLS2.' +
        'CLSL),0) as CLSL,'
      '      YPZLZLS.PAIRS,ypzl.Article,YPZLZL.KFJD '
      '     from YPZLZLS2'
      '    left join ypzl on ypzl.YPDH=YPZLZLS2.YPDH'
      '    left join ypzlzl on ypzlzl.YPZLBH=YPZLZLS2.YPZLBH'
      
        '     left join YPZLZLS on YPZLZLS.YPDH=YPZLZLS2.YPDH AND YPZLZLS' +
        '.YPZLBH=YPZLZLS2.YPZLBH '
      ''
      '     where YPZLZLS2.ZMLB='#39'N'#39
      '     and YPZLZLS2.SIZE='#39'ZZZZZZ'#39
      '   and YPZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      
        '      group by YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,YPZLZLS.PAIRS,ypzl.' +
        'Article,YPZLZL.KFJD'
      '     ) ZLZLS '
      ''
      'left join (select CGZLSS.CLBH,CGZLS.JGNO,'
      
        '          isnull(sum(CGZLSS.Qty),0) as okQty,isnull(max(CGZLSS.C' +
        'LSL),0) as oldCLSL '
      '          from CGZLSS '
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.C' +
        'LBH=CGZLSS.CLBH '
      '         left join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      '           where 1=1 '
      '          group by  CGZLS.JGNO,CGZLSS.CLBH'
      
        '         ) CGZL on CGZL.CLBH=ZLZLS.CLBH and CGZL.JGNO=ZLZLS.YPZL' +
        'BH '
      ''
      'where isnull(ZLZLS.CLSL,0)>isnull(CGZL.okQty,0)'
      'order by ZLZLS.Article')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
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
    object Query1PAIRS: TFloatField
      FieldName = 'PAIRS'
    end
    object strngfldQuery1KFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
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
