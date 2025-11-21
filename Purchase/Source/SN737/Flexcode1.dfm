object FlexCode: TFlexCode
  Left = 273
  Top = 247
  Width = 1300
  Height = 709
  Caption = 'Flex code Mat&Supplier'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 670
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1282
      Height = 668
      ActivePage = Supplier
      Align = alClient
      TabOrder = 0
      object Supplier: TTabSheet
        Caption = 'Material'
        object Panel9: TPanel
          Left = 0
          Top = 129
          Width = 1274
          Height = 511
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 0
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1272
            Height = 509
            Align = alClient
            DataSource = DataSource2
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cldhflex'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Flex|Code'
              end
              item
                EditButtons = <>
                FieldName = 'cldhflexdes'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Flex|Description'
                Width = 429
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'ColorFlex'
                Footers = <>
                Title.Caption = 'Flex|ColorCode'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'cldh'
                Footer.FieldName = 'cldh'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'ERP|Code'
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'ywpm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'ERP|EnglishName'
                Width = 512
              end
              item
                EditButtons = <>
                FieldName = 'zwpm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'ERP|ChineseName'
                Width = 337
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'DCName'
                Footers = <>
                PickList.Strings = (
                  'HF'
                  'FT'
                  'LYN')
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|DC Name'
                Width = 85
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'Signed'
                Footers = <>
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Who Signed'
                Width = 101
              end
              item
                Color = clSkyBlue
                DisplayFormat = 'MM-dd-yyyy'
                EditButtons = <>
                FieldName = 'ShippedDate'
                Footers = <>
                Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|When DC Shipped'
                Width = 142
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'SharedDCs'
                Footers = <>
                PickList.Strings = (
                  'HF'
                  'FT'
                  'LYN')
                Title.Caption = 'DC RECORD FOR CFM SWATCH|Shared DCs'
                Width = 95
              end
              item
                Color = clSkyBlue
                DisplayFormat = 'MM-dd-yyyy'
                EditButtons = <>
                FieldName = 'ExpiredDate'
                Footers = <>
                Title.Caption = 'DC RECORD FOR CFM SWATCH| When to Expired'
                Width = 131
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'ExcelUpdated'
                Footers = <>
                Title.Caption = 'DC RECORD FOR CFM SWATCH| Who Updated Excel File'
                Width = 186
              end
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'Readable'
                Footers = <>
                PickList.Strings = (
                  'Y'
                  'N')
                Title.Caption = 'Readable or Non-Readable'
                Width = 120
              end
              item
                EditButtons = <>
                FieldName = 'A4Comfirm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'A4 Confirm'
              end
              item
                EditButtons = <>
                FieldName = 'TrackingA4Comfirm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Tracking A4 Confirm'
              end
              item
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'UserID'
              end
              item
                DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'UserDate'
              end>
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 65
          Width = 1274
          Height = 64
          Align = alTop
          TabOrder = 1
          Visible = False
          object Label3: TLabel
            Left = 32
            Top = 11
            Width = 44
            Height = 20
            Caption = 'MatID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 34
            Width = 69
            Height = 20
            Caption = 'MatName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 256
            Top = 34
            Width = 43
            Height = 20
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 240
            Top = 11
            Width = 55
            Height = 20
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 448
            Top = 10
            Width = 94
            Height = 20
            Caption = 'SampleOrder'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 643
            Top = 39
            Width = 9
            Height = 20
            Caption = '~'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 88
            Top = 10
            Width = 121
            Height = 21
            TabOrder = 0
          end
          object Button2: TButton
            Left = 888
            Top = 14
            Width = 81
            Height = 35
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Edit4: TEdit
            Left = 88
            Top = 33
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object CheckBox2: TCheckBox
            Left = 768
            Top = 34
            Width = 97
            Height = 17
            Caption = 'not Set up'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Edit5: TEdit
            Left = 304
            Top = 10
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object Edit6: TEdit
            Left = 304
            Top = 33
            Width = 121
            Height = 21
            TabOrder = 5
          end
          object Edit7: TEdit
            Left = 552
            Top = 9
            Width = 193
            Height = 21
            TabOrder = 6
          end
          object DTP1: TDateTimePicker
            Left = 552
            Top = 33
            Width = 89
            Height = 21
            Date = 44062.582108622690000000
            Format = 'yyyy/MM/dd'
            Time = 44062.582108622690000000
            TabOrder = 7
          end
          object DTP2: TDateTimePicker
            Left = 656
            Top = 33
            Width = 89
            Height = 21
            Date = 44062.582108622690000000
            Format = 'yyyy/MM/dd'
            Time = 44062.582108622690000000
            TabOrder = 8
          end
          object CB1: TCheckBox
            Left = 456
            Top = 36
            Width = 89
            Height = 17
            Caption = 'UserDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 65
          Align = alTop
          TabOrder = 2
          object bbb1: TBitBtn
            Left = 8
            Top = 7
            Width = 50
            Height = 50
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bbb1Click
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
          object bbb2: TBitBtn
            Left = 57
            Top = 7
            Width = 50
            Height = 50
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
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
          object bbb3: TBitBtn
            Left = 106
            Top = 7
            Width = 50
            Height = 50
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
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
          object bbb4: TBitBtn
            Left = 155
            Top = 7
            Width = 50
            Height = 50
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = bbb4Click
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
          object bbb5: TBitBtn
            Left = 204
            Top = 7
            Width = 50
            Height = 50
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = bbb5Click
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
          object bbb6: TBitBtn
            Left = 253
            Top = 7
            Width = 50
            Height = 50
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = bbb6Click
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
          object BExcel: TButton
            Left = 328
            Top = 7
            Width = 50
            Height = 50
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BExcelClick
          end
        end
      end
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 53
    Top = 282
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select top 300 a.cldh,clzl_flex.cldhflex,a.ywpm,a.zwpm,clzl_flex' +
        '.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs' +
        '.cldhflexdes from clzl a'
      'left join clzl_flex on clzl_flex.cldh=a.cldh'
      'left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex'
      'where 1=1 ')
    UpdateObject = UpdateSQL2
    Left = 21
    Top = 282
    object Query2cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query2cldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
    object Query2cldhflexdes: TStringField
      FieldName = 'cldhflexdes'
      FixedChar = True
      Size = 200
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query2userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object Query2userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query2maincldh: TStringField
      FieldName = 'maincldh'
      FixedChar = True
      Size = 10
    end
    object Query2ColorFlex: TStringField
      FieldName = 'ColorFlex'
      Size = 25
    end
    object Query2DCName: TStringField
      FieldName = 'DCName'
      Size = 5
    end
    object Query2Signed: TStringField
      FieldName = 'Signed'
    end
    object Query2ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object Query2SharedDCs: TStringField
      FieldName = 'SharedDCs'
      Size = 5
    end
    object Query2ExpiredDate: TDateTimeField
      FieldName = 'ExpiredDate'
    end
    object Query2ExcelUpdated: TStringField
      FieldName = 'ExcelUpdated'
    end
    object Query2Readable: TStringField
      FieldName = 'Readable'
      Size = 1
    end
    object Query2A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      Size = 50
    end
    object Query2TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 21
    Top = 250
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'Update clzl_flex'
      'Set'
      '  ColorFlex = :ColorFlex,'
      '  DCName = :DCName,'
      '  Signed = :Signed,'
      '  ShippedDate = :ShippedDate,'
      '  SharedDCs = :SharedDCs,'
      '  ExpiredDate = :ExpiredDate,'
      '  ExcelUpdated = :ExcelUpdated,'
      '  Readable = :Readable,'
      '  userid=:userid,'
      '  userdate=:userdate'
      'where'
      '  cldh=:OLD_cldh')
    Left = 21
    Top = 314
  end
end
