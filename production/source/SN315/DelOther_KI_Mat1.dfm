object DelOther_KI_Mat: TDelOther_KI_Mat
  Left = 291
  Top = 167
  Width = 841
  Height = 480
  Caption = 'DelOther_KI_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 825
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 165
      Top = 21
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 332
      Top = 21
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 8
      Top = 20
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
    end
    object Label4: TLabel
      Left = 11
      Top = 57
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 159
      Top = 58
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 621
      Top = 11
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 409
      Top = 18
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 229
      Top = 18
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 491
      Top = 18
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 60
      Top = 18
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button3: TButton
      Left = 621
      Top = 51
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 711
      Top = 11
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button2Click
    end
    object NoDelCK: TCheckBox
      Left = 349
      Top = 58
      Width = 121
      Height = 17
      Caption = 'Not yet delivery'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 59
      Top = 54
      Width = 97
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 181
      Top = 54
      Width = 97
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 825
    Height = 352
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
        FieldName = 'YWPM'
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
        FieldName = 'ZWPM'
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
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
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
      end>
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
        'BH,sum(ZLZLS2.CLSL) as CLSL,isnull(KCLLS.Qty,0) as Qty ,case whe' +
        'n sum(ZLZLS2.CLSL)>isnull(KCLLS.Qty,0) then 0 else 1 end as Flag' +
        '   '
      'from KHUONIN_ZLZLS2 ZLZLS2 '
      'inner join CLZL on CLZL.CLDH=ZLZLS2.CLBH '
      'inner join KHUONIN_DDZL DDZL on DDZL.DDBH=ZLZLS2.ZLBH '
      'left join (select KCLLS.SCBH,KCLLS.CLBH,sum(KCLLS.Qty) as Qty '
      '           from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           where KCLL.USERDate>getdate()-180 '
      '                 and KCLL.GSBH='#39'VGC'#39
      '                 and KCLL.SCBH='#39'KKKKKKKKKK'#39' '
      '           group by KCLLS.SCBH,KCLLS.CLBH) KCLLS '
      '           on KCLLS.SCBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH '
      'where CLZL.CLDH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%'#39
      '      and CLZL.YWPM like '#39'%'#39
      '      and ZLZLS2.ZLBH like '#39'KI20221000001%'#39
      '      and CLZL.CLDH like '#39'W%'#39' '
      '      and DDZL.GSBH='#39'VGC'#39' '
      '      and DDZL.YN<>5'
      
        'Group by CLZL.CLDH,ZLZLS2.ZLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCL' +
        'LS.Qty '
      ') ZLZLS2'
      'where 1=2'
      'order by CLBH,ZLBH')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Flag: TIntegerField
      FieldName = 'Flag'
    end
  end
end
