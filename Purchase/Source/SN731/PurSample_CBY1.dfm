object PurSample_CBY: TPurSample_CBY
  Left = 327
  Top = 117
  Width = 1290
  Height = 857
  Caption = 'PurSample_CBY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1274
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 48
      Width = 35
      Height = 13
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 212
      Top = 48
      Width = 49
      Height = 13
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 171
      Top = 19
      Width = 31
      Height = 13
      Caption = 'Stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 19
      Width = 39
      Height = 13
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 315
      Top = 19
      Width = 36
      Height = 13
      Caption = 'SupNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 435
      Top = 19
      Width = 50
      Height = 13
      Caption = 'SupName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 658
      Top = 41
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 266
      Top = 45
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object MatNoEdit: TEdit
      Left = 60
      Top = 45
      Width = 128
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 360
      Top = 45
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 447
      Top = 45
      Width = 78
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CKBox: TCheckBox
      Left = 749
      Top = 45
      Width = 97
      Height = 17
      Caption = 'mine'
      TabOrder = 5
    end
    object NotBuyCK: TCheckBox
      Left = 749
      Top = 21
      Width = 97
      Height = 17
      Caption = 'Not buy'
      TabOrder = 6
    end
    object StageEdit: TEdit
      Left = 206
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object SeasonEdit: TEdit
      Left = 60
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button2: TButton
      Left = 658
      Top = 7
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 9
      OnClick = Button2Click
    end
    object SupnoEdit: TEdit
      Left = 356
      Top = 16
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object SupnameEdit: TEdit
      Left = 491
      Top = 16
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1274
    Height = 577
    Align = alClient
    DataSource = MatDS
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
    PopupMenu = PopupMenu
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Mat. No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Mat. Name'
        Width = 325
      end
      item
        EditButtons = <>
        FieldName = 'CLZMLB'
        Footers = <>
        Title.Caption = 'ZMLB'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'PO Qty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = 'Sup ID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'UserName'
        Footers = <>
        Title.Caption = 'Purchaser'
        Width = 250
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 658
    Width = 1274
    Height = 160
    Align = alBottom
    DataSource = DetDS
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
    PopupMenu = PopupMenu
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.Caption = 'Sub Mat. No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Mat. Name'
        Width = 370
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'syl'
        Footers = <>
        Title.Caption = 'Rate'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'PO Qty'
        Width = 85
      end>
  end
  object YPZLSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ypzls.YPDH,ypzl.Article ,ypzls.CLBH ,clzl.ywpm ,CLZL.DWBH' +
        ' ,Sum(ypzls.CLSL) as CLSL,CGZL.okQty ,zszl.zsywjc ,ypzls.CSBH, B' +
        'Users.UserName,CLZL.CLZMLB,shoetest.testno  FROM ypzls ypzls'
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH'
      'LEFT JOIN shoetest on shoetest.YPDH=YPZLS.YPDH'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh '
      'LEFT JOIN BUsers on ZSZL.SamplePurchaser=BUsers.UserID '
      
        'left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH,CGZLSS.ZL' +
        'BH  '
      '           from CGZLSS '
      '           left join CLZL on CLZL.CLDH=CGZLSS.CLBH '
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.C' +
        'LBH=CGZLSS.CLBH  '
      '           left join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CLZL.YWPM like '#39'%%'#39
      '                 and CLZL.YWPM like '#39'%%'#39
      '                 and CLZL.YWPM like '#39'%%'#39
      '                 and CGZLSS.XXCC='#39'N'#39
      '                 and CGZL.GSBH='#39'CDC'#39
      
        '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL on CGZL.CLBH=' +
        'YPZLS.CLBH AND CGZL.ZLBH=YPZL.ARTICLE  '
      'WHERE 1=1 '
      'and YPZLS.YPDH =  '#39'LAIV141200003'#39' '
      '--and YPZL.Article='#39#39
      
        'Group by ypzls.YPDH,ypzl.Article ,ypzls.CLBH ,clzl.ywpm ,CLZL.DW' +
        'BH ,CGZL.okQty ,zszl.zsywjc ,ypzls.CSBH, BUsers.UserName,CLZL.CL' +
        'ZMLB,shoetest.testno')
    Left = 16
    Top = 168
    object YPZLSQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLSQryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object YPZLSQryokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '0.00'
    end
    object YPZLSQryzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object YPZLSQryCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object YPZLSQryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
    object YPZLSQryCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object YPZLSQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object YPZLSQryCTS: TBooleanField
      FieldName = 'CTS'
    end
  end
  object MatDS: TDataSource
    DataSet = YPZLSQry
    Left = 16
    Top = 136
  end
  object ClzhzlQry: TQuery
    DatabaseName = 'DB'
    DataSource = MatDS
    SQL.Strings = (
      
        'select clzhzl.CLDH1 as CLDH,clzl.YWPM,clzl.DWBH,clzhzl.syl,IsNul' +
        'l(CGZL.okQty,0) as okQty from clzhzl  '
      'LEFT JOIN clzl clzl ON clzhzl.CLDH1 = clzl.cldh '
      
        'left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH,CGZLSS.ZL' +
        'BH  '
      '           from CGZLSS '
      '           left join CLZL on CLZL.CLDH=CGZLSS.CLBH '
      
        '           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.C' +
        'LBH=CGZLSS.CLBH '
      '           left join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      '           where  CGZLSS.XXCC='#39'ZZZZZZ'#39' '
      '                  and CGZL.GSBH='#39'CDC'#39' '
      
        '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL on CGZL.CLBH=' +
        'clzhzl.CLDH1 AND CGZL.ZLBH=:ARTICLE '
      'where clzhzl.CLDH=:CLBH and '#39'Y'#39'=:CLZMLB'
      '')
    Left = 16
    Top = 744
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLZMLB'
        ParamType = ptUnknown
        Size = 2
      end>
    object ClzhzlQryCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object ClzhzlQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ClzhzlQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ClzhzlQrysyl: TFloatField
      FieldName = 'syl'
      DisplayFormat = '#0'
    end
    object ClzhzlQryokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '0.00'
    end
    object ClzhzlQryCTS: TBooleanField
      FieldName = 'CTS'
    end
  end
  object DetDS: TDataSource
    DataSet = ClzhzlQry
    Left = 16
    Top = 712
  end
  object PopupMenu: TPopupMenu
    Left = 16
    Top = 200
    object PurchaseDetail1: TMenuItem
      Caption = 'Purchase Detail'
      OnClick = PurchaseDetail1Click
    end
  end
end
