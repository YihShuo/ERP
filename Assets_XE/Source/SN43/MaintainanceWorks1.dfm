object MaintainanceWorks: TMaintainanceWorks
  Left = 0
  Top = 0
  Caption = 'Maintainance Works'
  ClientHeight = 673
  ClientWidth = 1395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object Splitter1: TSplitter
    Left = 1041
    Top = 147
    Width = 8
    Height = 526
    ExplicitLeft = 673
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1395
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 64
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'List'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = BB2Click
    end
    object BB3: TBitBtn
      Left = 694
      Top = 10
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
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object BB4: TBitBtn
      Left = 119
      Top = 10
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
      ParentFont = False
      TabOrder = 2
      OnClick = BB4Click
    end
    object BB5: TBitBtn
      Left = 174
      Top = 10
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
      ParentFont = False
      TabOrder = 3
      OnClick = BB5Click
    end
    object BB6: TBitBtn
      Left = 229
      Top = 10
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
      ParentFont = False
      TabOrder = 4
      OnClick = BB6Click
    end
    object BB7: TBitBtn
      Left = 291
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
      OnClick = BB7Click
    end
    object bbt6: TBitBtn
      Left = 749
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 10
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'NEW'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object bbt5: TBitBtn
      Left = 401
      Top = 10
      Width = 75
      Height = 49
      Hint = 'Modify Current'
      Caption = 'MainPrint'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 8
      OnClick = bbt5Click
    end
    object BitBtn2: TBitBtn
      Left = 482
      Top = 10
      Width = 71
      Height = 49
      Hint = 'Modify Current'
      Caption = 'ItemPrint'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1395
    Height = 82
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 70
      Height = 16
      Caption = 'Department'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 275
      Top = 52
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label6: TLabel
      Left = 47
      Top = 48
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'WorkID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 576
      Top = 48
      Width = 11
      Height = 20
      Caption = '0'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 448
      Top = 46
      Width = 81
      Height = 27
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object TBMtCode: TEdit
      Left = 103
      Top = 48
      Width = 122
      Height = 24
      TabOrder = 1
    end
    object SCKYears: TCheckBox
      Left = 401
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Years'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SCKMonClick
    end
    object SCKMon: TCheckBox
      Left = 273
      Top = 16
      Width = 49
      Height = 17
      Caption = 'Mon'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = SCKMonClick
    end
    object SCKSea: TCheckBox
      Left = 338
      Top = 16
      Width = 49
      Height = 17
      Caption = 'Sea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = SCKMonClick
    end
    object CBDepartment: TComboBox
      Left = 104
      Top = 13
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object DP2: TDateTimePicker
      Left = 323
      Top = 48
      Width = 105
      Height = 24
      Date = 45435.363893969910000000
      Time = 45435.363893969910000000
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 147
    Width = 1041
    Height = 526
    Align = alLeft
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mt_code'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'department'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Checked'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Mon'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Sea'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Years'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'userid'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LsMon'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISOK'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 1049
    Top = 147
    Width = 346
    Height = 526
    Align = alClient
    DataSource = DS2
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Maintenance_item'
        Footers = <>
        ReadOnly = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Chinese_item'
        Footers = <>
        ReadOnly = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Mon'
        Footers = <>
        ReadOnly = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Sea'
        Footers = <>
        ReadOnly = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Years'
        Footers = <>
        ReadOnly = True
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 146
    Top = 238
  end
  object UpTSCD_MtWorks: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE [TSCD_MtWorks]'
      
        '   SET [userid] = :userid ,[userdate] = getdate() ,[flowflag] = ' +
        ':flowflag'
      ' WHERE [mt_code] = :mt_code and TSID=:TSID')
    InsertSQL.Strings = (
      'INSERT INTO [TSCD_MtWorks]'
      
        '([mt_code],[TSID],[department],[LSBH],[userid],[Mon],[Sea],[Year' +
        's],[SBBH],[class_type])'
      
        ' VALUES(:mt_code,:TSID,:department,:LSBH, :userid,:Mon,:Sea,:Yea' +
        'rs,:SBBH,:class_type)')
    DeleteSQL.Strings = (
      'delete  FROM [LIY_ERP].[dbo].[TSCD_MtWorks]'
      'where [mt_code]=:mt_code and [TSID]=:TSID')
    Left = 148
    Top = 300
  end
  object DS1: TDataSource
    DataSet = TSCD_MtWorks
    Left = 244
    Top = 308
  end
  object TSCD_MtWorkss: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select LSBH,Maintenance_item,Chinese_item,Mon,Sea,Years from TSC' +
        'D_Maintenance_item'
      ' where 1<>1'
      ' order by TSCD_Maintenance_item.LSBH')
    Left = 796
    Top = 236
    object TSCD_MtWorkssMaintenance_item: TStringField
      FieldName = 'Maintenance_item'
    end
    object TSCD_MtWorkssChinese_item: TStringField
      FieldName = 'Chinese_item'
    end
    object TSCD_MtWorkssMon: TBooleanField
      FieldName = 'Mon'
    end
    object TSCD_MtWorkssSea: TBooleanField
      FieldName = 'Sea'
    end
    object TSCD_MtWorkssYears: TBooleanField
      FieldName = 'Years'
    end
  end
  object DS2: TDataSource
    DataSet = TSCD_MtWorkss
    Left = 796
    Top = 316
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 412
    Top = 236
  end
  object TSCD_MtWorks: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT [mt_code],[department],a.[TSID],[TSBH],a.[LSBH],a.[mt_sta' +
        'tus],a.[userid],ISOK'
      
        ' ,case when [Mon]=1 then '#39'Y'#39' end as [Mon1],case when [Sea]=1 the' +
        'n '#39'Y'#39' end as [Sea1] ,case when [Years]=1 then '#39'Y'#39' end as [Years1' +
        ']'
      
        ' ,'#39'Mon'#39' Ctype,cast(0 as bit) Trepeat,cast(0 as bit) Checked,conv' +
        'ert(char(10), [CycleDate_M], 121) LsMon,[flowflag]'
      
        ',a.[userdate],[class_type],a.[SBBH],[VWPM],[ZWPM],[Mon],[Sea],[Y' +
        'ears] FROM [TSCD_MtWorks] a'
      'inner join [TSCD_SB] b on a.LSBH=b.LSBH'
      'inner join [TSCD] c on a.[TSID]=c.[TSID]'
      'where 1<>1')
    UpdateObject = UpTSCD_MtWorks
    Left = 240
    Top = 240
    object TSCD_MtWorksmt_code: TStringField
      FieldName = 'mt_code'
    end
    object TSCD_MtWorksdepartment: TStringField
      FieldName = 'department'
    end
    object TSCD_MtWorksTSID: TStringField
      FieldName = 'TSID'
    end
    object TSCD_MtWorksTSBH: TStringField
      FieldName = 'TSBH'
    end
    object TSCD_MtWorksLSBH: TStringField
      FieldName = 'LSBH'
    end
    object TSCD_MtWorksmt_status: TBooleanField
      FieldName = 'mt_status'
    end
    object TSCD_MtWorksuserid: TStringField
      FieldName = 'userid'
    end
    object TSCD_MtWorksCtype: TStringField
      FieldName = 'Ctype'
    end
    object TSCD_MtWorksuserdate: TStringField
      FieldName = 'userdate'
    end
    object TSCD_MtWorksSBBH: TStringField
      FieldName = 'SBBH'
    end
    object TSCD_MtWorksVWPM: TStringField
      FieldName = 'VWPM'
    end
    object TSCD_MtWorksZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object TSCD_MtWorksMon: TBooleanField
      FieldName = 'Mon'
    end
    object TSCD_MtWorksSea: TBooleanField
      FieldName = 'Sea'
    end
    object TSCD_MtWorksYears: TBooleanField
      FieldName = 'Years'
    end
    object TSCD_MtWorksclass_type: TStringField
      FieldName = 'class_type'
    end
    object TSCD_MtWorksChecked: TBooleanField
      FieldName = 'Checked'
    end
    object TSCD_MtWorksTrepeat: TBooleanField
      FieldName = 'Trepeat'
    end
    object TSCD_MtWorksflowflag: TStringField
      FieldName = 'flowflag'
    end
    object TSCD_MtWorksISOK: TBooleanField
      FieldName = 'ISOK'
    end
    object TSCD_MtWorksLsMon: TStringField
      FieldName = 'LsMon'
    end
    object TSCD_MtWorksMon1: TStringField
      FieldName = 'Mon1'
    end
    object TSCD_MtWorksSea1: TStringField
      FieldName = 'Sea1'
    end
    object TSCD_MtWorksYears1: TStringField
      FieldName = 'Years1'
    end
  end
  object MtworkItems: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT [mt_code],[department],a.[TSID],[TSBH],a.[LSBH],a.[mt_sta' +
        'tus],a.[userid],ISOK'
      
        ' ,case when [Mon]=1 then '#39'Y'#39' end as [Mon1],case when [Sea]=1 the' +
        'n '#39'Y'#39' end as [Sea1] ,case when [Years]=1 then '#39'Y'#39' end as [Years1' +
        ']'
      
        ' ,'#39'Mon'#39' Ctype,cast(0 as bit) Trepeat,cast(0 as bit) Checked,conv' +
        'ert(char(10), [CycleDate_M], 121) LsMon,[flowflag]'
      
        ',a.[userdate],[class_type],a.[SBBH],[VWPM],[ZWPM],[Mon],[Sea],[Y' +
        'ears] FROM [TSCD_MtWorks] a'
      'inner join [TSCD_SB] b on a.LSBH=b.LSBH'
      'inner join [TSCD] c on a.[TSID]=c.[TSID]'
      'where 1<>1')
    Left = 416
    Top = 320
    object MtworkItemsLSBH: TStringField
      FieldName = 'LSBH'
    end
    object MtworkItemsMaintenance_item: TStringField
      FieldName = 'Maintenance_item'
    end
    object MtworkItemsChinese_item: TStringField
      FieldName = 'Chinese_item'
    end
    object MtworkItemsMon: TStringField
      FieldName = 'Mon'
    end
    object MtworkItemsSea: TStringField
      FieldName = 'Sea'
    end
    object MtworkItemsYears: TStringField
      FieldName = 'Years'
    end
    object MtworkItemslang: TStringField
      FieldName = 'lang'
    end
  end
end
