object CartonXXZL_CLZL: TCartonXXZL_CLZL
  Left = 580
  Top = 261
  Width = 747
  Height = 400
  Caption = 'CartonXXZL_CLZL'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 49
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 19
      Width = 91
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 19
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object lbCapacity: TLabel
      Left = 464
      Top = 18
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Capacity:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 280
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 595
      Top = 8
      Width = 78
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 376
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 3
    end
    object cbCapacity: TComboBox
      Left = 528
      Top = 16
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        '18'
        '12'
        '10'
        '8'
        '6'
        '4'
        '2'
        '1')
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 739
    Height = 320
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 242
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <
          item
            FieldName = 'DWBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 36
      end
      item
        Color = 13828095
        EditButtons = <>
        FieldName = 'Length'
        Footers = <
          item
            FieldName = 'Length'
            ValueType = fvtAvg
          end>
        Width = 50
      end
      item
        Color = 13828095
        EditButtons = <>
        FieldName = 'Width'
        Footers = <
          item
            FieldName = 'Width'
            ValueType = fvtAvg
          end>
        Width = 46
      end
      item
        Color = 13828095
        EditButtons = <>
        FieldName = 'Height'
        Footers = <
          item
            FieldName = 'Height'
            ValueType = fvtAvg
          end>
        Width = 54
      end
      item
        Color = 13828095
        EditButtons = <>
        FieldName = 'OWeigh'
        Footers = <
          item
            FieldName = 'OWeigh'
            ValueType = fvtAvg
          end>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Capacity'
        Footers = <>
        Width = 60
      end>
  end
  object YWWX: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLZL.CLDH,CLZL.YWPM,CLZl.DWBH,YWWX2.* '
      'from CLZl'
      'left join YWWX2 on CLZL.CLDH=YWWX2.CLBH'
      'where CLZL.CLDH like '#39'UUU%'#39
      'and CLZL.CLDh like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and YWWX2.Length is null '
      'order by CLZL.CLDH')
    Left = 316
    Top = 144
    object YWWXCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object YWWXYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object YWWXDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object YWWXCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object YWWXLength: TFloatField
      FieldName = 'Length'
      DisplayFormat = '##,#0'
    end
    object YWWXWidth: TFloatField
      FieldName = 'Width'
      DisplayFormat = '##,#0'
    end
    object YWWXHeight: TFloatField
      FieldName = 'Height'
      DisplayFormat = '##,#0'
    end
    object YWWXOWeigh: TCurrencyField
      FieldName = 'OWeigh'
      DisplayFormat = '##,#0.000'
    end
    object YWWXSquare: TCurrencyField
      FieldName = 'Square'
      DisplayFormat = '##,#0.0000'
    end
    object YWWXMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object YWWXUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWWXUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWWXYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWWXCapacity: TSmallintField
      FieldName = 'Capacity'
    end
  end
  object DS1: TDataSource
    DataSet = YWWX
    Left = 317
    Top = 176
  end
end
