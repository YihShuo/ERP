object FDStatus: TFDStatus
  Left = 394
  Top = 142
  Width = 1351
  Height = 619
  Caption = 'FDStatus'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1335
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 7
      Width = 14
      Height = 13
      Caption = 'FD'
    end
    object Label2: TLabel
      Left = 474
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Season'
    end
    object Label3: TLabel
      Left = 483
      Top = 28
      Width = 28
      Height = 13
      Caption = 'Stage'
    end
    object lbl1: TLabel
      Left = 10
      Top = 28
      Width = 29
      Height = 13
      Caption = 'Articel'
    end
    object Label5: TLabel
      Left = 331
      Top = 28
      Width = 44
      Height = 13
      Caption = 'DevType'
    end
    object Label8: TLabel
      Left = 347
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label13: TLabel
      Left = 156
      Top = 28
      Width = 22
      Height = 13
      Caption = 'SR#'
    end
    object Label14: TLabel
      Left = 162
      Top = 9
      Width = 85
      Height = 13
      Caption = 'SampleOrderType'
    end
    object Label15: TLabel
      Left = 578
      Top = 6
      Width = 35
      Height = 13
      Caption = 'TestNo'
    end
    object Label20: TLabel
      Left = 586
      Top = 30
      Width = 28
      Height = 13
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 682
      Top = 30
      Width = 15
      Height = 13
      Caption = 'PO'
      Visible = False
    end
    object FDEdit: TEdit
      Left = 41
      Top = 2
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object SeasonEdit: TEdit
      Left = 514
      Top = 2
      Width = 54
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StageEdit: TEdit
      Left = 514
      Top = 24
      Width = 54
      Height = 21
      CharCase = ecUpperCase
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 783
      Top = 5
      Width = 52
      Height = 18
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 782
      Top = 26
      Width = 53
      Height = 17
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
    object CKBSel: TCheckBox
      Left = 840
      Top = 28
      Width = 103
      Height = 13
      Caption = 'Selected Only'
      TabOrder = 2
      Visible = False
    end
    object ArticleEdit: TEdit
      Left = 41
      Top = 24
      Width = 96
      Height = 21
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      TabOrder = 7
    end
    object BBTT1: TBitBtn
      Left = 565
      Top = 24
      Width = 16
      Height = 21
      Caption = '...'
      TabOrder = 0
      OnClick = BBTT1Click
    end
    object BBTT2: TBitBtn
      Left = 136
      Top = 2
      Width = 16
      Height = 21
      Caption = '...'
      TabOrder = 8
      OnClick = BBTT2Click
    end
    object BitBtn1: TBitBtn
      Left = 135
      Top = 24
      Width = 16
      Height = 21
      Caption = '...'
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object DevTypeEdit: TComboBox
      Left = 383
      Top = 24
      Width = 87
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        ''
        'inline'
        'SMU')
    end
    object DroppedCK: TComboBox
      Left = 383
      Top = 3
      Width = 87
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 11
      Text = 'Not Dropped'
      Items.Strings = (
        ''
        'Dropped'
        'Not Dropped')
    end
    object SREdit: TEdit
      Left = 182
      Top = 24
      Width = 148
      Height = 21
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      TabOrder = 12
    end
    object BitBtn2: TBitBtn
      Left = 314
      Top = 22
      Width = 16
      Height = 21
      Caption = '...'
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object LAI: TComboBox
      Left = 251
      Top = 4
      Width = 81
      Height = 21
      ItemHeight = 13
      TabOrder = 14
      Items.Strings = (
        ''
        'LAIV'
        'LAIK'
        'LAIT')
    end
    object TBEdit: TEdit
      Left = 618
      Top = 2
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object ComboBox14: TComboBox
      Left = 618
      Top = 25
      Width = 57
      Height = 21
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 16
      Visible = False
      Items.Strings = (
        'SKX'
        'SRL')
    end
    object POEdit: TEdit
      Left = 698
      Top = 26
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      Visible = False
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 49
    Width = 1335
    Height = 531
    ActivePage = ts1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Main Class'
      ImageIndex = 3
      object Splitter3: TSplitter
        Left = 0
        Top = 0
        Width = 1
        Height = 503
        Color = clSkyBlue
        ParentColor = False
      end
      object RightPanel: TPanel
        Left = 469
        Top = 0
        Width = 858
        Height = 503
        Align = alClient
        TabOrder = 0
        object Label7: TLabel
          Left = 1
          Top = 380
          Width = 856
          Height = 13
          Align = alBottom
          Caption = 'Temporary Material no class'
          Color = clYellow
          ParentColor = False
        end
        object DBGrid_No: TDBGridEh
          Left = 1
          Top = 393
          Width = 856
          Height = 109
          Align = alBottom
          DataSource = SRDet_NoDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = pm3
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid_NoCellClick
          OnDrawColumnCell = DBGrid_NoDrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'MatNO'
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = 'MatName'
              Width = 280
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Pur Qty'
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'ETD'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              Width = 29
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              Title.Caption = 'Pur NO'
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'useType'
              Footers = <>
              Title.Caption = 'Type'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'Stock_Memo'
              Footers = <>
              Width = 122
            end
            item
              EditButtons = <>
              FieldName = 'Supplier'
              Footers = <>
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'UserName'
              Footers = <>
              Width = 41
            end>
        end
        object MainClassPage: TPageControl
          Left = 1
          Top = 34
          Width = 856
          Height = 346
          ActivePage = TabSheet2
          Align = alClient
          TabOrder = 1
          object TabSheet2: TTabSheet
            Caption = 'Uppers'
            object DBDetGrid_ML: TDBGridEh
              Left = 0
              Top = 0
              Width = 848
              Height = 306
              Align = alTop
              DataSource = SRDet_MLDS
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              FrozenCols = 2
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
              PopupMenu = pm3
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBDetGrid_MLCellClick
              OnDrawColumnCell = DBDetGrid_MLDrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <
                    item
                      FieldName = 'CLBH'
                      ValueType = fvtCount
                    end>
                  Title.Caption = 'MatNO'
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  Title.Caption = 'MatName'
                  Width = 280
                end
                item
                  EditButtons = <>
                  FieldName = 'CLSL'
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 44
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <>
                  Title.Caption = 'Pur Qty'
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'ETD'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'Location'
                  Footers = <>
                  Title.Caption = 'Loc'
                  Width = 29
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'CGNO'
                  Footers = <>
                  Title.Caption = 'Pur NO'
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'useType'
                  Footers = <>
                  Title.Caption = 'Type'
                  Width = 27
                end
                item
                  EditButtons = <>
                  FieldName = 'Stock_Memo'
                  Footers = <>
                  Title.Caption = 'Memo'
                  Width = 122
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'UserName'
                  Footers = <>
                  Width = 41
                end>
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Stitching'
            ImageIndex = 1
            object DBDetGrid_FML: TDBGridEh
              Left = 0
              Top = 0
              Width = 484
              Height = 246
              Align = alClient
              DataSource = SRDet_FMLDS
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              FrozenCols = 2
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
              PopupMenu = pm3
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBDetGrid_FMLCellClick
              OnDrawColumnCell = DBDetGrid_FMLDrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <
                    item
                      FieldName = 'CLBH'
                      ValueType = fvtCount
                    end>
                  Title.Caption = 'MatNO'
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  Title.Caption = 'MatName'
                  Width = 280
                end
                item
                  EditButtons = <>
                  FieldName = 'CLSL'
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 44
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <>
                  Title.Caption = 'Pur Qty'
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'ETD'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'Location'
                  Footers = <>
                  Title.Caption = 'Loc'
                  Width = 29
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'CGNO'
                  Footers = <>
                  Title.Caption = 'Pur NO'
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'useType'
                  Footers = <>
                  Title.Caption = 'Type'
                  Width = 27
                end
                item
                  EditButtons = <>
                  FieldName = 'Stock_Memo'
                  Footers = <>
                  Title.Caption = 'Memo'
                  Width = 122
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'UserName'
                  Footers = <>
                  Width = 41
                end>
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Assembly'
            ImageIndex = 2
            object DBDetGrid_FGL: TDBGridEh
              Left = 0
              Top = 0
              Width = 378
              Height = 246
              Align = alClient
              DataSource = SRDet_FGLDS
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              FrozenCols = 2
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
              PopupMenu = pm3
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBDetGrid_FGLCellClick
              OnDrawColumnCell = DBDetGrid_FGLDrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <
                    item
                      FieldName = 'CLBH'
                      ValueType = fvtCount
                    end>
                  Title.Caption = 'MatNO'
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  Title.Caption = 'MatName'
                  Width = 280
                end
                item
                  EditButtons = <>
                  FieldName = 'CLSL'
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 44
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <>
                  Title.Caption = 'Pur Qty'
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'ETD'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'Location'
                  Footers = <>
                  Width = 29
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'CGNO'
                  Footers = <>
                  Title.Caption = 'Pur NO'
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'useType'
                  Footers = <>
                  Title.Caption = 'Type'
                  Width = 27
                end
                item
                  EditButtons = <>
                  FieldName = 'Stock_Memo'
                  Footers = <>
                  Title.Caption = 'Memo'
                  Width = 122
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'UserName'
                  Footers = <>
                  Width = 41
                end>
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Bottom'
            ImageIndex = 3
            object DBDetGrid_DL: TDBGridEh
              Left = 0
              Top = 0
              Width = 378
              Height = 246
              Align = alClient
              DataSource = SRDet_DLDS
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              FrozenCols = 2
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
              PopupMenu = pm3
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBDetGrid_DLCellClick
              OnDrawColumnCell = DBDetGrid_DLDrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <
                    item
                      FieldName = 'CLBH'
                      ValueType = fvtCount
                    end>
                  Title.Caption = 'MatNO'
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  Title.Caption = 'MatName'
                  Width = 280
                end
                item
                  EditButtons = <>
                  FieldName = 'CLSL'
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 44
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <>
                  Title.Caption = 'Pur Qty'
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'ETD'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'Location'
                  Footers = <>
                  Width = 29
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'CGNO'
                  Footers = <>
                  Title.Caption = 'Pur NO'
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'useType'
                  Footers = <>
                  Title.Caption = 'Type'
                  Width = 27
                end
                item
                  EditButtons = <>
                  FieldName = 'Stock_Memo'
                  Footers = <>
                  Title.Caption = 'Memo'
                  Width = 122
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'UserName'
                  Footers = <>
                  Width = 41
                end>
            end
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 856
          Height = 33
          Align = alTop
          TabOrder = 2
          object Label10: TLabel
            Left = 8
            Top = 15
            Width = 142
            Height = 17
            AutoSize = False
            Caption = 'Materail Location is empty'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clFuchsia
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 9
            Top = 0
            Width = 83
            Height = 13
            Caption = 'Material Usage=0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 107
            Top = 1
            Width = 238
            Height = 16
            AutoSize = False
            Caption = 'Materail Usage>0 and not yet Buy or UseStock'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object LeftPanel: TPanel
        Left = 1
        Top = 0
        Width = 468
        Height = 503
        Align = alLeft
        Caption = 'LeftPanel'
        TabOrder = 1
        object SRDBGrid: TDBGridEh
          Left = 1
          Top = 33
          Width = 466
          Height = 469
          Align = alClient
          DataSource = SRDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = PM_ShoeMemo
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = SRDBGridCellClick
          OnDrawColumnCell = SRDBGridDrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <
                item
                  FieldName = 'Article'
                  ValueType = fvtCount
                end>
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'ML'
              Footers = <>
              Title.Caption = 'ETA|Uppers '
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'FML'
              Footers = <>
              Title.Caption = 'ETA|Stitching'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'FGL'
              Footers = <>
              Title.Caption = 'ETA|Assembly'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'DL'
              Footers = <>
              Title.Caption = 'ETA|Bottom '
              Width = 65
            end>
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 466
          Height = 32
          Align = alTop
          TabOrder = 1
          object UpperLabel: TLabel
            Left = 11
            Top = 2
            Width = 113
            Height = 13
            Caption = 'Uppers=A / C /F /K'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object AcessoriesLabel: TLabel
            Left = 109
            Top = 2
            Width = 134
            Height = 13
            Caption = 'Stitching=B / L / M /N '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object ReinformceLabel: TLabel
            Left = 228
            Top = 2
            Width = 140
            Height = 13
            Caption = 'Assembly=D / E/ O /I /J'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object BottomLabel: TLabel
            Left = 353
            Top = 2
            Width = 60
            Height = 13
            Caption = 'Bottom=G '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object ZeroUsageCK: TCheckBox
            Left = 11
            Top = 15
            Width = 85
            Height = 14
            Caption = 'show usage=0'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object ETA_CB: TCheckBox
            Left = 371
            Top = 17
            Width = 91
            Height = 14
            Caption = 'show Max ETA'
            TabOrder = 1
          end
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'Article'
      object spl1: TSplitter
        Left = 183
        Top = 0
        Width = 2
        Height = 503
        Color = clSkyBlue
        ParentColor = False
      end
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 183
        Height = 503
        Align = alLeft
        Caption = 'pnl2'
        TabOrder = 0
        object dbgrdh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 181
          Height = 501
          Align = alClient
          DataSource = ds1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = PM_ShoeMemo
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgrdh1CellClick
          OnDrawColumnCell = dbgrdh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DEVCODE'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footer.FieldName = 'article'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Article'
              Title.TitleButton = True
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.TitleButton = True
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'xieming'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Shoename'
              Title.TitleButton = True
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = 'stage'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'ypcc'
              Footers = <>
              Title.Caption = 'Size'
              Width = 33
            end>
        end
      end
      object pnl3: TPanel
        Left = 185
        Top = 0
        Width = 1142
        Height = 503
        Align = alClient
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 1
          Top = 501
          Width = 1140
          Height = 1
          Cursor = crVSplit
          Align = alBottom
          Color = clSkyBlue
          ParentColor = False
        end
        object dbgrdh2: TDBGridEh
          Left = 1
          Top = 34
          Width = 1140
          Height = 365
          Hint = 'click right button to check Stock'
          Align = alTop
          DataSource = ds2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
          ParentShowHint = False
          PopupMenu = pm2
          ReadOnly = True
          ShowHint = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          OnCellClick = dbgrdh2CellClick
          OnDrawColumnCell = dbgrdh2DrawColumnCell
          OnGetCellParams = dbgrdh2GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footer.FieldName = 'clbh'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Mat. NO.'
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'Description'
              Title.TitleButton = True
              Width = 269
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 62
            end
            item
              Color = clSkyBlue
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              Title.Caption = 'Pur Qty'
              Title.TitleButton = True
              Width = 41
            end
            item
              Color = clSkyBlue
              EditButtons = <>
              FieldName = 'rkqty'
              Footers = <>
              Title.Caption = 'Rece Qty'
              Title.TitleButton = True
              Width = 37
            end
            item
              Color = clAqua
              DisplayFormat = '#0.00'
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              Title.Caption = 'Use Stock'
              Title.TitleButton = True
              Width = 38
            end
            item
              Color = clAqua
              EditButtons = <>
              FieldName = 'use_memo'
              Footers = <>
              Title.Caption = 'Use Remark'
              Title.TitleButton = True
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Footers = <>
              Title.TitleButton = True
              Width = 33
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              Title.Caption = 'PO'
              Title.TitleButton = True
              Width = 27
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = 'Purchasing|Date'
              Title.TitleButton = True
              Width = 61
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.Caption = 'Purchasing|ETD'
              Title.TitleButton = True
              Width = 61
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ActualETD'
              Footers = <>
              Title.Caption = 'Purchasing|ActualETD'
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'DelayReason'
              Footers = <>
              Title.Caption = 'Purchasing|DelayReason'
              Width = 90
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'cidate'
              Footers = <>
              Title.Caption = 'Purchasing|InvoiceDate'
              Title.TitleButton = True
              Width = 130
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'cgzl_memo'
              Footers = <>
              Title.Caption = 'Purchasing|REMARK & ISSUE'
              Title.TitleButton = True
              Width = 80
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.Caption = 'Purchasing|Delivery Date '
              Title.TitleButton = True
              Width = 86
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurReceiveDate'
              Footers = <>
              Title.Caption = 'Purchasing|Purchase Received Date'
              Title.TitleButton = True
              Width = 87
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'rkdate'
              Footers = <>
              Title.Caption = 'Purchasing|Warehouse Received Date'
              Title.TitleButton = True
              Width = 81
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'CheckResult'
              Footers = <>
              Title.Caption = 'Purchasing|Status'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Visually'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|Visually'
              Title.TitleButton = True
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'Spectro'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|Spectro'
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'Spectro_file'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|Spectro_file'
              Title.TitleButton = True
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'Result'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|Result'
              Title.TitleButton = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'A4Comfirm'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|A4CFm'
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = 'TrackingA4Comfirm'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|TrackingA4CFM'
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'DateA4Comfirm'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|DateA4CFM'
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'remark'
              Footers = <>
              Title.Caption = 'Color Swatch Card Tracking|remark'
              Title.TitleButton = True
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'NG_Reason'
              Footers = <>
              Title.Caption = 'Confirm Status'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'NG_ETD'
              Footers = <>
              Title.Caption = 'NG|ETD'
              Title.TitleButton = True
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'NG_ETA'
              Footers = <>
              Title.Caption = 'NG|ETA'
              Title.TitleButton = True
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'NG_RESULT'
              Footers = <>
              Title.Caption = 'NG|Result'
              Title.TitleButton = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'NG_Remark'
              Footers = <>
              Title.Caption = 'NG|Remark'
              Title.TitleButton = True
              Width = 117
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              Title.Caption = 'Supp ID'
              Title.TitleButton = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              Title.TitleButton = True
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'clsl'
              Footers = <>
              Title.Caption = 'BOM Usage'
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.Caption = 'Pur. No.'
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Invoice'
              Footers = <>
              Title.TitleButton = True
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'BillNO'
              Footers = <>
              Title.TitleButton = True
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'All_Parts'
              Footers = <>
              Title.TitleButton = True
              Width = 162
            end
            item
              EditButtons = <>
              FieldName = 'H_ETD'
              Footers = <>
              Title.Caption = 'Last_ETD'
              Title.TitleButton = True
              Width = 84
            end>
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 399
          Width = 576
          Height = 102
          Align = alLeft
          DataSource = DS_MEMO
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          Columns = <
            item
              EditButtons = <>
              FieldName = 'LineNum'
              Footers = <>
              Title.Caption = 'Item'
              Width = 27
            end
            item
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              Title.Caption = 'Revise Remark'
              Width = 527
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1140
          Height = 33
          Align = alTop
          TabOrder = 2
          object Label43: TLabel
            Left = 8
            Top = 15
            Width = 233
            Height = 17
            AutoSize = False
            Caption = 'Spec change material and have buy not  used'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 9
            Top = 0
            Width = 180
            Height = 13
            Caption = 'Material not yet purchase or use stock'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button3: TButton
            Left = 240
            Top = 7
            Width = 51
            Height = 20
            Caption = 'Excel'
            TabOrder = 0
            OnClick = Button3Click
          end
        end
        object Panel6: TPanel
          Left = 577
          Top = 399
          Width = 564
          Height = 102
          Align = alClient
          Caption = 'Panel6'
          TabOrder = 3
          object Memo1: TMemo
            Left = 1
            Top = 1
            Width = 562
            Height = 24
            Align = alTop
            Color = clSilver
            Lines.Strings = (
              'MaterialNG Remark History')
            TabOrder = 0
          end
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 25
            Width = 562
            Height = 76
            Align = alClient
            Color = clSilver
            DataSource = NGDS
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'remark'
                Footers = <>
                Title.Caption = 'Remark'
                Width = 315
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'UserDate'
                Width = 179
              end
              item
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                Title.Caption = 'UserID'
                Width = 109
              end>
          end
        end
      end
    end
    object ts2: TTabSheet
      Caption = 'Material'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 534
        Top = 26
        Width = 2
        Height = 468
        Color = clSkyBlue
        ParentColor = False
      end
      object pnl1: TPanel
        Left = 0
        Top = 26
        Width = 534
        Height = 468
        Align = alLeft
        Caption = 'pnl1'
        TabOrder = 0
        object dbgrdh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 532
          Height = 466
          Align = alClient
          DataSource = ds3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = pm1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgrdh3CellClick
          OnDrawColumnCell = dbgrdh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footer.FieldName = 'clbh'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Matl. NO'
              Title.TitleButton = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Description'
              Title.TitleButton = True
              Width = 240
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 99
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'recs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footer.FieldName = 'recs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Miss'
              Title.TitleButton = True
              Width = 28
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = 'PO Date'
              Title.TitleButton = True
              Width = 68
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.Caption = 'ETD'
              Title.TitleButton = True
              Width = 65
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.TitleButton = True
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.Caption = 'Pur. No'
              Title.TitleButton = True
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sup. NO'
              Title.TitleButton = True
              Width = 43
            end>
        end
      end
      object pnl4: TPanel
        Left = 536
        Top = 26
        Width = 828
        Height = 468
        Align = alClient
        Caption = 'pnl4'
        TabOrder = 1
        object dbgrdh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 826
          Height = 466
          Align = alClient
          DataSource = ds4
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          PopupMenu = pm3
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgrdh4CellClick
          OnDrawColumnCell = dbgrdh4DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'article'
              Footer.FieldName = 'article'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Article'
              Title.TitleButton = True
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 58
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.Caption = 'PO Date'
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.Caption = 'ETD'
              Title.TitleButton = True
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'eta'
              Footers = <>
              Title.Caption = 'ETA'
              Width = 60
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              Title.Caption = 'Pur. qty'
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'dwbh'
              Footers = <>
              Title.Caption = 'Unit'
              Title.TitleButton = True
              Width = 23
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'useqty'
              Footers = <>
              Title.Caption = 'Use qty'
              Title.TitleButton = True
              Width = 43
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.Caption = 'Pur No.'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
              Title.Caption = 'Supplier'
              Title.TitleButton = True
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'Sample No'
              Width = 101
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 26
        Align = alTop
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 7
          Width = 38
          Height = 13
          Caption = 'Supplier'
        end
        object lbl2: TLabel
          Left = 159
          Top = 7
          Width = 39
          Height = 13
          Caption = 'Matl NO'
        end
        object Label4: TLabel
          Left = 392
          Top = 7
          Width = 144
          Height = 13
          Caption = 'Click "Miss" to show Article list'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 548
          Top = 7
          Width = 162
          Height = 13
          Caption = 'Not Purchase or Not set useStock'
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object SupEdit: TEdit
          Left = 56
          Top = 3
          Width = 94
          Height = 21
          TabOrder = 0
        end
        object MatEdit: TEdit
          Left = 206
          Top = 3
          Width = 94
          Height = 21
          TabOrder = 1
        end
        object chk1: TCheckBox
          Left = 325
          Top = 7
          Width = 59
          Height = 13
          Caption = 'Show all'
          TabOrder = 2
        end
      end
    end
  end
  object qry1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ypzl.ypcc,YPZL.YPDH,kfxxzl.jijie,KFXXZL.article,KFXXZL.DE' +
        'VCODE+'#39'/'#39'+kfxxzl.YSSM as DEVCODE,kfxxzl.xieming,YPZL.KFJD as Sta' +
        'ge,kfxxzl.FD,isnull(yl.recs,0) as recs  '
      ' from YPZL '
      
        ' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.sheh' +
        'ao=YPZL.shehao'
      
        ' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.sh' +
        'ehao=xxzlkf.shehao'
      
        ' left join (select  cgzlss.zlbh as article,count(cgzlss.zlbh) as' +
        ' recs from cgzlss WHERE STAGE='#39'CFM'#39
      ' group by cgzlss.zlbh ) yl on yl.article=YPZL.YPDH '
      ' where YPZL.KFJD='#39'CFM'#39' and YPZL.GSDH='#39'CDC'#39' '
      '   and kfXXZL.FD = '#39'NIN'#39
      '   and KFXXZL.article = '#39'559830C'#39
      '   and KFXXZL.DEVCODE = '#39'G26480-CT001W-18S02'#39
      '   and kfxxzl.Jijie = '#39'18S'#39
      'and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ')
    Left = 65
    Top = 194
    object strngfldqry1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object strngfldqry1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object strngfldqry1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object strngfldqry1stage: TStringField
      FieldName = 'stage'
    end
    object qry1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry1recs: TIntegerField
      FieldName = 'recs'
    end
    object qry1YPDH: TStringField
      FieldName = 'YPDH'
      Size = 15
    end
    object qry1ypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object qry1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 65
    Top = 162
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    DataSource = ds1
    SQL.Strings = (
      'if object_id('#39'tempdb..#FDStatus_Parts'#39') is not null'
      'begin drop table #FDStatus_Parts end'
      
        '  select PP.clbh,PP.BWBH,PP.YWSM AS P_Name into #FDStatus_Parts ' +
        'from ('
      '       SELECT ypzls.clbh,ypzls.BWBH,BWZL.YWSM   '
      '       from ypzls'
      '       left join ypzl on ypzl.ypdh=ypzls.ypdh'
      '       left join clzl on clzl.cldh=ypzls.clbh'
      '       left join BWZL on BWZL.BWDH=ypzls.BWBH  '
      '       where ypzl.YPDH=:YPDH and kfjd=:Stage'
      '             and clzl.clzmlb='#39'N'#39
      '       Union all '
      '       SELECT CLZHZL.CLDH1 AS clbh,ypzls.BWBH,BWZL.YWSM   '
      '       from ypzls'
      '       INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh'
      '       left join ypzl on ypzl.ypdh=ypzls.ypdh'
      '       left join clzl on clzl.cldh=CLZHZL.CLDH1'
      '       left join BWZL on BWZL.BWDH=ypzls.BWBH  '
      '       where ypzl.YPDH=:YPDH and kfjd=:Stage'
      '             and clzl.clzmlb='#39'N'#39
      '             and CLZHZL.syl > 0'
      '       ) PP '
      ' group by PP.clbh,PP.BWBH,PP.YWSM  '
      'if object_id('#39'tempdb..#FDStatus_Mon'#39') is not null    '
      'begin drop table #FDStatus_Mon end                 '
      
        ' select ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,sum(ypzls.clsl) a' +
        's clsl,cgkcuse.qty,Max(cgkcuse.memo) as use_memo,ypzls.csbh,zszl' +
        '.zsywjc,dwbh,MaterialMOQ.Location '
      ' into #FDStatus_Mon'
      ' from ypzls'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' left join zszl on zszl.zsdh=ypzls.csbh'
      ' left join clzl on clzl.cldh=ypzls.clbh'
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=y' +
        'pzls.clbh and cgkcuse.GSBH='#39'CDC'#39' '
      
        ' left join MaterialMOQ on MaterialMOQ.clbh=ypzls.clbh and Materi' +
        'alMOQ.Season='#39'24F'#39
      ' where ypzl.YPDH=:YPDH and kfjd=:Stage'
      '       and clzl.clzmlb='#39'N'#39
      
        ' group by ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,cgkcuse.qty,ypz' +
        'ls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location '
      'if object_id('#39'tempdb..#FDStatus_Mon_All'#39') is not null    '
      'begin drop table #FDStatus_Mon_All end                 '
      
        ' select ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,sum(ypzls.clsl) a' +
        's clsl,cgkcuse.qty,Max(cgkcuse.memo) as use_memo,ypzls.csbh,zszl' +
        '.zsywjc,dwbh,MaterialMOQ.Location '
      ' into #FDStatus_Mon_All '
      ' from ypzls'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' left join zszl on zszl.zsdh=ypzls.csbh'
      ' left join clzl on clzl.cldh=ypzls.clbh'
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=y' +
        'pzls.clbh and cgkcuse.GSBH='#39'CDC'#39
      
        ' left join MaterialMOQ on MaterialMOQ.clbh=ypzls.clbh and Materi' +
        'alMOQ.Season='#39'24F'#39
      ' where ypzl.YPDH=:YPDH and kfjd=:Stage'
      
        ' group by ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,cgkcuse.qty,ypz' +
        'ls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location '
      'if object_id('#39'tempdb..#FDStatus_Son'#39') is not null    '
      'begin drop table #FDStatus_Son end                 '
      
        ' select ypzl.article,kfjd,CLZHZL.CLDH1 AS clbh,clzl.ywpm,sum(ypz' +
        'ls.clsl* CLZHZL.SYL) as clsl,cgkcuse.qty,Max(cgkcuse.memo) as us' +
        'e_memo,CLZHZL.ZSDH as csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location'
      '       into #FDStatus_Son'
      ' from ypzls'
      ' INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' left join zszl on zszl.zsdh=CLZHZL.ZSDH'
      ' left join clzl on clzl.cldh=CLZHZL.CLDH1'
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=C' +
        'LZHZL.CLDH1 and cgkcuse.GSBH='#39'CDC'#39' '
      
        ' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and Mate' +
        'rialMOQ.Season='#39'24F'#39
      ' where ypzl.YPDH=:YPDH and kfjd=:Stage'
      
        '       and not exists (select #FDStatus_Mon.clbh from #FDStatus_' +
        'Mon'
      '                       where #FDStatus_Mon.clbh=CLZHZL.CLDH1  ) '
      '       and CLZHZL.syl > 0'
      '       and clzl.clzmlb='#39'N'#39
      
        ' group by ypzl.article,kfjd,CLZHZL.CLDH1,clzl.ywpm,cgkcuse.qty,C' +
        'LZHZL.ZSDH,zszl.zsywjc,dwbh,MaterialMOQ.Location '
      'Union all '
      
        ' Select clzhzl2.article,YPZL.kfjd,CLZHZL.CLDH1 as clbh,clzl.ywpm' +
        ',(clzhzl2.clsl*CLZHZL.SYL) as CLZL,cgkcuse.qty,cgkcuse.memo as u' +
        'se_memo,CLZHZL.ZSDH as csbh,zszl.zsywjc,CLZL.dwbh,MaterialMOQ.Lo' +
        'cation from ('
      
        ' select ypzl.article,kfjd,CLZHZL.CLDH1 AS clbh,clzl.ywpm,sum(ypz' +
        'ls.clsl* CLZHZL.SYL) as clsl,cgkcuse.qty,CLZHZL.ZSDH as csbh,zsz' +
        'l.zsywjc,dwbh,MaterialMOQ.Location'
      ' from ypzls'
      ' INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' left join zszl on zszl.zsdh=CLZHZL.ZSDH'
      ' left join clzl on clzl.cldh=CLZHZL.CLDH1'
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=C' +
        'LZHZL.CLDH1 and cgkcuse.GSBH='#39'CDC'#39' '
      
        ' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and Mate' +
        'rialMOQ.Season='#39'24F'#39' '
      ' where ypzl.YPDH=:YPDH and kfjd=:Stage '
      '       and CLZHZL.syl > 0'
      '       and clzl.clzmlb='#39'Y'#39' '
      
        ' group by ypzl.article,kfjd,CLZHZL.CLDH1,clzl.ywpm,cgkcuse.qty,C' +
        'LZHZL.ZSDH,zszl.zsywjc,dwbh,MaterialMOQ.Location '
      ' ) clzhzl2'
      ' INNER join CLZHZL   ON clzhzl2.clbh = CLZHZL.CLDH'
      ' INNER join CLZL on CLZL.CLDH=CLZHZL.CLDh1'
      ' INNER join YPZL on YPZL.ypdh=:ypdh and YPZL.KFJD=clzhzl2.kfjd'
      
        ' left join cgkcuse on cgkcuse.zlbh=:YPDH  and cgkcuse.clbh=CLZHZ' +
        'L.CLDH1 and cgkcuse.GSBH='#39'CDC'#39' '
      ' left join zszl on zszl.zsdh=CLZHZL.ZSDH'
      
        ' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and Mate' +
        'rialMOQ.Season='#39'24F'#39' '
      'if object_id('#39'tempdb..#FDStatus_CG'#39') is not null'
      'begin drop table #FDStatus_CG end'
      
        '  select max(CGZLInvoice_1.cidate) as cidate,cs.clbh,count(cs.cl' +
        'bh) as recs,min(cgzl.cgdate)as cgdate,max(cgzls.memo) as cgzl_me' +
        'mo,Max(ETDTemp.ETD) as H_ETD,'
      
        '  min(cs.CFMdate) as yqdate,min(CGZLInvoice_1.ETA) as ETA,max(CG' +
        'ZLInvoice_1.Invoice) as Invoice,max(CGZLInvoice_1.BillNO) as Bil' +
        'lNO,'
      
        '  min(cgzls.cgno) as cgno,Sum(KCRKS.qty) as rkqty,min(KCRKS.User' +
        'date) as rkdate,sum(cs.Qty) as PurQty,MAX(cgzl.zsbh) AS zsbh,CGZ' +
        'LInvoiceS_1.PurReceiveDate,CGZLInvoiceS_1.CheckResult,min(cgzls.' +
        'CommitedETD) as ActualETD,min(cgzls.DelayReason) as DelayReason'
      '  into #FDStatus_CG from cgzlss cs'
      '  left join cgzl on cgzl.cgno=cs.cgno'
      '  left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      '  left join KCRKS on KCRKS.DOCNO=cs.cgno and KCRKS.clbh=cs.clbh '
      '  left join ('
      
        '    select CGNO, clbh, isnull(Min(CINO), '#39'no invoice'#39') AS CINO_1' +
        ', MAX(PurReceiveDate) AS PurReceiveDate, MAX(CheckResult) AS Che' +
        'ckResult from CGZLInvoiceS'
      '    GROUP BY CGNO, clbh'
      
        '  ) CGZLInvoiceS_1 on CGZLS.clbh=CGZLInvoiceS_1.clbh and CGZLS.C' +
        'GNO=CGZLInvoiceS_1.CGNO '
      
        '  left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZ' +
        'LInvoiceS_1.CINO_1  '
      
        ' left join ( Select CGNO,CLBH,Min(ETD) as ETD from ETDTemp where' +
        ' VER=1 Group by CGNO,CLBH )  ETDTemp on cs.CGNO = ETDTemp.CGNO  ' +
        'and  cs.CLBH = ETDTemp.CLBH '
      ' where cs.qty>0 and cs.stage=:Stage and cs.zlbh=:YPDH'
      
        ' group by cs.clbh, CGZLInvoiceS_1.PurReceiveDate, CGZLInvoiceS_1' +
        '.CheckResult'
      'select * from ('
      
        '  select Mon.article,kfjd,Mon.clbh,Mon.ywpm,Mon.clsl,Mon.qty,Mon' +
        '.use_memo,Mon.csbh,Mon.zsywjc,Mon.Location,'
      '  CAST(ISNULL((SELECT P_Name+'#39','#39'  FROM #FDStatus_Parts '
      '  WHERE #FDStatus_Parts.clbh=Mon.clbh'
      '  FOR XML PATH('#39#39')   '
      '  ),'#39#39')  AS char(200)) as All_Parts,'
      
        '  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H' +
        '_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,d' +
        'wbh,'#39'1'#39' as srtype,'
      '  cg.CheckResult AS NG_REASON,'
      
        '  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RE' +
        'SULT,MaterialNG.Remark AS NG_Remark,cgzl_color.Visually,'
      
        '  CGZL_Color2.A4Comfirm,CGZL_Color2.TrackingA4Comfirm,CGZL_Color' +
        '2.DateA4Comfirm,cgzl_color.Spectro,cgzl_color.Spectro_file,cgzl_' +
        'color.Result,CGZL_Color.remark,CG.PurReceiveDate,CG.CheckResult,' +
        'CG.ActualETD,CG.DelayReason'
      '  from #FDStatus_Mon Mon'
      '  left join #FDStatus_CG cg on cg.clbh=Mon.clbh'
      
        '  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG' +
        '.CGNO=cg.cgno '
      
        '    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '             when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEM' +
        'P.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH'
      
        '             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL' +
        '_LS.JHDH'
      '             else CLZL.cldh  end ColorCLDH  '
      '        From CLZL '
      
        '        left join(select CLDH,JHDH from  CLZL_LS UNION ALL selec' +
        't JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLD' +
        'H=CLZL.cldh '
      '        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TE' +
        'MP.CLBH=CLZL_LS.JHDH'
      '    )ColorCLDH on ColorCLDH.CLDH=Mon.CLBH'
      
        '    left join cgzl_color on cgzl_color.cgno=CG.cgno and cgzl_col' +
        'or.clbh=ColorCLDH.ColorCLDH'
      
        '    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLD' +
        'H'
      '  where 1=1 '
      
        '  and Mon.csbh not in (Select zszlfilter.zsdh from zszlfilter wh' +
        'ere zszlfilter.GSBH='#39'CDC'#39') '
      
        '  and Mon.clbh not in (Select clzlfilter.cldh from clzlfilter wh' +
        'ere clzlfilter.GSBH='#39'CDC'#39') '
      '  union all'
      
        '  select Son.article,kfjd,Son.clbh,Son.ywpm,Son.clsl,Son.qty,Son' +
        '.use_memo,Son.csbh,Son.zsywjc,Son.Location,'
      '  CAST(ISNULL((SELECT P_Name+'#39','#39'  FROM #FDStatus_Parts '
      '  WHERE #FDStatus_Parts.clbh=Son.clbh  '
      '  FOR XML PATH('#39#39')   '
      '  ),'#39#39')  AS char(200)) as All_Parts,'
      
        '  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H' +
        '_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,d' +
        'wbh,'#39'2'#39' as srtype,'
      '  cg.CheckResult AS NG_REASON,'
      
        '  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RE' +
        'SULT,MaterialNG.Remark AS NG_Remark,'
      
        '  cgzl_color.Visually,CGZL_Color2.A4Comfirm,CGZL_Color2.Tracking' +
        'A4Comfirm,CGZL_Color2.DateA4Comfirm,cgzl_color.Spectro,cgzl_colo' +
        'r.Spectro_file,cgzl_color.Result,CGZL_Color.remark,CG.PurReceive' +
        'Date,CG.CheckResult,CG.ActualETD,CG.DelayReason'
      '  from #FDStatus_Son Son'
      '  left join #FDStatus_CG cg on cg.clbh=Son.clbh'
      
        '  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG' +
        '.CGNO=cg.cgno '
      
        '    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '             when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEM' +
        'P.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH'
      
        '             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL' +
        '_LS.JHDH'
      '             else CLZL.cldh  end ColorCLDH  '
      '        From CLZL '
      
        '        left join(select CLDH,JHDH from  CLZL_LS UNION ALL selec' +
        't JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLD' +
        'H=CLZL.cldh '
      '        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TE' +
        'MP.CLBH=CLZL_LS.JHDH'
      '    )ColorCLDH on ColorCLDH.CLDH=Son.CLBH'
      
        '    left join cgzl_color on cgzl_color.cgno=CG.cgno and cgzl_col' +
        'or.clbh=ColorCLDH.ColorCLDH'
      
        '    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLD' +
        'H'
      '  where 1=1 '
      
        '  and Son.csbh not in (Select zszlfilter.zsdh from zszlfilter wh' +
        'ere zszlfilter.GSBH='#39'CDC'#39') '
      
        '  and Son.clbh not in (Select clzlfilter.cldh from clzlfilter wh' +
        'ere clzlfilter.GSBH='#39'CDC'#39') '
      '  union all'
      
        '  select MonALL.article,kfjd,MonALL.clbh,MonALL.ywpm,MonALL.clsl' +
        ',MonALL.qty,MonALL.use_memo,MonALL.csbh,MonALL.zsywjc,MonALL.Loc' +
        'ation,'
      '  CAST(ISNULL((SELECT P_Name+'#39','#39'  FROM #FDStatus_Parts '
      '  WHERE #FDStatus_Parts.clbh=MonALL.clbh  '
      '  FOR XML PATH('#39#39')   '
      '  ),'#39#39')  AS char(200)) as All_Parts,'
      
        '  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H' +
        '_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,M' +
        'onALL.dwbh,'#39'4'#39' as srtype,'
      '  cg.CheckResult AS NG_REASON,'
      
        '  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RE' +
        'SULT,MaterialNG.Remark AS NG_Remark,'
      
        '  cgzl_color.Visually,CGZL_Color2.A4Comfirm,CGZL_Color2.Tracking' +
        'A4Comfirm,CGZL_Color2.DateA4Comfirm,cgzl_color.Spectro,cgzl_colo' +
        'r.Spectro_file,cgzl_color.Result,CGZL_Color.remark,CG.PurReceive' +
        'Date,CG.CheckResult,CG.ActualETD,CG.DelayReason'
      '  from #FDStatus_Mon_All MonALL'
      '  left join clzl on clzl.cldh=MonALL.clbh'
      
        '  left join clzlfilter on clzlfilter.cldh=MonALL.clbh and clzlfi' +
        'lter.GSBH='#39'CDC'#39' '
      '  left join #FDStatus_CG cg on cg.clbh=MonALL.clbh'
      
        '  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG' +
        '.CGNO=cg.cgno '
      
        '    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '             when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEM' +
        'P.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH'
      
        '             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL' +
        '_LS.JHDH'
      '             else CLZL.cldh  end ColorCLDH  '
      '        From CLZL '
      
        '        left join(select CLDH,JHDH from  CLZL_LS UNION ALL selec' +
        't JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLD' +
        'H=CLZL.cldh '
      '        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TE' +
        'MP.CLBH=CLZL_LS.JHDH'
      '    )ColorCLDH on ColorCLDH.CLDH=MonALL.CLBH'
      
        '    left join cgzl_color on cgzl_color.cgno=CG.cgno and cgzl_col' +
        'or.clbh=ColorCLDH.ColorCLDH'
      
        '    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLD' +
        'H'
      '  where (clzlfilter.cldh is not null OR clzl.clzmlb='#39'Y'#39' )'
      '  AND cg.recs > 0 '
      '  union all'
      
        '  select Son.article,kfjd,Son.clbh,Son.ywpm,Son.clsl,Son.qty,Son' +
        '.use_memo,Son.csbh,Son.zsywjc,Son.Location,'
      '  CAST(ISNULL((SELECT P_Name+'#39','#39'  FROM #FDStatus_Parts '
      '  WHERE #FDStatus_Parts.clbh=Son.clbh  '
      '  FOR XML PATH('#39#39')   '
      '  ),'#39#39')  AS char(200)) as All_Parts,'
      
        '  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H' +
        '_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,S' +
        'on.dwbh,'#39'4'#39' as srtype,'
      '  cg.CheckResult AS NG_REASON,'
      
        '  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RE' +
        'SULT,MaterialNG.Remark AS NG_Remark,'
      
        '  cgzl_color.Visually,CGZL_Color2.A4Comfirm,CGZL_Color2.Tracking' +
        'A4Comfirm,CGZL_Color2.DateA4Comfirm,cgzl_color.Spectro,cgzl_colo' +
        'r.Spectro_file,cgzl_color.Result,CGZL_Color.remark,CG.PurReceive' +
        'Date,CG.CheckResult,CG.ActualETD,CG.DelayReason'
      '  from #FDStatus_Son Son'
      '  left join clzl on clzl.cldh=Son.clbh '
      
        '  left join clzlfilter on clzlfilter.cldh=Son.clbh and clzlfilte' +
        'r.GSBH='#39'CDC'#39' '
      '  left join #FDStatus_CG cg on cg.clbh=Son.clbh'
      
        '  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG' +
        '.CGNO=cg.cgno '
      
        '    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '             when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEM' +
        'P.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH'
      
        '             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL' +
        '_LS.JHDH'
      '             else CLZL.cldh  end ColorCLDH  '
      '        From CLZL '
      
        '        left join(select CLDH,JHDH from  CLZL_LS UNION ALL selec' +
        't JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLD' +
        'H=CLZL.cldh '
      '        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TE' +
        'MP.CLBH=CLZL_LS.JHDH'
      '    )ColorCLDH on ColorCLDH.CLDH=Son.CLBH'
      
        '    left join cgzl_color on cgzl_color.cgno=CG.cgno and cgzl_col' +
        'or.clbh=ColorCLDH.ColorCLDH'
      
        '    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLD' +
        'H'
      '  WHERE (clzlfilter.cldh is not null and clzl.clzmlb='#39'N'#39') '
      '  and cg.recs > 0 '
      '  union all'
      
        '  select :article AS article,:Stage AS kfjd,CG.clbh,clzl.ywpm,0 ' +
        'AS clsl,0 as qty,null as use_memo,CG.zsbh as csbh,zszl.zsywjc,Ma' +
        'terialMOQ.Location,'#39#39' AS All_Parts '
      
        '  ,CG.recs,CG.cgdate, CG.yqdate,CG.ETA,cg.cidate,cg.cgzl_memo,cg' +
        '.H_ETD,CG.Invoice,CG.BillNO,CG.cgno'
      '  ,CG.rkqty,CG.rkdate,CG.PurQty ,dwbh,'#39'3'#39' as srtype'
      
        '  ,(select Responsibility from MaterialChangeMEMO M where M.YPDH' +
        '=:YPDH and M.clbh=CG.clbh and M.Stage=:Stage ) as NG_REASON'
      
        '  ,null as NG_ETD,null as NG_ETA,null as NG_RESULT ,null AS NG_R' +
        'emark,'
      
        '  cgzl_color.Visually,CGZL_Color2.A4Comfirm,CGZL_Color2.Tracking' +
        'A4Comfirm,CGZL_Color2.DateA4Comfirm,cgzl_color.Spectro,cgzl_colo' +
        'r.Spectro_file,cgzl_color.Result,CGZL_Color.remark,CG.PurReceive' +
        'Date,CG.CheckResult,CG.ActualETD,CG.DelayReason'
      '  from #FDStatus_CG CG'
      '  left join clzl on clzl.cldh=CG.clbh'
      '  left join zszl on zszl.zsdh=CG.zsbh'
      
        '  left join MaterialMOQ on MaterialMOQ.clbh=CG.clbh and Material' +
        'MOQ.Season='#39'24F'#39
      
        '    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>'#39'V'#39 +
        ' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh '
      
        '             when (left(CLZL_LS.JHDH,1)<>'#39'V'#39' and cgzl_color2_TEM' +
        'P.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH'
      
        '             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL' +
        '_LS.JHDH'
      '             else CLZL.cldh  end ColorCLDH  '
      '        From CLZL '
      
        '        left join(select CLDH,JHDH from  CLZL_LS UNION ALL selec' +
        't JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLD' +
        'H=CLZL.cldh '
      '        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh'
      
        '        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TE' +
        'MP.CLBH=CLZL_LS.JHDH'
      '    )ColorCLDH on ColorCLDH.CLDH=CG.CLBH'
      
        '    left join cgzl_color on cgzl_color.cgno=CG.cgno and cgzl_col' +
        'or.clbh=ColorCLDH.ColorCLDH'
      
        '    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLD' +
        'H'
      '  where '
      '  not exists (select clbh from #FDStatus_Mon_All '
      '              where  #FDStatus_Mon_All.clbh=CG.clbh)'
      '  and not exists (select clbh from #FDStatus_Son'
      '                  where  #FDStatus_Son.clbh=CG.clbh)'
      '  union all'
      
        '  select ypzl.article,kfjd,ce.clbh,clzl.ywpm,0 as clsl,ce.qty,ce' +
        '.memo as use_memo,'#39#39' as csbh,'#39#39' as zsywjc,'#39#39' as Location'
      '  ,'#39#39' AS All_Parts ,0 as recs,null as cgdate,null as yqdate '
      
        '  ,null as rkqty,null as rkdate,null as ETA,null as cidate,null ' +
        'as cgzl_memo,null as H_ETD,'#39#39' as Invoice,'#39#39' as BillNO, '#39#39' as cgn' +
        'o,0 as PurQty ,dwbh,'#39'5'#39' as srtype '
      
        '  ,null as NG_REASON,null as NG_ETD,null as NG_ETA,null as NG_RE' +
        'SULT ,null AS NG_Remark,null as Visually,'
      
        '  null as A4Comfirm,null as TrackingA4Comfirm,null as DateA4Comf' +
        'irm,null as Spectro,null as Spectro_file,null as Result,null as ' +
        'remark, '#39#39' PurReceiveDate, '#39#39' CheckResult, null as ActualETD, nu' +
        'll as DelayReason'
      '  from  cgkcuse ce'
      '  left join clzl on clzl.cldh=ce.clbh'
      '  left join ypzl on ypzl.ypdh=ce.zlbh'
      '  where ce.gsbh='#39'CDC'#39
      '  and ypzl.YPDH=:YPDH and ypzl.kfjd=:Stage'
      '  and not exists (select clbh from #FDStatus_Mon '
      '                  where  #FDStatus_Mon.clbh=ce.clbh)'
      '  and not exists (select clbh from #FDStatus_Son '
      '                  where  #FDStatus_Son.clbh=ce.clbh) '
      ') AS final group by'
      'article,kfjd,clbh,ywpm,clsl,qty,use_memo,csbh,zsywjc, Location '
      ', All_Parts ,recs, cgdate, yqdate '
      
        ', rkqty,rkdate,ETA,cidate, cgzl_memo, H_ETD, Invoice, BillNO,cgn' +
        'o, PurQty ,dwbh, srtype '
      
        ', NG_REASON,NG_ETD, NG_ETA, NG_RESULT , NG_Remark,Visually,A4Com' +
        'firm,TrackingA4Comfirm,DateA4Comfirm,Spectro,Spectro_file,Result' +
        ',remark,PurReceiveDate,CheckResult,ActualETD,DelayReason'
      ''
      '')
    Left = 117
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'article'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Stage'
        ParamType = ptUnknown
      end>
    object strngfldqry2clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object strngfldqry2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object fltfldqry2clsl: TFloatField
      FieldName = 'clsl'
    end
    object strngfldqry2csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object strngfldqry2zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object intgrfldqry2recs: TIntegerField
      FieldName = 'recs'
    end
    object dtmfldqry2cgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object dtmfldqry2yqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object qry2rkqty: TCurrencyField
      FieldName = 'rkqty'
      DisplayFormat = '#0.00'
    end
    object dtmfldqry2rkdate: TDateTimeField
      FieldName = 'rkdate'
    end
    object dtmfldqry2ETA: TDateTimeField
      FieldName = 'ETA'
    end
    object strngfldqry2cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object strngfldqry2srtype: TStringField
      FieldName = 'srtype'
      FixedChar = True
      Size = 1
    end
    object crncyfldqry2qty: TCurrencyField
      FieldName = 'qty'
    end
    object qry2PurQty: TFloatField
      FieldName = 'PurQty'
    end
    object qry2dwbh: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object qry2Location: TStringField
      FieldName = 'Location'
    end
    object qry2Invoice: TStringField
      FieldName = 'Invoice'
      Size = 30
    end
    object qry2BillNO: TStringField
      FieldName = 'BillNO'
      Size = 30
    end
    object qry2NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object qry2NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object qry2NG_Reason: TStringField
      FieldName = 'NG_Reason'
    end
    object qry2NG_RESULT: TStringField
      FieldName = 'NG_RESULT'
    end
    object qry2NG_Remark: TStringField
      FieldName = 'NG_Remark'
    end
    object qry2article: TStringField
      FieldName = 'article'
      Size = 10
    end
    object qry2kfjd: TStringField
      FieldName = 'kfjd'
      Size = 5
    end
    object qry2All_Parts: TStringField
      FieldName = 'All_Parts'
      Size = 200
    end
    object qry2cgzl_memo: TStringField
      FieldName = 'cgzl_memo'
      FixedChar = True
      Size = 250
    end
    object qry2H_ETD: TDateTimeField
      FieldName = 'H_ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qry2use_memo: TStringField
      FieldName = 'use_memo'
      FixedChar = True
      Size = 50
    end
    object qry2Visually: TStringField
      FieldName = 'Visually'
      FixedChar = True
      Size = 10
    end
    object qry2Spectro: TStringField
      FieldName = 'Spectro'
      FixedChar = True
      Size = 10
    end
    object qry2Spectro_file: TStringField
      FieldName = 'Spectro_file'
      FixedChar = True
      Size = 30
    end
    object qry2Result: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 10
    end
    object qry2cidate: TDateTimeField
      FieldName = 'cidate'
    end
    object qry2remark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object qry2PurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
    end
    object qry2CheckResult: TStringField
      FieldName = 'CheckResult'
      Size = 15
    end
    object qry2ActualETD: TDateTimeField
      FieldName = 'ActualETD'
    end
    object qry2A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 50
    end
    object qry2TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object qry2DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object qry2DelayReason: TStringField
      FieldName = 'DelayReason'
      FixedChar = True
      Size = 150
    end
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 117
    Top = 162
  end
  object qry3: TQuery
    BeforeScroll = qry3BeforeScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select ypzls.clbh,clzl.ywpm,ypzls.csbh,zszl.zsywjc,kfxxzl.jijie,' +
        'ypzl.kfjd,xxzlkf.fd,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.rkdate' +
        ',cg.cgno,'#39'1'#39' as srtype  from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      'left join clzl on clzl.cldh=ypzls.clbh'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      
        'left join (select cs.clbh,count(cs.clbh) as recs, min(cgzl.cgdat' +
        'e)as cgdate, min(cgzls.yqdate) as yqdate,min(cgzls.ETA) as ETA, ' +
        'min(KCRK.Userdate) as rkdate,min(cgzls.cgno) as cgno from cgzlss' +
        ' cs'
      'left join cgzl on cgzl.cgno=cs.cgno'
      'left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      'left join kcrk on kcrk.zsno=cs.cgno'
      'left join kfxxzl on kfxxzl.article=cs.zlbh '
      
        'left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.she' +
        'hao=kfxxzl.shehao'
      
        'where cgzl.season='#39'SS11'#39' and cgzl.purpose='#39'SMS'#39' and xxzlkf.fd='#39'H' +
        'enry'#39
      'group by cs.clbh) cg on cg.clbh=ypzls.clbh'
      'where kfxxzl.jijie='#39'SS11'#39' '
      'and XXZLKF.FD='#39'Henry'#39
      'and ypzl.kfjd='#39'SMS'#39
      'and 1=2'
      
        'group by ypzls.clbh,clzl.ywpm,ypzls.csbh,zszl.zsywjc,kfxxzl.jiji' +
        'e,ypzl.kfjd,xxzlkf.fd,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.rkda' +
        'te,cg.cgno ')
    Left = 188
    Top = 196
    object strngfldqry3clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object strngfldqry3ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object strngfldqry3csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object strngfldqry3zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object strngfldqry3jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object strngfldqry3kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object intgrfldqry3recs: TIntegerField
      FieldName = 'recs'
    end
    object dtmfldqry3cgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object dtmfldqry3yqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object dtmfldqry3ETA: TDateTimeField
      FieldName = 'ETA'
    end
    object strngfldqry3cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object strngfldqry3srtype: TStringField
      FieldName = 'srtype'
      FixedChar = True
      Size = 1
    end
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    DataSource = ds3
    SQL.Strings = (
      
        'select ypzl.article,cg.cgdate,cg.yqdate,cg.eta,sum(cg.qty) as qt' +
        'y,clzl.dwbh,sum(cg.qty) as useqty,cg.rkdate,cg.cgno,zszl.zsywjc,' +
        'FD,'#39'1'#39' as srtype from ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      'left join clzl on clzl.cldh=ypzls.clbh'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.she' +
        'hao=xxzlkf.shehao'
      'left join '
      
        '(select cs.qty,cs.zlbh,cgzl.cgdate,cgzls.CFMdate as yqdate,cgzls' +
        '.ETA,KCRK.Userdate as rkdate,cgzls.cgno from cgzlss cs'
      'left join cgzl on cgzl.cgno=cs.cgno'
      'left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh'
      'left join kcrk on kcrk.zsno=cs.cgno'
      
        'where cgzl.season=:jijie and cgzl.purpose=:KFJD and cs.clbh=:clb' +
        'h'
      ') cg on cg.zlbh=ypzl.article'
      'where ypzls.clbh=:clbh'
      'and kfxxzl.jijie=:jijie '
      'and XXZLKF.FD = :FD '
      'and ypzl.kfjd=:KFJD'
      
        'group by ypzl.article,cg.cgdate,cg.yqdate,cg.eta,clzl.dwbh,cg.rk' +
        'date,cg.cgno,zszl.zsywjc,FD'
      '')
    Left = 188
    Top = 300
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'jijie'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'kfjd'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'jijie'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'FD'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'KFJD'
        ParamType = ptUnknown
      end>
    object strngfldqry4article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object dtmfldqry4cgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object dtmfldqry4yqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object dtmfldqry4eta: TDateTimeField
      FieldName = 'eta'
    end
    object strngfldqry4cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object strngfldqry4zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object strngfldqry4srtype: TStringField
      FieldName = 'srtype'
      FixedChar = True
      Size = 1
    end
    object qry4FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object crncyfldqry4qty: TCurrencyField
      FieldName = 'qty'
    end
    object strngfldqry4dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object crncyfldqry4useqty: TCurrencyField
      FieldName = 'useqty'
    end
    object qry4YPDH: TStringField
      FieldName = 'YPDH'
    end
  end
  object ds3: TDataSource
    DataSet = qry3
    Left = 188
    Top = 164
  end
  object ds4: TDataSource
    DataSet = qry4
    Left = 188
    Top = 272
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 659
    Top = 61
  end
  object pm1: TPopupMenu
    Left = 188
    Top = 228
    object N1: TMenuItem
      Caption = 'Show All Article'
      OnClick = N1Click
    end
  end
  object pm2: TPopupMenu
    Left = 116
    Top = 228
    object N2: TMenuItem
      Caption = 'Warehouse Stock'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Related Article'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Show Purchase Order'
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = 'ETD Revise Record'
      OnClick = N5Click
    end
  end
  object pm3: TPopupMenu
    Left = 189
    Top = 348
    object S1: TMenuItem
      Caption = 'ETD history'
      OnClick = S1Click
    end
  end
  object PM_ShoeMemo: TPopupMenu
    Left = 65
    Top = 228
    object ShowMemo1: TMenuItem
      Caption = 'Show BOM'
      OnClick = ShowMemo1Click
    end
  end
  object Qry_MEMO: TQuery
    DatabaseName = 'dB'
    DataSource = ds1
    SQL.Strings = (
      'select LineNum,Remark from ypzls2'
      'where ypdh=:ypdh'
      'order by linenum')
    Left = 116
    Top = 384
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object strngfldqry4LineNum: TStringField
      FieldName = 'LineNum'
      Origin = 'DB.ypzls2.LineNum'
      FixedChar = True
      Size = 3
    end
    object strngfldqry4Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.ypzls2.Remark'
      FixedChar = True
      Size = 100
    end
  end
  object DS_MEMO: TDataSource
    DataSet = Qry_MEMO
    Left = 116
    Top = 352
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 624
    Top = 60
  end
  object DS_PO: TDataSource
    DataSet = Qry_PO
    Left = 116
    Top = 272
  end
  object Qry_PO: TQuery
    DatabaseName = 'dB'
    DataSource = ds2
    SQL.Strings = (
      
        '  select cgzlss.zlbh AS article,cgzlss.Stage AS kfjd,cgzlss.clbh' +
        ',clzl.ywpm,cgzl.zsbh as csbh,zszl.zsywjc,'
      
        '         cgzl.cgdate as cgdate, cgzlss.CFMdate as yqdate,CGZLInv' +
        'oice_1.ETA as ETA, CGZLInvoice_1.Invoice as Invoice,CGZLInvoice_' +
        '1.BillNO as BillNO,cgzls.cgno ,'
      '         KCRK.Userdate as rkdate,cgzlss.Qty as PurQty'
      
        '         ,MaterialNG.NG_REASON,MaterialNG.NG_ETD,MaterialNG.NG_E' +
        'TA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark'
      '  from cgzlss'
      
        '         left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clb' +
        'h=cgzlss.clbh'
      '         left join clzl on clzl.cldh=cgzlss.clbh'
      '         left join cgzl on cgzl.cgno=cgzlss.cgno'
      '         left join zszl on zszl.zsdh=cgzl.zsbh'
      
        '         left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.Userdat' +
        'e) as Userdate FROM kcrk,KCRKS WHERE kcrk.RKNO=KCRKS.RKNO group ' +
        'by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cgzlss.cgno and kcrk.' +
        'clbh=cgzlss.clbh'
      
        '         left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoic' +
        'e'#39') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoice' +
        'S_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoice' +
        'S_1.CGNO'
      
        '         left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.C' +
        'INO=CGZLInvoiceS_1.CINO_1'
      
        '         left join MaterialNG on MaterialNG.CLBH=cgzlss.clbh and' +
        ' MaterialNG.CGNO=cgzlss.CGNO'
      
        '         where cgzlss.qty>0 and cgzlss.Stage=:kfjd and cgzlss.zl' +
        'bh=:article AND cgzlss.CLBH=:CLBH'
      '         order by cgzl.cgdate')
    Left = 116
    Top = 302
    ParamData = <
      item
        DataType = ftString
        Name = 'kfjd'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftString
        Name = 'article'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
        Size = 16
      end>
    object Qry_POarticle: TStringField
      FieldName = 'article'
      FixedChar = True
      Size = 15
    end
    object Qry_POkfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 15
    end
    object Qry_POclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Qry_POywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Qry_POcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object Qry_POzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Qry_POcgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object Qry_POyqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object Qry_POETA: TDateTimeField
      FieldName = 'ETA'
    end
    object Qry_POInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 30
    end
    object Qry_POBillNO: TStringField
      FieldName = 'BillNO'
      FixedChar = True
      Size = 30
    end
    object Qry_POcgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object Qry_POrkdate: TDateTimeField
      FieldName = 'rkdate'
    end
    object Qry_POPurQty: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object Qry_PONG_REASON: TStringField
      FieldName = 'NG_REASON'
      FixedChar = True
    end
    object Qry_PONG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Qry_PONG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object Qry_PONG_RESULT: TStringField
      FieldName = 'NG_RESULT'
      FixedChar = True
    end
    object Qry_PONG_Remark: TStringField
      FieldName = 'NG_Remark'
      FixedChar = True
      Size = 50
    end
  end
  object SRQry: TQuery
    BeforeScroll = SRQryBeforeScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#SRPurchase'#39') is not null    '
      'begin drop table #SRPurchase end '
      'select * into #SRPurchase  from ( '
      
        'Select CGZLSS.ZLBH as Article, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.' +
        'Qty) as Qty,Min(CGZLS.CFMDate) as ETD,'#39'1'#39' as useType '
      'from CGZLSS '
      'Left join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      
        'Left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.' +
        'CLBH '
      'left join CLZL on CLZL.CLDH=CGZLSS.CLBH '
      'where  CGZL.SEASON='#39'16S'#39' and CGZL.PURPOSE='#39'SM2'#39'  '
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd '
      'Union all '
      
        'select YPZL.Article,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Q' +
        'ty,GetDate() as ETD,'#39'2'#39' as useType from cgkcuse '
      'Left join YPZL on  YPZL.YPDH=cgkcuse.ZLBH '
      
        'Left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join YPZLS on YPZLS.YPDH=YPZL.YPDH and YPZLS.CLBH=cgkcuse.C' +
        'LBH '
      'left join CLZL on CLZL.CLDH=cgkcuse.CLBH '
      'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM2'#39' and KFXXZL.JiJie='#39'16S'#39' '
      'Group by YPZL.Article,cgkcuse.CLBH,CLZL.cltd '
      ') CGdata '
      
        'Select Article,FD,SR,Min(ETD_ML) as ML,Min(ETD_FL) as FL,Min(ETD' +
        '_BL) as BL,Min(ETD_DL) as DL from ( '
      
        'select YPZL.*,IsNULL(Convert(varchar,CG_ML.ETD,20),'#39#39') as ETD_ML' +
        ', '
      
        '       IsNULL(Convert(varchar,CG_FL.ETD,20),'#39#39') as ETD_FL,IsNULL' +
        '(Convert(varchar,CG_BL.ETD,20),'#39#39') as ETD_BL, '
      
        '       IsNULL(Convert(varchar,CG_DL.ETD,20),'#39#39') as ETD_DL,ReceBO' +
        'M.Article as SR  from ( '
      'Select * from ( '
      'SELECT YPZL.Article,KFXXZL.FD,YPZLS.CLBH '
      'FROM ypzls ypzls '
      'LEFT join YPZL on YPZL.YPDH=YPZLS.YPDH '
      
        'Left join KFXXZl on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHa' +
        'o=YPZL.SheHao '
      'Left join CLZL on CLZL.CLDH=YPZLS.CLBH '
      
        'WHERE YPZL.KFJD='#39'SM2'#39' and KFXXZL.JiJie='#39'16S'#39' and CLZL.CLZMLB='#39'N'#39 +
        ' and YPZLS.CLSL>0  '
      'union all '
      'SELECT YPZL.Article,KFXXZL.FD,clzhzl.CLDH1 '
      'FROM ypzls ypzls '
      'LEFT join YPZL on YPZL.YPDH=YPZLS.YPDH '
      
        'Left join KFXXZl on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHa' +
        'o=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'WHERE YPZL.KFJD='#39'SM2'#39' and KFXXZL.JiJie='#39'SM2'#39' and YPZLS.CLSL>0  a' +
        'nd CLZHZL.SYL>0  '
      ') YPZLS group by Article,FD,CLBH  '
      ') YPZL '
      
        'Left JOIN  (Select * from  #SRPurchase where ((LEFT( #SRPurchase' +
        '.CLBH,4)='#39'V901'#39') and (#SRPurchase.cltd='#39'VT Mat'#39')) or LEFT(#SRPur' +
        'chase.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') ) CG_ML '
      'On CG_ML.Article=YPZL.Article and CG_ML.CLBH=YPZL.CLBH '
      
        'Left JOIN  (Select * from  #SRPurchase where ((LEFT( #SRPurchase' +
        '.CLBH,4)='#39'V901'#39') and (#SRPurchase.cltd='#39'VT Mat'#39')) or LEFT(#SRPur' +
        'chase.CLBH,1) in ('#39'D'#39','#39'E'#39','#39'L'#39','#39'M'#39','#39'N'#39','#39'O'#39')) CG_FL '
      'On CG_FL.Article=YPZL.Article and CG_FL.CLBH=YPZL.CLBH  '
      
        'Left JOIN  (Select * from  #SRPurchase where ((LEFT( #SRPurchase' +
        '.CLBH,4)='#39'V901'#39') and (#SRPurchase.cltd='#39'VT Mat'#39')) or LEFT(#SRPur' +
        'chase.CLBH,1) in ('#39'G'#39','#39'I'#39','#39'J'#39')) CG_DL '
      'On CG_DL.Article=YPZL.Article and CG_DL.CLBH=YPZL.CLBH '
      
        'Left JOIN  (Select * from  #SRPurchase where LEFT(#SRPurchase.CL' +
        'BH,1) in ('#39'B'#39')) CG_BL '
      'On CG_BL.Article=YPZL.Article and CG_BL.CLBH=YPZL.CLBH '
      'Left JOIN (select BOMReceives.Article from BOMReceive '
      
        'inner join BOMReceives on BOMReceive.ReceiveNO=BOMReceives.Recei' +
        'veNO'
      
        'where  BOMReceive.Season='#39'16S'#39' and Stage='#39'SM2'#39' ) ReceBOM on Rece' +
        'BOM.Article=YPZL.Article'
      ') ArticleAll '
      'Group by Article,FD,SR')
    Left = 260
    Top = 196
    object SRQryDropped: TStringField
      FieldName = 'Dropped'
    end
    object SRQryArticle: TStringField
      DisplayWidth = 21
      FieldName = 'Article'
      FixedChar = True
    end
    object SRQryFD: TStringField
      DisplayWidth = 20
      FieldName = 'FD'
      FixedChar = True
    end
    object SRQryTPDATE: TStringField
      FieldName = 'TPDATE'
    end
    object SRQryShipDate: TStringField
      FieldName = 'ShipDate'
    end
    object SRQryML: TStringField
      DisplayWidth = 30
      FieldName = 'ML'
      FixedChar = True
      Size = 30
    end
    object SRQryFL: TStringField
      DisplayWidth = 30
      FieldName = 'FML'
      FixedChar = True
      Size = 30
    end
    object SRQryBL: TStringField
      DisplayWidth = 30
      FieldName = 'FGL'
      FixedChar = True
      Size = 30
    end
    object SRQryDL: TStringField
      DisplayWidth = 30
      FieldName = 'DL'
      FixedChar = True
      Size = 30
    end
    object SRQrySR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object SRQryYPDH: TStringField
      FieldName = 'YPDH'
    end
    object SRQryQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object SRQryXieXing: TStringField
      FieldName = 'XieXing'
    end
  end
  object SRDS: TDataSource
    DataSet = SRQry
    Left = 260
    Top = 164
  end
  object SRDet_ML: TQuery
    DatabaseName = 'DB'
    DataSource = SRDS
    SQL.Strings = (
      
        'Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useTyp' +
        'e,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from (   '
      
        'SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypz' +
        'ls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'1' +
        '6F'#39' and YPZL.GSDH='#39'CDC'#39'   and YPZL.YPDH='#39'LAIV150800437'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39 +
        '16F'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0   and YPZL.YPDH='#39'LAI' +
        'V150800437'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'16F'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.YPDH='#39'LAIV1' +
        '50800437'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      
        'where  CGZL.SEASON='#39'16F'#39'  and CGZL.PURPOSE='#39'SM3'#39' and CGZLSS.ZLBH' +
        '='#39'LAIV150800437'#39
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location'
      'Union all'
      
        'select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,' +
        'Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserD' +
        'ate) as ETA,NULL as CGNO,'#39'Stock'#39' as useType,Max(cgkcuse.memo) as' +
        ' stock_memo from cgkcuse'
      'inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH'
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao'
      'inner join CLZL on CLZL.CLDH=cgkcuse.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH'
      
        'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM3'#39'  and KFXXZL.JiJie='#39'16F'#39' ' +
        'and YPZL.YPDH='#39'LAIV150800437'#39
      'Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh'
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID'
      '')
    Left = 260
    Top = 299
    object SRDet_MLArticle: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
    object SRDet_MLFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object SRDet_MLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object SRDet_MLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object SRDet_MLCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.000'
    end
    object SRDet_MLQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.000'
    end
    object SRDet_MLETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object SRDet_MLCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object SRDet_MLuseType: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 5
    end
    object SRDet_MLStock_Memo: TStringField
      FieldName = 'Stock_Memo'
    end
    object SRDet_MLLocation: TStringField
      FieldName = 'Location'
    end
    object SRDet_MLETA: TDateTimeField
      FieldName = 'ETA'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object SRDet_MLCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SRDet_MLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object SRDet_MLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object SRDet_MLDS: TDataSource
    DataSet = SRDet_ML
    Left = 260
    Top = 271
  end
  object SRDet_No: TQuery
    DatabaseName = 'DB'
    DataSource = SRDS
    SQL.Strings = (
      
        'Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useTyp' +
        'e,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from (   '
      
        'SELECT ypzls.YPDH ,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls' +
        '.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'1' +
        '6F'#39' and YPZL.GSDH='#39'CDC'#39'   and YPZL.YPDH='#39'LAIV150800437'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39 +
        '16F'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0   and YPZL.YPDH='#39'LAI' +
        'V150800437'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'16F'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.YPDH='#39'LAIV1' +
        '50800437'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      
        'where  CGZL.SEASON='#39'16F'#39'  and CGZL.PURPOSE='#39'SM3'#39' and CGZLSS.ZLBH' +
        '='#39'LAIV150800437'#39
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location'
      'Union all'
      
        'select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,' +
        'Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserD' +
        'ate) as ETA,NULL as CGNO,'#39'Stock'#39' as useType,Max(cgkcuse.memo) as' +
        ' stock_memo from cgkcuse'
      'inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH'
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao'
      'inner join CLZL on CLZL.CLDH=cgkcuse.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH'
      
        'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM3'#39'  and KFXXZL.JiJie='#39'16F'#39' ' +
        'and YPZL.YPDH='#39'LAIV150800437'#39
      'Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh'
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID'
      '')
    Left = 260
    Top = 359
    object StringField1: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
    object StringField2: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.000'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.000'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField5: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField6: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 5
    end
    object SRDet_NoStock_Memo: TStringField
      FieldName = 'Stock_Memo'
    end
    object SRDet_NoLocation: TStringField
      FieldName = 'Location'
    end
    object SRDet_NoETA: TDateTimeField
      FieldName = 'ETA'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object SRDet_NoCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SRDet_NoSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object SRDet_NoUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object SRDet_NoDS: TDataSource
    DataSet = SRDet_No
    Left = 260
    Top = 327
  end
  object SRDet_FML: TQuery
    DatabaseName = 'DB'
    DataSource = SRDS
    SQL.Strings = (
      
        'Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useTyp' +
        'e,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from (   '
      
        'SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypz' +
        'ls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'1' +
        '6F'#39' and YPZL.GSDH='#39'CDC'#39'   and YPZL.YPDH='#39'LAIV150800437'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39 +
        '16F'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0   and YPZL.YPDH='#39'LAI' +
        'V150800437'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'16F'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.YPDH='#39'LAIV1' +
        '50800437'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      
        'where  CGZL.SEASON='#39'16F'#39'  and CGZL.PURPOSE='#39'SM3'#39' and CGZLSS.ZLBH' +
        '='#39'LAIV150800437'#39
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location'
      'Union all'
      
        'select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,' +
        'Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserD' +
        'ate) as ETA,NULL as CGNO,'#39'Stock'#39' as useType,Max(cgkcuse.memo) as' +
        ' stock_memo from cgkcuse'
      'inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH'
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao'
      'inner join CLZL on CLZL.CLDH=cgkcuse.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH'
      
        'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM3'#39'  and KFXXZL.JiJie='#39'16F'#39' ' +
        'and YPZL.YPDH='#39'LAIV150800437'#39
      'Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh'
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID'
      '')
    Left = 300
    Top = 299
    object StringField7: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
    object StringField8: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField9: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField2: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.000'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.000'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField11: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField12: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 5
    end
    object SRDet_FMLStock_Memo: TStringField
      FieldName = 'Stock_Memo'
    end
    object SRDet_FMLLocation: TStringField
      FieldName = 'Location'
    end
    object SRDet_FMLETA: TDateTimeField
      FieldName = 'ETA'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object SRDet_FMLCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SRDet_FMLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object SRDet_FMLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object SRDet_FMLDS: TDataSource
    DataSet = SRDet_FML
    Left = 300
    Top = 271
  end
  object SRDet_DLDS: TDataSource
    DataSet = SRDet_DL
    Left = 380
    Top = 271
  end
  object SRDet_DL: TQuery
    DatabaseName = 'DB'
    DataSource = SRDS
    SQL.Strings = (
      
        'Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useTyp' +
        'e,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from (   '
      
        'SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypz' +
        'ls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'1' +
        '6F'#39' and YPZL.GSDH='#39'CDC'#39'   and YPZL.YPDH='#39'LAIV150800437'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39 +
        '16F'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0   and YPZL.YPDH='#39'LAI' +
        'V150800437'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'16F'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.YPDH='#39'LAIV1' +
        '50800437'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      
        'where  CGZL.SEASON='#39'16F'#39'  and CGZL.PURPOSE='#39'SM3'#39' and CGZLSS.ZLBH' +
        '='#39'LAIV150800437'#39
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location'
      'Union all'
      
        'select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,' +
        'Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserD' +
        'ate) as ETA,NULL as CGNO,'#39'Stock'#39' as useType,Max(cgkcuse.memo) as' +
        ' stock_memo from cgkcuse'
      'inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH'
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao'
      'inner join CLZL on CLZL.CLDH=cgkcuse.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH'
      
        'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM3'#39'  and KFXXZL.JiJie='#39'16F'#39' ' +
        'and YPZL.YPDH='#39'LAIV150800437'#39
      'Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh'
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID'
      '')
    Left = 380
    Top = 299
    object StringField13: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
    object StringField14: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField15: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField3: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.000'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.000'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField17: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField18: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 5
    end
    object SRDet_DLStock_Memo: TStringField
      FieldName = 'Stock_Memo'
    end
    object SRDet_DLLocation: TStringField
      FieldName = 'Location'
    end
    object SRDet_DLETA: TDateTimeField
      FieldName = 'ETA'
    end
    object SRDet_DLCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SRDet_DLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object SRDet_DLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object SRDet_FGLDS: TDataSource
    DataSet = SRDet_FGL
    Left = 340
    Top = 271
  end
  object SRDet_FGL: TQuery
    DatabaseName = 'DB'
    DataSource = SRDS
    SQL.Strings = (
      
        'Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useTyp' +
        'e,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from ('
      'select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from ('
      
        'select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  ' +
        'from (   '
      
        'SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypz' +
        'ls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'1' +
        '6F'#39' and YPZL.GSDH='#39'CDC'#39'   and YPZL.YPDH='#39'LAIV150800437'#39
      'union all '
      
        'SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhz' +
        'l.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39 +
        '16F'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0   and YPZL.YPDH='#39'LAI' +
        'V150800437'#39
      'union all '
      
        'Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSB' +
        'H,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      'SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'SM3'#39' and KFXXZL.JiJie='#39'16F'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and YPZL.YPDH='#39'LAIV1' +
        '50800437'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ')  YPZL '
      'Left Join ('
      
        'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty' +
        ') as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,'
      
        'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 el' +
        'se Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Buy' +
        #39' as useType,'#39#39' as stock_memo'
      'from CGZLSS'
      'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      
        'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS' +
        '.CLBH'
      'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH'
      
        'where  CGZL.SEASON='#39'16F'#39'  and CGZL.PURPOSE='#39'SM3'#39' and CGZLSS.ZLBH' +
        '='#39'LAIV150800437'#39
      'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location'
      'Union all'
      
        'select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,' +
        'Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserD' +
        'ate) as ETA,NULL as CGNO,'#39'Stock'#39' as useType,Max(cgkcuse.memo) as' +
        ' stock_memo from cgkcuse'
      'inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH'
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao'
      'inner join CLZL on CLZL.CLDH=cgkcuse.CLBH'
      
        'left join (select CLBH,Location from MaterialMOQ Group by CLBH,L' +
        'ocation ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH'
      
        'where cgkcuse.Qty>0 and YPZL.KFJD='#39'SM3'#39'  and KFXXZL.JiJie='#39'16F'#39' ' +
        'and YPZL.YPDH='#39'LAIV150800437'#39
      'Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location'
      ') CG'
      'on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH'
      'left join zszl on zszl.zsdh=ypzl.csbh'
      'left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='#39'CDC'#39
      'left join Busers on zszl_dev.SamplePurchaser=Busers.UserID'
      '')
    Left = 340
    Top = 299
    object StringField19: TStringField
      FieldName = 'YPDH'
      FixedChar = True
    end
    object StringField20: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField21: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField22: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField4: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.000'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.000'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField23: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField24: TStringField
      FieldName = 'useType'
      FixedChar = True
      Size = 5
    end
    object SRDet_FGLStock_Memo: TStringField
      FieldName = 'Stock_Memo'
    end
    object SRDet_FGLLocation: TStringField
      FieldName = 'Location'
    end
    object SRDet_FGLETA: TDateTimeField
      FieldName = 'ETA'
    end
    object SRDet_FGLCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SRDet_FGLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object SRDet_FGLUserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object NGqry: TQuery
    DatabaseName = 'DB'
    DataSource = ds2
    SQL.Strings = (
      'select remark,userid,userdate from cgzl_colors'
      'where CGNO=:CGNO'
      '      AND CLBH =:CLBH')
    Left = 838
    Top = 552
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cgno'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
        Size = 16
      end>
    object NGqryremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object NGqryuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object NGqryuserdate: TStringField
      FieldName = 'userdate'
      FixedChar = True
      Size = 25
    end
  end
  object NGDS: TDataSource
    DataSet = NGqry
    Left = 870
    Top = 552
  end
end
