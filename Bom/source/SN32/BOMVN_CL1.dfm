object BOMVN_CL: TBOMVN_CL
  Left = 245
  Top = 214
  Width = 1054
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1038
    Height = 391
    ActivePage = TabSheet2
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
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 1030
        Height = 316
        Align = alClient
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
            FieldName = 'cldh'
            Title.Caption = 'MatNo'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cllb'
            Title.Caption = 'Class'
            Width = 51
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
            Title.Caption = 'EnglishNM'
            Width = 302
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zwpm'
            Title.Caption = 'ChineseNM'
            Width = 261
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dwbh'
            Title.Caption = 'Unit'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cqdh'
            Title.Caption = 'CQDH'
            Width = 55
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1030
        Height = 356
        Align = alClient
        DataSource = DS
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid2DblClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'XH|'#24207#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Part|'#37096#20301#32232#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = 'PartName|'#37096#20301#21517#31281
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#32232#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#21517#31281
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 329
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Unit|'#21934#20301
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Usage|'#29992#37327
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
            Title.Caption = 'UnitClass|'#37096#20301#39006#21029
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ZSJC'
            Footers = <>
            Title.Caption = 'Supplier|'#24288#21830
            Width = 78
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
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = BOMVN.DS1
    SQL.Strings = (
      
        'select XXZLS.XH,XXZLS.BWBH,BWZL.YWSM,XXZLS.CLBH,CLZL.YWPM,CLZL.D' +
        'WBH,XXZLS.BWLB,XXZLS.CLSL,XXZLSVN.CLBH as XXZLSVN_CLBH,ZSZL.ZSJC' +
        ' '
      'from XXZLS '
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      'left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      
        'left join (select XieXing,SheHao,CLBH from  XXZLSVN where XieXin' +
        'g=:XieXing and Shehao=:SheHao  and CLBH like '#39'M%'#39' Group by XieXi' +
        'ng,SheHao,CLBH) XXZLSVN on XXZLSVN.XieXing=XXZLSVN.XieXing and X' +
        'XZLSVN.SheHao=XXZLS.SheHao and XXZLSVN.CLBH=XXZLS.CLBH'
      'left join ZSZL on XXZLS.CSBH=ZSZL.ZSDH'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.Shehao=:SheHao  and XXZLS' +
        '.CLBH like '#39'M%'#39
      'and XXZLS.BWLB = '#39'1'#39)
    Left = 404
    Top = 128
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object XXZLSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object XXZLSXXZLSVN_CLBH: TStringField
      FieldName = 'XXZLSVN_CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
  end
  object DS: TDataSource
    DataSet = XXZLS
    Left = 404
    Top = 160
  end
end
