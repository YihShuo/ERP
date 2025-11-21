object Article_List: TArticle_List
  Left = 387
  Top = 260
  Width = 1332
  Height = 663
  Caption = 'Article List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1316
    Height = 624
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Query'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1308
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 13
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 193
          Top = 13
          Width = 29
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 427
          Top = 14
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DAO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 45
          Width = 62
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDMH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 201
          Top = 48
          Width = 80
          Height = 25
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ProdType:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 400
          Top = 45
          Width = 78
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Category:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EDSKU: TEdit
          Left = 65
          Top = 9
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EDSR: TEdit
          Left = 225
          Top = 10
          Width = 197
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EDDAO: TEdit
          Left = 476
          Top = 10
          Width = 136
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 656
          Top = 5
          Width = 73
          Height = 38
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 729
          Top = 5
          Width = 73
          Height = 38
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button11Click
        end
        object CheckBox1: TCheckBox
          Left = 818
          Top = 8
          Width = 111
          Height = 19
          Caption = 'New Activation first'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object EDDDMH: TEdit
          Left = 81
          Top = 41
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object EDType: TEdit
          Left = 281
          Top = 41
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object EDCategory: TEdit
          Left = 481
          Top = 41
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Group: TCheckBox
          Left = 818
          Top = 31
          Width = 73
          Height = 19
          Caption = 'GroupxLatest'
          TabOrder = 9
        end
        object CK1: TCheckBox
          Left = 818
          Top = 54
          Width = 89
          Height = 17
          Caption = 'Have order'
          Checked = True
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 10
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 73
        Width = 1308
        Height = 523
        Align = alClient
        DataSource = DS_xxzl
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'DMGJ'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'Production_Category'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'VERSION'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Hourly_Output'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'IDL'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'IE_DL'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'Activation_Time'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'Test_Day'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = 'ProdType'
            Width = 82
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TTheadcount'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1308
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 241
          Top = 16
          Width = 464
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NoteOutput/testing dat/Activation day all base on assembly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Analyze: TButton
          Left = 8
          Top = 5
          Width = 73
          Height = 38
          Caption = 'Analyze'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BAnalyzeClick
        end
        object Button4: TButton
          Left = 81
          Top = 5
          Width = 73
          Height = 38
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1308
        Height = 547
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
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'DMGJ'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'Hourly_Output'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'POH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CUT_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CUT_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Stitching_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Stitching_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'STOCK-FIT_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'STOCK-FIT_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Assembly_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Assembly_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Packing_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Packing_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Others_DL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Others_IDL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Others'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
            Title.Caption = 'ProdType'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'VERSION'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Test_Day'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'Activation_Day'
            Footers = <>
            Title.Caption = 'Activation_Dat'
          end>
      end
    end
  end
  object xxzl: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select DENSE_RANK() over(order by SKU,DDMH,DMGJ,DAOMH) as RN1,a.' +
        '*'
      
        'from(select ROW_NUMBER() over(PARTITION BY XXZL.ARTICLE,xxzl.DDM' +
        'H,xxzl.DMGJ,xxzl.DAOMH,IE_ARTICLEDATA.Production_Category order ' +
        'by Activation_Time DESc) as RN,'
      
        ' XXZL.ARTICLE as SKU,kfxxzl.DEVCODE as SR,xxzl.DDMH,xxzl.DMGJ,xx' +
        'zl.DAOMH,IE_ARTICLEDATA.Production_Category,IE_ARTICLEDATA.VERSI' +
        'ON  '
      
        ',IE_ARTICLEDATA.Hourly_Output,lbzls.ywsm ,IE_ARTICLEDATA.IDL,IE_' +
        'ARTICLEDATA.IE_DL,Test_Day,IE_ARTICLEDATA.Activation_Time'
      
        'From IE_ARTICLEDATA inner join xxzl on xxzl.XieXing=IE_ARTICLEDA' +
        'TA.XieXing and IE_ARTICLEDATA.SheHao=xxzl.SheHao  '
      
        'left join kfxxzl on IE_ARTICLEDATA.XieXing = kfxxzl.XieXing and ' +
        'IE_ARTICLEDATA.SheHao = kfxxzl.SheHao  '
      
        'LEFT JOIN ypzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao ' +
        '= kfxxzl.SheHao'
      
        'LEFT JOIN lbzls  ON kfxxzl.xiegn = lbzls.lbdh AND lbzls.lb = '#39'03' +
        #39
      'where 1=1 '
      ')a '
      '-- '
      ' where rn=1 ')
    Left = 136
    Top = 361
    object xxzlSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object xxzlSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object xxzlDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object xxzlDMGJ: TStringField
      FieldName = 'DMGJ'
      FixedChar = True
      Size = 3
    end
    object xxzlDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object xxzlProduction_Category: TStringField
      FieldName = 'Production_Category'
      FixedChar = True
    end
    object xxzlVERSION: TStringField
      FieldName = 'VERSION'
      FixedChar = True
      Size = 6
    end
    object xxzlHourly_Output: TFloatField
      FieldName = 'Hourly_Output'
    end
    object xxzlIDL: TIntegerField
      FieldName = 'IDL'
    end
    object xxzlIE_DL: TIntegerField
      FieldName = 'IE_DL'
    end
    object xxzlActivation_Time: TDateTimeField
      FieldName = 'Activation_Time'
    end
    object xxzlRN1: TFloatField
      FieldName = 'RN1'
    end
    object xxzlywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object xxzlTest_Day: TDateTimeField
      FieldName = 'Test_Day'
    end
  end
  object DS_xxzl: TDataSource
    DataSet = xxzl
    Left = 136
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = CDS
    Left = 192
    Top = 312
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 188
    Top = 360
  end
end
