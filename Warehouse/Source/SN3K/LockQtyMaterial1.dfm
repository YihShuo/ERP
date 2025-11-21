object LockQtyMaterial: TLockQtyMaterial
  Left = 265
  Top = 232
  Width = 1305
  Height = 675
  Caption = 'Lock Qty Material '
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'zsqm'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'dh'
        Footers = <>
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'cz'
        Footers = <>
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Width = 91
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1287
      Height = 634
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Tru hang ton kho'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 65
          Align = alTop
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 56
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
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
          object BitBtn2: TBitBtn
            Left = 104
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn2Click
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
          object BitBtn3: TBitBtn
            Left = 152
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 200
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn4Click
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
          object BitBtn5: TBitBtn
            Left = 248
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BitBtn5Click
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
          object BitBtn6: TBitBtn
            Left = 8
            Top = 8
            Width = 49
            Height = 49
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn6Click
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
          object BitBtn7: TBitBtn
            Left = 352
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Excel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BitBtn7Click
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
          object BitBtn8: TBitBtn
            Left = 408
            Top = 8
            Width = 49
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Import'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BitBtn8Click
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
        object Panel5: TPanel
          Left = 0
          Top = 65
          Width = 1279
          Height = 104
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Label2: TLabel
            Left = 12
            Top = 20
            Width = 85
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SKU (Article):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 12
            Top = 68
            Width = 85
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Ma Vat Tu:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 432
            Top = 16
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'To'
          end
          object Label4: TLabel
            Left = 432
            Top = 64
            Width = 20
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'To'
          end
          object Edit2: TEdit
            Left = 104
            Top = 16
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Button2: TButton
            Left = 576
            Top = 52
            Width = 89
            Height = 33
            Caption = 'QUERY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Edit3: TEdit
            Left = 104
            Top = 64
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DTP1: TDateTimePicker
            Left = 320
            Top = 13
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 3
          end
          object DTP2: TDateTimePicker
            Left = 456
            Top = 13
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 4
          end
          object CheckBox1: TCheckBox
            Left = 232
            Top = 8
            Width = 81
            Height = 33
            Caption = 'Ngay tra:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBox2: TCheckBox
            Left = 232
            Top = 56
            Width = 81
            Height = 33
            Caption = 'Userdate:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DTP3: TDateTimePicker
            Left = 320
            Top = 61
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 7
          end
          object DTP4: TDateTimePicker
            Left = 456
            Top = 61
            Width = 113
            Height = 24
            Date = 39289.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 39289.000000000000000000
            TabOrder = 8
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 169
          Width = 1279
          Height = 437
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = DBGridEh3EditButtonClick
          OnGetCellParams = DBGridEh3GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'AutoNo'
              Footers = <>
              ReadOnly = True
              Visible = False
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'ManualNo'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'So No'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'DateReturn'
              Footers = <>
              Title.Caption = 'Ngay tra'
            end
            item
              EditButtons = <>
              FieldName = 'GSBH_Return'
              Footers = <>
              Title.Caption = 'Don vi tra hang'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SKU'
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Ma vat tu'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Ten vat tu'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Don vi'
              Width = 144
            end
            item
              DisplayFormat = '###,###.##'
              EditButtons = <>
              FieldName = 'QtyReturn'
              Footers = <>
              Title.Caption = 'So luong tra hang'
              Width = 117
            end
            item
              DisplayFormat = '###,###.##'
              EditButtons = <>
              FieldName = 'UnitPrice'
              Footers = <>
              Title.Caption = 'Don gia'
            end
            item
              DisplayFormat = '###,###.##'
              EditButtons = <>
              FieldName = 'TotalAmount'
              Footers = <>
              Title.Caption = 'Thanh tien'
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'Reason'
              Footers = <>
              Title.Caption = 'Nguyen nhan'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'DeductInventory'
              Footers = <>
              Title.Caption = 'Tru ton'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'WarehouseNote'
              Footers = <>
              Title.Caption = 'Kho vat tu'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'YN'
              Footers = <>
              ReadOnly = True
              Visible = False
            end>
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from zszl'
      'order by zsdh')
    UpdateObject = UpSQL1
    Left = 136
    Top = 256
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
    end
    object Query1GSDH: TStringField
      FieldName = 'GSDH'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 250
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Size = 250
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 256
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE KCZL_QtyLock'
      'SET'
      '  CLBH     = :CLBH,'
      '  CKBH     = :CKBH,'
      '  GSDH     = :GSDH,'
      '  Qty      = :Qty,'
      '  Memo     = :Memo,'
      '  UserID   = :UserID,'
      '  UserDate = :UserDate,'
      '  YN       = :YN'
      'WHERE'
      '  CLBH = :OLD_CLBH'
      '  AND CKBH = :OLD_CKBH;')
    InsertSQL.Strings = (
      'INSERT INTO KCZL_QtyLock'
      '(CLBH,CKBH,GSDH,Qty,Memo,UserID,UserDate,YN)'
      'VALUES'
      '( :CLBH, :CKBH, :GSDH, :Qty, :Memo, :UserID, :UserDate, :YN);'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM KCZL_QtyLock'
      'WHERE CLBH = :OLD_CLBH'
      '  AND CKBH = :OLD_CKBH;')
    Left = 136
    Top = 288
  end
  object QryTmp: TQuery
    DatabaseName = 'dB'
    Left = 136
    Top = 321
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from zszl'
      'order by zsdh')
    UpdateObject = UpSQL2
    Left = 240
    Top = 256
    object Query2AutoNo: TIntegerField
      FieldName = 'AutoNo'
    end
    object Query2ManualNo: TStringField
      FieldName = 'ManualNo'
      Size = 50
    end
    object Query2DateReturn: TDateTimeField
      FieldName = 'DateReturn'
    end
    object Query2GSBH_Return: TStringField
      FieldName = 'GSBH_Return'
      Size = 100
    end
    object Query2Article: TStringField
      FieldName = 'Article'
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      Size = 250
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      Size = 50
    end
    object Query2QtyReturn: TCurrencyField
      FieldName = 'QtyReturn'
    end
    object Query2UnitPrice: TCurrencyField
      FieldName = 'UnitPrice'
    end
    object Query2TotalAmount: TCurrencyField
      FieldName = 'TotalAmount'
    end
    object Query2Reason: TStringField
      FieldName = 'Reason'
      Size = 250
    end
    object Query2DeductInventory: TStringField
      FieldName = 'DeductInventory'
      Size = 250
    end
    object Query2WarehouseNote: TStringField
      FieldName = 'WarehouseNote'
      Size = 250
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 280
    Top = 256
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE InventoryReturn'
      'SET'
      '  ManualNo       = :ManualNo,'
      '  DateReturn     = :DateReturn,'
      '  GSBH_Return    = :GSBH_Return,'
      '  Article        = :Article,'
      '  CLBH           = :CLBH,'
      '  YWPM           = :YWPM,'
      '  DWBH           = :DWBH,'
      '  QtyReturn      = :QtyReturn,'
      '  UnitPrice      = :UnitPrice,'
      '  TotalAmount    = :TotalAmount,'
      '  Reason         = :Reason,'
      '  DeductInventory= :DeductInventory,'
      '  WarehouseNote  = :WarehouseNote,'
      '  USERID         = :USERID,'
      '  USERDATE       = :USERDATE,'
      '  YN             = :YN'
      'WHERE'
      '  AutoNo = :AutoNo')
    InsertSQL.Strings = (
      'INSERT INTO InventoryReturn'
      '('
      '  ManualNo,'
      '  DateReturn,'
      '  GSBH_Return,'
      '  Article,'
      '  CLBH,'
      '  YWPM,'
      '  DWBH,'
      '  QtyReturn,'
      '  UnitPrice,'
      '  TotalAmount,'
      '  Reason,'
      '  DeductInventory,'
      '  WarehouseNote,'
      '  USERID,'
      '  USERDATE,'
      '  YN'
      ')'
      'VALUES'
      '('
      '  :ManualNo,'
      '  :DateReturn,'
      '  :GSBH_Return,'
      '  :Article,'
      '  :CLBH,'
      '  :YWPM,'
      '  :DWBH,'
      '  :QtyReturn,'
      '  :UnitPrice,'
      '  :TotalAmount,'
      '  :Reason,'
      '  :DeductInventory,'
      '  :WarehouseNote,'
      '  :USERID,'
      '  :USERDATE,'
      '  :YN'
      ')')
    DeleteSQL.Strings = (
      'DELETE FROM InventoryReturn'
      'WHERE AutoNo = :AutoNo')
    Left = 240
    Top = 288
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel Files|*.XLS;*.XLSX'
    Left = 240
    Top = 320
  end
  object QryImport: TQuery
    DatabaseName = 'dB'
    Left = 272
    Top = 321
  end
end
