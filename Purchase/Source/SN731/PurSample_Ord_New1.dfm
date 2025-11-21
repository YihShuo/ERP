object PurSample_Ord_New: TPurSample_Ord_New
  Left = 503
  Top = 358
  Width = 878
  Height = 467
  Caption = 'PurSample_Ord_New'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 95
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
      Left = 202
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
    object Label4: TLabel
      Left = 20
      Top = 66
      Width = 50
      Height = 16
      Caption = 'Season:'
    end
    object Label5: TLabel
      Left = 211
      Top = 69
      Width = 60
      Height = 16
      Caption = 'DevType:'
    end
    object Label8: TLabel
      Left = 433
      Top = 69
      Width = 39
      Height = 16
      Caption = 'Stage:'
    end
    object Button1: TButton
      Left = 760
      Top = 51
      Width = 75
      Height = 37
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
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
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 687
      Top = 8
      Width = 65
      Height = 17
      Caption = 'NO OK'
      TabOrder = 0
    end
    object CB2: TCheckBox
      Left = 687
      Top = 35
      Width = 65
      Height = 17
      Caption = 'Mother'
      TabOrder = 1
    end
    object YPDHEdit: TEdit
      Left = 275
      Top = 4
      Width = 134
      Height = 24
      TabOrder = 4
    end
    object SREdit: TEdit
      Left = 276
      Top = 35
      Width = 133
      Height = 24
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 74
      Top = 5
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object Edit2: TEdit
      Left = 74
      Top = 33
      Width = 121
      Height = 24
      Color = 14286847
      ReadOnly = True
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 73
      Top = 62
      Width = 122
      Height = 24
      TabOrder = 8
    end
    object Edit4: TEdit
      Left = 276
      Top = 65
      Width = 133
      Height = 24
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 476
      Top = 65
      Width = 113
      Height = 24
      TabOrder = 10
    end
    object Button3: TButton
      Left = 760
      Top = 8
      Width = 75
      Height = 38
      Caption = 'Copy'
      TabOrder = 11
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 95
    Width = 862
    Height = 333
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
    TabOrder = 1
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
        FieldName = 'YPDH'
        Footers = <>
        Width = 110
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
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'oldCLSL'
        Footers = <>
        Title.Caption = 'Old Req Qty'
        Width = 76
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
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'DevType'
        Footers = <>
        Width = 78
      end>
  end
  object CLBHEdit: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object JGNOEdit: TEdit
    Left = 152
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 3
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
      'select ZLZLS.YPZLBH,ZLZLS.YPDH,ZLZLS.CLBH,ZLZLS.CLSL,ZLZLS.KFJD,'
      'ZLZLS.Article,ZLZLS.PAIRS,'
      
        'isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) oldCLSL,ZLZ' +
        'LS.JiJie,ZLZLS.JD,ZLZLS.DevType '
      
        'from (select  YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,isnull' +
        '(sum(YPZLZLS2.CLSL),0) as CLSL,'
      
        '      YPZLZLS.PAIRS,kfxxzl.devcode as article,ypzl.KFJD,ypzlzl.J' +
        'iJie,ypzlzl.KFJD as JD,ypzlzl.DevType '
      '      from YPZLZLS2'
      '      left join ypzl on ypzl.YPDH=YPZLZLS2.YPDH'
      
        '      left join kfxxzl on kfxxzl.xiexing = ypzl.xiexing and kfxx' +
        'zl.shehao = ypzl.shehao'
      '      left join ypzlzl on ypzlzl.YPZLBH=YPZLZLS2.YPZLBH'
      
        '      left join YPZLZLS on YPZLZLS.YPDH=YPZLZLS2.YPDH AND YPZLZL' +
        'S.YPZLBH=YPZLZLS2.YPZLBH '
      '      where 1=1 and YPZLZLS2.ZMLB='#39'N'#39' '
      '      and YPZLZLS2.YPZLBH like '#39'20221200071%'#39
      '      and YPZLZLS2.SIZE='#39'ZZZZZZ'#39' '
      
        '       group by YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,YPZL' +
        'ZLS.PAIRS,kfxxzl.devcode,ypzl.KFJD,ypzlzl.JiJie,ypzlzl.KFJD,ypzl' +
        'zl.DevType '
      '      ) ZLZLS '
      'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,'
      
        '           isnull(sum(CGZLSS.Qty),0) as okQty,isnull(max(CGZLSS.' +
        'CLSL),0) as oldCLSL '
      '           from CGZLSS '
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.C' +
        'LBH=CGZLSS.CLBH '
      '           left join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      '           left join YPZL on YPZL.YPDH=CGZLSS.ZLBH'
      
        '           left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and Y' +
        'PZL.SheHao=KFXXZL.SheHao '
      '           where 1=1 '
      '           and CGZLS.JGNO like '#39'20221200071%'#39
      '           and YPZL.YPDH like '#39'%'#39
      '           and KFXXZL.Devcode like '#39'%%'#39' '
      '           and CGZLSS.XXCC='#39'ZZZZZZ'#39
      '           and CGZL.GSBH='#39'CDC'#39
      '           group by  CGZLSS.ZLBH,CGZLSS.CLBH'
      
        '           ) CGZL on CGZL.CLBH=ZLZLS.CLBH and CGZL.ZLBH=ZLZLS.YP' +
        'DH '
      'order by ZLZLS.Article'
      '')
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
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
      Size = 10
    end
    object Query1JD: TStringField
      FieldName = 'JD'
      FixedChar = True
      Size = 10
    end
    object Query1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
end
