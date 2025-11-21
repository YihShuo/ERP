object INKVN_CL: TINKVN_CL
  Left = 245
  Top = 214
  Width = 1054
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'INKVN_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1038
    Height = 390
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Material'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1030
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 11
          Width = 43
          Height = 16
          Caption = 'MatNo:'
        end
        object Label2: TLabel
          Left = 193
          Top = 12
          Width = 62
          Height = 16
          Caption = 'MatName:'
        end
        object Button1: TButton
          Left = 487
          Top = 4
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 260
          Top = 4
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = Edit2KeyPress
        end
        object EDIT1: TEdit
          Left = 63
          Top = 7
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'W'
          OnKeyPress = EDIT1KeyPress
        end
        object Edit3: TEdit
          Left = 371
          Top = 3
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
          OnKeyPress = Edit3KeyPress
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 41
        Width = 1030
        Height = 314
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footers = <>
            Title.Caption = 'MatNo'
          end
          item
            EditButtons = <>
            FieldName = 'cllb'
            Footers = <>
            Title.Caption = 'Class'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'EnglishNM'
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            Title.Caption = 'ChineseNM'
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'cqdh'
            Footers = <>
            Title.Caption = 'CQDH'
            Width = 85
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from clzl'
      'order by CLDH')
    Left = 360
    Top = 128
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
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      Origin = 'DB.clzl.cqdh'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 160
  end
end
