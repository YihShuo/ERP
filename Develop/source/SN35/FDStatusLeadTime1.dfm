object FDStatusLeadTime: TFDStatusLeadTime
  Left = 344
  Top = 118
  Width = 1078
  Height = 609
  Caption = 'FDStatusLeadTime'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 1062
    Height = 570
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'By Article'
      object spl1: TSplitter
        Left = 0
        Top = 53
        Width = 2
        Height = 486
        Color = clSkyBlue
        ParentColor = False
      end
      object pnl2: TPanel
        Left = 2
        Top = 53
        Width = 281
        Height = 486
        Align = alLeft
        Caption = 'pnl2'
        TabOrder = 0
        object dbgrdh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 279
          Height = 483
          Align = alClient
          DataSource = ds1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnCellClick = dbgrdh1CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jijie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sea'
              Title.TitleButton = True
              Width = 29
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <
                item
                  FieldName = 'devcode'
                  ValueType = fvtCount
                end>
              Title.Caption = 'SR#'
              Width = 121
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.FieldName = 'article'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Article'
              Title.TitleButton = True
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'xieming'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Shoename'
              Title.TitleButton = True
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'ypdh'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'SampleNo'
              Width = 77
            end>
        end
      end
      object pnl3: TPanel
        Left = 283
        Top = 53
        Width = 771
        Height = 486
        Align = alClient
        Caption = 'pnl3'
        TabOrder = 1
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 769
          Height = 483
          Hint = 'click right button to check Stock'
          Align = alClient
          DataSource = ds2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 3
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentShowHint = False
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnCellClick = dbgrdh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'JHDH'
              Footers = <>
              Title.Caption = 'Dev_Mat.NO'
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footer.FieldName = 'clbh'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Mat. NO.'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'CLYWMC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Description'
              Title.TitleButton = True
              Width = 269
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'SampleLeadTime'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'LeadTime|Sample'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 56
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ProdLeadTime'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'LeadTime|Prod'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'forecast_leadtime'
              Footers = <>
              Title.Caption = 'LeadTime|no F/C'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'country'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Prod Location'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'samplemoq'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ|Sample'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 48
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'prodmoq'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ|Prod'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 41
            end
            item
              Color = clMoneyGreen
              DisplayFormat = '.###'
              EditButtons = <>
              FieldName = 'extraprice'
              Footers = <>
              Title.Caption = 'MOQ|ExtraPrice'
              Width = 71
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Dyingfee'
              Footers = <>
              Title.Caption = 'MOQ|Dyingfee'
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Surcharge'
              Footers = <>
              Title.Caption = 'MOQ|Surcharge'
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sup. NO'
              Title.TitleButton = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'REMARK'
              Footers = <>
              Width = 93
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1054
        Height = 53
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 208
          Top = 7
          Width = 18
          Height = 16
          Caption = 'FD'
        end
        object Label2: TLabel
          Left = 317
          Top = 7
          Width = 47
          Height = 16
          Caption = 'Season'
        end
        object Label3: TLabel
          Left = 453
          Top = 7
          Width = 36
          Height = 16
          Caption = 'Stage'
        end
        object lbl1: TLabel
          Left = 206
          Top = 33
          Width = 19
          Height = 16
          Caption = 'SR'
        end
        object Label5: TLabel
          Left = 76
          Top = 7
          Width = 45
          Height = 16
          Caption = 'Dev Tp'
        end
        object Label7: TLabel
          Left = 578
          Top = 33
          Width = 55
          Height = 16
          Caption = 'Category'
          Visible = False
        end
        object Label14: TLabel
          Left = 9
          Top = 33
          Width = 113
          Height = 16
          Caption = 'SampleOrderType'
        end
        object Label11: TLabel
          Left = 336
          Top = 33
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object Edit1: TEdit
          Left = 233
          Top = 4
          Width = 57
          Height = 24
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 370
          Top = 4
          Width = 70
          Height = 24
          Color = 11927551
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 494
          Top = 3
          Width = 47
          Height = 24
          Color = 11927551
          TabOrder = 7
          Text = 'CFM'
        end
        object Button1: TButton
          Left = 574
          Top = 5
          Width = 62
          Height = 20
          Caption = 'Query'
          TabOrder = 4
          OnClick = Button1Click
        end
        object edt1: TEdit
          Left = 233
          Top = 28
          Width = 72
          Height = 24
          TabOrder = 6
        end
        object BBTT1: TBitBtn
          Left = 540
          Top = 4
          Width = 16
          Height = 21
          Caption = '...'
          TabOrder = 8
          OnClick = BBTT1Click
        end
        object cbb2: TComboBox
          Left = 128
          Top = 4
          Width = 63
          Height = 24
          Style = csDropDownList
          DropDownCount = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            ''
            'Inline'
            'SMU')
        end
        object cbb1: TComboBox
          Left = 641
          Top = 28
          Width = 62
          Height = 24
          Style = csDropDownList
          DropDownCount = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 5
          Visible = False
          Items.Strings = (
            ''
            'Sports'
            'Originals')
        end
        object BBTT2: TBitBtn
          Left = 289
          Top = 5
          Width = 15
          Height = 22
          Caption = '...'
          TabOrder = 2
          OnClick = BBTT2Click
        end
        object CheckBox1: TCheckBox
          Left = 451
          Top = 34
          Width = 111
          Height = 13
          Caption = 'Show Main Mat'
          TabOrder = 9
        end
        object Button2: TButton
          Left = 641
          Top = 5
          Width = 61
          Height = 20
          Caption = 'EXCEL'
          TabOrder = 10
          OnClick = Button2Click
        end
        object LAI: TComboBox
          Left = 128
          Top = 28
          Width = 63
          Height = 24
          ItemHeight = 16
          TabOrder = 11
          Items.Strings = (
            ''
            'LAIV'
            'LAIK'
            'LAIT')
        end
        object Edit7: TEdit
          Left = 370
          Top = 28
          Width = 70
          Height = 24
          Color = 11927551
          TabOrder = 12
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Develop'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1062
        Height = 53
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 12
          Top = 18
          Width = 47
          Height = 16
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 146
          Top = 18
          Width = 36
          Height = 16
          Caption = 'Stage'
        end
        object Edit3: TEdit
          Left = 68
          Top = 15
          Width = 58
          Height = 24
          Color = 11927551
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button5: TButton
          Left = 268
          Top = 14
          Width = 62
          Height = 24
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button5Click
        end
        object Edit6: TEdit
          Left = 188
          Top = 15
          Width = 58
          Height = 24
          Color = 11927551
          TabOrder = 2
        end
        object Button6: TButton
          Left = 336
          Top = 14
          Width = 62
          Height = 24
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button6Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 53
        Width = 1062
        Height = 494
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 1060
          Height = 492
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
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'XieXing'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'SheHao'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR'
              Width = 245
            end
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'rn'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'sampleleadtime'
              Footers = <>
              Title.Caption = 'SampleLeadtime'
              Width = 154
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footers = <>
              Title.Caption = 'MatNO'
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              Title.Caption = 'SupplierNO'
              Width = 122
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = 'SupplierName'
              Width = 262
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'MatName'
              Width = 308
            end
            item
              EditButtons = <>
              FieldName = 'cqdh'
              Footers = <>
              Title.Caption = 'Location'
              Width = 87
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Prod'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Splitter1: TSplitter
        Left = 593
        Top = 53
        Height = 486
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1054
        Height = 53
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 9
          Top = 6
          Width = 100
          Height = 16
          Caption = 'Season Of Order'
        end
        object Label4: TLabel
          Left = 207
          Top = 5
          Width = 37
          Height = 16
          Caption = 'Article'
        end
        object Label8: TLabel
          Left = 411
          Top = 5
          Width = 43
          Height = 16
          Caption = 'BuyNO'
        end
        object Label12: TLabel
          Left = 59
          Top = 31
          Width = 50
          Height = 16
          Caption = 'Season:'
        end
        object Label13: TLabel
          Left = 215
          Top = 30
          Width = 29
          Height = 16
          Caption = 'SR#:'
        end
        object Label15: TLabel
          Left = 387
          Top = 29
          Width = 67
          Height = 16
          Caption = 'FC_BuyNO'
        end
        object Button3: TButton
          Left = 554
          Top = 20
          Width = 61
          Height = 29
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 627
          Top = 19
          Width = 61
          Height = 29
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button4Click
        end
        object SeaEdit: TEdit
          Left = 115
          Top = 2
          Width = 70
          Height = 24
          TabOrder = 2
        end
        object ArticleEdit: TEdit
          Left = 251
          Top = 1
          Width = 119
          Height = 24
          Color = 11927551
          TabOrder = 3
        end
        object BuyNoEdit: TEdit
          Left = 460
          Top = 1
          Width = 85
          Height = 24
          Color = 11927551
          TabOrder = 4
        end
        object CheckBox2: TCheckBox
          Left = 557
          Top = 2
          Width = 111
          Height = 13
          Caption = 'Show Main Mat'
          TabOrder = 5
        end
        object Edit4: TEdit
          Left = 115
          Top = 26
          Width = 69
          Height = 24
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 251
          Top = 26
          Width = 121
          Height = 24
          TabOrder = 7
        end
        object FC_BUYEdit: TEdit
          Left = 460
          Top = 25
          Width = 85
          Height = 24
          Color = 11927551
          TabOrder = 8
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 53
        Width = 593
        Height = 486
        Align = alLeft
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 591
          Height = 484
          Align = alClient
          DataSource = ds3
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -10
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Sea'
              Width = 29
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <
                item
                  FieldName = 'article'
                  ValueType = fvtCount
                end>
              Title.Caption = 'SKU'
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footer.FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'prodleadtime'
              Footers = <>
              Title.Caption = 'LT'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footers = <>
              Title.Caption = 'MatNO'
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'MatDes.'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              Title.Caption = 'SupplierNO'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = 'Supplier'
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'cqdh'
              Footers = <>
              Title.Caption = 'Area'
              Width = 55
            end>
        end
      end
      object Panel4: TPanel
        Left = 596
        Top = 53
        Width = 458
        Height = 486
        Align = alClient
        TabOrder = 2
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 456
          Height = 484
          Hint = 'click right button to check Stock'
          Align = alClient
          DataSource = ds4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -10
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 3
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = XXZLPoopMenu
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footer.FieldName = 'clbh'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Mat. NO.'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'CLYWMC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Description'
              Title.TitleButton = True
              Width = 269
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 62
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'SampleleadTime'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'LeadTime|Sample'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 52
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Prodleadtime'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'LeadTime|Prod'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'AddTLeadtime'
              Footers = <>
              Title.Caption = 'LeadTime|Additional '
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'forecast_leadtime'
              Footers = <>
              Title.Caption = 'LeadTime no F/C'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Prod Location'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 55
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'SampleMOQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ|Sample'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 46
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ProdMOQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'MOQ|Prod'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -9
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 36
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ExtraPrice'
              Footers = <>
              Title.Caption = 'MOQ|ExtraPrice'
              Width = 65
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Dyingfee'
              Footers = <>
              Title.Caption = 'MOQ|Dyingfee'
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Surcharge'
              Footers = <>
              Title.Caption = 'MOQ|Surcharge'
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sup. NO'
              Title.TitleButton = True
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'REMARK'
              Footers = <>
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'TempCLBH'
              Footers = <>
              Title.Caption = 'Temp Mat. No.'
              Width = 100
            end>
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'MEMO'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 1054
        Height = 539
        Align = alClient
        Lines.Strings = (
          'Main Mat'#21482#21015#20986#20197#19979#19977#39006
          '1.'#20027#38754#26009#65306#31995#32113#26448#26009#32232#34399#38283#38957' A'#12289'C'#12289'F'#12289'K'#12289'P ('#37341#23565#24288#21830'COSMO) '#20294#19981#21253#25324' A02'#12289'A08'#12289'A13'#12289'A48'
          '2.'#37341#36554#21103#26009#65306#31995#32113#26448#26009#32232#34399#38283#38957' D03 '#12289'D11'#12289'L'#12289'O02'
          '3.'#25104#22411#21103#26009#65306#31995#32113#26448#26009#32232#34399#38283#38957'D'
          ''
          #31532#19968#20998#38913
          #38991#33394#32005#33394#39023#31034#26377#26356#25913#36942'Leadtime'
          ''
          #31532#20108#20998#38913'Prod'#28858#26989#21209#20351#29992
          #25552#20379#32102#23458#20154#25152#26377'sku'#26368#26202'leadtime'#30340#26448#26009#33287#36039#26009
          '')
        TabOrder = 0
      end
    end
  end
  object Qry_All: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.GSDH,ypzl.ypdh,kfxxzl.jijie,kfxxzl.ar' +
        'ticle,kfxxzl.xieming,kfxxzl.FD,kfxxzl.xiexing,kfxxzl.shehao,kfxx' +
        'zl.YSSM from kfxxzl'
      
        ' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.sh' +
        'ehao=xxzlkf.shehao'
      
        ' left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao' +
        '=ypzl.shehao '
      ' where 1=1 '
      '       and isnull(XXZLKF.LookSee,0)=0 '
      '       and isnull(xxzlkf.Dropped,0)=0  '
      '   and (GSDH='#39'CDC'#39' or GSDH='#39'LAI'#39') '
      '   and kfxxzl.Jijie = '#39'16F'#39
      '   and ypzl.kfjd = '#39'CFM'#39
      'Order by kfxxzl.FD,kfxxzl.article')
    Left = 43
    Top = 226
    object Qry_Alljijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Qry_Allarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Qry_Allxieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Qry_AllFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Qry_Allxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object Qry_Allshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object Qry_Allypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Qry_Alldevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Qry_AllGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
  end
  object ds1: TDataSource
    DataSet = Qry_All
    Left = 43
    Top = 194
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    DataSource = ds1
    SQL.Strings = (
      
        'select ypzls.CLBH ,CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.REM' +
        'ARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,ypzl' +
        's.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,'
      
        'MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sample' +
        'price,MaterialMOQ.forecast_leadtime,'
      
        'MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice' +
        ', Surcharge,Dyingfee  from ( '
      'select kfxxzl.jijie,a.* from ('
      
        'SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,yp' +
        'zls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.' +
        'CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,bwzl.ywsm+'#39'-'#39'+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl' +
        '.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.z' +
        'sjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc '
      'FROM ypzls ypzls '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      
        'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE YPDH  ='#39'LAIK' +
        '190700185'#39' and clzl.clzmlb='#39'N'#39' '
      'union all '
      
        'SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-C' +
        'hild'#39' as Relation,clzhzl.CLDH1 as CLBH '
      ' ,ypzls.BWLB , '
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc '
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc '
      'FROM ypzls ypzls '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      
        'WHERE YPDH  ='#39'LAIK190700185'#39'   and CLZHZL.SYL>0 and clzl.clzmlb=' +
        #39'N'#39' '
      'union all '
      
        'Select clzl.cltd,clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Rel' +
        'ation+'#39'1'#39' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,c' +
        'lzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH '
      
        ',clzhzl2.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm A' +
        'S CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc '
      ',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc   '
      ' from ('
      
        'SELECT clzl.cltd,ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+'#39'-C' +
        'hild'#39' as Relation,clzhzl.CLDH1 as CLBH '
      ' ,ypzls.BWLB , '
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.C' +
        'urrency ,ypzls.Rate,clzl.CQDH '
      
        ',ypzls.Remark ,'#39#39' AS BWMCNM,'#39#39' AS zwsm,'#39#39' as ywsm ,clzl.zwpm AS ' +
        'CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc '
      ',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      
        'WHERE YPDH ='#39'LAIK190700185'#39'   and CLZHZL.SYL>0   and clzl.clzmlb' +
        '='#39'Y'#39'  '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1  '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      ')  a '
      'left join ypzl on a.ypdh=ypzl.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      ')  YPZLS '
      'left join ('
      
        '  select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodleadt' +
        'ime,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,Ext' +
        'raPrice,REMARK  from ('
      
        '   select Surcharge,Dyingfee,season,CLBH,SampleLeadTime,Prodlead' +
        'time,Location,sampleprice,forecast_leadtime,SampleMOQ,ProdMOQ,Ex' +
        'traPrice,REMARK,zsbh,ROW_NUMBER() over (PARTITION BY CLBH ORDER ' +
        'BY '
      
        'Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn fro' +
        'm MaterialMOQ'
      '  ) MOQ  '
      
        ') MaterialMOQ on MaterialMOQ.CLBH=YPZLS.CLBH and MaterialMOQ.sea' +
        'son=YPZLS.jijie'
      
        'left join (select * from zszl_dev where gsbh='#39'CDC'#39') zszl_dev on ' +
        'zszl_dev.zsdh=YPZLS.csbh'
      'left join CLZL_LS on CLZL_LS.cldh=ypzls.CLBH'
      
        'group by  ypzls.CLBH,CLZL_LS.JHDH,zszl_dev.country,MaterialMOQ.R' +
        'EMARK,MaterialMOQ.season,ypzls.clzmlb,ypzls.CLBH,ypzls.CLYWMC,yp' +
        'zls.CSBH,ypzls.zsywjc ,MaterialMOQ.SampleLeadTime,'
      
        'MaterialMOQ.ProdLeadTime,MaterialMOQ.Location,MaterialMOQ.sample' +
        'price,MaterialMOQ.forecast_leadtime,'
      
        'MaterialMOQ.samplemoq,MaterialMOQ.prodmoq,MaterialMOQ.extraprice' +
        ',Surcharge,Dyingfee ')
    Left = 75
    Top = 226
    object qry2clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object qry2csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object qry2zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qry2SampleLeadTime: TIntegerField
      FieldName = 'SampleLeadTime'
    end
    object qry2ProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object qry2Location: TStringField
      FieldName = 'Location'
      FixedChar = True
      Size = 15
    end
    object qry2sampleprice: TCurrencyField
      FieldName = 'sampleprice'
    end
    object qry2forecast_leadtime: TIntegerField
      FieldName = 'forecast_leadtime'
    end
    object qry2samplemoq: TCurrencyField
      FieldName = 'samplemoq'
      DisplayFormat = '0'
    end
    object qry2prodmoq: TCurrencyField
      FieldName = 'prodmoq'
      DisplayFormat = '0'
    end
    object qry2extraprice: TCurrencyField
      FieldName = 'extraprice'
    end
    object qry2Surcharge: TCurrencyField
      FieldName = 'Surcharge'
    end
    object qry2Dyingfee: TCurrencyField
      FieldName = 'Dyingfee'
    end
    object qry2season: TStringField
      FieldName = 'season'
      FixedChar = True
    end
    object qry2REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
    object qry2CLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object qry2clzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object qry2country: TStringField
      FieldName = 'country'
      FixedChar = True
      Size = 10
    end
    object qry2JHDH: TStringField
      FieldName = 'JHDH'
      FixedChar = True
      Size = 10
    end
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 75
    Top = 194
  end
  object Qry_Tmp: TQuery
    DatabaseName = 'dB'
    Left = 11
    Top = 226
  end
  object qry3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select main.*,zszl.zsywjc,clzl.ywpm,clzl.cqdh from ('
      
        'select XieXing,SheHao,jijie,article,ROW_NUMBER () over (PARTITIO' +
        'N BY article order BY Prodleadtime desc) as rn,Prodleadtime ,clb' +
        'h,csbh from('
      
        'select xxzl.XieXing,xxzl.SheHao,XXZL.jijie, XXZL.devcode, XXZL.a' +
        'rticle,MOQ.Prodleadtime,xxzl.clbh,csbh from( '
      
        'select xxzl.XieXing,xxzl.SheHao,xxzl.jijie,kfxxzl.devcode,xxzl.a' +
        'rticle,xxzls.clbh,xxzls.csbh from xxzls '
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao '
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao '
      'left join CLZL on CLZL.CLDH=xxzls.CLBH  '
      'where xxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'N'#39
      
        ' and LEFT(CLZL.CLDH,1) in ('#39'L'#39','#39'A'#39','#39'B'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'D'#39','#39'G'#39','#39'J'#39','#39 +
        'K'#39','#39'M'#39','#39'N'#39') '
      ' and xxzl.jijie='#39'17F'#39' '
      'union all'
      
        'select xxzl.XieXing,xxzl.SheHao,xxzl.jijie,kfxxzl.devcode,xxzl.a' +
        'rticle,clzhzl.cldh1,clzhzl.zsdh as csbh from xxzls '
      'inner join clzhzl on clzhzl.cldh = xxzls.clBh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao '
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao '
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  kfxxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'N'#39
      
        ' and LEFT(CLZL.CLDH,1) in ('#39'L'#39','#39'A'#39','#39'B'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'D'#39','#39'G'#39','#39'J'#39','#39 +
        'K'#39','#39'M'#39','#39'N'#39') '
      ' and xxzl.jijie='#39'17F'#39' '
      'union all'
      
        'select xxzls.XieXing,xxzls.SheHao,xxzls.jijie,xxzls.devcode,xxzl' +
        's.article,clzhzl.cldh1,clzhzl.zsdh as csbh from ('
      
        'select xxzl.XieXing,xxzl.SheHao,xxzl.jijie,kfxxzl.devcode,xxzl.a' +
        'rticle,clzhzl.cldh1 as CLBH,clzhzl.zsdh  from xxzls '
      'inner join clzhzl on clzhzl.cldh = xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao '
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao '
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  xxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'Y'#39' '
      
        ' and LEFT(CLZL.CLDH,1) in ('#39'L'#39','#39'A'#39','#39'B'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'D'#39','#39'G'#39','#39'J'#39','#39 +
        'K'#39','#39'M'#39','#39'N'#39') '
      ' and xxzl.jijie='#39'17F'#39' '
      ') xxzls'
      'inner join clzhzl on clzhzl.cldh = xxzls.clBh'
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  CLZL.CLZMLB='#39'N'#39
      ''
      ') XXZL  '
      'left join ('
      '  select CLBH,Prodleadtime from ('
      
        '   select CLBH,Prodleadtime,ROW_NUMBER() over (PARTITION BY CLBH' +
        ' ORDER BY Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) ' +
        'as  rn from MaterialMOQ where CLBH not like '#39'V%'#39
      '  ) MOQ where MOQ.rn=1 '
      ') MOQ on MOQ.CLBH=XXZL.CLBH'
      'where xxzl.article like '#39'%'#39
      
        'group by xxzl.XieXing,xxzl.SheHao,XXZL.jijie,XXZL.devcode,XXZL.a' +
        'rticle,xxzl.clbh,MOQ.Prodleadtime,csbh'
      ')a'
      
        'group by XieXing,SheHao,jijie,article,clbh,Prodleadtime,csbh)mai' +
        'n'
      'left join clzl on clzl.cldh=main.clbh'
      'left join zszl on zszl.zsdh=main.csbh'
      'where rn=1')
    Left = 421
    Top = 228
    object qry3XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qry3SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qry3jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object qry3devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qry3article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object qry3prodleadtime: TIntegerField
      FieldName = 'prodleadtime'
    end
    object qry3clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object qry3csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object qry3zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qry3ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qry3cqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    DataSource = ds3
    SQL.Strings = (
      ''
      
        'select distinct MOQ.Season, XXZLS.*, CLZL.YWPM as CLYWMC, CLZL.Z' +
        'WPM, CLZL.CQDH, MOQ.Prodleadtime, MOQ.SampleleadTime, MOQ.AddTLe' +
        'adtime,MOQ.Location, MOQ.sampleprice, MOQ.forecast_leadtime,'
      
        'MOQ.SampleMOQ, MOQ.ProdMOQ, MOQ.ExtraPrice, MOQ.REMARK, zszl.zsy' +
        'wjc, Surcharge, Dyingfee, CLZL_LS.CLDH AS TempCLBH from ('
      
        '  select xxzl.XieXing, xxzl.SheHao, xxzls.clbh, xxzls.CSBH from ' +
        'xxzls'
      
        '  left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao' +
        ' = xxzls.shehao'
      '  left join CLZL on CLZL.CLDH = xxzls.CLBH'
      
        '  where xxzl.XieXing = '#39'CON20FUC4403'#39' and xxzl.SheHao = '#39'02'#39' and' +
        ' CLZL.CLZMLB = '#39'N'#39
      '  union all'
      
        '  select xxzl.XieXing, xxzl.SheHao, clzhzl.cldh1, clzhzl.zsdh as' +
        ' csbh from xxzls'
      '  inner join clzhzl on clzhzl.cldh = xxzls.clBh'
      
        '  left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.shehao' +
        ' = xxzls.shehao '
      '  left join CLZL on CLZL.CLDH = clzhzl.cldh1 '
      
        '  where xxzl.XieXing = '#39'CON20FUC4403'#39' and xxzl.SheHao = '#39'02'#39' and' +
        ' CLZL.CLZMLB = '#39'N'#39
      '  union all'
      
        '  select xxzls.XieXing, xxzls.SheHao, clzhzl.cldh1, clzhzl.zsdh ' +
        'as csbh from ('
      
        '    select xxzl.XieXing, xxzl.SheHao, xxzl.article, clzhzl.cldh1' +
        ' as CLBH, xxzls.CSBH from xxzls'
      '    inner join clzhzl on clzhzl.cldh = xxzls.clbh'
      
        '    left join xxzl on xxzl.xiexing = xxzls.xiexing and xxzl.sheh' +
        'ao = xxzls.shehao'
      '    left join CLZL on CLZL.CLDH = clzhzl.cldh1'
      
        '    where xxzl.XieXing = '#39'CON20FUC4403'#39' and xxzl.SheHao = '#39'02'#39' a' +
        'nd CLZL.CLZMLB = '#39'Y'#39
      '  ) AS xxzls'
      '  inner join clzhzl on clzhzl.cldh = xxzls.clBh'
      '  left join CLZL on CLZL.CLDH = clzhzl.cldh1'
      '  where  CLZL.CLZMLB = '#39'N'#39
      ') AS XXZLS'
      'left join CLZL on clzl.cldh = xxzls.CLBH'
      'left join ('
      '  select * from ('
      
        '    select Season, Surcharge, Dyingfee, CLBH, SampleleadTime, Pr' +
        'odleadtime, Location, sampleprice, forecast_leadtime,AddTLeadtim' +
        'e, SampleMOQ, ProdMOQ, ExtraPrice, MOQ.REMARK, zsbh,'
      
        '    row_number() over(partition by CLBH order by  Substring(Seas' +
        'on, 1, 2) DESC, USERDATE desc) AS RN from ('
      
        '      select Season, Surcharge, Dyingfee, IsNull(CLZL_LS.JHDH, M' +
        'aterialMOQ.CLBH) as CLBH, SampleleadTime,AddTLeadtime, Prodleadt' +
        'ime, ZSZL_DEV.COUNTRY AS Location, sampleprice, forecast_leadtim' +
        'e, SampleMOQ, ProdMOQ, ExtraPrice, MaterialMOQ.REMARK, zsbh,'
      
        '      materialmoq.userdate, ROW_NUMBER() OVER (PARTITION BY CLBH' +
        ' ORDER BY  Substring(Season, 1, 2) DESC, MaterialMOQ.USERDATE de' +
        'sc) AS RN from MaterialMOQ'
      
        '      LEFT JOIN (SELECT * FROM ZSZL_DEV WHERE GSBH = '#39'CDC'#39') AS Z' +
        'SZL_DEV ON ZSZL_DEV.ZSDH = MaterialMOQ.ZSBH'
      
        '      left join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH and I' +
        'sNull(CLZL_LS.JHDH, '#39#39') <> '#39#39
      '      left join country on country.country = ZSZL_DEV.COUNTRY'
      '    ) AS MOQ where rn = 1'
      '  ) AS MOQ where RN = 1'
      ') AS MOQ on MOQ.CLBH = XXZLS.CLBH'
      'left join zszl on zszl.zsdh = XXZLS.CSBH'
      'left join CLZL_LS on CLZL_LS.JHDH = XXZLS.CLBH'
      'ORDER BY MOQ.Prodleadtime DESC, XXZLS.CLBH ASC'
      '')
    Left = 453
    Top = 228
    object qry4XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qry4SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qry4clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object qry4CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object qry4CLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object qry4ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object qry4CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object qry4Prodleadtime: TIntegerField
      FieldName = 'Prodleadtime'
    end
    object qry4Location: TStringField
      FieldName = 'Location'
      FixedChar = True
      Size = 15
    end
    object qry4sampleprice: TCurrencyField
      FieldName = 'sampleprice'
    end
    object qry4forecast_leadtime: TIntegerField
      FieldName = 'forecast_leadtime'
    end
    object qry4SampleMOQ: TCurrencyField
      FieldName = 'SampleMOQ'
      DisplayFormat = '0'
    end
    object qry4ProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
      DisplayFormat = '0'
    end
    object qry4ExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
      DisplayFormat = '#0.00'
    end
    object qry4Surcharge: TCurrencyField
      FieldName = 'Surcharge'
      DisplayFormat = '#0.00'
    end
    object qry4Dyingfee: TCurrencyField
      FieldName = 'Dyingfee'
      DisplayFormat = '#0.00'
    end
    object qry4zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qry4SampleleadTime: TIntegerField
      FieldName = 'SampleleadTime'
    end
    object qry4REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
    object qry4TempCLBH: TStringField
      FieldName = 'TempCLBH'
      Size = 10
    end
    object qry4AddTLeadtime: TIntegerField
      FieldName = 'AddTLeadtime'
    end
  end
  object ds3: TDataSource
    DataSet = qry3
    Left = 421
    Top = 196
  end
  object ds4: TDataSource
    DataSet = qry4
    Left = 453
    Top = 196
  end
  object Qry_history: TQuery
    DatabaseName = 'dB'
    DataSource = ds2
    SQL.Strings = (
      'SELECT *'
      'FROM    MaterialMOQ_LT_History'
      'where  Season=:Season'
      '       and CLBH=:CLBH'
      '       and ZSBH=:csbh')
    Left = 1141
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Season'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'csbh'
        ParamType = ptUnknown
      end>
  end
  object DS_history: TDataSource
    DataSet = Qry_history
    Left = 1141
    Top = 196
  end
  object XXZLPoopMenu: TPopupMenu
    Left = 455
    Top = 265
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 421
    Top = 299
  end
  object qrydev: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select main.*,zszl.zsywjc,clzl.ywpm,clzl.cqdh from ('
      
        'select XieXing,SheHao,devcode,jijie,ROW_NUMBER () over (PARTITIO' +
        'N BY devcode order BY sampleleadtime desc) as rn,sampleleadtime ' +
        ',clbh,csbh from('
      
        'select kfxxzl.XieXing,kfxxzl.SheHao,kfXXZL.jijie, kfXXZL.devcode' +
        ',MOQ.sampleleadtime,kfxxzl.clbh,csbh from( '
      ''
      
        'select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,' +
        'ypzls.clbh,ypzls.csbh from kfxxzl'
      
        'left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=' +
        'ypzl.shehao '
      'left join ypzls on ypzls.ypdh=ypzl.ypdh '
      'left join CLZL on CLZL.CLDH=ypzls.CLBH  '
      'where kfxxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'N'#39
      ' and kfxxzl.jijie='#39'20S'#39' '
      
        ' group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devco' +
        'de,ypzls.clbh,ypzls.csbh'
      ' '
      'union all'
      
        'select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,' +
        'clzhzl.cldh1,clzhzl.zsdh as csbh from kfxxzl'
      
        'left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=' +
        'ypzl.shehao '
      'left join ypzls on ypzls.ypdh=ypzl.ypdh  '
      'inner join clzhzl on clzhzl.cldh = ypzls.clBh'
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  kfxxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'N'#39
      ' and kfxxzl.jijie='#39'20S'#39' '
      
        '  group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devc' +
        'ode,clzhzl.cldh1,clzhzl.zsdh '
      'union all'
      
        'select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,' +
        'clzhzl.cldh1,clzhzl.zsdh as csbh from ('
      
        'select kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcode,' +
        'clzhzl.cldh1 as CLBH,clzhzl.zsdh  from kfxxzl '
      
        'left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=' +
        'ypzl.shehao '
      'left join ypzls on ypzls.ypdh=ypzl.ypdh  '
      'inner join clzhzl on clzhzl.cldh = ypzls.clbh'
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  kfxxzl.khdh='#39'036'#39' and CLZL.CLZMLB='#39'Y'#39' '
      ' and kfxxzl.jijie='#39'20S'#39' '
      ') kfxxzl'
      'inner join clzhzl on clzhzl.cldh = kfxxzl.clBh'
      'left join CLZL on CLZL.CLDH=clzhzl.cldh1  '
      'where  CLZL.CLZMLB='#39'N'#39
      
        'group by kfxxzl.XieXing,kfxxzl.SheHao,kfxxzl.jijie,kfxxzl.devcod' +
        'e,clzhzl.cldh1,clzhzl.zsdh '
      ') kfXXZL  '
      'left join ('
      '  select CLBH,sampleleadtime from ('
      
        'select CLBH,isnull(sampleleadtime+country.shippingleadtimesea+cu' +
        'stomclearanceday,0) as sampleleadtime,ROW_NUMBER() over (PARTITI' +
        'ON BY CLBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,' +
        '3,1) ASC) as  rn from MaterialMOQ'
      'left join country on country.country=MaterialMOQ.location'
      '  ) MOQ where MOQ.rn=1 '
      ') MOQ on MOQ.CLBH=kfxxzl.CLBH'
      'where kfxxzl.devcode like '#39'%'#39
      
        'group by kfxxzl.XieXing,kfxxzl.SheHao,kfXXZL.jijie,kfXXZL.devcod' +
        'e,kfxxzl.clbh,MOQ.sampleleadtime,csbh'
      
        ')a group by XieXing,SheHao,devcode,jijie,clbh,sampleleadtime,csb' +
        'h)main'
      'left join clzl on clzl.cldh=main.clbh'
      'left join zszl on zszl.zsdh=main.csbh'
      'where rn=1')
    Left = 108
    Top = 226
    object qrydevXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qrydevSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qrydevdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object qrydevjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object qrydevrn: TFloatField
      FieldName = 'rn'
    end
    object qrydevsampleleadtime: TIntegerField
      FieldName = 'sampleleadtime'
    end
    object qrydevclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object qrydevcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object qrydevzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qrydevywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qrydevcqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = qrydev
    Left = 108
    Top = 194
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 388
    Top = 228
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 264
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
