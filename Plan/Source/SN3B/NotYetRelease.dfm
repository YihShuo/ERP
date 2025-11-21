object F_NotYetRelease: TF_NotYetRelease
  Left = 332
  Top = 196
  Width = 1425
  Height = 648
  Caption = 'F_NotYetRelease'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1417
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 55
      Height = 20
      Caption = 'Buy No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Button1: TButton
      Left = 536
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Release Selected To  =>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 328
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Select All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 416
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Unselect All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 8
      Width = 129
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button5: TButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button5Click
    end
    object ComboBox1: TComboBox
      Left = 688
      Top = 9
      Width = 145
      Height = 25
      Style = csDropDownList
      DropDownCount = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'RECOMMEND'
        'A1_LEAN1'
        'A1_LEAN2'
        'A1_LEAN3'
        'A1_LEAN4'
        'A1_LEAN5'
        'A12_PM'
        'A2_LEAN1'
        'A2_LEAN2'
        'A2_LEAN3')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1417
    Height = 580
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 864
      Height = 578
      Align = alLeft
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = #24494#36575#27491#40657#39636
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #24494#36575#27491#40657#39636
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Checked'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'YSBH'
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'XieXing'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'SheHao'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Width = 125
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'XTMH'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Recommend'
          Footers = <>
          Width = 70
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 865
      Top = 1
      Width = 551
      Height = 578
      Align = alClient
      DataSource = DataSource2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = #24494#36575#27491#40657#39636
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #24494#36575#27491#40657#39636
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh2DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footer.ValueType = fvtCount
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'GXLB'
          Footers = <>
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'RDepNO'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'DepMemo'
          Footers = <>
          Width = 100
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CAST(0 AS BIT) AS Checked,'
      
        'SMDD.YSBH, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE, SUM(SMDD.Qty' +
        ') AS Pairs, DDZL.ShipDate,'
      
        'XXZL.DAOMH, XXZL.XTMH, SCXXDV.DepID1 AS Recommend, SCXXDV.DepID2' +
        ', SCXXDV.DepID3 FROM SMDD'
      
        'LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSB' +
        'H'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      
        'LEFT JOIN SCXXDV ON SCXXDV.XieXing = DDZL.XieXing AND SCXXDV.She' +
        'Hao = DDZL.SheHao'
      
        'WHERE SMDD.GSBH = '#39'VA12'#39' AND DDZL.DDLB = '#39'N'#39' AND DDZL.DDZT IN ('#39 +
        'Y'#39', '#39'S'#39')'
      
        'AND DDZL.BUYNO LIKE '#39'201708%'#39' AND ISNULL(DDZL.RYTYPE,'#39#39') <> '#39'SLT' +
        #39' AND RDepNo IS NULL'
      
        'GROUP BY SMDD.YSBH, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE, DDZ' +
        'L.ShipDate, XXZL.DAOMH, XXZL.XTMH, SCXXDV.DepID1, SCXXDV.DepID2,' +
        ' SCXXDV.DepID3'
      'ORDER BY SMDD.YSBH')
    UpdateObject = UpdateSQL1
    Left = 40
    Top = 89
    object Query1Checked: TBooleanField
      FieldName = 'Checked'
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'LTX_ERPT.DDZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'LTX_ERPT.DDZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'LTX_ERPT.DDZL.ARTICLE'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'LTX_ERPT.DDZL.Pairs'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Origin = 'LTX_ERPT.DDZL.ShipDate'
    end
    object Query1Recommend: TStringField
      FieldName = 'Recommend'
      FixedChar = True
      Size = 15
    end
    object Query1DepID2: TStringField
      FieldName = 'DepID2'
      FixedChar = True
      Size = 15
    end
    object Query1DepID3: TStringField
      FieldName = 'DepID3'
      FixedChar = True
      Size = 15
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 8
    Top = 89
  end
  object UpdateSQL1: TUpdateSQL
    Left = 72
    Top = 89
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 89
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from View_LeanGroup')
    Left = 224
    Top = 89
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'SELECT S.DDBH, S.GXLB, S.Qty, S.RDepNO, B.DepName, B.DepMemo, S.' +
        'RPlanDate FROM SMDD S'
      'LEFT JOIN Bdepartment B ON B.ID = S.RDepNO'
      'WHERE S.YSBH = '#39'Y1609-0497'#39
      'AND S.GSBH = '#39'VA12'#39)
    Left = 904
    Top = 89
    object Query4DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'LTX_ERPT.SMDD.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query4GXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'LTX_ERPT.SMDD.GXLB'
      FixedChar = True
      Size = 1
    end
    object Query4Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'LTX_ERPT.SMDD.Qty'
    end
    object Query4RDepNO: TStringField
      FieldName = 'RDepNO'
      Origin = 'LTX_ERPT.SMDD.DepNO'
      FixedChar = True
      Size = 10
    end
    object Query4DepName: TStringField
      FieldName = 'DepName'
      Origin = 'LTX_ERPT.Bdepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query4DepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'LTX_ERPT.Bdepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query4RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 872
    Top = 89
  end
end
