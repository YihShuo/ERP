object MA_ActionPlan: TMA_ActionPlan
  Left = 245
  Top = 191
  Width = 1473
  Height = 675
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
    Width = 1457
    Height = 105
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
    object Label4: TLabel
      Left = 517
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
      Left = 749
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
      Left = 747
      Top = 63
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
      Left = 955
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
    object Label3: TLabel
      Left = 523
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
    object Label10: TLabel
      Left = 1197
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
      Left = 958
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
      Left = 1051
      Top = 59
      Width = 120
      Height = 37
      Caption = 'MA_ActionPlan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object edtLine: TEdit
      Left = 376
      Top = 61
      Width = 135
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
      Width = 304
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
        Left = 179
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
      Left = 617
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
      Left = 617
      Top = 60
      Width = 126
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
      Left = 818
      Top = 18
      Width = 129
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
      Left = 818
      Top = 60
      Width = 131
      Height = 33
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = Edit2Change
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
    object Edit3: TEdit
      Left = 1025
      Top = 15
      Width = 144
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CheckBox3: TCheckBox
      Left = 1183
      Top = 77
      Width = 13
      Height = 17
      Caption = 'CheckBox2'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1457
    Height = 531
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
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Result'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 212
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'InsQty'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'PrdQty'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 167
      end>
  end
  object DS1: TDataSource
    DataSet = WOPR_MA
    Left = 264
    Top = 152
  end
  object WOPR_MA: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DD' +
        'ZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,DDZL.KHPO'
      
        ',DDZL.Pairs,DDZL.ShipDate,LBZLS.ywsm,WOPR_MA.InsQty,WOPR_MA.PrdQ' +
        'ty,QCMAD.Qty,QCMAYY.ZWSM,(QCMAD.ProNo+'#39'_'#39'+QCMAD.YYBH) as Prono'
      'From WOPR_MA'
      
        'inner join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_M' +
        'A.SCDate'
      'inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo'
      'inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH'
      'left join DDZL on DDZL.DDBH=WOPR_MA.SCBH '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      
        'left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL' +
        '.SheHao'
      'left join BDepartment on BDepartment.ID=WOPR_MA.DepNo'
      'where 1=1 and WOPR_MA.GXLB='#39'HI'#39' and  WOPR_MA.Result='#39'F'#39' '
      
        'and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between '#39'2023/03/31' +
        #39' and '#39'2023/04/10'#39' '
      
        'group by WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,' +
        'DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,DDZL.KHPO'
      
        ',DDZL.Pairs,DDZL.ShipDate,LBZLS.ywsm,WOPR_MA.InsQty,WOPR_MA.PrdQ' +
        'ty,QCMAD.Qty,QCMAYY.ZWSM,QCMAD.ProNo,QCMAD.YYBH'
      ''
      '')
    Left = 264
    Top = 192
    object WOPR_MASCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object WOPR_MASCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object WOPR_MAID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object WOPR_MAResult: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 1
    end
    object WOPR_MAARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object WOPR_MAXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object WOPR_MADepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object WOPR_MAKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object WOPR_MAPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object WOPR_MAShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object WOPR_MAywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object WOPR_MAInsQty: TSmallintField
      FieldName = 'InsQty'
    end
    object WOPR_MAPrdQty: TSmallintField
      FieldName = 'PrdQty'
    end
    object WOPR_MAQty: TSmallintField
      FieldName = 'Qty'
    end
    object WOPR_MAZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 200
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 328
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 416
    Top = 192
  end
end
