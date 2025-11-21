object BarCodeForm: TBarCodeForm
  Left = 239
  Top = 133
  Width = 880
  Height = 505
  Caption = '361 Barcode Parse'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 864
    Height = 467
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Master'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 856
        Height = 73
        Align = alTop
        TabOrder = 0
        object BB1: TBitBtn
          Left = 17
          Top = 7
          Width = 57
          Height = 49
          Caption = 'Open'
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
        object bbt6: TBitBtn
          Left = 88
          Top = 7
          Width = 57
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Export'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
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
      object DBGrid: TDBGrid
        Left = 0
        Top = 73
        Width = 856
        Height = 359
        Align = alClient
        DataSource = ExcelDS
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Item Data'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 856
        Height = 73
        Align = alTop
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 17
          Top = 7
          Width = 57
          Height = 49
          Caption = 'Open'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
      end
      object Panel3: TPanel
        Left = 0
        Top = 73
        Width = 856
        Height = 32
        Align = alTop
        TabOrder = 1
        object RB1: TRadioButton
          Left = 8
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Country'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RB2: TRadioButton
          Left = 112
          Top = 7
          Width = 113
          Height = 17
          Caption = 'Article'
          TabOrder = 1
        end
        object RB3: TRadioButton
          Left = 224
          Top = 7
          Width = 81
          Height = 17
          Caption = 'Color'
          TabOrder = 2
        end
        object RB4: TRadioButton
          Left = 328
          Top = 7
          Width = 81
          Height = 17
          Caption = 'Gender'
          TabOrder = 3
        end
        object RB5: TRadioButton
          Left = 432
          Top = 7
          Width = 81
          Height = 17
          Caption = 'Packing'
          TabOrder = 4
        end
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 105
        Width = 856
        Height = 327
        Align = alClient
        ColCount = 7
        FixedCols = 0
        RowCount = 2
        TabOrder = 2
        ColWidths = (
          115
          113
          103
          129
          143
          85
          105)
      end
    end
  end
  object ADOConn: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\weda\Deskt' +
      'op\Demo\Bin\Barcode.mdb;Persist Security Info=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 480
    Top = 40
  end
  object Qry: TADOQuery
    Connection = ADOConn
    Parameters = <>
    Left = 512
    Top = 40
  end
  object ExcelDS: TDataSource
    Left = 552
    Top = 40
  end
  object ConQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Country order by ID')
    Left = 512
    Top = 72
  end
  object ArtQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from  Article order by ID')
    Left = 552
    Top = 72
    object ArtQryID: TWideStringField
      FieldName = 'ID'
      Size = 50
    end
    object ArtQryName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object ColQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Color order by ID')
    Left = 592
    Top = 72
    object ColQryID: TWideStringField
      FieldName = 'ID'
      Size = 50
    end
    object ColQryName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object GenQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Gender order by ID')
    Left = 632
    Top = 72
  end
  object Siz_UQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,US from SizeRun order by ID')
    Left = 664
    Top = 72
    object Siz_UQryID: TWideStringField
      FieldName = 'ID'
      Size = 50
    end
    object Siz_UQryUS: TWideStringField
      FieldName = 'US'
      Size = 50
    end
  end
  object Siz_BQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,BR from SizeRun order by ID')
    Left = 664
    Top = 96
    object Siz_BQryID: TWideStringField
      FieldName = 'ID'
      Size = 50
    end
    object Siz_BQryBR: TWideStringField
      FieldName = 'BR'
      Size = 50
    end
  end
  object Siz_QQry: TADOQuery
    Connection = ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select ID,Qty from SizeRun order by ID')
    Left = 664
    Top = 120
  end
  object OpenXLS: TOpenDialog
    Filter = 'XLS|*.xls;*.xlsx'
    Left = 480
    Top = 8
  end
end
