object PurSample_SP: TPurSample_SP
  Left = 292
  Top = 240
  Width = 1623
  Height = 505
  Caption = 'PurSample_SP'
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
    Width = 1615
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
      Left = 35
      Top = 47
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
      Top = 50
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
    object Label3: TLabel
      Left = 131
      Top = 19
      Width = 73
      Height = 16
      Caption = 'Sample NO:'
    end
    object Label4: TLabel
      Left = 345
      Top = 21
      Width = 32
      Height = 13
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 556
      Top = 43
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
      Left = 657
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
      Left = 939
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
      Left = 811
      Top = 51
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
    object Label9: TLabel
      Left = 14
      Top = 19
      Width = 38
      Height = 13
      Caption = 'TestNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 1050
      Top = 41
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 278
      Top = 45
      Width = 89
      Height = 24
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
      Left = 81
      Top = 45
      Width = 128
      Height = 24
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
      Left = 372
      Top = 45
      Width = 81
      Height = 24
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
      Left = 459
      Top = 45
      Width = 78
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object SampleNoEdit: TEdit
      Left = 208
      Top = 15
      Width = 129
      Height = 28
      Color = clYellow
      TabOrder = 5
    end
    object ArticleEdit: TEdit
      Left = 390
      Top = 17
      Width = 267
      Height = 28
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 6
    end
    object CKBox: TCheckBox
      Left = 1125
      Top = 40
      Width = 97
      Height = 17
      Caption = 'mine'
      TabOrder = 7
    end
    object NotBuyCK: TCheckBox
      Left = 1125
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Not buy'
      TabOrder = 8
    end
    object StageEdit: TEdit
      Left = 598
      Top = 40
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object SeasonEdit: TEdit
      Left = 710
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Button2: TButton
      Left = 1050
      Top = 7
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 11
      OnClick = Button2Click
    end
    object PartCB: TComboBox
      Left = 802
      Top = 16
      Width = 117
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 12
      Items.Strings = (
        ''
        'TOE CAP-A007'
        'HEEL LOGO-C013'
        'FOXING-D015'
        'TOE BUMPER-D017')
    end
    object DevTypeCB: TComboBox
      Left = 691
      Top = 42
      Width = 117
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 13
      Items.Strings = (
        ''
        'INLINE'
        'SMU')
    end
    object SupnoEdit: TEdit
      Left = 985
      Top = 17
      Width = 56
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object SupnameEdit: TEdit
      Left = 873
      Top = 49
      Width = 112
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object TestnoEdit: TEdit
      Left = 62
      Top = 17
      Width = 64
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 345
    Width = 1615
    Height = 129
    Align = alClient
    DataSource = DetDS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLDH'
        Title.Caption = 'CLBH'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'syl'
        Title.Caption = 'Rate'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Title.Caption = 'PO Qty'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 81
    Width = 1615
    Height = 264
    Align = alTop
    DataSource = MatDS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    PopupMenu = PopupMenu
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Article'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'VNI-Times'
        Font.Style = []
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLZMLB'
        Title.Caption = 'Treatment'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Title.Caption = 'PO Qty'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsywjc'
        Title.Caption = 'Supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSBH'
        Title.Caption = 'SupID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Title.Caption = 'Purchaser'
        Visible = True
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
    Left = 424
    Top = 160
    object YPZLSQryYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLSQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
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
    object YPZLSQryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.00'
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
  end
  object MatDS: TDataSource
    DataSet = YPZLSQry
    Left = 424
    Top = 128
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
    Left = 456
    Top = 160
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
  end
  object DetDS: TDataSource
    DataSet = ClzhzlQry
    Left = 456
    Top = 128
  end
  object PopupMenu: TPopupMenu
    Left = 424
    Top = 192
    object PurchaseDetail1: TMenuItem
      Caption = 'Purchase Detail'
      OnClick = PurchaseDetail1Click
    end
  end
end
