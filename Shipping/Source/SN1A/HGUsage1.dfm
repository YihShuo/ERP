object HGUsage: THGUsage
  Left = 389
  Top = 175
  Width = 783
  Height = 533
  Caption = 'Hai Quan Usage'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 775
    Height = 502
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChanging = PC1Changing
    object TabSheet1: TTabSheet
      Caption = 'Order'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 466
        Width = 767
        Height = 5
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = -20
          Top = 19
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'RY:'
        end
        object Label8: TLabel
          Left = 123
          Top = 18
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
        end
        object Label9: TLabel
          Left = 285
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ma HG:'
        end
        object DDBH_MLab: TLabel
          Left = 60
          Top = 1
          Width = 129
          Height = 20
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label1: TLabel
          Left = 405
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Ma HD:'
        end
        object RYEdit: TEdit
          Left = 38
          Top = 15
          Width = 108
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyUp = RYEditKeyUp
        end
        object Button4: TButton
          Left = 1019
          Top = 8
          Width = 86
          Height = 33
          Caption = 'Dinh Muc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 550
          Top = 7
          Width = 81
          Height = 33
          Caption = 'Ma HG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 635
          Top = 7
          Width = 89
          Height = 33
          Caption = 'Ma Vat Tu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = Button6Click
        end
        object MatEdit: TEdit
          Left = 197
          Top = 15
          Width = 108
          Height = 24
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 4
        end
        object HGEdit: TEdit
          Left = 360
          Top = 13
          Width = 62
          Height = 24
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 727
          Top = 2
          Width = 148
          Height = 41
          Caption = 'chi lenh'
          TabOrder = 6
          Visible = False
          object RB2: TRadioButton
            Left = 87
            Top = 17
            Width = 58
            Height = 17
            Caption = 'Mass'
            TabOrder = 0
          end
          object RB1: TRadioButton
            Left = 8
            Top = 17
            Width = 73
            Height = 17
            Caption = 'Shipping'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
        object CK2: TCheckBox
          Left = 879
          Top = 27
          Width = 130
          Height = 17
          Caption = 'hien thay hoa chat'
          Checked = True
          State = cbChecked
          TabOrder = 7
          Visible = False
        end
        object CK1: TCheckBox
          Left = 879
          Top = 8
          Width = 130
          Height = 17
          Caption = 'hien thay muc in'
          Checked = True
          State = cbChecked
          TabOrder = 8
          Visible = False
        end
        object HDEdit: TEdit
          Left = 480
          Top = 13
          Width = 62
          Height = 24
          TabOrder = 9
        end
        object Button2: TButton
          Left = 1115
          Top = 8
          Width = 86
          Height = 33
          Caption = 'Xuat Xu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Visible = False
          OnClick = Button2Click
        end
        object B_ImportP3: TBitBtn
          Left = 659
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Import'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = B_ImportP3Click
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
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 312
        Width = 1357
        Height = 159
        DataSource = RYDS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        PopupMenu = PopupMenu3
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Visible = False
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|ZLBH'
            Title.ToolTips = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'DType'
            Footers = <>
            Title.Caption = #21152#24037'|DType'
            Title.ToolTips = True
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.ToolTips = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.ToolTips = True
            Width = 170
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.ToolTips = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'CLSL_KT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #29992#37327'|CLSL_KT'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #29992#37327'|CLSL'
            Title.ToolTips = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'TempQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38936#26009'|TempQty'
            Title.ToolTips = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #23526#30332'|Qty'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Person'
            Footers = <>
            Title.Caption = #27604#29575'|Person'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'HG_NO'
            Footers = <>
            Title.Caption = #28023#38364'|Ma HG'
            Title.TitleButton = True
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Rate_HG'
            Footers = <>
            Title.Caption = #28023#38364#27604#29575'|HG Rate'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'TC_NO'
            Footers = <>
            Title.Caption = #20839#36914'|TC_NO'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Rate_TC'
            Footers = <>
            Title.Caption = #20839#36914#27604#29575'|TC Rate'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'HD_NO'
            Footers = <>
            Title.Caption = #32005#30332#31080'|Ma HD'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Rate_HD'
            Footers = <>
            Title.Caption = #30332#31080#27604#29575'|HD Rate'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'KD_NO'
            Footers = <>
            Title.Caption = #20195#30908'|KD_NO'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Rate_KD'
            Footers = <>
            Title.Caption = #27604#29575'|KD Rate'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'NK'
            Footers = <>
            Title.Caption = #25976#37327'|NK'
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TC'
            Footers = <>
            Title.Caption = #25976#37327'|TC'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'HD'
            Footers = <>
            Title.Caption = #25976#37327'|HD'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KD'
            Footers = <>
            Title.Caption = #25976#37327'|KD'
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'XT'
            Footers = <>
            Title.Caption = #25976#37327'|XT'
            Title.TitleButton = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'GC'
            Footers = <>
            Title.Caption = #25976#37327'|GC'
            Title.TitleButton = True
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'ZZ'
            Footers = <>
            Title.Caption = #25976#37327'|ZZ'
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Title.Caption = #25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'THQty'
            Footers = <>
            Title.Caption = #36864#24235'|THQty'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU|Article'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = #38795#21517'|XieMing'
            Title.TitleButton = True
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'CalDate'
            Footers = <>
            Title.Caption = #35336#31639#26085#26399'|CalDate'
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Title.Caption = #24288#21029'|GSBH'
            Title.TitleButton = True
            Width = 45
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 49
        Width = 767
        Height = 417
        Align = alClient
        DataSource = HGDS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh5DrawColumnCell
        OnGetCellParams = DBGridEh5GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|ZLBH'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'HG_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #28023#38364#20195#30908'|Ma HG'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'TC_NO'
            Footers = <>
            Title.Caption = #28023#38364#20195#30908'|Ma TC'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'HD_NO'
            Footers = <>
            Title.Caption = #28023#38364#20195#30908'|Ma HD'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Usage'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #28023#38364#29992#37327'|Usage'
          end
          item
            EditButtons = <>
            FieldName = 'CLSL_KT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #29992#37327'|CLSL_KT'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #29992#37327'|CLSL'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #23526#38936'|Qty'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Person_NK'
            Footers = <>
            Title.Caption = 'Loss Percent|NK'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Person_TC'
            Footers = <>
            Title.Caption = 'Loss Percent|TC'
            Width = 50
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Delivery'
      ImageIndex = 1
      TabVisible = False
      object Splitter1: TSplitter
        Left = 673
        Top = 41
        Width = 5
        Height = 430
        Color = clHotLight
        ParentColor = False
      end
      object DBGrid2: TDBGridEh
        Left = 678
        Top = 41
        Width = 89
        Height = 430
        Align = alClient
        Color = clWhite
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #26085#26399'|DATE'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Title.Caption = #30906#35469'ID|CFMID'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #39006#22411#25110#21934#20301'|Memo'
            Width = 116
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 767
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 14
          Top = 8
          Width = 91
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Material code : '
        end
        object Label6: TLabel
          Left = 232
          Top = 9
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
        end
        object Label10: TLabel
          Left = 400
          Top = 8
          Width = 20
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To'
        end
        object Label11: TLabel
          Left = 638
          Top = 9
          Width = 59
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CKBH:'
        end
        object Edit1: TEdit
          Left = 107
          Top = 4
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 0
        end
        object Button1: TButton
          Left = 786
          Top = 2
          Width = 75
          Height = 33
          Caption = 'Search'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 288
          Top = 5
          Width = 113
          Height = 24
          Date = 39289.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39289.000000000000000000
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 424
          Top = 5
          Width = 113
          Height = 24
          Date = 39289.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39289.000000000000000000
          TabOrder = 3
        end
        object CBX1: TComboBox
          Left = 700
          Top = 7
          Width = 81
          Height = 24
          ItemHeight = 0
          TabOrder = 4
        end
        object CB3: TCheckBox
          Left = 543
          Top = 9
          Width = 98
          Height = 17
          Caption = 'Confirm'
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 41
        Width = 673
        Height = 430
        Align = alLeft
        Color = clWhite
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = #24288#21830'ID|ZSBH'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #20837#24235#26085'|DATE'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Title.Caption = #30906#35469'ID|CFMID'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #39006#22411'|Memo'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'Invoice'
            Footers = <>
            Title.Caption = #30332#31080'|Invoice'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PaperNo'
            Footers = <>
            Title.Caption = #25991#20214'|PaperNo'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = #35330#21934'|ZLBH'
          end>
      end
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 129
    Top = 211
  end
  object RYDS: TDataSource
    DataSet = RYQuery
    Left = 99
    Top = 247
  end
  object RYQuery: TQuery
    OnCalcFields = RYQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2' +
        '.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.' +
        'XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,Z' +
        'LZLS2.RKQty'
      
        '       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2' +
        '.GC,ZLZLS2.ZZ,ZLZLS2.Qty'
      
        '       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNu' +
        'll(CNO_NK,CLHG.HGBH)  else null end as HG_NO '
      
        '       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNu' +
        'll(CNO_TC,CLTC.HGBH)  else null end as TC_NO '
      
        '       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNu' +
        'll(CNO_HD,CLHD.HGBH)  else null end as HD_NO'
      
        '       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then IsNu' +
        'll(CNO_KD,CLKD.HGBH)  else null end as KD_NO  '
      '       ,KCRKTH.Qty as THQty,ZLZLS2.PKNO from ('
      
        'select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLL' +
        'S.CNO_NK='#39#39' then null else CNO_NK end CNO_NK,case when KCLLS.CNO' +
        '_TC='#39#39' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='#39 +
        #39' then null else CNO_HD end CNO_HD,'
      #9'   case when KCLLS.CNO_KD='#39#39' then null else CNO_KD end CNO_KD,'
      
        '       KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) a' +
        's TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KC' +
        'LLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC' +
        ',0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsN' +
        'ull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty,KCLLS.PKNO  '
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,D' +
        'DZL.GSBH '
      '      from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH  ='#39'Y2211-0649'#39'   '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      'union all '
      
        '   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJB' +
        'H<>'#39'ZZZZZZZZZZ'#39' then A.MJBH else ZLZLS2.MJBH end as MJBH from DD' +
        'ZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH ' +
        ' ) as Parent,'#39'Gia cong'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Ar' +
        'ticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DD' +
        'ZL.GSBH '
      '    from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH  ='#39'Y2211-0649'#39'   '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.' +
        'DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      ') OrdCL'
      '  left join (  '
      
        '        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty)' +
        ' as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_' +
        'HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty)' +
        ' as RKQty,  '
      
        '                    Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Su' +
        'm(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (  '
      
        '         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, K' +
        'CLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty' +
        ',   '
      '             Sum(KCLLS.Qty) as RKQty,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty else 0 ' +
        'end ) as NK,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty else 0 ' +
        'end ) as TC,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else 0 ' +
        'end ) as HD,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else 0 ' +
        'end ) as KD,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else 0 ' +
        'end ) as GC,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else 0 ' +
        'end ) as XT,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty else ' +
        '0 end ) as ZZ,  '
      
        '             Max(Case when KCLLS.HGLB='#39'NK'#39' then case when  len(K' +
        'CLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1' +
        ') else NULL end end) as CNO_NK,'
      
        '             Max(Case when KCLLS.HGLB='#39'TC'#39' then case when  len(K' +
        'CLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1' +
        ') else NULL end end) as CNO_TC,'
      
        '             Max(Case when KCLLS.HGLB='#39'HD'#39' then case when  len(K' +
        'CLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1' +
        ') else NULL end end) as CNO_HD,'
      
        '             Max(Case when KCLLS.HGLB='#39'KD'#39' then case when  len(K' +
        'CLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1' +
        ') else NULL end end) as CNO_KD,'
      '             Max(KCLLS.PKNO) as PKNO '
      '  '#9#9'from (  '
      
        '  '#9#9'Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS' +
        '.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when le' +
        'n(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DType, K' +
        'CLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  '
      
        '           ,Cast((select CNO+'#39','#39' from KCLLS A where   A.CLBH=KCL' +
        'LS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'NK' +
        #39' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) a' +
        's CNO_NK '
      
        '           ,Cast((select CNO+'#39','#39' from KCLLS A where   A.CLBH=KCL' +
        'LS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'TC' +
        #39' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) a' +
        's CNO_TC '
      
        '           ,Cast((select CNO+'#39','#39'from KCLLS A where   A.CLBH=KCLL' +
        'S.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'HD'#39 +
        ' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) as' +
        ' CNO_HD '
      
        '           ,Cast((select CNO+'#39','#39'from KCLLS A where   A.CLBH=KCLL' +
        'S.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'KD'#39 +
        ' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) as' +
        ' CNO_KD'
      '           ,KCPKLL.PKNO '
      '  '#9#9'from KCLLS  '
      '          left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      
        '          Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.C' +
        'LBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.' +
        'DFL '
      '  '#9#9'     left join DDZL on DDZL.DDBH=KCLLS.SCBH  '
      '  '#9#9'     left join CLZL on CLZL.CLDH=KCLLS.CLBH'#9#9'     '
      '  '#9'     '#9' where  KCLLS.CLBH like '#39'%'#39' and KCLLS.Qty>0 '
      '  '#9#9#9#9'  and KCLLS.SCBH  ='#39'Y2211-0649'#39'   '
      '  '#9#9#9'   '#9'and DDZl.GSBH='#39'VA12'#39'  '
      '           and KCLL.GSBH='#39'VA12'#39' and KCLL.CFMID<>'#39'NO'#39'   '
      
        '  '#9#9') KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJB' +
        'H, KCLLS.DType  '
      '             ) KCLLS Group by SCBH,CLBH,MJBH,DType  '
      
        '            ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdC' +
        'L.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH   '
      'where 1=1 '
      'Union all '
      
        'select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLL' +
        'S.CNO_NK='#39#39' then null else CNO_NK end CNO_NK,case when KCLLS.CNO' +
        '_TC='#39#39' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='#39 +
        #39' then null else CNO_HD end CNO_HD,'
      
        '       case when KCLLS.CNO_KD='#39#39' then null else CNO_KD end CNO_K' +
        'D,'
      
        '       KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) a' +
        's TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KC' +
        'LLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC' +
        ',0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsN' +
        'ull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty '
      '       ,KCLLS.PKNO '
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,'#39 +
        'VGC'#39' as GSBH '
      '      from ZLZLS2_YM as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH  ='#39'Y2211-0649'#39'   '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      ') OrdCL'
      'left join ('
      
        '      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) a' +
        's TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD' +
        ') as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) a' +
        's RKQty,'
      
        '                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(' +
        'KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from ('
      '                  '
      
        '      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KC' +
        'LLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when' +
        ' len(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DType' +
        ', sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,'
      #9#9#9#9#9'Sum(KCLLS.Qty) as RKQty,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty else 0 end ) a' +
        's NK,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty else 0 end ) a' +
        's TC,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else 0 end ) a' +
        's HD,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else 0 end ) a' +
        's KD,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else 0 end ) a' +
        's GC,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else 0 end ) a' +
        's XT,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty else 0 end )' +
        ' as ZZ,'
      
        '         Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO end) as CN' +
        'O_NK,'
      
        '         Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO end) as CN' +
        'O_TC,'
      
        '         Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO end) as CN' +
        'O_HD,'
      
        '         Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO end) as CN' +
        'O_KD, '
      '         Max(KCPKLL.PKNO) as PKNO '
      #9#9'   from KCLLS'
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      
        '      Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=' +
        'KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL '
      #9#9'   where  KCLLS.CLBH like '#39'%'#39
      #9#9#9#9'    and KCLLS.SCBH  ='#39'Y2211-0649'#39'   '
      '           and KCLL.GSBH='#39'VGC'#39' and KCLL.CFMID<>'#39'NO'#39' '
      
        #9#9'   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 ' +
        'then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 t' +
        'hen '#39'Assembly'#39' else '#39'Gia cong'#39'  end , KCLLS.CLBH'
      '           ) KCLLS Group by SCBH,CLBH,MJBH,DType'
      
        '          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.' +
        'CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH '
      'where 1=1 '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO '
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1  ='#39'Y2211-0649'#39'   and ZLZLS3.' +
        'CQDH='#39'VR1'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL  '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR1'#39
      '                 and KCLLS.SCBH   ='#39'Y2211-0649'#39'    '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO '
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1  ='#39'Y2211-0649'#39'   and ZLZLS3.' +
        'CQDH='#39'VR2'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL  '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR2'#39
      '                 and KCLLS.SCBH   ='#39'Y2211-0649'#39'    '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO '
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1  ='#39'Y2211-0649'#39'   and ZLZLS3.' +
        'CQDH='#39'VR3'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL  '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR3'#39
      '                 and KCLLS.SCBH   ='#39'Y2211-0649'#39'    '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLL' +
        'S.CLBH else KCLLS.DFL end  as MJBH,KCLLS.CLBH as Parent,Case whe' +
        'n len(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DTyp' +
        'e,'
      
        '       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH' +
        ',sum(KCLLS.TempQty) as TemQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD ' +
        ' '
      
        '      ,sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK' +
        ',IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,I' +
        'sNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,IsN' +
        'ull(sum(KCRKCX.GC),0) as GC'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO '
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK, '
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC, '
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,  '
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH   ='#39'Y2211-0649'#39'  '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE (KCLL.GSBH ='#39'VA12'#39') and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS (s' +
        'elect CLBH,ZLBH from (SELECT CLBH,ZLBH from DDZL_ZLZLS2 as ZLZLS' +
        '2 where ZLZLS2.CLSL>0 and ZLBH  ='#39'Y2211-0649'#39'  Group by CLBH,ZLB' +
        'H) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.ZLBH=KCLLS.SCB' +
        'H ) '
      
        '   and KCLLS.SCBH   ='#39'Y2211-0649'#39'   and KCLLS.CLBH like '#39'%'#39' and ' +
        'KCLLS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,' +
        'CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,K' +
        'CLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,' +
        'sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK,IsNull' +
        '(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(s' +
        'um(KCRKCX.KD),0) as KD '
      
        '       ,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) ' +
        'as GC'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty '
      '       ,Max(KCRKCX.PKNO) as PKNO '
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH  ='#39'Y2211-0649'#39'  '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE (KCLL.GSBH ='#39'VGC'#39') and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS (se' +
        'lect CLBH from (SELECT CLBH from ZLZLS2_YM ZLZLS2 where ZLZLS2.C' +
        'LSL>0 and ZLBH  ='#39'Y2211-0649'#39'  Group by CLBH) ZLZLS2 where ZLZLS' +
        '2.CLBH=KCLLS.CLBH) '
      
        '   and KCLLS.SCBH  ='#39'Y2211-0649'#39'  and KCLLS.CLBH like '#39'%'#39' and KC' +
        'LLS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,' +
        'CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,K' +
        'CLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,' +
        'sum(KCRKCX.RKQty) as RKQty'
      
        ',IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,I' +
        'sNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD,IsN' +
        'ull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO '
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK, '
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC, '
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD, '
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH   ='#39'Y2211-0649'#39'   '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE KCLL.GSBH like '#39'VR%'#39' and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS(S' +
        'ELECT *  FROM LIY_DD.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 an' +
        'd '#39'A'#39'+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1 and KC' +
        'LL.GSBH=ZLZLS3.CQDH)'
      
        '   and KCLLS.SCBH   ='#39'Y2211-0649'#39'   and KCLLS.CLBH like '#39'%'#39' and ' +
        'KCLLS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      '  ) ZLZLS2    '
      'Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  '
      'Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  '
      'Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH '
      'Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  '
      'Left join ('
      
        ' Select KCRK.GSBH,KCRK.ZLBH,kcrk.MJBH,kcrk.DType,KCRK.CLBH,sum(K' +
        'CRK.Qty) as Qty,sum(KCRK.NK) as NK,sum(KCRK.TC) as TC,sum(KCRK.H' +
        'D) as HD,sum(KCRK.KD) as KD,sum(KCRK.XT) as XT,sum(KCRK.GC) as G' +
        'C,sum(KCRK.ZZ) as ZZ'
      
        ' from ( Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS' +
        '.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when ' +
        'len(KCRKS.RKSB)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39' End as DType ' +
        ',KCRKS.CLBH, '
      '               Sum(KCRKS.Qty) as Qty, '
      
        '               Sum(Case when KCRK.HGLB='#39'NK'#39' then Qty else 0 end ' +
        ') as NK, '
      
        '               Sum(Case when KCRK.HGLB='#39'TC'#39' then Qty else 0 end ' +
        ') as TC, '
      
        '               Sum(Case when KCRK.HGLB='#39'HD'#39' then Qty else 0 end ' +
        ') as HD, '
      
        '               Sum(Case when KCRK.HGLB='#39'KD'#39' then Qty else 0 end ' +
        ') as KD, '
      
        '               Sum(Case when KCRK.HGLB='#39'XT'#39' then Qty else 0 end ' +
        ') as XT, '
      
        '               Sum(Case when KCRK.HGLB='#39'GC'#39' then Qty else 0 end ' +
        ') as GC, '
      
        '               Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then Qty else 0 en' +
        'd ) as ZZ  '
      '       from KCRK '
      '       left join KCRKS on KCRK.RKNO=KCRKS.RKNO '
      
        '       where KCRK.SFL='#39'THU HOI'#39'  and KCRKS.CGBH  ='#39'Y2211-0649'#39'  ' +
        ' '
      '       Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH '
      
        '       ) KCRK group by KCRK.GSBH,KCRK.ZLBH,kcrk.MJBH,kcrk.DType,' +
        'KCRK.CLBH'
      
        ') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH' +
        ' and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and ' +
        'KCRKTH.GSBH=ZLZLS2.GSBH'
      'where 1=1 '
      
        'Order by ZLZLS2.ZLBH,ZLZLS2.GSBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZL' +
        'S2.CLBH')
    Left = 97
    Top = 213
    object StringField1: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 18
    end
    object StringField2: TStringField
      FieldName = 'Parent'
      FixedChar = True
      Size = 16
    end
    object StringField11: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 16
    end
    object StringField3: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 16
    end
    object RYQueryCLSL_KT: TFloatField
      FieldName = 'CLSL_KT'
      DisplayFormat = '##,#0.00'
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField8: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CalDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object RYQueryRate_HG: TFloatField
      FieldName = 'Rate_HG'
    end
    object RYQueryHG_NO: TStringField
      FieldName = 'HG_NO'
      FixedChar = True
      Size = 15
    end
    object RYQueryTC_NO: TStringField
      FieldName = 'TC_NO'
      FixedChar = True
      Size = 50
    end
    object RYQueryRate_TC: TFloatField
      FieldName = 'Rate_TC'
    end
    object RYQueryRate_HD: TFloatField
      FieldName = 'Rate_HD'
    end
    object RYQueryHD_NO: TStringField
      FieldName = 'HD_NO'
      FixedChar = True
      Size = 15
    end
    object RYQueryRate_KD: TFloatField
      FieldName = 'Rate_KD'
    end
    object RYQueryKD_NO: TStringField
      FieldName = 'KD_NO'
      FixedChar = True
      Size = 50
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object RYQueryTC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'RKQty'
    end
    object RYQueryTHQty: TCurrencyField
      FieldName = 'THQty'
      DisplayFormat = '#0.00'
    end
    object StringField10: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object RYQueryPKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 11
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 97
    Top = 181
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Detail'
      OnClick = MenuItem3Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MAHG1: TMenuItem
      Caption = 'MA HG'
      OnClick = MAHG1Click
    end
  end
  object HGDS: TDataSource
    DataSet = HGQuery
    Left = 69
    Top = 247
  end
  object HGQuery: TQuery
    OnCalcFields = HGQueryCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ZLZLS2.*,KCPK.Declaretion,CGZL_Declaration.NGAYDANGKY,CGZ' +
        'L_Declaration.DOCNO as TK_Country,KCRK.DOCNO,CGZL_VATNO.VATDATE,' +
        'CGZL_VATNO.KYHIEU_MAUSO as HD_Country,HG_Compare.Usage'
      ' from (  '
      
        'select  HG_NO,TC_NO,HD_NO,KD_NO,sum (CLSL) as CLSL ,sum (QTY) as' +
        ' QTY,sum (NK) as NK,sum (TC) as TC,sum (HD) as HD,sum (KD) as KD' +
        ',sum (XT) as XT,sum (GC) as GC,sum (ZZ) as ZZ'
      
        '        ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_' +
        'HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM' +
        ',Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as' +
        ' KD_Unit,Max(PKNO) as PKNO '
      'from ('
      'Select HG_NO,TC_NO,HD_NO,KD_NO,Max(DWBH) as DWBH'
      
        '       ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_H' +
        'GPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,' +
        'Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as ' +
        'KD_Unit,Max(PKNO) as PKNO  '
      
        '       ,Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*IsNul' +
        'l((Rate_HG),1),6) as CLSL '
      
        '       ,Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*IsNull' +
        '((Rate_HG),1),6) as Qty '
      
        '       ,Round(Round(Convert(float,Sum(NK))/Max(Pairs),6)*IsNull(' +
        '(Rate_HG),1),6) as NK '
      
        '       ,Round(Round(Convert(float,Sum(TC))/Max(Pairs),6)*IsNull(' +
        '(Rate_TC),1),6) as TC '
      
        '       ,Round(Round(Convert(float,Sum(HD))/Max(Pairs),6)*IsNull(' +
        '(Rate_HD),1),6) as HD '
      
        '       ,Round(Round(Convert(float,Sum(KD))/Max(Pairs),6)*IsNull(' +
        '(Rate_HG),1),6) as KD '
      
        '       ,Round(Round(Convert(float,Sum(XT))/Max(Pairs),6)*IsNull(' +
        '(Rate_HG),1),6) as XT '
      
        '       ,Round(Round(Convert(float,Sum(GC))/Max(Pairs),6)*IsNull(' +
        '(Rate_HG),1),6) as GC '
      
        '       ,Round(Round(Convert(float,Sum(ZZ))/Max(Pairs),6)*IsNull(' +
        '(Rate_HG),1),6) as ZZ '
      '       from ('
      
        'Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2' +
        '.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.' +
        'XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,Z' +
        'LZLS2.RKQty'
      
        '       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2' +
        '.GC,ZLZLS2.ZZ,ZLZLS2.Qty,ZLZLS2.PKNO '
      
        '       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNu' +
        'll(CNO_NK,CLHG.HGBH)  else null end as HG_NO,CLHG.HGPM as HG_HGP' +
        'M,CLHG.UnitC as HG_Unit '
      
        '       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNu' +
        'll(CNO_TC,CLTC.HGBH)  else null end as TC_NO,CLTC.HGPM as TC_HGP' +
        'M,CLTC.UnitC as TC_Unit '
      
        '       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNu' +
        'll(CNO_HD,CLHD.HGBH)  else null end as HD_NO,CLHD.HGPM as HD_HGP' +
        'M,CLHD.UnitC as HD_Unit '
      
        '       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then IsNu' +
        'll(CNO_KD,CLKD.HGBH)  else null end as KD_NO,CLKD.HGPM as KD_HGP' +
        'M,CLKD.UnitC as KD_Unit'
      '       ,KCRKTH.Qty as THQty from ('
      
        'select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLL' +
        'S.CNO_NK='#39#39' then null else CNO_NK end CNO_NK,case when KCLLS.CNO' +
        '_TC='#39#39' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='#39 +
        #39' then null else CNO_HD end CNO_HD,'
      
        '       case when KCLLS.CNO_KD='#39#39' then null else CNO_KD end CNO_K' +
        'D,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,' +
        'IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.X' +
        'T,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC' +
        ',0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsN' +
        'ull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty,KCLLS.PKNO '
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,D' +
        'DZL.GSBH '
      '      from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH = '#39'Y2211-0649'#39' '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      'union all '
      
        '   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJB' +
        'H<>'#39'ZZZZZZZZZZ'#39' then A.MJBH else ZLZLS2.MJBH end as MJBH from DD' +
        'ZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH ' +
        ' ) as Parent,'#39'Gia cong'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Ar' +
        'ticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DD' +
        'ZL.GSBH '
      '    from DDZL_ZLZLS2 as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH = '#39'Y2211-0649'#39' '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.' +
        'DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      ') OrdCL'
      '  left join (  '
      
        '        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty)' +
        ' as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_' +
        'HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty)' +
        ' as RKQty,  '
      
        '                    Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Su' +
        'm(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (  '
      
        '         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, K' +
        'CLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty' +
        ',   '
      '             Sum(KCLLS.Qty) as RKQty,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty else 0 ' +
        'end ) as NK,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty else 0 ' +
        'end ) as TC,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else 0 ' +
        'end ) as HD,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else 0 ' +
        'end ) as KD,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else 0 ' +
        'end ) as GC,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else 0 ' +
        'end ) as XT,  '
      
        '  '#9#9'        Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty else ' +
        '0 end ) as ZZ,  '
      
        '             Max(Case when KCLLS.HGLB='#39'NK'#39' then case when  len(K' +
        'CLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1' +
        ') else NULL end end) as CNO_NK,'
      
        '             Max(Case when KCLLS.HGLB='#39'TC'#39' then case when  len(K' +
        'CLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1' +
        ') else NULL end end) as CNO_TC,'
      
        '             Max(Case when KCLLS.HGLB='#39'HD'#39' then case when  len(K' +
        'CLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1' +
        ') else NULL end end) as CNO_HD,'
      
        '             Max(Case when KCLLS.HGLB='#39'KD'#39' then case when  len(K' +
        'CLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1' +
        ') else NULL end end) as CNO_KD,'
      '             Max(KCLLS.PKNO) as PKNO '
      '  '#9#9'from (  '
      
        '  '#9#9'Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS' +
        '.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when le' +
        'n(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DType, K' +
        'CLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  '
      
        '           ,Cast((select CNO+'#39','#39' from KCLLS A where   A.CLBH=KCL' +
        'LS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'NK' +
        #39' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) a' +
        's CNO_NK '
      
        '           ,Cast((select CNO+'#39','#39' from KCLLS A where   A.CLBH=KCL' +
        'LS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'TC' +
        #39' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) a' +
        's CNO_TC '
      
        '           ,Cast((select CNO+'#39','#39'from KCLLS A where   A.CLBH=KCLL' +
        'S.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'HD'#39 +
        ' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) as' +
        ' CNO_HD'
      
        '           ,Cast((select CNO+'#39','#39'from KCLLS A where   A.CLBH=KCLL' +
        'S.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB='#39'KD'#39 +
        ' and A.Qty>0 Group by CNO for XML Path ('#39#39'))  as varchar(50)) as' +
        ' CNO_KD  '
      '           ,KCPKLL.PKNO '
      '  '#9#9'from KCLLS  '
      '          left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      
        '          Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.C' +
        'LBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.' +
        'DFL'#9' '
      '  '#9'     '#9' where  KCLLS.CLBH like '#39'%'#39' and KCLLS.Qty>0 '
      '  '#9#9#9#9'  and KCLLS.SCBH = '#39'Y2211-0649'#39'  '
      '           and KCLL.GSBH='#39'VA12'#39' and KCLL.CFMID<>'#39'NO'#39'   '
      
        '  '#9#9') KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJB' +
        'H, KCLLS.DType  '
      '             ) KCLLS Group by SCBH,CLBH,MJBH,DType  '
      
        '            ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdC' +
        'L.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH   '
      'where 1=1 '
      'Union all '
      
        'select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLL' +
        'S.CNO_NK='#39#39' then null else CNO_NK end CNO_NK,case when KCLLS.CNO' +
        '_TC='#39#39' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='#39 +
        #39' then null else CNO_HD end CNO_HD,'
      
        '       case when KCLLS.CNO_KD='#39#39' then null else CNO_KD end CNO_K' +
        'D,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,' +
        'IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.X' +
        'T,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC' +
        ',0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsN' +
        'ull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty,KCLLS.PKNO '
      
        'from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,ZLZLS2.CLBH,'
      
        '             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,'#39 +
        'VGC'#39' as GSBH '
      '      from ZLZLS2_YM as ZLZLS2'
      '      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '      left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Sheha' +
        'o=DDZL.SheHao'
      '      where 1=1'
      '      and ZLZLS2.ZLBH  ='#39'Y2211-0649'#39'   '
      '      and ZLZLS2.CLBH like '#39'%'#39' '
      '      and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.CLSL>0'
      '      and DDZl.GSBH='#39'VA12'#39' '
      
        '      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.' +
        'Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH '
      ') OrdCL'
      'left join ('
      
        '      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) a' +
        's TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD' +
        ') as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) a' +
        's RKQty,'
      
        '                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(' +
        'KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from ('
      '                  '
      
        '      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KC' +
        'LLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when' +
        ' len(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DType' +
        ', sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,'
      #9#9#9#9#9'Sum(KCLLS.Qty) as RKQty,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty else 0 end ) a' +
        's NK,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty else 0 end ) a' +
        's TC,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else 0 end ) a' +
        's HD,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else 0 end ) a' +
        's KD,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else 0 end ) a' +
        's GC,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else 0 end ) a' +
        's XT,'
      
        #9#9#9#9#9'Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty else 0 end )' +
        ' as ZZ,'
      
        '         Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO end) as CN' +
        'O_NK,'
      
        '         Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO end) as CN' +
        'O_TC,'
      
        '         Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO end) as CN' +
        'O_HD,'
      
        '         Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO end) as CN' +
        'O_KD,  '
      '         Max(KCPKLL.PKNO) as PKNO '
      #9#9'   from KCLLS'
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      
        '      Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=' +
        'KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL '
      #9#9'   where  KCLLS.CLBH like '#39'%'#39
      #9#9#9#9'    and KCLLS.SCBH  ='#39'Y2211-0649'#39'   '
      '           and KCLL.GSBH='#39'VGC'#39' and KCLL.CFMID<>'#39'NO'#39' '
      
        #9#9'   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 ' +
        'then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 t' +
        'hen '#39'Assembly'#39' else '#39'Gia cong'#39'  end , KCLLS.CLBH'
      '           ) KCLLS Group by SCBH,CLBH,MJBH,DType'
      
        '          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.' +
        'CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH '
      'where 1=1 '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO'
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1='#39'Y2211-0649'#39' and ZLZLS3.CQDH' +
        '='#39'VR1'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR1'#39
      '                 and KCLLS.SCBH ='#39'Y2211-0649'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO'
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1='#39'Y2211-0649'#39' and ZLZLS3.CQDH' +
        '='#39'VR2'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR2'#39
      '                 and KCLLS.SCBH ='#39'Y2211-0649'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all '
      
        'select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CN' +
        'O_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KC' +
        'LLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as K' +
        'D,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,'
      
        '       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KC' +
        'LLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,' +
        '0) as ZZ,KCLLS.Qty,KCLLS.PKNO'
      ' from ('
      
        'select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,righ' +
        't(ZLZLS3.cldhz,10) as Parent,'#39'Assembly'#39' as DType,right(ZLZLS3.cl' +
        'dhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TC' +
        'LYL,'
      
        '      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_D' +
        'DZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZ' +
        'LS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DD' +
        'ZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.c' +
        'ldhz = CLZL.cldh '
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao '
      
        'where ZLZLS3.TCLYL>0 and DDZL.ZLBH1='#39'Y2211-0649'#39' and ZLZLS3.CQDH' +
        '='#39'VR3'#39
      '      and ZLZLS3.CLDHZ like '#39'A%'#39' '
      
        'GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQD' +
        'H,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3'
      'left join ('
      
        '           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL' +
        '.CFMID<>'#39'NO'#39' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLL' +
        'S.TempQty),2) as TempQty,'
      
        '                  round(sum(case when KCLL.CFMID<>'#39'NO'#39' then KCLL' +
        'S.Qty else 0 end),2) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty else ' +
        '0 end ) as HD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty else ' +
        '0 end ) as KD,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty else ' +
        '0 end ) as GC,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty else ' +
        '0 end ) as XT,'
      
        #9#9#9#9#9'         Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty els' +
        'e 0 end ) as ZZ,'
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      
        '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO    ' +
        '   '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where 1=1 '
      '                 and KCLL.GSBH='#39'VR3'#39
      '                 and KCLLS.SCBH ='#39'Y2211-0649'#39'  '
      
        '           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=' +
        'ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ '
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLL' +
        'S.CLBH else KCLLS.DFL end  as MJBH,KCLLS.CLBH as Parent,Case whe' +
        'n len(KCLLS.DFL)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39'  end as DTyp' +
        'e,'
      
        '       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.A' +
        'rticle,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH' +
        ',sum(KCLLS.TempQty) as TemQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD ' +
        ' '
      
        '       ,sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as N' +
        'K,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,' +
        'IsNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,Is' +
        'Null(sum(KCRKCX.GC),0) as GC'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO '
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK, '
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC, '
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,  '
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH = '#39'Y2211-0649'#39' '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE (KCLL.GSBH ='#39'VA12'#39') and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS (s' +
        'elect CLBH from (SELECT CLBH from DDZL_ZLZLS2 as ZLZLS2 where ZL' +
        'ZLS2.CLSL>0 and ZLBH='#39'Y2211-0649'#39' Group by CLBH) ZLZLS2 where ZL' +
        'ZLS2.CLBH=KCLLS.CLBH) '
      
        '   and KCLLS.SCBH = '#39'Y2211-0649'#39' and KCLLS.CLBH like '#39'%'#39' and KCL' +
        'LS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,' +
        'CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,K' +
        'CLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,' +
        'sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK,IsNull' +
        '(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(s' +
        'um(KCRKCX.KD),0) as KD '
      
        '       ,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) ' +
        'as GC'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO'
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK,'
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC,'
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,'
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH  ='#39'Y2211-0649'#39'  '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE (KCLL.GSBH ='#39'VGC'#39') and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS (se' +
        'lect CLBH from (SELECT CLBH from ZLZLS2_YM ZLZLS2 where ZLZLS2.C' +
        'LSL>0 and ZLBH  ='#39'Y2211-0649'#39'  Group by CLBH) ZLZLS2 where ZLZLS' +
        '2.CLBH=KCLLS.CLBH) '
      
        '   and KCLLS.SCBH  ='#39'Y2211-0649'#39'  and KCLLS.CLBH like '#39'%'#39' and KC' +
        'LLS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      'union all'
      
        'select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Pare' +
        'nt,'#39'Assembly'#39' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,' +
        'CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,K' +
        'CLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty'
      
        '       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,' +
        'sum(KCRKCX.RKQty) as RKQty'
      
        '       ,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) ' +
        'as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as' +
        ' KD,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as G' +
        'C'
      
        '       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKC' +
        'X.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNul' +
        'l(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) as ZZ'
      '       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO '
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO  '
      'left join ( '
      
        '          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(' +
        'KCLLS.Qty) as RKQty,'
      
        '                  Sum(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.Qty e' +
        'lse 0 end ) as NK, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as TC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as HD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.Qty e' +
        'lse 0 end ) as KD, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'XT'#39' then KCLLS.Qty e' +
        'lse 0 end ) as XT, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'GC'#39' then KCLLS.Qty e' +
        'lse 0 end ) as GC, '
      
        '                  Sum(Case when KCLLS.HGLB='#39'ZZZZ'#39' then KCLLS.Qty' +
        ' else 0 end ) as ZZ,  '
      
        '                  Max(Case when KCLLS.HGLB='#39'NK'#39' then KCLLS.CNO e' +
        'nd) as CNO_NK, '
      
        '                  Max(Case when KCLLS.HGLB='#39'TC'#39' then KCLLS.CNO e' +
        'nd) as CNO_TC, '
      
        '                  Max(Case when KCLLS.HGLB='#39'HD'#39' then KCLLS.CNO e' +
        'nd) as CNO_HD,'
      
        '                  Max(Case when KCLLS.HGLB='#39'KD'#39' then KCLLS.CNO e' +
        'nd) as CNO_KD,  '
      '                  Max(KCPKLL.PKNO) as PKNO '
      '           from KCLLS '
      
        '           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.' +
        'CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL' +
        '.DFL '
      '           where KCLLS.SCBH = '#39'Y2211-0649'#39' '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      '           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL '
      
        '           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KC' +
        'LLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH    ' +
        '       '
      
        'WHERE KCLL.GSBH like '#39'VR%'#39' and KCLL.CFMID<>'#39'NO'#39' and NOT EXISTS(S' +
        'ELECT *  FROM LIY_DD.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 an' +
        'd '#39'A'#39'+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)'
      
        '   and KCLLS.SCBH = '#39'Y2211-0649'#39' and KCLLS.CLBH like '#39'%'#39' and KCL' +
        'LS.Qty>0'
      
        'group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX' +
        '.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD'
      '  ) ZLZLS2    '
      'Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  '
      'Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  '
      'Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH'
      'Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH    '
      'Left join ('
      
        'Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<1' +
        '0 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRK' +
        'S.RKSB)<10 then '#39'Assembly'#39' else '#39'Gia cong'#39' End as DType ,KCRKS.C' +
        'LBH, '
      '       Sum(KCRKS.Qty) as Qty, '
      
        '       Sum(Case when KCRK.HGLB='#39'NK'#39' then KCRKS.Qty else 0 end ) ' +
        'as NK, '
      
        '       Sum(Case when KCRK.HGLB='#39'TC'#39' then KCRKS.Qty else 0 end ) ' +
        'as TC, '
      
        '       Sum(Case when KCRK.HGLB='#39'HD'#39' then KCRKS.Qty else 0 end ) ' +
        'as HD, '
      
        '       Sum(Case when KCRK.HGLB='#39'KD'#39' then KCRKS.Qty else 0 end ) ' +
        'as KD, '
      
        '       Sum(Case when KCRK.HGLB='#39'XT'#39' then KCRKS.Qty else 0 end ) ' +
        'as XT, '
      
        '       Sum(Case when KCRK.HGLB='#39'GC'#39' then KCRKS.Qty else 0 end ) ' +
        'as GC, '
      
        '       Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then Qty else 0 end ) as Z' +
        'Z  '
      'from KCRK '
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO '
      'where KCRK.SFL='#39'THU HOI'#39'  and KCRKS.CGBH='#39'Y2211-0649'#39' '
      'Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH '
      
        ') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH' +
        ' and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and ' +
        'KCRKTH.GSBH=ZLZLS2.GSBH'
      ') ZLZLS2 where 1=1  '
      
        'and IsNull(HG_NO,'#39#39')<>'#39#39' or IsNull(TC_NO,'#39#39')<>'#39#39' or IsNull(HD_NO' +
        ','#39#39')<>'#39#39' or IsNull(KD_NO,'#39#39')<>'#39#39' '
      
        'Group by ZLZLS2.HG_NO,ZLZLS2.Rate_HG,ZLZLS2.TC_NO,ZLZLS2.Rate_TC' +
        ',ZLZLS2.HD_NO,ZLZLS2.Rate_HD,ZLZLS2.KD_NO,ZLZLS2.Rate_KD'
      '  ) ZLZLS2   '
      
        'Group by ZLZLS2.HG_NO,ZLZLS2.TC_NO,ZLZLS2.HD_NO,ZLZLS2.KD_NO ) Z' +
        'LZLS2 '
      'Left join KCRK on KCRK.RKNO=ZLZLS2.PKNO'
      'Left join KCPK on KCPK.PKNO=ZLZLS2.PKNO'
      
        'Left join CGZL_Declaration on CGZL_Declaration.DECLARATION=KCPK.' +
        'Declaretion'
      'Left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      
        'Left join CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and ZSZL.tyb' +
        'h=CGZL_VATNO.ZSBH_MST'
      'left join HG_Compare on HG_Compare.HGBH = ZLZLS2.HG_NO'
      
        'Order by ZLZLS2.HG_NO desc,ZLZLS2.TC_NO desc,ZLZLS2.HD_NO desc,Z' +
        'LZLS2.KD_NO desc')
    Left = 67
    Top = 213
    object HGQueryZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 18
    end
    object HGQueryHG_NO: TStringField
      FieldName = 'HG_NO'
      FixedChar = True
      Size = 15
    end
    object HGQueryTC_NO: TStringField
      FieldName = 'TC_NO'
      FixedChar = True
      Size = 50
    end
    object HGQueryHD_NO: TStringField
      FieldName = 'HD_NO'
      FixedChar = True
      Size = 50
    end
    object HGQueryUsage: TFloatField
      FieldName = 'Usage'
    end
    object HGQueryCLSL_KT: TFloatField
      FieldName = 'CLSL_KT'
    end
    object FloatField4: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.000000'
    end
    object HGQueryPerson_NK: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person_NK'
      DisplayFormat = '#,##0.00%'
      Calculated = True
    end
    object HGQueryPerson_TC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person_TC'
      DisplayFormat = '#,##0.00%'
      Calculated = True
    end
    object CurrencyField10: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '#0.000000'
    end
    object HGQueryTC: TFloatField
      FieldName = 'TC'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField11: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField12: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField13: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField14: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '#0.000000'
    end
    object CurrencyField15: TCurrencyField
      FieldName = 'ZZ'
      DisplayFormat = '#0.000000'
    end
    object HGQueryHG_HGPM: TStringField
      FieldName = 'HG_HGPM'
      FixedChar = True
      Size = 200
    end
    object HGQueryHG_Unit: TStringField
      FieldName = 'HG_Unit'
      FixedChar = True
      Size = 40
    end
    object HGQueryTC_HGPM: TStringField
      FieldName = 'TC_HGPM'
      FixedChar = True
      Size = 200
    end
    object HGQueryTC_Unit: TStringField
      FieldName = 'TC_Unit'
      FixedChar = True
      Size = 40
    end
    object HGQueryHD_HGPM: TStringField
      FieldName = 'HD_HGPM'
      FixedChar = True
      Size = 200
    end
    object HGQueryHD_Unit: TStringField
      FieldName = 'HD_Unit'
      FixedChar = True
      Size = 40
    end
    object HGQueryPKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 11
    end
    object HGQueryDeclaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object HGQueryNGAYDANGKY: TDateTimeField
      FieldName = 'NGAYDANGKY'
    end
    object HGQueryTK_Country: TStringField
      FieldName = 'TK_Country'
      FixedChar = True
      Size = 50
    end
    object HGQueryDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object HGQueryVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object HGQueryHD_Country: TStringField
      FieldName = 'HD_Country'
      FixedChar = True
      Size = 10
    end
    object HGQueryKD_NO: TStringField
      FieldName = 'KD_NO'
      FixedChar = True
      Size = 50
    end
    object HGQueryKD_HGPM: TStringField
      FieldName = 'KD_HGPM'
      FixedChar = True
      Size = 200
    end
    object HGQueryKD_Unit: TStringField
      FieldName = 'KD_Unit'
      FixedChar = True
      Size = 40
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 592
    Top = 232
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,'
      'JGZL.CFMID1 as CFMID,JGZLS.Qty*JGZLM.Qty as Qty,'#39'ZZZZ'#39
      'as SCBH, '#39'JG'#39' as Memo '
      'from JGZLS  '
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      'left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        'left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldateti' +
        'me,convert(varchar,JGZL.CFMDate1,111)) between '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      ') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH'
      'where JGZL.CFMDate1>='
      #39'2008/05/01'#39
      'and JGZLS.ZMLB='#39'AFG0000107'#39
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'union all'
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, B' +
        'Department.DepName as Memo'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'where KCLL.LLNO=KCLLS.LLNO'
      'and KCLLS.CLBH='#39'AFG0000107'#39
      
        'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'or KCLL.CFMDATE is null)'
      'order by KCLL.LLNO')
    Left = 560
    Top = 232
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'M/d'
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = KCRK
    Left = 192
    Top = 216
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZ' +
        'L.CFMID1 as CFMID,JGZLS.Qty,'
      #39'JG'#39' as Memo,'#39#39' as Invoice,'#39#39' as PaperNo,JGZLSS.ZLBH'
      'from JGZL,JGZLS '
      
        'Left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLS.JGNO=JGZLSS' +
        '.JGNO'
      'where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'and JGZLS.CLBH='#39'P100000306'#39
      
        'and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween '
      #39'2016/12/09'#39
      ' and '#39'2017/02/28'#39
      'and JGZL.CKBH='#39'VA12'#39
      ''
      'union all'
      ''
      
        'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,K' +
        'CRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRK' +
        'S.CGBH as ZLBH'
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where KCRKS.CLBH='#39'P100000306'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '
      #39'2017/02/01'#39
      ' and '#39'2017/02/28'#39
      'and KCRK.CKBH='#39'VBT'#39
      'order by kcrk.rkno'
      '')
    Left = 160
    Top = 216
    object KCRKRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCRK.USERDATE'
      DisplayFormat = 'm/d'
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCRKZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.KCRK.ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCRK.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 30
    end
    object KCRKPaperNo: TStringField
      FieldName = 'PaperNo'
      FixedChar = True
      Size = 50
    end
    object KCRKZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 436
    Top = 163
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '|xlsx||xls'
    Left = 300
    Top = 307
  end
end
