object ProdBonus: TProdBonus
  Left = 0
  Top = 0
  Caption = 'ProdBonus'
  ClientHeight = 563
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1128
    Height = 563
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '1.'#29986#33021#36039#26009#29518#37329
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 11
          Top = 16
          Width = 32
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 133
          Top = 15
          Width = 39
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 264
          Top = 16
          Width = 39
          Height = 16
          Caption = 'DepNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 432
          Top = 16
          Width = 57
          Height = 16
          Caption = 'DepName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Query1: TButton
          Left = 620
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Query1Click
        end
        object CBX1: TComboBox
          Left = 45
          Top = 11
          Width = 73
          Height = 26
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 15
          ParentFont = False
          TabOrder = 1
          Text = '2021'
          Items.Strings = (
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
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX2: TComboBox
          Left = 174
          Top = 11
          Width = 65
          Height = 26
          DropDownCount = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          Text = '01'
          Items.Strings = (
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
        end
        object DepNOEdit: TEdit
          Left = 309
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object DepNMEdit: TEdit
          Left = 493
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 209
        Width = 1120
        Height = 323
        Align = alClient
        DataSource = DS1
        DynProps = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        RowHeight = 20
        SumList.Active = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'iYear'
            Footers = <>
            Title.Caption = #24180'|iYear'
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'iMonth'
            Footers = <>
            Title.Caption = #26376'|iMonth'
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DepNO'
            Footers = <>
            Title.Caption = #21934#20301#20195#30908'|DepNO'
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = #21934#20301#21029'|DepName'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #32317#29986#33021'|Qty'
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'bzQty'
            Footer.FieldName = 'bzQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #30446#27161#29986#33021'|StdQty'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Person'
            Footers = <>
            Title.Caption = #36948#25104#29575'|Person'
            Width = 49
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object BonusPanel: TPanel
        Left = 0
        Top = 49
        Width = 1120
        Height = 160
        Align = alTop
        TabOrder = 2
        object DBGrideh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 368
          Height = 158
          Align = alLeft
          DataSource = DS2
          DynProps = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          ReadOnly = True
          RowHeight = 20
          SumList.Active = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'iYear'
              Footers = <>
              Title.Caption = #24180'|iYear'
              Width = 34
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'iMonth'
              Footers = <>
              Title.Caption = #26376'|iMonth'
              Width = 36
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = #32317#29986#33021'|Qty'
              Width = 57
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'bzQty'
              Footers = <>
              Title.Caption = #30446#27161#38617#25976'|StdQty'
              Width = 68
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DiffQty'
              Footers = <>
              Title.Caption = #24046#30064#38617#25976'|DiffQty'
              Width = 68
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InQty'
              Footer.FieldName = 'InQty'
              Footers = <>
              Title.Caption = #25104#21697#20489#20837#24235'|InQty'
              Width = 75
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGridEh6: TDBGridEh
          Left = 369
          Top = 1
          Width = 750
          Height = 158
          Align = alClient
          DataSource = DS6
          DynProps = <>
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          PopupMenu = PopupMenu6
          RowHeight = 20
          SumList.Active = True
          TabOrder = 1
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'T_MA'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26376#24180'|T_MA'
              Width = 51
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'ProdQty'
              Footers = <>
              Title.Caption = #32317#29986#33021'|ProdQty'
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'StdQty'
              Footers = <>
              Title.Caption = #27161#28310#29986#37327'|StdQty'
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'BasicUSACC'
              Footers = <>
              Title.Caption = #22522#30990#29518#37329'|Bas USD'
              Width = 66
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'MinUSACC'
              Footers = <>
              Title.Caption = #19979#38480'|MinUSD'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'USACC'
              Footers = <>
              ReadOnly = True
              Title.Caption = #32317#29518#37329'|USD_Bonus'
              Width = 72
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'Exchange'
              Footers = <>
              Title.Caption = #21295#29575'|Exchange'
              Width = 50
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'VNACC'
              Footers = <>
              ReadOnly = True
              Title.Caption = #36234#30462#32317#37329#38989'|VNACC'
              Width = 92
            end
            item
              CellButtons = <>
              Color = clYellow
              DynProps = <>
              EditButtons = <>
              FieldName = 'StaffTotal'
              Footers = <>
              Title.Caption = #24046#21220#32317#25976'|StaffTotal'
              Width = 63
            end
            item
              CellButtons = <>
              Color = clSkyBlue
              DynProps = <>
              EditButtons = <>
              FieldName = 'StaffVNPrice'
              Footers = <>
              Title.Caption = #21729#24037#24179#22343#29518#37329'|StaffVNPrice'
              Width = 90
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26356#26032'ID|UserID'
              Width = 58
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26356#26032#26085#26399'|UserDate'
              Width = 61
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '2.'#35036#26009#36039#26009
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 11
          Top = 16
          Width = 32
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 133
          Top = 15
          Width = 39
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 247
          Top = 16
          Width = 39
          Height = 16
          Caption = 'DepNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 417
          Top = 16
          Width = 57
          Height = 16
          Caption = 'DepName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Query2: TButton
          Left = 601
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Query2Click
        end
        object CBX3: TComboBox
          Left = 45
          Top = 11
          Width = 73
          Height = 26
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 15
          ParentFont = False
          TabOrder = 1
          Text = '2021'
          Items.Strings = (
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
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX4: TComboBox
          Left = 174
          Top = 11
          Width = 65
          Height = 26
          DropDownCount = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          Text = '01'
          Items.Strings = (
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
        end
        object DepNO1Edit: TEdit
          Left = 290
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object DepNM1Edit: TEdit
          Left = 474
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object ExcelRepBtn: TButton
          Left = 682
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = ExcelRepBtnClick
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1120
        Height = 483
        Align = alClient
        DataSource = DS3
        DynProps = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        RowHeight = 20
        SumList.Active = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'iYear'
            Footers = <>
            Title.Caption = #24180'|iYear'
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'iMonth'
            Footers = <>
            Title.Caption = #26376'|iMonth'
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Sumline'
            Footers = <>
            Title.Caption = #32676#32068'|Sumline'
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #21934#20301#20195#30908'|ID'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = #21934#20301#21517#31281'|DepName'
            Width = 107
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DelACCUS'
            Footers = <>
            Title.Caption = #38936#26009#32317#37329#38989'|DelACCUS'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReACCUS'
            Footers = <>
            Title.Caption = #35036#26009#32317#37329#38989'|ReACCUS'
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Person'
            Footers = <>
            Title.Caption = #30334#20998#27604'|Person'
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '3.'#37096#38272#32318#25928#32771#26680
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 65
        Align = alTop
        TabOrder = 0
        object BB2: TBitBtn
          Left = 56
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Th'#234'm'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 1
        end
        object BB4: TBitBtn
          Left = 152
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Xo'#769'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
        end
        object BB3: TBitBtn
          Left = 104
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'S'#7917'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 3
          OnClick = BB3Click
        end
        object BB5: TBitBtn
          Left = 200
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'L'#432'u'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 4
          OnClick = BB5Click
        end
        object BB6: TBitBtn
          Left = 248
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Hu'#777'y'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 5
          OnClick = BB6Click
        end
        object BB7: TBitBtn
          Left = 296
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Tho'#225't'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 6
        end
        object BB1: TBitBtn
          Left = 8
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Truy v'#7845'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
        end
        object bbt6: TBitBtn
          Left = 351
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 7
          OnClick = bbt6Click
        end
        object CalProdAndBuBtn: TButton
          Left = 452
          Top = 7
          Width = 141
          Height = 52
          Caption = 'Cap nhat Score tu San luong va Bu  '#35336#31639#29986#37327#21644#35036#26009#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          WordWrap = True
          OnClick = CalProdAndBuBtnClick
        end
        object CalNhomBtn: TButton
          Left = 599
          Top = 7
          Width = 141
          Height = 52
          Caption = 'Cap nhat Score Don vi quan ly '#35336#31639#35506#31649#29702#21934#20301#20998#25976
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          WordWrap = True
          OnClick = CalNhomBtnClick
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 65
        Width = 1120
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label12: TLabel
          Left = 11
          Top = 16
          Width = 32
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 133
          Top = 15
          Width = 39
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 264
          Top = 16
          Width = 45
          Height = 16
          Caption = 'DV_MA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 441
          Top = 16
          Width = 50
          Height = 16
          Caption = 'DV_TEN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 623
          Top = 16
          Width = 34
          Height = 16
          Caption = 'Nhom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Query4: TButton
          Left = 835
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Query4Click
        end
        object CBX5: TComboBox
          Left = 45
          Top = 11
          Width = 73
          Height = 26
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 15
          ParentFont = False
          TabOrder = 1
          Text = '2021'
          Items.Strings = (
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
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX6: TComboBox
          Left = 174
          Top = 11
          Width = 65
          Height = 26
          DropDownCount = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          Text = '01'
          Items.Strings = (
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
        end
        object DV_MAEdit: TEdit
          Left = 309
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object DV_TenEdit: TEdit
          Left = 493
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object ProdCK: TCheckBox
          Left = 722
          Top = 14
          Width = 107
          Height = 17
          Caption = 'San xuat don vi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ClzmlbComb: TComboBox
          Left = 667
          Top = 12
          Width = 49
          Height = 24
          ItemIndex = 0
          TabOrder = 6
          Items.Strings = (
            ''
            'Y'
            'N')
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 114
        Width = 1120
        Height = 418
        Align = alClient
        DataSource = DS5
        DynProps = <>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FooterRowCount = 1
        FooterParams.Color = clWindow
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        PopupMenu = PopupMenu5
        RowHeight = 20
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'T_MA'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26376#24180'|T_MA'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DV_MA'
            Footer.FieldName = 'DV_MA'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301#20195#30908'|DV_MA'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DV_TEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301#21517#31281'|DV_TEN'
            Width = 87
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'PScore'
            Footers = <>
            Title.Caption = #29986#37327#20998#25976'|PScore'
            Width = 57
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'QScore'
            Footers = <>
            Title.Caption = #21697#31649#20998#25976'|QScore'
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'RScore'
            Footers = <>
            Title.Caption = #35036#26009#20998#25976'|RScore'
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'TScore'
            Footers = <>
            Title.Caption = #32317#21209#20998#25976'|TScore'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Clzmlb'
            Footers = <>
            Title.Caption = #32068#21934#20301'|Nhom'
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HESO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29986#33021#20418#25976'('#32317#24471#20998')|HESO'
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26356#26032'ID|UserID'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Title.Caption = #26356#26032#26085#26399'|UserDate'
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ProdSumQty: TADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#39'2021'#39' as iYear,'#39'04'#39' as iMonth,Sum(Qty) as Qty,Sum(bzQty)' +
        ' as bzQty,Sum(Qty)-Sum(bzQty) as DiffQty,Sum(InQty) as InQty'
      
        '       ,case when (Sum(Qty)-Sum(bzQty))>=-50000 then 100000+(Sum' +
        '(Qty)-Sum(bzQty)) else 0 end as USACC   from ('
      'Select SCBB.DepNO, BDepartment.DepName,'
      
        '        sum(isnull(SCBBS.Qty,0)) as Qty,isnull(SCBZCL.Qty,0) as ' +
        'bzQty,YWCP.Qty as InQty'
      'from SCBB '
      'left join SCBBS  on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment  on BDepartment.ID=SCBB.DepNo  '
      
        'left join (Select Sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2021/04/01'#39'and '#39'2021/04/30'#39
      
        '           group by SCBZCL.DepNo ) SCBZCL  on SCBZCL.DepNo=SCBB.' +
        'DepNo'
      'left join DDZL  on DDZl.ZLBH=SCBBS.SCBH '
      'left join (Select YWCP.DepNo,sum(YWCP.Qty) as Qty'
      '           from YWCP'
      '           left join BDepartment on YWCP.DepNo=BDepartment.ID'
      '           where BDepartment.GSBH='#39'TBA'#39
      
        '                 and convert(varchar,YWCP.InDate,111) between '#39'2' +
        '021/04/01'#39'and '#39'2021/04/30'#39
      '           Group by YWCP.DepNo ) YWCP on YWCP.DepNO=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '                 '#39'2021/04/01'#39'and '#39'2021/04/30'#39
      '       and SCBB.GSBH ='#39'TBA'#39
      '       and (SCBBS.GXLB='#39'A'#39') and BDepartment.YN=1'
      
        'Group by SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty,YWCP.Qty ) SC' +
        'BB')
    Left = 229
    Top = 136
    object ProdSumQtyiYear: TStringField
      FieldName = 'iYear'
      ReadOnly = True
      Size = 4
    end
    object ProdSumQtyiMonth: TStringField
      FieldName = 'iMonth'
      ReadOnly = True
      Size = 2
    end
    object ProdSumQtyQty: TFMTBCDField
      FieldName = 'Qty'
      ReadOnly = True
      Precision = 38
      Size = 1
    end
    object ProdSumQtybzQty: TIntegerField
      FieldName = 'bzQty'
      ReadOnly = True
    end
    object ProdSumQtyDiffQty: TFMTBCDField
      FieldName = 'DiffQty'
      ReadOnly = True
      Precision = 38
      Size = 1
    end
    object ProdSumQtyInQty: TIntegerField
      FieldName = 'InQty'
      ReadOnly = True
    end
  end
  object DS2: TDataSource
    DataSet = ProdSumQty
    Left = 231
    Top = 184
  end
  object ProdQty: TADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#39'2021'#39' as iYear,'#39'01'#39' as iMonth,SCBBS.*,Round(Qty/bzQty*10' +
        '0,1) as Person from ('
      'Select SCBB.DepNO, BDepartment.DepName,'
      
        '        sum(isnull(SCBBS.Qty,0)) as Qty,isnull(SCBZCL.Qty,0) as ' +
        'bzQty'
      'from NHU_LIY_ERP.dbo.SCBB SCBB '
      'left join NHU_LIY_ERP.dbo.SCBBS SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      
        'left join NHU_LIY_ERP.dbo.BDepartment BDepartment on BDepartment' +
        '.ID=SCBB.DepNo  '
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from NHU_L' +
        'IY_ERP.dbo.SCBZCL SCBZCL'
      '           where SCBZCL.BZDate between'
      '                 '#39'2021/01/01'#39'and '#39'2021/01/31'#39
      
        '           group by SCBZCL.DepNo ) SCBZCL  on SCBZCL.DepNo=SCBB.' +
        'DepNo'
      'left join NHU_LIY_ERP.dbo.DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2021/01/01'#39' and '#39'2021/01/31'#39
      '       and SCBB.GSBH ='#39'VA12'#39
      '       and (SCBBS.GXLB='#39'A'#39') and BDepartment.YN=1'
      'Group by SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty) SCBBS'
      'order by DepName')
    Left = 229
    Top = 232
    object ProdQtyiYear: TStringField
      FieldName = 'iYear'
      ReadOnly = True
      Size = 4
    end
    object ProdQtyiMonth: TStringField
      FieldName = 'iMonth'
      ReadOnly = True
      Size = 2
    end
    object ProdQtyDepNO: TStringField
      FieldName = 'DepNO'
      Size = 15
    end
    object ProdQtyDepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object ProdQtyQty: TFMTBCDField
      FieldName = 'Qty'
      ReadOnly = True
      Precision = 38
      Size = 1
    end
    object ProdQtybzQty: TIntegerField
      FieldName = 'bzQty'
      ReadOnly = True
    end
    object ProdQtyPerson: TFMTBCDField
      FieldName = 'Person'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object DS1: TDataSource
    DataSet = ProdQty
    Left = 229
    Top = 280
  end
  object IT_TIENSANLUONGQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = IT_TIENSANLUONGQryAfterOpen
    BeforeClose = IT_TIENSANLUONGQryBeforeClose
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      'Select * from LIY_TYXUAN.dbo.IT_TIENSANLUONG')
    Left = 232
    Top = 344
    object IT_TIENSANLUONGQryT_MA: TWideStringField
      FieldName = 'T_MA'
      Size = 50
    end
    object IT_TIENSANLUONGQryGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object IT_TIENSANLUONGQryProdQty: TIntegerField
      FieldName = 'ProdQty'
    end
    object IT_TIENSANLUONGQryStdQty: TIntegerField
      FieldName = 'StdQty'
    end
    object IT_TIENSANLUONGQryBasicUSACC: TFloatField
      FieldName = 'BasicUSACC'
    end
    object IT_TIENSANLUONGQryMinUSACC: TFloatField
      FieldName = 'MinUSACC'
    end
    object IT_TIENSANLUONGQryUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '#,##0.00'
    end
    object IT_TIENSANLUONGQryExchange: TIntegerField
      FieldName = 'Exchange'
    end
    object IT_TIENSANLUONGQryVNACC: TLargeintField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object IT_TIENSANLUONGQryStaffTotal: TIntegerField
      FieldName = 'StaffTotal'
    end
    object IT_TIENSANLUONGQryStaffVNPrice: TLargeintField
      FieldName = 'StaffVNPrice'
      DisplayFormat = '#,##0'
    end
    object IT_TIENSANLUONGQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object IT_TIENSANLUONGQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object IT_TIENSANLUONGQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS6: TDataSource
    DataSet = IT_TIENSANLUONGQry
    Left = 234
    Top = 392
  end
  object Upd_TIENSANLUONGQry: TMyADOUpdateSQL
    DataSet = IT_TIENSANLUONGQry
    ZModifyCommandObj.Connection = DM2.ADOConn
    ZModifyCommandObj.Parameters = <
      item
        Name = 'Exchange'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'VNACC'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'StaffVNPrice'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'UserDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_T_MA'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update IT_TIENSANLUONG'
      'Set '
      '  Exchange =:Exchange,'
      '  VNACC =:VNACC,'
      '  StaffVNPrice =:StaffVNPrice,'
      '  UserID =:UserID,'
      '  UserDate =:UserDate'
      'where '
      '  T_MA =:OLD_T_MA')
    ZDeleteCommandObj.Parameters = <>
    ZInsertCommandObj.Parameters = <>
    SQLModify = 
      'Update IT_TIENSANLUONG'#13#10'Set '#13#10'  Exchange =:Exchange,'#13#10'  VNACC =:' +
      'VNACC,'#13#10'  StaffVNPrice =:StaffVNPrice,'#13#10'  UserID =:UserID,'#13#10'  Us' +
      'erDate =:UserDate'#13#10'where '#13#10'  T_MA =:OLD_T_MA'
    Left = 232
    Top = 449
  end
  object PopupMenu6: TPopupMenu
    Left = 232
    Top = 496
    object Import1: TMenuItem
      Caption = 'Import'
      OnClick = Import1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object Qtemp: TADOQuery
    Connection = DM2.ADOConn
    Parameters = <>
    SQL.Strings = (
      '--//[1] Create Linkserver'
      'set ansi_nulls on '
      'set ansi_warnings on '
      ' '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39') '
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39'192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\s' +
        'ql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 144
    Top = 136
  end
  object ReplQty: TADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'if object_id('#39'tempdb..#KCLLS'#39') is not null  '
      'begin   drop table #KCLLS end   '
      ''
      'select KCLL.DepID,BDepartment.DepName,BDepartment.SumLine,'
      '       isnull(KCLLS.YYBH,'#39#39') as YYBH,KCLLS.Qty,CLLBFYS.FYLB,'
      '       KCLLS.CLBH,isnull(KCLLS.BLSB,'#39#39') as BLSB,KCLL.CFMDate'
      'into #KCLLS '
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      
        'left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBF' +
        'YS.GSBH'
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween'
      '                 '#39'2021/01/01'#39'and '#39'2021/01/31'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and BDepartment.DepName like '#39'%'#39
      '      and KCLLS.Qty<>0'
      
        '      and BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB in ('#39'C'#39','#39 +
        'S'#39','#39'A'#39')'
      ''
      
        'Select '#39'2021'#39' as iYear,'#39'01'#39' as iMonth,DelACC.Sumline,BDepartment' +
        '.ID,BDepartment.DepName,DelACC.ACCUS as DelACCUS,IsNull(RepACC.A' +
        'CCUS,0) as ReACCUS,IsNull(RepACC.ACCUS,0)/DelACC.ACCUS*100 as Pe' +
        'rson from  ('
      
        'Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ' +
        'ACCUS,'#39' DelACC'#39' as SB'
      'from #KCLLS '
      'left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH '
      
        '                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,' +
        '#KCLLS.CFMDate)) '
      
        '                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#' +
        'KCLLS.CFMDate)) '
      'where 1=1'
      'group by #KCLLS.Sumline ) DelACC'
      'left join ('
      
        'Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ' +
        'ACCUS,'#39' RepACC'#39' as SB'
      'from #KCLLS '
      'left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH '
      
        '                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,' +
        '#KCLLS.CFMDate)) '
      
        '                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#' +
        'KCLLS.CFMDate)) '
      'where #KCLLS.BLSB='#39'Y'#39
      
        'group by #KCLLS.Sumline ) RepACC on RepACC.Sumline=DelACC.Sumlin' +
        'e'
      
        'left join BDepartment on BDepartment.sumline=DelACC.Sumline and ' +
        'BDepartment.GXLB='#39'A'#39
      'order by DelACC.Sumline')
    Left = 336
    Top = 136
    object ReplQtyiYear: TStringField
      FieldName = 'iYear'
      ReadOnly = True
      Size = 4
    end
    object ReplQtyiMonth: TStringField
      FieldName = 'iMonth'
      ReadOnly = True
      Size = 2
    end
    object ReplQtySumline: TStringField
      FieldName = 'Sumline'
      FixedChar = True
      Size = 8
    end
    object ReplQtyID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object ReplQtyDepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object ReplQtyDelACCUS: TBCDField
      FieldName = 'DelACCUS'
      ReadOnly = True
      Precision = 19
    end
    object ReplQtyReACCUS: TBCDField
      FieldName = 'ReACCUS'
      ReadOnly = True
      Precision = 19
    end
    object ReplQtyPerson: TBCDField
      FieldName = 'Person'
      ReadOnly = True
      Precision = 19
    end
  end
  object DS3: TDataSource
    DataSet = ReplQty
    Left = 338
    Top = 184
  end
  object IT_HESOSANLUONGQry: TMyADOQuery
    AutoCalcFields = False
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = IT_HESOSANLUONGQryAfterOpen
    BeforeClose = IT_HESOSANLUONGQryBeforeClose
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      'select * from ('
      
        'Select IT_HESOSANLUONG.*,ST_DONVI.DV_TEN,case when IT_ORGLEVEL.C' +
        'ounti>0 then '#39'Y'#39' else '#39'N'#39' end as Clzmlb  '
      'from '#39'+DM2.LocalDBName+'#39'dbo.IT_HESOSANLUONG IT_HESOSANLUONG'
      
        'Left join '#39'+DM2.LocalDBName+'#39'.dbo.ST_DONVI ST_DONVI on ST_DONVI.' +
        'DV_MA=IT_HESOSANLUONG.DV_MA'
      
        'Left join (select DV_MA,Count(DV_MA1) as Counti from '#39'+DM2.Local' +
        'DBName+'#39'.dbo.IT_ORGLEVEL IT_ORGLEVEL Group by DV_MA) IT_ORGLEVEL' +
        ' on IT_ORGLEVEL.DV_MA=IT_HESOSANLUONG.DV_MA'
      
        'where IT_HESOSANLUONG.T_MA='#39'01-2021'#39' and IT_HESOSANLUONG.GSBH='#39'V' +
        'TX'#39' '
      ') IT_HESOSANLUONG where 1=1 '
      'Order by IT_HESOSANLUONG.DV_TEN')
    Left = 432
    Top = 137
    object IT_HESOSANLUONGQryT_MA: TWideStringField
      DisplayWidth = 15
      FieldName = 'T_MA'
      Size = 50
    end
    object IT_HESOSANLUONGQryGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object IT_HESOSANLUONGQryDV_MA: TWideStringField
      DisplayWidth = 50
      FieldName = 'DV_MA'
      Size = 50
    end
    object IT_HESOSANLUONGQryDV_TEN: TWideStringField
      FieldName = 'DV_TEN'
      Size = 50
    end
    object IT_HESOSANLUONGQryPScore: TFloatField
      DisplayWidth = 10
      FieldName = 'PScore'
      OnSetText = IT_HESOSANLUONGQryPScoreSetText
    end
    object IT_HESOSANLUONGQryQScore: TFloatField
      DisplayWidth = 10
      FieldName = 'QScore'
      OnSetText = IT_HESOSANLUONGQryPScoreSetText
    end
    object IT_HESOSANLUONGQryRScore: TFloatField
      DisplayWidth = 10
      FieldName = 'RScore'
      OnSetText = IT_HESOSANLUONGQryPScoreSetText
    end
    object IT_HESOSANLUONGQryTScore: TFloatField
      DisplayWidth = 10
      FieldName = 'TScore'
      OnSetText = IT_HESOSANLUONGQryPScoreSetText
    end
    object IT_HESOSANLUONGQryHESO: TFloatField
      DisplayWidth = 10
      FieldName = 'HESO'
    end
    object IT_HESOSANLUONGQryClzmlb: TStringField
      FieldName = 'Clzmlb'
      ReadOnly = True
      Size = 1
    end
    object IT_HESOSANLUONGQryUserID: TStringField
      DisplayWidth = 10
      FieldName = 'UserID'
      Size = 10
    end
    object IT_HESOSANLUONGQryUserDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UserDate'
    end
    object IT_HESOSANLUONGQryYN: TStringField
      DisplayWidth = 1
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS5: TDataSource
    DataSet = IT_HESOSANLUONGQry
    Left = 432
    Top = 185
  end
  object UpdIT_HESOSANLUONG: TMyADOUpdateSQL
    DataSet = IT_HESOSANLUONGQry
    ZModifyCommandObj.Connection = DM2.ADOConn
    ZModifyCommandObj.Parameters = <
      item
        Name = 'PScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'QScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'RScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'TScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'HESO'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_T_MA'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_DV_MA'
        Size = -1
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update IT_HESOSANLUONG  '
      '  Set'
      '    PScore =:PScore,'
      '    QScore =:QScore,'
      '    RScore =:RScore,'
      '    TScore =:TScore,'
      '    HESO =:HESO,'
      '    UserID =:UserID,'
      '    UserDate =:UserDate'
      'where T_MA =:OLD_T_MA'
      '    and DV_MA =:OLD_DV_MA')
    ZDeleteCommandObj.Connection = DM2.ADOConn
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_T_MA'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_DV_MA'
        Size = -1
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'Delete from IT_HESOSANLUONG'
      'where T_MA =:OLD_T_MA'
      '    and DV_MA =:OLD_DV_MA')
    ZInsertCommandObj.Connection = DM2.ADOConn
    ZInsertCommandObj.Parameters = <
      item
        Name = 'T_MA'
        Size = -1
        Value = Null
      end
      item
        Name = 'DV_MA'
        Size = -1
        Value = Null
      end
      item
        Name = 'PScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'QScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'RScore'
        Size = -1
        Value = Null
      end
      item
        Name = 'TSocre'
        Size = -1
        Value = Null
      end
      item
        Name = 'HESO'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserDate'
        Size = -1
        Value = Null
      end
      item
        Name = 'YN'
        Size = -1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'Insert into IT_HESOSANLUONG'
      
        '  (T_MA, DV_MA, PScore, QScore, RScore, TSocre, HESO, UserID, Us' +
        'erDate, YN)'
      'Values'
      
        '  (:T_MA, :DV_MA, :PScore, :QScore, :RScore, :TSocre, :HESO, :Us' +
        'erID, :UserDate, :YN)')
    SQLDelete = 
      'Delete from IT_HESOSANLUONG'#13#10'where T_MA =:OLD_T_MA'#13#10'    and DV_M' +
      'A =:OLD_DV_MA'
    SQLInsert = 
      'Insert into IT_HESOSANLUONG'#13#10'  (T_MA, DV_MA, PScore, QScore, RSc' +
      'ore, TSocre, HESO, UserID, UserDate, YN)'#13#10'Values'#13#10'  (:T_MA, :DV_' +
      'MA, :PScore, :QScore, :RScore, :TSocre, :HESO, :UserID, :UserDat' +
      'e, :YN)'
    SQLModify = 
      'Update IT_HESOSANLUONG  '#13#10'  Set'#13#10'    PScore =:PScore,'#13#10'    QScor' +
      'e =:QScore,'#13#10'    RScore =:RScore,'#13#10'    TScore =:TScore,'#13#10'    HES' +
      'O =:HESO,'#13#10'    UserID =:UserID,'#13#10'    UserDate =:UserDate'#13#10'where ' +
      'T_MA =:OLD_T_MA'#13#10'    and DV_MA =:OLD_DV_MA'
    Left = 432
    Top = 241
  end
  object PopupMenu5: TPopupMenu
    Left = 432
    Top = 296
    object mnu1: TMenuItem
      Caption = 'Don Vi Ket Noi '#32068#31649#29702#21934#20301
      OnClick = mnu1Click
    end
  end
end
