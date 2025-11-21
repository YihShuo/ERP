object CGNOConfirm2: TCGNOConfirm2
  Left = 292
  Top = 308
  Width = 1303
  Height = 615
  Caption = 'Purchase Confirm2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 233
    Width = 1295
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 1295
    Height = 233
    Align = alTop
    DataSource = DS3
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footer.FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #25505#36092#21934#34399'|CGNO'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|ZSBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25505#36092#26085#26399'|CGDate'
        Width = 68
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21029'|GSBH'
        Width = 49
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Width = 85
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 58
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'PURPOSE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22320#21312'|Location'
        Width = 71
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'PMark'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21015#21360'|In'
        Width = 36
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Title.Caption = #27161#35468'|YN'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #20027#31649#23529#26680'|CFMID'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #20027#31649#23529#26680#26085'|CFMID'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Caption = #24288#20027#31649#23529#26680'|CFMID'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE1'
        Footers = <>
        Title.Caption = #24288#20027#31649#23529#26680#26085'|CFMID'
        Width = 115
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 236
    Width = 1295
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 25
      Width = 35
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 165
      Top = 25
      Width = 20
      Height = 16
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 320
      Top = 24
      Width = 47
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 644
      Top = 16
      Width = 80
      Height = 33
      Caption = 'Search '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 723
      Top = 16
      Width = 78
      Height = 33
      Caption = 'Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 38
      Top = 22
      Width = 120
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 194
      Top = 22
      Width = 120
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 379
      Top = 19
      Width = 132
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button4: TButton
      Left = 892
      Top = 16
      Width = 74
      Height = 33
      Caption = 'Reset'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button4Click
    end
    object CheckBox1: TCheckBox
      Left = 523
      Top = 26
      Width = 104
      Height = 17
      Caption = 'Show Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button5: TButton
      Left = 800
      Top = 16
      Width = 84
      Height = 33
      Caption = 'Confirm All'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 299
    Width = 1295
    Height = 285
    Align = alClient
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 1025
      Top = 1
      Height = 283
    end
    object dbgrid4: TDBGridEh
      Left = 1
      Top = 1
      Width = 1024
      Height = 283
      Align = alLeft
      DataSource = DS4
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#32232#34399'|CLBH'
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#21517#31281'|YWPM'
          Width = 275
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21934#20301'|DWBH'
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'XqQty'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25505#36092'|XqQty'
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25976#37327'|Qty'
          Width = 61
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'QUSPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #22577#20729'|QUSPrice'
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'QVNPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #22577#20729'|QVNPrice'
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20184#27454'|USPrice'
          Width = 59
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20184#27454'|VNPrice'
          Width = 68
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'ACCUS'
          Footer.FieldName = 'ACCUS'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #32317#37329#38989'|ACCUS'
        end
        item
          Color = clBtnFace
          EditButtons = <>
          FieldName = 'ACCVN'
          Footer.FieldName = 'ACCVN'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #32317#37329#38989'|ACCVN'
        end
        item
          Color = 11927551
          EditButtons = <>
          FieldName = 'YQDate'
          Footers = <>
          Title.Caption = #20132#26399'|YQDate'
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'Memo'
          Footers = <>
          Title.Caption = #20633#35387'|Memo'
          Width = 120
        end
        item
          Color = 11927551
          EditButtons = <>
          FieldName = 'CFMDate'
          Footers = <>
          Title.Caption = #22238#35206#20132#26399'|CFMDate'
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773'|USERID'
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'USERDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773#26085#26399'|USERDate'
          Width = 76
        end>
    end
    object DBGrid1: TDBGridEh
      Left = 1028
      Top = 1
      Width = 266
      Height = 283
      Align = alClient
      DataSource = DS5
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
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
          ReadOnly = True
          Title.Caption = #35330#21934#37002#34399'|ZLBH'
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #21046#20196#37327'|CLSL'
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #25505#36092#25976'|Qty'
          Width = 69
        end>
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 239
    Top = 125
  end
  object CGMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZL.* ,ZSZL.ZSYWJC,CGZL_DK_CFM.CFMID,CGZL_DK_CFM.CFMDATE' +
        ',CGZL_DK_CFM.CFMID1,CGZL_DK_CFM.CFMDATE1'
      'from CGZL'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH=' +
        #39'VA12'#39
      'Left join CGZL_DK_CFM on  CGZL.CGNO=CGZL_DK_CFM.CGNO'
      'where CGZL.CGNO like '#39'%'#39
      '      and ZSZL.ZSYWJC like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,CGZL.USERDATE,11' +
        '1))  between '#39'2022/08/27'#39' and  '#39'2022/08/30'#39
      '      and CGZL.CGLX='#39'1'#39
      '      and CGZL.GSBH='#39'VA12'#39
      'order by CGZL.CGNO DESC')
    Left = 283
    Top = 124
    object CGMasCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object CGMasCGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGMasCGLX: TStringField
      FieldName = 'CGLX'
      FixedChar = True
      Size = 1
    end
    object CGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CGMasPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object CGMasPMark: TIntegerField
      FieldName = 'PMark'
    end
    object CGMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object CGMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object CGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object CGMasCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
    end
  end
  object DS3: TDataSource
    DataSet = CGMas
    Left = 283
    Top = 164
  end
  object DS4: TDataSource
    DataSet = CGDet
    Left = 316
    Top = 164
  end
  object CGDet: TQuery
    OnCalcFields = CGDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select CGZLS.*,CLZL.YWPM,CLZL.DWBH,CLZL.ZWPM '
      'from CGZLS'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'where CGZLS.CGNO=:CGNO'
      'order by CGZLS.CLBH ')
    Left = 316
    Top = 124
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object g: TCurrencyField
      FieldName = 'XqQty'
      DisplayFormat = '#,##0.0'
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object CGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.00000'
    end
    object CGDetACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      DisplayFormat = '#,##0.00000'
      Calculated = True
    end
    object CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object CGDetACCVN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      Calculated = True
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGDetQUSPrice: TFloatField
      FieldName = 'QUSPrice'
      DisplayFormat = '#,##0.00000'
    end
    object CGDetQVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
    end
  end
  object CGS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select CGZLSS.*,DDZL.Article,XXZl.XieMing,YWPM'
      'from CGZLSS '
      'left join DDZL on CGZLSS.ZLBH=DDZL.DDBH '
      
        'left join XXZl on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao'
      'left join clzl on CGZLSS.CLBH=CLZL.CLDH'
      'where CGZLSS.CGNO=:CGNO and CGZLSS.CLBH=:CLBH'
      'order by CGZLSS.ZLBH,CGZLSS.XXCC')
    Left = 348
    Top = 124
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CGSCGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.CGZLSS.CGNO'
      FixedChar = True
      Size = 11
    end
    object CGSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object CGSZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.CGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object CGSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object CGSXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object CGSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.CGZLSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object CGSStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object CGSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CGZLSS.Qty'
      DisplayFormat = '#,##0.0'
    end
    object CGSCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.CGZLSS.CLSL'
      DisplayFormat = '#,##0.0'
    end
    object CGSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGZLSS.USERDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZLSS.USERID'
      FixedChar = True
      Size = 15
    end
    object CGSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZLSS.YN'
      FixedChar = True
      Size = 1
    end
    object CGSYQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLSS.YQDate'
    end
    object CGSCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGZLSS.CFMDate'
    end
    object CGSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DS5: TDataSource
    DataSet = CGS
    Left = 348
    Top = 164
  end
end
