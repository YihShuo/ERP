object DetailsGBTest: TDetailsGBTest
  Left = 56
  Top = 212
  Width = 1255
  Height = 477
  Caption = 'Details GBTest'
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
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 168
    Top = 46
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 76
    Width = 1239
    Height = 362
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|BUYNO'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Season'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|RY'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RY_same_group'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|RY# with the same group#'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|PO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'SKU'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|SKU'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Country'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Groups'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Groups'
      end
      item
        EditButtons = <>
        FieldName = 'ProductionType'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Production Type'
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|SR'
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'MaterialDescription'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Material Description'
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'ModelDescription'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Model Description'
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'Color'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Color'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Gender'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Gender'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SendSize'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|Send Size'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'GAC_Date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Basic Information|GAC'
        Width = 100
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'ProductionLine'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Production Line'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'TestShoeReceiveDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Internal GB test shoe receive date '
        Width = 206
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'TestResultDate'
        Footers = <>
        Title.Caption = 'Internal GBTest|Internal GB test result date '
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'Bonding'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Bonding'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'Flexing'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Flexing'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'AgingResult'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Aging'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'QUV'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|QUV'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'CrockingTest'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|CrockingTest'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'CrockingWithNH3'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Crocking With NH3'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'Corrosion'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        ReadOnly = True
        Title.Caption = 'Internal GBTest|Corrosion'
      end
      item
        Color = 8454143
        EditButtons = <>
        FieldName = 'SendQtyPR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|SendQtyPR'
      end
      item
        EditButtons = <>
        FieldName = 'GB_Test'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|GB Test'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'LAB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|LAB'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'REMARK_Gore_tex'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|REMARK(Gore-tex)'
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'AWBNo'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|AWB No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SendGBDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Send GB Date'
      end
      item
        EditButtons = <>
        FieldName = 'TestResult'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Test Result'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ReceivedDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Received result date'
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'KCNumber'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|KC Number for Korea test'
        Width = 159
      end
      item
        EditButtons = <>
        FieldName = 'Arrived_on_DTTlab'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Arrived on DTT lab'
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'DayReceiveResult'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Day from send to receive result'
        Width = 231
      end
      item
        EditButtons = <>
        FieldName = 'Late_Reason'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|NOTE'#10' (reason for long time receiving result)'
        Width = 265
      end
      item
        EditButtons = <>
        FieldName = 'EstimatedReceivedDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Estimated receiving result date'
        Width = 201
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|Remark'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TestReportFile'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Offical GB Test|TestReportFile'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User|USERID'
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User|USERDATE'
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1239
    Height = 76
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 18
      Top = 11
      Width = 26
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 214
      Top = 9
      Width = 30
      Height = 16
      Caption = 'SKU:'
    end
    object Label9: TLabel
      Left = 2
      Top = 53
      Width = 51
      Height = 16
      Caption = 'BUYNO:'
    end
    object ShoeImage: TImage
      Left = 888
      Top = 8
      Width = 97
      Height = 65
      Stretch = True
    end
    object Label2: TLabel
      Left = 214
      Top = 49
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Edit1: TEdit
      Left = 59
      Top = 7
      Width = 140
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 264
      Top = 6
      Width = 137
      Height = 24
      Enabled = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 56
      Top = 42
      Width = 143
      Height = 24
      Enabled = False
      TabOrder = 2
    end
    object BB1: TBitBtn
      Left = 456
      Top = 16
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object BB2: TBitBtn
      Left = 504
      Top = 16
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
      TabOrder = 4
      OnClick = BB2Click
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
      Left = 552
      Top = 16
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
      TabOrder = 5
      OnClick = BB3Click
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
      Left = 600
      Top = 16
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
      TabOrder = 6
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
      Left = 648
      Top = 16
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
      TabOrder = 7
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
      Left = 696
      Top = 16
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
      TabOrder = 8
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
      Left = 792
      Top = 16
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
      TabOrder = 9
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
    object Edit2: TEdit
      Left = 264
      Top = 46
      Width = 137
      Height = 24
      Enabled = False
      TabOrder = 10
    end
    object BB8: TBitBtn
      Left = 744
      Top = 16
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BB8Click
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update GBTest_Details'
      'Set'
      '  Bonding =:Bonding,'
      '  Flexing =:Flexing,'
      '  AgingResult =:AgingResult,'
      '  QUV =:QUV,'
      '  CrockingTest =:CrockingTest,'
      '  CrockingWithNH3 =:CrockingWithNH3,'
      '  Corrosion =:Corrosion,'
      '  SendQtyPR =:SendQtyPR,'
      '   USERID =:USERID,'
      '  USERDate =:USERDate,'
      '   YN=:YN'
      'where'
      '  RY =:OLD_RY'
      'and '
      '  ProductionLine =:ProductionLine')
    InsertSQL.Strings = (
      'INSERT INTO GBTest_Details'
      
        '(RY, ProductionLine, TestShoeReceiveDate, TestResultDate, Bondin' +
        'g, Flexing, AgingResult, QUV, CrockingTest, CrockingWithNH3, Cor' +
        'rosion, SendQtyPR, USERID, USERDate,YN)'
      'VALUES'
      
        '(:RY, :ProductionLine, :TestShoeReceiveDate, :TestResultDate, :B' +
        'onding, :Flexing, :AgingResult, :QUV, :CrockingTest, :CrockingWi' +
        'thNH3, :Corrosion, :SendQtyPR, :USERID, :USERDate,:YN)')
    DeleteSQL.Strings = (
      'delete from GBTest_Details'
      'where'
      '  RY= :OLD_RY'
      'and ProductionLine =  :ProductionLine ')
    Left = 144
    Top = 190
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 153
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT GBTest_Details.*, GBTest.*, xxzl.IMGName FROM GBTest_Deta' +
        'ils'
      'LEFT JOIN GBTest ON GBTest.RY = GBTest_Details.RY'
      'LEFT JOIN xxzl ON XXZL.ARTICLE = GBTest.SKU'
      'WHERE 1=1'
      'AND GBTest_Details.RY = '#39'Y2405-0103'#39
      'AND SKU = '#39'865156C'#39
      'AND BUYNO = '#39'202401'#39)
    UpdateObject = UpdateSQL1
    Left = 144
    Top = 152
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      Origin = 'DB.GBTest.BUYNO'
      FixedChar = True
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.GBTest.Season'
      FixedChar = True
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      Origin = 'DB.GBTest.RY'
      FixedChar = True
      Size = 15
    end
    object Query1RY_same_group: TStringField
      FieldName = 'RY_same_group'
      Origin = 'DB.GBTest.RY_same_group'
      FixedChar = True
      Size = 255
    end
    object Query1PO: TStringField
      FieldName = 'PO'
      Origin = 'DB.GBTest.PO'
      FixedChar = True
      Size = 30
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      Origin = 'DB.GBTest.SKU'
      FixedChar = True
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.GBTest.Country'
      FixedChar = True
      Size = 50
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      Origin = 'DB.GBTest.Groups'
      FixedChar = True
      Size = 10
    end
    object Query1ProductionType: TStringField
      FieldName = 'ProductionType'
      Origin = 'DB.GBTest.ProductionType'
      FixedChar = True
      Size = 50
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      Origin = 'DB.GBTest.SR'
      FixedChar = True
    end
    object Query1MaterialDescription: TStringField
      FieldName = 'MaterialDescription'
      Origin = 'DB.GBTest.MaterialDescription'
      FixedChar = True
      Size = 255
    end
    object Query1ModelDescription: TStringField
      FieldName = 'ModelDescription'
      Origin = 'DB.GBTest.ModelDescription'
      FixedChar = True
      Size = 50
    end
    object Query1Color: TStringField
      FieldName = 'Color'
      Origin = 'DB.GBTest.Color'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.GBTest.Qty'
    end
    object Query1Gender: TStringField
      FieldName = 'Gender'
      Origin = 'DB.GBTest.Gender'
      FixedChar = True
    end
    object Query1SendSize: TStringField
      FieldName = 'SendSize'
      Origin = 'DB.GBTest.SendSize'
      FixedChar = True
      Size = 30
    end
    object Query1SendQty: TStringField
      FieldName = 'SendQty'
      Origin = 'DB.GBTest.SendQty'
      FixedChar = True
      Size = 30
    end
    object Query1GAC_Date: TDateTimeField
      FieldName = 'GAC_Date'
      Origin = 'DB.GBTest.GAC_Date'
    end
    object Query1ProductionLine: TStringField
      FieldName = 'ProductionLine'
    end
    object Query1TestShoeReceiveDate: TDateTimeField
      FieldName = 'TestShoeReceiveDate'
    end
    object Query1TestResultDate: TDateTimeField
      FieldName = 'TestResultDate'
    end
    object Query1Bonding: TStringField
      FieldName = 'Bonding'
    end
    object Query1Flexing: TStringField
      FieldName = 'Flexing'
    end
    object Query1AgingResult: TStringField
      FieldName = 'AgingResult'
    end
    object Query1QUV: TStringField
      FieldName = 'QUV'
    end
    object Query1CrockingTest: TStringField
      FieldName = 'CrockingTest'
    end
    object Query1CrockingWithNH3: TStringField
      FieldName = 'CrockingWithNH3'
    end
    object Query1Corrosion: TStringField
      FieldName = 'Corrosion'
    end
    object Query1SendQtyPR: TStringField
      FieldName = 'SendQtyPR'
    end
    object Query1GB_Test: TStringField
      FieldName = 'GB_Test'
      Origin = 'DB.GBTest.GB_Test'
      FixedChar = True
      Size = 50
    end
    object Query1LAB: TStringField
      FieldName = 'LAB'
      Origin = 'DB.GBTest.LAB'
      FixedChar = True
      Size = 50
    end
    object Query1REMARK_Gore_tex: TStringField
      FieldName = 'REMARK_Gore_tex'
      Origin = 'DB.GBTest.REMARK_Gore_tex'
      FixedChar = True
      Size = 255
    end
    object Query1AWBNo: TStringField
      FieldName = 'AWBNo'
      Origin = 'DB.GBTest.AWBNo'
      FixedChar = True
      Size = 30
    end
    object Query1SendGBDate: TDateTimeField
      FieldName = 'SendGBDate'
      Origin = 'DB.GBTest.SendGBDate'
    end
    object Query1TestResult: TStringField
      FieldName = 'TestResult'
      Origin = 'DB.GBTest.TestResult'
      FixedChar = True
      Size = 30
    end
    object Query1ReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
      Origin = 'DB.GBTest.ReceivedDate'
    end
    object Query1KCNumber: TStringField
      FieldName = 'KCNumber'
      Origin = 'DB.GBTest.KCNumber'
      FixedChar = True
      Size = 30
    end
    object Query1Arrived_on_DTTlab: TStringField
      FieldName = 'Arrived_on_DTTlab'
      Origin = 'DB.GBTest.Arrived_on_DTTlab'
      FixedChar = True
      Size = 50
    end
    object Query1DayReceiveResult: TStringField
      FieldName = 'DayReceiveResult'
      Origin = 'DB.GBTest.DayReceiveResult'
      FixedChar = True
    end
    object Query1Late_Reason: TStringField
      FieldName = 'Late_Reason'
      Origin = 'DB.GBTest.Late_Reason'
      FixedChar = True
      Size = 255
    end
    object Query1EstimatedReceivedDate: TDateTimeField
      FieldName = 'EstimatedReceivedDate'
      Origin = 'DB.GBTest.EstimatedReceivedDate'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.GBTest.Remark'
      FixedChar = True
      Size = 255
    end
    object Query1TestReportFile: TStringField
      FieldName = 'TestReportFile'
      Origin = 'DB.GBTest.TestReportFile'
      FixedChar = True
      Size = 100
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 5
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 58
    Top = 152
  end
  object OpenDialog: TOpenDialog
    Left = 189
    Top = 155
  end
end
