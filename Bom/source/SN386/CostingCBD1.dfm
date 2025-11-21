object CostingCBD: TCostingCBD
  Left = 461
  Top = 184
  Width = 1547
  Height = 700
  Caption = 'Costing CBD'
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
  object Label2: TLabel
    Left = 0
    Top = 80
    Width = 90
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'FlexMTLCode'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 200
    Top = 64
    Width = 42
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1531
    Height = 661
    ActivePage = TabSheet6
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Upload Excel'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1523
        Height = 100
        Align = alTop
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TargetSamplePrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FOB'
            Footers = <>
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'TotalMaterialCost'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Labor'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Overhead'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'C2BL'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'C2BO'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Profit'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ProfitRate'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'MoldCharge'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TTFreight'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Remark_'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RefModel'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FlexSeason'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentSeason'
            Footers = <>
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentCenter'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'SampleSize'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingSize'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SizeRange'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GenderClass'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Cut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TechLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Last'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'DistributionType'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'PlanningLevel2'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'ProductLine'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DirectToDC'
            Footers = <>
            Title.Caption = 'DToDC'
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'UpperMaterial'
            Footers = <>
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDeveloper'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMCostDataStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceSubmitStatus'
            Footers = <>
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDevManager'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCosting'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCostingManager'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CLOCosting'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CLOCostingManager'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedColorwayStatus'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedSourceFlag'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedCLOConfirmationDate'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedByFTYBOMCost'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryConfirmation'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedDevelopment'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedDateFTYBOMCost'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceSubmit'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceStatus'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'InitialBuyMonth'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'ForecastLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductDescription'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'ModelDescription'
            Footers = <>
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayLongName'
            Footers = <>
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'SourceFlag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'EffectBuy'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label22: TLabel
          Left = 200
          Top = 33
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 56
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 200
          Top = 8
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 312
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 336
          Top = 32
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PMRNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 496
          Top = 33
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'EffectBuy:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 56
          Top = 9
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 1224
          Top = 17
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BB3: TBitBtn
          Left = 808
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BB3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BB2: TBitBtn
          Left = 760
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BB2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BB1: TButton
          Left = 16
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Import'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BB1Click
        end
        object BitBtn3: TBitBtn
          Left = 856
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object CheckBox1: TCheckBox
          Left = 1344
          Top = 25
          Width = 113
          Height = 17
          Caption = 'Upload&AutoDel'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
          Visible = False
        end
        object ComboBox1: TComboBox
          Left = 262
          Top = 28
          Width = 75
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BitBtn8: TBitBtn
          Left = 712
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn8Click
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
        object Edit8: TEdit
          Left = 99
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit9: TEdit
          Left = 261
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = '25F'
        end
        object Edit10: TEdit
          Left = 355
          Top = 1
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Text = 'FNL'
        end
        object CheckBox6: TCheckBox
          Left = 1344
          Top = 1
          Width = 137
          Height = 17
          Caption = 'Save&FillUsage'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 10
          Visible = False
        end
        object BView1: TBitBtn
          Left = 912
          Top = 24
          Width = 75
          Height = 25
          Caption = 'ViewAll'
          TabOrder = 11
          OnClick = BView1Click
        end
        object BView2: TBitBtn
          Left = 992
          Top = 24
          Width = 75
          Height = 25
          Caption = 'ViewPrice'
          TabOrder = 12
          OnClick = BView2Click
        end
        object BView3: TBitBtn
          Left = 1072
          Top = 24
          Width = 75
          Height = 25
          Caption = 'View2nd LO'
          TabOrder = 13
          OnClick = BView3Click
        end
        object ED_PMR: TEdit
          Left = 389
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object ED_PMRBuy: TEdit
          Left = 563
          Top = 25
          Width = 118
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object BBPMRDay: TBitBtn
          Left = 504
          Top = 0
          Width = 57
          Height = 25
          Caption = 'PMREBuy'
          TabOrder = 16
          OnClick = BBPMRDayClick
        end
        object Edit11: TEdit
          Left = 99
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object BBToday: TBitBtn
          Left = 560
          Top = 0
          Width = 33
          Height = 25
          Caption = 'Now'
          TabOrder = 18
          OnClick = BBTodayClick
        end
        object CheckBox9: TCheckBox
          Left = 624
          Top = 8
          Width = 57
          Height = 17
          Caption = 'Mine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object BBadmin_runall: TBitBtn
          Left = 1264
          Top = 0
          Width = 57
          Height = 49
          Hint = 'Save Current'
          Caption = 'SaveALL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
          Visible = False
          OnClick = BBadmin_runallClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object CheckBox13: TCheckBox
          Left = 912
          Top = 1
          Width = 113
          Height = 17
          Caption = 'Only2ndLO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          OnClick = CheckBox13Click
        end
        object Edit24: TEdit
          Left = 1003
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Visible = False
        end
        object BitBtn12: TBitBtn
          Left = 1152
          Top = 24
          Width = 75
          Height = 25
          Caption = 'ViewProjects'
          TabOrder = 23
          OnClick = BitBtn12Click
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 149
        Width = 1523
        Height = 484
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 10
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh6DblClick
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'No'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
            Title.Caption = '2ndLO_No'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PartName'
            Footers = <>
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Percentage'
            Footers = <>
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'MaterialComments'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'FlexMaterialCode'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ColorComments'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ColorGroup'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Measure'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'MeasureOVR'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'TnRP'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'BaseMaterialPrice'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TRPnGRPUpcharge'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SupplierFreightValue'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PriceStatus'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'MaterialCost'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PriceOVR'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'NetUsage'
            Footers = <>
            Width = 60
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CutLoss'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SizeGrading'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'T1Freight'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'LandedCost'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'GrossUsage'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'UnitCost'
            Footers = <>
            Width = 40
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            Width = 50
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ColorQty'
            Footers = <>
            Width = 25
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'ColorQty_Neon'
            Footers = <>
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'GUMColor'
            Footers = <>
            Width = 25
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondLF'
            Footers = <>
            Width = 90
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondOF'
            Footers = <>
            Width = 80
          end
          item
            Color = clHighlightText
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'SecondLabor_auto'
            Footers = <>
            Width = 50
          end
          item
            Color = clHighlightText
            DisplayFormat = '0.0000'
            EditButtons = <>
            FieldName = 'SecondOverhead_auto'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'moldsPperson'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'pairPmold'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'PCsPPair'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'TurnOverRate'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MTL cost'
      ImageIndex = 1
      object Label8: TLabel
        Left = 8
        Top = 24
        Width = 42
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SKU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 121
        Width = 1523
        Height = 512
        Align = alClient
        DataSource = DataSource3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridEh2CellClick
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Flag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MTL_No'
            Footers = <>
            ReadOnly = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'Color_No'
            Footers = <>
            ReadOnly = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            ReadOnly = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'MaterialSeason'
            Footers = <
              item
                ValueType = fvtCount
              end>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'PriceStatus'
            Footers = <>
            ReadOnly = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'FlexMaterialCode'
            Footers = <>
            ReadOnly = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            ReadOnly = True
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'MaterialComments'
            Footers = <>
            ReadOnly = True
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            ReadOnly = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            ReadOnly = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'T1Freight'
            Footers = <>
            ReadOnly = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'TnRP'
            Footers = <>
            ReadOnly = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            ReadOnly = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Measure'
            Footers = <>
            ReadOnly = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'MeasureOVR'
            Footers = <>
            ReadOnly = True
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
            ReadOnly = True
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'ColorComments'
            Footers = <>
            ReadOnly = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ColorGroup'
            Footers = <>
            ReadOnly = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PriceOVR'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'MaterialCost'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'BaseMaterialPrice'
            Footers = <>
            ReadOnly = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'SupplierFreightValue'
            Footers = <>
            ReadOnly = True
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'TRPnGRPUpcharge'
            Footers = <>
            ReadOnly = True
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            ReadOnly = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Material_text'
            Footers = <>
            ReadOnly = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 121
        Align = alTop
        TabOrder = 1
        object Label3: TLabel
          Left = 496
          Top = 8
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 272
          Top = 8
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FlexMTLCode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 256
          Top = 40
          Width = 106
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 480
          Top = 40
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ColorComment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 480
          Top = 73
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ColorGroup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 296
          Top = 73
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Material:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 120
          Top = 48
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MTL #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 120
          Top = 80
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 112
          Top = 16
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Compenent:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 0
          Top = 80
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PriceStatus:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 504
          Top = 97
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = -16
          Top = 48
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BA8: TBitBtn
          Left = 840
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BA8Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BA6: TBitBtn
          Left = 744
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BA6Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BA1: TBitBtn
          Left = 696
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BA1Click
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
        object ED1: TEdit
          Left = 571
          Top = 0
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ED2: TEdit
          Left = 61
          Top = 9
          Width = 52
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '25F'
        end
        object ED3: TEdit
          Left = 363
          Top = 0
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CB3: TCheckBox
          Left = 936
          Top = 88
          Width = 113
          Height = 17
          Caption = 'MaterialComments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object CB2: TCheckBox
          Left = 936
          Top = 72
          Width = 113
          Height = 17
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object CB1: TCheckBox
          Left = 936
          Top = 56
          Width = 129
          Height = 17
          Caption = 'FlexMaterialCode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object ED5: TEdit
          Left = 571
          Top = 32
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object ED6: TEdit
          Left = 571
          Top = 65
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object CB4: TCheckBox
          Left = 840
          Top = 56
          Width = 81
          Height = 17
          Caption = 'Tooling'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object CB6: TCheckBox
          Left = 936
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Color'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object CB7: TCheckBox
          Left = 936
          Top = 24
          Width = 113
          Height = 17
          Caption = 'ColorComments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object CB5: TCheckBox
          Left = 840
          Top = 72
          Width = 81
          Height = 17
          Caption = 'TnRP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object CB8: TCheckBox
          Left = 936
          Top = 40
          Width = 113
          Height = 17
          Caption = 'ColorGroup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ED4: TEdit
          Left = 363
          Top = 32
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object ED7: TEdit
          Left = 363
          Top = 65
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object ED8: TEdit
          Left = 195
          Top = 40
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object ED9: TEdit
          Left = 195
          Top = 72
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object CheckBox2: TCheckBox
          Left = 696
          Top = 56
          Width = 145
          Height = 17
          Caption = 'MTL cost issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object CheckBox5: TCheckBox
          Left = 696
          Top = 72
          Width = 145
          Height = 17
          Caption = 'Materail code issue'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          OnClick = CheckBox5Click
        end
        object ED10: TEdit
          Left = 187
          Top = 8
          Width = 78
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object ED11: TEdit
          Left = 75
          Top = 72
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object ComboBox3: TComboBox
          Left = 582
          Top = 92
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 24
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BA7: TBitBtn
          Left = 792
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          OnClick = BA7Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object CheckBox11: TCheckBox
          Left = 696
          Top = 88
          Width = 145
          Height = 17
          Caption = 'MTL cost>0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object Edit23: TEdit
          Left = 59
          Top = 40
          Width = 54
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object CheckBox15: TCheckBox
          Left = 696
          Top = 104
          Width = 145
          Height = 17
          Caption = 'PriceOVR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '2nd LO'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 73
        Width = 1523
        Height = 560
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
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Component'
            Footers = <>
            ReadOnly = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'Process_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = '2ndLO_No'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'PartName'
            Footers = <>
            ReadOnly = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'MaterialComments'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ColorQty'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ColorQty_Neon'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'GUMColor'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'moldsPperson'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'pairPmold'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PCsPPair'
            Footers = <>
            Width = 30
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'TurnOverRate'
            Footers = <>
            Width = 33
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondLF'
            Footers = <>
            Width = 139
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SecondOF'
            Footers = <>
            Width = 144
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'SecondLabor_auto'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'SecondOverhead_auto'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'CostingSeason'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'No'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'GrossUsage'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'UnitCost'
            Footers = <>
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 73
        Align = alTop
        TabOrder = 1
        object Label6: TLabel
          Left = 323
          Top = 16
          Width = 47
          Height = 16
          Alignment = taRightJustify
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 7
          Top = 40
          Width = 27
          Height = 16
          Alignment = taRightJustify
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 7
          Top = 16
          Width = 19
          Height = 16
          Alignment = taRightJustify
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 424
          Top = 17
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label18: TLabel
          Left = 140
          Top = 16
          Width = 69
          Height = 16
          Alignment = taRightJustify
          Caption = 'Component'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 145
          Top = 40
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = '2ndLO_No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 606
          Top = 56
          Width = 251
          Height = 16
          Alignment = taRightJustify
          Caption = '"USAGE"=GrossUsage; "COST"=UnitCost'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 324
          Top = 40
          Width = 46
          Height = 16
          Alignment = taRightJustify
          Caption = 'Tooling'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EDC2: TEdit
          Left = 40
          Top = 32
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EDC5: TEdit
          Left = 373
          Top = 9
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BC1: TBitBtn
          Left = 584
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BC1Click
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
        object EDC1: TEdit
          Left = 27
          Top = 9
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CheckBox3: TCheckBox
          Left = 816
          Top = 0
          Width = 57
          Height = 17
          Caption = 'Mine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object EDC3: TEdit
          Left = 211
          Top = 9
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object BC2: TBitBtn
          Left = 632
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BC2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object EDC4: TEdit
          Left = 211
          Top = 33
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object BitBtn1: TBitBtn
          Left = 728
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = BA8Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object CheckBox4: TCheckBox
          Left = 816
          Top = 32
          Width = 81
          Height = 17
          Caption = 'UnUsing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = CheckBox4Click
        end
        object CheckBox7: TCheckBox
          Left = 816
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Using'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = CheckBox7Click
        end
        object ComboBox2: TComboBox
          Left = 478
          Top = 12
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 11
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object EDC6: TEdit
          Left = 373
          Top = 33
          Width = 84
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object LO_BB_CANCEL: TBitBtn
          Left = 680
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = LO_BB_CANCELClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'User Manual'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1523
        Height = 633
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'PriceList'
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label27: TLabel
          Left = 3
          Top = 64
          Width = 47
          Height = 16
          Alignment = taRightJustify
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 7
          Top = 40
          Width = 27
          Height = 16
          Alignment = taRightJustify
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 7
          Top = 8
          Width = 19
          Height = 16
          Alignment = taRightJustify
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 576
          Top = 40
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label31: TLabel
          Left = 161
          Top = 8
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'TechLevel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 542
          Top = 16
          Width = 92
          Height = 16
          Alignment = taRightJustify
          Caption = 'Y/M(WithOrder)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 333
          Top = 16
          Width = 77
          Height = 16
          Alignment = taRightJustify
          Caption = 'Round/PMR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 161
          Top = 32
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'Prod.Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 40
          Top = 32
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 53
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object PLQuery: TBitBtn
          Left = 736
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PLQueryClick
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
        object Edit3: TEdit
          Left = 40
          Top = 8
          Width = 96
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CheckBox8: TCheckBox
          Left = 664
          Top = 64
          Width = 57
          Height = 17
          Caption = 'Mine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object BitBtn5: TBitBtn
          Left = 832
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BA8Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object CB_PL_Factory: TComboBox
          Left = 630
          Top = 40
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object Edit13: TEdit
          Left = 232
          Top = 8
          Width = 88
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit6: TEdit
          Left = 637
          Top = 9
          Width = 76
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit4: TEdit
          Left = 101
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object Edit5: TEdit
          Left = 416
          Top = 9
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = 'FNL'
        end
        object Edit7: TEdit
          Left = 232
          Top = 32
          Width = 88
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object CBGetOrderByPODate: TCheckBox
          Left = 432
          Top = 64
          Width = 225
          Height = 17
          Caption = 'GetOrderByPODate(after 2023)'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 12
        end
        object CB_FullSeason: TCheckBox
          Left = 16
          Top = 88
          Width = 97
          Height = 17
          Caption = 'Full Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object CheckBox12: TCheckBox
          Left = 432
          Top = 80
          Width = 225
          Height = 17
          Caption = 'CombineN385'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 14
        end
        object Edit25: TEdit
          Left = 149
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object Edit26: TEdit
          Left = 197
          Top = 57
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object BitBtn9: TBitBtn
          Left = 784
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnClick = BitBtn9Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 105
        Width = 1523
        Height = 528
        Align = alClient
        DataSource = DataSource5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
            FieldName = 'CostingSeason'
            Footers = <
              item
                ValueType = fvtCount
              end>
          end
          item
            EditButtons = <>
            FieldName = 'Round'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UpperMaterial'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'TargetSamplePrice'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FOB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TotalMaterialCost'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Labor'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Overhead'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'C2BL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'C2BO'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SecondLabor'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SecondOverhead'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Profit'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ProfitRate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MoldCharge'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GenderClass'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'cut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TechLevel'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'last'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ProductionType'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'PlanningLevel2'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'ProductDescription'
            Footers = <>
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'ModelDescription'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayLongName'
            Footers = <>
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'SourceFlag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProductLine'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DirectToDC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCosting'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'FactoryDeveloper'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'CLOCosting'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'FTYBOMStatus'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FactoryPriceSubmitStatus'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedFactoryPriceStatus'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LastUpdatedCLOConfirmationDate'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Salary'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserUpdateTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FH17KeptLabor'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OutsoleAssembly'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SocklinerByPrs'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SpecialOffer'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'StrobelPrintingRemoveal'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MMDeduction'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MMAutoCutLectraSaving'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'HanyoungNetCut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'AutoBuffingSaving'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SupportFrictiontape'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VolumeEfficiencyGain'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemovedNonBuffing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VolumeEfficiencyGainOverhead'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RecyclingUn_Cured_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemoveSocklinerCement_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RSHConstructionOptimizat_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CBYWeightedCosting_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SeasonalColor_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OrtholiteSockliner_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InnerBox_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MOC_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ckmesh_25S'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SealTapeOIA_LK_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ShoelaceLength_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TissueOIA_LK_25U'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CL98LaborPrecommit_25F'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FY25_CostMitigation'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'C2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'R2B_PPH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostMitigation'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'FTY code linking'
      ImageIndex = 5
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label39: TLabel
          Left = 24
          Top = 56
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 168
          Top = 8
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FlexMTLCode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 384
          Top = 33
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 8
          Top = 9
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 8
          Top = 32
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 152
          Top = 32
          Width = 106
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Round:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn2: TBitBtn
          Left = 824
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BA8Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn4: TBitBtn
          Left = 728
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333333333333333333FFF33FF333FFF339993370733
            999333777FF37FF377733339993000399933333777F777F77733333399970799
            93333333777F7377733333333999399933333333377737773333333333990993
            3333333333737F73333333333331013333333333333777FF3333333333910193
            333333333337773FF3333333399000993333333337377737FF33333399900099
            93333333773777377FF333399930003999333337773777F777FF339993370733
            9993337773337333777333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn6: TBitBtn
          Left = 680
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn6Click
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
        object Edit14: TEdit
          Left = 77
          Top = 49
          Width = 52
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '25F'
        end
        object Edit15: TEdit
          Left = 259
          Top = 0
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ComboBox4: TComboBox
          Left = 462
          Top = 28
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 5
          Text = 'LYN-9Z'
          Items.Strings = (
            'LYN-9Z'
            'LYI-6L'
            ' ')
        end
        object BitBtn7: TBitBtn
          Left = 776
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn7Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object Edit12: TEdit
          Left = 51
          Top = 1
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit16: TEdit
          Left = 51
          Top = 24
          Width = 102
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object CheckBox10: TCheckBox
          Left = 680
          Top = 57
          Width = 137
          Height = 17
          Caption = 'CLBH is null'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 9
        end
        object Edit17: TEdit
          Left = 259
          Top = 24
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object Edit18: TEdit
          Left = 259
          Top = 24
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Text = 'FNL'
        end
        object CheckBox14: TCheckBox
          Left = 776
          Top = 56
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 12
        end
      end
      object Panel6: TPanel
        Left = 921
        Top = 81
        Width = 602
        Height = 552
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 1
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 600
          Height = 240
          Align = alTop
          Caption = 'Panel6'
          TabOrder = 0
          object DBGridEh8: TDBGridEh
            Left = 1
            Top = 1
            Width = 598
            Height = 238
            Align = alClient
            DataSource = DataSource7
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <
                  item
                    ValueType = fvtCount
                  end>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'ywsm'
                Footers = <>
                Width = 108
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'CSBH'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'BOMDATE'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CCQQ'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CCQZ'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
              end>
          end
        end
        object DBGridEh9: TDBGridEh
          Left = 1
          Top = 241
          Width = 600
          Height = 310
          Align = alClient
          DataSource = DataSource8
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 376
        Top = 137
        Width = 321
        Height = 208
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
      end
      object Panel7: TPanel
        Left = 0
        Top = 81
        Width = 865
        Height = 552
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 3
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 863
          Height = 550
          Align = alClient
          DataSource = DataSource6
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 3
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <
                item
                  ValueType = fvtCount
                end>
              Width = 116
            end
            item
              EditButtons = <>
              FieldName = 'SKU'
              Footers = <>
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'CostingSeason'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Component'
              Footers = <>
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'FlexMaterialCode'
              Footers = <>
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'Color'
              Footers = <>
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'Material'
              Footers = <>
              Width = 127
            end
            item
              EditButtons = <>
              FieldName = 'Supplier'
              Footers = <>
              Title.Caption = 'Supplier_Flex'
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'SupplierCode'
              Footers = <>
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'MaterialSeason'
              Footers = <>
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'Factory'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'MTL_No'
              Footers = <>
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'Color_No'
              Footers = <>
              Width = 34
            end
            item
              EditButtons = <>
              FieldName = 'XieXing'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SheHao'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CostingSize'
              Footers = <>
            end>
        end
      end
      object Panel8: TPanel
        Left = 865
        Top = 81
        Width = 56
        Height = 552
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 4
        object BitBtn10: TBitBtn
          Left = -1
          Top = 112
          Width = 57
          Height = 25
          Caption = '<<<'
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object BitBtn11: TBitBtn
          Left = -1
          Top = 296
          Width = 57
          Height = 25
          Caption = '<<<'
          TabOrder = 1
          OnClick = BitBtn11Click
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Char test'
      ImageIndex = 6
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1523
        Height = 145
        Align = alTop
        TabOrder = 0
        object Label46: TLabel
          Left = 8
          Top = 9
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Test Char'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 8
          Top = 89
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SQL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 8
          Top = 65
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SQL result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 8
          Top = 33
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Trimed Char'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn14: TBitBtn
          Left = 552
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn14Click
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
        object Edit21: TEdit
          Left = 83
          Top = 1
          Width = 454
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit19: TEdit
          Left = 83
          Top = 81
          Width = 454
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit20: TEdit
          Left = 83
          Top = 57
          Width = 454
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit22: TEdit
          Left = 83
          Top = 25
          Width = 454
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object UploadlQuery: TQuery
    OnCalcFields = UploadlQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From CostingPriceListNew'
      'Where 1=1'
      'and Round like '#39'FNL%'#39
      'and CostingSeason like '#39'25F%'#39
      'and CostingPriceListNew.Factory = '#39'LYN-9Z'#39)
    UpdateObject = UpdateSQL2
    Left = 48
    Top = 328
    object UploadlQueryRound: TStringField
      FieldName = 'Round'
      Origin = 'DB.CostingPriceListNew.Round'
      FixedChar = True
      Size = 25
    end
    object UploadlQuerySKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object UploadlQuerySR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object UploadlQueryFactoryPriceSubmitStatus: TStringField
      FieldName = 'FactoryPriceSubmitStatus'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryPriceStatus: TStringField
      FieldName = 'FactoryPriceStatus'
      Origin = 'DB.CostingPriceListNew.FactoryPriceStatus'
      FixedChar = True
    end
    object UploadlQueryFTYBOMCostDataStatus: TStringField
      FieldName = 'FTYBOMCostDataStatus'
      Origin = 'DB.CostingPriceListNew.FTYBOMCostDataStatus'
      FixedChar = True
    end
    object UploadlQueryFTYBOMStatus: TStringField
      FieldName = 'FTYBOMStatus'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryTargetSamplePrice: TStringField
      FieldName = 'TargetSamplePrice'
      Origin = 'DB.CostingPriceListNew.TargetSamplePrice'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryFOB: TStringField
      FieldName = 'FOB'
      Origin = 'DB.CostingPriceListNew.FOB'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryTotalMaterialCost: TStringField
      FieldName = 'TotalMaterialCost'
      Origin = 'DB.CostingPriceListNew.TotalMaterialCost'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryLabor: TStringField
      FieldName = 'Labor'
      Origin = 'DB.CostingPriceListNew.Labor'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryOverhead: TStringField
      FieldName = 'Overhead'
      Origin = 'DB.CostingPriceListNew.Overhead'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryC2BL: TStringField
      FieldName = 'C2BL'
      Origin = 'DB.CostingPriceListNew.C2BL'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryC2BO: TStringField
      FieldName = 'C2BO'
      Origin = 'DB.CostingPriceListNew.C2BO'
      FixedChar = True
      Size = 6
    end
    object UploadlQuerySecondLabor: TStringField
      FieldName = 'SecondLabor'
      Origin = 'DB.CostingPriceListNew.SecondLabor'
      FixedChar = True
      Size = 9
    end
    object UploadlQuerySecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      Origin = 'DB.CostingPriceListNew.SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryProfit: TStringField
      FieldName = 'Profit'
      Origin = 'DB.CostingPriceListNew.Profit'
      FixedChar = True
      Size = 9
    end
    object UploadlQueryProfitRate: TFloatField
      FieldName = 'ProfitRate'
    end
    object UploadlQueryMoldCharge: TCurrencyField
      FieldName = 'MoldCharge'
      currency = False
    end
    object UploadlQueryOtherAdjustment: TCurrencyField
      FieldName = 'OtherAdjustment'
      currency = False
    end
    object UploadlQueryFlexSeason: TStringField
      FieldName = 'FlexSeason'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryDevelopmentSeason: TStringField
      FieldName = 'DevelopmentSeason'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryDevelopmentCenter: TStringField
      FieldName = 'DevelopmentCenter'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object UploadlQuerySampleSize: TFloatField
      FieldName = 'SampleSize'
    end
    object UploadlQueryCostingSize: TFloatField
      FieldName = 'CostingSize'
    end
    object UploadlQuerySizeRange: TStringField
      FieldName = 'SizeRange'
      Origin = 'DB.CostingPriceListNew.SizeRange'
      FixedChar = True
    end
    object UploadlQueryGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryCut: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 5
    end
    object UploadlQueryTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 4
    end
    object UploadlQueryLast: TStringField
      FieldName = 'Last'
      FixedChar = True
      Size = 15
    end
    object UploadlQuerySegment2: TStringField
      FieldName = 'Segment'
      Origin = 'DB.CostingPriceListNew.Segment'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryDistributionType: TStringField
      FieldName = 'DistributionType'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryPlanningLevel2: TStringField
      FieldName = 'PlanningLevel2'
      FixedChar = True
    end
    object UploadlQueryProductLine: TStringField
      FieldName = 'ProductLine'
      FixedChar = True
    end
    object UploadlQueryDirectToDC: TStringField
      FieldName = 'DirectToDC'
      FixedChar = True
      Size = 3
    end
    object UploadlQueryUpperMaterial2: TStringField
      FieldName = 'UpperMaterial'
      Origin = 'DB.CostingPriceListNew.UpperMaterial'
      FixedChar = True
      Size = 70
    end
    object UploadlQueryFactoryDeveloper: TStringField
      FieldName = 'FactoryDeveloper'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryDevManager: TStringField
      FieldName = 'FactoryDevManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryCosting: TStringField
      FieldName = 'FactoryCosting'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryFactoryCostingManager: TStringField
      FieldName = 'FactoryCostingManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryCLOCosting: TStringField
      FieldName = 'CLOCosting'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryCLOCostingManager: TStringField
      FieldName = 'CLOCostingManager'
      FixedChar = True
      Size = 25
    end
    object UploadlQueryLastUpdatedColorwayStatus: TDateTimeField
      FieldName = 'LastUpdatedColorwayStatus'
    end
    object UploadlQueryLastUpdatedSourceFlag: TDateTimeField
      FieldName = 'LastUpdatedSourceFlag'
    end
    object UploadlQueryLastUpdatedCLOConfirmationDate: TDateTimeField
      FieldName = 'LastUpdatedCLOConfirmationDate'
    end
    object UploadlQueryLastUpdatedByFTYBOMCost: TStringField
      FieldName = 'LastUpdatedByFTYBOMCost'
      FixedChar = True
    end
    object UploadlQueryLastUpdatedFactoryConfirmation: TDateTimeField
      FieldName = 'LastUpdatedFactoryConfirmation'
    end
    object UploadlQueryLastUpdatedDevelopment: TDateTimeField
      FieldName = 'LastUpdatedDevelopment'
    end
    object UploadlQueryLastUpdatedDateFTYBOMCost: TDateTimeField
      FieldName = 'LastUpdatedDateFTYBOMCost'
    end
    object UploadlQueryLastUpdatedFactoryPriceSubmit: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceSubmit'
    end
    object UploadlQueryLastUpdatedFactoryPriceStatus: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceStatus'
    end
    object UploadlQueryInitialBuyMonth: TStringField
      FieldName = 'InitialBuyMonth'
      FixedChar = True
      Size = 15
    end
    object UploadlQueryForecastLevel: TStringField
      FieldName = 'ForecastLevel'
      Origin = 'DB.CostingPriceListNew.ForecastLevel'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryRemark2: TMemoField
      FieldName = 'Remark'
      Origin = 'DB.CostingPriceListNew.Remark'
      BlobType = ftMemo
    end
    object UploadlQueryMaterial: TStringField
      DisplayLabel = 'Remark'
      FieldKind = fkCalculated
      FieldName = 'Remark_'
      Size = 510
      Calculated = True
    end
    object UploadlQueryRefModel: TStringField
      FieldName = 'RefModel'
      Origin = 'DB.CostingPriceListNew.RefModel'
      FixedChar = True
      Size = 30
    end
    object UploadlQueryProductDescription2: TStringField
      FieldName = 'ProductDescription'
      Origin = 'DB.CostingPriceListNew.ProductDescription'
      FixedChar = True
      Size = 40
    end
    object UploadlQueryModelDescription2: TStringField
      FieldName = 'ModelDescription'
      Origin = 'DB.CostingPriceListNew.ModelDescription'
      FixedChar = True
      Size = 40
    end
    object UploadlQueryColorwayLongName: TStringField
      FieldName = 'ColorwayLongName'
      Origin = 'DB.CostingPriceListNew.ColorwayLongName'
      FixedChar = True
      Size = 50
    end
    object UploadlQuerySourceFlag: TStringField
      FieldName = 'SourceFlag'
      Origin = 'DB.CostingPriceListNew.SourceFlag'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object UploadlQueryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object UploadlQueryEffectBuy: TStringField
      FieldName = 'EffectBuy'
      Origin = 'DB.CostingPriceListNew.EffectBuy'
      FixedChar = True
      Size = 6
    end
    object UploadlQueryCostMitigation: TStringField
      FieldName = 'CostMitigation'
      Origin = 'DB.CostingPriceListNew.CostMitigation'
      FixedChar = True
      Size = 5
    end
    object UploadlQueryCFM_C2B_PPH: TStringField
      FieldName = 'CFM_C2B_PPH'
      Origin = 'DB.CostingPriceListNew.CFM_C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryCFM_R2B_PPH: TStringField
      FieldName = 'CFM_R2B_PPH'
      Origin = 'DB.CostingPriceListNew.CFM_R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryC2B_PPH: TStringField
      FieldName = 'C2B_PPH'
      Origin = 'DB.CostingPriceListNew.C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryR2B_PPH: TStringField
      FieldName = 'R2B_PPH'
      Origin = 'DB.CostingPriceListNew.R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object UploadlQueryTTFreight: TCurrencyField
      FieldName = 'TTFreight'
      Origin = 'DB.CostingPriceListNew.TTFreight'
      currency = False
    end
  end
  object DataSource1: TDataSource
    DataSet = UploadlQuery
    Left = 44
    Top = 376
  end
  object opendialog: TOpenDialog
    Left = 200
    Top = 384
  end
  object ExistCheck: TQuery
    DatabaseName = 'DB'
    Left = 212
    Top = 320
  end
  object DataSource2: TDataSource
    DataSet = UploadDetailQuery
    Left = 124
    Top = 376
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingXXZLS'
      'set'
      '  PartName = :PartName,'
      '  Component = :Component,'
      '  Percentage = :Percentage,'
      '  MTL_No = :MTL_No,'
      '  Color_No = :Color_No,'
      '  Process_No = :Process_No,'
      '  LandedCost = :LandedCost,'
      '  NetUsage = :NetUsage,'
      '  CutLoss = :CutLoss,'
      '  SizeGrading = :SizeGrading,'
      '  GrossUsage = :GrossUsage,'
      '  UnitCost = :UnitCost,'
      '  Remark = :Remark,'
      '  SecondLabor = :SecondLabor,'
      '  SecondOverhead = :SecondOverhead,'
      '  UserName = :UserName,'
      '  UserUpdateTime =GETDATE()'
      'where'
      '  Round = :Round and'
      '  SKU = :SKU and'
      '  CostingSeason = :CostingSeason and'
      '  Factory= :Factory and'
      '  No = :No')
    InsertSQL.Strings = (
      'insert into CostingXXZLS'
      
        '  (No, PartName, Component, Percentage, FlexMaterialCode, NetUsa' +
        'ge, CutLoss, '
      
        '   SizeGrading, LandedCost, GrossUsage, UnitCost, MaterialCommen' +
        'ts, Tooling, '
      
        '   TnRP, Color, ColorComments, UserName, UserUpdateTime, SecondL' +
        'abor, '
      'SecondOverhead, '
      '   Remark, FactoryPriceSubmitStatus, SKU, CostingSeason)'
      'values'
      
        '  (:No, :PartName, :Component, :Percentage, :FlexMaterialCode, :' +
        'NetUsage, '
      
        '   :CutLoss, :SizeGrading, :LandedCost, :GrossUsage, :UnitCost, ' +
        ':MaterialComments, '
      
        '   :Tooling, :TnRP, :Color, :ColorComments, :UserName, :UserUpda' +
        'teTime, '
      
        '   :SecondLabor, :SecondOverhead, :Remark, :FactoryPriceSubmitSt' +
        'atus, :SKU, '
      '   :CostingSeason)')
    DeleteSQL.Strings = (
      'delete from CostingXXZLS'
      'where'
      '  No = :OLD_No and'
      '  FactoryPriceSubmitStatus = :OLD_FactoryPriceSubmitStatus and'
      '  SKU = :OLD_SKU and'
      '  CostingSeason = :OLD_CostingSeason')
    Left = 128
    Top = 440
  end
  object QueryMTL: TQuery
    OnCalcFields = QueryMTLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CONVERT(Bit,IsNull(CostingPriceLibrary.YN,0)) as Flag,Cos' +
        'tingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Component,Co' +
        'stingPriceLibrary.MaterialSeason,CostingPriceLibrary.PriceStatus' +
        ','
      
        '   CostingMatLibrary.FlexMaterialCode,CML_Material.Material,Cost' +
        'ingMatLibrary.MaterialComments, CostingMatLibrary.Supplier,Costi' +
        'ngMatLibrary.SupplierCode,'
      '   CostingMatLibrary.DeliveryTerm,CostingMatLibrary.T1Freight,'
      
        '   CostingPriceLibrary.TnRP, CostingMatLibrary.Tooling,CostingMa' +
        'tLibrary.Measure, CostingMatLibrary.MeasureOVR,'
      
        '   CostingPriceLibrary.Color,CostingPriceLibrary.ColorComments,C' +
        'ostingPriceLibrary.ColorGroup,'
      
        '   CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCost' +
        ','
      
        '   CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary.Sup' +
        'plierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,'
      
        '   CostingXXZLS.Round,CostingXXZLS.SKU,CostingXXZLS.CostingSeaso' +
        'n,CostingXXZLS.Remark,'
      
        '   CostingXXZLS.Process_No,CostingMatLibrary.Material_Text,Costi' +
        'ngPriceLibrary.UserName,CostingPriceLibrary.UserUpdateTime'
      'From CostingXXZLS'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Co' +
        'lor_No '
      
        'left join CostingProcessCost on CostingProcessCost.Process_No=Co' +
        'stingXXZLS.Process_No'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLS.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLS.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLS.Costin' +
        'gSeason '
      
        'left join (select MTL_No,CAST(Material_Text AS VARCHAR(255)) AS ' +
        'Material from CostingMatLibrary) CML_Material on CML_Material.MT' +
        'L_No=CostingMatLibrary.MTL_No'
      'where 1=2'
      'and CostingPriceLibrary.CostingSeason like '#39'25F%'#39
      'and CostingPriceLibrary.YN=0'
      'and CostingPriceLibrary.MTL_No in '
      '(select CostingPriceLibrary.MTL_No from CostingPriceLibrary'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingP' +
        'riceLibrary.MTL_No'
      
        'where CostingPriceLibrary.Color_No in (select color_no from Cost' +
        'ingXXZLS)--'#34987#20351#29992#20013
      
        'group by CostingPriceLibrary.MTL_No,CostingPriceLibrary.color,Co' +
        'stingPriceLibrary.colorgroup'
      'having count(*)>1'#9')')
    UpdateObject = UpdateSQL3
    Left = 288
    Top = 320
    object QueryMTLComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object QueryMTLMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object QueryMTLPriceStatus: TStringField
      FieldName = 'PriceStatus'
      FixedChar = True
      Size = 10
    end
    object QueryMTLFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object QueryMTLMaterialComments: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      FixedChar = True
      Size = 550
      Calculated = True
    end
    object QueryMTLMaterialComments2: TStringField
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object QueryMTLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object QueryMTLSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object QueryMTLDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
      Size = 10
    end
    object QueryMTLT1Freight: TFloatField
      FieldName = 'T1Freight'
    end
    object QueryMTLTnRP: TStringField
      FieldName = 'TnRP'
      FixedChar = True
      Size = 25
    end
    object QueryMTLTooling: TStringField
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object QueryMTLMeasure: TStringField
      FieldName = 'Measure'
      FixedChar = True
      Size = 15
    end
    object QueryMTLMeasureOVR: TStringField
      FieldName = 'MeasureOVR'
      FixedChar = True
      Size = 15
    end
    object QueryMTLColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object QueryMTLColorComments: TStringField
      FieldName = 'ColorComments'
      FixedChar = True
      Size = 100
    end
    object QueryMTLColorGroup: TStringField
      FieldName = 'ColorGroup'
      FixedChar = True
    end
    object QueryMTLPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object QueryMTLMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object QueryMTLBaseMaterialPrice: TStringField
      FieldName = 'BaseMaterialPrice'
      FixedChar = True
      Size = 9
    end
    object QueryMTLSupplierFreightValue: TFloatField
      FieldName = 'SupplierFreightValue'
    end
    object QueryMTLTRPnGRPUpcharge: TFloatField
      FieldName = 'TRPnGRPUpcharge'
    end
    object QueryMTLRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 25
    end
    object QueryMTLSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object QueryMTLCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object QueryMTLRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object QueryMTLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object QueryMTLUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object QueryMTLMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object QueryMTLColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object QueryMTLProcess_No: TIntegerField
      FieldName = 'Process_No'
    end
    object QueryMTLMaterial_text: TMemoField
      FieldName = 'Material_text'
      BlobType = ftMemo
    end
    object QueryMTLFlag: TBooleanField
      FieldName = 'Flag'
    end
  end
  object DataSource3: TDataSource
    DataSet = QueryMTL
    Left = 276
    Top = 384
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPriceLibrary'
      'set'
      '  YN= :Flag,'
      '  UserName = :UserName,'
      '  UserUpdateTime = :UserUpdateTime'
      'where'
      '  MTL_No = :OLD_MTL_No and'
      '  Color_No = :OLD_Color_No')
    DeleteSQL.Strings = (
      'delete from CostingPriceLibrary'
      'where'
      '  MTL_No = :OLD_MTL_No and'
      '  Color_No = :OLD_Color_No')
    Left = 280
    Top = 448
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingPriceListNew'
      'set'
      '  Round = :Round,'
      '  CostingSeason = :CostingSeason,'
      '  Factory = :Factory,'
      '  SKU = :SKU,'
      '  SR = :SR,'
      '  FactoryPriceSubmitStatus = :FactoryPriceSubmitStatus,'
      '  FactoryPriceStatus = :FactoryPriceStatus,'
      '  FTYBOMCostDataStatus = :FTYBOMCostDataStatus,'
      '  FTYBOMStatus = :FTYBOMStatus,'
      '  TargetSamplePrice = :TargetSamplePrice,'
      '  FOB = :FOB,'
      '  TotalMaterialCost = :TotalMaterialCost,'
      '  Labor = :Labor,'
      '  Overhead = :Overhead,'
      '  C2BL = :C2BL,'
      '  C2BO = :C2BO,'
      '  SecondLabor = :SecondLabor,'
      '  SecondOverhead = :SecondOverhead,'
      '  Profit = :Profit,'
      '  ProfitRate = :ProfitRate,'
      '  MoldCharge = :MoldCharge,'
      '  OtherAdjustment = :OtherAdjustment,'
      '  FlexSeason = :FlexSeason,'
      '  DevelopmentSeason = :DevelopmentSeason,'
      '  DevelopmentCenter = :DevelopmentCenter,'
      '  SampleSize = :SampleSize,'
      '  CostingSize = :CostingSize,'
      '  SizeRange = :SizeRange,'
      '  GenderClass = :GenderClass,'
      '  Cut = :Cut,'
      '  TechLevel = :TechLevel,'
      '  Last = :Last,'
      '  Segment = :Segment,'
      '  ProductionType = :ProductionType,'
      '  DistributionType = :DistributionType,'
      '  Category = :Category,'
      '  PlanningLevel2 = :PlanningLevel2,'
      '  ProductLine = :ProductLine,'
      '  DirectToDC = :DirectToDC,'
      '  UpperMaterial = :UpperMaterial,'
      '  FactoryDeveloper = :FactoryDeveloper,'
      '  FactoryDevManager = :FactoryDevManager,'
      '  FactoryCosting = :FactoryCosting,'
      '  FactoryCostingManager = :FactoryCostingManager,'
      '  CLOCosting = :CLOCosting,'
      '  CLOCostingManager = :CLOCostingManager,'
      '  LastUpdatedColorwayStatus = :LastUpdatedColorwayStatus,'
      '  LastUpdatedSourceFlag = :LastUpdatedSourceFlag,'
      
        '  LastUpdatedCLOConfirmationDate = :LastUpdatedCLOConfirmationDa' +
        'te,'
      '  LastUpdatedByFTYBOMCost = :LastUpdatedByFTYBOMCost,'
      
        '  LastUpdatedFactoryConfirmation = :LastUpdatedFactoryConfirmati' +
        'on,'
      '  LastUpdatedDevelopment = :LastUpdatedDevelopment,'
      '  LastUpdatedDateFTYBOMCost = :LastUpdatedDateFTYBOMCost,'
      
        '  LastUpdatedFactoryPriceSubmit = :LastUpdatedFactoryPriceSubmit' +
        ','
      
        '  LastUpdatedFactoryPriceStatus = :LastUpdatedFactoryPriceStatus' +
        ','
      '  InitialBuyMonth = :InitialBuyMonth,'
      '  ForecastLevel = :ForecastLevel,'
      '  Remark = :Remark,'
      '  RefModel = :RefModel,'
      '  UserName = :UserName,'
      '  UserUpdateTime = GETDATE(),'
      '  ProductDescription = :ProductDescription,'
      '  ModelDescription = :ModelDescription,'
      '  ColorwayLongName = :ColorwayLongName,'
      '  SourceFlag = :SourceFlag,'
      '  EffectBuy = :EffectBuy,'
      '  CostMitigation = :CostMitigation,'
      '  CFM_C2B_PPH = :CFM_C2B_PPH,'
      '  CFM_R2B_PPH = :CFM_R2B_PPH,'
      '  C2B_PPH = :C2B_PPH,'
      '  R2B_PPH = :R2B_PPH,'
      '  TTFreight = :TTFreight'
      'where'
      '  Round = :Round and'
      '  CostingSeason = :CostingSeason and'
      '  Factory = :Factory and'
      '  SKU = :SKU')
    InsertSQL.Strings = (
      'insert into CostingPriceListNew'
      
        '  (Round, CostingSeason, Factory, SKU, SR, FactoryPriceSubmitSta' +
        'tus, FactoryPriceStatus, '
      
        '   FTYBOMCostDataStatus, FTYBOMStatus, TargetSamplePrice, FOB, T' +
        'otalMaterialCost, '
      
        '   Labor, Overhead, C2BL, C2BO, SecondLabor, SecondOverhead, Pro' +
        'fit, ProfitRate, '
      
        '   MoldCharge, OtherAdjustment, FlexSeason, DevelopmentSeason, D' +
        'evelopmentCenter, '
      
        '   SampleSize, CostingSize, SizeRange, GenderClass, Cut, TechLev' +
        'el, Last, '
      
        '   Segment, ProductionType, DistributionType, Category, Planning' +
        'Level2, '
      
        '   ProductLine, DirectToDC, UpperMaterial, FactoryDeveloper, Fac' +
        'toryDevManager, '
      
        '   FactoryCosting, FactoryCostingManager, CLOCosting, CLOCosting' +
        'Manager, '
      
        '   LastUpdatedColorwayStatus, LastUpdatedSourceFlag, LastUpdated' +
        'CLOConfirmationDate, '
      
        '   LastUpdatedByFTYBOMCost, LastUpdatedFactoryConfirmation, Last' +
        'UpdatedDevelopment, '
      
        '   LastUpdatedDateFTYBOMCost, LastUpdatedFactoryPriceSubmit, Las' +
        'tUpdatedFactoryPriceStatus, '
      
        '   InitialBuyMonth, ForecastLevel, Remark, RefModel, UserName, U' +
        'serUpdateTime, '
      
        '   ProductDescription, ModelDescription, ColorwayLongName, Sourc' +
        'eFlag, '
      
        '   EffectBuy, CostMitigation, CFM_C2B_PPH, CFM_R2B_PPH, C2B_PPH,' +
        ' R2B_PPH, '
      '   TTFreight)'
      'values'
      
        '  (:Round, :CostingSeason, :Factory, :SKU, :SR, :FactoryPriceSub' +
        'mitStatus, '
      
        '   :FactoryPriceStatus, :FTYBOMCostDataStatus, :FTYBOMStatus, :T' +
        'argetSamplePrice, '
      
        '   :FOB, :TotalMaterialCost, :Labor, :Overhead, :C2BL, :C2BO, :S' +
        'econdLabor, '
      
        '   :SecondOverhead, :Profit, :ProfitRate, :MoldCharge, :OtherAdj' +
        'ustment, '
      
        '   :FlexSeason, :DevelopmentSeason, :DevelopmentCenter, :SampleS' +
        'ize, :CostingSize, '
      
        '   :SizeRange, :GenderClass, :Cut, :TechLevel, :Last, :Segment, ' +
        ':ProductionType, '
      
        '   :DistributionType, :Category, :PlanningLevel2, :ProductLine, ' +
        ':DirectToDC, '
      
        '   :UpperMaterial, :FactoryDeveloper, :FactoryDevManager, :Facto' +
        'ryCosting, '
      
        '   :FactoryCostingManager, :CLOCosting, :CLOCostingManager, :Las' +
        'tUpdatedColorwayStatus, '
      
        '   :LastUpdatedSourceFlag, :LastUpdatedCLOConfirmationDate, :Las' +
        'tUpdatedByFTYBOMCost, '
      
        '   :LastUpdatedFactoryConfirmation, :LastUpdatedDevelopment, :La' +
        'stUpdatedDateFTYBOMCost, '
      
        '   :LastUpdatedFactoryPriceSubmit, :LastUpdatedFactoryPriceStatu' +
        's, :InitialBuyMonth, '
      
        '   :ForecastLevel, :Remark, :RefModel, :UserName, :UserUpdateTim' +
        'e, :ProductDescription, '
      
        '   :ModelDescription, :ColorwayLongName, :SourceFlag, :EffectBuy' +
        ', :CostMitigation, '
      '   :CFM_C2B_PPH, :CFM_R2B_PPH, :C2B_PPH, :R2B_PPH, :TTFreight)')
    DeleteSQL.Strings = (
      'delete from CostingPriceListNew'
      'where'
      '  Round = :OLD_Round and'
      '  CostingSeason = :OLD_CostingSeason and'
      '  Factory = :OLD_Factory and'
      '  SKU = :OLD_SKU')
    Left = 40
    Top = 432
  end
  object UploadDetailQuery: TQuery
    OnCalcFields = UploadDetailQueryCalcFields
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      '---------------------------'
      
        'Select CostingXXZLS.No,CostingXXZLS.PartName, CostingXXZLS.Compo' +
        'nent, CostingXXZLS.Percentage, CostingMatLibrary.Material_text, '
      '       CostingMatLibrary.FlexMaterialCode, '
      '       CostingMatLibrary.Measure, CostingMatLibrary.MeasureOVR,'
      '       CostingPriceLibrary.PriceOVR,'
      
        '       CostingXXZLS.NetUsage,CostingXXZLS.CutLoss, CostingXXZLS.' +
        'SizeGrading, '
      '       CostingMatLibrary.T1Freight, CostingXXZLS.LandedCost,'
      '       CostingXXZLS.GrossUsage, CostingXXZLS.UnitCost,'
      
        '       CostingMatLibrary.MaterialComments, CostingMatLibrary.Sup' +
        'plier,     '
      
        '       CostingMatLibrary.SupplierCode, CostingMatLibrary.Tooling' +
        ', CostingPriceLibrary.TnRP, CostingPriceLibrary.Color,CostingPri' +
        'ceLibrary.ColorGroup, '
      
        '       CostingPriceLibrary.ColorComments, CostingMatLibrary.Deli' +
        'veryTerm, CostingPriceLibrary.MaterialCost,'
      
        '       CostingPriceLibrary.PriceStatus,CostingXXZLS.UserName, Co' +
        'stingXXZLS.UserUpdateTime,'
      
        '       CostingPriceLibrary.BaseMaterialPrice,CostingPriceLibrary' +
        '.SupplierFreightValue,CostingPriceLibrary.TRPnGRPUpcharge,'
      '       CostingXXZLS.SecondLabor,CostingXXZLS.SecondOverhead,'
      
        '       CostingXXZLS.Remark,CostingXXZLS.Round,CostingXXZLS.SKU,C' +
        'ostingXXZLS.CostingSeason,CostingXXZLS.Factory,'
      
        '       CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingXXZLS.Pr' +
        'ocess_No,CostingPriceLibrary.MaterialSeason,'
      
        '       CostingProcessCost.ColorQty,CostingProcessCost.ColorQty_N' +
        'eon,CostingProcessCost.GUMColor,CostingProcessCost.SecondLF,Cost' +
        'ingProcessCost.SecondOF,'
      
        #9#9'CostingProcessCost.moldsPperson,CostingProcessCost.pairPmold,C' +
        'ostingProcessCost.PCsPPair,CostingProcessCost.TurnOverRate,'
      #9#9'CostingProcessCost.SecondLF,CostingProcessCost.SecondOF'
      'From CostingXXZLS  '
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Co' +
        'lor_No '
      
        'left join CostingProcessCost on CostingProcessCost.Process_No=Co' +
        'stingXXZLS.Process_No'
      
        'left join CostingPriceListNew on CostingPriceListNew.Round=Costi' +
        'ngXXZLS.Round '
      '       and CostingPriceListNew.SKU=CostingXXZLS.SKU '
      
        '       and CostingPriceListNew.CostingSeason=CostingXXZLS.Costin' +
        'gSeason '
      'where CostingXXZLS.Round='#39'R2'#39
      '  and CostingXXZLS.SKU='#39'A13222C'#39
      '  and CostingXXZLS.CostingSeason='#39'25F'#39
      'order by CostingXXZLS.No')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 328
    object UploadDetailQueryNo: TIntegerField
      FieldName = 'No'
    end
    object UploadDetailQueryComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQueryPercentage: TStringField
      FieldName = 'Percentage'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQueryMaterial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      Size = 510
      Calculated = True
    end
    object UploadDetailQueryFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryMaterialComments: TStringField
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object UploadDetailQuerySupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object UploadDetailQuerySupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object UploadDetailQueryTooling: TStringField
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object UploadDetailQueryTnRP: TStringField
      FieldName = 'TnRP'
      FixedChar = True
      Size = 25
    end
    object UploadDetailQueryColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQueryColorComments: TStringField
      FieldName = 'ColorComments'
      FixedChar = True
      Size = 100
    end
    object UploadDetailQueryMeasure: TStringField
      FieldName = 'Measure'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryBaseMaterialPrice: TStringField
      FieldName = 'BaseMaterialPrice'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryTRPnGRPUpcharge: TFloatField
      FieldName = 'TRPnGRPUpcharge'
    end
    object UploadDetailQueryPriceStatus: TStringField
      FieldName = 'PriceStatus'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryPartName: TStringField
      FieldName = 'PartName'
      FixedChar = True
    end
    object UploadDetailQuerySupplierFreightValue: TFloatField
      FieldName = 'SupplierFreightValue'
    end
    object UploadDetailQueryDeliveryTerm2: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
    end
    object UploadDetailQueryMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryMeasureOVR: TStringField
      FieldName = 'MeasureOVR'
      FixedChar = True
      Size = 15
    end
    object UploadDetailQueryPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object UploadDetailQueryT1Freight: TFloatField
      FieldName = 'T1Freight'
      DisplayFormat = '0.00'
    end
    object UploadDetailQueryLandedCost: TStringField
      FieldName = 'LandedCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryNetUsage: TStringField
      FieldName = 'NetUsage'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryCutLoss: TStringField
      FieldName = 'CutLoss'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQuerySizeGrading: TStringField
      FieldName = 'SizeGrading'
      FixedChar = True
      Size = 5
    end
    object UploadDetailQueryGrossUsage: TStringField
      FieldName = 'GrossUsage'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryUnitCost: TStringField
      FieldName = 'UnitCost'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQuerySecondLabor2: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQuerySecondOverhead2: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object UploadDetailQueryUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
      DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
    end
    object UploadDetailQueryUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQuerySecondLF: TStringField
      FieldName = 'SecondLF'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQuerySecondOF: TStringField
      FieldName = 'SecondOF'
      FixedChar = True
      Size = 40
    end
    object UploadDetailQuerySecondLabor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SecondLabor_auto'
      currency = False
      Calculated = True
    end
    object UploadDetailQuerySecondOverhead: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SecondOverhead_auto'
      currency = False
      Calculated = True
    end
    object UploadDetailQueryRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object UploadDetailQueryRound: TStringField
      FieldName = 'Round'
      FixedChar = True
    end
    object UploadDetailQuerySKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object UploadDetailQueryFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object UploadDetailQueryMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object UploadDetailQueryColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object UploadDetailQueryProcess_No: TIntegerField
      FieldName = 'Process_No'
    end
    object UploadDetailQueryColorGroup: TStringField
      FieldName = 'ColorGroup'
      FixedChar = True
    end
    object UploadDetailQueryColorQty: TIntegerField
      FieldName = 'ColorQty'
    end
    object UploadDetailQueryColorQty_Neon: TIntegerField
      FieldName = 'ColorQty_Neon'
    end
    object UploadDetailQueryGUMColor: TIntegerField
      FieldName = 'GUMColor'
    end
    object UploadDetailQuerymoldsPperson: TIntegerField
      FieldName = 'moldsPperson'
    end
    object UploadDetailQuerypairPmold: TIntegerField
      FieldName = 'pairPmold'
    end
    object UploadDetailQueryPCsPPair: TIntegerField
      FieldName = 'PCsPPair'
    end
    object UploadDetailQueryTurnOverRate: TIntegerField
      FieldName = 'TurnOverRate'
    end
    object UploadDetailQueryMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object UploadDetailQueryMaterial_Text: TMemoField
      FieldName = 'Material_Text'
      BlobType = ftMemo
    end
  end
  object QueryProcess: TQuery
    OnCalcFields = QueryProcessCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CostingMatLibrary.Material_Text,CostingProcessCost.*,Cost' +
        'ingXXZLS.GrossUsage,CostingXXZLS.UnitCost,CostingXXZLS.SecondLab' +
        'or,CostingXXZLS.SecondOverhead'
      
        ',CostingXXZLS.NetUsage,CostingXXZLS.CutLoss,CostingXXZLS.SizeGra' +
        'ding,CostingPriceLibrary.PriceOVR,CostingPriceLibrary.MaterialCo' +
        'st,CostingMatLibrary.T1Freight'
      'From CostingProcessCost'
      
        'left join CostingXXZLS on CostingXXZLS.SKU=CostingProcessCost.SK' +
        'U and CostingXXZLS.Round=CostingProcessCost.Round '
      
        'and CostingXXZLS.CostingSeason=CostingProcessCost.CostingSeason ' +
        'and CostingXXZLS.No=CostingProcessCost.No'
      
        'left join CostingMatLibrary on CostingMatLibrary.MTL_No=CostingX' +
        'XZLS.MTL_No'
      
        'left join CostingPriceLibrary on CostingMatLibrary.MTL_No=Costin' +
        'gXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Colo' +
        'r_No'
      'where CostingProcessCost.Process_No=1')
    UpdateObject = UpdateSQL4
    Left = 348
    Top = 320
    object QueryProcessComponent: TStringField
      DisplayWidth = 18
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object QueryProcessProcess_No: TIntegerField
      DisplayWidth = 10
      FieldName = 'Process_No'
    end
    object QueryProcessTooling: TStringField
      DisplayWidth = 25
      FieldName = 'Tooling'
      FixedChar = True
      Size = 25
    end
    object QueryProcessMaterialComments: TStringField
      DisplayWidth = 150
      FieldName = 'MaterialComments'
      FixedChar = True
      Size = 150
    end
    object QueryProcessColorQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'ColorQty'
    end
    object QueryProcessColorQty_Neon: TIntegerField
      DisplayWidth = 10
      FieldName = 'ColorQty_Neon'
    end
    object QueryProcessGUMColor: TIntegerField
      DisplayWidth = 10
      FieldName = 'GUMColor'
    end
    object QueryProcessmoldsPperson: TIntegerField
      DisplayWidth = 10
      FieldName = 'moldsPperson'
    end
    object QueryProcesspairPmold: TIntegerField
      DisplayWidth = 10
      FieldName = 'pairPmold'
    end
    object QueryProcessPCsPPair: TIntegerField
      DisplayWidth = 10
      FieldName = 'PCsPPair'
    end
    object QueryProcessTurnOverRate: TIntegerField
      DisplayWidth = 10
      FieldName = 'TurnOverRate'
    end
    object QueryProcessSecondLF: TStringField
      DisplayWidth = 40
      FieldName = 'SecondLF'
      FixedChar = True
      Size = 40
    end
    object QueryProcessSecondOF: TStringField
      DisplayWidth = 40
      FieldName = 'SecondOF'
      FixedChar = True
      Size = 40
    end
    object QueryProcessRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 25
    end
    object QueryProcessSKU: TStringField
      DisplayWidth = 10
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object QueryProcessCostingSeason: TStringField
      DisplayWidth = 4
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object QueryProcessNo: TIntegerField
      DisplayWidth = 10
      FieldName = 'No'
    end
    object QueryProcessUserName: TStringField
      DisplayWidth = 10
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object QueryProcessUserUpdateTime: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UserUpdateTime'
    end
    object QueryProcessGrossUsage: TStringField
      FieldName = 'GrossUsage'
      FixedChar = True
      Size = 9
    end
    object QueryProcessUnitCost: TStringField
      FieldName = 'UnitCost'
      FixedChar = True
      Size = 9
    end
    object QueryProcessFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object QueryProcessSecondLabor2: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 9
    end
    object QueryProcessSecondOverhead2: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 9
    end
    object QueryProcessSecondLabor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SecondLabor_auto'
      Calculated = True
    end
    object QueryProcessSecondOverhead: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SecondOverhead_auto'
      Calculated = True
    end
    object QueryProcessNetUsage: TStringField
      FieldName = 'NetUsage'
      FixedChar = True
      Size = 9
    end
    object QueryProcessCutLoss: TStringField
      FieldName = 'CutLoss'
      FixedChar = True
      Size = 5
    end
    object QueryProcessSizeGrading: TStringField
      FieldName = 'SizeGrading'
      FixedChar = True
      Size = 5
    end
    object QueryProcessPriceOVR: TStringField
      FieldName = 'PriceOVR'
      FixedChar = True
      Size = 8
    end
    object QueryProcessMaterialCost: TStringField
      FieldName = 'MaterialCost'
      FixedChar = True
      Size = 9
    end
    object QueryProcessT1Freight: TFloatField
      FieldName = 'T1Freight'
    end
  end
  object DataSource4: TDataSource
    DataSet = QueryProcess
    OnDataChange = DataSource4DataChange
    Left = 348
    Top = 384
  end
  object UpdateSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'update CostingProcessCost'
      'set'
      '  Component = :Component,'
      '  Tooling = :Tooling,'
      '  MaterialComments = :MaterialComments,'
      '  ColorQty = :ColorQty,'
      '  ColorQty_Neon = :ColorQty_Neon,'
      '  GUMColor = :GUMColor,'
      '  moldsPperson = :moldsPperson,'
      '  pairPmold = :pairPmold,'
      '  PCsPPair = :PCsPPair,'
      '  TurnOverRate = :TurnOverRate,'
      '  SecondLF = :SecondLF,'
      '  SecondOF = :SecondOF,'
      '  Round = :Round,'
      '  SKU = :SKU,'
      '  CostingSeason = :CostingSeason,'
      '  No = :No,'
      '  UserName = :UserName,'
      '  UserUpdateTime = CONVERT(varchar(100),GETDATE(),120)'
      'where'
      '  Process_No = :OLD_Process_No')
    InsertSQL.Strings = (
      'insert into CostingProcessCost'
      
        '  (Component, Tooling, MaterialComments, ColorQty, ColorQty_Neon' +
        ', GUMColor, '
      
        '   moldsPperson, pairPmold, PCsPPair, TurnOverRate, SecondLF, Se' +
        'condOF, '
      '   Round, SKU, CostingSeason, No, UserName, UserUpdateTime)'
      'values'
      
        '  (:Component, :Tooling, :MaterialComments, :ColorQty, :ColorQty' +
        '_Neon, '
      
        '   :GUMColor, :moldsPperson, :pairPmold, :PCsPPair, :TurnOverRat' +
        'e, :SecondLF, '
      
        '   :SecondOF, :Round, :SKU, :CostingSeason, :No, :UserName, :Use' +
        'rUpdateTime)')
    DeleteSQL.Strings = (
      'delete from CostingProcessCost'
      'where'
      '  Process_No = :OLD_Process_No')
    Left = 344
    Top = 448
  end
  object TIMEQRY: TQuery
    DatabaseName = 'DB'
    Left = 201
    Top = 441
  end
  object DataSource5: TDataSource
    DataSet = Query_PriceList
    Left = 412
    Top = 384
  end
  object Query_PriceList: TQuery
    OnCalcFields = UploadlQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      '---------------------------'
      'Select A.*'
      ',case when DDZL_PreviousSeason.Pairs is null then DDZL.Pairs'
      
        'when (PreviousSeasonCFM.SKU is null and DDZL.Pairs is null)then ' +
        'DDZL_PreviousSeason.Pairs  '
      
        'when PreviousSeasonCFM.SKU is null then DDZL.Pairs+DDZL_Previous' +
        'Season.Pairs '
      'else DDZL.Pairs end as Pairs'
      'from ('
      
        'Select CostingPriceListNew.CostingSeason,CostingPriceListNew.Rou' +
        'nd,CostingPriceListNew.Factory,CostingPriceListNew.SKU'
      
        ',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitSt' +
        'atus,CostingPriceListNew.FTYBOMStatus'
      
        ',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,Costing' +
        'PriceListNew.TechLevel,CostingPriceListNew.last'
      ',Max(XXZL.DAOMH) as DAOMH'
      
        ',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,' +
        'CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2'
      
        ',CostingPriceListNew.ProductDescription,CostingPriceListNew.Mode' +
        'lDescription,CostingPriceListNew.ColorwayLongName,CostingPriceLi' +
        'stNew.SourceFlag'
      
        ',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,' +
        'CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDev' +
        'eloper'
      
        ',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosti' +
        'ng'
      ',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH'
      ',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH'
      ',CostingPriceListNew.TargetSamplePrice'
      
        ',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,C' +
        'ostingPriceListNew.Labor,CostingPriceListNew.Overhead'
      
        ',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceL' +
        'istNew.SecondLabor,CostingPriceListNew.SecondOverhead'
      
        ',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,Costi' +
        'ngPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation'
      
        ',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceL' +
        'istNew.LastUpdatedCLOConfirmationDate'
      ',Costing_Salary.Salary'
      ',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      ',CL98LaborPrecommit_25F,FY25_CostMitigation'
      '      ,xxzl.XieXing,xxzl.SheHao'
      'From CostingPriceListNew'
      
        'left join xxzl on  CostingPriceListNew.SKU = left(xxzl.article,c' +
        'harindex('#39'/'#39',xxzl.article+'#39'/'#39')-1)'
      
        'left join Costing_Salary on CostingPriceListNew.CostingSeason=Co' +
        'sting_Salary.PricingSeason and  CostingPriceListNew.Factory=Cost' +
        'ing_Salary.Factory_CTS'
      
        'left join CostingPriceList on CostingPriceList.SKU=CostingPriceL' +
        'istNew.SKU and CostingPriceList.PricingSeason=CostingPriceListNe' +
        'w.CostingSeason'
      'Where 1=1'
      'and CostingPriceListNew.Round like '#39'FNL%'#39
      'and CostingPriceListNew.SKU like '#39'AA%'#39
      'and CostingPriceListNew.Factory = '#39'LYN-9Z'#39
      'and ('
      'CostingPriceListNew.CostingSeason  = '#39'25F'#39
      ')'
      
        'group by CostingPriceListNew.CostingSeason,CostingPriceListNew.R' +
        'ound,CostingPriceListNew.Factory,CostingPriceListNew.SKU'
      
        ',CostingPriceListNew.SR,CostingPriceListNew.FactoryPriceSubmitSt' +
        'atus,CostingPriceListNew.FTYBOMStatus'
      
        ',CostingPriceListNew.GenderClass,CostingPriceListNew.cut,Costing' +
        'PriceListNew.TechLevel,CostingPriceListNew.last'
      
        ',CostingPriceListNew.Segment,CostingPriceListNew.ProductionType,' +
        'CostingPriceListNew.Category,CostingPriceListNew.PlanningLevel2'
      
        ',CostingPriceListNew.ProductDescription,CostingPriceListNew.Mode' +
        'lDescription,CostingPriceListNew.ColorwayLongName,CostingPriceLi' +
        'stNew.SourceFlag'
      
        ',CostingPriceListNew.ProductLine,CostingPriceListNew.DirectToDC,' +
        'CostingPriceListNew.UpperMaterial,CostingPriceListNew.FactoryDev' +
        'eloper'
      
        ',CostingPriceListNew.FactoryCosting,CostingPriceListNew.CLOCosti' +
        'ng'
      ',CostingPriceListNew.C2B_PPH,CostingPriceListNew.R2B_PPH'
      ',CostingPriceListNew.CFM_C2B_PPH,CostingPriceListNew.CFM_R2B_PPH'
      ',CostingPriceListNew.TargetSamplePrice'
      
        ',CostingPriceListNew.FOB,CostingPriceListNew.TotalMaterialCost,C' +
        'ostingPriceListNew.Labor,CostingPriceListNew.Overhead'
      
        ',CostingPriceListNew.C2BL,CostingPriceListNew.C2BO,CostingPriceL' +
        'istNew.SecondLabor,CostingPriceListNew.SecondOverhead'
      
        ',CostingPriceListNew.Profit,CostingPriceListNew.ProfitRate,Costi' +
        'ngPriceListNew.MoldCharge,CostingPriceListNew.CostMitigation'
      
        ',CostingPriceListNew.LastUpdatedFactoryPriceStatus,CostingPriceL' +
        'istNew.LastUpdatedCLOConfirmationDate'
      ',Costing_Salary.Salary'
      ',CostingPriceListNew.UserName,CostingPriceListNew.UserUpdateTime'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      ',CL98LaborPrecommit_25F,FY25_CostMitigation'
      '      ,xxzl.XieXing,xxzl.SheHao'
      'UNION all'
      
        'select CostingPriceList.PricingSeason as CostingSeason,'#39'Final-'#39'+' +
        'CostingPriceList.ModelDescription as Round,CostingPriceList.Fact' +
        'ory,CostingPriceList.SKU'
      
        ',Max(KFXXZL.DEVCODE)as SR,'#39#39' as FactoryPriceSubmitStatus,'#39#39' as F' +
        'TYBOMStatus'
      
        ',KFXXZL.GENDER as GenderClass,Max(xxzlkf.cut) as cut,Max(xxzlkf.' +
        'TechLevel_Flex) as TechLevel,Max(KFXXZL.XTMH) as last'
      ',Max(XXZL.DAOMH) as DAOMH'
      
        ',Max(xxzlkf.segment) as segment,Max(LBZLS.YWSM )as ProductionTyp' +
        'e,Max(xxzlkf.category) as Category,Max(xxzlkf.Planning_Level_2) ' +
        'as PlanningLevel2'
      
        ',Max(KFXXZL.XieMing) as ProductDescription,Max(KFXXZL.XieMing) a' +
        's ModelDescription,Max(KFXXZL.YSSM) as ColorwayLongName,'#39#39' as So' +
        'urceFlag'
      
        ','#39#39' as ProductLine,'#39#39' as DirectToDC,CostingPriceList.UpperMatDet' +
        'ail as UpperMaterial,'#39#39' as FactoryDeveloper'
      ','#39#39' as FactoryCosting,'#39#39' as CLOCosting'
      ','#39'0'#39' as C2B_PPH,'#39'0'#39' as R2B_PPH'
      ','#39'0'#39' as CFM_C2B_PPH,'#39'0'#39' as CFM_R2B_PPH'
      ',CAST(Max(xxzlkf.TSP)AS VARCHAR) as TargetSamplePrice'
      ',CAST(CostingPriceList.FOB AS VARCHAR)as FOB'
      ',CAST(CostingPriceList.Material AS VARCHAR) as TotalMaterialCost'
      
        ',CAST(CostingPriceList.Labor+CostingPriceList.SecondLabor AS VAR' +
        'CHAR) as Labor'
      
        ',CAST(CostingPriceList.OH+CostingPriceList.SecondOH AS VARCHAR) ' +
        'as Overhead'
      
        ',CAST(CostingPriceList.Labor AS VARCHAR) as C2BL,CAST(CostingPri' +
        'ceList.OH AS VARCHAR) as C2BO'
      
        ',CAST(CostingPriceList.SecondLabor AS VARCHAR) as SecondLabor ,C' +
        'AST(CostingPriceList.SecondOH AS VARCHAR) as SecondOverhead'
      
        ',CAST(CostingPriceList.Profit AS VARCHAR),CostingPriceList.Profi' +
        'tRate,CostingPriceList.MoldCharge,'#39#39' as CostMitigation'
      
        ','#39#39' as LastUpdatedFactoryPriceStatus,'#39#39' as LastUpdatedCLOConfirm' +
        'ationDate'
      ',Max(Costing_Salary.Salary) as Salary'
      
        ',CostingPriceList.CheckID as UserName,CostingPriceList.CheckDate' +
        ' as UserUpdateTime'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      ',CL98LaborPrecommit_25F,FY25_CostMitigation'
      '      ,xxzl.XieXing,xxzl.SheHao'
      'From CostingPriceList'
      
        'left join xxzl on  CostingPriceList.SKU = left(xxzl.article,char' +
        'index('#39'/'#39',xxzl.article+'#39'/'#39')-1) and xxzl.KFCQ=CostingPriceList.KF' +
        'CQ'
      
        'left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=' +
        'KFXXZL.SheHao'
      
        'left join xxzlkf on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.She' +
        'Hao=KFXXZL.SheHao'
      'Left join LBZLS on LBZLS.LBDH=KFXXZL.XieGN and LBZLS.LB='#39'03'#39
      
        'left join Costing_Salary on CostingPriceList.PricingSeason=Costi' +
        'ng_Salary.PricingSeason and  CostingPriceList.KFCQ=Costing_Salar' +
        'y.Factory'
      
        'where (CostingPriceList.ModelDescription Not like '#39'%CBY%'#39' or Cos' +
        'tingPriceList.ModelDescription is null)'
      'and '#39'FNL'#39'+CostingPriceList.ModelDescription like '#39'FNL%'#39
      'and CostingPriceList.SKU like '#39'AA%'#39
      'and CostingPriceList.KFCQ = '#39'JNG'#39
      'and ('
      'CostingPriceList.PricingSeason  = '#39'25F'#39
      ')'
      'Group by CostingPriceList.No, CostingPriceList.SKU,   '
      'CostingPriceList.PricingSeason,FOB,    '
      
        'Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Pr' +
        'ofit,Freight,     '
      
        'AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark   ' +
        '  '
      
        ',CostingPriceList.KFCQ,CostingPriceList.CheckID,CostingPriceList' +
        '.CheckDate'
      
        ',CostingPriceList.ModelDescription,CostingPriceList.UpperMatDeta' +
        'il,CostingPriceList.MoldCharge'
      
        ',FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,Strob' +
        'elPrintingRemoveal,'
      
        'MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSavi' +
        'ng,'
      
        'SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,Volum' +
        'eEfficiencyGainOverhead'
      
        ',RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstruction' +
        'Optimizat_25S,CBYWeightedCosting_25S'
      
        ',SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,C' +
        'kmesh_25S'
      ',SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U'
      ',CL98LaborPrecommit_25F,FY25_CostMitigation'
      
        '      ,xxzl.XieXing,xxzl.SheHao,CostingPriceList.Factory,KFXXZL.' +
        'GENDER'
      ') A'
      
        'left join (select right(DDZL.buyno,3)as Currentseason,right(Prev' +
        'iousSeason.BUYNO,3) as PreviousSeason'
      #9'from DDZL'
      
        #9'left join (select DDZL.buyno from DDZL where KHBH='#39'036'#39' and len' +
        '(DDZL.buyno)=10  and KHPO not like'#39'%CBY%%'#39'  group by DDZL.buyno ' +
        '  '
      
        #9#9') PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)A' +
        'S NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-9' +
        '1 end)=left(PreviousSeason.buyno,6)'
      
        'where len(DDZL.buyno)=10 and DDZL.KHBH='#39'036'#39' and KHPO not like'#39'%' +
        'CBY%%'#39' '
      'group by right(DDZL.buyno,3),right(PreviousSeason.BUYNO,3)'
      ')PreviousSeason on PreviousSeason.Currentseason=a.CostingSeason'
      
        'left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pa' +
        'irs,season.PODateseason          '
      '    From YWDD             '
      '    left join DDZL on DDZL.DDBH=YWDD.DDBH            '
      '    left join (select         '
      
        '            left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PO' +
        'Dateseason'
      '            from DDZL '
      
        '            where len(DDZL.buyno)=10 and DDZL.KHBH='#39'036'#39' and KHP' +
        'O not like'#39'%CBY%%'#39'  '
      '            group by DDZL.buyno'
      
        '    )season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,' +
        '112)            '
      
        '    where KHDDBH2DATE is not null and DDZL.DDLB='#39'N'#39' and DDZL.DDZ' +
        'T='#39'Y'#39' and DDZL.ARTICLE not like '#39'%BG%'#39'            '
      
        '    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason       ' +
        ' '
      
        ')DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DD' +
        'ZL.PODateseason = A.CostingSeason            '
      
        'left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pa' +
        'irs,season.PODateseason as PODateseason    --'#19978#19968#23395#35330#21934#29376#24907'        '
      '    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH            '
      
        '    left join (select left(buyno,6)as buyno2,right(buyno,3)as PO' +
        'Dateseason  from DDZL             '
      
        '    where len(DDZL.buyno)=10 and KHPO not like'#39'%CBY'#39'  group by b' +
        'uyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE' +
        ',112)            '
      
        '    where KHDDBH2DATE is not null and DDZL.DDLB='#39'N'#39' and DDZL.DDZ' +
        'T='#39'Y'#39' and DDZL.ARTICLE not like '#39'%BG%'#39'            '
      
        '    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason       ' +
        '    '
      
        ')DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing a' +
        'nd A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.P' +
        'ODateseason = PreviousSeason.PreviousSeason            '
      
        'left join (select SKU,PricingSeason,Factory  From CostingPriceLi' +
        'st group by SKU,PricingSeason,Factory'
      
        '     UNION all select SKU,CostingSeason as PricingSeason,Factory' +
        '  From CostingPriceListnew group by SKU,Factory,CostingPriceList' +
        'new.CostingSeason'
      
        ')PreviousSeasonCFM on PreviousSeasonCFM.SKU=a.SKU and PreviousSe' +
        'asonCFM.PricingSeason=PreviousSeason.PreviousSeason and Previous' +
        'SeasonCFM.factory=a.factory '
      'Order by A.CostingSeason  '
      '')
    Left = 416
    Top = 328
    object Query_PriceListCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Query_PriceListFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListRound: TStringField
      FieldName = 'Round'
      FixedChar = True
      Size = 31
    end
    object Query_PriceListSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query_PriceListUpperMaterial: TStringField
      FieldName = 'UpperMaterial'
      FixedChar = True
      Size = 70
    end
    object Query_PriceListTargetSamplePrice: TStringField
      FieldName = 'TargetSamplePrice'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListFOB: TStringField
      FieldName = 'FOB'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListTotalMaterialCost: TStringField
      FieldName = 'TotalMaterialCost'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListLabor: TStringField
      FieldName = 'Labor'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListOverhead: TStringField
      FieldName = 'Overhead'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListC2BL: TStringField
      FieldName = 'C2BL'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListC2BO: TStringField
      FieldName = 'C2BO'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSecondLabor: TStringField
      FieldName = 'SecondLabor'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSecondOverhead: TStringField
      FieldName = 'SecondOverhead'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListProfit: TStringField
      FieldName = 'Profit'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListProfitRate: TFloatField
      FieldName = 'ProfitRate'
    end
    object Query_PriceListMoldCharge: TCurrencyField
      FieldName = 'MoldCharge'
      currency = False
    end
    object Query_PriceListGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListcut: TStringField
      FieldName = 'cut'
      FixedChar = True
      Size = 5
    end
    object Query_PriceListTechLevel: TStringField
      FieldName = 'TechLevel'
      FixedChar = True
      Size = 4
    end
    object Query_PriceListlast: TStringField
      FieldName = 'last'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query_PriceListSegment: TStringField
      FieldName = 'Segment'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListProductionType: TStringField
      FieldName = 'ProductionType'
      FixedChar = True
      Size = 15
    end
    object Query_PriceListCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 15
    end
    object Query_PriceListPlanningLevel2: TStringField
      FieldName = 'PlanningLevel2'
      FixedChar = True
    end
    object Query_PriceListProductDescription: TStringField
      FieldName = 'ProductDescription'
      FixedChar = True
      Size = 40
    end
    object Query_PriceListModelDescription: TStringField
      FieldName = 'ModelDescription'
      FixedChar = True
      Size = 40
    end
    object Query_PriceListColorwayLongName: TStringField
      FieldName = 'ColorwayLongName'
      FixedChar = True
      Size = 50
    end
    object Query_PriceListSourceFlag: TStringField
      FieldName = 'SourceFlag'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListProductLine: TStringField
      FieldName = 'ProductLine'
      FixedChar = True
    end
    object Query_PriceListDirectToDC: TStringField
      FieldName = 'DirectToDC'
      FixedChar = True
      Size = 3
    end
    object Query_PriceListFactoryCosting: TStringField
      FieldName = 'FactoryCosting'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFactoryDeveloper: TStringField
      FieldName = 'FactoryDeveloper'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListCLOCosting: TStringField
      FieldName = 'CLOCosting'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListFTYBOMStatus: TStringField
      FieldName = 'FTYBOMStatus'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListFactoryPriceSubmitStatus: TStringField
      FieldName = 'FactoryPriceSubmitStatus'
      FixedChar = True
      Size = 25
    end
    object Query_PriceListLastUpdatedFactoryPriceStatus: TDateTimeField
      FieldName = 'LastUpdatedFactoryPriceStatus'
    end
    object Query_PriceListLastUpdatedCLOConfirmationDate: TDateTimeField
      FieldName = 'LastUpdatedCLOConfirmationDate'
    end
    object Query_PriceListpairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query_PriceListSalary: TCurrencyField
      FieldName = 'Salary'
    end
    object Query_PriceListUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 10
    end
    object Query_PriceListUserUpdateTime: TDateTimeField
      FieldName = 'UserUpdateTime'
    end
    object Query_PriceListFH17KeptLabor: TCurrencyField
      FieldName = 'FH17KeptLabor'
    end
    object Query_PriceListOutsoleAssembly: TCurrencyField
      FieldName = 'OutsoleAssembly'
    end
    object Query_PriceListSocklinerByPrs: TCurrencyField
      FieldName = 'SocklinerByPrs'
    end
    object Query_PriceListSpecialOffer: TCurrencyField
      FieldName = 'SpecialOffer'
    end
    object Query_PriceListStrobelPrintingRemoveal: TCurrencyField
      FieldName = 'StrobelPrintingRemoveal'
    end
    object Query_PriceListMMDeduction: TCurrencyField
      FieldName = 'MMDeduction'
    end
    object Query_PriceListMMAutoCutLectraSaving: TCurrencyField
      FieldName = 'MMAutoCutLectraSaving'
    end
    object Query_PriceListHanyoungNetCut: TCurrencyField
      FieldName = 'HanyoungNetCut'
    end
    object Query_PriceListAutoBuffingSaving: TCurrencyField
      FieldName = 'AutoBuffingSaving'
    end
    object Query_PriceListSupportFrictiontape: TCurrencyField
      FieldName = 'SupportFrictiontape'
    end
    object Query_PriceListVolumeEfficiencyGain: TCurrencyField
      FieldName = 'VolumeEfficiencyGain'
    end
    object Query_PriceListRemovedNonBuffing: TCurrencyField
      FieldName = 'RemovedNonBuffing'
    end
    object Query_PriceListVolumeEfficiencyGainOverhead: TCurrencyField
      FieldName = 'VolumeEfficiencyGainOverhead'
    end
    object Query_PriceListRecyclingUn_Cured_25S: TCurrencyField
      FieldName = 'RecyclingUn_Cured_25S'
    end
    object Query_PriceListRemoveSocklinerCement_25S: TCurrencyField
      FieldName = 'RemoveSocklinerCement_25S'
    end
    object Query_PriceListRSHConstructionOptimizat_25S: TCurrencyField
      FieldName = 'RSHConstructionOptimizat_25S'
    end
    object Query_PriceListCBYWeightedCosting_25S: TCurrencyField
      FieldName = 'CBYWeightedCosting_25S'
    end
    object Query_PriceListSeasonalColor_25S: TCurrencyField
      FieldName = 'SeasonalColor_25S'
    end
    object Query_PriceListOrtholiteSockliner_25S: TCurrencyField
      FieldName = 'OrtholiteSockliner_25S'
    end
    object Query_PriceListInnerBox_25S: TCurrencyField
      FieldName = 'InnerBox_25S'
    end
    object Query_PriceListMOC_25S: TCurrencyField
      FieldName = 'MOC_25S'
    end
    object Query_PriceListCkmesh_25S: TCurrencyField
      FieldName = 'Ckmesh_25S'
    end
    object Query_PriceListSealTapeOIA_LK_25U: TCurrencyField
      FieldName = 'SealTapeOIA_LK_25U'
    end
    object Query_PriceListShoelaceLength_25U: TCurrencyField
      FieldName = 'ShoelaceLength_25U'
    end
    object Query_PriceListTissueOIA_LK_25U: TCurrencyField
      FieldName = 'TissueOIA_LK_25U'
    end
    object Query_PriceListCL98LaborPrecommit_25F: TCurrencyField
      FieldName = 'CL98LaborPrecommit_25F'
    end
    object Query_PriceListFY25_CostMitigation: TCurrencyField
      FieldName = 'FY25_CostMitigation'
    end
    object Query_PriceListC2B_PPH: TStringField
      FieldName = 'C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListR2B_PPH: TStringField
      FieldName = 'R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListCFM_C2B_PPH: TStringField
      FieldName = 'CFM_C2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListCFM_R2B_PPH: TStringField
      FieldName = 'CFM_R2B_PPH'
      FixedChar = True
      Size = 8
    end
    object Query_PriceListCostMitigation: TStringField
      FieldName = 'CostMitigation'
      FixedChar = True
      Size = 5
    end
  end
  object Query_CLBH: TQuery
    OnCalcFields = Query_CLBHCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CostingPriceListNew.SR,CostingXXZLS.SKU,CostingXXZLS.Cost' +
        'ingSeason,MaterialSeason,CostingXXZLS.Factory,CostingXXZLS.Compo' +
        'nent'
      
        ',CostingXXZLS.MTL_No,CostingXXZLS.Color_No,CostingPriceLibrary.C' +
        'LBH,CostingMatLibrary.FlexMaterialCode,CostingMatLibrary.Supplie' +
        'r,CostingMatLibrary.SupplierCode'
      
        ',Material_Text,XXZL.XieXing,XXZL.SheHao,CostingPriceListNew.Cost' +
        'ingSize,CostingPriceLibrary.Color'
      
        ',CSBH_FLEX.CSBH,ZSZL.ZSYWJC,CSBH_FLEX.USERID,CSBH_FLEX.USERDATE ' +
        ',CSBH_FLEX.Replaced'
      'From CostingXXZLS'
      
        'left join CostingMatLibrary on CostingXXZLS.MTL_No=CostingMatLib' +
        'rary.MTL_No  and CostingMatLibrary.FlexMaterialCode <> '#39#39
      
        'left join CostingPriceLibrary on CostingPriceLibrary.MTL_No=Cost' +
        'ingMatLibrary.MTL_No and CostingPriceLibrary.Color_No=CostingXXZ' +
        'LS.Color_No'
      
        'left join XXZL  on CostingXXZLS.SKU = left(XXZL.article,charinde' +
        'x('#39'/'#39',XXZL.article+'#39'/'#39')-1)'
      
        'left join CostingPriceListNew on CostingXXZLS.SKU=CostingPriceLi' +
        'stNew.SKU and CostingXXZLS.CostingSeason=CostingPriceListNew.Cos' +
        'tingSeason '
      
        #9#9#9#9'and CostingPriceListNew.Round=CostingXXZLS.Round and Costing' +
        'PriceListNew.Factory=CostingXXZLS.Factory '
      
        'left join CSBH_FLEX on CSBH_FLEX.SupplierCode=CostingMatLibrary.' +
        'SupplierCode'
      'left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH'
      'where CostingXXZLS.SKU='#39'A13026C'#39
      '')
    UpdateObject = UpdateSQL5
    Left = 488
    Top = 328
    object Query_CLBHSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHCostingSeason: TStringField
      FieldName = 'CostingSeason'
      FixedChar = True
      Size = 4
    end
    object Query_CLBHComponent: TStringField
      FieldName = 'Component'
      FixedChar = True
      Size = 40
    end
    object Query_CLBHCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHFlexMaterialCode: TStringField
      FieldName = 'FlexMaterialCode'
      FixedChar = True
      Size = 15
    end
    object Query_CLBHMaterial: TStringField
      FieldKind = fkCalculated
      FieldName = 'Material'
      Size = 550
      Calculated = True
    end
    object Query_CLBHSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object Query_CLBHColor_No: TIntegerField
      FieldName = 'Color_No'
    end
    object Query_CLBHMTL_No: TIntegerField
      FieldName = 'MTL_No'
    end
    object Query_CLBHMaterialSeason: TStringField
      FieldName = 'MaterialSeason'
      FixedChar = True
      Size = 4
    end
    object Query_CLBHFactory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query_CLBHXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query_CLBHSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query_CLBHCostingSize: TFloatField
      FieldName = 'CostingSize'
    end
    object Query_CLBHMaterial_Text: TMemoField
      FieldName = 'Material_Text'
      BlobType = ftMemo
    end
    object Query_CLBHSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query_CLBHColor: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 40
    end
    object Query_CLBHSupplierCode: TStringField
      FieldName = 'SupplierCode'
      FixedChar = True
    end
    object Query_CLBHCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query_CLBHZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query_CLBHUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query_CLBHUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query_CLBHReplaced: TStringField
      FieldName = 'Replaced'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource6: TDataSource
    DataSet = Query_CLBH
    Left = 484
    Top = 384
  end
  object UpdateSQL5: TUpdateSQL
    ModifySQL.Strings = (
      'update CSBH_FLEX'
      'set'
      '  CSBH = :CSBH,'
      '  SupplierCode = :SupplierCode,'
      '  Supplier = :Supplier,'
      '  Replaced = :Replaced, '
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  CSBH = :CSBH and'
      '  SupplierCode = :SupplierCode'
      ''
      'update CostingPriceLibrary'
      'set'
      '  CLBH = :CLBH'
      'where'
      '  MTL_No = :MTL_No'
      '  and Color_No = :Color_No'
      '  and MaterialSeason = :MaterialSeason')
    InsertSQL.Strings = (
      'insert into CSBH_FLEX'
      '  (CSBH, SupplierCode, Supplier, Replaced, USERID, USERDATE)'
      'values'
      '  (:CSBH, :SupplierCode, :Supplier, '#39'0'#39', :USERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from CSBH_FLEX'
      'where'
      '  CSBH = :OLD_CSBH and'
      '  SupplierCode = :OLD_SupplierCode')
    Left = 488
    Top = 448
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource6
    SQL.Strings = (
      '---------------------------'
      'select XXZLS.CLBH'
      ',CLZL.YWPM'
      ',XXZLS.CSBH,ZSZL.ZSYWJC as ZSYWJC'
      ',Max(XXZLS.USERDATE) as BOMDATE'
      ',CCQQ,CCQZ ,MAX(BWZL.ywsm) as ywsm'
      
        ',sum(case when BWZL.ywsm=:Component then 1 else 0 end) as YN    ' +
        '     '
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB,XXZLS.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH   '
      ' from XXZLS '
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' OR CCQZ is null OR CCQZ ='#39#39
      ' )'
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH'
      ' from XXZLS'
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' OR CCQZ is null  OR CCQZ ='#39#39
      ' )'
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH  ' +
        '  from ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB,CCQQ,CCQZ,XH,XXZLS.BWBH  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      
        ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and ((Ca' +
        'st(:costingsize as float)<=Cast(CCQZ as float) and Cast(CCQQ as ' +
        'float)<=Cast(:costingsize as float)) OR'
      
        ' (Cast(:costingsize as float)>=Cast(CCQZ as float) and Cast(CCQQ' +
        ' as float)>=Cast(:costingsize as float)) and (Cast(CCQZ as float' +
        ')<Cast(CCQQ as float))'
      ' '
      ' OR CCQZ is null OR CCQZ ='#39#39')) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' ) XXZLS '
      'inner JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'
      'inner JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      
        'where XXZLS.CLBH  in (select cldh from clzl_flex where cldhflex=' +
        ':FlexMaterialCode )    '
      'group by XXZLS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,CCQQ,CCQZ,XXZLS.CSBH'
      'order by YN DESC')
    Left = 988
    Top = 184
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Component'
        ParamType = ptUnknown
        Size = 41
      end
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
        DataType = ftFloat
        Name = 'CostingSize'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
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
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
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
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'costingsize'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'FlexMaterialCode'
        ParamType = ptUnknown
        Size = 16
      end>
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
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object XXZLSBOMDATE: TDateTimeField
      FieldName = 'BOMDATE'
    end
    object XXZLSCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object XXZLSywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object XXZLSYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object DataSource7: TDataSource
    DataSet = XXZLS
    Left = 988
    Top = 248
  end
  object Queryclzl_flex: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource6
    SQL.Strings = (
      'select cldh from clzl_flex where cldhflex=:FlexMaterialCode'
      'and cldhflex<>'#39#39' and cldhflex is not null')
    Left = 992
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlexMaterialCode'
        ParamType = ptUnknown
      end>
  end
  object DataSource8: TDataSource
    DataSet = Queryclzl_flex
    Left = 988
    Top = 472
  end
end
