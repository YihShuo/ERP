object RBLabel: TRBLabel
  Left = 440
  Top = 317
  Width = 1305
  Height = 675
  Caption = 'RB Label'
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
  PixelsPerInch = 96
  TextHeight = 13
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = pc1Change
    object TabSheet1: TTabSheet
      Caption = 'RY Query'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 295
          Top = 56
          Width = 19
          Height = 16
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 1072
          Top = 24
          Width = 32
          Height = 16
          Caption = 'Color'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label13: TLabel
          Left = 80
          Top = 24
          Width = 56
          Height = 16
          Caption = 'ARTICLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 296
          Top = 24
          Width = 35
          Height = 16
          Caption = 'Begin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 472
          Top = 24
          Width = 24
          Height = 16
          Caption = 'End'
        end
        object Label20: TLabel
          Left = 80
          Top = 56
          Width = 48
          Height = 16
          Caption = 'BUYNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 808
          Top = 21
          Width = 18
          Height = 37
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BB3: TBitBtn
          Left = 928
          Top = 15
          Width = 65
          Height = 65
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
        object EDry: TEdit
          Left = 320
          Top = 52
          Width = 129
          Height = 24
          TabOrder = 1
        end
        object Button1: TButton
          Left = 671
          Top = 27
          Width = 75
          Height = 31
          Caption = 'QUERY'
          TabOrder = 2
          OnClick = Button1Click
        end
        object CBcolor: TComboBox
          Left = 1128
          Top = 20
          Width = 129
          Height = 24
          Enabled = False
          ItemHeight = 16
          TabOrder = 3
          Visible = False
        end
        object EDARTICLE: TEdit
          Left = 144
          Top = 20
          Width = 129
          Height = 24
          TabOrder = 4
          Text = '1155391-BBLC'
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 65
          Height = 73
          TabOrder = 5
          object Label19: TLabel
            Left = 16
            Top = 24
            Width = 33
            Height = 29
            Caption = 'RB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object DP1: TDateTimePicker
          Left = 336
          Top = 20
          Width = 113
          Height = 24
          Date = 45767.366854131940000000
          Format = 'yyyy/MM/dd'
          Time = 45767.366854131940000000
          TabOrder = 6
        end
        object DP2: TDateTimePicker
          Left = 536
          Top = 20
          Width = 105
          Height = 24
          Date = 46132.366854131940000000
          Format = 'yyyy/MM/dd'
          Time = 46132.366854131940000000
          TabOrder = 7
        end
        object EDBUYNO: TEdit
          Left = 144
          Top = 51
          Width = 129
          Height = 24
          TabOrder = 8
          Text = '2506S26'
        end
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 97
        Width = 1281
        Height = 508
        Align = alClient
        ColCount = 6
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 1
        OnMouseUp = StringGrid1MouseUp
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Barcode Create'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label16: TLabel
          Left = 144
          Top = 16
          Width = 10
          Height = 24
          Caption = '0'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Button2: TButton
          Left = 15
          Top = 11
          Width = 114
          Height = 31
          Caption = 'Create'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 608
          Top = 11
          Width = 114
          Height = 31
          Caption = 'Delete'
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 1281
        Height = 548
        Align = alClient
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SheHao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OUTSOLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XieXing'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Print Barcode'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 113
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 12
          Top = 59
          Width = 37
          Height = 20
          Caption = 'SIZE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 135
          Top = 58
          Width = 18
          Height = 20
          Caption = 'To'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 12
          Top = 19
          Width = 35
          Height = 20
          Caption = 'PJID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 188
          Top = 19
          Width = 68
          Height = 20
          Caption = 'ARTICLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 260
          Top = 59
          Width = 63
          Height = 20
          Caption = 'STATUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 504
          Top = 56
          Width = 10
          Height = 24
          Caption = '0'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label22: TLabel
          Left = 432
          Top = 19
          Width = 39
          Height = 16
          Caption = 'DDBH'
        end
        object CBsize1: TComboBox
          Left = 56
          Top = 57
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
        end
        object CBsize2: TComboBox
          Left = 168
          Top = 57
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 1
        end
        object QueryBtn: TButton
          Left = 416
          Top = 54
          Width = 75
          Height = 28
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = QueryBtnClick
        end
        object Button3: TButton
          Left = 602
          Top = 54
          Width = 75
          Height = 28
          Caption = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button3Click
        end
        object CBbacode: TComboBox
          Left = 48
          Top = 17
          Width = 129
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 4
          OnExit = CBbacodeExit
        end
        object CBsku: TComboBox
          Left = 264
          Top = 17
          Width = 140
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 5
        end
        object CBPrintStatus: TComboBox
          Left = 328
          Top = 56
          Width = 65
          Height = 24
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'OK'
            'NOT')
        end
        object ComboBox1: TComboBox
          Left = 480
          Top = 17
          Width = 140
          Height = 24
          ItemHeight = 0
          TabOrder = 7
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 113
        Width = 1281
        Height = 492
        Align = alClient
        DataSource = DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'bacord'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sku'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'color'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'size'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OUTSOLE'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'p_ok'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DDMH'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Xieming'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BUYNO'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Width = 107
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Barcode Status'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 428
          Top = 19
          Width = 37
          Height = 20
          Caption = 'SIZE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 543
          Top = 18
          Width = 18
          Height = 20
          Caption = 'To'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 28
          Top = 19
          Width = 35
          Height = 20
          Caption = 'PJID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 196
          Top = 19
          Width = 68
          Height = 20
          Caption = 'ARTICLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CBsize12: TComboBox
          Left = 472
          Top = 17
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
        end
        object CBsize22: TComboBox
          Left = 568
          Top = 17
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 1
        end
        object Button4: TButton
          Left = 648
          Top = 14
          Width = 75
          Height = 28
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button4Click
        end
        object CBbacode2: TComboBox
          Left = 64
          Top = 17
          Width = 113
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
          OnExit = CBbacode2Exit
        end
        object CBsku2: TComboBox
          Left = 272
          Top = 17
          Width = 140
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 57
        Width = 1281
        Height = 548
        Align = alClient
        DataSource = DataSource3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sku'
            Title.Caption = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'color'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'size'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Scan_Ok'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'out_OK'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'RY Status'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label10: TLabel
          Left = 31
          Top = 19
          Width = 19
          Height = 16
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 272
          Top = 19
          Width = 32
          Height = 16
          Caption = 'Color'
        end
        object EDid: TEdit
          Left = 64
          Top = 15
          Width = 177
          Height = 24
          TabOrder = 0
        end
        object Button5: TButton
          Left = 479
          Top = 12
          Width = 75
          Height = 31
          Caption = 'QUERY'
          TabOrder = 1
          OnClick = Button5Click
        end
        object CBRYcolor: TComboBox
          Left = 312
          Top = 15
          Width = 145
          Height = 24
          ItemHeight = 0
          TabOrder = 2
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 57
        Width = 1281
        Height = 548
        Align = alClient
        DataSource = DataSource4
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Flag'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pj_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XieXing'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SheHao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ARTICLE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Color'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pairs'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCRQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Out_qty'
            Visible = True
          end>
      end
    end
  end
  object QueryRBTmp: TQuery
    DatabaseName = 'DB'
    Left = 20
    Top = 387
  end
  object QueryRBWork: TQuery
    DatabaseName = 'DB'
    Left = 52
    Top = 387
  end
  object QueryRBCreate: TQuery
    DatabaseName = 'DB'
    Left = 76
    Top = 171
    object QueryRBCreateCC: TStringField
      FieldName = 'CC'
    end
    object QueryRBCreateSheHao: TStringField
      FieldName = 'SheHao'
    end
    object QueryRBCreateARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object QueryRBCreateqty: TIntegerField
      FieldName = 'qty'
    end
    object QueryRBCreateOUTSOLE: TStringField
      FieldName = 'OUTSOLE'
    end
    object QueryRBCreateXieXing: TStringField
      FieldName = 'XieXing'
    end
  end
  object DataSource1: TDataSource
    DataSet = QueryRBCreate
    Left = 36
    Top = 171
  end
  object QueryColor: TQuery
    DatabaseName = 'DB'
    Left = 20
    Top = 419
  end
  object DataSource2: TDataSource
    DataSet = QueryPrint
    Left = 148
    Top = 347
  end
  object QueryPrint: TQuery
    DatabaseName = 'DB'
    Left = 140
    Top = 387
    object QueryPrintbacord: TStringField
      FieldName = 'bacord'
    end
    object QueryPrintsku: TStringField
      FieldName = 'sku'
    end
    object QueryPrintcolor: TStringField
      FieldName = 'color'
    end
    object QueryPrintsize: TStringField
      FieldName = 'size'
    end
    object QueryPrintOUTSOLE: TStringField
      FieldName = 'OUTSOLE'
    end
    object QueryPrintqty: TIntegerField
      FieldName = 'qty'
    end
    object QueryPrintp_ok: TBooleanField
      FieldName = 'p_ok'
    end
    object QueryPrintDDMH: TStringField
      FieldName = 'DDMH'
      Size = 50
    end
    object QueryPrintXieming: TStringField
      FieldName = 'Xieming'
      Size = 50
    end
    object QueryPrintBUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object QueryPrintid: TStringField
      FieldName = 'id'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query1
    Left = 220
    Top = 347
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 228
    Top = 387
    object Query1id_code: TStringField
      FieldName = 'id_code'
    end
    object Query1sku: TStringField
      FieldName = 'sku'
    end
    object Query1color: TStringField
      FieldName = 'color'
    end
    object Query1size: TStringField
      FieldName = 'size'
    end
    object Query1total: TIntegerField
      FieldName = 'total'
    end
    object Query1Scan_Ok: TIntegerField
      FieldName = 'Scan_Ok'
    end
    object Query1out_OK: TIntegerField
      FieldName = 'out_OK'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query2
    Left = 396
    Top = 355
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjdh from LIY_DD.dbo.mjzl group by bz2')
    Left = 404
    Top = 401
    object Query2Flag: TStringField
      FieldName = 'Flag'
    end
    object Query2Pj_ID: TStringField
      FieldName = 'Pj_ID'
    end
    object Query2RY: TStringField
      FieldName = 'RY'
    end
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query2Color: TStringField
      FieldName = 'Color'
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2SCRQ: TStringField
      FieldName = 'SCRQ'
    end
    object Query2Out_qty: TIntegerField
      FieldName = 'Out_qty'
    end
  end
  object Query3: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT [DDBH],[XieXing],[SheHao],[ARTICLE],[Pairs],[SCRQ],'
      
        #39'                                                        '#39' color' +
        ',0 CGBH FROM TB_DD.[dbo].[DDZL] '
      'where 1<>1')
    UpdateObject = UpdateSQL1
    Left = 780
    Top = 361
  end
  object DataSource5: TDataSource
    DataSet = Query3
    Left = 807
    Top = 361
  end
  object UpdateSQL1: TUpdateSQL
    Left = 804
    Top = 443
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    Left = 572
    Top = 307
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    Left = 420
    Top = 235
  end
end
