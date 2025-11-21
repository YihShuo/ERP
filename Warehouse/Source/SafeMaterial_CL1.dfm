object SafeMaterial_CL: TSafeMaterial_CL
  Left = 266
  Top = 223
  Width = 787
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'SafeMaterial_CL'
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
    Width = 779
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
      Top = 24
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 200
      Top = 24
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 552
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 280
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 64
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 416
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 779
    Height = 409
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
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cllb'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZWPM'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dwbh'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CKBH'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KCBH'
        Width = 60
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
      'select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,CLZL.ZWPM,'
      '     KCZLS.KCBH ,KCZLS.CKBH,CLZL.LYCC,CLZL.CLZMLB'
      'from CLZL left join KCZLS on KCZLS.CLBH=CLZL.CLDH ')
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
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
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
  end
end
