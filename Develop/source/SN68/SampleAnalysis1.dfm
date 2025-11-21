object SampleAnalysis: TSampleAnalysis
  Left = 177
  Top = 105
  Width = 1386
  Height = 744
  Caption = 'SampleAnalysis'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 144
    Width = 1370
    Height = 561
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Analysis1'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1233
        Height = 399
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1232
          Height = 192
          Align = alTop
          Caption = 'Panel4'
          TabOrder = 0
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1230
            Height = 191
            Align = alClient
            DataSource = DS2
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
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh2CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'season'
                Footer.FieldName = 'season'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Season|'#23395#31680
                Width = 56
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'FinishedShoe'
                Footer.FieldName = 'FinishedShoe'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'FinishedShoe|'#25104#21697#38795
                Width = 79
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'HalfStitchingUpper'
                Footer.FieldName = 'HalfStitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'HalfStitchingUpper|'#21322#37341#36554#38795#38754
                Width = 91
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'StitchingUpper'
                Footer.FieldName = 'StitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'StitchingUpper|'#37341#36554#38795#38754
                Width = 85
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'LastedUpper'
                Footer.FieldName = 'LastedUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'LastedUpper|'#20837#26982#38795#38754
                Width = 73
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'UpperComponent'
                Footer.FieldName = 'UpperComponent'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'UpperComponent|'#38754#37096#32068#20214
                Width = 97
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'BottomComponent'
                Footer.FieldName = 'BottomComponent'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'BottomComponent|'#24213#37096#32068#20214
                Width = 105
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Sheet'
                Footer.FieldName = 'Sheet'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Sheet|'#35009#29255
                Width = 45
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'A4'
                Footer.FieldName = 'A4'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'A4|A4'
                Width = 49
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'ColorSwatchBook'
                Footer.FieldName = 'ColorSwatchBook'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ColorSwatchBook|'#33394#21345#26412
                Width = 91
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'CFMSample'
                Footer.FieldName = 'CFMSample'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'CFMSample|'#30906#35469#38795
                Width = 72
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'UpperAndBottomCE'
                Footer.FieldName = 'UpperAndBottomCE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'UpperAndBottomCE|'#38754#36319#24213'(CE)'
                Width = 105
              end>
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 193
          Width = 1232
          Height = 205
          Align = alClient
          Caption = 'Panel7'
          TabOrder = 1
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 1
            Width = 1230
            Height = 203
            Align = alClient
            DataSource = DS4
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno|'#36890#22577#34399
                Width = 74
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Shipping'
                Footer.FieldName = 'Shipping'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Shipping|'#20986#36008
                Width = 50
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Testing_Bonding_Flexing'
                Footer.FieldName = 'Testing_Bonding_Flexing'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Testing-Bonding/Flexing|'#28204#35430'-Bonding/Flexing'
                Width = 119
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'FitTest'
                Footer.FieldName = 'FitTest'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'FitTest|'#30701#26399#35430#31359
                Width = 63
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'WearTest'
                Footer.FieldName = 'WearTest'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WearTest|'#38263#26399#35430#31359
                Width = 56
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Keeping'
                Footer.FieldName = 'Keeping'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Keeping|'#30041#24213
                Width = 49
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'SocialSample'
                Footer.FieldName = 'SocialSample'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'SocialSample|'#20844#38364#38795
                Width = 69
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'TechTeam'
                Footer.FieldName = 'TechTeam'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'TechTeam|'#25216#34899
                Width = 57
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'TW_BY'
                Footer.FieldName = 'TW_BY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'TW/BY|'#21488#28771'/'#25562#24030
                Width = 57
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'QC'
                Footer.FieldName = 'QC'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'QC|'#21697#31649
                Width = 48
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'IE'
                Footer.FieldName = 'IE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'IE|IE'
                Width = 45
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Costing'
                Footer.FieldName = 'Costing'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Costing|'#25104#26412
                Width = 39
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Remake_SampleRoomQualityIssued'
                Footer.FieldName = 'Remake_SampleRoomQualityIssued'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Remake_SampleRoomQualityIssued|'#37325#20316'-'#27171#21697#23460#21697#36074#21839#38988
                Width = 179
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Testing_G105'
                Footer.FieldName = 'Testing_G105'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Testing_G105|'#28204#35430'G105'
                Width = 85
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Test'
                Footer.FieldName = 'Test'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Test|'#28204#35430
                Width = 66
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'Trial'
                Footer.FieldName = 'Trial'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Trial|'#35430#29256
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'ypdh'
                Footers = <>
                Title.Caption = 'SampleOrder|'#27171#21697#21934#34399
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.Caption = 'SR|SR'
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Title.Caption = 'Stage|'#38542#27573
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'SeeStage'
                Footers = <>
                Title.Caption = 'SeeStage|'#35430#29256#38542#27573
                Width = 88
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Title.Caption = 'Developer|'#38283#30332#21729
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Title.Caption = 'Season|'#23395#31680
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Purpose'
                Footers = <>
                Title.Caption = 'Purpose|'#30446#30340
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'xieming'
                Footers = <>
                Title.Caption = 'ShoeName|'#38795#21517
                Width = 354
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'userdate|'#36890#22577#24314#31435#26085
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'complete'
                Footers = <>
                Title.Caption = 'complete|'#27171#21697#23460#23436#25104#26085
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'days'
                Footers = <>
                Title.Caption = 'days|'#20316#26989#26085
                Width = 74
              end>
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Analysis2'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 533
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 25
          Width = 1360
          Height = 507
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 65
            Width = 1358
            Height = 441
            Align = alClient
            Color = clInfoText
            ColumnDefValues.Title.TitleButton = True
            DataSource = DS1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindowText
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindow
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghData3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            RowSizingAllowed = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                Alignment = taLeftJustify
                EditButtons = <>
                FieldName = 'Serino'
                Footers = <>
                Title.Caption = 'Serino|'#24207#34399
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'groups'
                Footers = <>
                Title.Caption = 'NB5|Group1|'#20998#32068'1'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'groups2'
                Footers = <>
                Title.Caption = 'NB5|Group2|'#20998#32068'2'
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Title.Caption = 'Season|Mua|'#23395#31680
                Visible = False
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Testno|'#36890#22577
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.Caption = 'SR'
                Width = 204
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Title.Caption = 'Stage|Giai Doan|'#38542#27573
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'xieming'
                Footers = <>
                Title.Caption = 'Ten Giay|Shoe Name|'#38795#21517
                Width = 164
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Title.Caption = 'Khai Thac|Developer|'#38283#30332#21729
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'Purpose'
                Footers = <>
                Title.Caption = 'Muc Dich|Purpose|'#30446#30340
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'TBReceiveDate'
                Footers = <>
                Title.Caption = 
                  'TB Receive - Planning Team(SINH QUAN)|Ngay Nhan TB|TB Receive Da' +
                  'te|'#36890#22577#25509#25910#26085
                Width = 127
              end
              item
                Checkboxes = True
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lamination'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|GC-Trong|JNG|'#24288#20839#21152#24037
                Width = 72
              end
              item
                Checkboxes = True
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lamination_CRMTO'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|GC - ngoai|CRMTO|'#24288#22806#21152#24037#25104#38263
                Width = 103
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Amico'
                Footers = <>
                Title.Caption = 
                  'TB Receive - Planning Team(SINH QUAN)|GC - ngoai(Amico)|Amico(TP' +
                  'U)|'#24288#22806#21152#24037'Amico'
                Width = 152
              end
              item
                Checkboxes = True
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Sublimation'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Bao He|Sublimation|'#23542#21644
                Width = 87
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'kietphong'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Kiet Phong|Punching|'#21513#35920
                Width = 97
              end
              item
                Checkboxes = True
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'E_embroidery'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Theu|Embroidery|'#38651#32353
                Width = 103
              end
              item
                Checkboxes = True
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'printing'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|In|Printing|'#21360#21047
                Width = 54
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'LiMao'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|LiMao||LiMao||'#31435#33538
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Laser'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|Laser|Laser'
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'DAJU'
                Footers = <>
                Title.Caption = 'TB Receive - Planning Team(SINH QUAN)|DAJU|DAJU'
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'preparationDate'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|Vat Tu Mat Ok|Main Materials' +
                  ' Ready|'#20027#38754#26009#20633#26009#23436#25104
                Width = 163
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'S_material'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|May Phu Iieu Ok|Stitching Ac' +
                  'cessories Ready|'#37341#36554#21103#26009#20633#26009#23436#25104
                Width = 206
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'insole_send'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|Go Phu Iieu Ok|Assembly Acce' +
                  'ssories Ready|'#25104#22411#21103#26009#20633#26009#23436#25104
                Width = 215
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lace_send'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|Bao Bi Phu Iieu Ok|Packing A' +
                  'ccessories Ready|'#21253#35037#21103#26009#20633#26009#23436#25104
                Width = 212
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lamination_send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat GC|lamination Send|'#30332#36028#21512
                Width = 137
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lamination_get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|GC VE|lamination Get|'#38936#36028#21512
                Width = 108
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'BaoHe_send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat BaoHe|BaoHe Send|'#30332#23542#21644
                Width = 111
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'BaoHe_get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|BaoHe Ve|BaoHe Get|'#38936#23542#21644
                Width = 87
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'LiMao_Send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat LiMao|LiMao Send|'#30332#31435#33538
                Width = 91
              end
              item
                Checkboxes = False
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'LiMao_Get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|LiMao Ve|LiMao Get|'#38936#31435#33538
                Width = 80
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'kietphong_Send'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|Phat Kietphong|Kietphong Sen' +
                  'd|'#30332#21513#35920
                Width = 123
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'kietphong_Get'
                Footers = <>
                Title.Caption = 
                  'Warehouse Preparation(Kho Chuan Bi)|Kietphong Ve|Kietphong Get|'#38936 +
                  #21513#35920
                Width = 110
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Amico_Send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat Amico|Amico Send|'#30332'Amico'
                Width = 94
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Amico_Get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Amico Ve|Amico Get|'#38936'Amico'
                Width = 87
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Laser_Send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat Laser|Laser_Send|'#30332#21644#37995
                Width = 102
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Laser_Get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Laser Ve|Laser_Get|'#38936#21644#37995
                Width = 102
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'DAJU_Send'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|Phat DAJU|DAJU_Send|'#30332'DAJU'
                Width = 109
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'DAJU_Get'
                Footers = <>
                Title.Caption = 'Warehouse Preparation(Kho Chuan Bi)|DAJU Ve|DAJU_Get|'#38936'DAJU'
                Width = 89
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'FirstMatOutDate'
                Footers = <>
                Title.Caption = 
                  'Sample Room Cutting(Phong Man - Chat)|Lanh vat tu mat|Cutting Ma' +
                  'terial Receive||'#35009#26039#38936#26009#26085
                Width = 178
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'E_embroidery_send'
                Footers = <>
                Title.Caption = 
                  'Sample Room Cutting(Phong Man - Chat)|Phat Theu|Embroidery Send|' +
                  #30332#38651#32353
                Width = 147
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'printing_send'
                Footers = <>
                Title.Caption = 'Sample Room Cutting(Phong Man - Chat)|Phat In|Printing Send|'#30332#21360#21047
                Width = 104
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'E_embroidery_get'
                Footers = <>
                Title.Caption = 'Sample Room Cutting(Phong Man - Chat)|Theu Ve|Embroidery Get|'#38936#38651#32353
                Width = 128
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'printing_get'
                Footers = <>
                Title.Caption = 'Sample Room Cutting(Phong Man - Chat)|In Ve|Printing Get|'#38936#21360#21047
                Width = 95
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'cutdate'
                Footers = <>
                Title.Caption = 
                  'Sample Room Cutting(Phong Man - Chat)|Chat Ok|Cutting Finished|'#35009 +
                  #26039#23436#25104
                Width = 122
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'StitchingPhuFinishDate'
                Footers = <>
                Title.Caption = 
                  'Sample Room Stitching(Phong Man - May)|Lanh phu lieu May|Stitchi' +
                  'ng Accessories Receive||'#37341#36554#21103#26009#38936#26009#26085
                Width = 224
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'stitchingDate'
                Footers = <>
                Title.Caption = 
                  'Sample Room Stitching(Phong Man - May)|May Ok|Stitching Finished' +
                  '|'#37341#36554#23436#25104#26085
                Width = 144
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'DMatArriveDate'
                Footers = <>
                Title.Caption = 
                  'Sample Room Assembly(Phong Man - Go)|Lanh Ta lon (R2)|R2 Foxing ' +
                  'Receive|R2'#37002#26781#38936#26009#26085
                Width = 143
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'DMatArriveDateR3'
                Footers = <>
                Title.Caption = 
                  'Sample Room Assembly(Phong Man - Go)|Lanh De lon (R3)|R3 O/S Rec' +
                  'eive|R3'#22823#24213#38936#26009#26085
                Width = 134
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'insole_get'
                Footers = <>
                Title.Caption = 
                  'Sample Room Assembly(Phong Man - Go)|Go Phu Lieu Ianh|Assembly A' +
                  'ccessories Receive|'#25104#22411#21103#26009#38936#26009#26085
                Width = 238
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'Assemblecomplete'
                Footers = <>
                Title.Caption = 
                  'Sample Room Assembly(Phong Man - Go)|Go Ok|Assembly Finished|'#25104#22411#23436 +
                  #25104#26085
                Width = 140
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'lace_get'
                Footers = <>
                Title.Caption = 
                  'Sample Room Packing(Phong Man - Bao Bi)|Bao Bi Phu Lieu Ianh|Pac' +
                  'king Accessories Receive|'#21253#35037#21103#26009#38936#26009#26085
                Width = 226
              end
              item
                DisplayFormat = 'YYYY-MM-DD hh:nn'
                EditButtons = <>
                FieldName = 'complete'
                Footer.Color = clScrollBar
                Footers = <>
                Title.Caption = 
                  'Sample Room Packing(Phong Man - Bao Bi)|Bao Bi Ok|Packing Finish' +
                  'ed|'#21253#35037#23436#25104#26085
                Width = 158
              end
              item
                EditButtons = <>
                FieldName = 'days'
                Footers = <>
                Title.Caption = 'Days|'#20316#26989#26178#38291
                Width = 73
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'FinishedShoe'
                Footer.FieldName = 'FinishedShoe'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Finished Shoe|Giay thanh Pham|'#25104#21697#38795
                Width = 130
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'HalfStitchingUpper'
                Footer.FieldName = 'HalfStitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Half Stitching Upper|May nua|'#21322#37341#36554#38795#38754
                Width = 132
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'StitchingUpper'
                Footer.FieldName = 'StitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Stitching Upper|May mu|'#37341#36554#38795#38754
                Width = 112
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'LastedUpper'
                Footer.FieldName = 'LastedUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Lasted Upper|Nong phom|'#20837#26982#38795#38754
                Width = 92
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'UpperComponent'
                Footer.FieldName = 'UpperAndBottomCE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Upper Component|Mat bo vi|'#38754#37096#32068#20214
                Width = 131
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'BottomComponent'
                Footer.FieldName = 'BottomComponent'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Bottom Component|De bo vi|'#24213#37096#32068#20214
                Width = 142
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'Sheet'
                Footer.FieldName = 'Sheet'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Sheet|Mieng vat tu|'#35009#29255
                Width = 107
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'A4'
                Footer.FieldName = 'A4'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'A4|A4|A4'
                Width = 32
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'ColorSwatchBook'
                Footer.FieldName = 'ColorSwatchBook'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Color Swatch Book|Bang mau|'#33394#21345#26412
                Width = 135
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'CFMSample'
                Footer.FieldName = 'CFMSample'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'CFM Sample|Griay xac nhan|'#30906#35469#38795
                Width = 115
              end
              item
                Color = -1
                EditButtons = <>
                FieldName = 'UpperAndBottomCE'
                Footer.FieldName = 'UpperAndBottomCE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Upper And Bottom CE|Mat va De va Talon than va logo|'#38754#36319#24213'(CE)'
                Width = 233
              end
              item
                EditButtons = <>
                FieldName = 'Tech_Level'
                Footers = <>
                Title.Caption = 'Tech Level'
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'TB Build Date|'#36890#22577#24314#31435#26085
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'ypdh'
                Footers = <>
                Title.Caption = 'Sample Order|'#27171#21697#21934
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'memo2'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SeeType'
                Footers = <>
                Width = 107
              end>
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 1358
            Height = 64
            Align = alTop
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -44
            Font.Name = '@Fixedsys'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            object Label10: TLabel
              Left = 8
              Top = 6
              Width = 557
              Height = 54
              Caption = 'Pullover Sample Schedule'
              Color = clWindow
              Font.Charset = ANSI_CHARSET
              Font.Color = clHighlight
              Font.Height = -49
              Font.Name = 'Britannic Bold'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 24
          Align = alTop
          TabOrder = 1
          object Label6: TLabel
            Left = 8
            Top = 0
            Width = 239
            Height = 20
            Caption = 'Blue Color :   TB Already complete'
            Color = clWindow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object CheckBox2: TCheckBox
            Left = 288
            Top = 4
            Width = 129
            Height = 17
            Caption = 'Planning Team Detail'
            TabOrder = 0
            OnClick = CheckBox2Click
          end
          object CheckBox3: TCheckBox
            Left = 456
            Top = 3
            Width = 121
            Height = 17
            Caption = 'Warehouse Detail '
            TabOrder = 1
            OnClick = CheckBox3Click
          end
          object CheckBox4: TCheckBox
            Left = 606
            Top = 3
            Width = 97
            Height = 17
            Caption = 'Cutting Detail'
            TabOrder = 2
            OnClick = CheckBox4Click
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 144
    Align = alTop
    Caption = 'Panel6'
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1368
      Height = 142
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 14
        Width = 47
        Height = 16
        Caption = 'Season'
      end
      object Label2: TLabel
        Left = 260
        Top = 14
        Width = 64
        Height = 16
        Caption = 'Developer'
      end
      object Label3: TLabel
        Left = 136
        Top = 14
        Width = 36
        Height = 16
        Caption = 'Stage'
      end
      object Label4: TLabel
        Left = 404
        Top = 13
        Width = 113
        Height = 16
        Caption = 'SampleOrderType'
      end
      object lbl8: TLabel
        Left = 316
        Top = 46
        Width = 9
        Height = 16
        Caption = '~'
      end
      object Label7: TLabel
        Left = 607
        Top = 14
        Width = 70
        Height = 16
        Caption = 'TB unFinish'
      end
      object Label8: TLabel
        Left = 555
        Top = 41
        Width = 45
        Height = 16
        Caption = 'TestNo'
      end
      object Label9: TLabel
        Left = 519
        Top = 66
        Width = 81
        Height = 16
        Caption = 'SampleOrder'
      end
      object Label11: TLabel
        Left = 1192
        Top = 16
        Width = 157
        Height = 16
        Caption = 'Refresh Data                   min'
      end
      object Label12: TLabel
        Left = 1192
        Top = 56
        Width = 154
        Height = 16
        Caption = 'Scroll Data                      sec'
      end
      object Label13: TLabel
        Left = 1368
        Top = 56
        Width = 180
        Height = 16
        Caption = 'Scroll              Datas Each Time'
      end
      object Label14: TLabel
        Left = 751
        Top = 66
        Width = 19
        Height = 16
        Caption = 'SR'
      end
      object Label15: TLabel
        Left = 521
        Top = 88
        Width = 39
        Height = 16
        Caption = 'GSDH'
      end
      object Label16: TLabel
        Left = 632
        Top = 94
        Width = 67
        Height = 16
        Caption = 'DEV TYPE'
      end
      object Label17: TLabel
        Left = 8
        Top = 70
        Width = 114
        Height = 16
        Caption = 'WareHouse Memo'
      end
      object Label18: TLabel
        Left = 813
        Top = 90
        Width = 19
        Height = 16
        Caption = 'GC'
      end
      object Label19: TLabel
        Left = 516
        Top = 119
        Width = 44
        Height = 16
        Caption = 'Group1'
      end
      object Label20: TLabel
        Left = 698
        Top = 119
        Width = 44
        Height = 16
        Caption = 'Group2'
      end
      object Frozen: TLabel
        Left = 879
        Top = 119
        Width = 41
        Height = 16
        Caption = 'Frozen'
      end
      object Button1: TButton
        Left = 936
        Top = 4
        Width = 97
        Height = 37
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Seasontext: TComboBox
        Left = 56
        Top = 12
        Width = 73
        Height = 24
        ItemHeight = 16
        TabOrder = 1
        OnChange = seasonTextChange
      end
      object DeveloperText: TComboBox
        Left = 332
        Top = 11
        Width = 65
        Height = 24
        ItemHeight = 16
        TabOrder = 2
      end
      object StageText: TComboBox
        Left = 180
        Top = 11
        Width = 73
        Height = 24
        ItemHeight = 16
        TabOrder = 3
      end
      object SampleOrderType: TComboBox
        Left = 524
        Top = 11
        Width = 73
        Height = 24
        ItemHeight = 16
        TabOrder = 4
      end
      object Button2: TButton
        Left = 933
        Top = 49
        Width = 100
        Height = 37
        Caption = 'Analysis2Excel'
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 1044
        Top = 49
        Width = 117
        Height = 37
        Caption = 'Analysis1Excel'
        TabOrder = 6
        OnClick = Button3Click
      end
      object Info_chk: TCheckBox
        Left = 4
        Top = 40
        Width = 13
        Height = 17
        Caption = 'TB RecieveDate'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object dtp1: TDateTimePicker
        Left = 218
        Top = 39
        Width = 92
        Height = 24
        Date = 41675.431051550920000000
        Format = 'yyyy/MM/dd'
        Time = 41675.431051550920000000
        TabOrder = 8
      end
      object dtp2: TDateTimePicker
        Left = 325
        Top = 39
        Width = 100
        Height = 24
        Date = 41675.431356041660000000
        Format = 'yyyy/MM/dd'
        Time = 41675.431356041660000000
        TabOrder = 9
      end
      object dtp11: TDateTimePicker
        Left = 229
        Top = 39
        Width = 84
        Height = 24
        Date = 41675.000000000000000000
        Format = 'HH:mm:ss'
        Time = 41675.000000000000000000
        Kind = dtkTime
        TabOrder = 10
        Visible = False
      end
      object dtp22: TDateTimePicker
        Left = 332
        Top = 39
        Width = 84
        Height = 24
        Date = 41675.999305555550000000
        Format = 'HH:mm:ss'
        Time = 41675.999305555550000000
        Kind = dtkTime
        TabOrder = 11
        Visible = False
      end
      object CompleteCombo: TComboBox
        Left = 684
        Top = 11
        Width = 85
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        TabOrder = 12
        Items.Strings = (
          'All'
          'Finish'
          'UnFinish'
          'PullOver')
      end
      object YPDHEdit: TEdit
        Left = 608
        Top = 63
        Width = 121
        Height = 24
        TabOrder = 13
      end
      object TestNoEdit: TEdit
        Left = 608
        Top = 37
        Width = 121
        Height = 24
        TabOrder = 14
      end
      object Button4: TButton
        Left = 1048
        Top = 8
        Width = 113
        Height = 33
        Caption = 'PulloverScreen'
        TabOrder = 15
        OnClick = Button4Click
      end
      object ComboBox1: TComboBox
        Left = 1276
        Top = 11
        Width = 49
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 16
        Text = '15'
        Items.Strings = (
          '15'
          '20'
          '25'
          '30')
      end
      object Edit1: TEdit
        Left = 1280
        Top = 51
        Width = 41
        Height = 24
        TabOrder = 17
        Text = '10'
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 1408
        Top = 51
        Width = 33
        Height = 24
        TabOrder = 18
        Text = '9'
        OnKeyPress = Edit2KeyPress
      end
      object Edit3: TEdit
        Left = 1864
        Top = 64
        Width = 49
        Height = 24
        TabOrder = 19
        Visible = False
      end
      object SREdit: TEdit
        Left = 776
        Top = 63
        Width = 121
        Height = 24
        TabOrder = 20
      end
      object Materialsready: TCheckBox
        Left = 773
        Top = 10
        Width = 116
        Height = 17
        Caption = 'Materials ready'
        TabOrder = 21
      end
      object Stitchingready: TCheckBox
        Left = 773
        Top = 34
        Width = 116
        Height = 17
        Caption = 'Stitching ready'
        TabOrder = 22
      end
      object DevTypeEdit: TComboBox
        Left = 704
        Top = 89
        Width = 105
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        TabOrder = 23
        Items.Strings = (
          ''
          'Inline'
          'Great@Good'
          'QuickResponse'
          'Incubate'
          'SMU'
          'Innovation ')
      end
      object ComboBox2: TComboBox
        Left = 21
        Top = 38
        Width = 194
        Height = 24
        Style = csDropDownList
        DropDownCount = 9
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 24
        Text = 'TBreceiveDate'
        Items.Strings = (
          'TBreceiveDate'
          'MainMaterialsReady'
          'StitchingPhuLieuReady'
          'CuttingMaterialReceive'
          'CuttingFinish'
          'StitchingPhuLieuGet'
          'StitchingFinish'
          'AssembleFinish'
          'BaoBiFinish'
          'R2 Foxing Receive'
          'R3 O/S Receive')
      end
      object DBMemo1: TDBMemo
        Left = 128
        Top = 65
        Width = 385
        Height = 72
        DataField = 'memo2'
        DataSource = DS1
        ScrollBars = ssVertical
        TabOrder = 25
      end
      object ComboBox3: TComboBox
        Left = 845
        Top = 89
        Width = 137
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        TabOrder = 26
        Items.Strings = (
          ''
          'JNG'
          'CRMTO'
          'AMICO'
          'BAO HE'
          'KIET PHONG'
          'EMBROIDERY'
          'PRINTING'
          'LIMAO')
      end
      object Edit4: TEdit
        Left = 569
        Top = 115
        Width = 121
        Height = 24
        TabOrder = 27
      end
      object Edit5: TEdit
        Left = 751
        Top = 115
        Width = 121
        Height = 24
        TabOrder = 28
      end
      object edit6: TEdit
        Left = 930
        Top = 117
        Width = 33
        Height = 24
        TabOrder = 29
        Text = '6'
      end
      object CheckBox1: TCheckBox
        Left = 429
        Top = 46
        Width = 79
        Height = 13
        Caption = 'hide NB5'
        TabOrder = 30
        OnClick = CheckBox1Click
      end
      object GSDH: TComboBox
        Left = 563
        Top = 86
        Width = 56
        Height = 24
        ItemHeight = 16
        TabOrder = 31
        Items.Strings = (
          ''
          'CDC'
          'SKX')
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select ROW_NUMBER() OVER(ORDER BY userdate desc) AS ROWID,* from' +
        ' ('
      'select shoetest.Testno,'
      'isnull(bw01.qty,0) FinishedShoe,'
      'isnull(bw02.qty,0) HalfStitchingUpper,'
      'isnull(bw03.qty,0) StitchingUpper,'
      'isnull(bw04.qty,0) LastedUpper,'
      'isnull(bw05.qty,0) UpperComponent,'
      'isnull(bw06.qty,0) BottomComponent,'
      'isnull(bw07.qty,0) Sheet,'
      'isnull(bw08.qty,0) A4,'
      'isnull(bw09.qty,0) ColorSwatchBook,'
      'isnull(bw10.qty,0) CFMSample,'
      'isnull(bw11.qty,0) UpperAndBottomCE,'
      
        'shoetest.ypdh,shoetest.Article+'#39'     ('#39'+shoetest.Testno+'#39')'#39'  as ' +
        'Article,Stage,SeeStage,shoetest.FD,Season,Purpose,xieming,shoete' +
        'st.userdate,TBReceiveDate,complete,DATEDIFF (day,FirstMatOutDate' +
        ',isnull(complete,getdate()) ) days,'
      
        'cutdate,stitchingDate,kfxxzl.kflx Tech_Level,PreparationDate,DMa' +
        'tArriveDate,StitchingPhuFinishDate,FirstMatOutDate,ROW_NUMBER() ' +
        'over (Partition by shoetest.testno Order by kfxxzl.kflx) rn,'
      
        'shoetest.lamination,shoetest.Sublimation,shoetest.E_embroidery,s' +
        'hoetest.printing,shoetest.lamination_CRMTO, '
      
        'shoetest.S_material,shoetest.lamination_send,shoetest.lamination' +
        '_get,shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,' +
        'shoetest.LiMao_Get, '
      
        'shoetest.E_embroidery_send,shoetest.printing_send,shoetest.E_emb' +
        'roidery_get,shoetest.printing_get, '
      'shoetest.DMatArriveDateR3,shoetest.Assemblecomplete, '
      
        'shoetest.insole_get,shoetest.lace_get,shoetest.insole_send,shoet' +
        'est.lace_send,shoetest.kietphong,shoetest.memo2,shoetest.Amico,s' +
        'hoetest.kietphong_Send,shoetest.kietphong_Get,'
      
        'shoetest.Amico_Send,shoetest.Amico_Get,shoetest.LiMao,ShoeTestPl' +
        'an.groups,ShoeTestPlan.Serino,ShoeTestPlan.groups2,shoetest.SeeT' +
        'ype,shoetest.Laser,shoetest.Laser_Send,shoetest.Laser_Get,shoete' +
        'st.DAJU,shoetest.DAJU_Send,shoetest.DAJU_Get'
      'from shoetest'
      'left join YPZL on YPZL.YPDH = shoetest.YPDH'
      'LEFT JOIN ShoeTestPlan on ShoeTestPlan.TestNo=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39
      #9'group by parts,testno)bw01 on bw01.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '02'#39
      #9'group by parts,testno)bw02 on bw02.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '03'#39
      #9'group by parts,testno)bw03 on bw03.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '04'#39
      #9'group by parts,testno)bw04 on bw04.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '05'#39
      #9'group by parts,testno)bw05 on bw05.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '06'#39
      #9'group by parts,testno)bw06 on bw06.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '07'#39
      #9'group by parts,testno)bw07 on bw07.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '08'#39
      #9'group by parts,testno)bw08 on bw08.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '09'#39
      #9'group by parts,testno)bw09 on bw09.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '10'#39
      #9'group by parts,testno)bw10 on bw10.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '11'#39
      #9'group by parts,testno)bw11 on bw11.testno=shoetest.testno'
      
        #9'left join (select devcode,kflx from kfxxzl where xieming not li' +
        'ke '#39'%NULLIFY%'#39' group by devcode,kflx)kfxxzl  on kfxxzl.devcode=s' +
        'hoetest.article'
      'WHERE 1=1 and  (TBcancel='#39'0'#39' or TBcancel is null) '
      ' and shoetest.TBreceiveDate between'
      ' convert(smalldatetime,'#39'2021/10/28 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2021/11/27 23:59:00'#39')  '
      ' and shoetest.season = '#39'22h'#39' '
      ' and shoetest.stage = '#39'sms'#39' '
      ' group by   shoetest.Testno,'
      ' isnull(bw01.qty,0),  '
      ' isnull(bw02.qty,0) ,'
      ' isnull(bw03.qty,0) ,'
      ' isnull(bw04.qty,0) ,'
      ' isnull(bw05.qty,0) ,'
      ' isnull(bw06.qty,0) ,'
      ' isnull(bw07.qty,0) ,'
      ' isnull(bw08.qty,0) ,'
      ' isnull(bw09.qty,0) ,'
      ' isnull(bw10.qty,0) ,'
      ' isnull(bw11.qty,0) ,'
      
        ' shoetest.ypdh,shoetest.Article+'#39'     ('#39'+shoetest.Testno+'#39')'#39' ,St' +
        'age,SeeStage,shoetest.FD,Season,Purpose,xieming,shoetest.userdat' +
        'e,TBReceiveDate,complete,'
      
        ' DATEDIFF (day,FirstMatOutDate,isnull(complete,getdate()) ) ,cut' +
        'date,stitchingDate,kfxxzl.kflx,preparationDate,DMatArriveDate,St' +
        'itchingPhuFinishDate,FirstMatOutDate,'
      
        'shoetest.lamination,shoetest.Sublimation,shoetest.E_embroidery,s' +
        'hoetest.printing,shoetest.lamination_CRMTO, '
      
        'shoetest.S_material,shoetest.lamination_send,shoetest.lamination' +
        '_get,shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,' +
        'shoetest.LiMao_Get, '
      
        'shoetest.E_embroidery_send,shoetest.printing_send,shoetest.E_emb' +
        'roidery_get,shoetest.printing_get, '
      'shoetest.DMatArriveDateR3,shoetest.Assemblecomplete, '
      
        'shoetest.insole_get,shoetest.lace_get,shoetest.insole_send,shoet' +
        'est.lace_send,shoetest.kietphong,shoetest.memo2,shoetest.Amico,s' +
        'hoetest.kietphong_Send,shoetest.kietphong_Get,'
      
        'shoetest.Amico_Send,shoetest.Amico_Get,shoetest.LiMao,ShoeTestPl' +
        'an.groups,ShoeTestPlan.groups2,ShoeTestPlan.Serino,shoetest.SeeT' +
        'ype,shoetest.Laser,shoetest.Laser_Send,shoetest.Laser_Get,shoete' +
        'st.DAJU,shoetest.DAJU_Send,shoetest.DAJU_Get )main where 1=2'
      '')
    Left = 745
    Top = 401
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1groups: TStringField
      FieldName = 'groups'
      FixedChar = True
      Size = 6
    end
    object Query1groups2: TStringField
      FieldName = 'groups2'
      FixedChar = True
      Size = 6
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1Purpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object Query1TBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object Query1lamination: TBooleanField
      FieldName = 'lamination'
    end
    object Query1lamination_CRMTO: TBooleanField
      FieldName = 'lamination_CRMTO'
    end
    object Query1Amico: TBooleanField
      FieldName = 'Amico'
    end
    object Query1Sublimation: TBooleanField
      FieldName = 'Sublimation'
    end
    object Query1kietphong: TBooleanField
      FieldName = 'kietphong'
    end
    object Query1E_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object Query1printing: TBooleanField
      FieldName = 'printing'
    end
    object Query1LiMao: TBooleanField
      FieldName = 'LiMao'
    end
    object Query1preparationDate: TDateTimeField
      FieldName = 'preparationDate'
    end
    object Query1S_material: TDateTimeField
      FieldName = 'S_material'
    end
    object Query1insole_send: TDateTimeField
      FieldName = 'insole_send'
    end
    object Query1lace_send: TDateTimeField
      FieldName = 'lace_send'
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
    object Query1FirstMatOutDate: TDateTimeField
      FieldName = 'FirstMatOutDate'
    end
    object Query1E_embroidery_send: TDateTimeField
      FieldName = 'E_embroidery_send'
    end
    object Query1printing_send: TDateTimeField
      FieldName = 'printing_send'
    end
    object Query1E_embroidery_get: TDateTimeField
      FieldName = 'E_embroidery_get'
    end
    object Query1printing_get: TDateTimeField
      FieldName = 'printing_get'
    end
    object Query1cutdate: TDateTimeField
      FieldName = 'cutdate'
    end
    object Query1StitchingPhuFinishDate: TDateTimeField
      FieldName = 'StitchingPhuFinishDate'
    end
    object Query1stitchingDate: TDateTimeField
      FieldName = 'stitchingDate'
    end
    object Query1DMatArriveDate: TDateTimeField
      FieldName = 'DMatArriveDate'
    end
    object Query1DMatArriveDateR3: TDateTimeField
      FieldName = 'DMatArriveDateR3'
    end
    object Query1insole_get: TDateTimeField
      FieldName = 'insole_get'
    end
    object Query1Assemblecomplete: TDateTimeField
      FieldName = 'Assemblecomplete'
    end
    object Query1lace_get: TDateTimeField
      FieldName = 'lace_get'
    end
    object Query1complete: TDateTimeField
      FieldName = 'complete'
    end
    object Query1days: TIntegerField
      FieldName = 'days'
    end
    object Query1FinishedShoe: TFloatField
      FieldName = 'FinishedShoe'
    end
    object Query1HalfStitchingUpper: TFloatField
      FieldName = 'HalfStitchingUpper'
    end
    object Query1StitchingUpper: TFloatField
      FieldName = 'StitchingUpper'
    end
    object Query1LastedUpper: TFloatField
      FieldName = 'LastedUpper'
    end
    object Query1UpperComponent: TFloatField
      FieldName = 'UpperComponent'
    end
    object Query1BottomComponent: TFloatField
      FieldName = 'BottomComponent'
    end
    object Query1Sheet: TFloatField
      FieldName = 'Sheet'
    end
    object Query1A4: TFloatField
      FieldName = 'A4'
    end
    object Query1ColorSwatchBook: TFloatField
      FieldName = 'ColorSwatchBook'
    end
    object Query1CFMSample: TFloatField
      FieldName = 'CFMSample'
    end
    object Query1UpperAndBottomCE: TFloatField
      FieldName = 'UpperAndBottomCE'
    end
    object Query1Tech_Level: TStringField
      FieldName = 'Tech_Level'
      FixedChar = True
      Size = 3
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1memo2: TMemoField
      FieldName = 'memo2'
      BlobType = ftMemo
    end
    object Query1SeeStage: TStringField
      FieldName = 'SeeStage'
      FixedChar = True
      Size = 4
    end
    object Query1ROWID: TFloatField
      FieldName = 'ROWID'
    end
    object Query1SeeType: TStringField
      FieldName = 'SeeType'
      FixedChar = True
      Size = 3
    end
    object Query1Laser: TBooleanField
      FieldName = 'Laser'
    end
    object Query1Laser_Send: TDateTimeField
      FieldName = 'Laser_Send'
    end
    object Query1Laser_Get: TDateTimeField
      FieldName = 'Laser_Get'
    end
    object Query1rn: TFloatField
      FieldName = 'rn'
    end
    object Query1DAJU: TBooleanField
      FieldName = 'DAJU'
    end
    object Query1DAJU_Send: TDateTimeField
      FieldName = 'DAJU_Send'
    end
    object Query1DAJU_Get: TDateTimeField
      FieldName = 'DAJU_Get'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 753
    Top = 441
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 705
    Top = 409
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 804
    Top = 441
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select season,sum(FinishedShoe) FinishedShoe, '
      'sum(HalfStitchingUpper) HalfStitchingUpper, '
      'sum(StitchingUpper) StitchingUpper, '
      'sum(LastedUpper) LastedUpper, '
      'sum(UpperComponent) UpperComponent, '
      'sum(BottomComponent) BottomComponent, '
      'sum(Sheet) Sheet, '
      'sum(A4) A4, '
      'sum(ColorSwatchBook) ColorSwatchBook, '
      'sum(CFMSample) CFMSample, '
      'sum(UpperAndBottomCE) UpperAndBottomCE'
      'from ('
      'select shoetest.Testno,'
      'isnull(bw01.qty,0) FinishedShoe,'
      'isnull(bw02.qty,0) HalfStitchingUpper,'
      'isnull(bw03.qty,0) StitchingUpper,'
      'isnull(bw04.qty,0) LastedUpper,'
      'isnull(bw05.qty,0) UpperComponent,'
      'isnull(bw06.qty,0) BottomComponent,'
      'isnull(bw07.qty,0) Sheet,'
      'isnull(bw08.qty,0) A4,'
      'isnull(bw09.qty,0) ColorSwatchBook,'
      'isnull(bw10.qty,0) CFMSample,'
      'isnull(bw11.qty,0) UpperAndBottomCE,'
      
        'ypdh,Article,Stage,FD,Season,Purpose,xieming,userdate,TBReceiveD' +
        'ate,complete,DATEDIFF (day,userdate,isnull(complete,getdate()) )' +
        ' days from shoetest'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39
      #9'group by parts,testno)bw01 on bw01.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '02'#39
      #9'group by parts,testno)bw02 on bw02.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '03'#39
      #9'group by parts,testno)bw03 on bw03.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '04'#39
      #9'group by parts,testno)bw04 on bw04.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '05'#39
      #9'group by parts,testno)bw05 on bw05.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '06'#39
      #9'group by parts,testno)bw06 on bw06.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '07'#39
      #9'group by parts,testno)bw07 on bw07.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '08'#39
      #9'group by parts,testno)bw08 on bw08.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '09'#39
      #9'group by parts,testno)bw09 on bw09.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '10'#39
      #9'group by parts,testno)bw10 on bw10.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '11'#39
      #9'group by parts,testno)bw11 on bw11.testno=shoetest.testno'
      'WHERE 1=1 and len(season)='#39'3'#39
      ')main'
      ' group by season'
      ' order by season desc'
      ' ')
    Left = 804
    Top = 401
    object Query2season: TStringField
      FieldName = 'season'
      FixedChar = True
      Size = 4
    end
    object Query2FinishedShoe: TFloatField
      FieldName = 'FinishedShoe'
    end
    object Query2HalfStitchingUpper: TFloatField
      FieldName = 'HalfStitchingUpper'
    end
    object Query2StitchingUpper: TFloatField
      FieldName = 'StitchingUpper'
    end
    object Query2LastedUpper: TFloatField
      FieldName = 'LastedUpper'
    end
    object Query2UpperComponent: TFloatField
      FieldName = 'UpperComponent'
    end
    object Query2BottomComponent: TFloatField
      FieldName = 'BottomComponent'
    end
    object Query2Sheet: TFloatField
      FieldName = 'Sheet'
    end
    object Query2A4: TFloatField
      FieldName = 'A4'
    end
    object Query2ColorSwatchBook: TFloatField
      FieldName = 'ColorSwatchBook'
    end
    object Query2CFMSample: TFloatField
      FieldName = 'CFMSample'
    end
    object Query2UpperAndBottomCE: TFloatField
      FieldName = 'UpperAndBottomCE'
    end
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      ''
      'select shoetest.Testno,'
      'isnull(md01.qty,0) Shipping,'
      'isnull(md01.qty,0) Testing_Bonding_Flexing,'
      'isnull(md03.qty,0) FitTest,'
      'isnull(md04.qty,0) WearTest,'
      'isnull(md05.qty,0) Keeping,'
      'isnull(md06.qty,0) SocialSample,'
      'isnull(md07.qty,0) TechTeam,'
      'isnull(md08.qty,0) TW_BY,'
      'isnull(md09.qty,0) QC,'
      'isnull(md10.qty,0) IE,'
      'isnull(md11.qty,0) Costing,'
      'isnull(md12.qty,0) Remake_SampleRoomQualityIssued,'
      'isnull(md13.qty,0) Testing_G105,'
      'isnull(md14.qty,0) Test,'
      'isnull(md15.qty,0) Trial,'
      
        'ypdh,Article,Stage,SeeStage,FD,Season,Purpose,xieming,userdate,c' +
        'omplete,DATEDIFF (day,userdate,isnull(complete,getdate()) ) days' +
        ' from shoetest'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD01'#39
      #9'group by parts,testno)MD01 on MD01.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD02'#39
      #9'group by parts,testno)MD02 on MD02.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD03'#39
      #9'group by parts,testno)MD03 on MD03.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD04'#39
      #9'group by parts,testno)MD04 on MD04.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD05'#39
      #9'group by parts,testno)MD05 on MD05.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD06'#39
      #9'group by parts,testno)MD06 on MD06.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD07'#39
      #9'group by parts,testno)MD07 on MD07.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD08'#39
      #9'group by parts,testno)MD08 on MD08.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD09'#39
      #9'group by parts,testno)MD09 on MD09.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD10'#39
      #9'group by parts,testno)MD10 on MD10.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD11'#39
      #9'group by parts,testno)MD11 on MD11.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD12'#39
      #9'group by parts,testno)MD12 on MD12.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD13'#39
      #9'group by parts,testno)MD13 on MD13.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD14'#39
      #9'group by parts,testno)MD14 on MD14.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39' and depname='#39'MD15'#39
      #9'group by parts,testno)MD15 on MD15.testno=shoetest.testno'
      'WHERE 1=2'
      ' and shoetest.season = '#39'20S'#39' '
      '')
    Left = 861
    Top = 402
    object Query4Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query4Shipping: TFloatField
      FieldName = 'Shipping'
    end
    object Query4Testing_Bonding_Flexing: TFloatField
      FieldName = 'Testing_Bonding_Flexing'
    end
    object Query4FitTest: TFloatField
      FieldName = 'FitTest'
    end
    object Query4WearTest: TFloatField
      FieldName = 'WearTest'
    end
    object Query4Keeping: TFloatField
      FieldName = 'Keeping'
    end
    object Query4SocialSample: TFloatField
      FieldName = 'SocialSample'
    end
    object Query4TechTeam: TFloatField
      FieldName = 'TechTeam'
    end
    object Query4TW_BY: TFloatField
      FieldName = 'TW_BY'
    end
    object Query4QC: TFloatField
      FieldName = 'QC'
    end
    object Query4IE: TFloatField
      FieldName = 'IE'
    end
    object Query4Costing: TFloatField
      FieldName = 'Costing'
    end
    object Query4Remake_SampleRoomQualityIssued: TFloatField
      FieldName = 'Remake_SampleRoomQualityIssued'
    end
    object Query4Testing_G105: TFloatField
      FieldName = 'Testing_G105'
    end
    object Query4ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query4Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query4FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query4Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object Query4Purpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object Query4xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Query4userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query4complete: TDateTimeField
      FieldName = 'complete'
    end
    object Query4days: TIntegerField
      FieldName = 'days'
    end
    object Query4Test: TFloatField
      FieldName = 'Test'
    end
    object Query4SeeStage: TStringField
      FieldName = 'SeeStage'
      FixedChar = True
      Size = 4
    end
    object Query4Trial: TFloatField
      FieldName = 'Trial'
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 861
    Top = 450
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = Timer1Timer
    Left = 141
    Top = 346
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = Timer2Timer
    Left = 221
    Top = 458
  end
  object Timer3: TTimer
    Interval = 2000
    OnTimer = Timer3Timer
    Left = 165
    Top = 458
  end
end
