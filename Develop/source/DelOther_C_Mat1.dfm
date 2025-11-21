object DelOther_C_Mat: TDelOther_C_Mat
  Left = 334
  Top = 196
  Width = 714
  Height = 420
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_C_Mat'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 32
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 336
      Top = 32
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Button1: TButton
      Left = 576
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 400
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 224
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 488
      Top = 24
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 56
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 706
    Height = 321
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zwpm'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dwbh'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 68
        Visible = True
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
      
        'select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS' +
        '2.CLSL) as CLSL '
      'from CLZL '
      'left join ZLZLS2 on CLZL.CLDH=ZLZLS2.CLBH'
      'where CLZL.CLDH like'#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and ZLZLS2.ZLBH like '#39'Y0905-127%'#39
      '      and CLZL.CLDH like '#39'W%'#39
      'group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH '
      'order by CLZL.CLDH')
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
      DisplayFormat = '##,#0.0'
    end
  end
end
