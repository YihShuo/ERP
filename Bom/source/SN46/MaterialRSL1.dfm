object MaterialRSL: TMaterialRSL
  Left = 194
  Top = 142
  Width = 1467
  Height = 851
  Caption = 'MaterialRSL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1459
    Height = 755
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 237
      Width = 1457
      Height = 517
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGrid1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLDH'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footer.FieldName = 'CLDH'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#32232#34399'|MatNo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 84
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'CLLB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #39006#21029'|cllb'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#20013#25991'|zwpm'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 242
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#33521#25991'|ywpm'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 255
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #21934#20301'|dwbh'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 44
        end
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'DCYN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          PickList.Strings = (
            'N'
            'Y')
          Title.Caption = #38283#30332'|DCYN'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 47
        end
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'PDYN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          PickList.Strings = (
            'N'
            'Y')
          Title.Caption = #37327#29986'|PDYN'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 47
        end
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'Memo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          PickList.Strings = (
            'Not Top 5%')
          Title.Caption = #20633#35387'|Memo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 78
        end
        item
          Color = 12582911
          EditButtons = <>
          FieldName = 'Gender'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          PickList.Strings = (
            'KIDS')
          Title.Caption = #20633#35387'|GenderMemo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773'|USERID'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'ZSDH'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          Title.Caption = #24288#21830'ID|SupID'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          Title.Caption = #24288#21830#21517#31281'|Supplier'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 104
        end
        item
          EditButtons = <>
          FieldName = 'CLZMLB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'object BBTT1: TButton'
          Font.Style = []
          Footers = <>
          Title.Caption = #23376#27597'|ZMLB'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'object BBTT1: TButton'
          Title.Font.Style = []
          Width = 47
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1457
      Height = 140
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 7
        Top = 10
        Width = 77
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MatNo:'
      end
      object Label2: TLabel
        Left = 215
        Top = 10
        Width = 73
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Name:'
      end
      object Label7: TLabel
        Left = 793
        Top = 90
        Width = 69
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Mode:'
      end
      object Label9: TLabel
        Left = 553
        Top = 10
        Width = 81
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Brand:'
      end
      object Label14: TLabel
        Left = 793
        Top = 114
        Width = 72
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ZMLB:'
      end
      object Label17: TLabel
        Left = 761
        Top = 10
        Width = 93
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supplier:'
      end
      object Label18: TLabel
        Left = 787
        Top = 53
        Width = 65
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gender:'
      end
      object CLDHEdit: TEdit
        Left = 89
        Top = 7
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = CLDHEditKeyPress
      end
      object YWPM1Edit: TEdit
        Left = 295
        Top = 7
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = YWPM1EditKeyPress
      end
      object Button1: TButton
        Left = 1008
        Top = 93
        Width = 89
        Height = 33
        Caption = 'QUERY'
        TabOrder = 2
        OnClick = Button1Click
      end
      object YWPM2Edit: TEdit
        Left = 424
        Top = 7
        Width = 121
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 3
        OnKeyPress = YWPM2EditKeyPress
      end
      object CB1: TComboBox
        Left = 869
        Top = 86
        Width = 125
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
        Items.Strings = (
          'ALL'
          'DCYN = Y'
          'DCYN = N'
          'DCYN = BLANK'
          'PDYN = Y'
          'PDYN = N'
          'PDYN = BLANK'
          'Memo = BLANK'
          'Memo <> Memo'
          'GenderMemo = BLANK'
          'GenderMemo <> BLANK')
      end
      object BrandCombo: TComboBox
        Left = 639
        Top = 7
        Width = 118
        Height = 24
        ItemHeight = 16
        TabOrder = 5
        Text = 'CONVERSE'
        Items.Strings = (
          'CONVERSE'
          'VANS'
          'HOKA')
      end
      object ZMLBCombo: TComboBox
        Left = 869
        Top = 110
        Width = 125
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 6
        Text = 'ALL'
        Items.Strings = (
          'ALL'
          'Y'
          'N')
      end
      object RB1: TRadioButton
        Left = 2
        Top = 52
        Width = 14
        Height = 17
        Checked = True
        TabOrder = 7
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 2
        Top = 103
        Width = 14
        Height = 17
        TabOrder = 8
      end
      object GroupBox1: TGroupBox
        Left = 17
        Top = 31
        Width = 770
        Height = 50
        Caption = 'Production'
        TabOrder = 9
        object Label8: TLabel
          Left = 124
          Top = 20
          Width = 73
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
        end
        object Label12: TLabel
          Left = 540
          Top = 20
          Width = 91
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrderNo:'
        end
        object Label11: TLabel
          Left = 312
          Top = 20
          Width = 75
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU:'
        end
        object Label16: TLabel
          Left = 7
          Top = 20
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object BuyNoEdit: TEdit
          Left = 202
          Top = 19
          Width = 106
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object DDBHEdit: TEdit
          Left = 636
          Top = 19
          Width = 129
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object ArticleEdit: TEdit
          Left = 391
          Top = 19
          Width = 143
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object JiJieEdit1: TEdit
          Left = 76
          Top = 19
          Width = 44
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 17
        Top = 82
        Width = 770
        Height = 50
        Caption = 'Developing'
        TabOrder = 10
        object Label13: TLabel
          Left = 7
          Top = 20
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object Label15: TLabel
          Left = 124
          Top = 20
          Width = 73
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage:'
        end
        object Label10: TLabel
          Left = 267
          Top = 20
          Width = 61
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#:'
        end
        object JiJieEdit2: TEdit
          Left = 77
          Top = 19
          Width = 43
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object KFJDEdit: TEdit
          Left = 202
          Top = 19
          Width = 60
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = CLDHEditKeyPress
        end
        object SREdit: TEdit
          Left = 331
          Top = 19
          Width = 161
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object CBNew: TCheckBox
          Left = 517
          Top = 20
          Width = 192
          Height = 17
          Caption = 'New Material Of The Season'
          TabOrder = 3
        end
      end
      object SupplierEdit: TEdit
        Left = 857
        Top = 7
        Width = 133
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 11
        OnKeyPress = YWPM2EditKeyPress
      end
      object GenderCombo: TComboBox
        Left = 859
        Top = 48
        Width = 114
        Height = 24
        ItemHeight = 16
        TabOrder = 12
        Items.Strings = (
          'KID')
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 141
      Width = 1457
      Height = 96
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 7
        Top = 12
        Width = 69
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MatNo:'
      end
      object Label4: TLabel
        Left = 228
        Top = 12
        Width = 79
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Type:'
      end
      object Label5: TLabel
        Left = 7
        Top = 61
        Width = 108
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Material Name:'
      end
      object Label6: TLabel
        Left = 423
        Top = 12
        Width = 94
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Unit:'
      end
      object DBEdit1: TDBEdit
        Left = 81
        Top = 10
        Width = 145
        Height = 28
        Color = clBtnFace
        DataField = 'cldh'
        DataSource = DS1
        ReadOnly = True
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 120
        Top = 48
        Width = 289
        Height = 41
        Color = clBtnFace
        DataField = 'zwpm'
        DataSource = DS1
        TabOrder = 1
      end
      object CBX2: TDBComboBox
        Left = 522
        Top = 10
        Width = 90
        Height = 24
        Color = clBtnFace
        DataField = 'dwbh'
        DataSource = DS1
        ItemHeight = 16
        Items.Strings = (
          'Cement'
          'stream'
          'Machine'
          'Office'
          'other')
        TabOrder = 2
      end
      object DBMemo2: TDBMemo
        Left = 424
        Top = 47
        Width = 289
        Height = 41
        Color = clBtnFace
        DataField = 'ywpm'
        DataSource = DS1
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 315
        Top = 10
        Width = 106
        Height = 28
        Color = clBtnFace
        DataField = 'cllb'
        DataSource = DS1
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1459
    Height = 65
    Align = alTop
    TabOrder = 1
    object BB2: TBitBtn
      Left = 57
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 106
      Top = 8
      Width = 48
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 154
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 203
      Top = 8
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
      TabOrder = 4
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 252
      Top = 8
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
      TabOrder = 5
      OnClick = BB6Click
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
    object BB7: TBitBtn
      Left = 301
      Top = 8
      Width = 50
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
      Font.Charset = ANSI_CHARSET
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
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BBT1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 418
      Top = 8
      Width = 48
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BBT2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 467
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BBT3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 517
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BBT4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt5: TBitBtn
      Left = 616
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 665
      Top = 8
      Width = 50
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
    object bbt7: TBitBtn
      Left = 566
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Materail supplier no assign purchaser list'
      Caption = 'SR List'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = bbt7Click
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 376
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update RSTList'
      'Set'
      '  ZSDH =:ZSDH,'
      '  DCYN = :DCYN,'
      '  PDYN = :PDYN,'
      '  Memo = :Memo,'
      '  Gender = :Gender,'
      '  CreateID =:CreateID,'
      '  CreateDate =:CreateDate'
      'where'
      '  ID = :OLD_ID and '
      '  cldh = :OLD_cldh')
    InsertSQL.Strings = (
      'insert into RSTList'
      
        '  (CLDH, ZSDH, GSBH, PDYN, DCYN, Memo, Gender, PDCFM, DCCFM , Cr' +
        'eateID, CreateDate)'
      'values'
      
        '  (:CLDH, :ZSDH, :GSBH, :PDYN, :DCYN, :Memo, :Gender, :PDCFM, :D' +
        'CCFM, :CreateID, :CreateDate)')
    DeleteSQL.Strings = (
      'delete from RSTList'
      'where'
      '  ID = :OLD_ID,'
      '  cldh = :OLD_cldh')
    Left = 18
    Top = 405
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CLZL.CLDH,CLLB,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZL.DCYN,CL' +
        'ZL.PDYN,CLZL.USERID,CLZL.USERDATE,CLZL.ID,Max(CLZL.ZSDH) as ZSDH' +
        ',Max(CLZL.CSBH) as CSBH,CLZL.CLZMLB'
      
        '       ,CLZL.GSBH,CLZL.CreateID,CLZL.CreateDate,CLZL.DCCFM,CLZL.' +
        'PDCFM,Max(CLZL.zsywjc) as zsywjc,CLZL.Memo,CLZL.Gender from ('
      'Select CLZL.*,ZSZL.zsywjc from ( '
      
        'SELECT CLZL.CLDH, CLZL.CLLB, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, RS' +
        'TList.DCYN, RSTList.PDYN, CLZL.USERID, CLZL.USERDATE,RSTList.ID,' +
        'IsNull(RSTList.zsdh,XXZLS.CSBH) as ZSDH,XXZLS.CSBH,CLZL.CLZMLB, '
      
        '       RSTList.GSBH,RSTList.CreateID,RSTList.CreateDate,RSTList.' +
        'DCCFM,RSTList.PDCFM,RSTList.Memo,RSTList.Gender '
      'FROM CLZL'
      'left join RSTList on RSTList.CLDH=CLZL.CLDH and GSBH='#39'VA12'#39'  '
      'left join ('
      '  select XXZLS.CLBH,Max(XXZLS.CSBH) as CSBH '
      '  from XXZLS '
      
        '  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=X' +
        'XZLS.SheHao '
      
        '  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHa' +
        'o=KFXXZL.SheHao '
      
        '  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join KFZL on XXZL.KHDH=KFZL.kfdh'
      '  where  1=1 '
      '         and KFZL.kfjc like '#39'CONVERSE%'#39'  '
      '         and XXZLS.CLBH like '#39'A%'#39' '
      '         and DDZL.BUYNO like '#39'201801%'#39
      '  Group by XXZLS.CLBH  '
      '  ) XXZLS on XXZLS.CLBH=clzl.cldh'
      'WHERE 1=1 '
      'AND CLZL.CLDH LIKE '#39'A%'#39
      'AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>'#39'Y'#39') '
      'AND CLZL.CLDH in ( '
      '  select XXZLS.CLBH'
      '  from XXZLS '
      
        '  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=X' +
        'XZLS.SheHao '
      
        '  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHa' +
        'o=KFXXZL.SheHao '
      
        '  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join KFZL on XXZL.KHDH=KFZL.kfdh'
      '  where  1=1 '
      '         and KFZL.kfjc like '#39'CONVERSE%'#39'  '
      '         and XXZLS.CLBH like '#39'A%'#39' '
      '         and DDZL.BUYNO like '#39'201801%'#39
      '  Group by XXZLS.CLBH '
      '  )'
      ') CLZL '
      'left join ZSZL on ZSZL.ZSDH=CLZL.ZSDH '
      'where 1=1 '
      'union all'
      'Select CLZL.*,ZSZL.zsywjc from ( '
      
        'SELECT CLZL.CLDH, CLZL.CLLB, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, RS' +
        'TList.DCYN, RSTList.PDYN, CLZL.USERID, CLZL.USERDATE,RSTList.ID,' +
        'IsNull(RSTList.zsdh,clzhzl.zsdh) as ZSDH,clzhzl.zsdh as CSBH'
      
        '       ,CLZL.CLZMLB,RSTList.GSBH,RSTList.CreateID,RSTList.Create' +
        'Date,RSTList.DCCFM,RSTList.PDCFM,RSTList.Memo,RSTList.Gender fro' +
        'm ('
      'select clzhzl.cldh1,MAX(clzhzl.zsdh) as ZSDH from ('
      'select clzhzl.cldh1,clzhzl.zsdh from ('
      'SELECT CLZL.CLDH '
      'FROM CLZL'
      'WHERE 1=1 '
      'AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>'#39'Y'#39') and CLZL.CLZMLB='#39'Y'#39
      'AND CLDH in ( '
      '  select XXZLS.CLBH'
      '  from XXZLS '
      
        '  left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=X' +
        'XZLS.SheHao '
      
        '  left join KFXXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHa' +
        'o=KFXXZL.SheHao '
      
        '  left join DDZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join KFZL on XXZL.KHDH=KFZL.kfdh'
      '  where  1=1 '
      '         and KFZL.kfjc like '#39'CONVERSE%'#39'  '
      '         and DDZL.BUYNO like '#39'201801%'#39
      '  Group by XXZLS.CLBH '
      '  )'
      ') MCLZL '
      'inner join clzhzl on clzhzl.cldh=MCLZL.cldh ) clzhzl '
      'Group by clzhzl.cldh1'
      ' ) clzhzl'
      'left join CLZL on CLZL.cldh=clzhzl.cldh1 '
      'left join RSTList on RSTList.CLDH=clzhzl.cldh1 and GSBH='#39'VA12'#39' '
      'WHERE 1=1'
      'AND (CLZL.TYJH IS NULL OR CLZL.TYJH<>'#39'Y'#39') '
      'AND CLZL.CLDH LIKE '#39'A%'#39
      ') CLZL '
      'left join ZSZL on ZSZL.ZSDH=CLZL.ZSDH'
      'where 1=1 '
      ') AS CLZL'
      
        'Group by CLZL.CLDH,CLLB,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZL.DCYN,' +
        'CLZL.PDYN,CLZL.USERID,CLZL.USERDATE,CLZL.ID,CLZL.CLZMLB,CLZL.GSB' +
        'H,CLZL.CreateID,CLZL.CreateDate,CLZL.DCCFM,CLZL.PDCFM,CLZL.Memo,' +
        'CLZL.Gender '
      'ORDER BY CLZL.CLDH'
      '')
    UpdateObject = UpSQL1
    Left = 18
    Top = 376
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1CLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 4
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1DCYN: TStringField
      FieldName = 'DCYN'
      FixedChar = True
      Size = 1
    end
    object Query1PDYN: TStringField
      FieldName = 'PDYN'
      FixedChar = True
      Size = 1
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ID: TFloatField
      FieldName = 'ID'
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1CLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CreateID: TStringField
      FieldName = 'CreateID'
      FixedChar = True
      Size = 10
    end
    object Query1CreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object Query1DCCFM: TStringField
      FieldName = 'DCCFM'
      FixedChar = True
      Size = 1
    end
    object Query1PDCFM: TStringField
      FieldName = 'PDCFM'
      FixedChar = True
      Size = 1
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Size = 200
    end
    object Query1Gender: TStringField
      DisplayWidth = 50
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 48
    Top = 405
    object mnu1: TMenuItem
      Caption = 'SET [PDYN] TO Y'
      OnClick = SetClick
    end
    object mnu2: TMenuItem
      Caption = 'SET [PDYN] TO N'
      OnClick = SetClick
    end
    object mnu3: TMenuItem
      Caption = 'SET [Memo] TO ...'
      OnClick = SetClick
    end
    object mnu4: TMenuItem
      Caption = 'SET [GenderMemo] TO ...'
      OnClick = SetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnu5: TMenuItem
      Caption = 'CLEAR [PDYN]'
      OnClick = SetClick
    end
    object mnu6: TMenuItem
      Caption = 'CLEAR [Memo]'
      OnClick = SetClick
    end
    object mnu7: TMenuItem
      Caption = 'CLEAR [GenderMemo]'
      OnClick = SetClick
    end
  end
end
