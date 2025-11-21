object ScanInBox_RY: TScanInBox_RY
  Left = 453
  Top = 412
  Width = 914
  Height = 384
  Caption = 'ScanInBox_RY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 81
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 305
      Top = 15
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 310
      Top = 43
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GX:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 27
      Top = 15
      Width = 86
      Height = 16
      AutoSize = False
      Caption = 'Shipdate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 184
      Top = 14
      Width = 47
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 27
      Top = 44
      Width = 86
      Height = 16
      AutoSize = False
      Caption = 'PlanDate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 205
      Top = 45
      Width = 8
      Height = 16
      Caption = '~'
    end
    object Label2: TLabel
      Left = 428
      Top = 43
      Width = 98
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label5: TLabel
      Left = 540
      Top = 15
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SIZE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 369
      Top = 11
      Width = 168
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 684
      Top = 38
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CBX3: TComboBox
      Left = 368
      Top = 40
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object CBX1: TComboBox
      Left = 114
      Top = 10
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Text = '2006'
      Items.Strings = (
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 234
      Top = 11
      Width = 65
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object DTP1: TDateTimePicker
      Left = 112
      Top = 41
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 219
      Top = 40
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 6
    end
    object CB5: TCheckBox
      Left = 687
      Top = 16
      Width = 154
      Height = 17
      Caption = 'Not ok'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object RB1: TCheckBox
      Left = 7
      Top = 16
      Width = 17
      Height = 17
      TabOrder = 8
    end
    object RB2: TCheckBox
      Left = 7
      Top = 44
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 528
      Top = 40
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Edit3: TEdit
      Left = 601
      Top = 11
      Width = 80
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 906
    Height = 272
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
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
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GX'
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 23
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'okCTS'
        Footers = <>
        ReadOnly = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'InBoxBar'
        Footers = <>
        Width = 92
      end>
  end
  object SMDDSS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select SMDDSS.*,SMDD.Article,SMDD.XieMing,BDepartment.DepName,SM' +
        'DD.DepNO,YWCPLH.InBoxBar'
      'from SMDDSS '
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      'left join BDepartment on BDepartment.ID=SMDD.DepNO '
      'left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        'left join YWCPLH on YWCPLH.XieXing=DDZL.XieXIng and YWCPLH.SheHa' +
        'o=DDZL.SheHao and YWCPLH.XXCC=SMDDSS.XXCC and YWCPLH.GBBH='#39'NORMA' +
        'L'#39' '
      'where SMDDSS.DDBH like '#39'%'#39
      '      and SMDD.GSBH='#39'VA12'#39
      '      and SMDDSS.XXCC like '#39'%'#39' '
      
        '      and SMDD.planDate between Convert(smalldatetime,'#39'2018/01/1' +
        '8'#39') and Convert(smalldatetime,'#39'2018/06/19'#39')'
      '      and SMDDSS.GXLB='#39'A'#39
      '      and okCTS<CTS '
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH'
      '')
    Left = 192
    Top = 88
    object SMDDSSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDSS.DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDSSGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SMDDSS.GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDSSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDSSXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMDDSSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object SMDDSSXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.SMDDSS.XH'
      FixedChar = True
      Size = 1
    end
    object SMDDSSCODEBAR: TStringField
      FieldName = 'CODEBAR'
      Origin = 'DB.SMDDSS.CODEBAR'
      FixedChar = True
    end
    object SMDDSSQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDSS.Qty'
      DisplayFormat = '##,#0'
    end
    object SMDDSSCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.SMDDSS.CTS'
      DisplayFormat = '##,#0'
    end
    object SMDDSSokCTS: TIntegerField
      FieldName = 'okCTS'
      Origin = 'DB.SMDDSS.okCTS'
      DisplayFormat = '##,#0'
    end
    object SMDDSSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SMDDSS.USERDate'
    end
    object SMDDSSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SMDDSS.USERID'
      FixedChar = True
    end
    object SMDDSSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SMDDSS.YN'
      FixedChar = True
      Size = 1
    end
    object SMDDSSokQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object SMDDSSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDSSDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMDDSSInBoxBar: TStringField
      FieldName = 'InBoxBar'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = SMDDSS
    Left = 224
    Top = 88
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 152
    Top = 88
  end
end
