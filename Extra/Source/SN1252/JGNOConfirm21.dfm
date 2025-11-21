object JGNOConfirm2: TJGNOConfirm2
  Left = 234
  Top = 211
  Width = 1319
  Height = 676
  Caption = 'JG Purchase Mange Confirm'
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
    Width = 1311
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 1311
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
        FieldName = 'JGNO'
        Footer.FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#21934#34399'|JGNO'
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
        Width = 169
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
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205#20154#21729'|USERID'
        Width = 58
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205#26085#26399'|USERDATE'
        Width = 74
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'WarCFMID'
        Footers = <>
        Title.Caption = #20489#24235#20154#21729'|WarCFMID'
        Width = 58
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'WarCFMDate'
        Footers = <>
        Title.Caption = #20489#24235#30906#35469#26085'|WarCFMDate'
        Width = 77
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'PurCFMID'
        Footers = <>
        Title.Caption = #25505#36092#30906#35469'|PurCFMID'
        Width = 60
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'PurCFMDate'
        Footers = <>
        Title.Caption = #25505#36092#30906#35469#26085'|PurCFMDate'
        Width = 76
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
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #20489#24235#20027#31649#23529#26680'|CFMID'
        Width = 88
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #20489#24235#20027#31649#23529#26680#26085'|CFMID'
        Width = 89
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Caption = #25505#36092#20027#31649#23529#26680'|CFMID'
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CFMDATE1'
        Footers = <>
        Title.Caption = #25505#36092#20027#31649#23529#26680#26085#26399'|CFMID'
        Width = 115
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        Title.Caption = #24288#20027#31649'|CFMID'
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMDATE2'
        Footers = <>
        Title.Caption = #24288#20027#31649#23529#26680#26085'||CFMDATE'
        Width = 94
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 236
    Width = 1311
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
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 652
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
      Left = 731
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
      Left = 808
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
    Width = 1311
    Height = 346
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1309
      Height = 344
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 1012
        Top = 1
        Height = 342
        Align = alRight
      end
      object dbgrid4: TDBGridEh
        Left = 1
        Top = 1
        Width = 1011
        Height = 342
        Align = alClient
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
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #26448#26009#20013#25991'|ZWPM'
            Width = 347
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
            FieldName = 'VNACC'
            Footer.FieldName = 'VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #32317#37329#38989'|VNACC'
            Width = 114
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
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773#26085#26399'|USERDate'
            Width = 76
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 1015
        Top = 1
        Width = 293
        Height = 342
        Align = alRight
        DataSource = DS5
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
            Title.Caption = #35330#21934#32232#34399'|ZLBH'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 80
          end>
      end
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 252
    Top = 127
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 283
    Top = 164
  end
  object DS4: TDataSource
    DataSet = JGDet
    Left = 316
    Top = 164
  end
  object JGMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select  top 100 JGZL.JGNO,JGZL.GSBH,JGZL.ZSBH,JGZL.CKBH,JGZL.USE' +
        'RID,JGZL.USERDATE,JGZL.CFMID1 as WarCFMID,JGZL.CFMDATE1 as WarCF' +
        'MDate,JGZL.CFMID2 as PurCFMID,JGZL.CFMDATE2 as PurCFMDate,'
      
        '        ZSZL.ZSYWJC,JGZL_DK_CFM.CFMID,JGZL_DK_CFM.CFMDATE,JGZL_D' +
        'K_CFM.CFMID1,JGZL_DK_CFM.CFMDATE1,JGZL_DK_CFM.CFMID2,JGZL_DK_CFM' +
        '.CFMDATE2,JGZL.YN  '
      'from JGZL'
      'left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH'
      'Left join JGZL_DK_CFM on JGZL_DK_CFM.JGNO=JGZL.JGNO'
      'where  JGZL.JGNO like '#39'202208%'#39)
    Left = 284
    Top = 127
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object JGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object JGMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasWarCFMID: TStringField
      FieldName = 'WarCFMID'
      FixedChar = True
      Size = 15
    end
    object JGMasWarCFMDate: TDateTimeField
      FieldName = 'WarCFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasPurCFMID: TStringField
      FieldName = 'PurCFMID'
      FixedChar = True
      Size = 15
    end
    object JGMasPurCFMDate: TDateTimeField
      FieldName = 'PurCFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object JGMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDATE2: TDateTimeField
      FieldName = 'CFMDATE2'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object JGDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'Select JGZLS.JGNO, JGZLS.CLBH, JGZLS.Qty, JGZLS.USPrice, JGZLS.V' +
        'NPrice, JGZLS.CWHL, JGZLS.VNACC,JGZLS.USERID,JGZLS.USERDATE,'
      '       CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH'
      'from JGZLS'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'where JGZLS.JGNO=:JGNO and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'order by JGZLS.CLBH'
      ''
      '')
    Left = 316
    Top = 127
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JGNO'
        ParamType = ptUnknown
      end>
    object JGDetJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object JGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '0.00'
    end
    object JGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '0'
    end
    object JGDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object JGDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object JGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object JGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object JGDetS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select JGZLSS.JGNO,JGZLSS.CLBH,JGZLSS.ZLBH,JGZLSS.Qty'
      'from JGZLSS'
      'left join DDZL on DDZL.DDBH = JGZLSS.ZLBH'
      'where JGNO=:JGNO'
      'and CLBH=:CLBH'
      'order by  JGZLSS.ZLBH'
      '')
    Left = 348
    Top = 127
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'JGNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object JGDetSJGNO: TStringField
      FieldName = 'JGNO'
      Origin = 'DB.JGZLSS.JGNO'
      FixedChar = True
      Size = 11
    end
    object JGDetSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.JGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetSZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.JGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.JGZLSS.Qty'
      DisplayFormat = '0.00'
    end
  end
  object DS5: TDataSource
    DataSet = JGDetS
    Left = 348
    Top = 164
  end
end
