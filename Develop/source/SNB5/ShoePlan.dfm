object ShoePlan: TShoePlan
  Left = 191
  Top = 141
  Width = 1386
  Height = 788
  Caption = 'TBPlan'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 749
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Shoe Test Plan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 714
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 189
          Width = 1360
          Height = 524
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 1
            Top = 401
            Width = 1358
            Height = 1
            Cursor = crVSplit
            Align = alTop
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1358
            Height = 400
            Align = alTop
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource1
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
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'TBcancel'
                Footers = <>
                Title.Caption = 'C'
                Width = 23
              end
              item
                EditButtons = <>
                FieldName = 'groups'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'groups2'
                Footers = <>
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'Serino'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Serino|'#24207#34399
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'Priority'
                Footers = <>
                Title.Caption = 'Priority|'#20778#20808#27402
                Width = 49
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'khdh'
                Footers = <>
                Title.Caption = 'Customer|'#23458#25142
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'TestNo'
                Footers = <>
                Title.Caption = 'TestNo|'#36890#22577#34399#30908
              end
              item
                EditButtons = <>
                FieldName = 'C_Memo'
                Footers = <>
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'S_Memo'
                Footers = <>
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'C_ETA'
                Footers = <>
                Width = 119
              end
              item
                EditButtons = <>
                FieldName = 'S_ETA'
                Footers = <>
                Width = 181
              end
              item
                EditButtons = <>
                FieldName = 'A_Memo'
                Footers = <>
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'P_Memo'
                Footers = <>
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'NG_Memo'
                Footers = <>
                Title.Caption = 'NG_Material'
                Width = 100
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
                Width = 152
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Color'
                Footers = <>
                Width = 95
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 53
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'DevType'
                Footers = <>
                Title.Caption = 'DevType|'#32068#21029
                Width = 82
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'SubType'
                Footers = <>
                Title.Caption = 'SubType|'#23567#32068
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'ypdh'
                Footers = <>
                Title.Caption = 'SampleOrder|'#27171#21697#21934
                Width = 134
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'TBReceiveDate'
                Footers = <>
                Title.Caption = 'TBReceive|'#36890#22577#25509#25910#26085
                Width = 116
              end
              item
                EditButtons = <>
                FieldName = 'Lamination_1'
                Footers = <>
                Title.Caption = 'TBReceive|JNG'
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'Sublimation'
                Footers = <>
                Title.Caption = 'TBReceive|Sublimation'
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'E_embroidery'
                Footers = <>
                Title.Caption = 'TBReceive|E_embroidery'
                Width = 88
              end
              item
                EditButtons = <>
                FieldName = 'printing'
                Footers = <>
                Title.Caption = 'TBReceive|Printing'
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'lamination_CRMTO'
                Footers = <>
                Title.Caption = 'TBReceive|CRMTO'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'kietphong'
                Footers = <>
                Title.Caption = 'TBReceive|Kietphong'
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Amico'
                Footers = <>
                Title.Caption = 'TBReceive|Amico'
                Width = 43
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'preparationDate'
                Footers = <>
                Title.Caption = 'MainMaterial|'#20027#38754#26009#37197#22871
              end
              item
                EditButtons = <>
                FieldName = 'S_material'
                Footers = <>
                Title.Caption = 'Stitching Phu lieu Ready|'#37341#36554#21103#26009#20633#26009#23436#25104
                Width = 113
              end
              item
                EditButtons = <>
                FieldName = 'lamination_send'
                Footers = <>
                Title.Caption = 'lamination_send|'#30332#36028#21512
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'lamination_get'
                Footers = <>
                Title.Caption = 'lamination_get|'#38936#36028#21512
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'BaoHe_send'
                Footers = <>
                Title.Caption = 'BaoHe_send|'#36865#23542#21644
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'BaoHe_get'
                Footers = <>
                Title.Caption = 'BaoHe_get|'#38936#23542#21644
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'LiMao_Send'
                Footers = <>
                Title.Caption = 'LiMao_Send|'#36865#31435#33538
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'LiMao_Get'
                Footers = <>
                Title.Caption = 'LiMao_Get|'#25910#31435#33538
                Width = 86
              end
              item
                EditButtons = <>
                FieldName = 'insole_send'
                Footers = <>
                Title.Caption = 'insole ready|'#38795#22666#20633#26009#23436#25104
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'lace_send'
                Footers = <>
                Title.Caption = 'lace ready|'#38795#24118#20633#26009#23436#25104
                Width = 89
              end
              item
                EditButtons = <>
                FieldName = 'Lamination'
                Footers = <>
                Title.Caption = 'Lamination|'#36028#21512#26448#26009
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'kietphong_Send'
                Footers = <>
                Title.Caption = 'kietphong_Send|'#36865#21513#35920
                Width = 102
              end
              item
                EditButtons = <>
                FieldName = 'kietphong_Get'
                Footers = <>
                Title.Caption = 'kietphong_Get|'#25910#21513#35920
                Width = 92
              end
              item
                EditButtons = <>
                FieldName = 'Amico_Send'
                Footers = <>
                Title.Caption = 'Amico_Send|'#36865'Amico'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'Amico_Get'
                Footers = <>
                Title.Caption = 'Amico_Get|'#25910'Amico'
                Width = 72
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Firstmatoutdate'
                Footers = <>
                Title.Caption = 'FirstMatOut|'#27171#21697#23460#38936#38754#26009
                Width = 94
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'R2Purchase'
                Footers = <>
                Title.Caption = 'R2Purchase|R2 '#19979#21934#26085
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'R2'
                Footers = <>
                Title.Caption = 'R2Purchase|'#20633#35387
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'R3Purchase'
                Footers = <>
                Title.Caption = 'R3Purchase|R3'#19979#21934#26085
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'R3'
                Footers = <>
                Title.Caption = 'R3Purchase|'#20633#35387
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Developer'
                Footers = <>
                Title.Caption = 'Developer|'#38283#30332#21729
                Width = 143
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                Title.Caption = 'ShipDate|'#20986#36008#26085
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Title.Caption = 'Complete|'#36890#22577#23436#25104#26085
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Memo'
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Width = 149
              end>
          end
          object ScrollBox1: TScrollBox
            Left = 1
            Top = 402
            Width = 1358
            Height = 121
            Align = alClient
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 705
              Top = 49
              Height = 51
            end
            object Splitter3: TSplitter
              Left = 1377
              Top = 49
              Height = 51
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 1380
              Height = 49
              Align = alTop
              TabOrder = 0
              object Label28: TLabel
                Left = 8
                Top = 8
                Width = 59
                Height = 13
                Caption = 'MaterialDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 35
                Top = 26
                Width = 29
                Height = 13
                Caption = 'Memo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 720
                Top = 8
                Width = 59
                Height = 13
                Caption = 'MaterialDES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 747
                Top = 34
                Width = 29
                Height = 13
                Caption = 'Memo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 72
                Top = 4
                Width = 633
                Height = 21
                DataField = 'MaterialDES'
                DataSource = DataSource4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 72
                Top = 28
                Width = 633
                Height = 21
                DataField = 'Memo'
                DataSource = DataSource4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 784
                Top = 4
                Width = 593
                Height = 21
                DataField = 'MaterialDES'
                DataSource = DataSource5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 784
                Top = 28
                Width = 593
                Height = 21
                DataField = 'Memo'
                DataSource = DataSource5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
            end
            object DBGridEh4: TDBGridEh
              Left = 0
              Top = 49
              Width = 705
              Height = 51
              Align = alLeft
              ColumnDefValues.Title.TitleButton = True
              DataSource = DataSource4
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
              ParentFont = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBGridEh4CellClick
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Class'
                  Footers = <>
                  Width = 28
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 37
                end
                item
                  EditButtons = <>
                  FieldName = 'SupplierName'
                  Footers = <>
                  Width = 76
                end
                item
                  EditButtons = <>
                  FieldName = 'Status'
                  Footers = <>
                  Width = 56
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 65
                end
                item
                  EditButtons = <>
                  FieldName = 'Material'
                  Footers = <>
                  Width = 89
                end
                item
                  EditButtons = <>
                  FieldName = 'MaterialDES'
                  Footers = <>
                  Width = 153
                end
                item
                  EditButtons = <>
                  FieldName = 'Memo'
                  Footers = <>
                  Width = 145
                end>
            end
            object DBGridEh3: TDBGridEh
              Left = 708
              Top = 49
              Width = 669
              Height = 51
              Align = alLeft
              ColumnDefValues.Title.TitleButton = True
              DataSource = DataSource5
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBGridEh3CellClick
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Class'
                  Footers = <>
                  Width = 32
                end
                item
                  EditButtons = <>
                  FieldName = 'Supplier'
                  Footers = <>
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'SupplierName'
                  Footers = <>
                  Width = 72
                end
                item
                  EditButtons = <>
                  FieldName = 'Status'
                  Footers = <>
                  Width = 51
                end
                item
                  EditButtons = <>
                  FieldName = 'ETA'
                  Footers = <>
                  Width = 68
                end
                item
                  EditButtons = <>
                  FieldName = 'Material'
                  Footers = <>
                  Width = 86
                end
                item
                  EditButtons = <>
                  FieldName = 'MaterialDES'
                  Footers = <>
                  Width = 133
                end
                item
                  EditButtons = <>
                  FieldName = 'Memo'
                  Footers = <>
                  Width = 147
                end>
            end
            object DBGridEh5: TDBGridEh
              Left = 1380
              Top = 49
              Width = 0
              Height = 51
              Align = alClient
              DataSource = DataSource6
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              ParentFont = False
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Date'
                  Footers = <>
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'CKBH'
                  Footers = <>
                  Width = 32
                end
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <>
                  Width = 108
                end
                item
                  DisplayFormat = '##.#'
                  EditButtons = <>
                  FieldName = 'qty'
                  Footers = <>
                  Width = 58
                end>
            end
          end
          object DBMemo5: TDBMemo
            Left = 635
            Top = 139
            Width = 248
            Height = 141
            DataField = 'C_ETA'
            DataSource = DataSource1
            TabOrder = 2
            Visible = False
          end
          object DBMemo6: TDBMemo
            Left = 899
            Top = 139
            Width = 248
            Height = 141
            DataField = 'S_ETA'
            DataSource = DataSource1
            TabOrder = 3
            Visible = False
          end
          object Panel8: TPanel
            Left = 605
            Top = 137
            Width = 592
            Height = 195
            Caption = 'Panel8'
            TabOrder = 4
            Visible = False
            object DBGridEh6: TDBGridEh
              Left = 1
              Top = 1
              Width = 590
              Height = 193
              Align = alClient
              DataSource = DataSource7
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBGridEh6CellClick
              OnCellMouseClick = DBGridEh6CellMouseClick
            end
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 188
          Align = alTop
          TabOrder = 1
          object CheckBox2: TCheckBox
            Left = 1280
            Top = 16
            Width = 97
            Height = 17
            Caption = 'MainMaterial'
            TabOrder = 0
            Visible = False
          end
          object CheckBox3: TCheckBox
            Left = 1280
            Top = 32
            Width = 313
            Height = 17
            Caption = 'MainMaterialForSampleRom'
            TabOrder = 1
            Visible = False
          end
          object CheckBox4: TCheckBox
            Left = 1280
            Top = 48
            Width = 145
            Height = 17
            Caption = 'R2 Order'
            TabOrder = 2
            Visible = False
          end
          object CheckBox5: TCheckBox
            Left = 1280
            Top = 64
            Width = 145
            Height = 17
            Caption = 'R3 Order'
            TabOrder = 3
            Visible = False
          end
          object ScrollBox2: TScrollBox
            Left = 1
            Top = 1
            Width = 1358
            Height = 186
            Align = alClient
            TabOrder = 4
            object Label10: TLabel
              Left = 1306
              Top = 146
              Width = 9
              Height = 20
              Caption = '~'
            end
            object Label27: TLabel
              Left = 1368
              Top = 3
              Width = 68
              Height = 20
              Caption = 'P_MEMO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 1104
              Top = 3
              Width = 69
              Height = 20
              Caption = 'A_MEMO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl8: TLabel
              Left = 1305
              Top = 120
              Width = 9
              Height = 20
              Caption = '~'
            end
            object Label24: TLabel
              Left = 875
              Top = 3
              Width = 69
              Height = 20
              Caption = 'S_MEMO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 799
              Top = 2
              Width = 69
              Height = 20
              Caption = 'C_MEMO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 444
              Top = 88
              Width = 53
              Height = 20
              Caption = 'Groups'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 438
              Top = 66
              Width = 59
              Height = 20
              Caption = 'Subtype'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 438
              Top = 45
              Width = 58
              Height = 20
              Caption = 'Devtype'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 454
              Top = 24
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
            object Label8: TLabel
              Left = 441
              Top = 2
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
            object Label9: TLabel
              Left = 174
              Top = 105
              Width = 57
              Height = 20
              Caption = 'SOType'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 190
              Top = 73
              Width = 43
              Height = 20
              Caption = 'Brand'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 8
              Top = 72
              Width = 51
              Height = 20
              Caption = 'TestNo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 39
              Top = 101
              Width = 23
              Height = 20
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 434
              Top = 111
              Width = 62
              Height = 20
              Caption = 'Groups2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 449
              Top = 137
              Width = 51
              Height = 20
              Caption = 'UserID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object InfoLable: TLabel
              Left = 370
              Top = 102
              Width = 62
              Height = 16
              AutoSize = False
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object CheckBox7: TCheckBox
              Left = 164
              Top = 133
              Width = 98
              Height = 17
              Caption = 'forPlan'
              TabOrder = 0
              OnClick = CheckBox7Click
            end
            object DTP4: TDateTimePicker
              Left = 1320
              Top = 139
              Width = 104
              Height = 28
              Date = 41675.431356041660000000
              Format = 'yyyy/MM/dd'
              Time = 41675.431356041660000000
              TabOrder = 1
            end
            object DBMemo4: TDBMemo
              Left = 1362
              Top = 22
              Width = 248
              Height = 89
              DataField = 'P_Memo'
              DataSource = DataSource1
              TabOrder = 2
            end
            object DBMemo3: TDBMemo
              Left = 1104
              Top = 22
              Width = 249
              Height = 89
              DataField = 'A_Memo'
              DataSource = DataSource1
              TabOrder = 3
            end
            object DTP3: TDateTimePicker
              Left = 1191
              Top = 140
              Width = 108
              Height = 28
              Date = 41675.431051550920000000
              Format = 'yyyy/MM/dd'
              Time = 41675.431051550920000000
              TabOrder = 4
            end
            object Receive_Check: TCheckBox
              Left = 1109
              Top = 143
              Width = 82
              Height = 17
              Caption = 'Receive'
              TabOrder = 5
            end
            object dtp2: TDateTimePicker
              Left = 1319
              Top = 113
              Width = 105
              Height = 28
              Date = 41675.431356041660000000
              Format = 'yyyy/MM/dd'
              Time = 41675.431356041660000000
              TabOrder = 6
            end
            object dtp1: TDateTimePicker
              Left = 1191
              Top = 114
              Width = 108
              Height = 28
              Date = 41675.431051550920000000
              Format = 'yyyy/MM/dd'
              Time = 41675.431051550920000000
              TabOrder = 7
            end
            object Info_chk: TCheckBox
              Left = 1109
              Top = 117
              Width = 50
              Height = 17
              Caption = 'Ship'
              TabOrder = 8
            end
            object DBMemo2: TDBMemo
              Left = 875
              Top = 22
              Width = 221
              Height = 141
              DataField = 'S_Memo'
              DataSource = DataSource1
              TabOrder = 9
            end
            object DBMemo1: TDBMemo
              Left = 626
              Top = 22
              Width = 243
              Height = 141
              DataField = 'C_Memo'
              DataSource = DataSource1
              TabOrder = 10
            end
            object CheckBox1: TCheckBox
              Left = 12
              Top = 133
              Width = 154
              Height = 17
              Caption = 'dont show Cancel'
              TabOrder = 11
            end
            object Button1: TButton
              Left = 268
              Top = 8
              Width = 63
              Height = 48
              Caption = 'Mtrl Excel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = Button1Click
            end
            object Edit19: TEdit
              Left = 498
              Top = 89
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
            end
            object Edit4: TEdit
              Left = 498
              Top = 66
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
            end
            object Edit2: TEdit
              Left = 498
              Top = 44
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
            end
            object Edit3: TEdit
              Left = 498
              Top = 22
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
            end
            object Edit6: TEdit
              Left = 498
              Top = 0
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
            end
            object ComboBox1: TComboBox
              Left = 240
              Top = 72
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              TabOrder = 18
              Items.Strings = (
                ''
                'Converse'
                'SKX')
            end
            object ComboBox2: TComboBox
              Left = 240
              Top = 104
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              TabOrder = 19
              Items.Strings = (
                ''
                'LAIV'
                'LAIK'
                'LAIT'
                'BYIK'
                'BYIV'
                'BYIT'
                'SKXV'
                'SKXK'
                'SKXT')
            end
            object Edit1: TEdit
              Left = 64
              Top = 72
              Width = 105
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
            end
            object Edit5: TEdit
              Left = 65
              Top = 101
              Width = 106
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 21
            end
            object BB1: TBitBtn
              Left = 5
              Top = 8
              Width = 45
              Height = 48
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 22
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
            object BB2: TBitBtn
              Left = 49
              Top = 8
              Width = 45
              Height = 48
              Hint = 'Insert one New Record'
              Caption = 'Insert'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 23
              Visible = False
              OnClick = BB2Click
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
            object BB4: TBitBtn
              Left = 93
              Top = 8
              Width = 45
              Height = 48
              Hint = 'Modify Current'
              Caption = 'Modify'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 24
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
            object BB3: TBitBtn
              Left = 137
              Top = 8
              Width = 44
              Height = 48
              Hint = 'Delete one Record'
              Caption = 'Delete'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 25
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
            object BB5: TBitBtn
              Left = 181
              Top = 8
              Width = 44
              Height = 48
              Hint = 'Save Current'
              Caption = 'Save'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 26
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
              Left = 224
              Top = 8
              Width = 44
              Height = 48
              Hint = 'Cancel'
              Caption = 'Cancel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 27
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
            object BB7: TBitBtn
              Left = 386
              Top = 8
              Width = 47
              Height = 48
              Hint = 'Exit Current Form'
              Caption = 'Excel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 28
              OnClick = BB7Click
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
            end
            object Edit21: TEdit
              Left = 498
              Top = 113
              Width = 121
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 29
            end
            object CheckBox8: TCheckBox
              Left = 627
              Top = 7
              Width = 163
              Height = 13
              Caption = 'Status not ok'
              Checked = True
              State = cbChecked
              TabOrder = 30
            end
            object Button2: TButton
              Left = 299
              Top = 130
              Width = 33
              Height = 27
              Caption = 'auto'
              TabOrder = 31
              OnClick = Button2Click
            end
            object Button3: TButton
              Left = 247
              Top = 132
              Width = 46
              Height = 24
              Caption = 'autoall'
              TabOrder = 32
              OnClick = Button3Click
            end
            object CheckBox9: TCheckBox
              Left = 958
              Top = 7
              Width = 150
              Height = 13
              Caption = 'finalETA'
              Checked = True
              State = cbChecked
              TabOrder = 33
              OnClick = CheckBox9Click
            end
            object CheckBox10: TCheckBox
              Left = 338
              Top = 143
              Width = 27
              Height = 14
              TabOrder = 34
              OnClick = CheckBox10Click
            end
            object Edit25: TEdit
              Left = 499
              Top = 137
              Width = 119
              Height = 28
              TabOrder = 35
            end
            object CheckBox11: TCheckBox
              Left = 143
              Top = 59
              Width = 79
              Height = 13
              Caption = 'click'
              TabOrder = 36
              Visible = False
            end
            object btnExcel_all: TButton
              Left = 331
              Top = 8
              Width = 56
              Height = 48
              Caption = 'Excel All'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 37
              OnClick = btnExcel_allClick
            end
            object Button19: TButton
              Left = 370
              Top = 64
              Width = 63
              Height = 31
              Caption = 'Import'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 38
              OnClick = Button19Click
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Choice Sample Order'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 150
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 364
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
        object Label11: TLabel
          Left = 377
          Top = 51
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
        object Label12: TLabel
          Left = 570
          Top = 11
          Width = 58
          Height = 20
          Caption = 'Devtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 570
          Top = 52
          Width = 59
          Height = 20
          Caption = 'Subtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 184
          Top = 48
          Width = 51
          Height = 20
          Caption = 'TestNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 136
          Top = 8
          Width = 98
          Height = 20
          Caption = 'Sample Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 24
          Top = 72
          Width = 55
          Height = 20
          Caption = 'Count : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 778
          Top = 11
          Width = 54
          Height = 20
          Caption = 'Group1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 778
          Top = 51
          Width = 54
          Height = 20
          Caption = 'Group2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 498
          Top = 89
          Width = 9
          Height = 20
          Caption = '~'
        end
        object Label37: TLabel
          Left = 982
          Top = 12
          Width = 46
          Height = 20
          Caption = 'KHDH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit7: TEdit
          Left = 424
          Top = 8
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit8: TEdit
          Left = 424
          Top = 48
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit9: TEdit
          Left = 632
          Top = 10
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit10: TEdit
          Left = 632
          Top = 45
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object BitBtn1: TBitBtn
          Left = 8
          Top = 8
          Width = 53
          Height = 48
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
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
        object BitBtn3: TBitBtn
          Left = 72
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn3Click
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
        object Edit11: TEdit
          Left = 240
          Top = 48
          Width = 105
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit12: TEdit
          Left = 240
          Top = 8
          Width = 105
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit18: TEdit
          Left = 840
          Top = 10
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit20: TEdit
          Left = 840
          Top = 50
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object SampleRoomFinish: TCheckBox
          Left = 187
          Top = 81
          Width = 129
          Height = 17
          Caption = 'TB Receive '
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object dtp333: TDateTimePicker
          Left = 293
          Top = 78
          Width = 108
          Height = 28
          Date = 41675.431051550920000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431051550920000000
          TabOrder = 11
        end
        object dtp33: TDateTimePicker
          Left = 403
          Top = 78
          Width = 92
          Height = 28
          Date = 41675.000000000000000000
          Format = 'HH:mm:ss'
          Time = 41675.000000000000000000
          Kind = dtkTime
          TabOrder = 12
        end
        object DTP444: TDateTimePicker
          Left = 507
          Top = 78
          Width = 111
          Height = 28
          Date = 41675.431356041660000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431356041660000000
          TabOrder = 13
        end
        object dtp44: TDateTimePicker
          Left = 618
          Top = 78
          Width = 91
          Height = 28
          Date = 41675.999305555550000000
          Format = 'HH:mm:ss'
          Time = 41675.999305555550000000
          Kind = dtkTime
          TabOrder = 14
        end
        object Edit24: TEdit
          Left = 1029
          Top = 9
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 150
        Width = 1362
        Height = 564
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 1360
          Height = 562
          Align = alClient
          DataSource = DataSource2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CHK'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'JiJie'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Stage'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'YPDH'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TestNo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KHDH'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Color'
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DevType'
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Subtype'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Developer'
              Width = 79
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
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'ETD History'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label16: TLabel
          Left = 364
          Top = 10
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
        object Label17: TLabel
          Left = 377
          Top = 45
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
        object Label18: TLabel
          Left = 570
          Top = 10
          Width = 58
          Height = 20
          Caption = 'Devtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 570
          Top = 45
          Width = 59
          Height = 20
          Caption = 'Subtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 184
          Top = 45
          Width = 51
          Height = 20
          Caption = 'TestNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 769
          Top = 10
          Width = 53
          Height = 20
          Caption = 'Groups'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 763
          Top = 45
          Width = 62
          Height = 20
          Caption = 'Groups2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 208
          Top = 80
          Width = 23
          Height = 20
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit13: TEdit
          Left = 424
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit14: TEdit
          Left = 424
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit15: TEdit
          Left = 632
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit16: TEdit
          Left = 632
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object BitBtn2: TBitBtn
          Left = 5
          Top = 8
          Width = 53
          Height = 48
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
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
        object Edit17: TEdit
          Left = 240
          Top = 40
          Width = 105
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DTP5: TDateTimePicker
          Left = 240
          Top = 5
          Width = 105
          Height = 28
          Date = 44477.576574270830000000
          Time = 44477.576574270830000000
          TabOrder = 2
        end
        object CheckBox6: TCheckBox
          Left = 120
          Top = 10
          Width = 113
          Height = 17
          Caption = 'Update Date'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object Edit22: TEdit
          Left = 825
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Edit23: TEdit
          Left = 825
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object Edit26: TEdit
          Left = 240
          Top = 75
          Width = 185
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object Button5: TButton
          Left = 65
          Top = 8
          Width = 53
          Height = 48
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = Button5Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 105
        Width = 1362
        Height = 609
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Class'
            Footers = <>
            Width = 44
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'UpdateDate'
            Footers = <>
            Width = 98
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'NewETD'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'devcode'
            Footers = <>
            Title.Caption = 'SR'
            Width = 185
          end
          item
            EditButtons = <>
            FieldName = 'PO'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'SO'
            Footers = <>
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'Testno'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'SupplierNO'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Width = 156
          end
          item
            EditButtons = <>
            FieldName = 'Parts'
            Footers = <>
            Width = 144
          end
          item
            EditButtons = <>
            FieldName = 'MatNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DES'
            Footers = <>
            Width = 302
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 48
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Show'
      ImageIndex = 3
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 92
        Align = alTop
        TabOrder = 0
        object Button4: TButton
          Left = 8
          Top = 6
          Width = 54
          Height = 50
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button4Click
        end
        object BitBtn4: TBitBtn
          Left = 61
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn4Click
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
        object BitBtn5: TBitBtn
          Left = 114
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn5Click
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
        object BitBtn6: TBitBtn
          Left = 167
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Modify Current'
          Caption = 'Modify'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn6Click
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
        object BitBtn7: TBitBtn
          Left = 220
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Save Current'
          Caption = 'Save'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn7Click
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
        object BitBtn8: TBitBtn
          Left = 273
          Top = 8
          Width = 53
          Height = 48
          Hint = 'Cancel'
          Caption = 'Cancel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn8Click
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
      object Panel10: TPanel
        Left = 0
        Top = 92
        Width = 1362
        Height = 622
        Align = alClient
        Caption = 'Panel10'
        TabOrder = 1
        object DBGridEh7: TDBGridEh
          Left = 1
          Top = 1
          Width = 1360
          Height = 620
          Align = alClient
          DataSource = ShowDS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh7DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'Type'
              Footers = <>
              Width = 187
            end>
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'ETC History'
      ImageIndex = 4
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 109
        Align = alTop
        TabOrder = 0
        object Label40: TLabel
          Left = 393
          Top = 10
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
        object Label41: TLabel
          Left = 406
          Top = 45
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
        object Label42: TLabel
          Left = 599
          Top = 10
          Width = 58
          Height = 20
          Caption = 'Devtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 599
          Top = 45
          Width = 59
          Height = 20
          Caption = 'Subtype'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 194
          Top = 44
          Width = 51
          Height = 20
          Caption = 'TestNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 798
          Top = 10
          Width = 53
          Height = 20
          Caption = 'Groups'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 792
          Top = 45
          Width = 62
          Height = 20
          Caption = 'Groups2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 218
          Top = 79
          Width = 23
          Height = 20
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit27: TEdit
          Left = 453
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit28: TEdit
          Left = 453
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Edit29: TEdit
          Left = 661
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit30: TEdit
          Left = 661
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object BitBtn9: TBitBtn
          Left = 5
          Top = 8
          Width = 53
          Height = 48
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn9Click
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
        object Edit31: TEdit
          Left = 250
          Top = 39
          Width = 105
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit32: TEdit
          Left = 854
          Top = 5
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit33: TEdit
          Left = 854
          Top = 40
          Width = 121
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object Edit34: TEdit
          Left = 250
          Top = 74
          Width = 185
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object Button6: TButton
          Left = 65
          Top = 8
          Width = 53
          Height = 48
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = Button6Click
        end
        object CheckBox12: TCheckBox
          Left = 130
          Top = 10
          Width = 113
          Height = 17
          Caption = 'Update Date'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
        object DTP6: TDateTimePicker
          Left = 250
          Top = 5
          Width = 105
          Height = 28
          Date = 44477.576574270830000000
          Time = 44477.576574270830000000
          TabOrder = 11
        end
      end
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 109
        Width = 1362
        Height = 605
        Align = alClient
        DataSource = DataSource8
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Serino'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'groups'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'groups2'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Width = 247
          end
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TBReceiveDate'
            Footers = <>
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'OrginalETC'
            Footers = <>
            Title.Caption = 'Orginal ETC'
          end
          item
            EditButtons = <>
            FieldName = 'NewETC'
            Footers = <>
            Title.Caption = 'New ETC'
            Width = 135
          end
          item
            EditButtons = <>
            FieldName = 'ypdh'
            Footers = <>
            Title.Caption = 'Sample Order'
            Width = 144
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Caption = 'Developer'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'UpdateID'
            Footers = <>
            Title.Caption = 'Update ID'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'UpdateDate'
            Footers = <>
            Title.Caption = 'Update Date'
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select  DENSE_RANK()  OVER ( ORDER BY DEVCODE DESC ) AS Rank,sho' +
        'etest.TBcancel,shoetestplan.Serino,shoetestplan.Priority,kfxxzl.' +
        'khdh,shoetestplan.TestNo,kfxxzl.DEVCODE SR,kfxxzl.yssm Color,ypz' +
        'l.kfjd Stage,kfxxzl.DevType,ypzl.SubType,shoetestplan.ypdh ,'
      
        'shoetest.TBReceiveDate,shoetest.preparationDate,shoetest.S_mater' +
        'ial,shoetest.lamination_send,shoetest.lamination_get,shoetest.Ba' +
        'oHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoetest.LiMao_G' +
        'et,shoetest.insole_send,shoetest.lace_send,'
      
        'shoetestplan.Lamination,shoetest.Firstmatoutdate,shoetestplan.R2' +
        ',JNGR2.cgno R2Purchase,shoetestplan.R3,JNGR3.CGNO R3Purchase,ypz' +
        'l.fd Developer,shoetest.ShipDate,shoetest.Complete,shoetestplan.' +
        'YN,Memo,'
      
        'shoetestplan.C_Memo,shoetestplan.S_Memo,shoetestplan.A_Memo,shoe' +
        'testplan.groups,shoetestplan.P_Memo,shoetest.Lamination,shoetest' +
        '.Sublimation,shoetest.E_embroidery,shoetest.printing,shoetest.la' +
        'mination_CRMTO,shoetest.kietphong,'
      
        'shoetestplan.groups2,shoetest.Amico,shoetest.kietphong_Send,shoe' +
        'test.kietphong_Get,shoetest.Amico_Send,shoetest.Amico_Get,C_ETA,' +
        'S_ETA,shoetestplan.userid,shoetestplan.userdate,shoetestplan.NG_' +
        'Memo,shoetest.memo2'
      ' from shoetestplan'
      'left join ypzl on ypzl.ypdh=shoetestplan.ypdh '
      'left join shoetest on shoetest.testno= shoetestplan.testno'
      
        'left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=' +
        'kfxxzl.shehao'
      
        'left join  (select max(cgzlss.cgno) cgno,cgzlss.zlbh,cgzl.zsbh f' +
        'rom cgzlss'
      'left join cgzl on cgzlss.cgno=cgzl.cgno'
      'where zsbh='#39'JNGR2'#39' '
      'gROUP BY cgzlss.zlbh,cgzl.zsbh'
      ')JNGR2 on JNGR2.zlbh=ypzl.ypdh '
      
        'left join  (select max(cgzlss.cgno) cgno ,cgzlss.zlbh,cgzl.zsbh ' +
        'from cgzlss '
      'left join cgzl on cgzlss.cgno=cgzl.cgno'
      'where zsbh='#39'JNGR3'#39
      'gROUP BY cgzlss.zlbh,cgzl.zsbh '
      ')JNGR3 on JNGR3.zlbh=ypzl.ypdh '
      'where  1=1  '
      '')
    UpdateObject = UpdateSQL1
    Left = 73
    Top = 281
    object Query1TBcancel: TBooleanField
      FieldName = 'TBcancel'
    end
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1Priority: TIntegerField
      FieldName = 'Priority'
    end
    object Query1khdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Color: TStringField
      FieldName = 'Color'
      FixedChar = True
      Size = 50
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object Query1SubType: TStringField
      FieldName = 'SubType'
      FixedChar = True
      Size = 15
    end
    object Query1TBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object Query1preparationDate: TDateTimeField
      FieldName = 'preparationDate'
    end
    object Query1Lamination: TStringField
      FieldName = 'Lamination'
      FixedChar = True
    end
    object Query1Firstmatoutdate: TDateTimeField
      FieldName = 'Firstmatoutdate'
    end
    object Query1R2: TStringField
      FieldName = 'R2'
      FixedChar = True
      Size = 10
    end
    object Query1R2Purchase: TStringField
      FieldName = 'R2Purchase'
      FixedChar = True
      Size = 11
    end
    object Query1R3: TStringField
      FieldName = 'R3'
      FixedChar = True
      Size = 10
    end
    object Query1R3Purchase: TStringField
      FieldName = 'R3Purchase'
      FixedChar = True
      Size = 11
    end
    object Query1Developer: TStringField
      FieldName = 'Developer'
      FixedChar = True
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object Query1S_material: TDateTimeField
      FieldName = 'S_material'
    end
    object Query1lamination_send: TDateTimeField
      FieldName = 'lamination_send'
    end
    object Query1lamination_get: TDateTimeField
      FieldName = 'lamination_get'
    end
    object Query1BaoHe_send: TDateTimeField
      FieldName = 'BaoHe_send'
    end
    object Query1BaoHe_get: TDateTimeField
      FieldName = 'BaoHe_get'
    end
    object Query1LiMao_Send: TDateTimeField
      FieldName = 'LiMao_Send'
    end
    object Query1LiMao_Get: TDateTimeField
      FieldName = 'LiMao_Get'
    end
    object Query1insole_send: TDateTimeField
      FieldName = 'insole_send'
    end
    object Query1lace_send: TDateTimeField
      FieldName = 'lace_send'
    end
    object Query1C_Memo: TStringField
      FieldName = 'C_Memo'
      FixedChar = True
      Size = 255
    end
    object Query1S_Memo: TStringField
      FieldName = 'S_Memo'
      FixedChar = True
      Size = 255
    end
    object Query1A_Memo: TStringField
      FieldName = 'A_Memo'
      FixedChar = True
      Size = 255
    end
    object Query1groups: TStringField
      FieldName = 'groups'
      FixedChar = True
      Size = 6
    end
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1P_Memo: TStringField
      FieldName = 'P_Memo'
      FixedChar = True
      Size = 255
    end
    object Query1Lamination_1: TBooleanField
      FieldName = 'Lamination_1'
    end
    object Query1Sublimation: TBooleanField
      FieldName = 'Sublimation'
    end
    object Query1E_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object Query1printing: TBooleanField
      FieldName = 'printing'
    end
    object Query1lamination_CRMTO: TBooleanField
      FieldName = 'lamination_CRMTO'
    end
    object Query1kietphong: TBooleanField
      FieldName = 'kietphong'
    end
    object Query1groups2: TStringField
      FieldName = 'groups2'
      FixedChar = True
      Size = 6
    end
    object Query1Amico: TBooleanField
      FieldName = 'Amico'
    end
    object Query1kietphong_Send: TDateTimeField
      FieldName = 'kietphong_Send'
    end
    object Query1kietphong_Get: TDateTimeField
      FieldName = 'kietphong_Get'
    end
    object Query1Amico_Send: TDateTimeField
      FieldName = 'Amico_Send'
    end
    object Query1Amico_Get: TDateTimeField
      FieldName = 'Amico_Get'
    end
    object Query1C_ETA: TStringField
      FieldName = 'C_ETA'
      FixedChar = True
      Size = 120
    end
    object Query1S_ETA: TStringField
      FieldName = 'S_ETA'
      FixedChar = True
      Size = 120
    end
    object Query1userid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query1C_Memo1: TStringField
      FieldName = 'C_Memo1'
      Size = 255
    end
    object Query1S_Memo1: TStringField
      FieldName = 'S_Memo1'
      Size = 255
    end
    object Query1update_last: TStringField
      FieldName = 'update_last'
    end
    object Query1NG_Memo: TStringField
      FieldName = 'NG_Memo'
      FixedChar = True
      Size = 255
    end
    object Query1memo2: TMemoField
      FieldName = 'memo2'
      BlobType = ftMemo
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      ''
      'update  ShoeTestPlan'
      'set'
      'Serino=:Serino,'
      'Priority=:Priority,'
      'testno=:testno,'
      'Memo=:Memo,'
      'R2=:R2,'
      'R3=:R3,'
      'Lamination=:Lamination,'
      'C_MEMO=:C_MEMO,'
      'S_MEMO=:S_MEMO,'
      'A_MEMO=:A_MEMO,'
      'P_MEMO=:P_MEMO,'
      'C_ETA=:C_ETA,'
      'S_ETA=:S_ETA,'
      'YN=:YN,'
      'groups=:groups,'
      'groups2=:groups2,'
      'userid=:userid'
      'where   Testno= :OLD_Testno and YPDH = :OLD_YPDH')
    InsertSQL.Strings = (
      'INSERT INTO ShoeTestPlan'
      '(YPDH, TestNo, Serino, Priority, YN,Memo,R2,R3,Lamination)'
      'VALUES'
      
        '(:SampleOrder, :TestNo, :Serino, :Priority, :YN,:Memo,:R2,:R3,:L' +
        'amination)')
    DeleteSQL.Strings = (
      'DELETE FROM ShoeTestPlan'
      'WHERE'
      'Testno = :OLD_Testno and YPDH = :OLD_YPDH ')
    Left = 73
    Top = 337
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 81
    Top = 225
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    Left = 161
    Top = 281
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 425
    Top = 273
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from PubTable')
    Left = 417
    Top = 329
    object Query3CHK: TStringField
      DisplayWidth = 3
      FieldName = 'CHK'
      Origin = 'DB.PubTable.CHK'
      FixedChar = True
      Size = 5
    end
    object Query3YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.PubTable.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query3JiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.PubTable.JiJie'
      FixedChar = True
    end
    object Query3KHDH: TStringField
      FieldName = 'KHDH'
      Origin = 'DB.PubTable.KHDH'
      FixedChar = True
      Size = 4
    end
    object Query3SR: TStringField
      FieldName = 'SR'
      Origin = 'DB.PubTable.SR'
      FixedChar = True
    end
    object Query3Color: TStringField
      FieldName = 'Color'
      Origin = 'DB.PubTable.Color'
      FixedChar = True
      Size = 50
    end
    object Query3Stage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.PubTable.Stage'
      FixedChar = True
      Size = 3
    end
    object Query3DevType: TStringField
      FieldName = 'DevType'
      Origin = 'DB.PubTable.DevType'
      FixedChar = True
      Size = 15
    end
    object Query3Subtype: TStringField
      FieldName = 'Subtype'
      Origin = 'DB.PubTable.Subtype'
      FixedChar = True
      Size = 15
    end
    object Query3Developer: TStringField
      FieldName = 'Developer'
      Origin = 'DB.PubTable.Developer'
      FixedChar = True
    end
    object Query3XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.PubTable.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query3SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.PubTable.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      Origin = 'DB.PubTable.TestNo'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      ''
      'update  ShoeTestPlan'
      'set'
      'Serino=:Serino,'
      'TestNo=:TestNo,'
      'Priority=:Priority,'
      'Memo=:Memo,'
      'R2=:R2,'
      'R3=:R3,'
      'Lamination=:Lamination'
      'where   YPDH = :OLD_YPDH '
      'and TestNo=:OLD_TestNo')
    InsertSQL.Strings = (
      'INSERT INTO ShoeTestPlan'
      '(YPDH , Serino, Priority, YN,Memo,R2,R3,Lamination)'
      'VALUES'
      '(:YPDH , :Serino, :Priority, :YN,:Memo,:R2,:R3,:Lamination)')
    DeleteSQL.Strings = (
      'DELETE FROM ShoeTestPlan'
      'WHERE'
      'YPDH = :OLD_YPDH ')
    Left = 417
    Top = 393
  end
  object DataSource3: TDataSource
    DataSet = Query4
    Left = 577
    Top = 281
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select '#39'C'#39' Class,kfxxzl.devcode,ETDTemp.CGNO PO,Ypzls.CSBH Suppl' +
        'ierNO,zszl.zsywjc Supplier,bwzl.ywsm Parts,ETDTemp.CLBH MatNO,cl' +
        'zl.ywpm DES,ETDTemp.USERDate UpdateDate,ETDTemp.ETD NewETD,CGZLS' +
        'S.ZLBH SO,ypzl.kfjd Stage,shoetest.Testno from ETDTemp '
      
        'left join CGZLSS on CGZLSS.CGNO=ETDTemp.CGNO and  CGZLSS.clbh=ET' +
        'DTemp.clbh and CGZLSS.zlbh=ETDTemp.article '
      'left join ypzl on ypzl.YPDH=CGZLSS.ZLBH '
      
        'left join ypzls on ypzls.CLBH=ETDTemp.CLBH and ypzls.YPDH=ETDTem' +
        'p.article '
      'left join shoetest on shoetest.ypdh=ypzl.ypdh '
      'left join clzl on clzl.cldh=ETDTemp.clbh '
      'left join bwzl on bwzl.bwdh=ypzls.BWBH '
      'left join zszl on zszl.zsdh=ypzls.CSBH '
      'left join clzlfilter_DFL on ETDTemp.CLBH=clzlfilter_DFL.CLDH'
      
        'left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilte' +
        'r.GSBH='#39'CDC'#39'  '
      
        'left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilte' +
        'r.GSBH='#39'CDC'#39'  '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao '
      'where 1 = 1 '
      'and kfxxzl.JiJie='#39'23S'#39' '
      'and ypzl.KFJD='#39'CR1'#39' '
      'and ETDTemp.UserDate= convert(smalldatetime,'#39'2021/10/11'#39')  and '
      ' ( ((LEFT( ETDTemp.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39')) or '
      
        '  (LEFT(ETDTemp.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'L'#39') and  LEFT(ETDTe' +
        'mp.CLBH,3) not in ('#39'A48'#39')  and (clzlfilter_DFL.DFL is null) ) or' +
        ' '
      '  (clzlfilter_DFL.DFL='#39'1'#39') or'
      
        '  (LEFT(ETDTemp.CLBH,1)='#39'P'#39' and Ypzls.CSBH in ('#39'M027'#39','#39'V192'#39')) )' +
        '   and zszlfilter.zsdh is null  and clzlfilter.cldh is null and ' +
        'left(Ypzls.csbh,3) <>'#39'JNG'#39'  '
      ''
      'union'
      ''
      ''
      
        'select '#39'S'#39' Class,kfxxzl.devcode,ETDTemp.CGNO PO,Ypzls.CSBH Suppl' +
        'ierNO,zszl.zsywjc Supplier,bwzl.ywsm Parts,ETDTemp.CLBH MatNO,cl' +
        'zl.ywpm DES,ETDTemp.USERDate UpdateDate,ETDTemp.ETD NewETD,CGZLS' +
        'S.ZLBH SO,ypzl.kfjd Stage,shoetest.Testno from ETDTemp '
      
        'left join CGZLSS on CGZLSS.CGNO=ETDTemp.CGNO and  CGZLSS.clbh=ET' +
        'DTemp.clbh and CGZLSS.zlbh=ETDTemp.article '
      'left join ypzl on ypzl.YPDH=CGZLSS.ZLBH '
      
        'left join ypzls on ypzls.CLBH=ETDTemp.CLBH and ypzls.YPDH=ETDTem' +
        'p.article '
      'left join shoetest on shoetest.ypdh=ypzl.ypdh '
      'left join clzl on clzl.cldh=ETDTemp.clbh '
      'left join bwzl on bwzl.bwdh=ypzls.BWBH '
      'left join zszl on zszl.zsdh=ypzls.CSBH '
      'left join clzlfilter_DFL on ETDTemp.CLBH=clzlfilter_DFL.CLDH'
      
        'left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilte' +
        'r.GSBH='#39'CDC'#39'  '
      
        'left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilte' +
        'r.GSBH='#39'CDC'#39'  '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao '
      'where 1 = 1 '
      'and kfxxzl.JiJie='#39'23S'#39' '
      'and ypzl.KFJD='#39'CR1'#39' '
      'and ETDTemp.UserDate= convert(smalldatetime,'#39'2021/10/11'#39')  and '
      
        '( ((LEFT( ETDTemp.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Phu May'#39')) o' +
        'r  '
      '    ((LEFT( ETDTemp.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT De'#39')) or  '
      
        '    (LEFT(ETDTemp.CLBH,1) in ('#39'B'#39','#39'D'#39','#39'M'#39','#39'N'#39','#39'E'#39')  and (clzlfil' +
        'ter_DFL.DFL is null) ) or'
      '    (clzlfilter_DFL.DFL='#39'2'#39') or'
      
        '    (LEFT(ETDTemp.CLBH,3)  in ('#39'O02'#39','#39'J05'#39','#39'J04'#39','#39'A48'#39','#39'G03'#39'))  ' +
        'or'
      
        '    (LEFT(ETDTemp.CLBH,1) in ('#39'P'#39','#39'G'#39')  and Ypzls.csbh in ('#39'V097' +
        #39','#39'V194'#39','#39'A104'#39','#39'A088'#39','#39'K110'#39','#39'V162'#39','#39'A159'#39'))) and '
      
        '    zszlfilter.zsdh is null  and clzlfilter.cldh is null and lef' +
        't(Ypzls.csbh,3) <>'#39'JNG'#39)
    Left = 569
    Top = 337
    object Query4Class: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object Query4devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query4PO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 11
    end
    object Query4Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query4SupplierNO: TStringField
      FieldName = 'SupplierNO'
      FixedChar = True
      Size = 6
    end
    object Query4Supplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
    object Query4Parts: TStringField
      FieldName = 'Parts'
      FixedChar = True
      Size = 40
    end
    object Query4MatNO: TStringField
      FieldName = 'MatNO'
      FixedChar = True
      Size = 15
    end
    object Query4DES: TStringField
      FieldName = 'DES'
      FixedChar = True
      Size = 200
    end
    object Query4UpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object Query4NewETD: TDateTimeField
      FieldName = 'NewETD'
    end
    object Query4SO: TStringField
      FieldName = 'SO'
      FixedChar = True
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
  end
  object DataSource4: TDataSource
    DataSet = Query5
    Left = 729
    Top = 281
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, is' +
        'null(Status,'#39#39') Status,ETA,Material,MaterialDES,Memo,PurReceiveD' +
        'ate,NG_ETD,NG_ETA from ('
      
        'select  '#39'C'#39' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcod' +
        'e SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl' +
        '.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,'
      
        'case when  kcrkstemp.qty is not null or PurReceiveDate is not nu' +
        'll then '#39'Arrive'#39' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>' +
        '0) then '#39'UseStock'#39' end '#39'Status'#39', '
      
        'case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is n' +
        'ot null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ' +
        #39'OK'#39' else  convert(varchar, CGZLSS1.ETA, 111) end '#39'ETA'#39', '
      
        'Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,C' +
        'GZLSs1.Memo,CGZLSS1.NG_ETD,CGZLSS1.NG_ETA from ('
      
        'select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) a' +
        's CSBH,Sum(CLSL) as CLSL  from ( '
      
        'SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE' +
        ',ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLS' +
        'L '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join CLZL on CLZL.CLDH=ypzls.CLBH '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'WHERE  clzl.clzmlb = '#39'N'#39' and  shoetestplan.groups = '#39'23SCR1'#39' '
      'union all '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsd' +
        'h as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left join CLZL on CLZL.CLDH=clzhzl.CLDH1 '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      
        'WHERE  clzl.clzmlb = '#39'N'#39'   and CLZHZL.SYL>0  and  shoetestplan.g' +
        'roups = '#39'23SCR1'#39' '
      'union all '
      
        'Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CL' +
        'ZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL '
      ' from ( '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      
        'WHERE    CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and  shoetestplan.' +
        'groups = '#39'23SCR1'#39' ) clzhzl2 '
      'left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0 '
      ')  YPZLS '
      'Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL '
      ') Temp_YPZL '
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH '
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =' +
        'Temp_YPZL.YPDH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clb' +
        'h=Temp_YPZL.CLBH '
      'left join( '
      
        #9'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qt' +
        'y) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cg' +
        'date, '
      
        #9'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 e' +
        'lse Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Bu' +
        'y'#39' as useType,'#39#39' as stock_memo,CGZLS.Memo, '
      
        #9'case when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Loc' +
        'ation='#39'VN'#39')) then Min(MaterialNG.NG_ETD)+2 '
      
        #9#9' when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Locati' +
        'on<>'#39'VN'#39')) then Min(MaterialNG.NG_ETD)+7 end as NG_ETD,MaterialN' +
        'G.NG_ETA  '
      #9'from CGZLSS '
      #9'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      
        #9'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLS' +
        'S.CLBH '
      #9'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH '
      
        #9'left join (select season,CLBH,Location from MaterialMOQ where 1' +
        ' = 1 '
      
        #9#9#9#9'Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.C' +
        'LBH=CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON'
      
        #9'left join MaterialNG on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO'
      
        #9'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Locatio' +
        'n,cgzl.cgdate,CGZLS.Memo,MaterialNG.NG_ETD,MaterialNG.NG_ETA  )C' +
        'GZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZ' +
        'L.YPDH '
      'left join '
      #9'( '
      
        #9'select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoe' +
        'testplan '
      #9'left join kcrks on kcrks.CGBH=shoetestplan.ypdh '
      
        #9')kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=' +
        'Temp_YPZL.YPDH '
      'left join zszl on zszl.zsdh=Temp_YPZL.CSBH '
      
        'left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZL' +
        'InvoiceS.CGNO=CGZLSS.CGNO'
      'where '
      
        '   ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39')) ' +
        'or '
      
        '  (LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39','#39'L'#39') and  LEFT(Tem' +
        'p_YPZL.CLBH,3) not in ('#39'A48'#39')  and (clzlfilter_DFL.DFL is null) ' +
        ') or '
      '  (clzlfilter_DFL.DFL='#39'1'#39') or '
      
        '  (LEFT(Temp_YPZL.CLBH,1)='#39'P'#39' and Temp_YPZL.CSBH in ('#39'M027'#39','#39'V19' +
        '2'#39')) ) '
      
        'and zszlfilter.zsdh is null  and clzlfilter.cldh is null and lef' +
        't(Temp_YPZL.csbh,3) <>'#39'JNG'#39' '
      
        ' )main   group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,S' +
        'upplierName,isnull(Status,'#39#39') ,Material,MaterialDES,Memo,PurRece' +
        'iveDate,NG_ETD,NG_ETA')
    Left = 729
    Top = 321
    object Query5Class: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object Query5Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query5Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query5SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query5Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query5SO: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 15
    end
    object Query5Supplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 6
    end
    object Query5SupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object Query5Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 8
    end
    object Query5ETA: TStringField
      FieldName = 'ETA'
      FixedChar = True
      Size = 30
    end
    object Query5Material: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 15
    end
    object Query5MaterialDES: TStringField
      FieldName = 'MaterialDES'
      FixedChar = True
      Size = 200
    end
    object Query5Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object Query5NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Query5NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query6
    Left = 833
    Top = 281
  end
  object Query6: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, is' +
        'null(Status,'#39#39') Status,ETA,Material,MaterialDES,Memo,PurReceiveD' +
        'ate,NG_ETD,NG_ETA from ('
      
        'select  '#39'S'#39' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcod' +
        'e SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl' +
        '.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,'
      
        'case when  kcrkstemp.qty is not null or PurReceiveDate is not nu' +
        'll then '#39'Arrive'#39' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>' +
        '0) then '#39'UseStock'#39' end '#39'Status'#39', '
      
        'case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is n' +
        'ot null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ' +
        #39'OK'#39' else  convert(varchar, CGZLSS1.ETA, 111) end '#39'ETA'#39', '
      
        'Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,C' +
        'GZLSs1.Memo,CGZLSS1.NG_ETD,CGZLSS1.NG_ETA from ('
      
        'select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) a' +
        's CSBH,Sum(CLSL) as CLSL  from ( '
      
        'SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE' +
        ',ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLS' +
        'L '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join CLZL on CLZL.CLDH=ypzls.CLBH '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      'WHERE  clzl.clzmlb = '#39'N'#39' and  shoetestplan.groups = '#39'23SCR1'#39' '
      'union all '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsd' +
        'h as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left join CLZL on CLZL.CLDH=clzhzl.CLDH1 '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH '
      
        'WHERE  clzl.clzmlb = '#39'N'#39'   and CLZHZL.SYL>0  and  shoetestplan.g' +
        'roups = '#39'23SCR1'#39' '
      'union all '
      
        'Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CL' +
        'ZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL '
      ' from ( '
      
        'SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCOD' +
        'E,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL '
      'FROM shoetestplan  '
      'left join ypzl on ypzl.YPDH=shoetestplan.YPDH'
      'left join ypzls on ypzl.YPDH=ypzls.YPDH'
      'left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao '
      
        'left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.Sh' +
        'eHao=xxzlkf.SheHao '
      
        'WHERE    CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and  shoetestplan.' +
        'groups = '#39'23SCR1'#39' ) clzhzl2 '
      'left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0 '
      ')  YPZLS '
      'Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL '
      ') Temp_YPZL '
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH '
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39' '
      
        'left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =' +
        'Temp_YPZL.YPDH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clb' +
        'h=Temp_YPZL.CLBH '
      'left join( '
      
        #9'Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qt' +
        'y) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cg' +
        'date, '
      
        #9'Case when MaterialMOQ.Location='#39'VN'#39' then Min(CGZLS.CFMDate)+1 e' +
        'lse Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, '#39'Bu' +
        'y'#39' as useType,'#39#39' as stock_memo,CGZLS.Memo, '
      
        #9'case when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Loc' +
        'ation='#39'VN'#39')) then Min(MaterialNG.NG_ETD)+2 '
      
        #9#9' when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Locati' +
        'on<>'#39'VN'#39')) then Min(MaterialNG.NG_ETD)+7 end as NG_ETD,MaterialN' +
        'G.NG_ETA  '
      #9'from CGZLSS '
      #9'inner join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      
        #9'inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLS' +
        'S.CLBH '
      #9'inner join CLZL on CLZL.CLDH=CGZLSS.CLBH '
      
        #9'left join (select season,CLBH,Location from MaterialMOQ where 1' +
        ' = 1 '
      
        #9#9#9#9'Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.C' +
        'LBH=CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON'
      
        '    left join MaterialNG on CGZLS.CLBH=MaterialNG.CLBH and CGZLS' +
        '.CGNO=MaterialNG.CGNO'
      
        #9'Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Locatio' +
        'n,cgzl.cgdate,CGZLS.Memo,MaterialNG.NG_ETD,MaterialNG.NG_ETA )CG' +
        'ZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL' +
        '.YPDH '
      'left join '
      #9'( '
      
        #9'select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoe' +
        'testplan '
      #9'left join kcrks on kcrks.CGBH=shoetestplan.ypdh '
      
        #9')kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=' +
        'Temp_YPZL.YPDH '
      'left join zszl on zszl.zsdh=Temp_YPZL.CSBH '
      
        'left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZL' +
        'InvoiceS.CGNO=CGZLSS.CGNO'
      'where '
      
        '   ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Phu May' +
        #39')) or '
      
        '    ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT De'#39')) or' +
        ' '
      
        '    (LEFT(Temp_YPZL.CLBH,1) in ('#39'B'#39','#39'D'#39','#39'M'#39','#39'N'#39','#39'E'#39')  and (clzlf' +
        'ilter_DFL.DFL is null) ) or '
      '    (clzlfilter_DFL.DFL='#39'2'#39') or '
      
        '    (LEFT(Temp_YPZL.CLBH,3)  in ('#39'O02'#39','#39'J05'#39','#39'J04'#39','#39'A48'#39','#39'G03'#39'))' +
        '  or '
      
        '    (LEFT(Temp_YPZL.CLBH,1) in ('#39'P'#39','#39'G'#39')  and csbh in ('#39'V097'#39','#39'V' +
        '194'#39','#39'A104'#39','#39'A088'#39','#39'K110'#39','#39'V162'#39','#39'A159'#39'))) and '
      
        '    zszlfilter.zsdh is null  and clzlfilter.cldh is null and lef' +
        't(csbh,3) <>'#39'JNG'#39' and csbh <> '#39'P154'#39' '
      ' )main  where 1=2  '
      
        ' group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,SupplierN' +
        'ame,isnull(Status,'#39#39') ,Material,MaterialDES,Memo,PurReceiveDate,' +
        'NG_ETD,NG_ETA')
    Left = 825
    Top = 337
    object StringField1: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'SO'
      FixedChar = True
      Size = 15
    end
    object StringField7: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
    object StringField9: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 8
    end
    object StringField10: TStringField
      FieldName = 'ETA'
      FixedChar = True
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'Material'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'MaterialDES'
      FixedChar = True
      Size = 200
    end
    object StringField13: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 250
    end
    object Query6NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Query6NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query7
    Left = 921
    Top = 289
  end
  object Query7: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from ('
      'select max(KCYEAR+KCMONTH) Date,CKBH,CLBH from kcclmonth'
      ' where CLBH='#39'D110003226'#39' and KCYEAR=year(getdate()) '
      'group by  CKBH,CLBH)main'
      
        'left join (select KCYEAR+KCMONTH Date,CKBH,CLBH,qty from kcclmon' +
        'th'
      '           where CLBH='#39'D110003226'#39' and KCYEAR=year(getdate()) '
      
        '           group by  KCYEAR+KCMONTH,CKBH,CLBH,qty)kcclmonth on k' +
        'cclmonth.Date=main.Date and kcclmonth.CKBH=main.CKBH and main.CL' +
        'BH=kcclmonth.CLBH')
    Left = 913
    Top = 345
    object Query7Date: TStringField
      FieldName = 'Date'
      FixedChar = True
      Size = 6
    end
    object Query7CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query7CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query7Date_1: TStringField
      FieldName = 'Date_1'
      FixedChar = True
      Size = 6
    end
    object Query7CKBH_1: TStringField
      FieldName = 'CKBH_1'
      FixedChar = True
      Size = 4
    end
    object Query7CLBH_1: TStringField
      FieldName = 'CLBH_1'
      FixedChar = True
      Size = 15
    end
    object Query7qty: TCurrencyField
      FieldName = 'qty'
    end
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    Left = 1116
    Top = 300
  end
  object Query9: TQuery
    DatabaseName = 'DB'
    Left = 309
    Top = 573
  end
  object Query10: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      ' select ypdh,'
      
        'case when giacong='#39#39' then zsywjc when giacong<>'#39#39' then giacong e' +
        'nd zsywjc,'
      ' days from shoeplanGC'
      'left join clzl on clzl.cldh=shoeplanGC.clbh'
      'where ypdh=:ypdh'
      
        'group by ypdh,days,case when giacong='#39#39' then zsywjc when giacong' +
        '<>'#39#39' then giacong end ')
    Left = 381
    Top = 573
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ypdh'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query10ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query10zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 40
    end
    object Query10days: TIntegerField
      FieldName = 'days'
    end
  end
  object Query11: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select TestNo,ypdh from shoetest'
      'where ypdh=:ypdh')
    Left = 581
    Top = 621
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ypdh'
        ParamType = ptUnknown
      end>
  end
  object DataSource7: TDataSource
    DataSet = Query11
    Left = 581
    Top = 565
  end
  object ShowQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Groups,Type,'#39#39'YN from shoetestplanshow')
    UpdateObject = UpdateSQLshow
    Left = 752
    Top = 84
    object ShowQryGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object ShowQryType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 4
    end
    object ShowQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object ShowDS: TDataSource
    DataSet = ShowQry
    Left = 752
    Top = 44
  end
  object UpdateSQLshow: TUpdateSQL
    ModifySQL.Strings = (
      ''
      'update shoetestplanshow'
      'set'
      'Groups=:Groups,'
      'Type=:Type'
      'where   Groups= :OLD_Groups and Type = :OLD_Type')
    InsertSQL.Strings = (
      'INSERT INTO shoetestplanshow'
      '(Groups, Type)'
      'VALUES'
      '(:Groups, :Type)')
    DeleteSQL.Strings = (
      'delete from shoetestplanshow'
      'where'
      '  groups= :OLD_groups and type=:OLD_type')
    Left = 752
    Top = 132
  end
  object OpenDialog: TOpenDialog
    Left = 389
    Top = 163
  end
  object DataSource8: TDataSource
    DataSet = Query12
    Left = 1208
    Top = 281
  end
  object Query12: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select shoetestplan.Serino, shoetestplan.groups, shoetestplan.gr' +
        'oups2, ypzl.kfjd Stage, kfxxzl.DEVCODE SR, '
      
        ' shoetest.TestNo, shoetest.TBReceiveDate, ETCTemp.OrginalETC, sh' +
        'oetest.ETC as NewETC, isnull(shoetest.ypdh,'#39#39') as ypdh, '
      
        ' YPZL.FD, ETCTemp.UserID as UpdateID, ETCTemp.UserDate as Update' +
        'Date '
      ' from shoetestplan '
      ' left join shoetest on shoetest.testno=shoetestplan.testno '
      ' left join ypzl on ypzl.ypdh=shoetestplan.ypdh '
      
        ' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheh' +
        'ao=ypzl.shehao '
      ' left join ETCTemp on ETCTemp.testno = shoetestplan.testno '
      ' where 1=1'
      ' and shoetest.TestNo='#39'25U0150'#39' '
      
        ' group by shoetestplan.Serino, shoetestplan.groups, shoetestplan' +
        '.groups2, ypzl.kfjd, kfxxzl.DEVCODE, '
      
        ' shoetest.TestNo, shoetest.TBReceiveDate,ETCTemp.OrginalETC, sho' +
        'etest.ETC, shoetest.ypdh, YPZL.FD, ETCTemp.UserID, ETCTemp.UserD' +
        'ate')
    Left = 1208
    Top = 321
    object Query12Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query12groups: TStringField
      FieldName = 'groups'
      FixedChar = True
      Size = 6
    end
    object Query12groups2: TStringField
      FieldName = 'groups2'
      FixedChar = True
      Size = 6
    end
    object Query12Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query12SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query12TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query12TBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object Query12OrginalETC: TDateTimeField
      FieldName = 'OrginalETC'
    end
    object Query12NewETC: TDateTimeField
      FieldName = 'NewETC'
    end
    object Query12ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query12FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query12UpdateID: TStringField
      FieldName = 'UpdateID'
      FixedChar = True
      Size = 15
    end
    object Query12UpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
  end
end
