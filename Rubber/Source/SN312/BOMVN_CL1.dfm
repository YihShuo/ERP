object BOMVN_CL: TBOMVN_CL
  Left = 434
  Top = 269
  Width = 839
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'BOMVN_CL'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 823
    Height = 392
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
        Width = 815
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
        Width = 815
        Height = 316
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
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'cldh'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'MatNo'
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'cllb'
            Footers = <>
            Title.Caption = 'Class'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'EnglishN M'
            Width = 251
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            Title.Caption = 'ChineseN M'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 114
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from LIY_DD.dbo.clzl'
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 160
  end
end
