object PlanDate: TPlanDate
  Left = 293
  Top = 199
  Width = 870
  Height = 500
  Caption = 'PlanDate'
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
    Width = 854
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Update'
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
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 416
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
      Left = 464
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
      Left = 512
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object bbt6: TBitBtn
      Left = 712
      Top = 8
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
      ParentFont = False
      TabOrder = 7
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 854
    Height = 64
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 26
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 26
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label15: TLabel
      Left = 546
      Top = 26
      Width = 13
      Height = 16
      Caption = 'To'
    end
    object Label14: TLabel
      Left = 400
      Top = 27
      Width = 31
      Height = 16
      Caption = 'CSD:'
    end
    object Edit1: TEdit
      Left = 73
      Top = 24
      Width = 105
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 684
      Top = 16
      Width = 65
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 262
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 434
      Top = 24
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 565
      Top = 22
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 854
    Height = 333
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <
          item
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 163
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DDGB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'BZCC'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 66
      end
      item
        Color = 12320767
        DropDownRows = 12
        EditButtons = <>
        FieldName = 'SCYEAR'
        Footers = <>
        PickList.Strings = (
          '2006'
          '2007'
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020')
        Title.TitleButton = True
        Width = 68
      end
      item
        Color = 12320767
        DropDownRows = 12
        EditButtons = <>
        FieldName = 'SCMONTH'
        Footers = <>
        PickList.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
        Title.TitleButton = True
        Width = 79
      end
      item
        Color = 12320767
        DropDownRows = 10
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 61
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'CDate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 13303807
        EditButtons = <>
        FieldName = 'CEdate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'SDate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 13303807
        EditButtons = <>
        FieldName = 'SEdate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'ODate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 13303807
        EditButtons = <>
        FieldName = 'OEdate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'ADate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 13303807
        EditButtons = <>
        FieldName = 'AEdate'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CSD'
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'Assemble'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GO'
        Title.TitleButton = True
        Width = 88
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'Stitching'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'MAY'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'USERID1'
        Footers = <>
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE1'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 352
    Top = 152
  end
  object ZLList: TQuery
    OnNewRecord = ZLListNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCZLDate.*,DDZL.XieXing,DDZL.SheHao,DDZL.ShipDate,XXZL.Xi' +
        'eMing,XXZL.Article ,DDZL.Pairs'
      
        '       ,DDZl.KHPO,lbzls.YWSM as DDGB ,XXZL.YSSM,XXZL.BZCC,XXZL.X' +
        'TMH,XXZL.DDMH,XXZL.DAOMH'
      'from SCZLDate'
      'left join ZLZL on ZLZL.ZLBH=SCZLDate.ZLBH'
      'left join DDZL on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL on XXZL.Xiexing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH '
      'left join LBZLS on lbzls.lb='#39'06'#39' and lbzls.lbdh=DDZL.DDGB '
      'where SCZLDate.ZLBH like '#39'%'#39
      'and KFZL.KFJC like'#39'%'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/11/01'#39' and '#39'2008/11/30'#39
      'and DDZL.GSBH='#39'VA12'#39
      'order by SCZLDate.ZLBH')
    UpdateObject = UpZL
    Left = 432
    Top = 280
    object ZLListZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object ZLListXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object ZLListSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object ZLListArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object ZLListXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ZLListKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object ZLListYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object ZLListDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 50
    end
    object ZLListBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object ZLListXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 15
    end
    object ZLListDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 15
    end
    object ZLListDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object ZLListPairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object ZLListSCYEAR: TStringField
      FieldName = 'SCYEAR'
      FixedChar = True
      Size = 4
    end
    object ZLListSCMONTH: TStringField
      FieldName = 'SCMONTH'
      FixedChar = True
      Size = 2
    end
    object ZLListGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object ZLListCDate: TDateTimeField
      FieldName = 'CDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListSDate: TDateTimeField
      FieldName = 'SDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListODate: TDateTimeField
      FieldName = 'ODate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListCEdate: TDateTimeField
      FieldName = 'CEdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListSEdate: TDateTimeField
      FieldName = 'SEdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListOEdate: TDateTimeField
      FieldName = 'OEdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListAEdate: TDateTimeField
      FieldName = 'AEdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListCSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListAssemble: TStringField
      FieldName = 'Assemble'
      FixedChar = True
      Size = 10
    end
    object ZLListStitching: TStringField
      FieldName = 'Stitching'
      FixedChar = True
      Size = 10
    end
    object ZLListCTQty: TIntegerField
      FieldName = 'CTQty'
    end
    object ZLListUSERID1: TStringField
      FieldName = 'USERID1'
      FixedChar = True
      Size = 10
    end
    object ZLListUSERDATE1: TDateTimeField
      FieldName = 'USERDATE1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListUSERID2: TStringField
      FieldName = 'USERID2'
      FixedChar = True
      Size = 10
    end
    object ZLListUSERDATE2: TDateTimeField
      FieldName = 'USERDATE2'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ZLListYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = ZLList
    Left = 392
    Top = 280
  end
  object UpZL: TUpdateSQL
    ModifySQL.Strings = (
      'update SCZLDate'
      'set'
      '  SCYEAR = :SCYEAR,'
      '  SCMONTH = :SCMONTH,'
      '  GSBH = :GSBH,'
      '  CDate = :CDate,'
      '  SDate = :SDate,'
      '  ODate = :ODate,'
      '  ADate = :ADate,'
      '  CEdate = :CEdate,'
      '  SEdate = :SEdate,'
      '  OEdate = :OEdate,'
      '  AEdate = :AEdate,'
      '  Assemble = :Assemble,'
      '  Stitching = :Stitching,'
      '  USERID1 = :USERID1,'
      '  USERDATE1 = :USERDATE1'
      'where'
      '  ZLBH = :OLD_ZLBH')
    InsertSQL.Strings = (
      'insert into SCZLDate'
      
        '  (SCYEAR, SCMONTH, GSBH, CDate, SDate, ODate, ADate, CEdate, SE' +
        'date, OEdate, '
      '   AEdate, Assemble, Stitching, USERID1, USERDATE1)'
      'values'
      
        '  (:SCYEAR, :SCMONTH, :GSBH, :CDate, :SDate, :ODate, :ADate, :CE' +
        'date, :SEdate, '
      
        '   :OEdate, :AEdate, :Assemble, :Stitching, :USERID1, :USERDATE1' +
        ')')
    DeleteSQL.Strings = (
      'delete from SCZLDate'
      'where'
      '  ZLBH = :OLD_ZLBH')
    Left = 472
    Top = 280
  end
  object updatesql: TQuery
    DatabaseName = 'DB'
    Left = 352
    Top = 192
  end
end
