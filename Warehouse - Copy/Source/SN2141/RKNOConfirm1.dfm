object RKNOConfirm: TRKNOConfirm
  Left = 325
  Top = 255
  Width = 1343
  Height = 666
  Caption = 'Entry Warehouse Confirm'
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
    Width = 1335
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 1335
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
        FieldName = 'RKNO'
        Footer.FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#21934#34399'|RKNO'
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
        Width = 187
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
        Title.Caption = #20489#24235#20154#21729'|USERID'
        Width = 58
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#26085#26399'|USERDATE'
        Width = 85
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
        Width = 80
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
        Title.Caption = #20489#24235#20027#31649#23529#26680'|CFMID'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #20489#24235#20027#31649#23529#26680#26085'|CFMID'
        Width = 89
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Caption = #25505#36092#20027#31649#23529#26680'|CFMID'
      end
      item
        Color = clBtnFace
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
    Width = 1335
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
    Width = 1335
    Height = 336
    Align = alClient
    TabOrder = 2
    object dbgrid4: TDBGridEh
      Left = 1
      Top = 1
      Width = 1333
      Height = 334
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
          FieldName = 'USACC'
          Footer.FieldName = 'USACC'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #32317#37329#38989'|USACC'
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
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 244
    Top = 127
  end
  object DS3: TDataSource
    DataSet = ENMas
    Left = 283
    Top = 164
  end
  object DS4: TDataSource
    DataSet = ENDet
    Left = 316
    Top = 164
  end
  object ENMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select  top 100 KCRK.RKNO,KCRK.GSBH,KCRK.ZSBH,KCRK.CKBH,KCRK.ZSN' +
        'O,KCRK.DOCNO,KCRK.MEMO,KCRK.HGLB,KCRK.SFL,KCRK.USERID,KCRK.USERD' +
        'ATE,KCRK.CFMID as PurCFMID,KCRK.CFMDATE as PurCFMDate,'
      
        '        ZSZL.ZSYWJC,KCRK_DK_CFM.CFMID,KCRK_DK_CFM.CFMDATE,KCRK_D' +
        'K_CFM.CFMID1,KCRK_DK_CFM.CFMDATE1,KCRK_DK_CFM.CFMID2,KCRK_DK_CFM' +
        '.CFMDATE2,KCRK.YN  '
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'Left join KCRK_DK_CFM on KCRK_DK_CFM.RKNO=KCRK.RKNO'
      'where  KCRK.RKNO like '#39'202208%'#39)
    Left = 284
    Top = 127
    object ENMasRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object ENMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object ENMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object ENMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object ENMasDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object ENMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object ENMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object ENMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ENMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object ENMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object ENMasMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object ENMasHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object ENMasSFL: TStringField
      FieldName = 'SFL'
      FixedChar = True
      Size = 10
    end
    object ENMasPurCFMID: TStringField
      FieldName = 'PurCFMID'
      FixedChar = True
      Size = 15
    end
    object ENMasPurCFMDate: TDateTimeField
      FieldName = 'PurCFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ENMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object ENMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ENMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object ENMasCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ENMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object ENMasCFMDATE2: TDateTimeField
      FieldName = 'CFMDATE2'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object ENDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'Select KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB, KCRKS.Qty,KC' +
        'RKS.PaQty, KCRKS.VNPrice, KCRKS.USPrice, KCRKS.USACC, KCRKS.VNAC' +
        'C,KCRKS.CWHL,KCRKS.USERID,KCRKS.USERDATE, KCRKS.YN '
      '       ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCRKS.CostID'
      'From KCRKS'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.RKSB ,KCRKS.CGBH,KCRKS.CLBH'
      ''
      ''
      '')
    Left = 316
    Top = 127
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RKNO'
        ParamType = ptUnknown
      end>
    object ENDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object ENDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ENDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object ENDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object ENDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object ENDetPaQty: TFloatField
      FieldName = 'PaQty'
    end
    object ENDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object ENDetUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object ENDetUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '0.00'
    end
    object ENDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '0.00'
    end
    object ENDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object ENDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object ENDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ENDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object ENDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ENDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object ENDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ENDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
  end
end
