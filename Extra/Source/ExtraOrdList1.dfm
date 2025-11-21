object ExtraOrdList: TExtraOrdList
  Left = 402
  Top = 219
  Width = 1614
  Height = 577
  Caption = 'ExtraOrdList'
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
    Width = 1598
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 76
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
      Left = 233
      Top = 76
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
    object Label5: TLabel
      Left = 237
      Top = 9
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 212
      Top = 43
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 455
      Top = 9
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
    object Label3: TLabel
      Left = 378
      Top = 43
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Child MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 898
      Top = 11
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 318
      Top = 73
      Width = 93
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
      Left = 100
      Top = 73
      Width = 128
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
    object Edit3: TEdit
      Left = 421
      Top = 73
      Width = 85
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 515
      Top = 73
      Width = 85
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 324
      Top = 6
      Width = 125
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 701
      Top = 31
      Width = 188
      Height = 17
      Caption = 'All Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button2: TButton
      Left = 899
      Top = 51
      Width = 80
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 100
      Top = 41
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
    object DTP2: TDateTimePicker
      Left = 264
      Top = 41
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
    object Edit6: TEdit
      Left = 544
      Top = 5
      Width = 130
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object ExtraCK: TCheckBox
      Left = 701
      Top = 4
      Width = 188
      Height = 25
      Caption = 'show "Gia cong"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object RadioButton1: TRadioButton
      Left = 24
      Top = 12
      Width = 68
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object BuyNoEdit: TEdit
      Left = 100
      Top = 6
      Width = 130
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object RB1: TRadioButton
      Left = 38
      Top = 43
      Width = 52
      Height = 17
      Caption = 'ETD:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TabStop = True
    end
    object ChildMatEdit: TEdit
      Left = 465
      Top = 41
      Width = 136
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DDZTCK: TCheckBox
      Left = 700
      Top = 79
      Width = 189
      Height = 17
      Caption = 'Order cancel(CLSL=0)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 16
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1598
    Height = 433
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
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
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 171
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BOM_Supplier'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'JGdate'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'CFMdate1'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'APlanDate'
        Footers = <>
        Title.Caption = 'PlanDate'
      end
      item
        EditButtons = <>
        FieldName = 'Shipdate'
        Footers = <>
        Title.Caption = 'GAC DATE'
      end
      item
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        Title.Caption = 'DepName'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'bz'
        Footers = <>
        Title.Caption = 'Mat Remark'
        Width = 120
      end>
  end
  object CB2: TCheckBox
    Left = 700
    Top = 56
    Width = 197
    Height = 17
    Caption = 'Only Show Child MatNo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 1040
    Top = 40
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZLZLS2.ZLBH,ddzl.article,xxzl.xieming,'#39'Assembly'#39' as DType' +
        ',ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) ' +
        'as okQty,'
      
        'case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsKCLLS,'#39#39')<>'#39'N'#39') th' +
        'en isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,'
      
        'DDZL.Pairs,DDZLTW.DDZT,ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,Z' +
        'SZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC as VN_Supplier,DDZL.BUYNO,JGZL.J' +
        'Gdate,JGZL.CFMdate1,min(SCZLDate.ADate) as APlanDate,DDZL.Shipda' +
        'te,bdepartment.depname'
      'from ZLZLS2'
      
        'left join (select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQ' +
        'ty,JGZL.JGdate,JGZL.CFMdate1 from JGZLSS'
      'left join JGZL on JGZL.JGNO = JGZLSS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      'left join DDZl on DDZl.DDBH=JGZLSS.ZLBH'
      'left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH'
      'where JGZLSS.CLBH like '#39'%'#39
      'and JGZLSS.ZLBH like '#39'Y2210-1500%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and DDZL.BUYNO like '#39'202%'#39' '
      'and DDZL.GSBH='#39'VA12'#39
      
        'group by  JGZLSS.ZLBH,JGZLSS.CLBH,JGZL.JGdate,JGZL.CFMdate1 ) JG' +
        'ZL on JGZL.CLBH=ZLZLS2.CLBH and JGZL.ZLBH=ZLZLS2.ZLBH'
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      'left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH '
      'left join bdepartment on bdepartment.id = SCZLDate.Assemble'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH'
      
        'Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as' +
        ' ZSYWJC'
      
        #9#9'        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSD' +
        'H_TW and ZSZL_DEV.GSBH='#39'VA12'#39') ZSZL_DEV'
      'on ZLZLS2.CSBH=ZSZL_DEV.ZSDH'
      'where ZLZLS2.CLBH like '#39'%'#39
      'and ZLZLS2.ZLBH like '#39'Y2210-1500%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and DDZL.BUYNO like '#39'202%'#39' '
      'and DDZL.GSBH='#39'VA12'#39
      'and ZLZLS2.ZMLB='#39'Y'#39
      
        'group by ZLZLS2.ZLBH,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWB' +
        'H,CLZL.CQDH,JGZL.okQty,ZLZLS2.CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_TW'
      
        ',ZSZL_DEV.ZSYWJC,DDZL.BUYNO,xxzl.xieming,DDZL.Pairs,DDZLTW.DDZT,' +
        'SCZL.IsKCLLS,DDZLTW.DDZT,JGZL.JGdate,JGZL.CFMdate1,DDZL.Shipdate' +
        ',bdepartment.depname'
      'order by ZLZLS2.CLBH,ZLZLS2.ZLBH')
    Left = 1040
    Top = 8
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1BOM_Supplier: TStringField
      FieldName = 'BOM_Supplier'
      FixedChar = True
    end
    object Query1ZSDH_TW: TStringField
      FieldName = 'ZSDH_TW'
      FixedChar = True
      Size = 6
    end
    object Query1VN_Supplier: TStringField
      FieldName = 'VN_Supplier'
      FixedChar = True
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query1JGdate: TDateTimeField
      FieldName = 'JGdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMdate1: TDateTimeField
      FieldName = 'CFMdate1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1APlanDate: TDateTimeField
      FieldName = 'APlanDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Shipdate: TDateTimeField
      FieldName = 'Shipdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object Query1bz: TStringField
      FieldName = 'bz'
      Size = 80
    end
  end
  object tmpQ: TQuery
    DatabaseName = 'DB'
    Left = 1080
    Top = 8
  end
end
