object Stock_In_Report: TStock_In_Report
  Left = 360
  Top = 303
  Width = 1305
  Height = 675
  Caption = 'Stock In Report'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 27
      Top = 8
      Width = 41
      Height = 16
      Caption = 'List No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 307
      Top = 40
      Width = 37
      Height = 16
      Caption = 'Status'
    end
    object Label1: TLabel
      Left = 195
      Top = 8
      Width = 48
      Height = 16
      Caption = 'Building'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 334
      Top = 8
      Width = 42
      Height = 16
      Caption = 'Dep ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 490
      Top = 8
      Width = 66
      Height = 16
      Caption = 'Dep Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 40
      Width = 61
      Height = 16
      Caption = 'User Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 169
      Top = 44
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 698
      Top = 8
      Width = 39
      Height = 16
      Caption = 'DDBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GB1: TGroupBox
      Left = 351
      Top = 29
      Width = 420
      Height = 32
      TabOrder = 3
      object CB1: TCheckBox
        Left = 8
        Top = 11
        Width = 105
        Height = 17
        Caption = 'Not Submitted'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CB2: TCheckBox
        Left = 128
        Top = 11
        Width = 105
        Height = 17
        Caption = 'Under Review'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object CB3: TCheckBox
        Left = 248
        Top = 11
        Width = 65
        Height = 17
        Caption = 'Stock-In'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 54528
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 2
      end
      object CB4: TCheckBox
        Left = 333
        Top = 11
        Width = 84
        Height = 17
        Caption = 'Cancelled'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 3
      end
    end
    object Button1: TButton
      Left = 872
      Top = 21
      Width = 79
      Height = 37
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 957
      Top = 22
      Width = 77
      Height = 36
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object ED_RKNO: TEdit
      Left = 72
      Top = 4
      Width = 106
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CB_Building: TComboBox
      Left = 247
      Top = 4
      Width = 67
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object ED_DepID: TEdit
      Left = 380
      Top = 4
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ED_DepName: TEdit
      Left = 560
      Top = 4
      Width = 118
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 73
      Top = 36
      Width = 94
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 183
      Top = 36
      Width = 97
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 743
      Top = 4
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 63
    Width = 1289
    Height = 573
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
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'RKNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#21934#34399'|List No'
        Width = 120
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Building'
        Footers = <>
        Title.Caption = #26847#21029'|Building'
        Width = 55
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #29983#29986#21934#20301#32232#34399'|Dep ID'
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29983#29986#21934#20301#21517#31281'|Dep Name'
        Width = 100
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29983#29986#21934#20301#21517#31281'|Dep Memo'
        Width = 100
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'B'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'B'#21697#25976#37327'|Grade B'
        Width = 60
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'C'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'C'#21697#25976#37327'|Grade C'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = #22411#39636'|SKU'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #23458#25142'PO|PO'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Title.Caption = #22823#24213'|Outsole'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = #23395#24230'|Season'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394'|Color'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #38617#25976'|Qty'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        Title.Caption = #23610#30908'|Size'
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|Shoe Name'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'Defect'
        Footers = <>
        Title.Caption = #19981#33391'|Defect'
        Width = 139
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29376#24907'|Status'
        Width = 88
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CheckDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #27298#39511#26085#26399'|Check Date'
        Width = 92
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|User ID'
        Width = 80
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205#26085#26399'|User Date'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30906#35469#20837#24235#26085'|CFM Date'
        Width = 100
      end>
  end
  object QKCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT RKNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Bui' +
        'lding, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, S' +
        'tatus, GSBH,DDBH,Grade,Size,Qty,DefectID,Defect,CheckDate,KHPO,A' +
        'RTICLE,XieMing,YSSM,JiJie,DDMH FROM ('
      
        'SELECT KCRK_BC.RKNO, KCRK_BC.GSBH, KCRK_BC.Building, KCRK_BC.Dep' +
        'ID, BDepartment.DepName, BDepartment.DepMemo, KCRK_BC.CFMDate, K' +
        'CRK_BC.UserID, KCRK_BC.UserDate, KCRK_BC.YN,'
      'CASE WHEN KCRKS_BC.Grade = '#39'B'#39' THEN Qty END AS B,'
      'CASE WHEN KCRKS_BC.Grade = '#39'C'#39' THEN Qty END AS C,'
      'CASE WHEN KCRK_BC.flowflag IS NULL THEN '#39'Not Submitted'#39' ELSE'
      
        'CASE WHEN KCRK_BC.flowflag NOT IN ('#39#39', '#39'X'#39', '#39'Z'#39') THEN '#39'Under Rev' +
        'iew'#39' ELSE'
      'CASE WHEN KCRK_BC.flowflag = '#39'Z'#39' THEN '#39'Stock-In'#39' ELSE'
      
        'CASE WHEN KCRK_BC.flowflag = '#39'X'#39' THEN '#39'Cancelled'#39' END END END EN' +
        'D AS Status,KCRKS_BC.DDBH,KCRKS_BC.Grade,KCRKS_BC.Size,KCRKS_BC.' +
        'Qty,KCRKS_BC.DefectID,KCRKS_BC.CheckDate,DDZL.KHPO, DDZL.ARTICLE' +
        ','
      
        'XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, (QCBLYY.YYBH+'#39' -' +
        ' ['#39' +QCBLYY.ZWSM+ '#39']'#39' ) as Defect'
      'FROM KCRK_BC'
      'LEFT JOIN KCRKS_BC ON KCRKS_BC.RKNO = KCRK_BC.RKNO'
      'LEFT JOIN BDepartment ON BDepartment.ID = KCRK_BC.DepID'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      
        'LEFT JOIN QCBLYY ON QCBLYY.YYBH = KCRKS_BC.DefectID AND QCBLYY.G' +
        'SBH ='#39'VA12'#39' AND QCBLYY.DFL = '#39'AR'#39' AND QCBLYY.YN = '#39'2'#39
      'WHERE KCRK_BC.GSBH = '#39'VA12'#39
      
        'AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN '#39'2023/05/20'#39 +
        ' AND '#39'2023/05/23'#39
      ') AS KCRK_BC'
      'WHERE 1 = 1'
      
        'AND (Status = '#39'Not Submitted'#39' OR Status = '#39'Under Review'#39' OR Stat' +
        'us = '#39'Stock-In'#39' OR Status = '#39'Cancelled'#39')'
      
        'GROUP BY RKNO, Building, DepID, DepName, DepMemo, CFMDate, UserI' +
        'D, UserDate, YN, Status, GSBH,DDBH,Grade,Size,Qty,DefectID,Defec' +
        't,CheckDate,KHPO,ARTICLE,XieMing,YSSM,JiJie,DDMH '
      'ORDER BY RKNO DESC'
      '')
    Left = 272
    Top = 304
    object QKCRKRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 15
    end
    object QKCRKB: TFloatField
      FieldName = 'B'
    end
    object QKCRKC: TFloatField
      FieldName = 'C'
    end
    object QKCRKBuilding: TStringField
      FieldName = 'Building'
      FixedChar = True
      Size = 5
    end
    object QKCRKDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object QKCRKDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object QKCRKDepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object QKCRKCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QKCRKUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object QKCRKUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCRKYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKCRKStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 13
    end
    object QKCRKGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QKCRKDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QKCRKGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QKCRKSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QKCRKQty: TFloatField
      FieldName = 'Qty'
    end
    object QKCRKDefectID: TStringField
      FieldName = 'DefectID'
      FixedChar = True
      Size = 4
    end
    object QKCRKDefect: TStringField
      FieldName = 'Defect'
      FixedChar = True
      Size = 209
    end
    object QKCRKCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object QKCRKKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object QKCRKARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object QKCRKXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object QKCRKYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object QKCRKJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object QKCRKDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = QKCRK
    Left = 272
    Top = 272
  end
end
