object ReplenishAmount: TReplenishAmount
  Left = 193
  Top = 140
  Width = 1422
  Height = 500
  Caption = 'ReplenishAmount'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1404
    Height = 119
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 22
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label2: TLabel
      Left = 281
      Top = 22
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label3: TLabel
      Left = 38
      Top = 74
      Width = 67
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 256
      Top = 74
      Width = 18
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label5: TLabel
      Left = 527
      Top = 22
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Edit1: TEdit
      Left = 118
      Top = 20
      Width = 149
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 374
      Top = 20
      Width = 149
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 788
      Top = 69
      Width = 99
      Height = 41
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTC1: TDateTimePicker
      Left = 118
      Top = 69
      Width = 120
      Height = 28
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      TabOrder = 3
    end
    object DTC2: TDateTimePicker
      Left = 295
      Top = 69
      Width = 120
      Height = 28
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      TabOrder = 4
    end
    object Button2: TButton
      Left = 788
      Top = 10
      Width = 99
      Height = 40
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 618
      Top = 20
      Width = 149
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 433
      Top = 59
      Width = 317
      Height = 51
      TabOrder = 7
      object CheckBox1: TCheckBox
        Left = 20
        Top = 20
        Width = 141
        Height = 21
        Caption = 'Replenish'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 177
        Top = 20
        Width = 136
        Height = 21
        Caption = 'Expendable'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 119
    Width = 1404
    Height = 334
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DepName'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 360
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PerSon'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LLNO'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFMDate'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pairs'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 130
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 128
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.LLNO,KCLL.USERDATE,KCLL.CFMDate,Bdepartment.DepName,' +
        'KCLL.SCBH AS ZLBH,DDZL.Pairs,'
      
        '    KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,CLZL.YWPM,CLZL.DWBH,KCLLS.CL' +
        'SL,SCBLYY.YWSM'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.[ID]=KCLL.DepID'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH'
      'left join DDZL on DDZL.ZLBH=ZLZL.ZLBH'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      ''
      '')
    Left = 104
    Top = 128
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1PerSon: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PerSon'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0.0'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
end
