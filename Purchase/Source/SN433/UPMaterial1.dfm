object UPMaterial: TUPMaterial
  Left = 397
  Top = 263
  Width = 1355
  Height = 650
  Caption = 'N433 UP Material'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1347
    Height = 619
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Data'
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Width = 1339
        Height = 1
        Cursor = crVSplit
        Align = alTop
      end
      object Panel1: TPanel
        Left = 0
        Top = 1
        Width = 1339
        Height = 145
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 3
          Width = 20
          Height = 15
          Caption = 'FTY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 68
          Top = 3
          Width = 39
          Height = 15
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 884
          Top = 67
          Width = 306
          Height = 75
          Caption = 
            'Import:'#13#10'1.Export excel file by right-click, Edit , and then Imp' +
            'ort. '#13#10'2.DO NOT delete any column in the excel file ! ! ! '#13#10'3.Hi' +
            'ding some column in excel file is ok. '#13#10'4.Import Time: 100 recor' +
            'ds~50 seconds '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 728
          Top = 72
          Width = 84
          Height = 52
          Caption = 'Color:'#13#10'Blue----FOB>USD'#13#10'Red-----FOB<USB'#13#10'Green---Edit'
        end
        object Edit1: TEdit
          Left = 16
          Top = 27
          Width = 45
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 68
          Top = 27
          Width = 45
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button1: TButton
          Left = 877
          Top = 11
          Width = 150
          Height = 57
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tw Cen MT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object GroupBox1: TGroupBox
          Left = 118
          Top = 2
          Width = 203
          Height = 71
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label3: TLabel
            Left = 9
            Top = 27
            Width = 12
            Height = 15
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 77
            Top = 27
            Width = 33
            Height = 15
            Caption = 'Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 24
            Top = 25
            Width = 45
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 113
            Top = 24
            Width = 80
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 325
          Top = 2
          Width = 300
          Height = 71
          Caption = 'Material'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label5: TLabel
            Left = 9
            Top = 27
            Width = 12
            Height = 15
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 109
            Top = 27
            Width = 33
            Height = 15
            Caption = 'Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Edit5: TEdit
            Left = 24
            Top = 24
            Width = 75
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Edit6: TEdit
            Left = 145
            Top = 24
            Width = 75
            Height = 23
            Color = 14286847
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Edit7: TEdit
            Left = 220
            Top = 24
            Width = 75
            Height = 23
            Color = 14286847
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 628
          Top = 2
          Width = 244
          Height = 71
          Caption = 'Time'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object Label7: TLabel
            Left = 128
            Top = 25
            Width = 8
            Height = 19
            Caption = '~'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Candara'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CheckBox1: TCheckBox
            Left = 11
            Top = 24
            Width = 17
            Height = 17
            TabOrder = 0
          end
          object DateTimePicker1: TDateTimePicker
            Left = 29
            Top = 24
            Width = 95
            Height = 23
            Date = 42963.592254293980000000
            Time = 42963.592254293980000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DateTimePicker2: TDateTimePicker
            Left = 142
            Top = 24
            Width = 95
            Height = 23
            Date = 42963.592321238420000000
            Time = 42963.592321238420000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object Button2: TButton
          Left = 1037
          Top = 11
          Width = 150
          Height = 57
          Caption = 'Import'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tw Cen MT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Button2Click
        end
        object GroupBox4: TGroupBox
          Left = 6
          Top = 74
          Width = 587
          Height = 55
          Caption = 'ShoeModelName, Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object Label9: TLabel
            Left = 9
            Top = 27
            Width = 96
            Height = 15
            Caption = 'ShoeModelName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 325
            Top = 27
            Width = 43
            Height = 15
            Caption = 'Remark'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Edit9: TEdit
            Left = 112
            Top = 25
            Width = 200
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Edit10: TEdit
            Left = 376
            Top = 24
            Width = 200
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 606
          Top = 74
          Width = 115
          Height = 55
          Caption = 'User'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          object Label11: TLabel
            Left = 9
            Top = 27
            Width = 12
            Height = 15
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
          end
          object Edit11: TEdit
            Left = 24
            Top = 25
            Width = 73
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 146
        Width = 1339
        Height = 445
        Align = alClient
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1337
          Height = 443
          Align = alClient
          DataSource = DataSource1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 7
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FTY'
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -15
              Footer.Font.Name = 'Calibri'
              Footer.Font.Style = [fsBold]
              Footers = <>
              PickList.Strings = (
                'LVL'
                'LBT'
                'LDT'
                'LYV'
                'LHG'
                'LYM')
              Title.Color = 8454143
              Title.TitleButton = True
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'EffectiveDate'
              Footer.DisplayFormat = 'yyyy/mm/dd'
              Footers = <>
              Title.Caption = 'Effective Date'
              Title.Color = 8454143
              Title.TitleButton = True
              Width = 70
              OnUpdateData = DBGridEh1Columns1UpdateData
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 50
            end
            item
              Color = 14286847
              EditButtons = <>
              FieldName = 'CLBH'
              Footer.Color = 14286847
              Footer.FieldName = 'CLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Material|ID'
              Title.Color = 8454143
              Title.TitleButton = True
              Width = 70
              OnEditButtonClick = DBGridEh1Columns3EditButtonClick
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material|English Name'
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'zwpm'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material|Chinese Name'
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Material|Unit'
              Title.TitleButton = True
              Width = 30
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0'
              EditButtons = <>
              FieldName = 'MOQ'
              Footer.Color = 15925222
              Footers = <>
              Title.Caption = 'Purchasing|MOQ'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 60
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Price_FOB'
              Footer.Color = 15925222
              Footers = <>
              Title.Caption = 'Purchasing|FOB'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Prod_nfc_USD'
              Footers = <>
              Title.Caption = 'Purchasing|Prod_nfc_USD'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0'
              EditButtons = <>
              FieldName = 'Prod_nfc_VND'
              Footers = <>
              Title.Caption = 'Purchasing|Prod_nfc_VND'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Price_USD'
              Footer.Color = 15925222
              Footers = <>
              Title.Caption = 'Purchasing|Prod. USD'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0'
              EditButtons = <>
              FieldName = 'Price_VND'
              Footer.Color = 15925222
              Footers = <>
              Title.Caption = 'Purchasing|Prod. VND'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Price_MMK'
              Footers = <>
              Title.Caption = 'Purchasing|Prod. MMK'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Price_TWD'
              Footers = <>
              Title.Caption = 'Purchasing|Prod. TWD'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 15925222
              DisplayFormat = '#,##0.00000'
              EditButtons = <>
              FieldName = 'Price_EUR'
              Footers = <>
              Title.Caption = 'Purchasing|Prod. EUR'
              Title.Color = 14286771
              Title.TitleButton = True
              Width = 85
            end
            item
              Color = 14286847
              EditButtons = <>
              FieldName = 'ZSDH'
              Footer.Color = 14286847
              Footers = <>
              Title.Caption = 'Supplier|ID'
              Title.Color = 8454143
              Title.TitleButton = True
              Width = 45
              OnEditButtonClick = DBGridEh1Columns9EditButtonClick
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier|Name'
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ModelName'
              Footers = <>
              Title.Caption = 'ShoeModelName'
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              Title.TitleButton = True
              Width = 300
            end
            item
              Color = 15724527
              EditButtons = <>
              FieldName = 'UserID'
              Footer.Color = 15724527
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User|ID'
              Title.TitleButton = True
              Width = 45
            end
            item
              Color = 15724527
              DisplayFormat = 'yyyy/mm/dd hh:mm:ss'
              EditButtons = <>
              FieldName = 'UserDate'
              Footer.Color = 15724527
              Footer.DisplayFormat = 'yyyy/mm/dd hh:mm:ss'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User|Date'
              Title.TitleButton = True
              Width = 120
            end
            item
              EditButtons = <>
              FieldName = 'YN'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Visible = False
              Width = 100
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CheckData'
      ImageIndex = 1
      TabVisible = False
      object Splitter2: TSplitter
        Left = 0
        Top = 113
        Width = 1339
        Height = 0
        Cursor = crVSplit
        Align = alTop
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1339
        Height = 113
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 172
          Top = 11
          Width = 39
          Height = 15
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 444
          Top = 11
          Width = 55
          Height = 15
          Caption = 'MatName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 444
          Top = 59
          Width = 37
          Height = 15
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
        end
        object Edit12: TEdit
          Left = 172
          Top = 27
          Width = 45
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button3: TButton
          Left = 565
          Top = 19
          Width = 150
          Height = 57
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tw Cen MT'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object GroupBox6: TGroupBox
          Left = 230
          Top = 10
          Width = 203
          Height = 70
          Caption = 'Material Source'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object RadioButton1: TRadioButton
            Left = 8
            Top = 40
            Width = 169
            Height = 24
            Caption = 'Material from Prod. BOM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object RadioButton2: TRadioButton
            Left = 8
            Top = 16
            Width = 193
            Height = 26
            Caption = 'Material from Purchase Order'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
          end
        end
        object GroupBox7: TGroupBox
          Left = 8
          Top = 10
          Width = 145
          Height = 95
          Caption = 'FTY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object RadioButton3: TRadioButton
            Left = 8
            Top = 16
            Width = 49
            Height = 17
            Caption = 'LYV'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 8
            Top = 34
            Width = 49
            Height = 17
            Caption = 'LVL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object RadioButton5: TRadioButton
            Left = 72
            Top = 16
            Width = 49
            Height = 17
            Caption = 'LHG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object RadioButton6: TRadioButton
            Left = 72
            Top = 34
            Width = 49
            Height = 17
            Caption = 'LYM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object RadioButton7: TRadioButton
            Left = 40
            Top = 70
            Width = 49
            Height = 17
            Caption = 'ALL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object RadioButton8: TRadioButton
            Left = 7
            Top = 53
            Width = 49
            Height = 17
            Caption = 'LBT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object RadioButton9: TRadioButton
            Left = 71
            Top = 52
            Width = 49
            Height = 17
            Caption = 'LDT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Candara'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object Edit8: TEdit
          Left = 444
          Top = 27
          Width = 85
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit13: TEdit
          Left = 444
          Top = 75
          Width = 85
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 113
        Width = 1339
        Height = 478
        Align = alClient
        DataSource = DataSource2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'Calibri'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Candara'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Candara'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'clbh'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Footer.FieldName = 'clbh'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'MatID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Candara'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Footers = <>
            Title.Caption = 'MatName'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Candara'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Article'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Candara'
            Title.Font.Style = []
            Width = 200
          end>
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '     m.FTY, m.EffectiveDate, m.Season,'
      '     m.clbh, c.ywpm, c.zwpm, c.dwbh,'
      
        '     m.MOQ, m.Price_FOB, m.Prod_nfc_USD, m.Prod_nfc_VND, m.Price' +
        '_USD, m.Price_VND, m.Price_MMK, m.Price_TWD, m.Price_EUR, '
      '     m.zsdh, z.zsywjc, '
      '     m.ModelName, m.Remark,m.UserID, m.UserDate, m.YN '
      '     FROM Data_UP_Material m '
      '     LEFT JOIN clzl c ON c.cldh = m.clbh '
      '     LEFT JOIN zszl z ON Z.zsdh = m.zsdh '
      'where 1=2')
    UpdateObject = UpdateSQL1
    Left = 80
    Top = 146
    object Query1FTY: TStringField
      FieldName = 'FTY'
      FixedChar = True
    end
    object Query1EffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1Price_FOB: TFloatField
      FieldName = 'Price_FOB'
    end
    object Query1Prod_nfc_USD: TFloatField
      FieldName = 'Prod_nfc_USD'
    end
    object Query1Price_USD: TFloatField
      FieldName = 'Price_USD'
    end
    object Query1Price_MMK: TFloatField
      FieldName = 'Price_MMK'
    end
    object Query1Price_TWD: TFloatField
      FieldName = 'Price_TWD'
    end
    object Query1Price_EUR: TFloatField
      FieldName = 'Price_EUR'
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 15
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1ModelName: TStringField
      FieldName = 'ModelName'
      FixedChar = True
      Size = 50
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 30
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1MOQ: TIntegerField
      FieldName = 'MOQ'
    end
    object Query1Prod_nfc_VND: TIntegerField
      FieldName = 'Prod_nfc_VND'
    end
    object Query1Price_VND: TIntegerField
      FieldName = 'Price_VND'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 178
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Data_UP_Material'
      'set'
      ' MOQ=:MOQ,  '
      ' Price_FOB=:Price_FOB, '
      ' Prod_nfc_USD=:Prod_nfc_USD,  '
      ' Prod_nfc_VND=:Prod_nfc_VND, '
      ' Price_USD=:Price_USD, '
      ' Price_VND=:Price_VND,  '
      ' Price_MMK=:Price_MMK,  '
      ' Price_TWD=:Price_TWD,  '
      ' Price_EUR=:Price_EUR,  '
      ' ModelName=:ModelName, '
      ' Remark=:Remark,'
      ' UserID=:UserID, '
      ' UserDate=getdate(),'
      ' YN=:YN'
      'where'
      '  FTY = :FTY and'
      '  EffectiveDate = :EffectiveDate and'
      '  ZSDH = :ZSDH and'
      '  CLBH = :CLBH')
    InsertSQL.Strings = (
      'delete Data_UP_Material'
      'where FTY=:FTY and'
      '           EffectiveDate= :EffectiveDate and '
      '           CLBH=:CLBH and'
      '           ZSDH=:ZSDH'
      ''
      'insert into Data_UP_Material'
      
        '  (FTY,  EffectiveDate,  Season, CLBH, MOQ,  Price_FOB, Prod_nfc' +
        '_USD,  Prod_nfc_VND, '
      
        '   Price_USD, Price_VND,  Price_MMK,  Price_TWD,  Price_EUR,  ZS' +
        'DH, ModelName, Remark,UserID, UserDate,YN)'
      'values'
      
        ' (:FTY,  :EffectiveDate, :Season, :CLBH, :MOQ,  :Price_FOB, :Pro' +
        'd_nfc_USD,  :Prod_nfc_VND, :Price_USD, :Price_VND,  :Price_MMK, ' +
        ' :Price_TWD,  :Price_EUR,  :ZSDH, :ModelName, :Remark, :UserID, ' +
        'getdate(),:YN)')
    DeleteSQL.Strings = (
      'delete Data_UP_Material'
      'where FTY=:FTY and'
      '           EffectiveDate= :EffectiveDate and '
      '           CLBH=:CLBH and'
      '           ZSDH=:ZSDH')
    Left = 80
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 242
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object QryTmp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 177
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.xls'
    Left = 120
    Top = 177
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 172
    Top = 176
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select '#39'LYV'#39' as FTY, '#39'FW19'#39' as Season, aa.CLBH , (select top 1 y' +
        'wpm from clzl c where c.cldh=aa.CLBH) as ywpm, '
      
        'convert(varchar(200),(select a.cgno+'#39','#39' from (select cg.cgno fro' +
        'm liy_erp.dbo.cgzls cg where cg.CLBH=aa.CLBH group by cg.cgno ) ' +
        'a for xml path('#39#39'))) as Remark '
      'from '
      '(select  cl.clbh '
      'from  liy_erp.dbo.cgzls  cl '
      'group by cl.clbh ) aa '
      
        'where not exists (select 1 from Data_UP_Material dum where dum.F' +
        'TY='#39'LYV'#39' and dum.Season='#39'FW19'#39' and dum.CLBH=aa.CLBH) ')
    UpdateObject = UpdateSQL2
    Left = 172
    Top = 146
    object Query2FTY: TStringField
      FieldName = 'FTY'
      FixedChar = True
      Size = 15
    end
    object Query2Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object Query2clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 200
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 171
    Top = 239
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
    object Excel3: TMenuItem
      Caption = 'ExcelToImport(nocolor)'
      OnClick = Excel3Click
    end
  end
  object UpdateSQL2: TUpdateSQL
    Left = 171
    Top = 206
  end
end
