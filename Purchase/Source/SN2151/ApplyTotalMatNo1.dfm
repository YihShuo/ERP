object ApplyTotalMatNo: TApplyTotalMatNo
  Left = 415
  Top = 208
  Width = 956
  Height = 459
  Caption = 'ApplyTotal MatNo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 565
    Top = 49
    Height = 371
    Align = alRight
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 565
    Height = 371
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
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 312
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 342
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 18
      Width = 70
      Height = 20
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
      Left = 192
      Top = 18
      Width = 90
      Height = 20
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
    object Button1: TButton
      Left = 655
      Top = 12
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 113
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
      Left = 74
      Top = 16
      Width = 121
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
      Left = 408
      Top = 16
      Width = 113
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
      Left = 528
      Top = 16
      Width = 121
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
  end
  object DBGridEh2: TDBGridEh
    Left = 568
    Top = 49
    Width = 372
    Height = 371
    Align = alRight
    DataSource = DS2
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 75
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CGBJ.BJNO,CGBJ.VN' +
        'Price,CGBJ.USPrice '
      'from clzl  '
      'Left join ('
      
        '    Select *  from (select CGBJ.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.' +
        'USPrice,CGBJS.VNPrice ,CGBJS.Discount, CGBJS.SuppEx,CGBJ.EXPDATE' +
        ','
      
        #9'     ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.B' +
        'JNO DESC) as  rn'
      #9'from CGBJ'
      #9'Left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9'Left join CLZL on CLZL.CLDH=CGBJS.CLBH'
      #9'where CLZL.CLDH like '#39'Y%'#39' -- CLZL.YN in ('#39'2'#39','#39'3'#39')'
      #9') CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=clzl.cldh'
      'where 1=1 and LEFT(CLDH,1) IN ('#39'X'#39','#39'Y'#39','#39'Z'#39','#39'W'#39')'
      'and CLZL.CLDH like  '#39'Y%'#39
      'and (TYJH is null or TYJH='#39'N'#39')'
      'and (YN='#39'2'#39' or YN='#39'3'#39')'
      'order by CLZL.CLDH')
    Left = 424
    Top = 160
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID' +
        ',KCCLMONTH_Dep.Qty,IsNull(Bdepartment.DepName,'#39'Stock'#39') as DepNam' +
        'e,IsNull(Bdepartment.DepMemo,'#39#24235#23384#39') as DepMemo '
      'from KCCLDAY_BDepartment KCCLMONTH_Dep'
      'left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID'
      'where KCCLMONTH_Dep.Qty>0 and KCCLMONTH_Dep.CLBH=:CLDH  ')
    Left = 600
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 50
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query2DepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 600
    Top = 128
  end
end
