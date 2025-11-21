object PayMentCon: TPayMentCon
  Left = 351
  Top = 124
  Width = 916
  Height = 551
  Caption = 'PayMentCon Ver-20140228'
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
    Top = 65
    Width = 900
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 184
      Top = 44
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 24
      Top = 10
      Width = 44
      Height = 16
      Caption = 'FKBH:'
    end
    object Label3: TLabel
      Left = 224
      Top = 10
      Width = 45
      Height = 16
      Caption = 'ZSBH:'
    end
    object Label5: TLabel
      Left = 12
      Top = 42
      Width = 56
      Height = 16
      Caption = 'FKDate:'
    end
    object Button1: TButton
      Left = 424
      Top = 32
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 40
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 40
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 137
      Height = 24
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 336
      Top = 44
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 280
      Top = 8
      Width = 137
      Height = 24
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 900
    Height = 375
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 898
      Height = 200
      Align = alTop
      DataSource = DS3
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
      FrozenCols = 4
      ParentFont = False
      PopupMenu = Pop1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnGetCellParams = DBGrid1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FKBH'
          Footers = <>
          ReadOnly = True
          Width = 78
        end
        item
          Color = 10813439
          EditButtons = <>
          FieldName = 'PDBH'
          Footers = <>
          Width = 58
        end
        item
          Color = 10813439
          EditButtons = <>
          FieldName = 'KJBH'
          Footers = <>
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'KJNM'
          Footers = <>
          ReadOnly = True
          Width = 218
        end
        item
          EditButtons = <>
          FieldName = 'KJBM'
          Footers = <>
          Width = 198
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          ReadOnly = True
          Width = 108
        end
        item
          EditButtons = <>
          FieldName = 'SZBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <>
          ReadOnly = True
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'USQty'
          Footers = <>
          ReadOnly = True
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'VNACC'
          Footers = <>
          ReadOnly = True
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'VNQty'
          Footers = <>
          ReadOnly = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'FKDate'
          Footers = <>
          ReadOnly = True
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'DSBM'
          Footers = <>
          Width = 51
        end
        item
          Color = clSkyBlue
          EditButtons = <>
          FieldName = 'CMdate'
          Footers = <>
          ReadOnly = True
        end>
    end
    object DBGrid4: TDBGridEh
      Left = 1
      Top = 201
      Width = 898
      Height = 173
      Align = alClient
      DataSource = DS4
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16761281
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 5
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnGetCellParams = DBGrid4GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DJLX'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'DJNO'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'CGBH'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <
            item
              Value = 'Total:'
              ValueType = fvtStaticText
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 88
        end
        item
          EditButtons = <>
          FieldName = 'DJDATE'
          Footers = <
            item
              FieldName = 'DJDATE'
              ValueType = fvtCount
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 56
        end
        item
          DropDownBox.Columns = <
            item
            end>
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <
            item
              DisplayFormat = '##,#0.0000'
              FieldName = 'USPrice'
              ValueType = fvtAvg
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 57
        end
        item
          DropDownWidth = -1
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'USACC'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'USQty'
          Footers = <
            item
              DisplayFormat = '##,#0.00'
              FieldName = 'USQty'
              ValueType = fvtSum
            end>
          Title.TitleButton = True
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNPrice'
              ValueType = fvtAvg
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'VNACC'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNACC'
              ValueType = fvtSum
            end>
          ReadOnly = True
          Title.TitleButton = True
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'VNQty'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'VNQty'
              ValueType = fvtSum
            end>
          Title.TitleButton = True
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 300
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 50
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label4: TLabel
      Left = 248
      Top = 8
      Width = 41
      Height = 25
      AutoSize = False
      OnClick = Label4Click
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
      Left = 144
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Confirm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object BB7: TBitBtn
      Left = 432
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
      TabOrder = 2
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
    object BB3: TBitBtn
      Left = 192
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Restore'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object BitBtn1: TBitBtn
      Left = 352
      Top = 8
      Width = 73
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'SynZSBH'
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
  end
  object PayMas: TQuery
    CachedUpdates = True
    AfterOpen = PayMasAfterOpen
    AfterScroll = PayMasAfterScroll
    OnNewRecord = PayMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select CWFK.*,ZSZL.ZSYWJC,ZSZL.SZBH,ACTMA.MA003 as KJNM,ACTMA.MA' +
        '004 as KJBM,DSCBM.DSBM '
      'from CWFK'
      'left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH '
      'left join ACTMA on ACTMA.MA001=CWFK.KJBH '
      'left join DSCBM on CWFK.GSBH=DSCBM.LYBM'
      
        'where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) be' +
        'tween '
      '       '#39'2014/02/04'#39' and '#39'2014/02/11'#39
      '     and CWFK.FKBH like '#39'%'#39
      '     and CWFK.ZSBH like  '#39'%'#39
      ' and (IsNull(CWFK.CMdate,'#39#39') = '#39#39') '
      'order by CWFK.FKBH,CWFK.CMdate')
    UpdateObject = UpMas
    Left = 332
    Top = 132
    object PayMasFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object PayMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object PayMasPDBH: TStringField
      FieldName = 'PDBH'
      FixedChar = True
      Size = 4
    end
    object PayMasKJBH: TStringField
      FieldName = 'KJBH'
      FixedChar = True
      Size = 10
    end
    object PayMasUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object PayMasVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object PayMasCWHL: TFloatField
      FieldName = 'CWHL'
    end
    object PayMasUSQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object PayMasVNQty: TFloatField
      FieldName = 'VNQty'
      DisplayFormat = '##,#0'
    end
    object PayMasZHBH: TStringField
      FieldName = 'ZHBH'
      FixedChar = True
      Size = 25
    end
    object PayMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object PayMasFKDate: TDateTimeField
      FieldName = 'FKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object PayMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object PayMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object PayMasCMdate: TDateTimeField
      FieldName = 'CMdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object PayMasCMID: TStringField
      FieldName = 'CMID'
      FixedChar = True
      Size = 15
    end
    object PayMasMA003: TStringField
      FieldName = 'KJNM'
      FixedChar = True
      Size = 80
    end
    object PayMasSZBH: TStringField
      FieldName = 'SZBH'
      FixedChar = True
      Size = 5
    end
    object PayMasKJBM: TStringField
      FieldName = 'KJBM'
      FixedChar = True
      Size = 80
    end
    object PayMasDSBM: TStringField
      FieldName = 'DSBM'
      FixedChar = True
      Size = 5
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CWFK'
      'set'
      '  PDBH = :PDBH,'
      '  KJBH = :KJBH,'
      '  CMdate = :CMdate,'
      '  CMID =:CMID'
      'where'
      '  FKBH = :OLD_FKBH')
    InsertSQL.Strings = (
      'insert into CWFK'
      '  (CWHL, ZHBH, CMdate)'
      'values'
      '  (:CWHL, :ZHBH, :CMdate)')
    DeleteSQL.Strings = (
      'delete from CWFK'
      'where'
      '  FKBH = :OLD_FKBH')
    Left = 332
    Top = 164
  end
  object DS3: TDataSource
    DataSet = PayMas
    Left = 364
    Top = 132
  end
  object PayDet: TQuery
    OnNewRecord = PayDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select CWYF.*,CLZL.YWPM,CLZL.DWBH'
      'from CWYF'
      'left join CLZL on CWYF.CLBH=CLZL.CLDH'
      'where CWYF.FKBH=:FKBH'
      'order by CWYF.DJNO,CWYF.DJLX,CWYF.CGBH,CWYF.CLBH')
    UpdateObject = UPDet
    Left = 404
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object PayDetFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object PayDetZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object PayDetDJLX: TStringField
      FieldName = 'DJLX'
      FixedChar = True
      Size = 2
    end
    object PayDetDJNO: TStringField
      FieldName = 'DJNO'
      FixedChar = True
      Size = 15
    end
    object PayDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object PayDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object PayDetDJDATE: TDateTimeField
      FieldName = 'DJDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object PayDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object PayDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object PayDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object PayDetUSQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object PayDetCWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object PayDetVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object PayDetVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object PayDetVNQty: TFloatField
      FieldName = 'VNQty'
      DisplayFormat = '##,#0'
    end
    object PayDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object PayDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yy/MM/dd'
    end
    object PayDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object PayDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object PayDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object PayDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CWYF'
      'set'
      '  FKBH = :FKBH'
      'where'
      '  DJLX = :OLD_DJLX and'
      '  CGBH = :OLD_CGBH and'
      '  DJNO = :OLD_DJNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CWYF'
      '  (FKBH)'
      'values'
      '  (:FKBH)')
    DeleteSQL.Strings = (
      'delete from CWYF'
      'where'
      '  DJLX = :OLD_DJLX and'
      '  CGBH = :OLD_CGBH and'
      '  DJNO = :OLD_DJNO and'
      '  CLBH = :OLD_CLBH')
    Left = 404
    Top = 165
  end
  object DS4: TDataSource
    DataSet = PayDet
    Left = 564
    Top = 132
  end
  object Pop1: TPopupMenu
    Left = 336
    Top = 200
    object N1: TMenuItem
      Caption = 'Delete'
      OnClick = N1Click
    end
  end
  object QPrice: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select *'
      'from CGBJS'
      'where CLBH=:CLBH')
    Left = 336
    Top = 312
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object QPriceBJNO: TStringField
      FieldName = 'BJNO'
      Origin = 'DB.CGBJS.BJNO'
      FixedChar = True
      Size = 11
    end
    object QPriceCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGBJS.CLBH'
      FixedChar = True
      Size = 15
    end
    object QPriceUSPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CGBJS.USPrice'
    end
    object QPriceVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.CGBJS.VNPrice'
    end
    object QPriceUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGBJS.USERDate'
    end
    object QPriceUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGBJS.USERID'
      FixedChar = True
      Size = 15
    end
    object QPriceBJLX: TStringField
      FieldName = 'BJLX'
      Origin = 'DB.CGBJS.BJLX'
      FixedChar = True
      Size = 1
    end
    object QPriceMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CGBJS.Memo'
      FixedChar = True
      Size = 100
    end
    object QPriceYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGBJS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 312
    object N21: TMenuItem
      Caption = 'Price List'
      OnClick = N21Click
    end
  end
  object E2A: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Use' +
      'r ID=sa;Initial Catalog=LIY_ERP;Data Source=127.0.0.1'
    CursorType = ctStatic
    Parameters = <>
    Left = 416
    Top = 312
  end
  object ZSZL: TQuery
    DatabaseName = 'DB'
    Left = 472
    Top = 313
  end
end
