object Traceability_Extra: TTraceability_Extra
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Traceability Extra'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 209
      Top = 15
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 190
      Top = 51
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 51
      Width = 58
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
      Left = 24
      Top = 15
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNoEdit: TEdit
      Left = 255
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 521
      Top = 6
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 255
      Top = 47
      Width = 227
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button3: TButton
      Left = 521
      Top = 44
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object BuyNoEdit: TEdit
      Left = 72
      Top = 47
      Width = 98
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RYEdit: TEdit
      Left = 72
      Top = 11
      Width = 98
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 85
    Width = 1289
    Height = 551
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
    FooterFont.Height = -11
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
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'RY#'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = 'PO# QTY'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MATERIAL CODE'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MATERIAL DESCRIPTION'
        Width = 411
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'UNIT'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'Qty'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'VN_Supplier'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'JGdate'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'CFMdate1'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        Width = 107
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      
        'select ZLZLS2.ZLBH,DDZL.Pairs,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM' +
        ',CLZL.DWBH,case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsKCLLS,'#39 +
        #39')<>'#39'N'#39') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL'
      
        ',ZSZL_DEV.ZSYWJC as VN_Supplier,JGZL.JGNO,JGZL.JGdate,JGZL.CFMda' +
        'te1,KCZLS.KCBH,KCLL.CFMDate,bdepartment.depname'
      'from ZLZLS2 '
      
        'left join (select JGZLSS.JGNO,JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS' +
        '.Qty) as okQty,JGZL.JGdate,JGZL.CFMdate1,JGZL.CKBH from JGZLSS'
      #9#9'  left join JGZL on JGZL.JGNO = JGZLSS.JGNO'
      #9#9'  left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      '          left join DDZl on DDZl.DDBH=JGZLSS.ZLBH'
      '          left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH'
      '          where JGZLSS.CLBH like '#39'%'#39
      '          and JGZLSS.ZLBH like '#39'Y2307-0007%'#39
      '          and CLZL.YWPM like '#39'%%'#39
      '          and CLZL.YWPM like '#39'%%'#39
      '          and CLZL.YWPM like '#39'%%'#39
      '          and DDZL.BUYNO like '#39'2023%'#39' '
      '          and DDZL.GSBH='#39'VA12'#39
      
        '          group by  JGZLSS.JGNO,JGZLSS.ZLBH,JGZLSS.CLBH,JGZL.JGd' +
        'ate,JGZL.CFMdate1,JGZL.CKBH ) JGZL on JGZL.CLBH=ZLZLS2.CLBH and ' +
        'JGZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH,max(KCLL.CFMDate) CFMDat' +
        'e'
      
        #9'       from KCLLS with (nolock) left join KCLL with (nolock)  o' +
        'n KCLL.LLNO=KCLLS.LLNO '
      
        #9#9'   inner join DDZL on DDZL.DDBH=KCLLS.SCBH --and DDZL.GSBH='#39'VA' +
        '12'#39' and DDZL.BUYNO like '#39'2023%'#39' and DDZL.DDBH like '#39'Y2307-0007%'#39 +
        '  '
      #9#9'   where KCLL.GSBH='#39'VA12'#39' '
      #9#9'   and DDZL.BUYNO like '#39'2023%'#39' '
      '           and KCLLS.SCBH like '#39'Y2307-0007%'#39' '
      
        '            group by  KCLLS.SCBH,KCLLS.CLBH) KCLL  on KCLL.SCBH=' +
        'ZLZLS2.ZLBH and KCLL.CLBH=ZLZLS2.CLBH '
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      'left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH'
      'left join bdepartment on bdepartment.id=SCZLDate.Assemble'
      
        'left join KCZLS on KCZLS.CLBH=ZLZLS2.CLBH and KCZLS.CKBH=JGZL.CK' +
        'BH'
      
        'Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as' +
        ' ZSYWJC'
      
        #9#9'        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSD' +
        'H_TW and ZSZL_DEV.GSBH='#39'VA12'#39') ZSZL_DEV'
      'on ZLZLS2.CSBH=ZSZL_DEV.ZSDH'
      'where ZLZLS2.CLBH like '#39'%'#39
      'and ZLZLS2.ZLBH like '#39'Y2307-0007%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and DDZL.BUYNO like '#39'2023%'#39' '
      'and DDZL.GSBH='#39'VA12'#39
      'and ZLZLS2.ZMLB='#39'Y'#39
      'and JGZL.okQty<>0'
      
        'group by ZLZLS2.ZLBH,DDZL.Pairs,ddzl.article,ZLZLS2.CLBH,CLZL.YW' +
        'PM,CLZL.DWBH,DDZLTW.DDZT,SCZL.IsKCLLS'
      
        ',ZSZL_DEV.ZSYWJC,JGZL.JGNO,JGZL.JGdate,JGZL.CFMdate1,KCZLS.KCBH,' +
        'KCLL.CFMDate,bdepartment.depname'
      'order by ZLZLS2.ZLBH'
      ''
      ''
      ''
      ''
      '')
    Left = 530
    Top = 324
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1VN_Supplier: TStringField
      FieldName = 'VN_Supplier'
      FixedChar = True
    end
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query1JGdate: TDateTimeField
      FieldName = 'JGdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CFMdate1: TDateTimeField
      FieldName = 'CFMdate1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
  end
end
