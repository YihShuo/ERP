object CDScan_Det: TCDScan_Det
  Left = 390
  Top = 415
  Width = 1127
  Height = 542
  Caption = 'CDScan_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 73
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 377
      Height = 65
      Caption = 'Date'
      TabOrder = 0
      object Label1: TLabel
        Left = 222
        Top = 24
        Width = 25
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = #65374
        Layout = tlCenter
      end
      object RB2: TRadioButton
        Left = 8
        Top = 39
        Width = 97
        Height = 17
        Caption = 'PlanDate'
        TabOrder = 0
      end
      object RB1: TRadioButton
        Left = 8
        Top = 19
        Width = 113
        Height = 17
        Caption = 'USERDATE'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object DTP1: TDateTimePicker
        Left = 110
        Top = 24
        Width = 113
        Height = 24
        Date = 43479.628053738420000000
        Format = 'yyyy/MM/dd'
        Time = 43479.628053738420000000
        TabOrder = 2
      end
      object DTP2: TDateTimePicker
        Left = 246
        Top = 24
        Width = 113
        Height = 24
        Date = 43479.628053738420000000
        Format = 'yyyy/MM/dd'
        Time = 43479.628053738420000000
        TabOrder = 3
      end
    end
    object BQuery1: TBitBtn
      Left = 632
      Top = 12
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BQuery1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupBox2: TGroupBox
      Left = 392
      Top = 0
      Width = 233
      Height = 65
      Caption = 'Lean'
      TabOrder = 2
      object Label3: TLabel
        Left = 43
        Top = 17
        Width = 45
        Height = 16
        Caption = 'Factory'
      end
      object Label4: TLabel
        Left = 23
        Top = 40
        Width = 63
        Height = 16
        Caption = 'DepName'
      end
      object ComboBox1: TComboBox
        Left = 93
        Top = 12
        Width = 129
        Height = 25
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 17
        ParentFont = False
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ComboBox2: TComboBox
        Left = 93
        Top = 38
        Width = 129
        Height = 25
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 17
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 685
      Top = 3
      Width = 185
      Height = 65
      TabOrder = 3
      object RadioB3: TRadioButton
        Left = 12
        Top = 44
        Width = 145
        Height = 17
        Caption = 'okCutNum>=CutNum'
        TabOrder = 0
      end
      object RadioB2: TRadioButton
        Left = 12
        Top = 28
        Width = 145
        Height = 17
        Caption = 'okCutNum<CutNum'
        TabOrder = 1
      end
      object RadioB1: TRadioButton
        Left = 12
        Top = 12
        Width = 145
        Height = 17
        Caption = 'all'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 73
    Width = 1119
    Height = 438
    Align = alClient
    Color = 14548991
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 154
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 203
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CutNum'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'okCutNum'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ScanUser'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 58
      end
      item
        DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
        EditButtons = <>
        FieldName = 'ScanDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 632
    Top = 128
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 600
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWP' +
        'M,BDepartment.DepName,CutDispatch.PlanDate,CutDispatch.Memo,CutD' +
        'ispatch.DepID FROM CutDispatchS'
      'Left JOIN CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO'
      'Left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'Left JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH'
      'Left JOIN BDepartment on BDepartment.ID=CutDispatch.DepID'
      'WHERE 1=1 '
      
        ' and CONVERT(VARCHAR, CutDispatch.USERDATE, 111) BETWEEN '#39'2019/0' +
        '1/01'#39' AND '#39'2019/03/14'#39
      ' ORDER BY CutDispatchS.BWBH')
    Left = 632
    Top = 160
    object Query1DLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      Size = 0
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
    end
    object Query1CutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object Query1okCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Size = 0
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1ScanUser: TStringField
      FieldName = 'ScanUser'
    end
    object Query1ScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
  end
end
