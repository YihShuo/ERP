object CartonOrder_CT: TCartonOrder_CT
  Left = 389
  Top = 243
  Width = 1040
  Height = 474
  BorderIcons = [biSystemMenu]
  Caption = 'CartonOrder_CT'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1032
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
      Top = 18
      Width = 75
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
      Left = 176
      Top = 19
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object lbCapacity: TLabel
      Left = 448
      Top = 18
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Capacity:'
    end
    object Edit1: TEdit
      Left = 76
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
      Left = 264
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
      Left = 360
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 3
    end
    object cbCapacity: TComboBox
      Left = 520
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
    Width = 688
    Height = 394
    Align = alClient
    DataSource = DS2
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
    OnKeyPress = DBGrid1KeyPress
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
  object Panel1: TPanel
    Left = 688
    Top = 49
    Width = 344
    Height = 394
    Align = alRight
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 342
      Height = 392
      Align = alClient
      DataSource = DataSource1
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'MTLR1'
          Footers = <>
          Title.Caption = 'Mark 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 250
        end>
    end
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
    Left = 188
    Top = 240
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
  object DS2: TDataSource
    DataSet = YWWX
    Left = 220
    Top = 240
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 208
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ywddmt'
      'where ddbh='#39'y1706-0118'#39)
    Left = 800
    Top = 144
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.ywddmt.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.ywddmt.XH'
      FixedChar = True
      Size = 3
    end
    object Query1MTBH1: TStringField
      FieldName = 'MTBH1'
      Origin = 'DB.ywddmt.MTBH1'
      FixedChar = True
      Size = 6
    end
    object Query1MTLR1: TStringField
      FieldName = 'MTLR1'
      Origin = 'DB.ywddmt.MTLR1'
      FixedChar = True
      Size = 50
    end
    object Query1MTBH2: TStringField
      FieldName = 'MTBH2'
      Origin = 'DB.ywddmt.MTBH2'
      FixedChar = True
      Size = 6
    end
    object Query1MTLR2: TStringField
      FieldName = 'MTLR2'
      Origin = 'DB.ywddmt.MTLR2'
      FixedChar = True
      Size = 50
    end
    object Query1MTBH3: TStringField
      FieldName = 'MTBH3'
      Origin = 'DB.ywddmt.MTBH3'
      FixedChar = True
      Size = 6
    end
    object Query1MTLR3: TStringField
      FieldName = 'MTLR3'
      Origin = 'DB.ywddmt.MTLR3'
      FixedChar = True
      Size = 50
    end
    object Query1MTBH4: TStringField
      FieldName = 'MTBH4'
      Origin = 'DB.ywddmt.MTBH4'
      FixedChar = True
      Size = 6
    end
    object Query1MTLR4: TStringField
      FieldName = 'MTLR4'
      Origin = 'DB.ywddmt.MTLR4'
      FixedChar = True
      Size = 50
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ywddmt.USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ywddmt.USERID'
      FixedChar = True
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.ywddmt.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 832
    Top = 144
  end
end
