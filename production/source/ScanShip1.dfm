object ScanShip: TScanShip
  Left = 490
  Top = 212
  Width = 1322
  Height = 733
  Caption = 'ScanShip'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 105
    Width = 561
    Height = 589
    Align = alLeft
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
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'LPNBarCode'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'rgw'
        Footers = <>
        Title.Caption = 'RGW'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'ogw'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1306
    Height = 105
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 224
      Top = 48
      Width = 57
      Height = 28
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 600
      Top = 12
      Width = 78
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Con_NO'
    end
    object Label3: TLabel
      Left = 601
      Top = 44
      Width = 77
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY_NO'
    end
    object Label4: TLabel
      Left = 600
      Top = 76
      Width = 78
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ShipDate'
    end
    object BB1: TBitBtn
      Left = 16
      Top = 16
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Import'
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
    object BB2: TBitBtn
      Left = 64
      Top = 16
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Upload'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
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
    object BB3: TBitBtn
      Left = 112
      Top = 16
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object BB4: TBitBtn
      Left = 160
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
      TabOrder = 3
      OnClick = BB4Click
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
    object BitBtn1: TBitBtn
      Left = 224
      Top = 8
      Width = 49
      Height = 41
      Hint = 'Exit Current Form'
      Caption = 'SCAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
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
    object Panel1: TPanel
      Left = 280
      Top = 8
      Width = 321
      Height = 81
      Caption = 'Panel1'
      TabOrder = 5
      Visible = False
      object Edit1: TEdit
        Left = 8
        Top = 16
        Width = 225
        Height = 49
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 232
        Top = 40
        Width = 89
        Height = 25
        Caption = 'NO'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 232
        Top = 16
        Width = 89
        Height = 25
        Caption = 'W N'
        TabOrder = 2
        OnClick = Button2Click
      end
      object MSComm1: TMSComm
        Left = 184
        Top = 16
        Width = 32
        Height = 32
        ControlData = {
          2143341208000000ED030000ED03000001568A64000006000000010000040000
          00020000802500000000080000000000000000003F00000005000000}
      end
      object Edit4: TEdit
        Left = 24
        Top = 24
        Width = 121
        Height = 26
        TabOrder = 4
        Text = 'Edit4'
        Visible = False
      end
    end
    object CBX1: TCheckBox
      Left = 16
      Top = 72
      Width = 121
      Height = 17
      Caption = 'Check Detail'
      TabOrder = 6
      OnClick = CBX1Click
    end
    object Edit2: TEdit
      Left = 680
      Top = 8
      Width = 121
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 680
      Top = 40
      Width = 121
      Height = 26
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 8
    end
    object spdate: TDateTimePicker
      Left = 680
      Top = 72
      Width = 129
      Height = 26
      Date = 41355.409087835650000000
      Time = 41355.409087835650000000
      TabOrder = 9
    end
    object chdate: TDateTimePicker
      Left = 816
      Top = 24
      Width = 113
      Height = 26
      Date = 41355.446081562500000000
      Time = 41355.446081562500000000
      TabOrder = 10
      Visible = False
    end
  end
  object DBGrid2: TDBGridEh
    Left = 561
    Top = 105
    Width = 745
    Height = 589
    Align = alClient
    DataSource = DS2
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
    FrozenCols = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = 'OrderNo'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'Model Name'
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = 'OrdSize'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = 'ModSize'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'CTQ'
        Footers = <>
        Title.Caption = 'From'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CTZ'
        Footers = <>
        Title.Caption = 'To'
        Width = 37
      end>
  end
  object rwin: TMemo
    Left = 712
    Top = 352
    Width = 185
    Height = 89
    Lines.Strings = (
      'rwin')
    TabOrder = 3
    Visible = False
  end
  object ScanData: TQuery
    CachedUpdates = True
    AfterInsert = ScanDataAfterInsert
    AfterDelete = ScanDataAfterDelete
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from YWCP'
      'where DDBH='#39'AAAAA'#39)
    UpdateObject = UpScan
    Left = 168
    Top = 152
    object ScanDataCARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object ScanDataDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP.DDBH'
      FixedChar = True
      Size = 15
    end
    object ScanDataXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object ScanDataQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
    end
    object ScanDataSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object ScanDataINSPECTCS: TIntegerField
      FieldName = 'INSPECTCS'
      Origin = 'DB.YWCP.INSPECTCS'
    end
    object ScanDataINSPECTDATE: TDateTimeField
      FieldName = 'INSPECTDATE'
      Origin = 'DB.YWCP.INSPECTDATE'
    end
    object ScanDataMEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.YWCP.MEMO'
      FixedChar = True
    end
    object ScanDatargw: TFloatField
      FieldName = 'rgw'
      Origin = 'DB.YWCP.rgw'
    end
    object ScanDatasgw: TFloatField
      FieldName = 'sgw'
      Origin = 'DB.YWCP.sgw'
    end
    object ScanDataogw: TFloatField
      FieldName = 'ogw'
      Origin = 'DB.YWCP.ogw'
    end
    object ScanDataLPNBarCode: TStringField
      FieldName = 'LPNBarCode'
      Origin = 'DB.YWCP.LPNBarCode'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 200
    Top = 152
  end
  object UpScan: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCP'
      'set'
      '  SB = :SB,'
      '  EXEDATE = :EXEDATE,'
      '  CON_NO = :CON_NO,'
      '  ogw = :ogw'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    InsertSQL.Strings = (
      'insert into YWCP'
      '  (SB, EXEDATE, CON_NO, ogw)'
      'values'
      '  (:SB, :EXEDATE, :CON_NO, :ogw)')
    DeleteSQL.Strings = (
      'delete from YWCP'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    Left = 232
    Top = 152
  end
  object YWBZPOS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select YWBZPOS.*,ZLZLS.XXCC,XXZl.Article,XXZl.XieMing'
      'from YWBZPOS'
      'left join YWDD on YWBZPOS.DDBH=YWDD.DDBH'
      'left join DDZl on DDZl.DDBH=YWDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join ZLZLS on ZLZLS.ZLCC=YWBZPOS.DDCC and DDZL.ZLBH=ZLZLS.Z' +
        'LBH'
      'where YWBZPOS.DDBH=:DDBH'
      '         and YWBZPOS.XH=:XH'
      'order by  YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.DDCC')
    Left = 352
    Top = 152
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'XH'
        ParamType = ptUnknown
        Size = 4
      end>
    object YWBZPOSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWBZPOSXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWBZPOSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object YWBZPOSDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOSXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOSQty: TIntegerField
      FieldName = 'Qty'
    end
    object YWBZPOSCTS: TIntegerField
      FieldName = 'CTS'
    end
    object YWBZPOSMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
    object YWBZPOSCTQ: TIntegerField
      FieldName = 'CTQ'
    end
    object YWBZPOSCTZ: TIntegerField
      FieldName = 'CTZ'
    end
    object YWBZPOSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object YWBZPOSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWBZPOSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = YWBZPOS
    Left = 384
    Top = 152
  end
  object OpenDialog1: TOpenDialog
    Filter = 'TXT FILES|*.txt'
    Left = 168
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 120
  end
  object YWCP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CARTONBAR,XH,Qty,EXEDate,INCS,INDAte,sgw,isnull(rgw,0) as' +
        ' rgw,ddbh,LPNBarCode'
      'from YWCP'
      'where  SB='#39'1'#39
      'order by  CartonBar')
    Left = 288
    Top = 152
  end
end
