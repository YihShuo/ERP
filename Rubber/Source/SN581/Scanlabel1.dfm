object ScanLabel: TScanLabel
  Left = 364
  Top = 276
  Width = 1251
  Height = 675
  Caption = 'Scan Label'
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
    Width = 1235
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
        Width = 1227
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 296
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
          Left = 104
          Top = 16
          Width = 32
          Height = 16
          Caption = 'Color'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 88
          Top = 56
          Width = 56
          Height = 16
          Caption = 'ARTICLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 296
          Top = 16
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
          Left = 504
          Top = 16
          Width = 24
          Height = 16
          Caption = 'End'
        end
        object Label20: TLabel
          Left = 496
          Top = 56
          Width = 48
          Height = 16
          Caption = 'BUYNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 840
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
          Left = 1008
          Top = 8
          Width = 73
          Height = 73
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
          Left = 344
          Top = 52
          Width = 129
          Height = 24
          TabOrder = 1
        end
        object Button1: TButton
          Left = 696
          Top = 25
          Width = 81
          Height = 31
          Caption = 'QUERY'
          TabOrder = 2
          OnClick = Button1Click
        end
        object CBcolor: TComboBox
          Left = 152
          Top = 12
          Width = 121
          Height = 24
          ItemHeight = 16
          TabOrder = 3
        end
        object EDARTICLE: TEdit
          Left = 152
          Top = 52
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object DP1: TDateTimePicker
          Left = 344
          Top = 16
          Width = 129
          Height = 24
          Date = 45402.366854131940000000
          Time = 45402.366854131940000000
          TabOrder = 5
        end
        object DP2: TDateTimePicker
          Left = 552
          Top = 16
          Width = 121
          Height = 24
          Date = 45402.366854131940000000
          Time = 45402.366854131940000000
          TabOrder = 6
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 65
          Height = 73
          TabOrder = 7
          object Label19: TLabel
            Left = 8
            Top = 24
            Width = 46
            Height = 29
            Caption = 'EVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object EDBUYNO: TEdit
          Left = 552
          Top = 51
          Width = 121
          Height = 24
          TabOrder = 8
        end
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 89
        Width = 1227
        Height = 516
        Align = alClient
        ColCount = 6
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Barcode Create'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 57
        Width = 1227
        Height = 548
        Align = alClient
        DataSource = WPS
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
            FieldName = 'CC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OUTSOLE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1227
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label16: TLabel
          Left = 136
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
          Left = 7
          Top = 11
          Width = 114
          Height = 31
          Caption = 'Create '
          TabOrder = 0
          OnClick = Button2Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Print Barcode'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 97
        Width = 1227
        Height = 508
        Align = alClient
        DataSource = WPSS
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
            FieldName = 'bacord'
            Footers = <>
            Title.Caption = 'Barcode'
          end
          item
            EditButtons = <>
            FieldName = 'sku'
            Footers = <>
            Title.Caption = 'ARTICLE'
          end
          item
            EditButtons = <>
            FieldName = 'color'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'size'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OUTSOLE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'p_ok'
            Footers = <>
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1227
        Height = 97
        Align = alTop
        TabOrder = 1
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
          Left = 127
          Top = 59
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
        object Label17: TLabel
          Left = 496
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
        object Label18: TLabel
          Left = 268
          Top = 59
          Width = 32
          Height = 20
          Caption = 'Print'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          Left = 152
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
          Left = 408
          Top = 55
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
          Left = 562
          Top = 55
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
          Left = 56
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
          TabOrder = 5
        end
        object CBPrintStatus: TComboBox
          Left = 312
          Top = 56
          Width = 65
          Height = 24
          ItemHeight = 16
          TabOrder = 6
          Items.Strings = (
            ''
            'OK'
            'NO')
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Barcode Status'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1227
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 452
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
          Left = 567
          Top = 19
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
          Left = 220
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
          Left = 496
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
          Left = 592
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
          Left = 680
          Top = 15
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
          Width = 129
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
          Left = 296
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
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 57
        Width = 1227
        Height = 548
        Align = alClient
        DataSource = DataSource1
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
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'id_code'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'sku'
            Footers = <>
            Title.Caption = 'ARTICLE'
          end
          item
            EditButtons = <>
            FieldName = 'color'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'size'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'total'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Scan_Ok'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'out_OK'
            Footers = <>
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'RY Status'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1227
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label10: TLabel
          Left = 23
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
          Left = 56
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
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 65
        Width = 1227
        Height = 540
        Align = alClient
        DataSource = DataSource2
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
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Flag'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pj_ID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Color'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Out_qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCRQ'
            Footers = <>
          end>
      end
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 84
    Top = 481
  end
  object workplan: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      
        '      ,(select SUM(OKQty) as OKQty from NHU_DD.dbo.WorkPlanS wor' +
        'kplans where workplans.WorkID=workplan.WorkID) as OKQty '
      'from NHU_DD.dbo.workplan workplan'
      
        'where convert(smalldatetime,convert(varchar,workStartDate,111)) ' +
        'between '
      '      '#39'2020/10/07'#39' and '#39'2020/10/14'#39
      ' and workplan.UserID='#39'21191'#39' '
      'order by workid desc')
    Left = 72
    Top = 360
    object workplanDDBH: TStringField
      FieldName = 'DDBH'
    end
    object workplanXieXing: TStringField
      FieldName = 'XieXing'
    end
    object workplanSheHao: TStringField
      FieldName = 'SheHao'
    end
    object workplanARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object workplanSCRQ: TStringField
      FieldName = 'SCRQ'
    end
    object workplanPairs: TFloatField
      FieldName = 'Pairs'
    end
  end
  object WP: TDataSource
    DataSet = workplan
    Left = 105
    Top = 360
  end
  object WorkPlanS: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 361
    object WorkPlanSCC: TStringField
      FieldName = 'CC'
    end
    object WorkPlanSSheHao: TStringField
      FieldName = 'SheHao'
    end
    object WorkPlanSARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object WorkPlanSqty: TIntegerField
      FieldName = 'qty'
    end
    object WorkPlanSOUTSOLE: TStringField
      FieldName = 'OUTSOLE'
    end
    object WorkPlanSXieXing: TStringField
      FieldName = 'XieXing'
    end
  end
  object WPS: TDataSource
    DataSet = WorkPlanS
    Left = 223
    Top = 361
  end
  object WPSS: TDataSource
    DataSet = MJZLQry
    Left = 367
    Top = 361
  end
  object colorclassQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from LIY_DD.dbo.colorclass')
    Left = 372
    Top = 465
  end
  object MJZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 404
    Top = 361
    object MJZLQrybacord: TStringField
      FieldName = 'bacord'
    end
    object MJZLQrysku: TStringField
      FieldName = 'sku'
    end
    object MJZLQrycolor: TStringField
      FieldName = 'color'
    end
    object MJZLQrysize: TStringField
      FieldName = 'size'
    end
    object MJZLQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object MJZLQryp_ok: TBooleanField
      FieldName = 'p_ok'
    end
    object MJZLQryOUTSOLE: TStringField
      FieldName = 'OUTSOLE'
    end
  end
  object WorkPlanS2: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 433
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 647
    Top = 361
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 684
    Top = 361
    object Query1id_code: TStringField
      FieldName = 'id_code'
    end
    object Query1sku: TStringField
      FieldName = 'sku'
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
    object Query1color: TStringField
      FieldName = 'color'
    end
    object Query1out_OK: TIntegerField
      FieldName = 'out_OK'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 836
    Top = 353
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
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 863
    Top = 353
  end
  object Table1: TTable
    Left = 108
    Top = 259
  end
  object Query3: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 1028
    Top = 361
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 1055
    Top = 361
  end
  object UpdateSQL1: TUpdateSQL
    Left = 1052
    Top = 443
  end
end
