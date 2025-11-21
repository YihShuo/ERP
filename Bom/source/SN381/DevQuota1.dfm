object DevQuota: TDevQuota
  Left = 291
  Top = 401
  Width = 1130
  Height = 578
  Caption = 'CostingMTL cost'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label54: TLabel
      Left = 534
      Top = 36
      Width = 402
      Height = 20
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label58: TLabel
      Left = 720
      Top = 41
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LB_FTY: TLabel
      Left = 520
      Top = 41
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
    object BB7: TBitBtn
      Left = 70
      Top = 8
      Width = 50
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object bbt6: TBitBtn
      Left = 130
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt6Click
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
    object RGTable: TGroupBox
      Left = 192
      Top = 8
      Width = 321
      Height = 49
      Caption = 'CBD Table'
      TabOrder = 3
      object RB1: TRadioButton
        Left = 8
        Top = 22
        Width = 145
        Height = 17
        Hint = 'MaterialCBD'
        Caption = 'MaterialCBD'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RB1Click
      end
      object RB2: TRadioButton
        Left = 160
        Top = 22
        Width = 153
        Height = 17
        Hint = 'MaterialCBD_Cache'
        Caption = 'MaterialCBD_Cache'
        TabOrder = 1
        OnClick = RB1Click
      end
    end
    object CheckBox9: TCheckBox
      Left = 536
      Top = 17
      Width = 145
      Height = 17
      Caption = 'showSQL'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object CheckBox10: TCheckBox
      Left = 696
      Top = 17
      Width = 145
      Height = 17
      Caption = 'showSQL'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object CBBrand: TComboBox
      Left = 782
      Top = 36
      Width = 89
      Height = 24
      Style = csDropDownList
      Color = clMoneyGreen
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 6
      Text = '1-Converse'
      Items.Strings = (
        '1-Converse')
    end
    object CB_FTY: TComboBox
      Left = 598
      Top = 36
      Width = 89
      Height = 24
      Style = csDropDownList
      Color = clMoneyGreen
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = '1-LYN'
      Items.Strings = (
        '1-LYN'
        '2-LYI')
    end
  end
  object mainPC: TPageControl
    Left = 0
    Top = 65
    Width = 1114
    Height = 474
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Material'
      ImageIndex = 1
      TabVisible = False
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 536
          Top = 41
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Eng Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 344
          Top = 40
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 160
          Top = 38
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Price:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 248
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = -24
          Top = 38
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = -24
          Top = 9
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 432
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 608
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SBtn1: TSpeedButton
          Left = 46
          Top = 6
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object SBtn2: TSpeedButton
          Left = 295
          Top = 5
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object Label26: TLabel
          Left = 882
          Top = 40
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Type'
        end
        object Label29: TLabel
          Left = 768
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SeaSon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 720
          Top = 39
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
        object Edit9: TEdit
          Left = 620
          Top = 36
          Width = 117
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
        object Edit12: TEdit
          Left = 404
          Top = 36
          Width = 133
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button3: TButton
          Left = 1031
          Top = 32
          Width = 81
          Height = 28
          Caption = 'QUERY'
          TabOrder = 2
          OnClick = Button3Click
        end
        object CB2: TComboBox
          Left = 211
          Top = 34
          Width = 131
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'Not Price & Not Checked'
            'Have Price & Checked')
        end
        object ArticleEdit: TEdit
          Left = 315
          Top = 3
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit16: TEdit
          Left = 66
          Top = 34
          Width = 95
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
        object SREdit: TEdit
          Left = 63
          Top = 4
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 485
          Top = 4
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit10: TEdit
          Left = 660
          Top = 3
          Width = 85
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DisSKUBox1: TCheckBox
          Left = 1029
          Top = 9
          Width = 204
          Height = 17
          Caption = 'Discard Article#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object BWLBCombo1: TComboBox
          Left = 933
          Top = 36
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 10
          Text = '1-Normal'
          Items.Strings = (
            'All'
            '1-Normal'
            '3-Specical')
        end
        object CheckBox1: TCheckBox
          Left = 905
          Top = 8
          Width = 51
          Height = 17
          Caption = 'TW'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 11
        end
        object CheckBox2: TCheckBox
          Left = 964
          Top = 8
          Width = 51
          Height = 17
          Caption = 'VN'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 12
        end
        object Edit13: TEdit
          Left = 821
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object ComboBox4: TComboBox
          Left = 798
          Top = 34
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 14
          Text = '1-LYN'
          Items.Strings = (
            '1-LYN'
            '2-LYI')
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 65
        Width = 1106
        Height = 381
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Ref. SR'
            Width = 154
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Supplier'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Material'
            Width = 391
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Unit'
            Width = 51
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
            Title.Caption = '??|USD'
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'PriceFormula'
            Footers = <>
            Title.Caption = '????|PriceFormula'
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CostingRemark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Material'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Material'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Supplier'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ProdMOQ'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MOQ Pro'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Surcharge'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Dyingfee'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Dying fee'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'ExtraPrice'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Extra Price'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LeadTime|Pro'
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'Forecast_Leadtime'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LeadTime|no F/C'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            ReadOnly = True
            Width = 237
          end
          item
            EditButtons = <>
            FieldName = 'userID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ID#|USERID'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|USERDATE'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|CQDH'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            ReadOnly = True
            Width = 55
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Article'
      object PC1: TPageControl
        Left = 0
        Top = 0
        Width = 1106
        Height = 446
        ActivePage = TS2
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object TS1: TTabSheet
          Caption = 'Master'
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1098
            Height = 66
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 408
              Top = 43
              Width = 70
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'XieXing:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 568
              Top = 39
              Width = 60
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SheHao:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 184
              Top = 43
              Width = 83
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ArtName:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 216
              Top = 7
              Width = 57
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Article'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 454
              Top = 6
              Width = 50
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Season:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 972
              Top = 4
              Width = 402
              Height = 20
              AutoSize = False
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label21: TLabel
              Left = 0
              Top = 43
              Width = 79
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cutting die:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 784
              Top = 15
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'BuyNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label24: TLabel
              Left = 0
              Top = 7
              Width = 28
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SR#:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SBtn4: TSpeedButton
              Left = 275
              Top = 4
              Width = 17
              Height = 20
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SBtn3Click
            end
            object SBtn3: TSpeedButton
              Left = 30
              Top = 4
              Width = 17
              Height = 20
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SBtn3Click
            end
            object Edit1: TEdit
              Left = 481
              Top = 41
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object Edit2: TEdit
              Left = 629
              Top = 36
              Width = 57
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object Edit3: TEdit
              Left = 295
              Top = 4
              Width = 128
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object Edit5: TEdit
              Left = 266
              Top = 41
              Width = 151
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object Button1: TButton
              Left = 597
              Top = 4
              Width = 74
              Height = 33
              Caption = 'QUERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = Button1Click
            end
            object SeasonEdit: TEdit
              Left = 506
              Top = 4
              Width = 87
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object Edit6: TEdit
              Left = 81
              Top = 41
              Width = 120
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object BuyNoEdit: TEdit
              Left = 847
              Top = 4
              Width = 89
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Visible = False
            end
            object Edit11: TEdit
              Left = 51
              Top = 4
              Width = 166
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object DisSKUBox2: TCheckBox
              Left = 848
              Top = 44
              Width = 129
              Height = 17
              Caption = 'Discard Article#'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object CheckBox5: TCheckBox
              Left = 696
              Top = 41
              Width = 145
              Height = 17
              Caption = 'Mine(N385Uploader)'
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 10
            end
            object Button9: TButton
              Left = 685
              Top = 4
              Width = 74
              Height = 33
              Caption = 'RunAll'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              Visible = False
              OnClick = Button9Click
            end
          end
          object DBGrid1: TDBGridEh
            Left = 0
            Top = 66
            Width = 1098
            Height = 349
            Align = alClient
            DataSource = DS1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDblClick = DBGrid1DblClick
            OnGetCellParams = DBGrid1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'XieXing'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <
                  item
                    FieldName = 'XieXing'
                    ValueType = fvtCount
                  end>
                Title.Caption = 'ERP Name|ArtNo'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'SheHao'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'ERP Name|Color'
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'SKU#|Article'
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Costmer Name|ArtName'
                Width = 146
              end
              item
                EditButtons = <>
                FieldName = 'YSSM'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Costmer Name|Color Name'
                Width = 147
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'BZCC'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Sample|StandardSize'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'KFJC'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Dev info|Customer'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'JiJie'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Dev info|Season'
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'Dev info|DAOMH'
                Width = 97
              end
              item
                EditButtons = <>
                FieldName = 'DEVCODE'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clWindowText
                Footer.Font.Height = -11
                Footer.Font.Name = 'MS Sans Serif'
                Footer.Font.Style = []
                Footers = <>
                Title.Caption = 'SR#|DEVCODE'
                Width = 149
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Title.Caption = 'Half Year|Season'
                Width = 56
              end>
          end
        end
        object TS2: TTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1098
            Height = 57
            Align = alTop
            TabOrder = 0
            object DBText1: TDBText
              Left = 64
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'XieXing'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 239
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'SheHao'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 398
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'DEVCODE'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 936
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'XieMing'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label6: TLabel
              Left = 8
              Top = 6
              Width = 53
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ArtNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 176
              Top = 6
              Width = 59
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Color:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 328
              Top = 6
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SR:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 870
              Top = 6
              Width = 56
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ArtName:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 0
              Top = 30
              Width = 64
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'MatNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 200
              Top = 29
              Width = 47
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Price:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 402
              Top = 30
              Width = 52
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Type'
            end
            object Label28: TLabel
              Left = 535
              Top = 32
              Width = 55
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SupID:'
            end
            object SBtn5: TSpeedButton
              Left = 594
              Top = 28
              Width = 33
              Height = 22
              Caption = 'N%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SBtn3Click
            end
            object Label40: TLabel
              Left = 728
              Top = 6
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Season:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 790
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'JiJie'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label53: TLabel
              Left = 544
              Top = 6
              Width = 62
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SKU:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 614
              Top = 6
              Width = 60
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'Article'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Edit7: TEdit
              Left = 68
              Top = 28
              Width = 125
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object CB1: TComboBox
              Left = 250
              Top = 26
              Width = 147
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ItemIndex = 0
              ParentFont = False
              TabOrder = 1
              Text = 'ALL'
              Items.Strings = (
                'ALL'
                'Not Price & Not Checked'
                'Have Price & Checked')
            end
            object Button2: TButton
              Left = 832
              Top = 29
              Width = 88
              Height = 20
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = Button2Click
            end
            object BWLBCombo2: TComboBox
              Left = 454
              Top = 26
              Width = 89
              Height = 24
              Style = csDropDownList
              ItemHeight = 16
              ItemIndex = 1
              TabOrder = 3
              Text = '1-Normal'
              Items.Strings = (
                'All'
                '1-Normal'
                '3-Specical')
            end
            object CheckBox3: TCheckBox
              Left = 691
              Top = 30
              Width = 52
              Height = 17
              Caption = 'TW'
              Checked = True
              Color = 10395294
              ParentColor = False
              State = cbChecked
              TabOrder = 4
            end
            object CheckBox4: TCheckBox
              Left = 751
              Top = 30
              Width = 51
              Height = 17
              Caption = 'VN'
              Checked = True
              Color = 10395294
              ParentColor = False
              State = cbChecked
              TabOrder = 5
            end
            object SupEdit: TEdit
              Left = 632
              Top = 28
              Width = 50
              Height = 24
              TabOrder = 6
              Text = 'JNG'
            end
            object Button11: TButton
              Left = 928
              Top = 29
              Width = 88
              Height = 20
              Caption = 'SAVE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = Button11Click
            end
            object CheckBox11: TCheckBox
              Left = 1040
              Top = 32
              Width = 129
              Height = 17
              Caption = 'Run CostingSize'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 8
            end
          end
          object DBGrid2: TDBGridEh
            Left = 0
            Top = 57
            Width = 1098
            Height = 358
            Align = alClient
            Ctl3D = False
            DataSource = DS2
            EvenRowColor = clWindow
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 4
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = Popup1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = DBGrid2GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Flag'
                Footers = <>
                ShowImageAndText = True
              end
              item
                EditButtons = <>
                FieldName = 'ywsm'
                Footers = <>
                Title.Caption = 'PartName'
                Width = 114
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Supplier'
                Width = 89
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'MATERIAL'
                Width = 362
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Unit'
                Width = 38
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'SamplePrice'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'USD'
                Width = 54
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'PriceFormula'
                Footers = <>
                Width = 107
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Freight'
                Footers = <>
                Width = 52
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'CostingRemark'
                Footers = <>
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'ZWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'MATERIAL'
                Width = 203
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'MATERIAL'
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'ZSDH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Supplier'
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'userID'
                Footers = <>
                Title.Caption = 'USERID#'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'USERDATE'
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'BOMDATE'
                Footers = <>
                Title.Caption = 'BOM DATE'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'BWLB'
                Footers = <>
                Title.Caption = 'LB'
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footers = <>
                Width = 36
              end
              item
                EditButtons = <>
                FieldName = 'ProdMOQ'
                Footers = <>
                Title.Caption = 'MOQ'
              end
              item
                EditButtons = <>
                FieldName = 'Surcharge'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Dyingfee'
                Footers = <>
                Title.Caption = 'Dying fee'
              end
              item
                EditButtons = <>
                FieldName = 'ExtraPrice'
                Footers = <>
                Title.Caption = 'Extra Price'
              end
              item
                EditButtons = <>
                FieldName = 'ProdLeadTime'
                Footers = <>
                Title.Caption = 'LeadTime'
              end
              item
                EditButtons = <>
                FieldName = 'Forecast_Leadtime'
                Footers = <>
                Title.Caption = 'Leadtime(no F/C)'
              end
              item
                EditButtons = <>
                FieldName = 'DeliveryTerm'
                Footers = <>
                Width = 104
              end
              item
                EditButtons = <>
                FieldName = 'PurRemark'
                Footers = <>
                ReadOnly = True
              end>
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Material_His'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label30: TLabel
          Left = 560
          Top = 41
          Width = 76
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Eng Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 320
          Top = 40
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 144
          Top = 38
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Price:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 240
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = -32
          Top = 38
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Supplier:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = -24
          Top = 9
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 432
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 848
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object SpeedButton1: TSpeedButton
          Left = 46
          Top = 6
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object SpeedButton2: TSpeedButton
          Left = 287
          Top = 5
          Width = 17
          Height = 22
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object Label38: TLabel
          Left = 856
          Top = 40
          Width = 28
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Type'
        end
        object Label39: TLabel
          Left = 600
          Top = 8
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
        object Edit14: TEdit
          Left = 636
          Top = 36
          Width = 213
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
        object Edit15: TEdit
          Left = 380
          Top = 36
          Width = 189
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button4: TButton
          Left = 999
          Top = 31
          Width = 81
          Height = 29
          Caption = 'QUERY'
          TabOrder = 2
          OnClick = Button4Click
        end
        object ComboBox1: TComboBox
          Left = 195
          Top = 34
          Width = 131
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'Not Price & Not Checked'
            'Have Price & Checked')
        end
        object Edit17: TEdit
          Left = 307
          Top = 3
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit18: TEdit
          Left = 58
          Top = 34
          Width = 95
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
        object Edit19: TEdit
          Left = 63
          Top = 4
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit20: TEdit
          Left = 485
          Top = 4
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit21: TEdit
          Left = 900
          Top = 3
          Width = 53
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = False
        end
        object ComboBox2: TComboBox
          Left = 893
          Top = 36
          Width = 89
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 9
          Text = '1-Normal'
          Items.Strings = (
            'All'
            '1-Normal'
            '3-Specical')
        end
        object CheckBox6: TCheckBox
          Left = 705
          Top = 8
          Width = 51
          Height = 17
          Caption = 'TW'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 10
        end
        object CheckBox7: TCheckBox
          Left = 764
          Top = 8
          Width = 51
          Height = 17
          Caption = 'VN'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 11
        end
        object Edit22: TEdit
          Left = 653
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 65
        Width = 1106
        Height = 381
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
        PopupMenu = Popup2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Supplier'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Material'
            Width = 391
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Unit'
            Width = 51
          end
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            ShowImageAndText = True
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
            Title.Caption = '??|USD'
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'PriceFormula'
            Footers = <>
            Title.Caption = '????|PriceFormula'
            Width = 162
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Freight'
            Footers = <>
            Width = 45
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CostingRemark'
            Footers = <>
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Material'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Material'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|Supplier'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ProdMOQ'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MOQ Pro'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Surcharge'
            Footers = <>
            ReadOnly = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Dyingfee'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Dying fee'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'ExtraPrice'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Extra Price'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LeadTime|Pro'
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'Forecast_Leadtime'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LeadTime|no F/C'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'PurRemark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryTerm'
            Footers = <>
            ReadOnly = True
            Width = 237
          end
          item
            EditButtons = <>
            FieldName = 'userID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ID#|USERID'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|USERDATE'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|CQDH'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'sku'
            Footers = <>
            ReadOnly = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'ReCalculate'
      ImageIndex = 3
      TabVisible = False
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 41
        Width = 1208
        Height = 405
        Align = alClient
        DataSource = DS5
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingRemark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PriceFormula'
            Footers = <>
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1208
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label44: TLabel
          Left = 272
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = -24
          Top = 9
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 432
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 608
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 46
          Top = 6
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 239
          Top = 5
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object Label50: TLabel
          Left = 768
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SeaSon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 879
          Top = -1
          Width = 81
          Height = 29
          Caption = 'QUERY'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Edit25: TEdit
          Left = 315
          Top = 3
          Width = 109
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
        object Edit27: TEdit
          Left = 63
          Top = 4
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit28: TEdit
          Left = 485
          Top = 4
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit29: TEdit
          Left = 660
          Top = 3
          Width = 85
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit30: TEdit
          Left = 821
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Button6: TButton
          Left = 975
          Top = -1
          Width = 81
          Height = 29
          Caption = 'Calculate'
          TabOrder = 6
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 1071
          Top = -1
          Width = 81
          Height = 29
          Caption = 'Save'
          TabOrder = 7
          OnClick = Button7Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Re-find SKU'
      ImageIndex = 4
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label41: TLabel
          Left = 272
          Top = 8
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = -24
          Top = 9
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 432
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 608
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 46
          Top = 6
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object SpeedButton6: TSpeedButton
          Left = 239
          Top = 5
          Width = 17
          Height = 22
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn3Click
        end
        object Label49: TLabel
          Left = 768
          Top = 8
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SeaSon'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button8: TButton
          Left = 879
          Top = -1
          Width = 81
          Height = 29
          Caption = 'QUERY'
          TabOrder = 0
          OnClick = Button8Click
        end
        object Edit23: TEdit
          Left = 315
          Top = 3
          Width = 109
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
        object Edit24: TEdit
          Left = 63
          Top = 4
          Width = 170
          Height = 24
          CharCase = ecUpperCase
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit26: TEdit
          Left = 485
          Top = 4
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
        object Edit31: TEdit
          Left = 660
          Top = 3
          Width = 85
          Height = 24
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit32: TEdit
          Left = 821
          Top = 1
          Width = 44
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Button10: TButton
          Left = 975
          Top = -1
          Width = 81
          Height = 29
          Caption = 'Save'
          TabOrder = 6
          OnClick = Button10Click
        end
        object CheckBox8: TCheckBox
          Left = 1074
          Top = 9
          Width = 204
          Height = 17
          Caption = 'NonSKU'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 7
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 41
        Width = 1106
        Height = 405
        Align = alClient
        DataSource = DS6
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
        TabOrder = 1
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
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
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
            FieldName = 'SKU'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'DownLoadDatabase'
      ImageIndex = 5
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label56: TLabel
          Left = 24
          Top = 8
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
        object CheckBox12: TCheckBox
          Left = 225
          Top = 8
          Width = 51
          Height = 17
          Caption = 'TW'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox13: TCheckBox
          Left = 284
          Top = 8
          Width = 51
          Height = 17
          Caption = 'VN'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 77
          Top = 1
          Width = 68
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object BitBtn2: TBitBtn
          Left = 568
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
          OnClick = BitBtn2Click
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
        object BitBtn6: TBitBtn
          Left = 520
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
          TabOrder = 4
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
        object Button12: TButton
          Left = 616
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
          TabOrder = 5
          OnClick = Button12Click
        end
        object BB2: TBitBtn
          Left = 664
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
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 49
        Width = 889
        Height = 397
        Align = alLeft
        DataSource = DS7
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Forecast_Leadtime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ProdMOQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ExtraPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Surcharge'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Dyingfee'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CostingRemark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PriceFormula'
            Footers = <>
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
            FieldName = 'PurRemark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Freight'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KFCQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KHDH'
            Footers = <>
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 889
        Top = 49
        Width = 217
        Height = 397
        Align = alClient
        DataSource = DataSource1
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
            FieldName = 'Season'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KHBH'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CWHL_ID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CustomerCFMDate'
            Footers = <>
          end>
      end
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '---------------------------'
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,xxzls.XieXing as XX' +
        ',xxzls.SheHao as SS,'
      
        '       XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZL.IMGName,X' +
        'XZL.DAOMH,KFXXZL.DEVCODE'
      '       ,CostingPriceList.PricingSeason as JiJie'
      
        '       ,case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=' +
        #39'F'#39' then '#39'FH'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'H'#39' th' +
        'en '#39'FH'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'S'#39' th' +
        'en '#39'SS'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'U'#39' th' +
        'en '#39'SS'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      '       else '#39#39' end as Season,XXZL.KFCQ'
      'From CostingPriceList '
      
        'inner join XXZL with (nolock) on CostingPriceList.SKU = left(XXZ' +
        'L.article,LEN(CostingPriceList.SKU))  and XXZL.JiJie is not null' +
        ' '
      'and XXZL.KFCQ='#39'JNG'#39
      
        'inner join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao' +
        '=KFXXZL.SheHao '
      'inner join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join(select XXZLS.XieXing,XXZLS.SheHao,CostingPriceList.Pri' +
        'cingSeason'
      #9#9'  '#9#9'  FROM CostingPriceList'
      
        #9#9'  '#9#9'  inner join XXZL with (nolock) on CostingPriceList.SKU = ' +
        'left(XXZL.article,LEN(CostingPriceList.SKU))   and XXZL.JiJie is' +
        ' not null '
      'and XXZL.KFCQ='#39'JNG'#39' '
      #9#9'  '#9#9'  inner join '
      
        #9#9'  '#9#9#9'(select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,' +
        'XXZLS.BWLB from XXZLS'
      #9#9#9#9#9'      union all '
      
        #9#9#9#9'    select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,C' +
        'LZHZL.ZSDH as CSBH,XXZLS.BWLB from XXZLS'
      #9#9#9#9'    inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH '
      
        #9#9'        )XXZLS on XXZLS.XieXing=XXZL.XieXing and  XXZLS.Shehao' +
        '=XXZL.Shehao'
      '      inner JOIN  CLZL on CLZL.CLDH=XXZLS.CLBH '
      
        '      Left JOIN  MaterialCBD_His ON MaterialCBD_His.ZSBH=XXZLS.C' +
        'SBH and MaterialCBD_His.CLBH=XXZLS.CLBH and MaterialCBD_His.seas' +
        'on='
      
        '       (case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=' +
        #39'F'#39' then '#39'FH'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'H'#39' th' +
        'en '#39'FH'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'S'#39' th' +
        'en '#39'SS'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) '
      
        '       when SUBSTRING(CostingPriceList.PricingSeason,3,1)='#39'U'#39' th' +
        'en '#39'SS'#39'+ SUBSTRING(CostingPriceList.PricingSeason,1,2) end)'
      #9'   and MaterialCBD_His.YN=0'
      
        '      Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.Xie' +
        'Xing and MaterialCBDNo.SheHao=XXZLS.SheHao '
      
        '              and MaterialCBDNo.CLBH=XXZLS.CLBH and MaterialCBDN' +
        'o.Season=CostingPriceList.PricingSeason'
      
        '      LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=XXZLS.CSBH and ZSZL_DE' +
        'V.GSBH = '#39'CDC'#39' '
      
        '      Where IsNull(MaterialCBD_His.PriceFormula,'#39#39')='#39#39'  AND CLZL' +
        '.CLZMLB='#39'N'#39' and IsNull(MaterialCBDNo.YN,0)<>1 '
      '      and CostingPriceList.PricingSeason like '#39'25U%'#39
      '      and (XXZLS.BWLB=1) '
      '      and XXZLS.CSBH  not like '#39'JNG%'#39' '
      '      and XXZLS.CSBH <>'#39#39' '
      '      and XXZLS.CSBH <>'#39'JNG'#39' '
      '      and XXZLS.CSBH <>'#39'YQA'#39' '
      '      and XXZLS.CSBH <>'#39'FNS'#39' '
      
        '      Group by XXZLS.XieXing,XXZLS.SheHao,CostingPriceList.Prici' +
        'ngSeason'
      
        '      ) XXZLS on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxz' +
        'l.SheHao and XXZLS.PricingSeason=CostingPriceList.PricingSeason'
      'where ModelDescription not like '#39'%CBY%'#39
      ' and KFZL.KFJC like '#39'CONVERSE'#39
      'and CostingPriceList.PricingSeason like '#39'25U%'#39
      'and CostingPriceList.KFCQ='#39'JNG'#39
      
        'and not exists (select XieXing from XXZL_H where XXZL_H.XieXing=' +
        'XXZL.XieXing and XXZL_H.SheHao =XXZL.SheHao ) '
      
        'group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,xxzls.XieXing,xxz' +
        'ls.SheHao, '
      
        #9#9'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZL.IMGName,XXZL.D' +
        'AOMH,KFXXZL.DEVCODE,CostingPriceList.PricingSeason,XXZL.KFCQ'
      ' order by xxzls.SheHao desc,XXZL.XieXing,XXZL.Shehao')
    Left = 132
    Top = 272
    object XXZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object XXZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object XXZLDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object XXZLXX: TStringField
      FieldName = 'XX'
      FixedChar = True
      Size = 15
    end
    object XXZLSS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
    object XXZLDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object XXZLSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object XXZLKFCQ: TStringField
      FieldName = 'KFCQ'
      FixedChar = True
      Size = 3
    end
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select xh,CONVERT(Bit,IsNull(Max(MaterialCBDNo.YN),0)) as Flag,X' +
        'XZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,'
      
        'CLZL.DWBH,Max(XXZLS.CSBH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC,CLZ' +
        'L.CLZMLB'
      
        '        ,MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,Mate' +
        'rialCBD_His.userdate,MaterialCBD_His.PriceFormula,MaterialCBD_Hi' +
        's.CostingRemark,MaterialCBD_His.Freight'
      
        '       ,Max(XXZLS.USERDATE) as BOMDATE,Max(XXZLS.BWLB) as BWLB,C' +
        'LZL.CQDH'
      
        '       ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,M' +
        'aterialMOQ.ProdMOQ'
      
        '        ,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,MaterialMOQ.' +
        'ExtraPrice'
      
        '        ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark as PurRemark,C' +
        'CQQ,max(CCQZ) as CCQZ,BWZL.ywsm,zszl_flex.zsdhflex'
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB,XXZLS.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH   '
      ' from XXZLS '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH  ' +
        '  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH  ' +
        '  from ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB,CCQQ,CCQZ,XH,XXZLS.BWBH  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' ) XXZLS '
      'inner JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'
      'inner JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      
        'Left Join MaterialCBD_His ON  MaterialCBD_His.ZSBH=XXZLS.CSBH an' +
        'd MaterialCBD_His.CLBH=XXZLS.CLBH'
      
        '       and MaterialCBD_His.Season=:Season and MaterialCBD_His.YN' +
        '=0'
      'and MaterialCBD_His.KFCQ='#39'YQA'#39
      'and MaterialCBD_His.GSBH='#39'VB1'#39
      'and MaterialCBD_His.KHDH='#39'036'#39
      
        'Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing a' +
        'nd MaterialCBDNo.SheHao=XXZLS.SheHao '
      
        '      and MaterialCBDNo.CLBH=XXZLS.CLBH and MaterialCBDNo.Season' +
        '=:JiJie'
      'and MaterialCBDNo.GSBH='#39'VB1'#39
      
        'Left JOIN (select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtim' +
        'e,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,MaterialMOQ.Remark '
      '               from('
      
        '                   select CLBH,ZSBH,Season,ProdLeadTime,Forecast' +
        '_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,MaterialMOQ.Rema' +
        'rk from MaterialMOQ '
      '                   UNION ALL'
      
        '                   select CLZL_LS.JHDH as CLBH,ZSBH,season,ProdL' +
        'eadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,' +
        'MaterialMOQ.Remark from MaterialMOQ '
      
        '                   INNER  join CLZL_LS on CLZL_LS.CLDH = Materia' +
        'lMOQ.CLBH'
      '                   ) MaterialMOQ'
      
        '           )MaterialMOQ on MaterialMOQ.ZSBH=XXZLS.CSBH and  Mate' +
        'rialMOQ.CLBH = XXZLS.CLBH '
      
        'LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=XXZLS.CSBH and ZSZL_DEV.GSBH' +
        ' = '#39'CDC'#39
      'left join zszl_flex on zszl_flex.zsdh=XXZLS.CSBH'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  AND CLZL.' +
        'CLZMLB='#39'N'#39
      'and XXZLS.CLBH like'#39'%'#39
      '      and XXZLS.CSBH  not like '#39'YQA%'#39' '
      'and (XXZLS.BWLB=1 ) '
      
        'group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB,C' +
        'LZL.CQDH'
      
        '         ,MaterialCBD_His.CLBH,MaterialCBD_His.SamplePrice,Mater' +
        'ialCBD_His.userID,MaterialCBD_His.userdate,MaterialCBD_His.Price' +
        'Formula,MaterialCBD_His.CostingRemark,MaterialCBD_His.Freight'
      
        '         ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime' +
        ' '
      
        '         ,MaterialMOQ.ProdMOQ,MaterialMOQ.Surcharge,MaterialMOQ.' +
        'Dyingfee'
      
        '         ,MaterialMOQ.ExtraPrice,ZSZL_DEV.DeliveryTerm,MaterialM' +
        'OQ.Remark,xh,CCQQ,BWZL.ywsm,zszl_flex.zsdhflex'
      'ORDER BY XH,ywsm')
    UpdateObject = UpdateSQL1
    Left = 172
    Top = 272
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
        DataType = ftFixedChar
        Name = 'Season'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'JiJie'
        ParamType = ptUnknown
        Size = 21
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
    object XXZLSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
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
    object XXZLSSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      OnSetText = XXZLSSamplePriceSetText
      DisplayFormat = '#,##0.0000'
    end
    object XXZLSPriceFormula: TStringField
      FieldName = 'PriceFormula'
      FixedChar = True
      Size = 50
    end
    object XXZLSCostingRemark: TStringField
      FieldName = 'CostingRemark'
      FixedChar = True
      Size = 100
    end
    object XXZLSuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object XXZLSuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object XXZLSFlag: TBooleanField
      FieldName = 'Flag'
    end
    object XXZLSBOMDATE: TDateTimeField
      FieldName = 'BOMDATE'
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object XXZLSProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object XXZLSForecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object XXZLSProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object XXZLSSurcharge: TCurrencyField
      FieldName = 'Surcharge'
      currency = False
    end
    object XXZLSDyingfee: TCurrencyField
      FieldName = 'Dyingfee'
      currency = False
    end
    object XXZLSExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
      currency = False
    end
    object XXZLSDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
      Size = 100
    end
    object XXZLSPurRemark: TStringField
      FieldName = 'PurRemark'
      FixedChar = True
      Size = 100
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
    object XXZLSFreight: TStringField
      FieldName = 'Freight'
      FixedChar = True
      Size = 5
    end
    object XXZLSzsdhflex: TStringField
      FieldName = 'zsdhflex'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 132
    Top = 304
  end
  object DS2: TDataSource
    DataSet = XXZLS
    OnDataChange = DS2DataChange
    Left = 172
    Top = 304
  end
  object TemQry: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 272
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    Left = 172
    Top = 368
  end
  object XXMQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select max(KFXXZL.DEVCODE)as DEVCODE ,XXZLS.CLBH,CLZL.YWPM, CLZL' +
        '.ZWPM,CLZL.DWBH,Max(XXZLS.CSBH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYW' +
        'JC,'
      
        '       MaterialCBD.SamplePrice,max(MaterialCBD.PriceFormula) as ' +
        'PriceFormula ,max(MaterialCBD.CostingRemark) as CostingRemark ,M' +
        'aterialCBD.userID,MaterialCBD.userdate,CLZL.CQDH,'
      
        '       Max(MaterialMOQ.ProdLeadTime) as ProdLeadTime,Max(Materia' +
        'lMOQ.Forecast_Leadtime)as Forecast_Leadtime,Max(MaterialMOQ.Prod' +
        'MOQ)as ProdMOQ,Max(MaterialMOQ.Surcharge) as Surcharge,'
      
        '       Max(MaterialMOQ.Dyingfee)as Dyingfee, Max(MaterialMOQ.Ext' +
        'raPrice) as ExtraPrice,KFXXZL.JiJie as season'
      
        ',(select DeliveryTerm from ZSZL_DEV where ZSZL_DEV.ZSDH=XXZLS.CS' +
        'BH and ZSZL_DEV.GSBH = '#39'CDC'#39') as DeliveryTerm'
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB '
      ' from XXZLS '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB  from ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' ) XXZLS '
      
        'Left join XXZL on XXZL.XieXIng=XXZLS.XieXing and XXZL.Shehao=XXZ' +
        'LS.SheHao '
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'Left JOIN KFXXZL on XXZLS.XieXing=KFXXZL.XieXing and XXZLS.SheHa' +
        'o=KFXXZL.SheHao '
      
        'Left JOIN (select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtim' +
        'e,ProdMOQ,Surcharge,Dyingfee,ExtraPrice '
      '               from('
      
        '                   select CLBH,ZSBH,Season,ProdLeadTime,Forecast' +
        '_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice from MaterialMOQ'
      '                   UNION ALL'
      
        '                   select CLZL_LS.JHDH as CLBH,ZSBH,season,ProdL' +
        'eadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice ' +
        'from MaterialMOQ'
      
        '                   INNER  join CLZL_LS on CLZL_LS.CLDH = Materia' +
        'lMOQ.CLBH'
      '                   ) MaterialMOQ'
      
        '           )MaterialMOQ on MaterialMOQ.ZSBH=XXZLS.CSBH and  Mate' +
        'rialMOQ.CLBH = XXZLS.CLBH  and  MaterialMOQ.Season =KFXXZL.JiJie'
      
        'Left Join MaterialCBD MaterialCBD ON MaterialCBD.CLBH=XXZLS.CLBH' +
        '  '
      
        'Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing a' +
        'nd MaterialCBDNo.SheHao=XXZLS.SheHao and MaterialCBDNo.CLBH=XXZL' +
        'S.CLBH '
      
        'Left JOIN DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZ' +
        'LS.SheHao '
      'where  CLZL.CLZMLB='#39'N'#39
      'and KFXXZL.JiJie like '#39'24U%'#39
      'and XXZLS.CLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.ZWPM like '#39'%%'#39
      'and (XXZLS.BWLB=1) '
      
        'and not exists (select XieXing from XXZL_H where XXZL_H.XieXing=' +
        'XXZL.XieXing and XXZL_H.SheHao =XXZL.SheHao ) '
      
        'group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,KFX' +
        'XZL.JiJie,'
      
        '         MaterialCBD.SamplePrice,MaterialCBD.userID,MaterialCBD.' +
        'userdate,XXZLS.CSBH'
      'ORDER BY XXZLS.CLBH')
    Left = 92
    Top = 272
    object XXMQZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXMQCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXMQYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXMQZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object XXMQDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXMQSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      OnSetText = XXMQSamplePriceSetText
      DisplayFormat = '#,##0.0000'
    end
    object XXMQPriceFormula: TStringField
      FieldName = 'PriceFormula'
      FixedChar = True
      Size = 25
    end
    object XXMQCostingRemark: TStringField
      FieldName = 'CostingRemark'
      FixedChar = True
      Size = 25
    end
    object XXMQZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object XXMQProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object XXMQSurcharge: TCurrencyField
      FieldName = 'Surcharge'
      currency = False
    end
    object XXMQDyingfee: TCurrencyField
      FieldName = 'Dyingfee'
      currency = False
    end
    object XXMQExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
      currency = False
    end
    object XXMQProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object XXMQForecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object XXMQDeliveryTerm: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
      Size = 100
    end
    object XXMQuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object XXMQuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object XXMQCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object XXMQSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object XXMQDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
  end
  object DS3: TDataSource
    AutoEdit = False
    DataSet = XXMQ
    Left = 84
    Top = 304
  end
  object UpdateSQL2: TUpdateSQL
    Left = 84
    Top = 336
  end
  object Popup1: TPopupMenu
    AutoHotkeys = maManual
    Left = 172
    Top = 416
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
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
    object SRList1: TMenuItem
      Caption = 'SR# List'
      OnClick = SRList1Click
    end
  end
  object Popup2: TPopupMenu
    AutoHotkeys = maManual
    Left = 308
    Top = 368
    object Modify2: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SRList2: TMenuItem
      Caption = 'SR# List'
      OnClick = SRList2Click
    end
  end
  object TemQry1: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 320
  end
  object DS4: TDataSource
    DataSet = Query1
    Left = 308
    Top = 320
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '---------------------------'
      
        'select CONVERT(Bit,IsNull(MaterialCBD_His.YN,0)) as YN,MaterialC' +
        'BD_His.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,MaterialCBD_His.ZSBH ' +
        'as ZSDH'
      
        '   ,Max(ZSZL.ZSYWJC) as ZSYWJC,MaterialCBD_His.SamplePrice,Max(M' +
        'aterialCBD_His.PriceFormula)as PriceFormula'
      
        #9'   ,max(MaterialCBD_His.CostingRemark) as CostingRemark ,Materi' +
        'alCBD_His.userID,MaterialCBD_His.userdate,CLZL.CQDH'
      
        '   ,max(MaterialMOQ.ProdLeadTime)as ProdLeadTime,max(MaterialMOQ' +
        '.Forecast_Leadtime)as Forecast_Leadtime,max(MaterialMOQ.ProdMOQ)' +
        ' as ProdMOQ'
      
        '   ,max(MaterialMOQ.Surcharge) as Surcharge,max(MaterialMOQ.Dyin' +
        'gfee) as Dyingfee,max(MaterialMOQ.ExtraPrice) as ExtraPrice'
      '          ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark as PurRemark'
      
        '   ,MaterialCBD_His.Season,max(xxzl.ARTICLE) as sku,MaterialCBD_' +
        'His.Freight'
      'From MaterialCBD_His'
      'LEFT JOIN CLZL   ON MaterialCBD_His.CLBH = CLZL.cldh '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=MaterialCBD_His.ZSBH '
      
        'left join xxzl on MaterialCBD_His.SheHao=xxzl.SheHao and Materia' +
        'lCBD_His.XieXing=xxzl.XieXing'
      
        'Left JOIN KFXXZL on MaterialCBD_His.XieXing=KFXXZL.XieXing and M' +
        'aterialCBD_His.SheHao=KFXXZL.SheHao '
      
        'left join(select case when MaterialMOQ.CLBH is not null then Mat' +
        'erialMOQ.CLBH '
      '       else MaterialMOQ_Temp.CLBH end as CLBH,'
      
        '       MaterialMOQ.Season,MaterialCBD_His.ZSBH,MaterialCBD_His.S' +
        'eason as Season2'
      'From MaterialCBD_His'
      
        'left join MaterialMOQ on MaterialMOQ.CLBH=MaterialCBD_His.CLBH  ' +
        'and MaterialMOQ.ZSBH=MaterialCBD_His.ZSBH '
      
        '   and  (MaterialMOQ.Season = (case when SUBSTRING(MaterialCBD_H' +
        'is.Season,1,2)='#39'SS'#39' then SUBSTRING(MaterialCBD_His.Season,3,2)+'#39 +
        'S'#39' else SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'F'#39'  end )'
      
        '   or MaterialMOQ.Season = (case when SUBSTRING(MaterialCBD_His.' +
        'Season,1,2)='#39'SS'#39' then SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'U'#39' ' +
        'else SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'H'#39'  end ))'
      
        'left join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH and CLZL_LS' +
        '.JHDH is not null'
      
        'left join MaterialMOQ MaterialMOQ_Temp on CLZL_LS.JHDH = Materia' +
        'lMOQ_Temp.CLBH and MaterialMOQ_Temp.ZSBH=MaterialCBD_His.ZSBH '
      
        '   and  (MaterialMOQ.Season = (case when SUBSTRING(MaterialCBD_H' +
        'is.Season,1,2)='#39'SS'#39' then SUBSTRING(MaterialCBD_His.Season,3,2)+'#39 +
        'S'#39' else SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'F'#39'  end )'
      
        '   or MaterialMOQ.Season = (case when SUBSTRING(MaterialCBD_His.' +
        'Season,1,2)='#39'SS'#39' then SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'U'#39' ' +
        'else SUBSTRING(MaterialCBD_His.Season,3,2)+'#39'H'#39'  end ))'
      
        ')MaterialMOQ_Temp on MaterialMOQ_Temp.CLBH=MaterialCBD_His.CLBH ' +
        'and MaterialMOQ_Temp.ZSBH=MaterialCBD_His.ZSBH and  MaterialMOQ_' +
        'Temp.Season2 =MaterialCBD_His.Season'
      
        'Left JOIN MaterialMOQ on MaterialMOQ_Temp.CLBH=MaterialMOQ.CLBH ' +
        'and MaterialMOQ_Temp.ZSBH=MaterialMOQ.ZSBH and  MaterialMOQ_Temp' +
        '.Season =MaterialMOQ.Season'
      
        '  LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GS' +
        'BH = '#39'CDC'#39
      'where CLZL.CLZMLB='#39'N'#39'  and MaterialCBD_His.KFCQ='#39'JNG'#39
      'and MaterialCBD_His.CLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.ZWPM like '#39'%%'#39
      'and MaterialCBD_His.Season like '#39'SS25'#39
      
        'group by MaterialCBD_His.YN,MaterialCBD_His.CLBH,CLZL.YWPM, CLZL' +
        '.ZWPM,CLZL.DWBH,CLZL.CQDH,MaterialCBD_His.ZSBH,'
      
        '         MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,Mate' +
        'rialCBD_His.userdate,MaterialCBD_His.Season'
      
        '          ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark,MaterialCBD_' +
        'His.Freight'
      'ORDER BY ZSDH')
    Left = 308
    Top = 272
    object StringField1: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object StringField2: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'SamplePrice'
      OnSetText = XXMQSamplePriceSetText
      DisplayFormat = '#,##0.0000'
    end
    object Query1PriceFormula: TStringField
      FieldName = 'PriceFormula'
      FixedChar = True
      Size = 25
    end
    object Query1Freight: TStringField
      FieldName = 'Freight'
      FixedChar = True
      Size = 5
    end
    object Query1CostingRemark: TStringField
      FieldName = 'CostingRemark'
      FixedChar = True
      Size = 25
    end
    object StringField6: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'Surcharge'
      currency = False
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'Dyingfee'
      currency = False
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'ExtraPrice'
      currency = False
    end
    object IntegerField1: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object Query1PurRemark: TStringField
      FieldName = 'PurRemark'
      FixedChar = True
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'DeliveryTerm'
      FixedChar = True
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'userdate'
    end
    object StringField9: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1sku: TStringField
      FieldName = 'sku'
      FixedChar = True
    end
    object Query1YN: TBooleanField
      FieldName = 'YN'
    end
  end
  object CalculateQuery: TQuery
    Left = 352
    Top = 271
  end
  object DS5: TDataSource
    DataSet = QueryReC
    Left = 436
    Top = 308
  end
  object QueryReC: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from MaterialCBD'
      'where 1=1')
    UpdateObject = UpdateSQL3
    Left = 436
    Top = 276
    object QueryReCCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QueryReCGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QueryReCZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QueryReCSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 10
    end
    object QueryReCSamplePrice: TFloatField
      FieldName = 'SamplePrice'
    end
    object QueryReCUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object QueryReCUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object QueryReCYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QueryReCCostingRemark: TStringField
      FieldName = 'CostingRemark'
      FixedChar = True
      Size = 30
    end
    object QueryReCPriceFormula: TStringField
      FieldName = 'PriceFormula'
      FixedChar = True
      Size = 25
    end
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialCBD'
      'set'
      '  SamplePrice = :SamplePrice'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  GSBH = :OLD_GSBH and'
      '  ZSBH = :OLD_ZSBH')
    Left = 436
    Top = 340
  end
  object QuerySKU: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      'select * from('
      
        'select MaterialCBD_His.CLBH,MaterialCBD_His.ZSBH,MaterialCBD_His' +
        '.YN,MaterialCBD_His.Season,'
      'xxzl.XieXing,xxzl.SheHao, CostingPriceList.SKU,'
      
        #9'ROW_NUMBER() over (PARTITION by  MaterialCBD_His.CLBH,MaterialC' +
        'BD_His.ZSBH,MaterialCBD_His.YN,MaterialCBD_His.Season ORDER BY A' +
        'RTICLE) as rn'
      #9'from MaterialCBD_His'
      'left join XXZLS on MaterialCBD_His.CLBH=XXZLS.CLBH '#9
      
        'left join xxzl on XXZLS.SheHao=xxzl.SheHao and XXZLS.XieXing=xxz' +
        'l.XieXing'
      
        'left join CostingPriceList on CostingPriceList.SKU like xxzl.ART' +
        'ICLE and CostingPriceList.PricingSeason=MaterialCBD_His.Season'
      'where MaterialCBD_His.season like '#39'%24F%'#39' '
      'and MaterialCBD_His.Xiexing is null '
      ')x where rn=1')
    UpdateObject = UpdateSQL4
    Left = 500
    Top = 276
    object QuerySKUCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QuerySKUZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QuerySKUYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QuerySKUSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 10
    end
    object QuerySKUXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object QuerySKUSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object QuerySKUSKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
      Size = 10
    end
    object QuerySKUrn: TFloatField
      FieldName = 'rn'
    end
  end
  object DS6: TDataSource
    DataSet = QuerySKU
    Left = 500
    Top = 308
  end
  object UpdateSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialCBD_His'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  ZSBH = :OLD_ZSBH and'
      '  YN = :OLD_YN and'
      '  Season = :OLD_Season')
    InsertSQL.Strings = (
      'insert into MaterialCBD_His'
      '  (XieXing, SheHao)'
      'values'
      '  (:XieXing, :SheHao)')
    DeleteSQL.Strings = (
      'delete from MaterialCBD_His'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  ZSBH = :OLD_ZSBH and'
      '  YN = :OLD_YN and'
      '  Season = :OLD_Season')
    Left = 500
    Top = 340
  end
  object QueryCostingSize: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Segment from xxzlkf'
      'where 1=1')
    Left = 216
    Top = 276
  end
  object DS7: TDataSource
    DataSet = UploadQuery
    Left = 548
    Top = 308
  end
  object UploadQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MaterialCBD_His '
      'where 1=2')
    UpdateObject = UpdateSQL5
    Left = 548
    Top = 272
    object UploadQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object UploadQueryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object UploadQueryZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object UploadQuerySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 10
    end
    object UploadQuerySamplePrice: TFloatField
      FieldName = 'SamplePrice'
    end
    object UploadQueryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object UploadQueryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object UploadQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object UploadQueryProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object UploadQueryForecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object UploadQueryProdMOQ: TStringField
      FieldName = 'ProdMOQ'
      FixedChar = True
      Size = 10
    end
    object UploadQueryExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
      currency = False
    end
    object UploadQuerySurcharge: TCurrencyField
      FieldName = 'Surcharge'
      currency = False
    end
    object UploadQueryDyingfee: TCurrencyField
      FieldName = 'Dyingfee'
      currency = False
    end
    object UploadQueryCostingRemark: TStringField
      FieldName = 'CostingRemark'
      FixedChar = True
      Size = 40
    end
    object UploadQueryPriceFormula: TStringField
      FieldName = 'PriceFormula'
      FixedChar = True
      Size = 50
    end
    object UploadQueryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object UploadQuerySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object UploadQueryPurRemark: TStringField
      FieldName = 'PurRemark'
      FixedChar = True
      Size = 100
    end
    object UploadQueryFreight: TStringField
      FieldName = 'Freight'
      FixedChar = True
      Size = 3
    end
    object UploadQueryKFCQ: TStringField
      FieldName = 'KFCQ'
      FixedChar = True
      Size = 3
    end
    object UploadQueryKHDH: TStringField
      FieldName = 'KHDH'
      Origin = 'DB.MaterialCBD_His.KHDH'
      FixedChar = True
      Size = 5
    end
  end
  object UpdateSQL5: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialCBD_His'
      'set'
      '  CLBH = :CLBH,'
      '  GSBH = :GSBH,'
      '  ZSBH = :ZSBH,'
      '  Season = :Season,'
      '  SamplePrice = :SamplePrice,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  ProdLeadTime = :ProdLeadTime,'
      '  Forecast_Leadtime = :Forecast_Leadtime,'
      '  ProdMOQ = :ProdMOQ,'
      '  ExtraPrice = :ExtraPrice,'
      '  Surcharge = :Surcharge,'
      '  Dyingfee = :Dyingfee,'
      '  CostingRemark = :CostingRemark,'
      '  PriceFormula = :PriceFormula,'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  PurRemark = :PurRemark,'
      '  Freight = :Freight,'
      '  KFCQ = :KFCQ,'
      '  KHDH = :KHDH'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  GSBH = :OLD_GSBH and'
      '  ZSBH = :OLD_ZSBH and'
      '  Season = :OLD_Season and'
      '  YN = :OLD_YN and'
      '  KFCQ = :OLD_KFCQ and'
      '  KHDH = :OLD_KHDH')
    InsertSQL.Strings = (
      'insert into MaterialCBD_His'
      
        '  (CLBH, GSBH, ZSBH, Season, SamplePrice, USERID, USERDATE, YN, ' +
        'ProdLeadTime, '
      
        '   Forecast_Leadtime, ProdMOQ, ExtraPrice, Surcharge, Dyingfee, ' +
        'CostingRemark, '
      
        '   PriceFormula, XieXing, SheHao, PurRemark, Freight, KFCQ, KHDH' +
        ')'
      'values'
      
        '  (:CLBH, :GSBH, :ZSBH, :Season, :SamplePrice, :USERID, :USERDAT' +
        'E, :YN, '
      
        '   :ProdLeadTime, :Forecast_Leadtime, :ProdMOQ, :ExtraPrice, :Su' +
        'rcharge, '
      
        '   :Dyingfee, :CostingRemark, :PriceFormula, :XieXing, :SheHao, ' +
        ':PurRemark, '
      '   :Freight, :KFCQ, :KHDH)')
    DeleteSQL.Strings = (
      'delete from MaterialCBD_His'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  GSBH = :OLD_GSBH and'
      '  ZSBH = :OLD_ZSBH and'
      '  Season = :OLD_Season and'
      '  YN = :OLD_YN and'
      '  KFCQ = :OLD_KFCQ and'
      '  KHDH = :OLD_KHDH')
    Left = 548
    Top = 360
  end
  object opendialog: TOpenDialog
    Left = 552
    Top = 400
  end
  object UploadCBDEx: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MaterialCBDEx')
    UpdateObject = UpdateSQL6
    Left = 604
    Top = 272
    object UploadCBDExSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object UploadCBDExGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object UploadCBDExKHBH: TStringField
      FieldName = 'KHBH'
      Origin = 'DB.MaterialCBDEx.KHBH'
      FixedChar = True
      Size = 4
    end
    object UploadCBDExCWHL: TFloatField
      FieldName = 'CWHL'
    end
    object UploadCBDExCWHL_ID: TFloatField
      FieldName = 'CWHL_ID'
      Origin = 'DB.MaterialCBDEx.CWHL_ID'
    end
    object UploadCBDExUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object UploadCBDExUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object UploadCBDExCustomerCFMDate: TDateTimeField
      FieldName = 'CustomerCFMDate'
      Origin = 'DB.MaterialCBDEx.CustomerCFMDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = UploadCBDEx
    Left = 604
    Top = 316
  end
  object UpdateSQL6: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialCBDEx'
      'set'
      '  Season = :Season,'
      '  GSBH = :GSBH,'
      '  KHBH = :KHBH,'
      '  CWHL = :CWHL,'
      '  CWHL_ID = :CWHL_ID,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  CustomerCFMDate = :CustomerCFMDate'
      'where'
      '  Season = :OLD_Season and'
      '  GSBH = :OLD_GSBH and'
      '  KHBH = :OLD_KHBH')
    InsertSQL.Strings = (
      'insert into MaterialCBDEx'
      
        '  (Season, GSBH, KHBH, CWHL, CWHL_ID, USERID, USERDATE, Customer' +
        'CFMDate)'
      'values'
      
        '  (:Season, :GSBH, :KHBH, :CWHL, :CWHL_ID, :USERID, :USERDATE, :' +
        'CustomerCFMDate)')
    DeleteSQL.Strings = (
      'delete from MaterialCBDEx'
      'where'
      '  Season = :OLD_Season and'
      '  GSBH = :OLD_GSBH and'
      '  KHBH = :OLD_KHBH')
    Left = 604
    Top = 360
  end
end
