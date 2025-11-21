object PMR: TPMR
  Left = 698
  Top = 104
  Width = 1616
  Height = 675
  Caption = 'PMR'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1600
    Height = 65
    Align = alTop
    TabOrder = 0
    object B_QueryP1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = B_QueryP1Click
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
    object B_InsertP1: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_InsertP1Click
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
    object B_DeleteP1: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = B_DeleteP1Click
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
    object B_ModifyP1: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = B_ModifyP1Click
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
    object B_SaveP1: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = B_SaveP1Click
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
    object B_CancelP1: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = B_CancelP1Click
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
    object B_ExitP1: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = B_ExitP1Click
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 195
    Width = 1600
    Height = 441
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'PMR '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1592
        Height = 41
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 16
          Top = 15
          Width = 41
          Height = 13
          Caption = 'PMR No'
        end
        object Label4: TLabel
          Left = 200
          Top = 15
          Width = 44
          Height = 13
          Caption = 'Old Spec'
        end
        object Label5: TLabel
          Left = 392
          Top = 15
          Width = 50
          Height = 13
          Caption = 'New Spec'
        end
        object Label6: TLabel
          Left = 592
          Top = 15
          Width = 15
          Height = 13
          Caption = 'SR'
        end
        object ED_PMR: TEdit
          Left = 64
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button1: TButton
          Left = 752
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Ed_Oldspec: TEdit
          Left = 248
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Ed_Newspec: TEdit
          Left = 448
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object ED_SR: TEdit
          Left = 616
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 4
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 41
        Width = 1592
        Height = 372
        Align = alClient
        DataSource = DS_PMRList
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PMRNo'
            Footer.FieldName = 'PMRNo'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'PMR#'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ApplicableForSKU'
            Footers = <>
            Title.Caption = 'Changes could be applicable for all SKUs of this Style'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ImpactPO'
            Footers = <>
            Title.Caption = 'Impact PO'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'HQConfirmation'
            Footers = <>
            Title.Caption = 'HQ Developer Confirmation Needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ConfirmationSample'
            Footers = <>
            Title.Caption = 'New Confirmation Sample Needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'SPECModification'
            Footers = <>
            Title.Caption = 'SPEC or BOM Modification Needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RefittingSample'
            Footers = <>
            Title.Caption = 'Re-fitting Sample Needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ProcessModification'
            Footers = <>
            Title.Caption = 'Process Flow Chart modification needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PaperPattern'
            Footers = <>
            Title.Caption = 'Paper pattern adjustment'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Tooling'
            Footers = <>
            Title.Caption = 'Tooling adjustment'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Title.Caption = 'If Material vendor/ location changed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CBD'
            Footers = <>
            Title.Caption = 'CBD Modification Needed'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FactoryCost'
            Footers = <>
            Title.Caption = 'Factory Cost Adjustment'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PMRFile'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PMR File'
            Width = 100
            OnEditButtonClick = DBGridEh1Columns13EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'BOMCheck'
            Footers = <>
            Title.Caption = 'BOM Check'
            Visible = False
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'What Change'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 41
        Width = 1592
        Height = 372
        Align = alClient
        DataSource = DS_PMRListS
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
        OnDblClick = DBGridEh2DblClick
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        OnGetCellParams = DBGridEh2GetCellParams
        OnKeyPress = DBGridEh2KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PMRNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PMR#'
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ChangeType'
            Footers = <>
            PickList.Strings = (
              'Construction'
              'Process'
              'Component'
              'Packaging'
              'Revise material name'
              'Unified material name'
              'Vendor name'
              'Logo'
              'Pattern'
              'Color'
              'Design'
              'Hang tag'
              'Vendor Location'
              'Eyestay'
              'Quarter'
              'Heel'
              'Toe cap'
              'Foxing')
            Title.Caption = 'Change Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'ChangeItem'
            Footers = <>
            Title.Caption = 'Change Item'
            Width = 180
            OnEditButtonClick = DBGridEh2Columns2EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'OldSpec'
            Footers = <>
            Title.Caption = 'Old Spec'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'NewSpec'
            Footers = <>
            Title.Caption = 'New Spec'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 100
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1592
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 15
          Width = 47
          Height = 13
          Caption = 'PMR No :'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Effective Data'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 41
        Width = 1592
        Height = 372
        Align = alClient
        DataSource = DS_PMRListSS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PMRNo'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PMR#'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'BuyNo'
            Footers = <>
            Title.Caption = 'Submitted Month'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Title.Caption = 'Submitted Season'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Year'
            Footers = <>
            Title.Caption = 'Submitted Year'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DevelopmentCenter'
            Footers = <>
            Title.Caption = 'Development Center'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = 'Production Factory'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ProductDescription'
            Footers = <>
            Title.Caption = 'Product Description'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Colorway ID'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Caption = 'Material Number'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'EffectSeason'
            Footers = <>
            Title.Caption = 'Effect Season'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'EffectBuyNo'
            Footers = <>
            Title.Caption = 'Effective Order Buy Month'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Title.Caption = 'Cost Impact Status'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Cost'
            Footers = <>
            Title.Caption = 'Cost impact/pair'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'BOMCheck'
            Footers = <>
            Title.Caption = 'BOM Check'
            Width = 40
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1592
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 15
          Width = 47
          Height = 13
          Caption = 'PMR No :'
        end
        object Label7: TLabel
          Left = 208
          Top = 15
          Width = 15
          Height = 13
          Caption = 'SR'
        end
        object ED_SR3: TEdit
          Left = 232
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 0
          OnChange = ED_SR3Change
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'PMR_BOM'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1592
        Height = 41
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 256
          Top = 15
          Width = 15
          Height = 13
          Caption = 'SR'
        end
        object SKU: TLabel
          Left = 416
          Top = 15
          Width = 22
          Height = 13
          Caption = 'SKU'
        end
        object Label8: TLabel
          Left = 130
          Top = 18
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Ed_SR4: TEdit
          Left = 280
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button2: TButton
          Left = 632
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Ed_SKU: TEdit
          Left = 440
          Top = 11
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object CheckBox1: TCheckBox
          Left = 0
          Top = 16
          Width = 41
          Height = 17
          Caption = 'Date'
          TabOrder = 3
        end
        object DTP1: TDateTimePicker
          Left = 45
          Top = 13
          Width = 84
          Height = 21
          Date = 45028.631350567130000000
          Time = 45028.631350567130000000
          TabOrder = 4
        end
        object DTP2: TDateTimePicker
          Left = 141
          Top = 12
          Width = 84
          Height = 21
          Date = 45028.631350567130000000
          Time = 45028.631350567130000000
          TabOrder = 5
        end
        object Button3: TButton
          Left = 852
          Top = 6
          Width = 76
          Height = 30
          Caption = 'Excel'
          TabOrder = 6
          OnClick = Button3Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 41
        Width = 1592
        Height = 372
        Align = alClient
        DataSource = DS_PMR_BOM
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ColorwayID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Colorway ID'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Caption = 'Material Number'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PMR_BOMCHECK'
            Footers = <>
            ReadOnly = True
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PMR_BOMUNCHECK'
            Footers = <>
            Width = 150
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1600
    Height = 65
    Align = alTop
    TabOrder = 2
    Visible = False
    object B_InsertP2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = B_InsertP2Click
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
    object B_DeleteP2: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_DeleteP2Click
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
    object B_ModifyP2: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = B_ModifyP2Click
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
    object B_SaveP2: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = B_SaveP2Click
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
    object B_CancelP2: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = B_CancelP2Click
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
    object B_ExitP2: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = B_ExitP2Click
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 130
    Width = 1600
    Height = 65
    Align = alTop
    TabOrder = 3
    Visible = False
    object B_InsertP3: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = B_InsertP3Click
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
    object B_DeleteP3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_DeleteP3Click
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
    object B_ModifyP3: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = B_ModifyP3Click
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
    object B_SaveP3: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = B_SaveP3Click
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
    object B_CancelP3: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = B_CancelP3Click
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
    object B_ExitP3: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = B_ExitP3Click
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
    object B_ImportP3: TBitBtn
      Left = 387
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Import'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = B_ImportP3Click
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
  object DS_PMRList: TDataSource
    DataSet = Q_PMRList
    Left = 20
    Top = 337
  end
  object U_PMRList: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PMRList'
      'SET'
      '  PMRNo = :PMRNo,'
      '  GSBH = :GSBH,'
      '  ApplicableForSKU = :ApplicableForSKU,'
      '  ImpactPO = :ImpactPO,'
      '  HQConfirmation =:HQConfirmation,'
      '  ConfirmationSample =:ConfirmationSample,'
      '  SPECModification = :SPECModification,'
      '  RefittingSample = :RefittingSample,'
      '  ProcessModification = :ProcessModification,'
      '  PaperPattern = :PaperPattern,'
      '  Tooling = :Tooling,'
      '  Material = :Material,'
      '  CBD = :CBD,'
      '  FactoryCost = :FactoryCost,'
      '  PMRFile = :PMRFile,'
      '  BOMCheck = :BOMCheck,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  PMRNo = :OLD_PMRNo')
    InsertSQL.Strings = (
      'INSERT INTO PMRList'
      
        '(PMRNo, GSBH, ApplicableForSKU, ImpactPO, HQConfirmation, Confir' +
        'mationSample, SPECModification, RefittingSample, ProcessModifica' +
        'tion, PaperPattern, Tooling, Material, CBD, FactoryCost, PMRFile' +
        ', BOMCheck, UserID, UserDate, YN)'
      'VALUES'
      
        '(:PMRNo, :GSBH, :ApplicableForSKU, :ImpactPO, :HQConfirmation, :' +
        'ConfirmationSample, :SPECModification, :RefittingSample, :Proces' +
        'sModification, :PaperPattern, :Tooling, :Material, :CBD, :Factor' +
        'yCost, :PMRFile, :BOMCheck, :UserID, GETDATE(), :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM PMRList'
      'WHERE'
      'PMRNo = :OLD_PMRNo')
    Left = 20
    Top = 401
  end
  object DS_PMRListS: TDataSource
    DataSet = Q_PMRListS
    Left = 52
    Top = 337
  end
  object U_PMRListS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PMRListS'
      'SET'
      '  ChangeType = :ChangeType,'
      '  ChangeItem = :ChangeItem,'
      '  OldSpec =:OldSpec,'
      '  NewSpec =:NewSpec,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  PMRNo = :OLD_PMRNo AND'
      '  ChangeType = :OLD_ChangeType AND'
      '  ChangeItem = :OLD_ChangeItem'
      '')
    InsertSQL.Strings = (
      'INSERT INTO PMRListS'
      
        '(PMRID, PMRNo, ChangeType, ChangeItem, OldSpec, NewSpec, UserID,' +
        ' UserDate, YN)'
      'VALUES'
      
        '(:PMRID, :PMRNo, :ChangeType, :ChangeItem, :OldSpec, :NewSpec, :' +
        'UserID, GETDATE(), :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM PMRListS'
      'WHERE'
      'PMRID = :OLD_PMRID AND'
      'PMRNo = :OLD_PMRNo AND'
      'ChangeType = :OLD_ChangeType AND'
      'ChangeItem = :OLD_ChangeItem')
    Left = 52
    Top = 401
  end
  object DS_PMRListSS: TDataSource
    DataSet = Q_PMRListSS
    Left = 84
    Top = 337
  end
  object U_PMRListSS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PMRListSS'
      'SET'
      '  ColorwayID = :ColorwayID,'
      '  SKU = :SKU,'
      '  BuyNo = :BuyNo,'
      '  Season = :Season,'
      '  Year =:Year,'
      '  DevelopmentCenter =:DevelopmentCenter,'
      '  Factory = :Factory,'
      '  ProductDescription = :ProductDescription,'
      '  EffectSeason = :EffectSeason,'
      '  EffectBuyNo = :EffectBuyNo,'
      '  Status = :Status,'
      '  Cost = :Cost,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN,'
      '  BOMCheck = :BOMCheck'
      'WHERE'
      '  PMRNo = :OLD_PMRNo AND'
      '  ColorwayID = :OLD_ColorwayID AND'
      '  Factory = :OLD_Factory')
    InsertSQL.Strings = (
      'INSERT INTO PMRListSS'
      
        '(PMRNo, ColorwayID, SKU, BuyNo, Season, Year, DevelopmentCenter,' +
        ' Factory, ProductDescription, EffectSeason, EffectBuyNo, Status,' +
        ' Cost, Remark, UserID, UserDate, YN, BOMCheck)'
      'VALUES'
      
        '(:PMRNo, :ColorwayID, :SKU, :BuyNo, :Season, :Year, :Development' +
        'Center, :Factory, :ProductDescription, :EffectSeason, :EffectBuy' +
        'No, :Status, :Cost, :Remark, :UserID, GETDATE(), :YN, :BOMCheck)')
    DeleteSQL.Strings = (
      'DELETE FROM PMRListSS'
      'WHERE'
      'PMRNo = :OLD_PMRNo AND'
      'ColorwayID = :OLD_ColorwayID AND'
      'Factory = :OLD_Factory')
    Left = 84
    Top = 401
  end
  object OpenDialog1: TOpenDialog
    Left = 116
    Top = 337
  end
  object Q_PMRList: TQuery
    AfterOpen = Q_PMRListAfterOpen
    OnNewRecord = Q_PMRListNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PMRList WHERE 1 = 0')
    UpdateObject = U_PMRList
    Left = 20
    Top = 369
    object Q_PMRListPMRNo: TStringField
      FieldName = 'PMRNo'
      Origin = 'LIY_ERP.PMRList.PMRNo'
      FixedChar = True
      Size = 11
    end
    object Q_PMRListGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'LIY_ERP.PMRList.GSBH'
      FixedChar = True
      Size = 4
    end
    object Q_PMRListApplicableForSKU: TBooleanField
      FieldName = 'ApplicableForSKU'
      Origin = 'LIY_ERP.PMRList.ApplicableForSKU'
    end
    object Q_PMRListImpactPO: TBooleanField
      FieldName = 'ImpactPO'
      Origin = 'LIY_ERP.PMRList.ImpactPO'
    end
    object Q_PMRListHQConfirmation: TBooleanField
      FieldName = 'HQConfirmation'
      Origin = 'LIY_ERP.PMRList.HQConfirmation'
    end
    object Q_PMRListConfirmationSample: TBooleanField
      FieldName = 'ConfirmationSample'
      Origin = 'LIY_ERP.PMRList.ConfirmationSample'
    end
    object Q_PMRListSPECModification: TBooleanField
      FieldName = 'SPECModification'
      Origin = 'LIY_ERP.PMRList.SPECModification'
    end
    object Q_PMRListRefittingSample: TBooleanField
      FieldName = 'RefittingSample'
      Origin = 'LIY_ERP.PMRList.RefittingSample'
    end
    object Q_PMRListProcessModification: TBooleanField
      FieldName = 'ProcessModification'
      Origin = 'LIY_ERP.PMRList.ProcessModification'
    end
    object Q_PMRListPaperPattern: TBooleanField
      FieldName = 'PaperPattern'
      Origin = 'LIY_ERP.PMRList.PaperPattern'
    end
    object Q_PMRListTooling: TBooleanField
      FieldName = 'Tooling'
      Origin = 'LIY_ERP.PMRList.Tooling'
    end
    object Q_PMRListMaterial: TBooleanField
      FieldName = 'Material'
      Origin = 'LIY_ERP.PMRList.Material'
    end
    object Q_PMRListCBD: TBooleanField
      FieldName = 'CBD'
      Origin = 'LIY_ERP.PMRList.CBD'
    end
    object Q_PMRListFactoryCost: TBooleanField
      FieldName = 'FactoryCost'
      Origin = 'LIY_ERP.PMRList.FactoryCost'
    end
    object Q_PMRListPMRFile: TStringField
      FieldName = 'PMRFile'
      Origin = 'LIY_ERP.PMRList.PMRFile'
      FixedChar = True
      Size = 100
    end
    object Q_PMRListBOMCheck: TBooleanField
      FieldName = 'BOMCheck'
    end
    object Q_PMRListUserID: TStringField
      FieldName = 'UserID'
      Origin = 'LIY_ERP.PMRList.UserID'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'LIY_ERP.PMRList.UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Q_PMRListYN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.PMRList.YN'
      FixedChar = True
      Size = 1
    end
  end
  object Q_PMRListS: TQuery
    AfterOpen = Q_PMRListSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS_PMRList
    SQL.Strings = (
      'SELECT * FROM PMRListS WHERE PMRNo = :PMRNo')
    UpdateObject = U_PMRListS
    Left = 52
    Top = 369
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PMRNo'
        ParamType = ptUnknown
        Size = 12
      end>
    object Q_PMRListSPMRNo: TStringField
      FieldName = 'PMRNo'
      Origin = 'LIY_ERP.PMRListS.PMRNo'
      FixedChar = True
      Size = 11
    end
    object Q_PMRListSChangeType: TStringField
      FieldName = 'ChangeType'
      Origin = 'LIY_ERP.PMRListS.ChangeType'
      FixedChar = True
      Size = 25
    end
    object Q_PMRListSChangeItem: TStringField
      FieldName = 'ChangeItem'
      Origin = 'LIY_ERP.PMRListS.ChangeItem'
      FixedChar = True
      Size = 100
    end
    object Q_PMRListSOldSpec: TStringField
      FieldName = 'OldSpec'
      Origin = 'DB.PMRListS.OldSpec'
      FixedChar = True
      Size = 250
    end
    object Q_PMRListSNewSpec: TStringField
      FieldName = 'NewSpec'
      Origin = 'LIY_ERP.PMRListS.NewSpec'
      FixedChar = True
      Size = 250
    end
    object Q_PMRListSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'LIY_ERP.PMRListS.UserID'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'LIY_ERP.PMRListS.UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Q_PMRListSYN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.PMRListS.YN'
      FixedChar = True
      Size = 1
    end
    object Q_PMRListSPMRID: TIntegerField
      FieldName = 'PMRID'
      Origin = 'DB.PMRListS.PMRID'
    end
  end
  object Q_PMRListSS: TQuery
    AfterOpen = Q_PMRListSSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS_PMRList
    SQL.Strings = (
      'SELECT * FROM PMRListSS WHERE PMRNo = :PMRNo'
      'and ColorwayID like :ColorwayID ')
    UpdateObject = U_PMRListSS
    Left = 85
    Top = 369
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PMRNo'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftUnknown
        Name = 'ColorwayID'
        ParamType = ptUnknown
      end>
    object Q_PMRListSSPMRNo: TStringField
      FieldName = 'PMRNo'
      Origin = 'LIY_ERP.PMRListSS.PMRNo'
      FixedChar = True
      Size = 11
    end
    object Q_PMRListSSColorwayID: TStringField
      FieldName = 'ColorwayID'
      Origin = 'LIY_ERP.PMRListSS.ColorwayID'
      FixedChar = True
    end
    object Q_PMRListSSSKU: TStringField
      FieldName = 'SKU'
      Origin = 'LIY_ERP.PMRListSS.SKU'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSBuyNo: TStringField
      FieldName = 'BuyNo'
      Origin = 'LIY_ERP.PMRListSS.BuyNo'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSSeason: TStringField
      FieldName = 'Season'
      Origin = 'LIY_ERP.PMRListSS.Season'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSYear: TStringField
      FieldName = 'Year'
      Origin = 'LIY_ERP.PMRListSS.Year'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSDevelopmentCenter: TStringField
      FieldName = 'DevelopmentCenter'
      Origin = 'LIY_ERP.PMRListSS.DevelopmentCenter'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSFactory: TStringField
      FieldName = 'Factory'
      Origin = 'LIY_ERP.PMRListSS.Factory'
      FixedChar = True
      Size = 5
    end
    object Q_PMRListSSProductDescription: TStringField
      FieldName = 'ProductDescription'
      Origin = 'LIY_ERP.PMRListSS.ProductDescription'
      FixedChar = True
      Size = 50
    end
    object Q_PMRListSSEffectSeason: TStringField
      FieldName = 'EffectSeason'
      Origin = 'LIY_ERP.PMRListSS.EffectSeason'
      FixedChar = True
      Size = 5
    end
    object Q_PMRListSSEffectBuyNo: TStringField
      FieldName = 'EffectBuyNo'
      Origin = 'LIY_ERP.PMRListSS.EffectBuyNo'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSStatus: TStringField
      FieldName = 'Status'
      Origin = 'LIY_ERP.PMRListSS.Status'
      FixedChar = True
    end
    object Q_PMRListSSCost: TFloatField
      FieldName = 'Cost'
      Origin = 'LIY_ERP.PMRListSS.Cost'
    end
    object Q_PMRListSSRemark: TStringField
      FieldName = 'Remark'
      Origin = 'LIY_ERP.PMRListSS.Remark'
      FixedChar = True
      Size = 100
    end
    object Q_PMRListSSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'LIY_ERP.PMRListSS.UserID'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListSSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'LIY_ERP.PMRListSS.UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Q_PMRListSSYN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.PMRListSS.YN'
      FixedChar = True
      Size = 1
    end
    object Q_PMRListSSBOMCheck: TBooleanField
      FieldName = 'BOMCheck'
      Origin = 'DB.PMRListSS.BOMCheck'
    end
  end
  object OpenDialog2: TOpenDialog
    Filter = 'Excel|*.xls'
    Left = 440
    Top = 159
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 116
    Top = 369
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 193
    Top = 385
  end
  object DS_PMR_BOM: TDataSource
    DataSet = Q_PMR_BOM
    Left = 260
    Top = 345
  end
  object Q_PMR_BOM: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct ColorwayID,SKU,'
      'stuff ('
      '('
      'SELECT '#39','#39'+ PMRA.PMRNo FROM PMRListSS PMRA'
      'WHERE PMRA.sku = PMRB.sku and PMRA.BOMCheck = 1'
      'for XML PATH('#39#39')'
      '),1,1,'#39#39
      ') as PMR_Check'
      ','
      'stuff ('
      '('
      'SELECT '#39','#39'+ PMRA.PMRNo FROM PMRListSS PMRA'
      'WHERE PMRA.sku = PMRB.sku and isnull(PMRA.BOMCheck,0) = 0'
      'for XML PATH('#39#39')'
      '),1,1,'#39#39
      ') as PMR_UnCheck'
      ''
      'from PMRListSS PMRB'
      'where Factory = '#39'LYN'#39' '
      'and ColorwayID like '#39'C35064%'#39' '
      'and SKU like '#39'%'#39' ')
    Left = 261
    Top = 401
    object Q_PMR_BOMColorwayID: TStringField
      FieldName = 'ColorwayID'
    end
    object Q_PMR_BOMSKU: TStringField
      FieldName = 'SKU'
      Size = 10
    end
    object Q_PMR_BOMPMR_BOMCHECK: TStringField
      FieldName = 'PMR_BOMCHECK'
      Size = 2000
    end
    object Q_PMR_BOMPMR_BOMUNCHECK: TStringField
      FieldName = 'PMR_BOMUNCHECK'
      Size = 2000
    end
  end
end
