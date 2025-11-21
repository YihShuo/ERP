object SupplierFLEXnERP: TSupplierFLEXnERP
  Left = 442
  Top = 456
  Width = 1305
  Height = 724
  Caption = 'SupplierFLEXnERP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 685
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'CSBH_FLEX'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 73
        Width = 1281
        Height = 584
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'SupplierCode'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
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
          end
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'Replaced_1'
            Footers = <>
            Title.Caption = 'Replaced'
            Width = 61
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 73
        Align = alTop
        TabOrder = 1
        object Label19: TLabel
          Left = 8
          Top = 40
          Width = 121
          Height = 16
          Alignment = taRightJustify
          Caption = 'ERP Supplier Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 12
          Top = 16
          Width = 117
          Height = 16
          Alignment = taRightJustify
          Caption = 'ERP Supplier Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 256
          Top = 16
          Width = 121
          Height = 16
          Alignment = taRightJustify
          Caption = 'FLEX Supplier Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 252
          Top = 40
          Width = 125
          Height = 16
          Alignment = taRightJustify
          Caption = 'FLEX Supplier Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BC1: TBitBtn
          Left = 520
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BC1Click
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
        object FLEX_CODE: TEdit
          Left = 139
          Top = 9
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BC2: TBitBtn
          Left = 616
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BC2Click
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
        object FLEX_NAME: TEdit
          Left = 139
          Top = 33
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object BitBtn1: TBitBtn
          Left = 712
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
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
        object LO_BB_CANCEL: TBitBtn
          Left = 664
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
        object ERP_CODE: TEdit
          Left = 387
          Top = 9
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ERP_NAME: TEdit
          Left = 387
          Top = 33
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object CheckBox4: TCheckBox
          Left = 800
          Top = 8
          Width = 193
          Height = 17
          Caption = 'SupplierCode Multiple Results'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 8
        end
        object BB3: TBitBtn
          Left = 568
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
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
        object CheckBox1: TCheckBox
          Left = 800
          Top = 24
          Width = 193
          Height = 17
          Caption = 'Not replaced'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 10
        end
        object CheckBox2: TCheckBox
          Left = 800
          Top = 40
          Width = 193
          Height = 17
          Caption = 'Show replaced'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
      end
    end
  end
  object Query: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CONVERT(Bit,IsNull(CSBH_FLEX.Replaced,0)) as Replaced_1'
      ',CSBH_FLEX.CSBH,CSBH_FLEX.SupplierCode,CSBH_FLEX.Supplier'
      
        ',ZSZL.ZSYWJC,CSBH_FLEX.USERID,CSBH_FLEX.USERDATE,CSBH_FLEX.Repla' +
        'ced'
      'from CSBH_FLEX'
      'left JOIN ZSZL on ZSZL.ZSDH=CSBH_FLEX.CSBH'
      
        'where CSBH_FLEX.SupplierCode in (SELECT CSBH_FLEX.SupplierCode F' +
        'ROM CSBH_FLEX  GROUP BY CSBH_FLEX.SupplierCode HAVING COUNT(*) >' +
        ' 1)')
    UpdateObject = UpdateSQL
    Left = 104
    Top = 200
    object QueryReplaced_1: TBooleanField
      FieldName = 'Replaced_1'
    end
    object QuerySupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'DB.CSBH_FLEX.SupplierCode'
      FixedChar = True
    end
    object QueryCSBH: TStringField
      FieldName = 'CSBH'
      Origin = 'DB.CSBH_FLEX.CSBH'
      FixedChar = True
      Size = 6
    end
    object QueryZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object QuerySupplier: TStringField
      FieldName = 'Supplier'
      Origin = 'DB.CSBH_FLEX.Supplier'
      FixedChar = True
      Size = 50
    end
    object QueryUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CSBH_FLEX.USERID'
      FixedChar = True
      Size = 15
    end
    object QueryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CSBH_FLEX.USERDATE'
    end
    object QueryReplaced: TStringField
      FieldName = 'Replaced'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query
    Left = 100
    Top = 256
  end
  object UpdateSQL: TUpdateSQL
    ModifySQL.Strings = (
      'update CSBH_FLEX'
      'set'
      '  CSBH = :CSBH,'
      '  SupplierCode = :SupplierCode,'
      '  Supplier = :Supplier,'
      '  Replaced = :Replaced,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  CSBH = :OLD_CSBH and'
      '  SupplierCode = :OLD_SupplierCode')
    InsertSQL.Strings = (
      'insert into CSBH_FLEX'
      '  (CSBH, SupplierCode, Supplier, Replaced, USERID, USERDATE)'
      'values'
      
        '  (:CSBH, :SupplierCode, :Supplier, :Replaced, :USERID, :USERDAT' +
        'E)')
    DeleteSQL.Strings = (
      'delete from CSBH_FLEX'
      'where'
      '  CSBH = :OLD_CSBH and'
      '  SupplierCode = :OLD_SupplierCode')
    Left = 104
    Top = 320
  end
end
