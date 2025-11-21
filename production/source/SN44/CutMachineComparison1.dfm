object CutMachineComparison: TCutMachineComparison
  Left = 205
  Top = 218
  Width = 1711
  Height = 675
  Caption = 'CutMachineComparison'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1695
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
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
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1695
    Height = 56
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = Panel2Click
    object Label1: TLabel
      Left = 362
      Top = 33
      Width = 34
      Height = 16
      Caption = 'ZLBH'
    end
    object Label2: TLabel
      Left = 334
      Top = 7
      Width = 63
      Height = 16
      Caption = 'DepName'
    end
    object SB1: TSpeedButton
      Left = 805
      Top = 3
      Width = 18
      Height = 24
      Glyph.Data = {
        96000000424D9600000000000000360000002800000007000000040000000100
        18000000000060000000120B0000120B00000000000000000000F0F0F0F0F0F0
        F0F0F0000000F0F0F0F0F0F0F0F0F0000000F0F0F0F0F0F00000000000000000
        00F0F0F0F0F0F0000000F0F0F0000000000000000000000000000000F0F0F000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SB1Click
    end
    object Label3: TLabel
      Left = 186
      Top = 36
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label4: TLabel
      Left = 14
      Top = 7
      Width = 59
      Height = 16
      Caption = 'PlanType'
    end
    object Label5: TLabel
      Left = 43
      Top = 33
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label7: TLabel
      Left = 852
      Top = 7
      Width = 37
      Height = 16
      Caption = 'DLNO'
    end
    object Label6: TLabel
      Left = 848
      Top = 33
      Width = 41
      Height = 16
      Caption = 'BWBH'
    end
    object ZLBHEdit: TEdit
      Left = 404
      Top = 29
      Width = 421
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 1320
      Top = 7
      Width = 75
      Height = 41
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DepNameEdit: TEdit
      Left = 404
      Top = 3
      Width = 402
      Height = 24
      TabOrder = 2
    end
    object CB_PlanType: TComboBox
      Left = 80
      Top = 3
      Width = 105
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'RPlan'
      OnChange = CB_PlanTypeChange
      Items.Strings = (
        'RPlan'
        'Plan'
        'MachinePlan')
    end
    object DTP1: TDateTimePicker
      Left = 80
      Top = 29
      Width = 105
      Height = 24
      Date = 43827.454547222220000000
      Format = 'yyyy/MM/dd'
      Time = 43827.454547222220000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 198
      Top = 29
      Width = 107
      Height = 24
      Date = 43827.454547222220000000
      Format = 'yyyy/MM/dd'
      Time = 43827.454547222220000000
      TabOrder = 5
    end
    object MachineBox: TComboBox
      Left = 182
      Top = 3
      Width = 123
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 6
      Visible = False
    end
    object EDIT_DLNO: TEdit
      Left = 896
      Top = 3
      Width = 409
      Height = 24
      TabOrder = 7
    end
    object EDIT_BWBH: TEdit
      Left = 896
      Top = 29
      Width = 409
      Height = 24
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1695
    Height = 515
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleBtnClick = DBGridEh1TitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DLNO'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
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
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CutNum'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'RDepName'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'RPlanDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ROrder'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'MachineName'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'MachineDate'
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
      end>
  end
  object CLLean: TCheckListBox
    Left = 404
    Top = 91
    Width = 420
    Height = 38
    OnClickCheck = CLLeanClickCheck
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'Lean')
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 2
    Visible = False
    OnClick = CLLeanClick
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 192
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 192
    object Query1DLNO: TStringField
      FieldName = 'DLNO'
      Size = 12
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      Size = 4
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      Size = 6
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1CutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RDepName: TStringField
      FieldName = 'RDepName'
      Size = 50
    end
    object Query1RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1ROrder: TIntegerField
      FieldName = 'ROrder'
    end
    object Query1Machine: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object Query1MachineDate: TDateTimeField
      FieldName = 'MachineDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Query1Article: TStringField
      FieldName = 'Article'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 160
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CutDispatchSS'
      'SET'
      '  Machine = :Machine,'
      '  MachineDate = :MachineDate,'
      '  USERDATE = :USERDATE'
      'WHERE'
      '  DLNO = :OLD_DLNO AND'
      '  ZLBH = :OLD_ZLBH AND'
      '  DDBH = :OLD_DDBH AND'
      '  BWBH = :OLD_BWBH AND'
      '  SIZE = :OLD_SIZE AND'
      '  CLBH = :OLD_CLBH')
    Left = 16
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 256
    object SELECTALL1: TMenuItem
      Caption = 'SELECT ALL'
      Visible = False
      OnClick = SELECTALL1Click
    end
    object SETMACHINEDATA1: TMenuItem
      Caption = 'SET MACHINE DATA'
      Visible = False
      OnClick = SETMACHINEDATA1Click
    end
    object SELECTTO1: TMenuItem
      Caption = 'SELECT TO A TARGET VALUE'
      OnClick = SELECTTO1Click
    end
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 224
  end
  object PopupMenu2: TPopupMenu
    Left = 791
    Top = 96
    object SELECTALL2: TMenuItem
      Caption = 'SELECT ALL'
      OnClick = SELECTALL2Click
    end
    object UNSELECTALL1: TMenuItem
      Caption = 'UNSELECT ALL'
      OnClick = UNSELECTALL1Click
    end
  end
end
