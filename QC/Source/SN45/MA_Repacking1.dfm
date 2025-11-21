object MA_Repacking: TMA_Repacking
  Left = 307
  Top = 223
  Width = 1658
  Height = 675
  Caption = 'MA Defect Analysis'
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
  object Image2: TImage
    Left = 583
    Top = 2
    Width = 113
    Height = 93
    Center = True
    Stretch = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1642
    Height = 113
    Align = alTop
    Caption = 'MA Defect'
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 320
      Top = 65
      Width = 51
      Height = 25
      Caption = 'LEAN'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 342
      Top = 21
      Width = 25
      Height = 25
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 527
      Top = 22
      Width = 59
      Height = 25
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 563
      Top = 67
      Width = 95
      Height = 25
      Caption = 'BUILDING'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 29
      Top = 66
      Width = 51
      Height = 25
      Caption = 'DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 195
      Top = 62
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 734
      Top = 24
      Width = 61
      Height = 25
      Caption = 'Model'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 965
      Top = 22
      Width = 64
      Height = 25
      Caption = 'Report'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 1184
      Top = 22
      Width = 61
      Height = 25
      Caption = 'Defect'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 885
      Top = 78
      Width = 52
      Height = 17
      Caption = 'Old data'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 945
      Top = 59
      Width = 82
      Height = 36
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1035
      Top = 58
      Width = 116
      Height = 37
      Caption = 'MA Repacking'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtLine: TEdit
      Left = 376
      Top = 61
      Width = 172
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtRY: TEdit
      Left = 375
      Top = 17
      Width = 135
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 85
      Top = 60
      Width = 108
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 289
      Height = 41
      TabOrder = 5
      object RB1: TRadioButton
        Left = 12
        Top = 16
        Width = 125
        Height = 14
        Caption = 'Hour Inspect'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 140
        Top = 17
        Width = 121
        Height = 14
        Caption = 'Daily Inspect'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -15
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object EditArticle: TEdit
      Left = 595
      Top = 18
      Width = 125
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditXuong: TEdit
      Left = 660
      Top = 60
      Width = 136
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 206
      Top = 60
      Width = 106
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 804
      Top = 17
      Width = 135
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 1035
      Top = 19
      Width = 135
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 72
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Button3: TButton
      Left = 1154
      Top = 58
      Width = 97
      Height = 37
      Caption = 'MA Defect'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1255
      Top = 58
      Width = 137
      Height = 37
      Caption = 'MA Defect Photo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button4Click
    end
    object Edit3: TEdit
      Left = 1254
      Top = 19
      Width = 135
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object ComboBox1: TComboBox
      Left = 819
      Top = 72
      Width = 44
      Height = 21
      ItemHeight = 13
      TabOrder = 15
      Items.Strings = (
        'P'
        'F')
    end
    object CheckBox2: TCheckBox
      Left = 803
      Top = 77
      Width = 16
      Height = 17
      Caption = 'CheckBox2'
      TabOrder = 16
    end
    object CheckBox3: TCheckBox
      Left = 871
      Top = 77
      Width = 13
      Height = 17
      Caption = 'CheckBox2'
      Checked = True
      State = cbChecked
      TabOrder = 17
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 1642
    Height = 523
    Align = alClient
    Color = clGradientInactiveCaption
    DataSource = DS1
    EvenRowColor = clMenu
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OddRowColor = clInactiveCaption
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'Result'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 168
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 189
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DefQty'
        Footers = <>
        Title.Caption = 'Report DefQty'
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'InsQty'
        Footers = <>
        Width = 52
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DD' +
        'ZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,QCMAYY.YWSM,QCMAYY.Z' +
        'WSM,QCMAD.Qty, WOPR_MA.DefQty ,WOPR_MA.InsQty'
      
        '--,Case when WOPR_MA.Result='#39'F'#39' then WOPR_MA.DefQty else WOPR_MA' +
        '.InsQty end as FailQty'
      'From WOPR_MA'
      
        'inner join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_M' +
        'A.SCDate'
      'inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo'
      'inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH'
      'left join DDZL on DDZL.DDBH=WOPR_MA.SCBH '
      
        'left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      'where 1=1 and WOPR_MA.GXLB='#39'HI'#39' --and WOPR_MA.Result='#39'F'#39
      
        'and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between '#39'2023/03/31' +
        #39' and '#39'2023/04/03'#39' '
      
        'group by WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,' +
        'DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,QCMAYY.YWSM,QCMAYY' +
        '.ZWSM,QCMAD.Qty, WOPR_MA.DefQty ,WOPR_MA.InsQty'
      'order by WOPR_MA.ID'
      '')
    Left = 232
    Top = 152
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 200
    end
    object Query1Qty: TSmallintField
      FieldName = 'Qty'
    end
    object Query1DefQty: TSmallintField
      FieldName = 'DefQty'
    end
    object Query1InsQty: TSmallintField
      FieldName = 'InsQty'
    end
    object Query1Result: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 232
    Top = 208
  end
  object Excel2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 272
    Top = 208
  end
end
