object MaterialScan: TMaterialScan
  Left = 260
  Top = 180
  Width = 826
  Height = 500
  Caption = 'MaterialScan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 232
      Top = 40
      Width = 102
      Height = 20
      Caption = 'Material Code:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 40
      Width = 68
      Height = 20
      Caption = 'Order No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 32
      Width = 137
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 344
      Top = 32
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 496
      Top = 32
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object BBT7: TBitBtn
      Left = 672
      Top = 16
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Update'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 600
      Top = 16
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Download'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 633
    Height = 393
    Align = alClient
    DataSource = DS1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XH'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATCODE'
        Width = 243
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 633
    Top = 73
    Width = 185
    Height = 393
    Align = alRight
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 40
      Top = 24
      Width = 113
      Height = 89
      Hint = 'Modify Current'
      Caption = 'Deliver'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 40
      Top = 128
      Width = 113
      Height = 89
      Hint = 'Modify Current'
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 40
      Top = 240
      Width = 113
      Height = 89
      Hint = 'Modify Current'
      Caption = 'Stock'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DB: TDatabase
    AliasName = 'LY_ERP'
    DatabaseName = 'DB'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    OnLogin = DBLogin
    Left = 64
    Top = 128
  end
  object KCCL: TQuery
    SQL.Strings = (
      'select *'
      'from KCCL'
      'order by ZLBH,CLBH,XH')
    Left = 104
    Top = 128
    object KCCLZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object KCCLCLBH: TStringField
      FieldName = 'CLBH'
      Size = 15
    end
    object KCCLXH: TStringField
      FieldName = 'XH'
      Size = 2
    end
    object KCCLQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object KCCLMATCODE: TStringField
      FieldName = 'MATCODE'
      Size = 45
    end
    object KCCLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCCLUSERID: TStringField
      FieldName = 'USERID'
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = KCCL
    Left = 136
    Top = 128
  end
  object QKCCL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 608
    Top = 88
  end
  object TKCCL: TTable
    IndexFieldNames = 'MATCODE'
    TableName = 'KCCL.DB'
    Left = 640
    Top = 88
  end
  object QKCSM: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from KCSMCL'
      'where MATCODE=:BARCODE')
    UpdateObject = UpKCSM
    Left = 568
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BARCODE'
        ParamType = ptUnknown
      end>
    object QKCSMZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.KCSMCL.ZLBH'
      FixedChar = True
      Size = 15
    end
    object QKCSMCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCSMCL.CLBH'
      FixedChar = True
      Size = 15
    end
    object QKCSMDFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCSMCL.DFL'
      FixedChar = True
      Size = 1
    end
    object QKCSMXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.KCSMCL.XH'
      FixedChar = True
      Size = 1
    end
    object QKCSMQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCSMCL.Qty'
    end
    object QKCSMMATCODE: TStringField
      FieldName = 'MATCODE'
      Origin = 'DB.KCSMCL.MATCODE'
      FixedChar = True
      Size = 45
    end
    object QKCSMUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCSMCL.USERDATE'
    end
    object QKCSMUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCSMCL.USERID'
      FixedChar = True
      Size = 15
    end
    object QKCSMYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCSMCL.YN'
      FixedChar = True
      Size = 1
    end
  end
  object TKCSM: TTable
    IndexFieldNames = 'BARCODE'
    TableName = 'KCSM.DB'
    Left = 641
    Top = 129
    object TKCSMZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object TKCSMCLBH: TStringField
      FieldName = 'CLBH'
      Size = 15
    end
    object TKCSMXH: TStringField
      FieldName = 'XH'
      Size = 2
    end
    object TKCSMQty: TFloatField
      FieldName = 'Qty'
    end
    object TKCSMBARCODE: TStringField
      FieldName = 'BARCODE'
      Size = 45
    end
  end
  object DS2: TDataSource
    DataSet = TKCSM
    Left = 673
    Top = 129
  end
  object UpKCSM: TUpdateSQL
    ModifySQL.Strings = (
      'update KCSMCL'
      'set'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  ZLBH = :OLD_ZLBH and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  XH = :OLD_XH')
    InsertSQL.Strings = (
      'insert into KCSMCL'
      '  (USERDATE, YN)'
      'values'
      '  (:USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from KCSMCL'
      'where'
      '  ZLBH = :OLD_ZLBH and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  XH = :OLD_XH')
    Left = 600
    Top = 128
  end
  object OpenDialog1: TOpenDialog
    Left = 472
    Top = 232
  end
end
