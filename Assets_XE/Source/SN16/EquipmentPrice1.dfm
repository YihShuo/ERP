object EquipmentPrice: TEquipmentPrice
  Left = 0
  Top = 0
  Caption = 'EquipmentPrice'
  ClientHeight = 653
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
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
    Width = 1109
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object InfoLable: TLabel
      Left = 612
      Top = 20
      Width = 68
      Height = 15
      AutoSize = False
      Color = clWhite
      ParentColor = False
    end
    object BB1: TBitBtn
      Left = 7
      Top = 7
      Width = 46
      Height = 46
      Caption = 'Query'
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
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
    end
    object BB6: TBitBtn
      Left = 158
      Top = 8
      Width = 46
      Height = 46
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
      TabOrder = 1
      OnClick = BB6Click
    end
    object BB5: TBitBtn
      Left = 114
      Top = 8
      Width = 45
      Height = 46
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
      TabOrder = 2
      OnClick = BB5Click
    end
    object BB4: TBitBtn
      Left = 69
      Top = 8
      Width = 46
      Height = 46
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
      TabOrder = 3
      OnClick = BB4Click
    end
    object BB7: TBitBtn
      Left = 203
      Top = 8
      Width = 45
      Height = 46
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
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 60
    Width = 1109
    Height = 77
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
      Left = 15
      Top = 44
      Width = 32
      Height = 17
      Caption = 'TSID:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 8
      Width = 32
      Height = 17
      Caption = 'From:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 168
      Top = 8
      Width = 19
      Height = 17
      Caption = 'To:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 180
      Top = 44
      Width = 37
      Height = 17
      Caption = 'TSBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 322
      Top = 8
      Width = 83
      Height = 17
      Caption = 'DepID_Memo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 538
      Top = 8
      Width = 59
      Height = 17
      Caption = 'DepName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 354
      Top = 44
      Width = 38
      Height = 17
      Caption = 'SBBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 522
      Top = 43
      Width = 50
      Height = 17
      Caption = 'MSBBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object edtTSID: TEdit
      Left = 54
      Top = 41
      Width = 111
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnQuery: TButton
      Left = 823
      Top = 34
      Width = 76
      Height = 31
      Caption = 'QUERY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnQueryClick
    end
    object DTP1: TDateTimePicker
      Left = 57
      Top = 6
      Width = 105
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 190
      Top = 6
      Width = 105
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 221
      Top = 41
      Width = 121
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 418
      Top = 6
      Width = 108
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 400
      Top = 39
      Width = 108
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DepNMEdit: TComboBox
      Left = 605
      Top = 6
      Width = 140
      Height = 24
      TabOrder = 7
      Items.Strings = (
        '')
    end
    object CheckBox1: TCheckBox
      Left = 751
      Top = 11
      Width = 114
      Height = 16
      Caption = 'Dep dach sach'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object MSBBHCombo: TComboBox
      Left = 576
      Top = 38
      Width = 238
      Height = 24
      TabOrder = 9
      Items.Strings = (
        'Z207000022-'#38651#33126'-MAY VI TINH'
        'Z207000016-LCD '#29074#24149'-MAN HINH LCD'
        'Z207000001-'#21360#34920#27231'-MAY IN HP'
        'Z207000051-'#25163#25552#38651#33126'-MAY VI TINH XACH TAY'
        'Z207001026-'#23567#38651#33126'-May tinh mini'
        'Z207000260-'#24179#26495#38651#33126'-IPAD MINI')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 1109
    Height = 516
    Align = alClient
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
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36001#29986'ID|TSID'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footer.FieldName = 'SBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 180
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 160
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 43
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'VND'
        Footers = <>
        Title.Caption = #21934#20729'|VND'
        Width = 120
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'USD'
        Footers = <>
        Title.Caption = #21934#20729'|USD'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID_Price'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20729'|USERID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE_Price'
        Footers = <>
        Title.Caption = #21934#20729'|DATE'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEPID'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|DepID'
        Width = 51
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|DepName'
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEPID_MEMO'
        Footers = <>
        Title.Caption = #23384#25918#20301#32622'|DepID_Memo'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MSBBH'
        Footers = <>
        PickList.Strings = (
          'Z207000022'
          'Z207000016'
          'Z207000001'
          'Z207000051'
          'Z207001026'
          'Z207000260')
        Title.Caption = #20998#39006#26009#34399'|MSBBH'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MYWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20998#39006#21517#31281'|MYWPM'
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20998#39006#20013#25991'|MZWPM'
        Width = 108
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Label_Tag'
        Footers = <>
        Title.Caption = #27161#31844'|Label'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RFID_Tag'
        Footers = <>
        Title.Caption = #27161#31844'|RFID'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
        Title.Caption = #29376#24907'|Status'
        Width = 41
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'userid'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 78
      end
      item
        CellButtons = <>
        DisplayFormat = 'yyyy/MM/dd'
        DynProps = <>
        EditButtons = <>
        FieldName = 'userdate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QueryUser: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select USERID,PWD,Report from Busers')
    Left = 33
    Top = 258
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 258
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 120
    Top = 257
  end
  object TSCD: TQuery
    AfterOpen = TSCDAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select TSID,TSBH,TSCD.SBBH,QTY,TSCD.DEPID,DEPID_MEMO,status,BDep' +
        'artment.depname,TSCD.userid,TSCD.userdate,LLNO,RKNO,LB,TSCD.YN  ' +
        ' '
      
        '       ,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZW' +
        'PM,CLZL.ZWPM) as ZWPM '
      
        '       ,TSCD.Label_Tag,TSCD.RFID_Tag,TSCD.USERID_Tag,TSCD.USERDA' +
        'TE_Tag,TSCD.Memo,TSCD.MSBBH,IsNull(MTSCD_SB.YWPM,MCLZL.YWPM) as ' +
        'MYWPM,IsNull(MTSCD_SB.ZWPM,MCLZL.ZWPM) as MZWPM'
      'from TSCD'
      
        'left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.D' +
        'epID '
      'left join clzl on TSCD.SBBH = clzl.cldh '
      'left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH '
      'left join clzl MCLZL on TSCD.MSBBH = MCLZL.cldh '
      'left join TSCD_SB MTSCD_SB on TSCD.SBBH = MTSCD_SB.SBBH  '
      'where 1=1 '
      'and TSCD.USERID ='#39'83489'#39' '
      
        'and convert(smalldatetime,convert(varchar,TSCD.USERDATE,111)) be' +
        'tween  '#39'2023/05/21'#39' and '#39'2023/05/24'#39
      'order by TSID desc'
      '')
    UpdateObject = UpMas
    Left = 164
    Top = 257
    object TSCDTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQTY: TFloatField
      FieldName = 'QTY'
    end
    object TSCDDEPID: TStringField
      FieldName = 'DEPID'
      FixedChar = True
      Size = 10
    end
    object TSCDdepname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object TSCDDEPID_MEMO: TStringField
      FieldName = 'DEPID_MEMO'
      FixedChar = True
    end
    object TSCDstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 2
    end
    object TSCDuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object TSCDuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object TSCDLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object TSCDRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object TSCDLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
    object TSCDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object TSCDYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDLabel_Tag: TStringField
      FieldName = 'Label_Tag'
      FixedChar = True
      Size = 15
    end
    object TSCDZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDRFID_Tag: TStringField
      DisplayWidth = 24
      FieldName = 'RFID_Tag'
      FixedChar = True
      Size = 24
    end
    object TSCDUSERID_Tag: TStringField
      FieldName = 'USERID_Tag'
      FixedChar = True
      Size = 10
    end
    object TSCDUSERDATE_Tag: TDateTimeField
      FieldName = 'USERDATE_Tag'
    end
    object TSCDMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object TSCDMSBBH: TStringField
      FieldName = 'MSBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDMYWPM: TStringField
      FieldName = 'MYWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDMZWPM: TStringField
      FieldName = 'MZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDVND: TCurrencyField
      FieldName = 'VND'
      DisplayFormat = '#,##0'
    end
    object TSCDUSD: TFloatField
      FieldName = 'USD'
    end
    object TSCDUSERID_Price: TStringField
      FieldName = 'USERID_Price'
      Size = 10
    end
    object TSCDUSERDATE_Price: TDateTimeField
      FieldName = 'USERDATE_Price'
    end
    object TSCDVWPM: TStringField
      FieldName = 'VWPM'
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = TSCD
    Left = 164
    Top = 306
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD'
      'set'
      '  VND = :VND,'
      '  USD = :USD,'
      '  USERID_Price= :USERID_Price,'
      '  USERDATE_Price= :USERDATE_Price'
      'where'
      '  TSID = :OLD_TSID')
    Left = 164
    Top = 356
  end
end
