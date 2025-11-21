object DelOther_INK_Mat: TDelOther_INK_Mat
  Left = 797
  Top = 326
  Width = 923
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_INK_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 113
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 27
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 352
      Top = 27
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 8
      Top = 26
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label4: TLabel
      Left = 136
      Top = 60
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ShipDate'
    end
    object Label5: TLabel
      Left = 323
      Top = 61
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 466
      Top = 59
      Width = 28
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DFL:'
    end
    object Label7: TLabel
      Left = 0
      Top = 83
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label9: TLabel
      Left = 136
      Top = 84
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PlanDate'
    end
    object Label8: TLabel
      Left = 323
      Top = 86
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label10: TLabel
      Left = 0
      Top = 56
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
    end
    object Button1: TButton
      Left = 624
      Top = 59
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 429
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 248
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 511
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 80
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 207
      Top = 56
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 349
      Top = 56
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object NoDelCK: TCheckBox
      Left = 464
      Top = 83
      Width = 121
      Height = 17
      Caption = 'Not yet delivery'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object DFLComBo: TComboBox
      Left = 495
      Top = 56
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 8
    end
    object cbGSBH: TComboBox
      Left = 57
      Top = 80
      Width = 58
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 9
      Items.Strings = (
        'VA12'
        'VB1'
        'VB2')
    end
    object Button3: TButton
      Left = 624
      Top = 19
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 10
      OnClick = Button3Click
    end
    object RB2: TRadioButton
      Left = 123
      Top = 84
      Width = 17
      Height = 17
      TabOrder = 11
    end
    object DTP3: TDateTimePicker
      Left = 207
      Top = 82
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 12
    end
    object DTP4: TDateTimePicker
      Left = 349
      Top = 82
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 13
    end
    object Edit5: TEdit
      Left = 56
      Top = 52
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object RB1: TRadioButton
      Left = 123
      Top = 60
      Width = 17
      Height = 17
      Checked = True
      TabOrder = 15
      TabStop = True
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 907
    Height = 348
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        Title.Caption = 'Mat No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'SCBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Mat Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'Mat CName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 161
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <
          item
            FieldName = 'CLSL'
            ValueType = fvtSum
          end>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 38
      end>
  end
  object Button2: TButton
    Left = 704
    Top = 58
    Width = 73
    Height = 33
    Caption = 'Copy'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ('
      
        'select CLZL.CLDH as CLBH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DW' +
        'BH,sum(ZLZLS2.CLSL) as CLSL,isnull(KCLLS.Qty,0) as Qty,case when' +
        ' sum(ZLZLS2.CLSL)>isnull(KCLLS.Qty,0) then 0 else 1 end as Flag,' +
        'XXBWFLS.DFL   '
      'from ZLZLS2_YM as ZLZLS2'
      'inner join CLZL on CLZL.CLDH=ZLZLS2.CLBH '
      'inner join DDZL on DDZL.DDBH=ZLZLS2.ZLBH '
      
        'LEFT JOIN XXZL ON XXZL.XIEXING=DDZL.XIEXING AND XXZL.SHEHAO=DDZL' +
        '.SHEHAO'
      
        'LEFT JOIN XXBWFL ON ZLZLS2.BWBH=XXBWFL.BWBH AND XXZL.XIEXING=XXB' +
        'WFL.XIEXING'
      'LEFT JOIN XXBWFLS ON XXBWFL.FLBH=XXBWFLS.FLBH'
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),1) ' +
        'as Qty '
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           where KCLL.USERDate>getdate()-90 '
      '                 and KCLL.GSBH='#39'VA12'#39' '
      '           group by KCLLS.SCBH,KCLLS.CLBH) KCLLS '
      '           on KCLLS.SCBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH '
      'where CLZL.CLDH like'#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.CLDH like '#39'W%'#39' '
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and DDZL.shipdate>='#39'20180203'#39
      '      and DDZL.shipdate<='#39'20180407'#39
      '      and DDZL.YN<>5'
      
        'Group by CLZL.CLDH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCL' +
        'LS.Qty,XXBWFLS.DFL '
      ') ZLZLS2'
      'order by CLBH,ZLBH')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.clzl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Flag: TIntegerField
      FieldName = 'Flag'
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
  end
end
