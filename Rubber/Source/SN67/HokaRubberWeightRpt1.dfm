object HokaRubberWeightRpt: THokaRubberWeightRpt
  Left = 266
  Top = 207
  Width = 914
  Height = 500
  Caption = 'HokaRubberWeightRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 190
      Top = 10
      Width = 4
      Height = 16
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 30
      Top = 39
      Width = 62
      Height = 21
      AutoSize = False
      Caption = 'Work/Ca#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 333
      Top = 11
      Width = 91
      Height = 21
      AutoSize = False
      Caption = 'Botton Code #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 300
      Top = 37
      Width = 125
      Height = 21
      AutoSize = False
      Caption = 'M/S material name#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 717
      Top = 33
      Width = 75
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 717
      Top = 3
      Width = 76
      Height = 28
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP2: TDateTimePicker
      Left = 201
      Top = 7
      Width = 96
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DateRB1: TRadioButton
      Left = 7
      Top = 11
      Width = 90
      Height = 17
      Caption = 'Ngay Cong'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
    end
    object DTP1: TDateTimePicker
      Left = 97
      Top = 8
      Width = 88
      Height = 24
      Date = 40904.646302638890000000
      Format = 'yyyy/MM/dd'
      Time = 40904.646302638890000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ComboBox4: TComboBox
      Left = 96
      Top = 37
      Width = 89
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnChange = ComboBox4Change
      Items.Strings = (
        ''
        '1-Ca1 '
        '2-Ca2'
        '3-Ca3')
    end
    object ComboBox1: TComboBox
      Left = 426
      Top = 7
      Width = 141
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = '1-Ca1 '
      OnChange = ComboBox1Change
      Items.Strings = (
        '1-Ca1 '
        '2-Ca2'
        '3-Ca3')
    end
    object ComboBox2: TComboBox
      Left = 427
      Top = 35
      Width = 141
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = '1-Ca1 '
      OnChange = ComboBox2Change
      Items.Strings = (
        '1-Ca1 '
        '2-Ca2'
        '3-Ca3')
    end
    object CheckBox1: TCheckBox
      Left = 584
      Top = 40
      Width = 129
      Height = 17
      Caption = 'Statiscs Weight'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button3: TButton
      Left = 805
      Top = 33
      Width = 75
      Height = 28
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 906
    Height = 396
    Align = alClient
    DataSource = DSRpt
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
  end
  object DSRpt: TDataSource
    DataSet = QueryRpt
    Left = 312
    Top = 129
  end
  object QueryRpt: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select DMBHSM, BWBHSM, StageSM '
      '       ,Sum(Case when SIZE='#39'03.0'#39' then 1 else 0 end) as '#39'03.0'#39' '
      #9'      ,Sum(Case when SIZE='#39'03.5'#39' then 1 else 0 end) as '#39'03.5'#39' '
      #9'      ,Sum(Case when SIZE='#39'04.0'#39' then 1 else 0 end) as '#39'04.0'#39' '
      #9'      ,Sum(1)  as Total'
      'from ('
      
        'Select HKDM_SMZL.*,LBZLS1.YWSM as DMBHSM,LBZLS2.YWSM as BWBHSM,L' +
        'BZLS3.YWSM as StageSM '
      'from LIY_DD.dbo.HKDM_SMZL HKDM_SMZL'
      
        'left join LIY_DD.dbo.HKDM_LBZLS LBZLS1 on LBZLS1.LBDH=HKDM_SMZL.' +
        'DMBH and LBZLS1.Layer=1 and LB='#39'1'#39' '
      
        'left join LIY_DD.dbo.HKDM_LBZLS LBZLS2 on LBZLS2.LBDH=HKDM_SMZL.' +
        'BWBH and LBZLS2.Layer=2 '
      
        'left join LIY_DD.dbo.HKDM_LBZLS LBZLS3 on LBZLS3.LBDH=HKDM_SMZL.' +
        'Stage and LBZLS3.Layer=3 '
      
        'Where Convert(smalldatetime,HKDM_SMZL.WorkDate) between '#39'2022/10' +
        '/01'#39' and '#39'2022/10/18'#39' '
      ' ) HKDM_SMZL  '
      'Group by DMBHSM, BWBHSM, StageSM,Stage '
      'order by DMBHSM desc, BWBHSM desc, StageSM desc, Stage asc'
      '')
    Left = 312
    Top = 161
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 480
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select LBDH,YWSM from LIY_DD.dbo.HKDM_LBZLS where lb='#39'1'#39'  and La' +
        'yer=1'
      '')
    Left = 480
    Top = 160
    object Query1LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 528
    Top = 127
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select LBDH,YWSM'
      'from LIY_DD.dbo.HKDM_LBZLS'
      'where LB=:LBDH  and layer=2')
    Left = 528
    Top = 159
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LBDH'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query2LBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 5
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
end
