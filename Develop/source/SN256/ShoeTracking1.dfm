object ShoeTracking: TShoeTracking
  Left = 288
  Top = 115
  Width = 1380
  Height = 765
  Caption = 'ShoeTracking'
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
    Width = 1364
    Height = 726
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Analysis1'
      object Panel2: TPanel
        Left = 0
        Top = 105
        Width = 1356
        Height = 593
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 591
          Align = alClient
          DataSource = DataSource4
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Article'
              Footer.ValueType = fvtCount
              Footers = <>
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'ShoeName'
              Footers = <>
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'DevType'
              Footers = <>
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'Segment'
              Footers = <>
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'type'
              Footers = <>
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'Category'
              Footers = <>
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'Gender'
              Footers = <>
              Width = 45
            end
            item
              Color = clLime
              EditButtons = <>
              FieldName = 'Dropped'
              Footers = <>
              Title.Caption = 'Status|Dropped'
              Width = 60
            end
            item
              Color = clLime
              EditButtons = <>
              FieldName = 'Transfer'
              Footers = <>
              Title.Caption = 'Status|TransferOut'
              Width = 61
            end
            item
              Color = clLime
              EditButtons = <>
              FieldName = 'ProdTrsfrIn'
              Footers = <>
              Title.Caption = 'Status|TransferIn'
              Width = 71
            end
            item
              Color = clAqua
              EditButtons = <>
              FieldName = 'Year'
              Footers = <>
              Title.Caption = 'Production|Year'
              Width = 42
            end
            item
              Color = clAqua
              EditButtons = <>
              FieldName = 'Month'
              Footers = <>
              Title.Caption = 'Production|Month'
              Width = 66
            end
            item
              Color = clAqua
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Production|Pairs'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'TestLevel'
              Footers = <>
              Title.Caption = 'FT/WT'
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'TechLevel'
              Footers = <>
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'Outsole'
              Footers = <>
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'Last'
              Footers = <>
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'CuttingDie'
              Footers = <>
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'ToeCap'
              Footers = <>
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'ToeBumper'
              Footers = <>
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'Foxing'
              Footers = <>
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'HeelLogo'
              Footers = <>
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'PC_Release'
              Footers = <>
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'HandOver'
              Footers = <>
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'SizeRange'
              Footers = <>
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'ColorName'
              Footers = <>
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Model'
              Footers = <>
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'Color'
              Footers = <>
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'productiontype'
              Footers = <>
              Title.Caption = 'ProductionType'
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'Tier'
              Footers = <>
              Width = 101
            end>
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 66
        Align = alTop
        TabOrder = 1
        object Label3: TLabel
          Left = 7
          Top = 7
          Width = 62
          Height = 20
          Caption = 'DevType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 163
          Top = 8
          Width = 55
          Height = 20
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 286
          Top = 8
          Width = 80
          Height = 20
          Caption = 'ShoeName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Category: TLabel
          Left = 301
          Top = 39
          Width = 64
          Height = 20
          Caption = 'Category'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 194
          Top = 35
          Width = 22
          Height = 20
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 33
          Top = 34
          Width = 30
          Height = 20
          Caption = 'Sort'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Status: TLabel
          Left = 484
          Top = 7
          Width = 47
          Height = 20
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 489
          Top = 39
          Width = 43
          Height = 20
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 669
          Top = 7
          Width = 44
          Height = 20
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 650
          Top = 39
          Width = 65
          Height = 20
          Caption = 'Segment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 834
          Top = 7
          Width = 54
          Height = 20
          Caption = 'Gender'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label311: TLabel
          Left = 849
          Top = 38
          Width = 38
          Height = 20
          Caption = 'Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button3: TButton
          Left = 1033
          Top = 5
          Width = 63
          Height = 31
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object devtypet: TComboBox
          Left = 72
          Top = 7
          Width = 72
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            ''
            'Inline'
            'SMU')
        end
        object seasont: TEdit
          Left = 221
          Top = 7
          Width = 53
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object shoenamet: TEdit
          Left = 371
          Top = 7
          Width = 104
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object FDt: TEdit
          Left = 221
          Top = 33
          Width = 53
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CheckBox1: TCheckBox
          Left = 1208
          Top = 45
          Width = 78
          Height = 13
          Caption = 'Hide'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = CheckBox1Click
        end
        object ComboBox1: TComboBox
          Left = 72
          Top = 33
          Width = 71
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 6
          Text = 'Article'
          Items.Strings = (
            'Article'
            'FD'
            'ShoeName'
            'Pairs')
        end
        object ShoeNamed: TCheckBox
          Left = 1033
          Top = 45
          Width = 172
          Height = 14
          Caption = 'ShoeNameNULLIFY'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
          OnClick = CheckBox1Click
        end
        object Button4: TButton
          Left = 1103
          Top = 5
          Width = 61
          Height = 31
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button4Click
        end
        object ArtStatus: TComboBox
          Left = 536
          Top = 5
          Width = 103
          Height = 28
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 9
          Items.Strings = (
            ''
            'Dropped'
            'unDropped'
            'TransferIn'
            'TransferOut')
        end
        object Stagec: TComboBox
          Left = 536
          Top = 35
          Width = 103
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 10
          Items.Strings = (
            ''
            'CR1'
            'CR2'
            'SMS'
            'CFM'
            'SU1'
            'SU2'
            'SU3'
            'SU4')
        end
        object Categoryt: TComboBox
          Left = 371
          Top = 36
          Width = 104
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            ''
            'ChuckTaylor'
            'Court'
            'Lifestyle'
            'Skate')
        end
        object articlec: TEdit
          Left = 717
          Top = 6
          Width = 105
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object Segmentq: TDBComboBox
          Left = 717
          Top = 37
          Width = 105
          Height = 28
          Style = csDropDownList
          DataField = 'Segment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          Items.Strings = (
            ''
            'Converse All Star'
            'Converse Cons'
            'SportLifestyle'
            'ChuckTaylor')
          ParentFont = False
          TabOrder = 13
        end
        object genderq: TComboBox
          Left = 895
          Top = 4
          Width = 116
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 14
          Items.Strings = (
            ''
            'Crib'
            'Infant'
            'Junior'
            'Kids'
            'Unisex'
            'Women'
            'Youth')
        end
        object DBComboBox22: TDBComboBox
          Left = 894
          Top = 35
          Width = 118
          Height = 28
          Style = csDropDownList
          DataField = 'TYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          Items.Strings = (
            ''
            'Chuck70'
            'Chuck Taylor All Star'
            'Skate'
            'GTX'
            'W/P'
            'One Star'
            'Jack Purcell'
            'SA'
            'Cupsole'
            'Core Chuck'
            'CT70 foundation')
          ParentFont = False
          TabOrder = 15
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 66
        Width = 1356
        Height = 39
        Align = alTop
        TabOrder = 2
        Visible = False
        object FDc: TCheckBox
          Left = 13
          Top = 7
          Width = 79
          Height = 13
          Caption = 'FD'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = FDcClick
        end
        object Categoryc: TCheckBox
          Left = 163
          Top = 7
          Width = 65
          Height = 13
          Caption = 'Category'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CategorycClick
        end
        object Shoenamec: TCheckBox
          Left = 13
          Top = 20
          Width = 79
          Height = 13
          Caption = 'ShoeName'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = ShoenamecClick
        end
        object Devtypec: TCheckBox
          Left = 91
          Top = 20
          Width = 72
          Height = 13
          Caption = 'DevType'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = DevtypecClick
        end
        object Seasonc: TCheckBox
          Left = 91
          Top = 7
          Width = 59
          Height = 13
          Caption = 'Season'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = SeasoncClick
        end
        object Statusc: TCheckBox
          Left = 236
          Top = 7
          Width = 52
          Height = 13
          Caption = 'Status'
          Checked = True
          Color = clLime
          ParentColor = False
          State = cbChecked
          TabOrder = 5
          OnClick = StatuscClick
        end
        object Productionc: TCheckBox
          Left = 236
          Top = 20
          Width = 73
          Height = 13
          Caption = 'Production'
          Checked = True
          Color = clAqua
          ParentColor = False
          State = cbChecked
          TabOrder = 6
          OnClick = ProductioncClick
        end
        object TestLevelc: TCheckBox
          Left = 309
          Top = 7
          Width = 72
          Height = 13
          Caption = 'FT/WT'
          Checked = True
          State = cbChecked
          TabOrder = 7
          OnClick = TestLevelcClick
        end
        object Devc: TCheckBox
          Left = 309
          Top = 19
          Width = 79
          Height = 14
          Caption = 'TechLevel'
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = DevcClick
        end
        object Outsolec: TCheckBox
          Left = 387
          Top = 7
          Width = 59
          Height = 13
          Caption = 'Outsole'
          Checked = True
          State = cbChecked
          TabOrder = 9
          OnClick = OutsolecClick
        end
        object Lastc: TCheckBox
          Left = 387
          Top = 19
          Width = 46
          Height = 14
          Caption = 'Last'
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = LastcClick
        end
        object CutDiec: TCheckBox
          Left = 454
          Top = 6
          Width = 73
          Height = 14
          Caption = 'CuttingDie'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = CutDiecClick
        end
        object TopCapc: TCheckBox
          Left = 454
          Top = 19
          Width = 60
          Height = 14
          Caption = 'TopCap'
          Checked = True
          State = cbChecked
          TabOrder = 12
          OnClick = TopCapcClick
        end
        object ToeBumperc: TCheckBox
          Left = 531
          Top = 5
          Width = 78
          Height = 14
          Caption = 'ToeBumper'
          Checked = True
          State = cbChecked
          TabOrder = 13
          OnClick = ToeBumpercClick
        end
        object Foxingc: TCheckBox
          Left = 531
          Top = 18
          Width = 53
          Height = 14
          Caption = 'Foxing'
          Checked = True
          State = cbChecked
          TabOrder = 14
          OnClick = FoxingcClick
        end
        object HeelLogoc: TCheckBox
          Left = 609
          Top = 5
          Width = 66
          Height = 14
          Caption = 'HeelLogo'
          Checked = True
          State = cbChecked
          TabOrder = 15
          OnClick = HeelLogocClick
        end
        object CWAc: TCheckBox
          Left = 609
          Top = 18
          Width = 79
          Height = 14
          Caption = 'PC_Release'
          Checked = True
          State = cbChecked
          TabOrder = 16
          OnClick = CWAcClick
        end
        object HandOverc: TCheckBox
          Left = 697
          Top = 5
          Width = 73
          Height = 14
          Caption = 'HandOver'
          Checked = True
          State = cbChecked
          TabOrder = 17
          OnClick = HandOvercClick
        end
        object SizeRangec: TCheckBox
          Left = 696
          Top = 18
          Width = 73
          Height = 14
          Caption = 'SizeRange'
          Checked = True
          State = cbChecked
          TabOrder = 18
          OnClick = SizeRangecClick
        end
        object Genderc: TCheckBox
          Left = 781
          Top = 5
          Width = 66
          Height = 14
          Caption = 'Gender'
          Checked = True
          State = cbChecked
          TabOrder = 19
          OnClick = GendercClick
        end
        object ColorNamec: TCheckBox
          Left = 781
          Top = 18
          Width = 73
          Height = 14
          Caption = 'ColorName'
          Checked = True
          State = cbChecked
          TabOrder = 20
          OnClick = ColorNamecClick
        end
        object Modelc: TCheckBox
          Left = 865
          Top = 5
          Width = 47
          Height = 14
          Caption = 'Model'
          Checked = True
          State = cbChecked
          TabOrder = 21
          OnClick = ModelcClick
        end
        object Colorc: TCheckBox
          Left = 865
          Top = 18
          Width = 47
          Height = 14
          Caption = 'Color'
          Checked = True
          State = cbChecked
          TabOrder = 22
          OnClick = ColorcClick
        end
        object Productiontypec: TCheckBox
          Left = 930
          Top = 5
          Width = 99
          Height = 14
          Caption = 'ProductionType'
          Checked = True
          State = cbChecked
          TabOrder = 23
          OnClick = ProductiontypecClick
        end
        object Tierc: TCheckBox
          Left = 930
          Top = 18
          Width = 47
          Height = 14
          Caption = 'Tier'
          Checked = True
          State = cbChecked
          TabOrder = 24
          OnClick = TiercClick
        end
        object Segmentc: TCheckBox
          Left = 163
          Top = 20
          Width = 65
          Height = 13
          Caption = 'Segment'
          Checked = True
          State = cbChecked
          TabOrder = 25
          OnClick = SegmentcClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Analysis2'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 698
        Align = alClient
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 209
          Width = 1354
          Height = 134
          Align = alTop
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'allarticle'
              Footers = <>
              Title.Caption = 'Article|All'
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'inline'
              Footers = <>
              Title.Caption = 'Article|Inline'
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'smu'
              Footers = <>
              Title.Caption = 'Article|SMU'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'Incubate'
              Footers = <>
              Title.Caption = 'Article|Incubate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Great@Good'
              Footers = <>
              Title.Caption = 'Article|Great@Good'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'QuickResponse'
              Footers = <>
              Title.Caption = 'Article|QuickResponse'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlall'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|All'
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlinline'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|Inline'
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlsmu'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|SMU'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlIncubate'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|Incubate'
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlGreat@Good'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|Great@Good'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'haveddzlQuickResponse'
              Footers = <>
              Title.Caption = #25509#21934#22411#39636'HaveOrder|QuickResponse'
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'noddzl'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|All'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'noddzlInline'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|Inline'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'noddzlSmu'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|SMU'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'noddzlIncubate'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|Incubate'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'noddzlGreat@Good'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|Great@Good'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'noddzlQuickResponse'
              Footers = <>
              Title.Caption = #28961#25509#21934#22411#39636'NoOrder|QuickResponse'
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'transfer'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|All'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'transferInline'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|Inline'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'transferSMU'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|SMU'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'transferIncubate'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|Incubate'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'transferGreat@Good'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|Great@Good'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'transferQuickResponse'
              Footers = <>
              Title.Caption = #36681#20986#22411#39636'Transfer|QuickResponse'
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'dropped'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|All'
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'droppedInline'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|Inline'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'droppedSMU'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|SMU'
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'droppedIncubate'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|Incubate'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'droppedGreat@Good'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|Great@Good'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'droppedQuickResponse'
              Footers = <>
              Title.Caption = #21462#28040#22411#39636'Dropped|QuickResponse'
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              Title.Caption = #32317#25509#21934#38617#25976'|Pairs'
              Width = 78
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 1354
          Height = 58
          Align = alTop
          TabOrder = 1
          object Label1: TLabel
            Left = 0
            Top = 16
            Width = 86
            Height = 24
            Caption = 'SEASON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 742
            Top = 20
            Width = 16
            Height = 13
            Caption = 'To:'
          end
          object Label23: TLabel
            Left = 192
            Top = 16
            Width = 28
            Height = 24
            Caption = 'SR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 328
            Top = 16
            Width = 71
            Height = 24
            Caption = 'BRAND'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Button1: TButton
            Left = 476
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button1Click
          end
          object seasontext: TEdit
            Left = 91
            Top = 15
            Width = 92
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object CheckBox2: TCheckBox
            Left = 578
            Top = 20
            Width = 79
            Height = 13
            Caption = #25509#21934#26085#26399
            TabOrder = 2
          end
          object DTP1: TDateTimePicker
            Left = 639
            Top = 13
            Width = 97
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            TabOrder = 3
          end
          object DTP2: TDateTimePicker
            Left = 762
            Top = 13
            Width = 96
            Height = 21
            Date = 39255.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39255.000000000000000000
            TabOrder = 4
          end
          object SRTEXT: TEdit
            Left = 227
            Top = 15
            Width = 92
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBox5: TCheckBox
            Left = 576
            Top = 40
            Width = 305
            Height = 17
            Caption = 'SR'#26126#32048#20998#23395#31680'('#24038#19979#26694')'
            TabOrder = 6
          end
          object ComboBox3: TComboBox
            Left = 402
            Top = 16
            Width = 65
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 7
            Text = 'CDC'
            Items.Strings = (
              'CDC'
              'SKX'
              'SRL')
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 343
          Width = 1354
          Height = 354
          Align = alClient
          Caption = 'Panel6'
          TabOrder = 2
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 1352
            Height = 352
            ActivePage = TabSheet3
            Align = alClient
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = 'Article'
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 690
                Height = 324
                Align = alLeft
                Caption = 'Panel5'
                TabOrder = 0
                object DBGridEh1: TDBGridEh
                  Left = 1
                  Top = 42
                  Width = 688
                  Height = 281
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
                  SumList.Active = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  OnCellClick = DBGridEh1CellClick
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'jijie'
                      Footers = <>
                      Title.Caption = #23395#31680'|Season'
                      Width = 69
                    end
                    item
                      EditButtons = <>
                      FieldName = 'devtype'
                      Footers = <>
                      Title.Caption = #39006#21029'|DevType'
                      Width = 52
                    end
                    item
                      EditButtons = <>
                      FieldName = 'devcode'
                      Footer.Color = clYellow
                      Footer.ValueType = fvtCount
                      Footers = <>
                      Title.Caption = 'SR#'
                      Width = 101
                    end
                    item
                      EditButtons = <>
                      FieldName = 'XieXing'
                      Footers = <>
                      Title.Caption = #38795#22411'|XieXing'
                      Width = 76
                    end
                    item
                      EditButtons = <>
                      FieldName = 'shehao'
                      Footers = <>
                      Title.Caption = #33394#34399'|Shehao'
                      Width = 94
                    end
                    item
                      EditButtons = <>
                      FieldName = 'pairs'
                      Footer.Color = clYellow
                      Footer.ValueType = fvtSum
                      Footers = <>
                      Title.Caption = #32317#38617#25976'|pairs'
                      Width = 70
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Transfer'
                      Footers = <>
                      Title.Caption = #36681#20986'|Transfer'
                      Width = 65
                    end
                    item
                      EditButtons = <>
                      FieldName = 'dropped'
                      Footers = <>
                      Title.Caption = #21462#28040'|Dropped'
                      Width = 54
                    end>
                end
                object Panel27: TPanel
                  Left = 1
                  Top = 1
                  Width = 688
                  Height = 41
                  Align = alTop
                  TabOrder = 1
                  object Button2: TButton
                    Left = 12
                    Top = 8
                    Width = 74
                    Height = 25
                    Caption = 'Excel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnClick = Button2Click
                  end
                end
              end
              object Panel8: TPanel
                Left = 690
                Top = 0
                Width = 654
                Height = 324
                Align = alClient
                Caption = 'Panel8'
                TabOrder = 1
                object DBGridEh3: TDBGridEh
                  Left = 1
                  Top = 42
                  Width = 652
                  Height = 281
                  Align = alClient
                  DataSource = DataSource3
                  Flat = False
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -11
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  FooterRowCount = 1
                  SumList.Active = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'DDBH'
                      Footers = <>
                      Title.Caption = #35330#21934#32232#34399'|DDBH'
                      Width = 106
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Xiexing'
                      Footers = <>
                      Title.Caption = #38795#22411'|Xiexing'
                      Width = 97
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Shehao'
                      Footers = <>
                      Title.Caption = #33394#34399'|Shehao'
                      Width = 83
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Article'
                      Footers = <>
                      Width = 101
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Pairs'
                      Footer.Color = clYellow
                      Footer.ValueType = fvtSum
                      Footers = <>
                      Title.Caption = #38617#25976'|Pairs'
                      Width = 86
                    end
                    item
                      EditButtons = <>
                      FieldName = 'DDRQ'
                      Footers = <>
                      Title.Caption = #25509#21934#26085#26399'|DDRQ'
                      Width = 91
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ShipDate'
                      Footers = <>
                      Title.Caption = #20986#36008#26085#26399'|ShipDate'
                      Width = 91
                    end>
                end
                object Panel28: TPanel
                  Left = 1
                  Top = 1
                  Width = 652
                  Height = 41
                  Align = alTop
                  TabOrder = 1
                  object Button14: TButton
                    Left = 12
                    Top = 8
                    Width = 74
                    Height = 25
                    Caption = 'Excel'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnClick = Button14Click
                  end
                end
              end
            end
          end
        end
        object Panel23: TPanel
          Left = 1
          Top = 59
          Width = 1354
          Height = 150
          Align = alTop
          TabOrder = 3
          object DBEdit1: TDBEdit
            Left = 144
            Top = 28
            Width = 49
            Height = 21
            DataField = 'inline'
            DataSource = DataSource2
            TabOrder = 0
          end
          object inlineP: TEdit
            Left = 195
            Top = 28
            Width = 49
            Height = 21
            TabOrder = 1
            Text = ' '
          end
          object Edit7: TEdit
            Left = 55
            Top = 28
            Width = 85
            Height = 21
            TabOrder = 2
            Text = 'inline'
          end
          object Edit8: TEdit
            Left = 55
            Top = 52
            Width = 85
            Height = 21
            TabOrder = 3
            Text = 'SMU'
          end
          object DBEdit2: TDBEdit
            Left = 144
            Top = 52
            Width = 49
            Height = 21
            DataField = 'smu'
            DataSource = DataSource2
            TabOrder = 4
          end
          object SMUP: TEdit
            Left = 195
            Top = 52
            Width = 49
            Height = 21
            TabOrder = 5
            Text = ' '
          end
          object incubateP: TEdit
            Left = 195
            Top = 74
            Width = 49
            Height = 21
            TabOrder = 6
            Text = ' '
          end
          object DBEdit3: TDBEdit
            Left = 144
            Top = 74
            Width = 49
            Height = 21
            DataField = 'Incubate'
            DataSource = DataSource2
            TabOrder = 7
          end
          object Edit11: TEdit
            Left = 55
            Top = 74
            Width = 85
            Height = 21
            TabOrder = 8
            Text = 'Incubate'
          end
          object Edit12: TEdit
            Left = 55
            Top = 95
            Width = 85
            Height = 21
            TabOrder = 9
            Text = 'Great&Good'
          end
          object DBEdit4: TDBEdit
            Left = 144
            Top = 95
            Width = 49
            Height = 21
            DataField = 'Great@Good'
            DataSource = DataSource2
            TabOrder = 10
          end
          object GGP: TEdit
            Left = 195
            Top = 95
            Width = 49
            Height = 21
            TabOrder = 11
            Text = ' '
          end
          object Edit14: TEdit
            Left = 55
            Top = 115
            Width = 85
            Height = 21
            TabOrder = 12
            Text = 'QuickResponse'
          end
          object DBEdit5: TDBEdit
            Left = 144
            Top = 115
            Width = 49
            Height = 21
            DataField = 'QuickResponse'
            DataSource = DataSource2
            TabOrder = 13
          end
          object QRP: TEdit
            Left = 195
            Top = 115
            Width = 49
            Height = 21
            TabOrder = 14
            Text = ' '
          end
          object Edit6: TEdit
            Left = 55
            Top = 7
            Width = 85
            Height = 21
            TabOrder = 15
            Text = 'Total'
          end
          object DBEdit6: TDBEdit
            Left = 144
            Top = 7
            Width = 49
            Height = 21
            DataField = 'allarticle'
            DataSource = DataSource2
            TabOrder = 16
          end
          object Edit9: TEdit
            Left = 351
            Top = 7
            Width = 85
            Height = 21
            TabOrder = 17
            Text = 'Total'
          end
          object Edit10: TEdit
            Left = 351
            Top = 28
            Width = 85
            Height = 21
            TabOrder = 18
            Text = 'HaveOrder'
          end
          object Edit13: TEdit
            Left = 351
            Top = 52
            Width = 85
            Height = 21
            TabOrder = 19
            Text = 'NoOrder'
          end
          object Edit15: TEdit
            Left = 351
            Top = 74
            Width = 85
            Height = 21
            TabOrder = 20
            Text = 'Transfer'
          end
          object DBEdit7: TDBEdit
            Left = 440
            Top = 7
            Width = 49
            Height = 21
            DataField = 'allarticle'
            DataSource = DataSource2
            TabOrder = 21
          end
          object DBEdit8: TDBEdit
            Left = 440
            Top = 28
            Width = 49
            Height = 21
            DataField = 'haveddzlall'
            DataSource = DataSource2
            TabOrder = 22
          end
          object DBEdit9: TDBEdit
            Left = 440
            Top = 52
            Width = 49
            Height = 21
            DataField = 'noddzl'
            DataSource = DataSource2
            TabOrder = 23
          end
          object DBEdit10: TDBEdit
            Left = 440
            Top = 74
            Width = 49
            Height = 21
            DataField = 'transfer'
            DataSource = DataSource2
            TabOrder = 24
          end
          object haveorderP: TEdit
            Left = 491
            Top = 28
            Width = 49
            Height = 21
            TabOrder = 25
            Text = ' '
          end
          object noOrderP: TEdit
            Left = 491
            Top = 52
            Width = 49
            Height = 21
            TabOrder = 26
            Text = ' '
          end
          object TransferP: TEdit
            Left = 491
            Top = 74
            Width = 49
            Height = 21
            TabOrder = 27
            Text = ' '
          end
          object Edit19: TEdit
            Left = 351
            Top = 96
            Width = 85
            Height = 21
            TabOrder = 28
            Text = 'Dropped'
          end
          object DBEdit12: TDBEdit
            Left = 440
            Top = 98
            Width = 49
            Height = 21
            DataField = 'dropped'
            DataSource = DataSource2
            TabOrder = 29
          end
          object DroppedP: TEdit
            Left = 491
            Top = 98
            Width = 49
            Height = 21
            TabOrder = 30
            Text = ' '
          end
          object DBEdit13: TDBEdit
            Left = 195
            Top = 7
            Width = 49
            Height = 21
            DataField = 'jijie'
            DataSource = DataSource2
            TabOrder = 31
          end
          object DBEdit14: TDBEdit
            Left = 491
            Top = 7
            Width = 49
            Height = 21
            DataField = 'jijie'
            DataSource = DataSource2
            TabOrder = 32
          end
          object Edit16: TEdit
            Left = 351
            Top = 116
            Width = 85
            Height = 21
            TabOrder = 33
            Text = 'OrderPairs'
          end
          object DBEdit15: TDBEdit
            Left = 440
            Top = 117
            Width = 100
            Height = 21
            DataField = 'Pairs'
            DataSource = DataSource2
            TabOrder = 34
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Analysis3'
      ImageIndex = 2
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1594
        Height = 66
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 1
          Top = 17
          Width = 86
          Height = 24
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button5: TButton
          Left = 195
          Top = 17
          Width = 72
          Height = 27
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Edit1: TEdit
          Left = 91
          Top = 16
          Width = 92
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 66
        Width = 371
        Height = 491
        Align = alLeft
        TabOrder = 1
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 369
          Height = 489
          Align = alClient
          DataSource = DataSource5
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh5CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footer.Color = clYellow
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #23395#31680'|Season'
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'Category'
              Footers = <>
              Width = 142
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.Color = clYellow
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #32317#38617#25976'|Pairs'
              Width = 95
            end>
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 371
        Top = 66
        Width = 319
        Height = 491
        Align = alLeft
        DataSource = DataSource6
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh6CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Caption = #38283#30332#21729'|FD'
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'TotalArt'
            Footers = <>
            Title.Caption = #22411#39636#25976'|TotalArt'
            Width = 120
          end>
      end
      object DBGridEh7: TDBGridEh
        Left = 690
        Top = 66
        Width = 904
        Height = 491
        Align = alClient
        DataSource = DataSource7
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footer.Color = clYellow
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #22411#39636'|Article'
            Width = 166
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = #38795#21517'|ShoeName'
            Width = 212
          end
          item
            EditButtons = <>
            FieldName = 'xiexing'
            Footers = <>
            Title.Caption = #38795#22411'|Model'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'shehao'
            Footers = <>
            Title.Caption = #33394#34399'|Color'
            Width = 44
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'SampleOrderTracking'
      ImageIndex = 3
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1594
        Height = 557
        Align = alClient
        Caption = 'Panel11'
        TabOrder = 0
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 1592
          Height = 58
          Align = alTop
          TabOrder = 0
          object Label13: TLabel
            Left = 7
            Top = 17
            Width = 86
            Height = 24
            Caption = 'SEASON'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 98
            Top = 16
            Width = 91
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Button6: TButton
            Left = 202
            Top = 17
            Width = 72
            Height = 27
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 280
            Top = 18
            Width = 65
            Height = 27
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button7Click
          end
          object CheckBox3: TCheckBox
            Left = 371
            Top = 20
            Width = 91
            Height = 13
            Caption = 'NULLIFY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 59
          Width = 1592
          Height = 497
          Align = alClient
          Caption = 'Panel13'
          TabOrder = 1
          object DBGridEh8: TDBGridEh
            Left = 1
            Top = 1
            Width = 1590
            Height = 495
            Align = alClient
            DataSource = DataSource8
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Season'
                Footer.FieldName = 'Season'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
                Width = 165
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Width = 86
              end
              item
                EditButtons = <>
                FieldName = 'ShoeName'
                Footers = <>
                Width = 139
              end
              item
                EditButtons = <>
                FieldName = 'SampleOrder'
                Footers = <>
                Width = 125
              end
              item
                EditButtons = <>
                FieldName = 'TestNO'
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'preparationDate'
                Footers = <>
                Width = 122
              end
              item
                EditButtons = <>
                FieldName = 'CutDate'
                Footers = <>
                Width = 102
              end
              item
                EditButtons = <>
                FieldName = 'StitchingDate'
                Footers = <>
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'AssemblyDate'
                Footers = <>
                Width = 111
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'SampleOderQty1'
                Footer.FieldName = 'SampleOderQty1'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 129
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'SampleOderQty2'
                Footer.FieldName = 'SampleOderQty2'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 129
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'TBQty'
                Footer.FieldName = 'TBQty'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 54
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'InWarehouse'
                Footer.FieldName = 'InWarehouse'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 105
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'OutWarehouse'
                Footer.FieldName = 'OutWarehouse'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 112
              end>
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'HangTag'
      ImageIndex = 4
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label14: TLabel
          Left = 111
          Top = 20
          Width = 56
          Height = 16
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 219
          Top = 20
          Width = 26
          Height = 16
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 693
          Top = 20
          Width = 32
          Height = 16
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label229: TLabel
          Left = 458
          Top = 21
          Width = 14
          Height = 13
          Caption = 'FD'
        end
        object Label66: TLabel
          Left = 339
          Top = 20
          Width = 27
          Height = 16
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 574
          Top = 19
          Width = 36
          Height = 16
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 810
          Top = 18
          Width = 113
          Height = 16
          Caption = 'SampleOrderType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Season: TComboBox
          Left = 169
          Top = 16
          Width = 47
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            ''
            '14'
            '15'
            '16'
            '17'
            '18'
            '19')
        end
        object BB1: TBitBtn
          Left = 2
          Top = 0
          Width = 55
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BB1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333FF3FF3333333333CC30003333333333773777333333333C33
            3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
            33003377333337F33377333333333C333300333F333337F33377339333333C33
            3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
            330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
            330077F377F337F33377993399333C33330077FF773337F33377399993333C33
            33333777733337F333FF333333333C33300033333333373FF7773333333333CC
            3000333333333377377733333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object SR: TEdit
          Left = 247
          Top = 16
          Width = 82
          Height = 24
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object excel1: TButton
          Left = 56
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Excel'
          TabOrder = 3
          OnClick = excel1Click
        end
        object devtype: TComboBox
          Left = 728
          Top = 16
          Width = 61
          Height = 24
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
          Text = 'Inline'
          Items.Strings = (
            ''
            'Inline'
            'Great@Good'
            'QuickResponse'
            'Incubate'
            'SMU')
        end
        object FD: TComboBox
          Left = 478
          Top = 16
          Width = 79
          Height = 24
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 5
        end
        object SKU: TEdit
          Left = 367
          Top = 16
          Width = 82
          Height = 24
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Stage: TComboBox
          Left = 615
          Top = 16
          Width = 61
          Height = 24
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 7
          Items.Strings = (
            'NoDropped'
            'new'
            'no_ok'
            'ok'
            'Dropped'
            'Transfer'
            'NoTransfer')
        end
        object LAI: TComboBox
          Left = 928
          Top = 15
          Width = 81
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 8
          Items.Strings = (
            ''
            'LAIV'
            'LAIK'
            'LAIT')
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 49
        Width = 1356
        Height = 48
        Align = alTop
        TabOrder = 1
        object Label75: TLabel
          Left = 13
          Top = 14
          Width = 60
          Height = 16
          Caption = 'Segment: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 272
          Top = 12
          Width = 50
          Height = 20
          Caption = 'YSSM:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 520
          Top = 13
          Width = 89
          Height = 20
          Caption = 'Colorway ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit50: TDBEdit
          Left = 73
          Top = 11
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'Segment'
          DataSource = DataSource9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 323
          Top = 11
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'YSSM'
          DataSource = DataSource9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit29: TDBEdit
          Left = 611
          Top = 12
          Width = 164
          Height = 24
          Color = clHighlightText
          DataField = 'Colorway ID'
          DataSource = DataSource9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBGridEh9: TDBGridEh
        Left = 0
        Top = 97
        Width = 1356
        Height = 601
        Align = alClient
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'category'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'cut'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ShoeName'
            Footers = <>
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'Origin'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'MMD'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'GENDER'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MN'
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'Sample Size'
            Footers = <>
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'SCC'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'Tier'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Last'
            Footers = <>
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'Outsole'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Midsole'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Lining Category'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'Colorway ID'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SKU#'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Development Center'
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'Sample Date'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Kind of Hangtag'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'No#'
            Footers = <>
            Width = 43
          end>
      end
      object DBGridEh10: TDBGridEh
        Left = 0
        Top = 97
        Width = 1356
        Height = 601
        Align = alClient
        DataSource = DataSource9
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'category'
            Footers = <>
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'cut'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'Origin'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ShoeName'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'MMD'
            Footers = <>
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'GENDER'
            Footers = <>
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'MN'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Sample Size'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'SCC'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Tier'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Last'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Outsole'
            Footers = <>
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'Midsole'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Lining Category'
            Footers = <>
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'Colorway ID'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'SKU#'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Development Center'
            Footers = <>
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'Sample Date'
            Footers = <>
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'Kind of Hangtag'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'No#'
            Footers = <>
            Width = 47
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'SeasonSampleShoes'
      ImageIndex = 5
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 46
        Align = alTop
        TabOrder = 0
        object Label17: TLabel
          Left = 7
          Top = 17
          Width = 86
          Height = 24
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 98
          Top = 16
          Width = 91
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit3Change
        end
        object Button8: TButton
          Left = 202
          Top = 17
          Width = 72
          Height = 27
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 280
          Top = 18
          Width = 65
          Height = 27
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 46
        Width = 1356
        Height = 182
        Align = alTop
        TabOrder = 1
        object DBGridEh11: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 180
          Align = alClient
          DataSource = ShoeTotalDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'ShoeQty'
              Footers = <>
              Width = 129
            end
            item
              EditButtons = <>
              FieldName = 'USACC'
              Footers = <>
              Title.Caption = 'USD'
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'VNACC'
              Footers = <>
              Title.Caption = 'VND'
              Width = 200
            end>
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 228
        Width = 1356
        Height = 470
        Align = alClient
        Caption = 'Panel20'
        TabOrder = 2
        object DBGridEh13: TDBGridEh
          Left = 1
          Top = 1
          Width = 1354
          Height = 468
          Align = alClient
          DataSource = ShoeTotalsDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'zwsm'
              Footers = <>
              Title.Caption = 'Parts'
              Width = 410
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 84
            end>
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'SeasonSampleShoesDetail'
      ImageIndex = 6
      object Panel18: TPanel
        Left = 0
        Top = 0
        Width = 1356
        Height = 66
        Align = alTop
        TabOrder = 0
        object Label18: TLabel
          Left = 7
          Top = 11
          Width = 86
          Height = 24
          Caption = 'SEASON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 7
          Top = 37
          Width = 84
          Height = 24
          Caption = 'DevType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 235
          Top = 11
          Width = 97
          Height = 24
          Caption = 'Developer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit4: TEdit
          Left = 98
          Top = 10
          Width = 117
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit4Change
        end
        object Button10: TButton
          Left = 248
          Top = 37
          Width = 71
          Height = 26
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 332
          Top = 37
          Width = 65
          Height = 27
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button11Click
        end
        object ComboBox2: TComboBox
          Left = 98
          Top = 39
          Width = 117
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            'Great@Good'
            'Incubate'
            'Inline'
            'Quick Response'
            'SMU')
        end
        object Edit5: TEdit
          Left = 339
          Top = 10
          Width = 91
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = Edit4Change
        end
        object CheckBox4: TCheckBox
          Left = 442
          Top = 13
          Width = 79
          Height = 14
          Caption = 'hide upper'
          TabOrder = 5
          OnClick = CheckBox4Click
        end
      end
      object Panel19: TPanel
        Left = 0
        Top = 378
        Width = 1356
        Height = 320
        Align = alClient
        TabOrder = 1
        object DBGridEh12: TDBGridEh
          Left = 1
          Top = 1
          Width = 1592
          Height = 177
          Align = alClient
          DataSource = ShoeTotalDetailDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'devtype'
              Footers = <>
              Title.Caption = 'DevType'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.Caption = 'Developer'
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SR'
              Width = 166
            end
            item
              EditButtons = <>
              FieldName = 'xieming'
              Footers = <>
              Title.Caption = 'ShoeName'
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'Testno'
              Footer.FieldName = 'Testno'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Total TestNO'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'zwsm'
              Footers = <>
              Title.Caption = 'Chinese'
              Width = 161
            end
            item
              EditButtons = <>
              FieldName = 'qty'
              Footer.FieldName = 'qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Qty'
              Width = 100
            end>
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 66
        Width = 1356
        Height = 253
        Align = alTop
        Caption = 'Panel21'
        TabOrder = 2
        object DBGridEh14: TDBGridEh
          Left = 1
          Top = 1
          Width = 1592
          Height = 251
          Align = alClient
          DataSource = ShoetotalFDDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'devtype'
              Footers = <>
              Title.Caption = 'DevType'
              Width = 125
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.Caption = 'Developer'
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'Testno'
              Footer.FieldName = 'Testno'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Total Shoe'#39's request'
              Width = 153
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'devcode'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Total SR'
              Width = 84
            end>
        end
      end
      object Panel22: TPanel
        Left = 0
        Top = 319
        Width = 1356
        Height = 59
        Align = alTop
        TabOrder = 3
        Visible = False
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'TrialTimes'
      ImageIndex = 7
      object Panel24: TPanel
        Left = 0
        Top = 0
        Width = 1594
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label22: TLabel
          Left = 8
          Top = 16
          Width = 55
          Height = 20
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button12: TButton
          Left = 224
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button12Click
        end
        object Edit17: TEdit
          Left = 72
          Top = 16
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button13: TButton
          Left = 312
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button13Click
        end
      end
      object Panel25: TPanel
        Left = 0
        Top = 57
        Width = 1594
        Height = 296
        Align = alTop
        Caption = 'Panel25'
        TabOrder = 1
        object DBGridEh15: TDBGridEh
          Left = 1
          Top = 1
          Width = 1592
          Height = 294
          Align = alClient
          DataSource = TrialTimesDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR'
              Width = 224
            end
            item
              EditButtons = <>
              FieldName = 'xieming'
              Footers = <>
              Title.Caption = 'ShoeName'
              Width = 270
            end
            item
              EditButtons = <>
              FieldName = 'Level'
              Footers = <>
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'userid'
              Footers = <>
              Title.Caption = 'Developer|ID'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.Caption = 'Developer|Name'
              Width = 153
            end
            item
              EditButtons = <>
              FieldName = 'teamleader'
              Footers = <>
              Title.Caption = 'TeamLeader| ID'
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'TeamleaderName'
              Footers = <>
              Title.Caption = 'TeamLeader|Name'
              Width = 143
            end
            item
              EditButtons = <>
              FieldName = 'times'
              Footers = <>
              Title.Caption = 'TrialTimes'
              Width = 82
            end>
        end
      end
      object Panel26: TPanel
        Left = 0
        Top = 353
        Width = 1594
        Height = 204
        Align = alClient
        Caption = 'Panel26'
        TabOrder = 2
        object DBGridEh16: TDBGridEh
          Left = 1
          Top = 1
          Width = 1592
          Height = 202
          Align = alClient
          DataSource = TrialTimessDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Testno'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'SeesTage'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'Purpose'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Parts'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
            end>
        end
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = shoetotal
    Left = 192
    Top = 357
  end
  object shoetotal: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select B.KHDH,b.jijie,B.allarticle as allarticle,'
      'isnull(noddzl.noddzl,0) as noddzl,'
      
        'isnull(noddzlInline.noddzlInline,0) as noddzlInline,isnull(noddz' +
        'lSmu.noddzlSmu,0) as noddzlSmu,isnull(noddzlIncubate.noddzlIncub' +
        'ate,0) as noddzlIncubate,isnull(noddzlGreat@Good.noddzlGreat@Goo' +
        'd,0) as noddzlGreat@Good,isnull(noddzlQuickResponse.noddzlQuickR' +
        'esponse,0) as noddzlQuickResponse,'
      
        'isnull(smu.smu,0) as smu,isnull(Inline.inline,0) as inline ,isnu' +
        'll(Great@Good.Great@Good,0) as Great@Good,isnull(Incubate.Incuba' +
        'te,0) as Incubate,isnull(QuickResponse.QuickResponse,0) as Quick' +
        'Response,'
      ' isnull(Pairs.Pairs,0) as Pairs,'
      'isnull(transfer.transfer,0) as transfer,'
      
        'isnull(transferInline.transferInline,0) as transferInline,isnull' +
        '(transferSMU.transferSMU,0) as transferSMU,isnull(transferQuickR' +
        'esponse.transferQuickResponse,0) as transferQuickResponse,isnull' +
        '(transferIncubate.transferIncubate,0) as transferIncubate,isnull' +
        '(transferGreat@Good.transferGreat@Good,0) as transferGreat@Good,'
      'isnull(dropped.dropped,0) as dropped,'
      
        'isnull(droppedInline.droppedInline,0) as droppedInline,isnull(dr' +
        'oppedSMU.droppedSMU,0) as droppedSMU,isnull(droppedQuickResponse' +
        '.droppedQuickResponse,0) as droppedQuickResponse,isnull(droppedI' +
        'ncubate.droppedIncubate,0) as droppedIncubate,isnull(droppedGrea' +
        't@Good.droppedGreat@Good,0) as droppedGreat@Good,'
      'isnull(haveddzlall.haveddzlall,0) as haveddzlall,'
      
        'isnull(haveddzlinline.haveddzlinline,0) as haveddzlinline,isnull' +
        '(haveddzlsmu.haveddzlsmu,0) as haveddzlsmu,isnull(haveddzlGreat@' +
        'Good.haveddzlGreat@Good,0) as haveddzlGreat@Good,isnull(haveddzl' +
        'Incubate.haveddzlIncubate,0) as haveddzlIncubate,isnull(haveddzl' +
        'QuickResponse.haveddzlQuickResponse,0) as haveddzlQuickResponse'
      'from'
      '(select A.KHDH,count(*)as allarticle,jijie from'
      
        '(select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie' +
        ',kfxxzl.khdh from kfxxzl'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39')A'
      'group by a.jijie,a.KHDH) B --'#25152#26377#22411#39636
      ''
      'left join'
      '(select sum(isnull(a.Pairs,0))as Pairs,a.jijie from'
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' )A'
      'group by a.jijie) Pairs on Pairs.jijie = B.jijie --'#25152#26377#38617#25976
      ''
      ''
      'left join'
      '(select count(a.devcode) as haveddzlall,a.jijie from'
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null '
      
        'group by KFXXZL.devcode,KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao' +
        ',KFXXZL.jijie)A'
      
        'group by a.jijie)haveddzlall on haveddzlall.jijie=B.jijie  --'#26377#25509#21934 +
        #22411#39636
      ''
      ''
      'left join'
      '(select count(a.devcode) as haveddzlinline,a.jijie from'
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null and kfxxzl.devtype='#39'inline'#39' '
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,K' +
        'FXXZL.devcode )A'
      
        'group by a.jijie)haveddzlinline on haveddzlinline.jijie=B.jijie ' +
        '--Inline'#26377#25509#21934#22411#39636
      ''
      ''
      ''
      'left join'
      '(select count(a.devcode) as haveddzlsmu,a.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null and kfxxzl.devtype='#39'smu'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,K' +
        'FXXZL.devcode)A'
      
        'group by a.jijie)haveddzlsmu on haveddzlsmu.jijie=B.jijie --SMU'#26377 +
        #25509#21934#22411#39636
      ''
      'left join'
      '(select count(a.devcode) as haveddzlIncubate,a.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null and kfxxzl.devtype='#39'Incubate'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,K' +
        'FXXZL.devcode)A'
      
        'group by a.jijie)haveddzlIncubate on haveddzlIncubate.jijie=B.ji' +
        'jie --Incubate'#26377#25509#21934#22411#39636
      ''
      'left join'
      '(select count(a.devcode) as haveddzlGreat@Good,a.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null and kfxxzl.devtype='#39'Great@Good'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,K' +
        'FXXZL.devcode)A'
      
        'group by a.jijie)haveddzlGreat@Good on haveddzlGreat@Good.jijie=' +
        'B.jijie --Great@Good'#26377#25509#21934#22411#39636
      ''
      ''
      'left join'
      '(select count(a.devcode) as haveddzlQuickResponse,a.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,KF' +
        'XXZL.devcode from KFXXZL'
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfzl' +
        '_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39' and pairs<>'#39'0'#39' and ' +
        'pairs is not null and kfxxzl.devtype='#39'Quick Response'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,KFXXZL.shehao,KFXXZL.jijie,K' +
        'FXXZL.devcode)A'
      
        'group by a.jijie)haveddzlQuickResponse on haveddzlQuickResponse.' +
        'jijie=B.jijie --Quick Response'#26377#25509#21934#22411#39636
      ''
      ''
      ''
      'left join'
      '(select count(C.devcode) as noddzl,C.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C'
      'group by C.jijie) noddzl on noddzl.JiJie=B.jijie --'#28961#25509#21934#22411#39636
      ''
      ''
      'left join'
      '(select count(C1.devcode) as noddzlInline,C1.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie, KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfxxzl.devtype='#39'Inline'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.' +
        'jijie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C1'
      
        'group by C1.jijie) noddzlInline on noddzlInline.JiJie=B.jijie --' +
        'Inline'#28961#25509#21934#22411#39636
      ''
      ''
      'left join'
      '(select count(C2.devcode) as noddzlsmu,C2.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfxxzl.devtype='#39'SMU'#39' and kfzl_GS.GSBH='#39'CDC'#39'  and kfxxzl.ji' +
        'jie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C2'
      
        'group by C2.jijie) noddzlsmu on noddzlsmu.JiJie=B.jijie --SMU'#28961#25509#21934 +
        #22411#39636
      ''
      'left join'
      '(select count(C2.devcode) as noddzlGreat@Good,C2.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfxxzl.devtype='#39'Great@Good'#39' and kfzl_GS.GSBH='#39'CDC'#39'  and kf' +
        'xxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C2'
      
        'group by C2.jijie) noddzlGreat@Good on noddzlGreat@Good.JiJie=B.' +
        'jijie --Great@Good'#28961#25509#21934#22411#39636
      ''
      'left join'
      '(select count(C2.devcode) as noddzlQuickResponse,C2.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfxxzl.devtype='#39'Quick Response'#39' and kfzl_GS.GSBH='#39'CDC'#39'  an' +
        'd kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C2'
      
        'group by C2.jijie) noddzlQuickResponse on noddzlQuickResponse.Ji' +
        'Jie=B.jijie --Quick Response'#28961#25509#21934#22411#39636
      ''
      'left join'
      '(select count(C2.devcode) as noddzlIncubate,C2.jijie from '
      
        '(select KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,isnull(DDZL.Pai' +
        'rs,0) as Pairs,KFXXZL.jijie,KFXXZL.devcode from KFXXZL '
      
        'left join ddzl on ddzl.XieXing=KFXXZL.XieXing and ddzl.shehao=KF' +
        'XXZL.shehao '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and DDZL' +
        '.pairs is null and xxzlkf.dropped <>'#39'1'#39' and xxzlkf.transfer <>'#39'1' +
        #39' and kfxxzl.devtype='#39'Incubate'#39' and kfzl_GS.GSBH='#39'CDC'#39'  and kfxx' +
        'zl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.KHDH,kfxxzl.xiexing,kfxxzl.shehao,DDZL.Pairs,KFX' +
        'XZL.jijie,KFXXZL.devcode)C2'
      
        'group by C2.jijie) noddzlIncubate on noddzlIncubate.JiJie=B.jiji' +
        'e --Incubate'#28961#25509#21934#22411#39636
      ''
      ''
      'left join'
      '(select count(D.devcode) as smu,D.jijie from'
      
        '(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType f' +
        'rom KFXXZL '
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfxx' +
        'zl.DevType='#39'SMU'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39')D'
      'group by D.jijie) smu on smu.JiJie=B.jijie   --SMU'#25152#26377#22411#39636
      ''
      ''
      'left join'
      '(select count(D.DEVCODE) as Inline,D.jijie from'
      
        '(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType f' +
        'rom KFXXZL'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfxx' +
        'zl.DevType='#39'Inline'#39' and kfzl_GS.GSBH='#39'CDC'#39'  and kfxxzl.jijie lik' +
        'e '#39'%18U%'#39')D'
      'group by D.jijie) inline on inline.JiJie=B.jijie   --Inline'#25152#26377#22411#39636
      ''
      'left join'
      '(select count(D.DEVCODE) as Incubate,D.jijie from'
      
        '(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType f' +
        'rom KFXXZL'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfxx' +
        'zl.DevType='#39'Incubate'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie li' +
        'ke '#39'%18U%'#39')D'
      
        'group by D.jijie) Incubate on Incubate.JiJie=B.jijie  --Incubate' +
        #25152#26377#22411#39636
      ''
      'left join'
      '(select count(D.DEVCODE) as Great@Good,D.jijie from'
      
        '(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType f' +
        'rom KFXXZL'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfxx' +
        'zl.DevType='#39'Great@Good'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie ' +
        'like '#39'%18U%'#39')D'
      
        'group by D.jijie) Great@Good on Great@Good.JiJie=B.jijie  --Grea' +
        't@Good'#25152#26377#22411#39636
      ''
      'left join'
      '(select count(D.DEVCODE) as QuickResponse,D.jijie from'
      
        '(select KFXXZL.KHDH,KFXXZL.jijie,KFXXZL.devcode,KFXXZL.DevType f' +
        'rom KFXXZL'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.devcode is not null and kfxxzl.devcode<>'#39#39' and kfxx' +
        'zl.DevType='#39'Quick Response'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.ji' +
        'jie like '#39'%18U%'#39')D'
      
        'group by D.jijie) QuickResponse on QuickResponse.JiJie=B.jijie  ' +
        '--Quick Response'#25152#26377#22411#39636
      ''
      ''
      'left join'
      '(select count(F.DEVCODE) as transfer,F.jijie'
      'from'
      '(select KFXXZL.DEVCODE,KFXXZL.KHDH,'
      'KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO'
      'from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      'where kfxxzl.article is not null  and kfxxzl.article<>'#39#39' '
      'and xxzlkf.transfer='#39'1'#39
      'and kfzl_GS.GSBH='#39'CDC'#39' '
      'and kfxxzl.jijie like '#39'%18U%'#39
      'group by KFXXZL.DEVCODE,KFXXZL.KHDH,'
      'KFXXZL.jijie,XXZLKF.transfer,KFXXZL.XIEXING,KFXXZL.SHEHAO'
      ')F'
      
        'group by F.jijie) transfer on transfer.JiJie=B.jijie  --transfer' +
        #25152#26377#22411#39636
      ''
      ''
      'left join'
      '(select count(F1.DEVCODE) as transferInline,F1.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.transfer='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39' and kfxxzl.devtype='#39'Inline'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer' +
        ',KFXXZL.XIEXING,KFXXZL.SHEHAO)F1'
      
        'group by F1.jijie) transferInline on transferInline.JiJie=B.jiji' +
        'e  --TransferInline'
      ''
      ''
      'left join'
      '(select count(F2.DEVCODE) as transferSMU,F2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.transfer='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39' and kfxxzl.devtype='#39'SMU'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer' +
        ',KFXXZL.XIEXING,KFXXZL.SHEHAO)F2'
      
        'group by F2.jijie) transferSMU on transferSMU.JiJie=B.jijie   --' +
        'TransferSMU'
      ''
      'left join'
      '(select count(F2.DEVCODE) as TransferGreat@Good,F2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.transfer='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39' and kfxxzl.devtype='#39'Great@Good'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer' +
        ',KFXXZL.XIEXING,KFXXZL.SHEHAO)F2'
      
        'group by F2.jijie) TransferGreat@Good on TransferGreat@Good.JiJi' +
        'e=B.jijie   --TransferGreat@Good'
      ''
      'left join'
      '(select count(F2.DEVCODE) as TransferIncubate,F2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.transfer='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39' and kfxxzl.devtype='#39'Incubate'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer' +
        ',KFXXZL.XIEXING,KFXXZL.SHEHAO)F2'
      
        'group by F2.jijie) TransferIncubate on TransferIncubate.JiJie=B.' +
        'jijie   --TransferIncubate'
      ''
      ''
      ''
      'left join'
      '(select count(F2.DEVCODE) as TransferQuickResponse,F2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.transfer='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%' +
        '18U%'#39' and kfxxzl.devtype='#39'Quick Response'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.transfer' +
        ',KFXXZL.XIEXING,KFXXZL.SHEHAO)F2'
      
        'group by F2.jijie) TransferQuickResponse on TransferQuickRespons' +
        'e.JiJie=B.jijie   --TransferQuickResponse'
      ''
      ''
      'left join'
      '(select count(G.DEVCODE) as dropped,G.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfzl_GS.GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%1' +
        '8U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G'
      
        'group by G.jijie) dropped on dropped.JiJie=B.jijie   --DroppedAL' +
        'L'
      ''
      'left join'
      '(select count(G1.DEVCODE) as droppedInline,G1.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfxxzl.devtype='#39'Inline'#39' and kfzl_GS.GSBH='#39'CD' +
        'C'#39' and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G1'
      
        'group by G1.jijie) droppedInline on droppedInline.JiJie=B.jijie ' +
        '--DroppedInline'
      ''
      'left join'
      '(select count(G2.DEVCODE) as droppedSMU,G2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfxxzl.devtype='#39'SMU'#39' and kfzl_GS.GSBH='#39'CDC'#39' ' +
        'and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G2'
      
        'group by G2.jijie) droppedSMU on droppedSMU.JiJie=B.jijie --Drop' +
        'pedSMU'
      ''
      ''
      'left join'
      '(select count(G2.DEVCODE) as DroppedGreat@Good,G2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfxxzl.devtype='#39'Great@Good'#39' and kfzl_GS.GSBH' +
        '='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G2'
      
        'group by G2.jijie) DroppedGreat@Good on DroppedGreat@Good.JiJie=' +
        'B.jijie --DroppedGreat@Good'
      ''
      ''
      'left join'
      '(select count(G2.DEVCODE) as DroppedIncubate,G2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfxxzl.devtype='#39'Incubate'#39' and kfzl_GS.GSBH='#39 +
        'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G2'
      
        'group by G2.jijie) DroppedIncubate on DroppedIncubate.JiJie=B.ji' +
        'jie --DroppedIncubate'
      ''
      ''
      'left join'
      '(select count(G2.DEVCODE) as DroppedQuickResponse,G2.jijie from'
      
        '(select KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,K' +
        'FXXZL.XIEXING,KFXXZL.SHEHAO from KFXXZL'
      
        'left join xxzlkf on xxzlkf.XieXing=KFXXZL.XieXing and xxzlkf.she' +
        'hao=KFXXZL.shehao'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'where kfxxzl.DEVCODE is not null  and kfxxzl.DEVCODE<>'#39#39' and xxz' +
        'lkf.dropped='#39'1'#39' and kfxxzl.devtype='#39'Quick Response'#39' and kfzl_GS.' +
        'GSBH='#39'CDC'#39' and kfxxzl.jijie like '#39'%18U%'#39
      
        'group by KFXXZL.DEVCODE,KFXXZL.KHDH,KFXXZL.jijie,XXZLKF.dropped,' +
        'KFXXZL.XIEXING,KFXXZL.SHEHAO)G2'
      
        'group by G2.jijie) DroppedQuickResponse on DroppedQuickResponse.' +
        'JiJie=B.jijie --DroppedQuickResponse'
      ''
      ''
      'group by Pairs.Pairs,b.jijie,B.KHDH,B.allarticle,'
      
        'noddzl.noddzl,noddzlSmu.noddzlSmu,noddzlinline.noddzlinline,nodd' +
        'zlGreat@Good.noddzlGreat@Good,noddzlIncubate.noddzlIncubate,nodd' +
        'zlQuickResponse.noddzlQuickResponse,'
      
        'smu.smu,Inline.inline,Great@Good.Great@Good,Incubate.Incubate,Qu' +
        'ickResponse.QuickResponse,'
      
        'transfer.transfer,transferInline.transferInline,transferSMU.tran' +
        'sferSMU,transferQuickResponse.transferQuickResponse,transferIncu' +
        'bate.transferIncubate,transferGreat@Good.transferGreat@Good,'
      
        'dropped.dropped,droppedSMU.droppedSMU,droppedInline.droppedInlin' +
        'e,droppedQuickResponse.droppedQuickResponse,droppedIncubate.drop' +
        'pedIncubate,droppedGreat@Good.droppedGreat@Good,'
      
        'haveddzlsmu.haveddzlsmu,haveddzlinline.haveddzlinline,haveddzlal' +
        'l.haveddzlall,haveddzlQuickResponse.haveddzlQuickResponse,havedd' +
        'zlIncubate.haveddzlIncubate,haveddzlGreat@Good.haveddzlGreat@Goo' +
        'd'
      ''
      ''
      '')
    Left = 192
    Top = 396
    object shoetotalKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object shoetotaljijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object shoetotalallarticle: TIntegerField
      FieldName = 'allarticle'
    end
    object shoetotalnoddzl: TIntegerField
      FieldName = 'noddzl'
    end
    object shoetotalnoddzlInline: TIntegerField
      FieldName = 'noddzlInline'
    end
    object shoetotalnoddzlSmu: TIntegerField
      FieldName = 'noddzlSmu'
    end
    object shoetotalnoddzlIncubate: TIntegerField
      FieldName = 'noddzlIncubate'
    end
    object shoetotalnoddzlGreatGood: TIntegerField
      FieldName = 'noddzlGreat@Good'
    end
    object shoetotalnoddzlQuickResponse: TIntegerField
      FieldName = 'noddzlQuickResponse'
    end
    object shoetotalsmu: TIntegerField
      FieldName = 'smu'
    end
    object shoetotalinline: TIntegerField
      FieldName = 'inline'
    end
    object shoetotalGreatGood: TIntegerField
      FieldName = 'Great@Good'
    end
    object shoetotalIncubate: TIntegerField
      FieldName = 'Incubate'
    end
    object shoetotalQuickResponse: TIntegerField
      FieldName = 'QuickResponse'
    end
    object shoetotalPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object shoetotaltransfer: TIntegerField
      FieldName = 'transfer'
    end
    object shoetotaltransferInline: TIntegerField
      FieldName = 'transferInline'
    end
    object shoetotaltransferSMU: TIntegerField
      FieldName = 'transferSMU'
    end
    object shoetotaltransferQuickResponse: TIntegerField
      FieldName = 'transferQuickResponse'
    end
    object shoetotaltransferIncubate: TIntegerField
      FieldName = 'transferIncubate'
    end
    object shoetotaltransferGreatGood: TIntegerField
      FieldName = 'transferGreat@Good'
    end
    object shoetotaldropped: TIntegerField
      FieldName = 'dropped'
    end
    object shoetotaldroppedInline: TIntegerField
      FieldName = 'droppedInline'
    end
    object shoetotaldroppedSMU: TIntegerField
      FieldName = 'droppedSMU'
    end
    object shoetotaldroppedQuickResponse: TIntegerField
      FieldName = 'droppedQuickResponse'
    end
    object shoetotaldroppedIncubate: TIntegerField
      FieldName = 'droppedIncubate'
    end
    object shoetotaldroppedGreatGood: TIntegerField
      FieldName = 'droppedGreat@Good'
    end
    object shoetotalhaveddzlall: TIntegerField
      FieldName = 'haveddzlall'
    end
    object shoetotalhaveddzlinline: TIntegerField
      FieldName = 'haveddzlinline'
    end
    object shoetotalhaveddzlsmu: TIntegerField
      FieldName = 'haveddzlsmu'
    end
    object shoetotalhaveddzlGreatGood: TIntegerField
      FieldName = 'haveddzlGreat@Good'
    end
    object shoetotalhaveddzlIncubate: TIntegerField
      FieldName = 'haveddzlIncubate'
    end
    object shoetotalhaveddzlQuickResponse: TIntegerField
      FieldName = 'haveddzlQuickResponse'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query1
    Left = 156
    Top = 357
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select kfxxzl.devcode as Article,'
      'kfxxzl.FD,'
      'kfxxzl.xieming as ShoeName,'
      'kfxxzl.jijie as Season,'
      'kfxxzl.DevType,'
      'xxzlkf.Category,'
      'xxzlkf.Dropped,'
      'xxzlkf.Transfer,'
      'xxzlkf.Looksee,'
      'xxzlkf.transferin as ProdTrsfrIn,'
      
        'DATENAME(year,DATEADD(month,-2,CONVERT(datetime,cfm.idd,111)))as' +
        ' Year,'
      
        ' DATENAME(month,DATEADD(month,-2,CONVERT(datetime,cfm.idd,111)))' +
        'as Month,'
      'sum(ddzl.pairs) as Pairs,'
      'xxzlkf.FTWT as TestLevel,'
      'kfxxzl.kflx as TechLevel,'
      'kfxxzl.DDMH as Outsole,'
      'kfxxzl.xtmh as Last,'
      'xxzlkf.cdc as CuttingDie,'
      'xxzlkf.ToeCap,'
      'xxzlkf.ToeBumper,'
      'xxzlkf.Foxing,'
      'xxzlkf.HeelLogo,'
      ''
      
        'convert (varchar(12),CONVERT(datetime,cfm.rldate,111)) as PC_Rel' +
        'ease,'
      'cfm.HandOver,'
      'kfxxzl.logo as SizeRange,'
      'kfxxzl.Gender, '
      'kfxxzl.yssm as ColorName,'
      'kfxxzl.xiexing as Model,'
      'kfxxzl.shehao as Color,'
      'xxzlkf.productiontype,'
      'xxzlkf.Tier,'
      'xxzlkf.Segment,'
      'xxzlkf.type'
      'from kfxxzl'
      
        'left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      
        'left join cfm on kfxxzl.xiexing=cfm.xiexing and kfxxzl.shehao=cf' +
        'm.shehao '
      
        'left join ddzl on kfxxzl.xiexing=ddzl.xiexing and kfxxzl.shehao=' +
        'ddzl.shehao  '
      'where kfxxzl.jijie='#39'17s'#39' and cfm.idd is not null'
      
        'group by kfxxzl.devcode,kfxxzl.fd,kfxxzl.xieming,kfxxzl.jijie,kf' +
        'xxzl.devtype,xxzlkf.category,'
      
        'xxzlkf.dropped,xxzlkf.transfer,cfm.idd,kfxxzl.yssm,kfxxzl.xiexin' +
        'g,kfxxzl.shehao,xxzlkf.FTWT,kfxxzl.kflx,kfxxzl.DDMH,kfxxzl.xtmh,'
      'xxzlkf.cdc,cfm.rldate,kfxxzl.logo,kfxxzl.Gender,xxzlkf.ToeCap,'
      'xxzlkf.ToeBumper,'
      'xxzlkf.Foxing,cfm.HandOver,'
      
        'xxzlkf.HeelLogo,xxzlkf.Tier,xxzlkf.Looksee,xxzlkf.productiontype' +
        ',xxzlkf.transferin,xxzlkf.Segment,xxzlkf.type')
    Left = 156
    Top = 396
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1ShoeName: TStringField
      FieldName = 'ShoeName'
      FixedChar = True
      Size = 50
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object Query1Category: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 8
    end
    object Query1Dropped: TBooleanField
      FieldName = 'Dropped'
    end
    object Query1Transfer: TBooleanField
      FieldName = 'Transfer'
    end
    object Query1Looksee: TBooleanField
      FieldName = 'Looksee'
    end
    object Query1ProdTrsfrIn: TBooleanField
      FieldName = 'ProdTrsfrIn'
    end
    object Query1Year: TStringField
      FieldName = 'Year'
      FixedChar = True
      Size = 60
    end
    object Query1Month: TStringField
      FieldName = 'Month'
      FixedChar = True
      Size = 60
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1TestLevel: TStringField
      FieldName = 'TestLevel'
      FixedChar = True
      Size = 5
    end
    object Query1TechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 2
    end
    object Query1Outsole: TStringField
      FieldName = 'Outsole'
      FixedChar = True
      Size = 30
    end
    object Query1Last: TStringField
      FieldName = 'Last'
      FixedChar = True
      Size = 30
    end
    object Query1CuttingDie: TStringField
      FieldName = 'CuttingDie'
      FixedChar = True
      Size = 40
    end
    object Query1ToeCap: TStringField
      FieldName = 'ToeCap'
      FixedChar = True
      Size = 100
    end
    object Query1ToeBumper: TStringField
      FieldName = 'ToeBumper'
      FixedChar = True
      Size = 100
    end
    object Query1Foxing: TStringField
      FieldName = 'Foxing'
      FixedChar = True
      Size = 100
    end
    object Query1HeelLogo: TStringField
      FieldName = 'HeelLogo'
      FixedChar = True
      Size = 100
    end
    object Query1PC_Release: TStringField
      FieldName = 'PC_Release'
      FixedChar = True
      Size = 12
    end
    object Query1HandOver: TStringField
      FieldName = 'HandOver'
      FixedChar = True
      Size = 15
    end
    object Query1SizeRange: TStringField
      FieldName = 'SizeRange'
      FixedChar = True
      Size = 60
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 10
    end
    object Query1ColorName: TStringField
      FieldName = 'ColorName'
      FixedChar = True
      Size = 40
    end
    object Query1Model: TStringField
      FieldName = 'Model'
      FixedChar = True
      Size = 15
    end
    object Query1Color: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 5
    end
    object Query1productiontype: TStringField
      FieldName = 'productiontype'
      FixedChar = True
      Size = 15
    end
    object Query1Tier: TStringField
      FieldName = 'Tier'
      FixedChar = True
    end
    object Query1Segment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 15
    end
    object Query1type: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 50
    end
  end
  object QueryAll: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource2
    SQL.Strings = (
      'select main.*,isnull(pairs,0) pairs from ('
      
        'select kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jijie,' +
        'kfxxzl.khdh,kfxxzl.devtype,xxzlkf.Transfer,xxzlkf.dropped from k' +
        'fxxzl'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      'where kfxxzl.DEVCODE is not null and kfxxzl.DEVCODE<>'#39#39' '
      'and kfzl_GS.GSBH='#39'CDC'#39' '
      'and kfxxzl.jijie like '#39'%17s%'#39
      
        'group by kfxxzl.devcode,kfxxzl.XieXing,kfxxzl.shehao,kfxxzl.jiji' +
        'e,kfxxzl.khdh,kfxxzl.devtype,xxzlkf.Transfer,xxzlkf.dropped)main'
      
        'left join (select xiexing,shehao,sum(pairs) as pairs from  ddzl ' +
        'group by xiexing,shehao)ddzl on ddzl.xiexing=main.xiexing and dd' +
        'zl.shehao=main.shehao'
      'order by pairs desc')
    Left = 242
    Top = 397
    object QueryAlldevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object QueryAllXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object QueryAllshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object QueryAlljijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object QueryAllkhdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object QueryAllpairs: TIntegerField
      FieldName = 'pairs'
    end
    object QueryAlldevtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 10
    end
    object QueryAllTransfer: TBooleanField
      FieldName = 'Transfer'
    end
    object QueryAlldropped: TBooleanField
      FieldName = 'dropped'
    end
  end
  object DataSource1: TDataSource
    DataSet = QueryAll
    Left = 242
    Top = 357
  end
  object DDZLall: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      'select DDBH,Xiexing,Shehao,Article,Pairs,DDRQ,ShipDate from ddzl'
      'where xiexing=:xiexing and shehao=:shehao')
    Left = 290
    Top = 398
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'shehao'
        ParamType = ptUnknown
        Size = 6
      end>
    object DDZLallDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLallXiexing: TStringField
      FieldName = 'Xiexing'
      FixedChar = True
      Size = 15
    end
    object DDZLallShehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object DDZLallArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLallPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DDZLallShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLallDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
  end
  object DataSource3: TDataSource
    DataSet = DDZLall
    Left = 290
    Top = 357
  end
  object categorytotal: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.jijie as Season,xxzlkf.Category,sum(pairs) as Pair' +
        's from xxzlkf'
      
        'left join ddzl on ddzl.xiexing=xxzlkf.xiexing and ddzl.shehao=xx' +
        'zlkf.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      'where kfxxzl.jijie='#39'17S'#39
      'group by kfxxzl.jijie,xxzlkf.category ')
    Left = 346
    Top = 398
    object categorytotalSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object categorytotalCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 8
    end
    object categorytotalPairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DataSource5: TDataSource
    DataSet = categorytotal
    Left = 346
    Top = 358
  end
  object queryFD: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource5
    SQL.Strings = (
      ''
      
        'select kfxxzl.FD,count(kfxxzl.devcode) as TotalArt,xxzlkf.catego' +
        'ry from kfxxzl'
      
        'left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      'where xxzlkf.category='#39'CT'#39' and kfxxzl.jijie='#39'16S'#39
      'group by kfxxzl.FD,xxzlkf.category')
    Left = 396
    Top = 398
    object queryFDFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object queryFDTotalArt: TIntegerField
      FieldName = 'TotalArt'
    end
    object queryFDcategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource6: TDataSource
    DataSet = queryFD
    Left = 396
    Top = 358
  end
  object FDart: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource6
    SQL.Strings = (
      
        'select kfxxzl.devcode,xxzlkf.category,kfxxzl.xiexing,kfxxzl.sheh' +
        'ao,kfxxzl.xieming from kfxxzl'
      
        'left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      
        'group by kfxxzl.devcode,xxzlkf.category,kfxxzl.xiexing,kfxxzl.sh' +
        'ehao,kfxxzl.xieming')
    Left = 444
    Top = 399
    object FDartdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object FDartcategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
    object FDartxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object FDartshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object FDartxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource7: TDataSource
    DataSet = FDart
    Left = 444
    Top = 357
  end
  object DataSource8: TDataSource
    DataSet = SampleOrderTracking
    Left = 493
    Top = 356
  end
  object SampleOrderTracking: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.jijie as Season,kfxxzl.devcode as SR,kfxxzl.FD,kfx' +
        'xzl.xieming as ShoeName,ypzl.ypdh as SampleOrder,shoetest.TestNO' +
        ' ,'
      
        'ypzl.kfjd as Stage,shoetest.preparationDate,shoetest.CutDate,sho' +
        'etest.StitchingDate,shoetest.assembiyDate as AssemblyDate,'
      
        'ypzl.quantity as SampleOderQty1 ,ypzl.totalquantity as SampleOde' +
        'rQty2,shoetest2.qty as TBQty,shoetestin.Qty as InWarehouse,shoet' +
        'estout.qty as OutWarehouse from kfxxzl'
      
        ' left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao' +
        '=ypzl.shehao'
      ' left join shoetest on shoetest.ypdh=ypzl.ypdh'
      
        ' left join (select testno,sum(Qty) as Qty from shoetest2 group b' +
        'y  testno)shoetest2 on shoetest2.testno=shoetest.testno'
      
        ' left join (select testno,sum(Qty) as Qty from shoetestin group ' +
        'by  testno)shoetestin on shoetestin.testno=shoetest.testno'
      
        ' left join (select testno,sum(Qty) as Qty from shoetestOut group' +
        ' by  testno)shoetestout on shoetestout.testno=shoetest.testno'
      'where kfxxzl.jijie='#39'19S'#39' '
      ' and kfxxzl.devcode<>'#39#39
      ' and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      ' and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      ' and left(ypzl.ypdh,4)='#39'LAIV'#39
      ' order by devcode')
    Left = 493
    Top = 398
    object SampleOrderTrackingSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object SampleOrderTrackingSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object SampleOrderTrackingFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object SampleOrderTrackingShoeName: TStringField
      FieldName = 'ShoeName'
      FixedChar = True
      Size = 50
    end
    object SampleOrderTrackingSampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object SampleOrderTrackingTestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 10
    end
    object SampleOrderTrackingStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object SampleOrderTrackingpreparationDate: TDateTimeField
      FieldName = 'preparationDate'
    end
    object SampleOrderTrackingCutDate: TDateTimeField
      FieldName = 'CutDate'
    end
    object SampleOrderTrackingStitchingDate: TDateTimeField
      FieldName = 'StitchingDate'
    end
    object SampleOrderTrackingAssemblyDate: TDateTimeField
      FieldName = 'AssemblyDate'
    end
    object SampleOrderTrackingSampleOderQty1: TFloatField
      FieldName = 'SampleOderQty1'
    end
    object SampleOrderTrackingSampleOderQty2: TFloatField
      FieldName = 'SampleOderQty2'
    end
    object SampleOrderTrackingTBQty: TFloatField
      FieldName = 'TBQty'
    end
    object SampleOrderTrackingInWarehouse: TFloatField
      FieldName = 'InWarehouse'
    end
    object SampleOrderTrackingOutWarehouse: TFloatField
      FieldName = 'OutWarehouse'
    end
  end
  object DataSource9: TDataSource
    DataSet = kfxxzl
    Left = 548
    Top = 357
  end
  object kfxxzl: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select xxzlkf.Segment,xxzlkf.category,XXZLKF.cut,xxzlkf.Producti' +
        'onType,'#39#39' as Origin,kfxxzl.xieming as ShoeName'
      
        ',KFXXZL.YSSM,XXZLKF.MMD,KFXXZL.GENDER,'#39#39' as MN,XXZLKF.SS as '#39'Sam' +
        'ple Size'#39',XXZLKF.SCC,xxzlkf.Tier'
      
        ',kfxxzl.XTMH as Last,kfxxzl.DDMH as Outsole,xxzlkf.Midsole as Mi' +
        'dsole,XXZLKF.LiningMatDetail as '#39'Lining Category'#39',kfxxzl.DEVCODE' +
        ' as '#39'Colorway ID'#39','
      
        #39#39' as SKU#,'#39#39' as '#39'Development Center'#39', '#39#39' as '#39'Sample Date'#39', '#39#39' a' +
        's '#39'PAIRS'#39', '#39#39' as '#39'Kind of Hangtag'#39', '#39#39' as '#39'No#'#39' '
      'from XXZLKF'
      
        'left join KFXXZL on kfxxzl.SheHao=XXZLKF.SheHao and kfxxzl.XieXi' +
        'ng=XXZLKF.XieXing'
      
        'left join XXZL on xxzl.SheHao=XXZLKF.SheHao and xxzl.XieXing=XXZ' +
        'LKF.XieXing'
      'left join Fdgroups on Fdgroups.fdname=kfxxzl.FD'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=' +
        'ypzl.shehao'
      'where KFXXZL.jijie like '#39'%19S%'#39
      'and kfxxzl.xieming not like '#39'%NULLIFY%'#39' '
      'and kfxxzl.xieming not like '#39'%NULIFY%'#39' '
      'and kfxxzl.devcode <>'#39#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' '
      'and kfxxzl.article like '#39'%163386C%'#39
      
        'group by xxzlkf.Segment,xxzlkf.category,XXZLKF.cut,xxzlkf.Produc' +
        'tionType,kfxxzl.xieming  '
      
        ',KFXXZL.YSSM,XXZLKF.MMD,KFXXZL.GENDER,XXZLKF.SS,XXZLKF.SCC,xxzlk' +
        'f.Tier '
      
        ',kfxxzl.XTMH,kfxxzl.DDMH,XXZLKF.LiningMatDetail,kfxxzl.DEVCODE,x' +
        'xzlkf.Midsole'
      '')
    Left = 548
    Top = 399
    object kfxxzlSegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 15
    end
    object kfxxzlcategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
    object kfxxzlcut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 8
    end
    object kfxxzlProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
    object kfxxzlOrigin: TStringField
      FieldName = 'Origin'
      FixedChar = True
      Size = 1
    end
    object kfxxzlShoeName: TStringField
      FieldName = 'ShoeName'
      FixedChar = True
      Size = 50
    end
    object kfxxzlYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object kfxxzlMMD: TStringField
      FieldName = 'MMD'
      FixedChar = True
      Size = 200
    end
    object kfxxzlGENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object kfxxzlMN: TStringField
      FieldName = 'MN'
      FixedChar = True
      Size = 1
    end
    object kfxxzlSampleSize: TStringField
      FieldName = 'Sample Size'
      FixedChar = True
      Size = 5
    end
    object kfxxzlSCC: TStringField
      FieldName = 'SCC'
      FixedChar = True
      Size = 5
    end
    object kfxxzlTier: TStringField
      FieldName = 'Tier'
      FixedChar = True
      Size = 50
    end
    object kfxxzlLast: TStringField
      FieldName = 'Last'
      FixedChar = True
      Size = 30
    end
    object kfxxzlOutsole: TStringField
      FieldName = 'Outsole'
      FixedChar = True
      Size = 30
    end
    object kfxxzlMidsole: TStringField
      FieldName = 'Midsole'
      FixedChar = True
      Size = 30
    end
    object kfxxzlLiningCategory: TStringField
      FieldName = 'Lining Category'
      FixedChar = True
      Size = 255
    end
    object kfxxzlColorwayID: TStringField
      FieldName = 'Colorway ID'
      FixedChar = True
    end
    object kfxxzlSKU: TStringField
      FieldName = 'SKU#'
      FixedChar = True
      Size = 1
    end
    object kfxxzlDevelopmentCenter: TStringField
      FieldName = 'Development Center'
      FixedChar = True
      Size = 1
    end
    object kfxxzlSampleDate: TStringField
      FieldName = 'Sample Date'
      FixedChar = True
      Size = 1
    end
    object kfxxzlPAIRS: TStringField
      FieldName = 'PAIRS'
      FixedChar = True
      Size = 1
    end
    object kfxxzlKindofHangtag: TStringField
      FieldName = 'Kind of Hangtag'
      FixedChar = True
      Size = 1
    end
    object kfxxzlNo: TStringField
      FieldName = 'No#'
      FixedChar = True
      Size = 1
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 587
    Top = 400
  end
  object ShoeTotalQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select main.Season,ShoeQty,payment.USACC,payment.VNACC from ('
      
        'select left(testno,3) Season,sum(qty)as ShoeQty from shoetest2 w' +
        'here left(testno,3)='#39'19F'#39
      'group by left(testno,3))main'
      'left join ('
      'select season,sum(usacc) usacc,sum(vnacc) vnacc from ('
      
        'select cgzl.season,cgzls.cgno,kcrks.rkno,cgzls.qty,cgzls.clbh,is' +
        'null(usacc,0) usacc,isnull(vnacc,0) vnacc from cgzl'
      'left join cgzls on cgzls.cgno=cgzl.cgno'
      
        'left join kcrks on kcrks.docno=cgzls.cgno and kcrks.clbh=cgzls.c' +
        'lbh'
      'where cgzl.gsbh='#39'CDC'#39' and season ='#39'19F'#39
      
        'group by cgzls.cgno,cgzls.qty,cgzls.clbh,usacc,vnacc,kcrks.rkno,' +
        'cgzl.season )Payment'
      'group by season)Payment on Payment.season=main.Season')
    Left = 692
    Top = 412
    object ShoeTotalQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object ShoeTotalQryShoeQty: TFloatField
      FieldName = 'ShoeQty'
    end
    object ShoeTotalQryUSACC: TFloatField
      FieldName = 'USACC'
    end
    object ShoeTotalQryVNACC: TFloatField
      FieldName = 'VNACC'
    end
  end
  object ShoeTotalDS: TDataSource
    DataSet = ShoeTotalQry
    Left = 692
    Top = 372
  end
  object ShoeTotalDetailDS: TDataSource
    DataSet = ShoeTotalDetailQry
    Left = 724
    Top = 372
  end
  object ShoeTotalDetailQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select main.Season,main.Article,main.FD,main.Qty,main.Zwsm,Kfxxz' +
        'l.DevType,CountSR.Testno from ('
      
        'select Season,article,FD,sum(shoetest2.qty) Qty,shoetest2.zwsm f' +
        'rom shoetest left join (select Testno,sum(qty) Qty,parts,shoetes' +
        'tdetail.class,shoetestdetail.ywsm,'
      
        '           shoetestdetail.zwsm from shoetest2  left join (select' +
        ' YYBH,YWSM,ZWSM,class from shoetestdetail)shoetestdetail on shoe' +
        'testdetail.yybh=shoetest2.parts'
      
        '           group by Testno,parts,shoetestdetail.class,shoetestde' +
        'tail.ywsm,shoetestdetail.zwsm )shoetest2 on shoetest2.testno=sho' +
        'etest.testno'
      
        #9#9'   where Season='#39'20S'#39'  group by season,shoetest2.zwsm,article,' +
        'FD )main'
      'left join Kfxxzl on kfxxzl.devcode=main.article'
      
        'left join (select count(testno) as Testno,article from shoetest ' +
        'where season='#39'20S'#39' group by article )CountSR on CountSR.article=' +
        'main.article'
      'order by main.Season,kfxxzl.Devtype,main.FD,main.Article')
    Left = 724
    Top = 412
    object ShoeTotalDetailQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object ShoeTotalDetailQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object ShoeTotalDetailQrydevtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 15
    end
    object ShoeTotalDetailQryFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object ShoeTotalDetailQryxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object ShoeTotalDetailQryTestno: TIntegerField
      FieldName = 'Testno'
    end
    object ShoeTotalDetailQryzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 50
    end
    object ShoeTotalDetailQryqty: TFloatField
      FieldName = 'qty'
    end
  end
  object ShoeTotalsQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Season,sum(shoetest2.qty) Qty,shoetest2.zwsm from shoetes' +
        't left join (select Testno,sum(qty) Qty,parts,shoetestdetail.cla' +
        'ss,shoetestdetail.ywsm,'
      
        '           shoetestdetail.zwsm from shoetest2  left join (select' +
        ' YYBH,YWSM,ZWSM,class from shoetestdetail)shoetestdetail on shoe' +
        'testdetail.yybh=shoetest2.parts'
      
        '           group by Testno,parts,shoetestdetail.class,shoetestde' +
        'tail.ywsm,shoetestdetail.zwsm )shoetest2 on shoetest2.testno=sho' +
        'etest.testno'
      #9#9'   where Season='#39'20S'#39'  group by season,shoetest2.zwsm ')
    Left = 693
    Top = 501
    object ShoeTotalsQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object ShoeTotalsQryQty: TFloatField
      FieldName = 'Qty'
    end
    object ShoeTotalsQryzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 50
    end
  end
  object ShoeTotalsDS: TDataSource
    DataSet = ShoeTotalsQry
    Left = 692
    Top = 452
  end
  object ShoetotalFDDS: TDataSource
    DataSet = ShoetotalFDQry
    Left = 772
    Top = 372
  end
  object ShoetotalFDQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select main.Season,main.FD,main.Qty,kfxxzl.Testno,kfxxzl.devcode' +
        ',kfxxzl.devtype from ('
      
        #9'select Season,FD,sum(shoetest2.qty) Qty,DEVTP from shoetest lef' +
        't join (select Testno,sum(qty) Qty  from shoetest2  '
      
        '    group by Testno)shoetest2 on shoetest2.testno=shoetest.testn' +
        'o'
      '     where Season='#39'20S'#39'  group by season,FD,DEVTP )main'
      
        'left join (select count(Devcode)Devcode,Kfxxzl.FD,devtype,shoete' +
        'st.TESTNO from Kfxxzl '
      
        'LEFT JOIN (select count(testno) as Testno,FD,devtp from shoetest' +
        ' where season='#39'20S'#39' group by FD,devtp)shoetest ON shoetest.fd=Kf' +
        'xxzl.FD AND shoetest.DEVTP=Kfxxzl.DEVTYPE'
      'WHERE Kfxxzl.JIJIE='#39'20s'#39' '
      'GROUP BY Kfxxzl.FD,devtype,shoetest.TESTNO  '
      ')kfxxzl on kfxxzl.fd=main.fd AND kfxxzl.devtype=main.devtp '
      'order by main.Season,main.FD')
    Left = 772
    Top = 412
    object ShoetotalFDQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object ShoetotalFDQryFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object ShoetotalFDQryQty: TFloatField
      FieldName = 'Qty'
    end
    object ShoetotalFDQryTestno: TIntegerField
      FieldName = 'Testno'
    end
    object ShoetotalFDQrydevcode: TIntegerField
      FieldName = 'devcode'
    end
    object ShoetotalFDQrydevtype: TStringField
      FieldName = 'devtype'
      FixedChar = True
      Size = 15
    end
  end
  object TrialTimesQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,kfxxzl.xieming,kfxxzl.kflx Level,teamleade' +
        'r.userid,kfxxzl.FD,kfxxzl.jijie,shoetest.article,shoetest.times,' +
        'teamleader.teamleader,teamleader.TeamleaderName from kfxxzl '
      
        'left join (select stage,count(article) times ,article from shoet' +
        'est where stage='#39'SEE'#39' group by stage,article)shoetest on shoetes' +
        't.article=kfxxzl.devcode'
      
        'left join (select busers.userid,isnull(busers.Engname,'#39'null'#39') as' +
        ' busers,FDgroup.teamleader,isnull(teamleaderID.Engname,'#39'null'#39') a' +
        's TeamleaderName from busers'
      #9'       left join FDgroups on busers.userid=FDgroups.FDID'
      #9'       left join FDgroup on FDgroups.FDTeam=FDgroup.FDTeam'
      
        #9'       left join busers teamleaderID on teamleaderID.userid=FDg' +
        'roup.teamleader'
      
        #9'       left join busers teamleader2ID on teamleader2ID.userid=F' +
        'Dgroup.teamleader2'
      '           )teamleader on teamleader.busers=kfxxzl.fd'
      'where jijie='#39'21S'#39'   and shoetest.article is not null'
      'order by shoetest.times desc'
      '')
    Left = 844
    Top = 409
    object TrialTimesQryjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object TrialTimesQrydevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object TrialTimesQryxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object TrialTimesQryLevel: TStringField
      FieldName = 'Level'
      FixedChar = True
      Size = 3
    end
    object TrialTimesQryuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object TrialTimesQryFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object TrialTimesQryteamleader: TStringField
      FieldName = 'teamleader'
      FixedChar = True
      Size = 6
    end
    object TrialTimesQryTeamleaderName: TStringField
      FieldName = 'TeamleaderName'
      FixedChar = True
    end
    object TrialTimesQrytimes: TIntegerField
      FieldName = 'times'
    end
    object TrialTimesQryarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
  end
  object TrialTimesDS: TDataSource
    DataSet = TrialTimesQry
    Left = 844
    Top = 377
  end
  object TrialTimessQry: TQuery
    DatabaseName = 'DB'
    DataSource = TrialTimesDS
    SQL.Strings = (
      ''
      ''
      
        'select shoetest2.Testno,Stage,SeesTage,Purpose,shoetestdetail.yw' +
        'sm as Parts,shoetest2.Qty from shoetest '
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestdetail on shoetestdetail.yybh=shoetest2.parts'
      ''
      'where article=:article and stage='#39'SEE'#39)
    Left = 892
    Top = 409
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'article'
        ParamType = ptUnknown
        Size = 21
      end>
    object TrialTimessQryTestno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object TrialTimessQryStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object TrialTimessQrySeesTage: TStringField
      FieldName = 'SeesTage'
      FixedChar = True
      Size = 4
    end
    object TrialTimessQryPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 25
    end
    object TrialTimessQryParts: TStringField
      FieldName = 'Parts'
      FixedChar = True
      Size = 50
    end
    object TrialTimessQryQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object TrialTimessDS: TDataSource
    DataSet = TrialTimessQry
    Left = 892
    Top = 369
  end
end
