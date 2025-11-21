object RSLBOM: TRSLBOM
  Left = 223
  Top = 140
  Width = 928
  Height = 480
  Caption = 'RSLBOM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 910
    Height = 433
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 902
        Height = 129
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 23
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 274
          Top = 23
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label3: TLabel
          Left = 20
          Top = 82
          Width = 73
          Height = 20
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 250
          Top = 82
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 448
          Top = 23
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Edit1: TEdit
          Left = 118
          Top = 20
          Width = 98
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 339
          Top = 20
          Width = 70
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 118
          Top = 79
          Width = 100
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 517
          Top = 20
          Width = 100
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 339
          Top = 79
          Width = 208
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 713
          Top = 71
          Width = 90
          Height = 40
          Caption = 'QUERY'
          TabOrder = 5
          OnClick = Button1Click
        end
        object CheckBox1: TCheckBox
          Left = 583
          Top = 82
          Width = 120
          Height = 21
          Caption = 'Have Order'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 129
        Width = 902
        Height = 269
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Color'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 178
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 194
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BZCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'KFDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 73
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 902
        Height = 60
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 97
          Top = 20
          Width = 70
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 322
          Top = 20
          Width = 70
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 487
          Top = 20
          Width = 70
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 702
          Top = 20
          Width = 70
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 20
          Width = 85
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label7: TLabel
          Left = 229
          Top = 20
          Width = 85
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label8: TLabel
          Left = 394
          Top = 20
          Width = 85
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label9: TLabel
          Left = 612
          Top = 20
          Width = 85
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 60
        Width = 902
        Height = 338
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 4
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 227
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 246
          end
          item
            EditButtons = <>
            FieldName = 'PDFilePage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RSL File'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 184
          end
          item
            EditButtons = <>
            FieldName = 'CLZW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 247
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 226
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 153
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 12
          end>
      end
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,KFZL.KFDH,XXZL.BZCC,xt.xiexing ' +
        'as Xx,xt.Shehao as Ss from XXZL'
      'left join KFZL on KFZL.KFDH=XXZL.KHDH'
      
        'left join (select xiexing,shehao frOm xtbwyl1 group by xiexing,s' +
        'hehao) as xt'
      '  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao'
      'where XXZL.XieXing like '
      #39'%'#39
      'and XXZL.SheHao like '#39'%'#39
      'and XXZL.ARTICLE like '#39'%'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and XXZL.XieMing like '#39'%'#39
      'and XXZL.YN='#39'1'#39
      'order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 100
    Top = 156
    object XXZLXieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLARTICLE: TStringField
      DisplayWidth = 10
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      DisplayWidth = 34
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLYSSM: TStringField
      DisplayWidth = 27
      FieldName = 'YSSM'
      Origin = 'DB.XXZL.YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLBZCC: TStringField
      DisplayWidth = 7
      FieldName = 'BZCC'
      Origin = 'DB.XXZL.BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLXx: TStringField
      FieldName = 'Xx'
      FixedChar = True
      Size = 15
    end
    object XXZLSs: TStringField
      FieldName = 'Ss'
      FixedChar = True
      Size = 5
    end
    object XXZLKFDH: TStringField
      FieldName = 'KFDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 100
    Top = 188
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'
      
        '         CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW' +
        ','
      '         CLZL.DWBH,ZSZL.ZSYWJC,CLZL.CLZMLB,rstlist.pdfilepage'
      ' FROM XXZLS  '
      
        'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                       ' +
        '        '
      
        'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                      ' +
        '        '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'LEFT JOIN rstlist on clzl.cldh = rstlist.cldh'
      'LEFT JOIN BWMAP on BWMAP.BWDH = XXZLS.BWBH'
      'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao'
      #9'and pdyn='#39'Y'#39' and BWMAP.KHBH=:KFDH'
      ' ORDER BY XXZLS.XH')
    Left = 196
    Top = 152
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
        DataType = ftUnknown
        Name = 'KFDH'
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
    object XXZLSBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object XXZLSCLZW: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object XXZLSBWZW: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 30
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSpdfilepage: TStringField
      FieldName = 'PDFilePage'
      Size = 150
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 196
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    Left = 276
    Top = 151
  end
end
