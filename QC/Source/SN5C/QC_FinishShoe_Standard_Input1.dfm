object QC_FinishShoe_Standard_Input: TQC_FinishShoe_Standard_Input
  Left = 259
  Top = 165
  Width = 979
  Height = 530
  Caption = 'Finish Shoe Standard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 963
    Height = 72
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 43
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 448
      Top = 7
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 208
      Top = 7
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 200
      Top = 38
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 483
      Top = 38
      Width = 29
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object WorkDate: TDateTimePicker
      Left = 53
      Top = 4
      Width = 143
      Height = 24
      Date = 40005.611621747690000000
      Format = 'yyyy/MM/dd'
      Time = 40005.611621747690000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DepNO: TEdit
      Left = 282
      Top = 4
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 418
      Top = 4
      Width = 21
      Height = 23
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object DepNM: TEdit
      Left = 282
      Top = 35
      Width = 159
      Height = 24
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object cboSize: TComboBox
      Left = 514
      Top = 35
      Width = 138
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
    end
    object Button1: TButton
      Left = 676
      Top = 7
      Width = 89
      Height = 49
      Caption = 'QUERY'
      TabOrder = 5
      OnClick = Button1Click
    end
    object chk1: TRadioButton
      Left = 8
      Top = 48
      Width = 65
      Height = 17
      Caption = 'ENG'
      TabOrder = 6
    end
    object chk2: TRadioButton
      Left = 72
      Top = 48
      Width = 65
      Height = 17
      Caption = 'VNT'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
    object DDBHCombo: TComboBox
      Left = 514
      Top = 4
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
      OnChange = DDBHComboChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 65
    Align = alTop
    TabOrder = 1
    object BB7: TBitBtn
      Left = 232
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
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
    object BB5: TBitBtn
      Left = 96
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
      TabOrder = 2
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
    object BB4: TBitBtn
      Left = 184
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'KeyB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 963
    Height = 354
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 352
      Align = alClient
      DataSource = DS
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
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
      Columns = <
        item
          EditButtons = <>
          FieldName = 'YYBH'
          Footers = <>
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ZWSM'
          Footers = <>
          Width = 350
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Standard'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 150
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Actual'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 150
        end>
    end
  end
  object QC_FGYY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YYBH, ZWSM, CONVERT(float,'#39'0'#39') as Standard,CONVERT(float,' +
        #39'0'#39')  as Actual'
      'from QC_FGYY'
      'where gsbh='#39'VB1'#39
      'order by YYBH')
    UpdateObject = UpdQC_FGYY
    Left = 248
    Top = 242
    object QC_FGYYYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object QC_FGYYZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object QC_FGYYStandard: TFloatField
      FieldName = 'Standard'
      DisplayFormat = '#,##0.0'
      EditFormat = '###0.0'
    end
    object QC_FGYYActual: TFloatField
      FieldName = 'Actual'
      DisplayFormat = '#,##0.0'
      EditFormat = '###0.0'
    end
  end
  object DS: TDataSource
    DataSet = QC_FGYY
    Left = 280
    Top = 242
  end
  object DepQry: TQuery
    DatabaseName = 'DB'
    Left = 448
    Top = 81
  end
  object UpdQC_FGYY: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_FGYY'
      'set'
      'YWSM=:YWSM,'
      'ZWSM=:ZWSM,'
      'UserDate=:UserDate,'
      'UserID=:UserID,'
      'YN=:YN'
      'where YYBH=:OLD_YYBH and GSBH=:OLD_GSBH')
    InsertSQL.Strings = (
      'insert into QC_FGYY(YYBH,GSBH,YWSM,ZWSM,UserDate,UserID,YN)'
      'values (:YYBH,:GSBH,:YWSM,:ZWSM,:UserDate,:UserID,:YN)')
    DeleteSQL.Strings = (
      'delete QC_FGYY'
      'where YYBH=:OLD_YYBH and GSBH=:OLD_GSBH')
    Left = 248
    Top = 274
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 282
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 314
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 346
  end
end
