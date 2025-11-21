object ExtraMaterialQuickStep: TExtraMaterialQuickStep
  Left = 341
  Top = 71
  Width = 1024
  Height = 563
  Caption = 'ExtraMaterialQuickStep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 634
    Top = 137
    Height = 388
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 137
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 64
      Width = 80
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
      Left = 294
      Top = 62
      Width = 80
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
    object Label7: TLabel
      Left = 611
      Top = 9
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 8
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 176
      Top = 7
      Width = 8
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label4: TLabel
      Left = 24
      Top = 35
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 593
      Top = 35
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 795
      Top = 16
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 378
      Top = 59
      Width = 215
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 91
      Top = 61
      Width = 182
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 379
      Top = 4
      Width = 106
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 489
      Top = 3
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object BuyNoEdit: TEdit
      Left = 676
      Top = 5
      Width = 101
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object chk_shp: TCheckBox
      Left = 280
      Top = 8
      Width = 97
      Height = 17
      BiDiMode = bdLeftToRight
      Caption = 'ShipDate:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
    end
    object chk_plan: TCheckBox
      Left = 280
      Top = 36
      Width = 97
      Height = 17
      Caption = 'PlanDate:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DTP3: TDateTimePicker
      Left = 379
      Top = 31
      Width = 106
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DTP4: TDateTimePicker
      Left = 489
      Top = 30
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object EditRY1: TEdit
      Left = 91
      Top = 4
      Width = 84
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 10
    end
    object EditRY2: TEdit
      Left = 185
      Top = 3
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 11
    end
    object EditArticle: TEdit
      Left = 91
      Top = 31
      Width = 184
      Height = 28
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 676
      Top = 31
      Width = 101
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object CheckBox1: TCheckBox
      Left = 87
      Top = 96
      Width = 134
      Height = 17
      Caption = 'No OK'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 239
      Top = 96
      Width = 150
      Height = 17
      Caption = 'OK'
      TabOrder = 15
      OnClick = CheckBox2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 634
    Height = 388
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 632
      Height = 231
      Align = alClient
      DataSource = DS_Mast
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Title.Caption = 'Material ID'
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Material Name'
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'CQDH'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'okQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'Diff'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'CSBH'
          Footers = <>
          Title.Caption = 'Supp ID'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'BOM_Supplier'
          Footers = <>
          Title.Alignment = taCenter
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'ZSDH_JG'
          Footers = <>
          Title.Caption = 'JG_Supp ID'
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'JG_Supplier'
          Footers = <>
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 232
      Width = 632
      Height = 155
      Align = alBottom
      DataSource = DS_ChildMat
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cldh1'
          Footers = <>
          Title.Caption = 'Child Mat'
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = 'Material Name'
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'syl'
          Footers = <>
          Title.Caption = 'Ratio'
        end>
    end
  end
  object Panel3: TPanel
    Left = 637
    Top = 137
    Width = 371
    Height = 388
    Align = alRight
    TabOrder = 2
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 369
      Height = 386
      Align = alClient
      DataSource = DS_Detail
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 2
      ParentFont = False
      PopupMenu = PopupMenu2
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'BUYNO'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'okQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'Diff'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'DDRQ'
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'DDZT'
          Footers = <>
          Title.Caption = 'Status'
          Width = 45
        end>
    end
  end
  object MastQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ZLZLS2.*,ZLZLS2.okQty- ZLZLS2.CLSL as Diff'
      'from ('
      
        'select ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQ' +
        'ty,0) as okQty,'
      
        'case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsKCLLS,'#39#39')<>'#39'N'#39') th' +
        'en isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,'
      
        'DDZLTW.DDZT,ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSD' +
        'H_JG,ZSZL_DEV.ZSYWJC as JG_Supplier'
      'from ZLZLS2'
      
        'left join (select JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZL' +
        'SS'
      'left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      'left join DDZl on DDZl.DDBH=JGZLSS.ZLBH'
      'left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH'
      'where JGZLSS.CLBH like '#39'A010009133%'#39
      'and JGZLSS.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '#39'2021/11/06'#39' and '#39'2021/12/05'#39
      'and DDZL.GSBH='#39'VA12'#39
      'group by  JGZLSS.CLBH ) JGZL on JGZL.CLBH=ZLZLS2.CLBH '
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH'
      
        'Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as' +
        ' ZSYWJC'
      
        #9#9'        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSD' +
        'H_JG and ZSZL_DEV.GSBH='#39'VA12'#39') ZSZL_DEV'
      'on ZLZLS2.CSBH=ZSZL_DEV.ZSDH'
      'where ZLZLS2.CLBH like '#39'A010009133%'#39
      'and ZLZLS2.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '#39'2021/11/06'#39' and '#39'2021/12/05'#39
      'and DDZL.GSBH='#39'VA12'#39
      'and ZLZLS2.ZMLB='#39'Y'#39
      
        'group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,ZLZLS2.CSBH,Z' +
        'SZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC,DDZLTW.DDZT,SCZL.IsK' +
        'CLLS,JGZL.okQty'
      ') ZLZLS2'
      'order by ZLZLS2.CLBH')
    Left = 216
    Top = 184
    object MastQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object MastQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MastQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MastQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object MastQryokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object MastQryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object MastQryCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object MastQryBOM_Supplier: TStringField
      FieldName = 'BOM_Supplier'
      FixedChar = True
    end
    object MastQryDiff: TFloatField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
    object MastQryZSDH_JG: TStringField
      FieldName = 'ZSDH_JG'
      FixedChar = True
      Size = 6
    end
    object MastQryJG_Supplier: TStringField
      FieldName = 'JG_Supplier'
      FixedChar = True
    end
  end
  object DS_Mast: TDataSource
    DataSet = MastQry
    Left = 248
    Top = 185
  end
  object tmpQ: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 184
  end
  object DetailQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Mast
    SQL.Strings = (
      'select ZLZLS2.*,ZLZLS2.okQty-ZLZLS2.CLSL as Diff'
      'from ('
      'select ZLZLS2.ZLBH,ZLZLS2.CLBH,isnull(JGZL.okQty,0) as okQty,'
      
        'case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsKCLLS,'#39#39')<>'#39'N'#39') th' +
        'en isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,'
      
        'DDZLTW.DDZT,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL' +
        '.BUYNO'
      'from ZLZLS2'
      
        'left join (select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQ' +
        'ty from JGZLSS'
      'left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      'left join DDZl on DDZl.DDBH=JGZLSS.ZLBH'
      'left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH'
      'where JGZLSS.CLBH like '#39'A010009133%'#39
      'and JGZLSS.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '#39'2021/11/06'#39' and '#39'2021/12/05'#39
      'and DDZL.GSBH='#39'VA12'#39
      
        'group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=ZLZLS2.CLB' +
        'H  and JGZL.ZLBH=zlzls2.ZLBH'
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'where ZLZLS2.CLBH like '#39'A010009133%'#39
      'and ZLZLS2.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '#39'2021/11/06'#39' and '#39'2021/12/05'#39
      'and DDZL.GSBH='#39'VA12'#39
      'and ZLZLS2.ZMLB='#39'Y'#39
      'and zlzls2.CSBH='#39'T006'#39
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,DDZLTW.DDZT,SCZL.IsKCLLS,JGZL.o' +
        'kQty,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BUYNO)' +
        ' ZLZLS2'
      'order by ZLZLS2.ZLBH')
    Left = 920
    Top = 200
    object DetailQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object DetailQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object DetailQryokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object DetailQryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object DetailQryDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object DetailQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object DetailQryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DetailQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DetailQryDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object DetailQryBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object DetailQryDiff: TFloatField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS_Detail: TDataSource
    DataSet = DetailQry
    Left = 952
    Top = 201
  end
  object ChildMatQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Mast
    SQL.Strings = (
      'select CLZHZL.*,CLZl.YWPM,CLZL.ZWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZL on CLZl.CLDH=CLZHZL.CLDH1'
      'where CLZHZL.CLDH=:CLBH')
    Left = 272
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object ChildMatQrycldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object ChildMatQrycldh1: TStringField
      FieldName = 'cldh1'
      FixedChar = True
      Size = 10
    end
    object ChildMatQryccq: TStringField
      FieldName = 'ccq'
      FixedChar = True
      Size = 6
    end
    object ChildMatQryccq1: TStringField
      FieldName = 'ccq1'
      FixedChar = True
      Size = 6
    end
    object ChildMatQrysyl: TFloatField
      FieldName = 'syl'
    end
    object ChildMatQryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object ChildMatQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object ChildMatQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ChildMatQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object ChildMatQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ChildMatQryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object ChildMatQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS_ChildMat: TDataSource
    DataSet = ChildMatQry
    Left = 304
    Top = 401
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 432
    Top = 185
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object JG1: TMenuItem
      Caption = 'Transfer to JG'
      Enabled = False
      OnClick = JG1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 852
    Top = 265
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
