object EntryTotal_Mat: TEntryTotal_Mat
  Left = 252
  Top = 189
  Width = 733
  Height = 444
  BorderIcons = [biSystemMenu]
  Caption = 'EntryTotal_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 192
      Top = 32
      Width = 64
      Height = 16
      Caption = 'EngName:'
    end
    object Label3: TLabel
      Left = 400
      Top = 32
      Width = 59
      Height = 16
      Caption = 'ChiName:'
    end
    object Button1: TButton
      Left = 600
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 256
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit4: TEdit
      Left = 464
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 725
    Height = 353
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
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
        Expanded = False
        FieldName = 'cldh'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cllb'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dwbh'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'VNI-Times'
        Font.Style = []
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zwpm'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KCBH'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CKBH'
        Width = 43
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
      'select CLZL.*,KCZL.CKBH,KCZL.KCBH,KCZL.KCMC'
      'from clzl'
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDH '
      'left join KCZL on KCZL.KCBH=KCZLS.KCBH '
      'left join KCCK on KCCK.CKBH=KCZL.CKBH and KCCK.GSBH='#39'VTX'#39
      'order by CLZL.CLDH')
    Left = 424
    Top = 160
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      DisplayWidth = 6
      FieldName = 'cllb'
      Origin = 'DB.clzl.cllb'
      FixedChar = True
      Size = 3
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
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1KCMC: TStringField
      FieldName = 'KCMC'
      FixedChar = True
      Size = 50
    end
  end
end
