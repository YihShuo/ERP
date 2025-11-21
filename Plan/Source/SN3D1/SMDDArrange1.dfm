object SMDDArrange: TSMDDArrange
  Left = 161
  Top = 213
  Width = 1288
  Height = 611
  Caption = 'SMDDArrange'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 580
    ActivePage = TS1
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Order'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 235
          Top = 18
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 42
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DepName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 18
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 235
          Top = 42
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DDBHEdit: TEdit
          Left = 325
          Top = 15
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BDepNMEdit: TEdit
          Left = 93
          Top = 39
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BuyNoEdit: TEdit
          Left = 93
          Top = 15
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '202201'
        end
        object ArticleEdit: TEdit
          Left = 325
          Top = 39
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Button1: TButton
          Left = 450
          Top = 36
          Width = 78
          Height = 30
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button1Click
        end
        object CheckBox1: TCheckBox
          Left = 448
          Top = 16
          Width = 153
          Height = 17
          Caption = 'Qty<Pairs'
          TabOrder = 5
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 73
        Width = 1272
        Height = 476
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 465
          Top = 1
          Height = 474
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 464
          Height = 474
          Align = alLeft
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 1
            Top = 169
            Width = 462
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 462
            Height = 168
            Align = alTop
            DataSource = DS1
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footer.FieldName = 'Article'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 104
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.FieldName = 'Pairs'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'IEQty'
                Footer.FieldName = 'IEQty'
                Footer.ValueType = fvtAvg
                Footers = <>
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'TotalHours'
                Footer.FieldName = 'TotalHours'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'OrderCount'
                Footer.FieldName = 'OrderCount'
                Footer.ValueType = fvtSum
                Footers = <>
              end>
          end
          object Panel5: TPanel
            Left = 1
            Top = 172
            Width = 462
            Height = 301
            Align = alClient
            TabOrder = 1
            object Panel4: TPanel
              Left = 1
              Top = 1
              Width = 460
              Height = 64
              Align = alTop
              TabOrder = 0
              object BB4: TBitBtn
                Left = 8
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BB4Click
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
              object BB5: TBitBtn
                Left = 56
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Save Current'
                Caption = 'Save'
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
              object BB6: TBitBtn
                Left = 104
                Top = 8
                Width = 49
                Height = 49
                Hint = 'Cancel'
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BB6Click
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
            end
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 65
              Width = 460
              Height = 235
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
              ReadOnly = True
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnGetCellParams = DBGridEh2GetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'DepName'
                  Footers = <>
                  Width = 116
                end
                item
                  EditButtons = <>
                  FieldName = 'PlanDate'
                  Footers = <>
                  Width = 72
                end
                item
                  EditButtons = <>
                  FieldName = 'DDBH'
                  Footer.FieldName = 'DDBH'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Width = 77
                end
                item
                  EditButtons = <>
                  FieldName = 'ShipDate'
                  Footers = <>
                  Width = 71
                end
                item
                  EditButtons = <>
                  FieldName = 'BUYNO'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Style'
                  Footers = <>
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'Article'
                  Footers = <>
                  Width = 68
                end
                item
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.FieldName = 'Pairs'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 53
                end
                item
                  EditButtons = <>
                  FieldName = 'DAOMH'
                  Footers = <>
                  Width = 96
                end
                item
                  EditButtons = <>
                  FieldName = 'Cycle'
                  Footers = <>
                  Width = 43
                end
                item
                  EditButtons = <>
                  FieldName = 'PlanQty'
                  Footer.FieldName = 'PlanQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 65
                end
                item
                  EditButtons = <>
                  FieldName = 'XTMH'
                  Footers = <>
                  Width = 70
                end
                item
                  EditButtons = <>
                  FieldName = 'OKDate'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DDGB'
                  Footers = <>
                  Width = 37
                end
                item
                  EditButtons = <>
                  FieldName = 'Xuong'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ProdQty'
                  Footer.FieldName = 'ProdQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 58
                end
                item
                  EditButtons = <>
                  FieldName = 'LackQty'
                  Footer.FieldName = 'LackQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 61
                end>
            end
          end
        end
        object Panel3: TPanel
          Left = 468
          Top = 1
          Width = 803
          Height = 474
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 1
          object Splitter3: TSplitter
            Left = 201
            Top = 1
            Height = 472
          end
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 200
            Height = 472
            Align = alLeft
            TabOrder = 0
            object TreeView: TTreeView
              Left = 1
              Top = 1
              Width = 198
              Height = 470
              Align = alClient
              Images = ImageList
              Indent = 19
              TabOrder = 0
              OnMouseDown = TreeViewMouseDown
            end
          end
          object Panel8: TPanel
            Left = 204
            Top = 1
            Width = 598
            Height = 472
            Align = alClient
            TabOrder = 1
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 596
              Height = 64
              Align = alTop
              TabOrder = 0
              object Label4: TLabel
                Left = 269
                Top = 9
                Width = 89
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'BuyNo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 67
                Top = 42
                Width = 89
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'DDBH:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 267
                Top = 41
                Width = 89
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Article:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object LeanLabel: TLabel
                Left = 11
                Top = 3
                Width = 206
                Height = 24
                AutoSize = False
                Caption = 'Lean'#32218
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BuyNo1Edit: TEdit
                Left = 359
                Top = 6
                Width = 108
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DDBH1Edit: TEdit
                Left = 157
                Top = 38
                Width = 108
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object Article1Edit: TEdit
                Left = 360
                Top = 37
                Width = 108
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object Button2: TButton
                Left = 473
                Top = 30
                Width = 78
                Height = 30
                Caption = 'Query'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = Button2Click
              end
              object btnCal1: TBitBtn
                Left = 10
                Top = 23
                Width = 49
                Height = 49
                TabOrder = 4
                OnClick = btnCal1Click
                Glyph.Data = {
                  360C0000424D360C000000000000360000002800000020000000200000000100
                  180000000000000C0000C40E0000C40E00000000000000000000FFFDFFFFFEFF
                  FFFFFFFFFFFFFCFBFDFFFEFFEAE4E5E8E3E2CFCFCFDADDDBDBE0DED5DAD8DBDA
                  DCD6D5D7EAE8E7D8D9D5D8DAD4EEF2EDF1EEF0DBD9DFD7D9E1D1D3DDCAD0D7E8
                  E9EDF9EEF0FDF3F3FFFDFFFDFEFFFFFDFFFFFCFEFFFFFEFDFFFCFEFDFFFFFEFF
                  FBFBFBFEFEFEFFFEFFFFFBFFF3F0F2D5D3D3E0DEDDD2D3D1DDE2E1D3DADDD9E0
                  E9C9D2DCE9F4FCDBE7EBD4E1E3E0ECEEE3EBF2C4C9D2DCE1EACBCED6D3D6DBC6
                  C5C7DCD7D6E4DFDCFDFFFFFBFDFEFEFBFDFFFEFFFDFFFFFBFFFFFFFFFCFBFCF8
                  FFFFFEFAFAFAFFFCFFFFFDFFFAFFFFFBFFFFFFFFFCFFFFFEFAFEFFF1FDFFE8FB
                  FFDFFAFFD8FBFFD1F6FFDAFCFFDFFEFFE3FDFFE8FDFFF0FCFFF8FBFFFFFEFFFF
                  FDFCFDFFFBF9FFFAFAFFFBFBFFFCFFFFFEFEFCFCFBFEFFF6FAFFFDFEFAFFFFFC
                  FFFFFEFFFFFFFFFDFFFCFDFFF1FDFFF0FDFFF0F9FFF1FCFFDEF6FFBBDDFA99C3
                  E685B6DE79AED977ADD676AACE7DAECE8AB8D7A1CCE7BADFF5E2FCFFF0FBFFF6
                  FDFFF1FFFEF1FFFCFAFFFBFCFFFAFFFFFCFFFFFEFAFAFFFAFDFFF9FDFEFDFFFF
                  FFFFFEFFFFFCFFFFFCFBFFFFEFFFFFE1FCFFBFE5FF87B9E764A4D466ADDF65AE
                  E268B0E668AAE567A9E464AAE060A6DB6DB0E167AEDA5EA9D562A8D08BBFE3C0
                  E5FFE2FCFFEFFFFFFCFFFDFFFFFAFFFCF9FFFFFEFFFCFEFFFEFFFBFEFFFBFDFE
                  FFFEFFFFFFFFF8FFFFEBFEFFD2F1FF83B1D366A7DA5EACE757AEEC56B2ED51AA
                  E35EB0EA5CA7E5579FDF55A3E55DACEB5CA8E35DAEE758B2EB59B3E963AFE06D
                  AAD68AB7D9D1EFFFEDFDFFFAFFFFFFFFFFFFFFFEFFFFFFFDFDFDFDFFFEFAFCFC
                  FFFEFFF5FCFFDFF9FFA7D3F06DA8D965AFE75AAFE755AFE855B2EF53AFEA5DB5
                  EB4EA1D4539FD457A1DB56A6E356A5E45AA4E45AA4E459ACE955AAE262B4EB67
                  B3E86BB1E76BA6D7A6D3F4DEF9FFFAFCFFFFFDFEFDFFFEF7FEF9FEFFFAFBFFFF
                  F2FCFFE3FBFF95C6E664A7D460ABE957ACF04FAEED52B2EE51ABEC55ACEC459B
                  D1489BCE509FD256A4D954A3DC50A0DD5DA7E75CA6E657A7E45EB0EA5CAFE759
                  ABE55BADEE60ADEB69ADDA93C6E6E4FCFFF4FDFFFAFFFFFBFFFEFFFFF7F4FFFF
                  DCFBFF8FC4E962ABDD59ADE75EAEEF57ACF04EABF054B0F757A5F1428DD74595
                  D64498D24698CF4DA0D451A1D651A1D856A6DD53A4DD56A9E658ABE85BABE65C
                  ACE75CACED5CAFED5DB4E663B0D792CAE7DAF9FFF8FCFFFFFBFFFDFFFFE9FEFF
                  A5DBFA5DA9DA56ADEB4FAAED5AAEF05EADEC66B1E95A9BD25183BF5584C1528C
                  C05290BE5A97BF5793B75F9AC15F9AC164A2C869A6CE67A4D0609ECC6AA9D563
                  A6D760ABE95BADEE57B1E85BB3E264AFD5A8DAF8EFFAFFFFF9FFEFF9FFD3F5FF
                  5FABD550AFE751ACEF55ADF358AEF067ACDD9EC5DBD1E3EED6DCEFD6DDF1CFE1
                  F2C9DFEBCAD9E2D5E2EACFDEE7D0E0ECCADBE8CBDBEBCFDEEEC8DDECC4E1EF9F
                  CCE764A8DD5CAAED5FADEF5FAEE760B3E06CACCEDBF4FFF2F7FFE1F9FF98C6E8
                  58ADDD4CB2ED55B0F558ADF554ABED69AED9CCE8EFF3F4EBFFF1F2FEF0F2EEEC
                  ECF9F7F6FCF5F2F8EFEBFAF4EFF7F2EFF4F2F1F4F2F1F3EFEEF0F1EFE9F6F4BA
                  DBEA64A6D655A5E65FABED62AFED5EB3E365AED49FC6E6E3FAFFC8F4FF6DA8D0
                  5FB5E94DADE95AAEF652A6EE54B0F161AEDCBBE0EEEAF2F1E4DCDDE6D9DBF4EF
                  F1E6E3E5DBD4D9F3EBECF6EDE9DCD9D1E3E9DEEEF6ECEEF0EAEEF1EFEDF5F5BF
                  DEED61A5D254AAE653A4E15EB1E955AEE068B7E273A8CDCAF5FF9ED9FF6AADDE
                  56ACE257B2EF54A9ED54AAF054B2F35DABD9B8DFEEE8F4F4DFDADBE3DBDBF9F4
                  F3EFE9E4ECDED8FFF2EBFAEEEAE0DCD7E0E8DDE9F3E7F2F4EEF2F3F1E9EEEDC3
                  DCEC5FA0CD55ACE551A8E055ABE15CB2E65DADDC6DAEDAA2DDFF7BC3F95FAAE2
                  5FB2EA57AFEB52ACEC57B3F450ACED63ABDBBFDCEBEFF5F4E7E9E9E8E7E3F8F6
                  EBE9DFC7D9C19DFFF2D2FFEEE9EDE4E7EEF1EFEEF5EEE9E9E3EAE7E3F2EEEDCD
                  DCEC689CCB54A1DF55ACE451ABE158ABDF64B0E461AADC7EC5F762B5F25AADEA
                  59ACE959B1ED53AFEA50AEE955AFEF69ACDDC5DFEFEAEFF0D2D8D7D1D5D0F8F7
                  E9C6BCA487704AFFE9C9FEEEE8D2CBD0E2E0E0F0F2F3D0CFD9D4D3DDFAF7F9C8
                  D5E5699AC858A1DD4DA2DA51A9DF58A8DF5CA9E15BABE265B7EE51AEED53ADED
                  55ACEC59B0EE51AEE556B3EA57B1EC67AADBBFDEF3E4F0F4E9F1F0EFF3EEF5EF
                  EAFEF4EDFFFAF2FCF1E9F8F1EEF0ECEBF5F2EEEBECF6DEE1FFDCE1FFE6ECF9C3
                  DAE96199C256A1D951A3DA51A4DC57A5E059A9E455AAE258AFE752AFEE54AEEE
                  57ADEF56ADED56B3EA54B1E853ABEB68ACE1BDDDF4E5F0F4ECF3EEEEF0EAFCF5
                  F2E7DDDDD2CCCDF1EDECF3EFEAD3D0C8E1DED9FDFCFF6B6D967174A0EFF6FFC0
                  DAE65997BF4C9ACF529FD855A1DC54A4E154A7E45BB1ED58B1EA60B2EC5BABEA
                  5BACF05AAEF056AFE855AFEA55ACF665A8E5C3DEF3F0F6F5EFF3E8F4F4E8F9F3
                  ECF7EEEAF4ECE5F9F2E9FBF6EDF1ECE3F7F4ECF5F2F4D5CFE6D5D1EAF9F8FFC3
                  D9E55697BE489AD15199D5559CDB54A4E35DB4F257ACEA5AAFED73BEF265AFE9
                  5CAAED5EAFF356ABE957AFEF54ACF863AAE3B3D2D5DAE6CAE3ECC4E2EAC1E1E4
                  C4E7EACAE3E6BFE9EDC4E3E6BFE4E5C3E7EACAE2E5CBE2E6D3E4E8D5E0E3CDBA
                  D4CE5097B8459BD14A92CE62A9E861B1F057ADE95CADEA6CBCF791D6FE65ADDD
                  60ADEB5EADF05DADEE59AFF14DA9F266B5DC7DAB8783A05190A94D94AB4F99A9
                  5B8FA25393AA4E8CA44596A84F95A55193A25194A7588CA85588A653859D4F77
                  A0734E9CAD3D97CD60AEE95FAAE85DAEEB5EAEE95EAADF8DD6FFB7F0FF64A5CC
                  63AFEA5BAEF258A9ED58ADF151AEF367BADA7CB48989B35C98BE5C81A03F5D76
                  20A0BB6593B95594BD5493B6559DBA5DA0B961607F24739E3D91BF5F95BD657B
                  AE7C55A5B656B0E65EB1EE5BABEA56AAEB61B0E969A7D5B1EAFFD6FDFF86BBDC
                  5CAAE554AEF551A9EF52ABEE59B3F465B6DB6EAD9977A87685B07781A269728B
                  598EAC777BAA6C7EB47180B17383AC728DAE7564874E77A76C7AB07577AB766A
                  A5906AB7D75CB2EE54A9E75AB1F353AEF35FADE884B4D8DCFBFFE8FEFFC6EBFF
                  60A5D755ACEC59B2F551ACEF53ADEE5EB3E173BAC47DBCB37EB8AD87B9AF557B
                  7591BCB382BFB177BBAA7DBBAD83BEAF8CC0AF558B7A74B1A37EBEB279B7B177
                  BBC865B2E358ACEE55ABED59B0F254ABED5EA4D9C9EDFFEBFDFFF8FEFFE5FCFF
                  8FC3E764B0E153ABE74FADEE50ADF256ADEB63B2E363B2DB64B3DE67B5E06BAF
                  DC6BAFDC66B3E161B2DF61B3DD63B5DE65B5DA61B1D667BAE061B3DD65AFDF66
                  B0E85CAAEF57ABF357ACF05AAAE967AEE78EC2EAE4FFFFF4FFFEFFFCFDF3FDFF
                  DCFDFF78B1D160B0DF58B2ED52ADF057AFF558ACEE5AAEF054ADF04FAAED56AD
                  F05AAFF359ADF556ABF354ACF257B0F358B2F351AEED4FADEE54ADF05AACF45D
                  A9F55CACF959ABF35DAFF063ADE378ADD8DAFCFFEFFEFFF9FFF6FFFEFEFFFFFF
                  EFFCFEDDFFFF76B3D35EADDE54ABE955ACEF56AAEC5FB1F258B0F053ADED57AF
                  EF57ADEF54A9ED56ABEF56ABEF55ABED56ACEE57AFEF53ADED59B1F15EAFF35B
                  A9EE5BA9F059A9EA5DACDF73B2D8DCFBFFECF8FFFBFFFEFFFFF9FFFEFFFFFCFB
                  FFFFFBF0FFFFD8FDFF80B7DC67ADE261AFEA5EAFEC58AEEA53ACE953AEEB59B2
                  EF56ADEB54ACEC5BB1F35DAEF15AACED56AAEB59B1F152ADEA54ADEA56ABE95F
                  AFEC65ADE96AACE17AB8DCD0FCFFECFCFFFDFDFFFDFBFBFFFFFCFDFCFFFFFEFF
                  FFFEFDFEFEFEF4FAFFE6FBFFA3CDF269A5D360AFE256B1E855B3EE53B1EC55AE
                  E75BB2EB5AB3F057AEEE5CAAEC63B2F159AFEB52AEE951AEEB56B4EF53AEE55F
                  AEE16CA5D2A5CDF0E1FCFFEBFBFFF7FBFFFEFBFFFFFDFFFFFBFFFBFEFFFBFDFE
                  FFFEFEFFFFFEFFFCFFF9FBFFE4FAFFCFF8FF8EC9E968AFD557A4D25FAEDF65B1
                  E260ACE05CAEE55EAFE863ADE764ADE75BABE05DB0E35FAEDF58A5D365ADD58E
                  C8EBD5FAFFE8FCFFF6FEFFFBFCFFFDFDFFFEFBFFFFFBFFFFFDFFFDFFFEF7FCFA
                  FBFFFFF8FDFBFFFFFCFDFFFFF0FCFFE7FBFFE9FFFFDFF9FFC1E5FD97C4E578AC
                  D46DA9D36DACD867AAD766A9D669ACD969AAD771ACD498C7E3C1E6FADFF7FFEB
                  FCFFF1FDFFF7FFFEFDFFFEFFFFFFFCFBFDFFFEFFFBFAFCFFFEFFFBFFFAFBFFFE
                  F8FFFFFAFFFEFDFFF9FFFFFBF6FFFFF5FEFFFFFFFBFBFFFEEBFBFFDCF7FFD1FA
                  FFC8F9FFB9F0FFB1ECFFAEEDFFB2F1FFC1F8FFCCFAFFDEFCFFECFCFFFBFCFFFF
                  FEFFFFFFFBFFFFF8FFFFFBFFFEFAFFFFFFFFFFFFFDFFFFFBFDFD}
              end
              object CKFixedFisrtDate: TCheckBox
                Left = 471
                Top = 8
                Width = 114
                Height = 17
                Caption = '1st Plan'
                TabOrder = 5
              end
            end
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 65
              Width = 596
              Height = 406
              Align = alClient
              DataSource = DS3
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
              ReadOnly = True
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'XH'
                  Footers = <>
                  Title.Caption = 'NO.'
                  Width = 26
                end
                item
                  EditButtons = <>
                  FieldName = 'DepName'
                  Footers = <>
                  Width = 108
                end
                item
                  EditButtons = <>
                  FieldName = 'DDBH'
                  Footer.FieldName = 'DDBH'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Width = 77
                end
                item
                  EditButtons = <>
                  FieldName = 'PlanDate'
                  Footers = <>
                  Width = 72
                end
                item
                  EditButtons = <>
                  FieldName = 'PlanEDate'
                  Footers = <>
                  Width = 77
                end
                item
                  EditButtons = <>
                  FieldName = 'ShipDate'
                  Footers = <>
                  Width = 71
                end
                item
                  EditButtons = <>
                  FieldName = 'BUYNO'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Style'
                  Footers = <>
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'Article'
                  Footers = <>
                  Width = 68
                end
                item
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footer.FieldName = 'Pairs'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 53
                end
                item
                  EditButtons = <>
                  FieldName = 'DAOMH'
                  Footers = <>
                  Width = 96
                end
                item
                  EditButtons = <>
                  FieldName = 'Cycle'
                  Footers = <>
                  Width = 43
                end
                item
                  EditButtons = <>
                  FieldName = 'PlanQty'
                  Footer.FieldName = 'PlanQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 65
                end
                item
                  EditButtons = <>
                  FieldName = 'XTMH'
                  Footers = <>
                  Width = 70
                end
                item
                  EditButtons = <>
                  FieldName = 'OKDate'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DDGB'
                  Footers = <>
                  Width = 37
                end
                item
                  EditButtons = <>
                  FieldName = 'Xuong'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ProdQty'
                  Footer.FieldName = 'ProdQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 58
                end
                item
                  EditButtons = <>
                  FieldName = 'LackQty'
                  Footer.FieldName = 'LackQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 61
                end>
            end
          end
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'Sequence'
      ImageIndex = 1
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 549
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object Splitter4: TSplitter
          Left = 201
          Top = 1
          Height = 547
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 200
          Height = 547
          Align = alLeft
          TabOrder = 0
          object TreeView1: TTreeView
            Left = 1
            Top = 1
            Width = 198
            Height = 545
            Align = alClient
            Images = ImageList
            Indent = 19
            TabOrder = 0
            OnMouseDown = TreeView1MouseDown
          end
        end
        object Panel12: TPanel
          Left = 204
          Top = 1
          Width = 1067
          Height = 547
          Align = alClient
          TabOrder = 1
          object Panel13: TPanel
            Left = 1
            Top = 1
            Width = 1057
            Height = 64
            Align = alTop
            TabOrder = 0
            object LeanLabel1: TLabel
              Left = 169
              Top = 23
              Width = 198
              Height = 24
              AutoSize = False
              Caption = 'Lean'#32218
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BC4: TBitBtn
              Left = 8
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BC4Click
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
            object BC5: TBitBtn
              Left = 56
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = BC5Click
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
            object BC6: TBitBtn
              Left = 104
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BC6Click
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
          end
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 65
            Width = 1057
            Height = 474
            Align = alClient
            DataSource = DS4
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = DBGridEh4GetCellParams
            OnMouseDown = DBGridEh4MouseDown
            OnMouseUp = DBGridEh4MouseUp
            Columns = <
              item
                EditButtons = <>
                FieldName = 'XH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'NO.'
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'DepName'
                Footers = <>
                ReadOnly = True
                Width = 114
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footer.FieldName = 'DDBH'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'PlanDate'
                Footers = <>
                ReadOnly = True
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'PlanEDate'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                ReadOnly = True
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = 'BUYNO'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'Style'
                Footers = <>
                ReadOnly = True
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                ReadOnly = True
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.FieldName = 'Pairs'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                ReadOnly = True
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'Cycle'
                Footers = <>
                ReadOnly = True
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'PlanQty'
                Footer.FieldName = 'PlanQty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'XTMH'
                Footers = <>
                ReadOnly = True
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'OKDate'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'DDGB'
                Footers = <>
                ReadOnly = True
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'Xuong'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'ProdQty'
                Footer.FieldName = 'ProdQty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'LackQty'
                Footer.FieldName = 'LackQty'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'ROrder'
                Footers = <>
                Width = 44
              end>
          end
        end
      end
    end
    object TS3: TTabSheet
      Caption = 'Report'
      ImageIndex = 2
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 300
          Top = 10
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 3
          Top = 42
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DepName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 211
          Top = 42
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 184
          Top = 10
          Width = 17
          Height = 16
          Caption = 'To'
        end
        object Label14: TLabel
          Left = 0
          Top = 11
          Width = 88
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PlanDate:'
        end
        object DDBHEdit2: TEdit
          Left = 390
          Top = 7
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BDepNMEdit2: TEdit
          Left = 93
          Top = 39
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ArticleEdit2: TEdit
          Left = 309
          Top = 39
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 426
          Top = 36
          Width = 78
          Height = 30
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button3Click
        end
        object DTP1: TDateTimePicker
          Left = 92
          Top = 8
          Width = 89
          Height = 24
          Date = 39783.568310717590000000
          Format = 'yyyy/MM/dd'
          Time = 39783.568310717590000000
          TabOrder = 4
        end
        object DTP2: TDateTimePicker
          Left = 212
          Top = 8
          Width = 89
          Height = 24
          Date = 39783.569282222220000000
          Format = 'yyyy/MM/dd'
          Time = 39783.569282222220000000
          TabOrder = 5
        end
        object Button4: TButton
          Left = 519
          Top = 36
          Width = 82
          Height = 30
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button4Click
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 73
        Width = 1272
        Height = 476
        Align = alClient
        DataSource = DS5
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'DepNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'PlanDateA'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanEDateA'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PRDateA'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'OKDateA'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanQtyA'
            Footer.FieldName = 'PlanQtyA'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'LackQtyA'
            Footer.FieldName = 'LackQtyA'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'PlanDateS'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanEDateS'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PRDateS'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'OKDateS'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanQtyS'
            Footer.FieldName = 'PlanQtyS'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LackQtyS'
            Footer.FieldName = 'LackQtyS'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'PlanDateC'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanEDateC'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PRDateC'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'OKDateC'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PlanQtyC'
            Footer.FieldName = 'PlanQtyC'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LackQtyC'
            Footer.FieldName = 'LackQtyC'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'DDGB'
            Footers = <>
            Width = 53
          end>
      end
    end
  end
  object DDZLQry: TQuery
    BeforeScroll = DDZLQryBeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select DDZL.BUYNO,DDZL.XieXing,DDZL.SheHao,Count(DDZL.DDBH) as O' +
        'rderCount,DDZL.Article,Sum(Pairs) as Pairs,Max(SMDD.Qty) as Qty,' +
        'Max(IsNull(SCXXCL.IEQty,1.0)) as IEQty,Round(Sum(Pairs)/Max(Conv' +
        'ert(float,IsNull(SCXXCL.IEQty,1.0))),2)  as TotalHours '
      'from DDZL'
      
        'left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)a' +
        's IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Conver' +
        't(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH'
      
        '            from SCXXCL where BZLB='#39'3'#39' group by xiexing,shehao) ' +
        'SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.she' +
        'hao'
      
        'left join (Select SMDD.YSBH ,Sum(SMDD.Qty) as Qty,Max(DepNO) as ' +
        'DepNO from SMDD,DDZL where SMDD.GXLB='#39'A'#39' and DDZL.DDBH=SMDD.YSBH' +
        ' '
      '            and DDZL.BUYNO like '#39'202106%'#39' '
      
        '          and SMDD.RDepNO is not null Group by SMDD.YSBH) SMDD o' +
        'n SMDD.YSBH=DDZL.DDBH'
      'where DDZL.DDZT='#39'Y'#39' '
      '  and DDZL.BUYNO like '#39'202106%'#39' '
      'Group by DDZL.BUYNO,DDZL.XieXing,DDZL.SheHao,DDZL.Article'
      '')
    Left = 115
    Top = 108
    object DDZLQryBUYNO: TStringField
      DisplayWidth = 10
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object DDZLQryXieXing: TStringField
      DisplayWidth = 12
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLQrySheHao: TStringField
      DisplayWidth = 5
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLQryArticle: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLQryPairs: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object DDZLQryQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'Qty'
    end
    object DDZLQryIEQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'IEQty'
    end
    object DDZLQryOrderCount: TIntegerField
      FieldName = 'OrderCount'
    end
    object DDZLQryTotalHours: TFloatField
      DisplayWidth = 10
      FieldName = 'TotalHours'
    end
  end
  object DS1: TDataSource
    DataSet = DDZLQry
    Left = 114
    Top = 141
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 80
    Top = 110
  end
  object SMDDQry: TQuery
    AfterOpen = SMDDQryAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as Plan' +
        'Date,DDZL.DDBH,DDZL.ShipDate, DDZL.BUYNO, SCXXDV.Style,DDZL.Arti' +
        'cle,DDZL.Pairs,XXZL.DAOMH'
      
        '   ,Convert(Varchar,Min(SMDD.XH))+'#39'-'#39'+Convert(Varchar,Max(SMDD.X' +
        'H)) as Cycle'
      '   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH '
      
        '   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +'#39'/'#39'+CONVERT(varchar(' +
        '2),DAY(SMDD.OKDate)) as OKDate'
      
        '   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as Prod' +
        'Qty    '
      
        '   ,case when (IsNull(Sum(SCBBS.Qty),0)-sum(SMDD.Qty))>=0 then 0' +
        ' else IsNull(Sum(SCBBS.Qty),0) -sum(SMDD.Qty) end as LackQty '
      ' from DDZL   '
      ' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = '#39'A'#39' '
      
        ' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao '
      
        ' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheH' +
        'ao=DDZL.SheHao  '
      ' Left join BDepartment on BDepartment.ID=SMDD.DepNo  '
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'A'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  '
      ' where DDZL.Article=:Article '
      '  and DDZL.BUYNO like '#39'202201%'#39' '
      
        ' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate' +
        ',DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,'
      
        '          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMD' +
        'D.OKDate '
      ' order by DDZL.Article,BDepartment.DepName,SMDD.Plandate')
    UpdateObject = UpSMDD
    Left = 347
    Top = 260
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end>
    object SMDDQryDepName: TStringField
      DisplayWidth = 19
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDQryDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object SMDDQryPlanDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PlanDate'
    end
    object SMDDQryBUYNO: TStringField
      DisplayWidth = 10
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object SMDDQryDDBH: TStringField
      DisplayWidth = 15
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDQryShipDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ShipDate'
    end
    object SMDDQryStyle: TStringField
      DisplayWidth = 15
      FieldName = 'Style'
      FixedChar = True
      Size = 15
    end
    object SMDDQryArticle: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDQryPairs: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object SMDDQryDAOMH: TStringField
      DisplayWidth = 30
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object SMDDQryCycle: TStringField
      DisplayWidth = 61
      FieldName = 'Cycle'
      FixedChar = True
      Size = 61
    end
    object SMDDQryPlanQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'PlanQty'
    end
    object SMDDQryXTMH: TStringField
      DisplayWidth = 30
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object SMDDQryOKDate: TStringField
      DisplayWidth = 5
      FieldName = 'OKDate'
      FixedChar = True
      Size = 5
    end
    object SMDDQryDDGB: TStringField
      DisplayWidth = 4
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object SMDDQryXuong: TStringField
      DisplayWidth = 3
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object SMDDQryProdQty: TIntegerField
      FieldName = 'ProdQty'
    end
    object SMDDQryLackQty: TIntegerField
      FieldName = 'LackQty'
    end
  end
  object DS2: TDataSource
    DataSet = SMDDQry
    Left = 346
    Top = 293
  end
  object UpSMDD: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  DepNO = :DepNO,'
      '  RDepNO = :DepNO,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB ')
    InsertSQL.Strings = (
      'insert into SMDD'
      '  (DepNO, PlanDate, PlanEdate)'
      'values'
      '  (:DepNO, :PlanDate, :PlanEdate)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 346
    Top = 325
  end
  object ImageList: TImageList
    Left = 484
    Top = 129
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000005343330043312000A49D
      950043322000A199900046372600534333005343330053433300534333005343
      3300534333005343330043312000C7C2BD00FBFCFFFFFFFEFFFFFAFEF2FFFDFF
      FCFFF7FAFEFFFDFFFFFFFAFEFFFFF9FEFFFFFFFFFFFFF7FEF9FFFAFFFEFFFFFF
      FEFFFFFFFBFFFFFEFFFFFFFDFEFFFEFDFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005748380054443400412F1E00A199
      92002D1A0700988F850046362600544434005444340054443400544434005444
      3400544434005444340043322100C8C3BD00F9FBFBFFFEFDFFFFFFFEFDFFFFFD
      FFFFFFFEF9FFFFFFDBFFFFFFB1FFFFE284FFFFEE93FFFFFFD1FFFFFFEEFFFFFC
      FFFFFFFFFBFFF9FFFAFFF3F1F7FFF9FFF6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005748380053433300473624009E94
      8C00AAA19900B1ABA40045352300544434005344330053433300544334005443
      3300534333005343330043312000C8C3BD00FFFFF9FFFCFEFEFFF8FCFFFFFFFF
      ECFFDBBA45FFE0B419FFECB915FFEDB70CFFF1BA11FFDFB20DFFCEAA20FFFFFF
      BAFFFFFFFBFFFAF7F2FFFFFDFFFFFFFFFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000057493900493626004F3F2F004130
      1F003E2B1B0046352500503F3000483726004A3827004F3E2F00483627004937
      26004F3F30004E3D2F003B291700C7C3BC00FDFDFDFFFDFFFEFFFFFFDEFFD4A8
      19FFEEBF09FFEDBF00FFEBBE00FFF3C100FFEDBF00FFF3C006FFEFBB00FFE0B2
      11FFF6D77AFFFFFFF9FFFDFFFFFFFDFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000402F1F00D0CCC700847B7000C5BF
      BA00A3999000897F7300898075009B928B00C9C5C000857A6E00C1BDB700A49D
      9700867C7000A39A920074665B00C2BCB600FFFDFFFFFFFFECFFC4A42DFFEAB6
      0FFFF5BE01FFF3BB08FFE0B909FFECBE00FFE8BB00FFEFBC02FFF0BF00FFEFBC
      02FFDFB50EFFFFFFBAFFFBFEFFFFFDFFFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000402F1D00C3BFB900988D8500BFBA
      B4008C8177009B9288009C938A00867A7000C8C2BC00978E8400B5AFA900968C
      8400998F8500AEA69F0062534700C1BCB600FFFFF8FFFFFAB6FFEAB812FFFFEB
      58FFF5C005FFE6B406FFFFE34BFFF2BB00FFF9C207FFF1BB02FFEFB601FFEEB8
      00FFEEC101FFC8A71CFFFFFFF0FFFFFDFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006052430057463700645547006051
      44006454470054453600645547006B5C4F005F50420062534600564435006959
      4B00645547006253450061514200C9C5C000FFFFF1FFBFA22FFFEFBC02FFFFEF
      5EFFE3B805FFE8B608FFFFE05FFFE2AF19FFDBB01BFFDAAC18FFE1AE18FFD9B0
      13FFF2BC03FFDAB114FFFFFFD0FFFAFFFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00B0ABA20074695C00786B
      5E0099908800E6E5E200594A3C00716557007B6F620075695D00E5E4E100584A
      3C00726658007B7063006C5E5300FFFFFF00FFFFEDFFD6B228FFECB700FFEBB3
      14FFFCDC53FFFDDA62FFE4C246FFF1D664FFEACF5CFFECCF66FFFFE26FFFE6B6
      18FFEDBB00FFE7B90EFFFFED99FFFBFEFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00958C82003D2A18004432
      20006C5F4F00FFFFFF00FFFFFF0090867D00301D0A002B170300FFFFFF00FFFF
      FF008E8177002F1D0A002D190700FFFFFF00FFFFE2FFCFAB21FFF0BA00FFEEB5
      06FFD5B020FFD6A91CFFFADA63FFE5BA17FFE2B910FFDDB417FFFFFC87FFFFFD
      75FFE1BC0EFFDFB808FFFFE589FFFFFFFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF009D958C00766D6400685D
      530098908A00FFFFFF00F6F6F600FFFFFF00FFFFFF009C938D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00887F7700FFFFFF00FFFFEAFFCCA32FFFF0B603FFF1BE
      21FFF4D659FFFFDB52FFFFFFAFFFE0B520FFDAAB21FFD2AC26FFEAC53FFFFFDE
      64FFE4B712FFE5B510FFFFFFB6FFFFFFFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00A69D970064564A006052
      460093898100FFFFFF00FBFBFB00FBFBFB00FCFCFC00FFFFFF00F9F9F900FFFE
      FF00FEFFFE00FFFFFF00FFFFFF00FEFEFE00FFFFF5FFDBC167FFF2B902FFECB8
      0DFFFFF363FFFFF25CFFE7B312FFE7B410FFFFE056FFFFE463FFFFEF6FFFFFF8
      78FFEDB901FFD8B216FFFFFFE3FFFFFDFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CCC7C400534535003D2A
      1800978E8400FFFFFF00FDFCFC00FBFBFB00FEFEFE00FCFCFC00FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFCFFFFFFDFFFDAB017FFE9BC
      00FFF2BF0BFFECBA09FFF1BB02FFEFB900FFE6B912FFFFF86AFFFFFC6DFFE7B3
      13FFE9B907FFDBC047FFFDFDF7FFFBFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C8C4BF0097908E006156
      4A00DBDBDB00FFFFFF00FAFAFA00FCFCFC00F9F9F900FBFBFB00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFCFFFFFEFBFFFBEAA1FFECBA
      0EFFECBD00FFF0C000FFE9BA00FFE9BC00FFEFBC01FFE9BA0AFFE8B802FFEEBB
      07FFCAA91EFFFFFFE4FFF8FCFFFFFAFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C8C1BD00665A4E008A83
      7D00DAD8D700FFFFFF00FDFDFD00FCFCFC00FDFDFD00FBFBFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFDF9FFFAFFFBFFFEFEF2FFFDE8
      A4FFDCB015FFF1BA00FFF3BD04FFF0BA01FFEBBA00FFE8BF00FFEDB908FFC6A5
      30FFFFFFE4FFFFFFFCFFFEFDFFFFFFFEFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F0F0F0008D8682003522
      0F00C8C4C000FFFFFF00FBFBFB00FCFCFC00F8F8F800FBFBFB00FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9FAFEFFFBF7FCFFFFFFFFFFFFFB
      F2FFFFFFE2FFDBC474FFCDA72BFFDEAC24FFCCA524FFC6A63BFFFFF9C2FFFFFF
      F0FFFFFFFCFFFFFDFCFFFFFFFCFFFFFEFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00ECEAE9002E190700402E
      1C00C6C0BC00FFFFFF00FEFEFE00FAFAFA00FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFEFFFAFFFDFBFBFFFFFD
      FDFFFDFFFEFFFFFFF4FFFFFFF1FFFFFFE3FFFFFFE8FFFFFFF2FFFFFFF8FFFDFE
      FAFFFFFDFFFFFDFFFFFFF8FEF9FFFFFDFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object SMDDSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ('
      
        'Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsN' +
        'ull(SMDD.PlanDate,Convert(datetime,'#39'2050/12/31'#39')) asc) as XH fro' +
        'm ('
      
        'select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as Plan' +
        'Date,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, D' +
        'DZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH'
      
        '   ,Convert(Varchar,Min(SMDD.XH))+'#39'-'#39'+Convert(Varchar,Max(SMDD.X' +
        'H)) as Cycle'
      '   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH '
      
        '   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +'#39'/'#39'+CONVERT(varchar(' +
        '2),DAY(SMDD.OKDate)) as OKDate'
      
        '   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as Prod' +
        'Qty    '
      
        '   ,case when (IsNull(Sum(SCBBS.Qty),0)-DDZL.Pairs)>=0 then 0 el' +
        'se IsNull(Sum(SCBBS.Qty),0) -DDZL.Pairs end as LackQty '
      '   ,Max(SMDD.ROrder) as ROrder '
      ' from DDZL   '
      ' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = '#39'A'#39' '
      
        ' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao '
      
        ' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheH' +
        'ao=DDZL.SheHao  '
      ' Left join BDepartment on BDepartment.ID=SMDD.DepNo  '
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'A'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  '
      ' where 1=1 '
      ' and  BDepartment.DepName='#39'A07_LEAN01_G'#39' '
      
        ' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate' +
        ',DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,'
      
        '          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMD' +
        'D.OKDate ) SMDD '
      'where LackQty<0 ) SMDD '
      ' order by SMDD.XH')
    Left = 539
    Top = 260
    object SMDDSQryXH: TFloatField
      FieldName = 'XH'
    end
    object StringField1: TStringField
      DisplayWidth = 19
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDSQryDepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object StringField3: TStringField
      DisplayWidth = 15
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PlanDate'
    end
    object SMDDSQryPlanEDate: TDateTimeField
      FieldName = 'PlanEDate'
    end
    object DateTimeField2: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ShipDate'
    end
    object StringField4: TStringField
      DisplayWidth = 10
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField5: TStringField
      DisplayWidth = 15
      FieldName = 'Style'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object StringField7: TStringField
      DisplayWidth = 30
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object StringField8: TStringField
      DisplayWidth = 61
      FieldName = 'Cycle'
      FixedChar = True
      Size = 61
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 10
      FieldName = 'PlanQty'
    end
    object StringField9: TStringField
      DisplayWidth = 30
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object StringField10: TStringField
      DisplayWidth = 5
      FieldName = 'OKDate'
      FixedChar = True
      Size = 5
    end
    object StringField11: TStringField
      DisplayWidth = 4
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object StringField12: TStringField
      DisplayWidth = 3
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object SMDDSQryProdQty: TIntegerField
      FieldName = 'ProdQty'
    end
    object SMDDSQryLackQty: TIntegerField
      FieldName = 'LackQty'
    end
    object SMDDSQryROrder: TIntegerField
      FieldName = 'ROrder'
    end
  end
  object DS3: TDataSource
    DataSet = SMDDSQry
    Left = 538
    Top = 293
  end
  object CalPlanQry: TQuery
    DatabaseName = 'DB'
    Left = 504
    Top = 260
  end
  object SCRLQry: TQuery
    DatabaseName = 'DB'
    Left = 504
    Top = 293
  end
  object ROrderQry: TQuery
    AfterOpen = ROrderQryAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ('
      
        'Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsN' +
        'ull(SMDD.PlanDate,Convert(datetime,'#39'2050/12/31'#39')) asc) as XH fro' +
        'm ('
      
        'select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as Plan' +
        'Date,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, D' +
        'DZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH'
      
        '   ,Convert(Varchar,Min(SMDD.XH))+'#39'-'#39'+Convert(Varchar,Max(SMDD.X' +
        'H)) as Cycle'
      '   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH '
      
        '   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +'#39'/'#39'+CONVERT(varchar(' +
        '2),DAY(SMDD.OKDate)) as OKDate'
      
        '   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as Prod' +
        'Qty    '
      
        '   ,case when (IsNull(Sum(SCBBS.Qty),0)-DDZL.Pairs)>=0 then 0 el' +
        'se IsNull(Sum(SCBBS.Qty),0) -DDZL.Pairs end as LackQty '
      '   ,Max(SMDD.ROrder) as ROrder '
      ' from DDZL   '
      ' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = '#39'A'#39' '
      
        ' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao '
      
        ' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheH' +
        'ao=DDZL.SheHao  '
      ' Left join BDepartment on BDepartment.ID=SMDD.DepNo  '
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'A'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  '
      ' where 1=2 '
      ' and  BDepartment.DepName='#39'A07_LEAN01_G'#39' '
      
        ' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate' +
        ',DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,'
      
        '          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMD' +
        'D.OKDate ) SMDD '
      'where LackQty<0 ) SMDD '
      ' order by SMDD.XH'
      '')
    UpdateObject = UpdROrder
    Left = 619
    Top = 260
    object FloatField4: TFloatField
      FieldName = 'XH'
    end
    object StringField2: TStringField
      DisplayWidth = 19
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object StringField14: TStringField
      DisplayWidth = 15
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PlanDate'
    end
    object ROrderQryPlanEDate: TDateTimeField
      FieldName = 'PlanEDate'
    end
    object DateTimeField4: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ShipDate'
    end
    object StringField15: TStringField
      DisplayWidth = 10
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField16: TStringField
      DisplayWidth = 15
      FieldName = 'Style'
      FixedChar = True
      Size = 15
    end
    object StringField17: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object IntegerField3: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object StringField18: TStringField
      DisplayWidth = 30
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object StringField19: TStringField
      DisplayWidth = 61
      FieldName = 'Cycle'
      FixedChar = True
      Size = 61
    end
    object IntegerField4: TIntegerField
      DisplayWidth = 10
      FieldName = 'PlanQty'
    end
    object StringField20: TStringField
      DisplayWidth = 30
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object StringField21: TStringField
      DisplayWidth = 5
      FieldName = 'OKDate'
      FixedChar = True
      Size = 5
    end
    object StringField22: TStringField
      DisplayWidth = 4
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object StringField23: TStringField
      DisplayWidth = 3
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object ROrderQryProdQty: TIntegerField
      FieldName = 'ProdQty'
    end
    object ROrderQryLackQty: TIntegerField
      FieldName = 'LackQty'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ROrder'
    end
  end
  object DS4: TDataSource
    DataSet = ROrderQry
    Left = 618
    Top = 293
  end
  object UpdROrder: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  DepNO = :DepNO,'
      '  RDepNO = :DepNO,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB ')
    InsertSQL.Strings = (
      'insert into SMDD'
      '  (DepNO, PlanDate, PlanEdate)'
      'values'
      '  (:DepNO, :PlanDate, :PlanEdate)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 618
    Top = 325
  end
  object ROrderTQry: TQuery
    CachedUpdates = True
    AfterOpen = ROrderQryAfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ('
      
        'Select *,ROW_NUMBER() over (PARTITION BY SMDD.DepNo ORDER BY IsN' +
        'ull(SMDD.PlanDate,Convert(datetime,'#39'2050/12/31'#39')) asc) as XH fro' +
        'm ('
      
        'select BDepartment.DepName,SMDD.DepNo,Min(SMDD.Plandate) as Plan' +
        'Date,MAX(SMDD.PlanEDate) as PlanEDate,DDZL.DDBH,DDZL.ShipDate, D' +
        'DZL.BUYNO, SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH'
      
        '   ,Convert(Varchar,Min(SMDD.XH))+'#39'-'#39'+Convert(Varchar,Max(SMDD.X' +
        'H)) as Cycle'
      '   ,sum(SMDD.Qty) PlanQty ,XXZL.XTMH '
      
        '   ,CONVERT(varchar(2),MONTH(SMDD.OKDate)) +'#39'/'#39'+CONVERT(varchar(' +
        '2),DAY(SMDD.OKDate)) as OKDate'
      
        '   ,DDZL.DDGB,BDepartment.Xuong,IsNull(Sum(SCBBS.Qty),0) as Prod' +
        'Qty    '
      
        '   ,case when (IsNull(Sum(SCBBS.Qty),0)-DDZL.Pairs)>=0 then 0 el' +
        'se IsNull(Sum(SCBBS.Qty),0) -DDZL.Pairs end as LackQty '
      '   ,Max(SMDD.ROrder) as ROrder '
      ' from DDZL   '
      ' left join SMDD on SMDD.YSBH=DDZL.DDBH   and SMDD.GXLB = '#39'A'#39' '
      
        ' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao '
      
        ' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheH' +
        'ao=DDZL.SheHao  '
      ' Left join BDepartment on BDepartment.ID=SMDD.DepNo  '
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'A'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH  '
      ' where 1=2 '
      ' and  BDepartment.DepName='#39'A07_LEAN01_G'#39' '
      
        ' group by BDepartment.DepName,SMDD.DepNo,DDZL.DDBH,DDZL.ShipDate' +
        ',DDZL.BUYNO,SCXXDV.Style,DDZL.Article,DDZL.Pairs,'
      
        '          XXZL.DAOMH,XXZL.XTMH ,DDZL.DDGB,BDepartment.Xuong ,SMD' +
        'D.OKDate ) SMDD '
      'where LackQty<0 ) SMDD '
      ' order by SMDD.XH'
      '')
    UpdateObject = UpdROrderT
    Left = 651
    Top = 260
    object FloatField7: TFloatField
      FieldName = 'XH'
    end
    object StringField24: TStringField
      DisplayWidth = 19
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object StringField25: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 10
    end
    object StringField26: TStringField
      DisplayWidth = 15
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DateTimeField5: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PlanDate'
    end
    object ROrderTQryPlanEDate: TDateTimeField
      FieldName = 'PlanEDate'
    end
    object DateTimeField6: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ShipDate'
    end
    object StringField27: TStringField
      DisplayWidth = 10
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField28: TStringField
      DisplayWidth = 15
      FieldName = 'Style'
      FixedChar = True
      Size = 15
    end
    object StringField29: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object StringField30: TStringField
      DisplayWidth = 30
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object StringField31: TStringField
      DisplayWidth = 61
      FieldName = 'Cycle'
      FixedChar = True
      Size = 61
    end
    object IntegerField7: TIntegerField
      DisplayWidth = 10
      FieldName = 'PlanQty'
    end
    object StringField32: TStringField
      DisplayWidth = 30
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object StringField33: TStringField
      DisplayWidth = 5
      FieldName = 'OKDate'
      FixedChar = True
      Size = 5
    end
    object StringField34: TStringField
      DisplayWidth = 4
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object StringField35: TStringField
      DisplayWidth = 3
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object ROrderTQryProdQty: TIntegerField
      FieldName = 'ProdQty'
    end
    object ROrderTQryLackQty: TIntegerField
      FieldName = 'LackQty'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ROrder'
    end
  end
  object UpdROrderT: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  DepNO = :DepNO,'
      '  RDepNO = :DepNO,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB ')
    InsertSQL.Strings = (
      'insert into SMDD'
      '  (DepNO, PlanDate, PlanEdate)'
      'values'
      '  (:DepNO, :PlanDate, :PlanEdate)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 650
    Top = 293
  end
  object SMDDRptQry: TQuery
    BeforeScroll = DDZLQryBeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select BDepartment.DepName, SMDDA.DepNO,SMDDA.DDBH,DDZL.ARTICLE,' +
        'DDZL.Pairs'
      
        '       ,SMDDA.PlanDate as PlanDateA,SMDDA.PlanEDate as PlanEDate' +
        'A, SMDDA.PRDate as PRDateA,SMDDA.OKDate as OKDateA,SMDDA.PlanQty' +
        ' as PlanQtyA,SMDDA.ProdQty-SMDDA.PlanQty as LackQtyA  '
      
        '       ,SMDDS.PlanDate as PlanDateS,SMDDS.PlanEDate as PlanEDate' +
        'S, SMDDS.PRDate as PRDateS,SMDDS.OKDate as OKDateS,SMDDS.PlanQty' +
        ' as PlanQtyS,SMDDS.ProdQty-SMDDS.PlanQty as LackQtyS   '
      
        '       ,SMDDC.PlanDate as PlanDateC,SMDDC.PlanEDate as PlanEDate' +
        'C, SMDDC.PRDate as PRDateC,SMDDC.OKDate as OKDateC,SMDDC.PlanQty' +
        ' as PlanQtyC,SMDDC.ProdQty-SMDDC.PlanQty as LackQtyC  '
      '       ,DDZL.ShipDate,DDZL.DDGB       '
      ' from ('
      
        ' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(' +
        'SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD' +
        '.OKdate) as OKDate'
      
        '       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQt' +
        'y,BDepartment.sumline '
      ' from DDZL   '
      
        ' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = '#39'A'#39 +
        ' '
      ' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo'
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'A'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    '
      ' where 1=1 '
      
        '        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)' +
        ') between '
      '        '#39'2022/01/27'#39' and '#39'2022/02/10'#39
      ' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline  ) SMDDA'
      ' Left join ('
      
        ' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(' +
        'SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD' +
        '.OKdate) as OKDate'
      
        '       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQt' +
        'y,BDepartment.sumline '
      ' from DDZL   '
      
        ' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = '#39'S'#39 +
        ' '
      ' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo'
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'S'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    '
      ' where 1=1 '
      
        '        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)' +
        ') between '
      '        '#39'2022/01/27'#39' and '#39'2022/02/10'#39
      
        ' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline ) SMDDS on SM' +
        'DDA.sumline=SMDDS.sumline and SMDDA.DDBH=SMDDS.DDBH'
      ' Left join ('
      
        ' select SMDD.DepNo,DDZL.DDBH,Min(SMDD.Plandate) as PlanDate,MAX(' +
        'SMDD.PlanEDate) as PlanEDate,MIN(SMDD.PRdate) as PRDate,MAX(SMDD' +
        '.OKdate) as OKDate'
      
        '       ,sum(SMDD.Qty) PlanQty,IsNull(Sum(SCBBS.Qty),0) as ProdQt' +
        'y,BDepartment.sumline '
      ' from DDZL   '
      
        ' left join SMDD SMDD on SMDD.YSBH=DDZL.DDBH  and SMDD.GXLB = '#39'C'#39 +
        ' '
      ' Left join BDepartment BDepartment on BDepartment.ID=SMDD.DepNo'
      ' Left join (  '
      '    Select DDBH,Sum(Qty*okCTS) as Qty from SMDDSS  '
      '    where SMDDSS.GXLB = '#39'C'#39' '
      '    Group by DDBH   '
      ' ) SCBBS on SCBBS.DDBH=SMDD.DDBH    '
      ' where 1=1 '
      
        '        and convert(smalldatetime,convert(varchar,SMDD.PlanDate)' +
        ') between '
      '        '#39'2022/01/27'#39' and '#39'2022/02/10'#39
      
        ' Group by SMDD.DepNo,DDZL.DDBH,BDepartment.sumline ) SMDDC on SM' +
        'DDA.sumline=SMDDC.sumline and SMDDA.DDBH=SMDDC.DDBH'
      ' Left join DDZL on DDZL.DDBH=SMDDA.DDBH'
      ' Left join BDepartment on BDepartment.ID=SMDDA.DepNO'
      'where 1=1')
    Left = 723
    Top = 260
    object SMDDRptQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDRptQryDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMDDRptQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDRptQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object SMDDRptQryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object SMDDRptQryPlanDateA: TDateTimeField
      FieldName = 'PlanDateA'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanEDateA: TDateTimeField
      FieldName = 'PlanEDateA'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPRDateA: TDateTimeField
      FieldName = 'PRDateA'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryOKDateA: TDateTimeField
      FieldName = 'OKDateA'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanQtyA: TIntegerField
      FieldName = 'PlanQtyA'
    end
    object SMDDRptQryLackQtyA: TIntegerField
      FieldName = 'LackQtyA'
    end
    object SMDDRptQryPlanDateS: TDateTimeField
      FieldName = 'PlanDateS'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanEDateS: TDateTimeField
      FieldName = 'PlanEDateS'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPRDateS: TDateTimeField
      FieldName = 'PRDateS'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryOKDateS: TDateTimeField
      FieldName = 'OKDateS'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanQtyS: TIntegerField
      FieldName = 'PlanQtyS'
    end
    object SMDDRptQryLackQtyS: TIntegerField
      FieldName = 'LackQtyS'
    end
    object SMDDRptQryPlanDateC: TDateTimeField
      FieldName = 'PlanDateC'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanEDateC: TDateTimeField
      FieldName = 'PlanEDateC'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPRDateC: TDateTimeField
      FieldName = 'PRDateC'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryOKDateC: TDateTimeField
      FieldName = 'OKDateC'
      DisplayFormat = 'YY/MM/DD'
    end
    object SMDDRptQryPlanQtyC: TIntegerField
      FieldName = 'PlanQtyC'
    end
    object SMDDRptQryLackQtyC: TIntegerField
      FieldName = 'LackQtyC'
    end
    object SMDDRptQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SMDDRptQryDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
  end
  object DS5: TDataSource
    DataSet = SMDDRptQry
    Left = 722
    Top = 293
  end
end
