object StitchingschedulemainPC: TStitchingschedulemainPC
  Left = 270
  Top = 73
  Width = 1612
  Height = 912
  Caption = 'StitchingschedulemainPC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 1108
    Top = 14
    Width = 4
    Height = 859
    Align = alRight
    Color = clBlack
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 1112
    Top = 14
    Width = 484
    Height = 859
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 0
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 300
      Width = 482
      Height = 188
      Align = alTop
      Color = clBlack
      DataSource = DS2
      EvenRowColor = clBlack
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clBlack
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWhite
      FooterFont.Height = -12
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'StitchingPlan'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Ngay|Date|'#26085#26399
          Width = 114
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'PlanQty'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Ke Hoach|Plan|'#35336#30059
          Width = 118
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'OKQty'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Hoan Thanh|Finish|'#23436#25104
          Width = 117
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Complete'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = '%|Complete|'#36948#25104#29575
          Width = 115
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 514
      Width = 482
      Height = 344
      Align = alClient
      Color = clBlack
      DataSource = DS3
      EvenRowColor = clBlack
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clBlack
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWhite
      FooterFont.Height = -12
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Date'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Ngay|Date|'#26085#26399
          Width = 90
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Sample'
          Footer.Alignment = taCenter
          Footer.FieldName = 'Sample'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Mau|Sample|'#27171#21697
          Width = 81
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'CBY'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 75
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'MassProduction'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Hien truong|Mass Production|'#37327#29986#20195#24037
          Width = 130
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Total'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWhite
          Footer.Font.Height = -16
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Tong cong|Total|'#32317#25976
          Width = 90
        end>
    end
    object Panel8: TPanel
      Left = 1
      Top = 274
      Width = 482
      Height = 26
      Align = alTop
      Caption = 'Daily Completion Rate (3 days) / '#26085#36948#25104#29575' (3'#26085#20839')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 1
      Top = 488
      Width = 482
      Height = 26
      Align = alTop
      Caption = 'Daily Output (3 days) / '#26085#29986#33021' (3'#26085#20839')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 482
      Height = 273
      Align = alTop
      Caption = 'CBY '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 480
        Height = 271
        Align = alClient
        Caption = 'CBY '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 478
          Height = 269
          Align = alClient
          Brush.Color = clMenuHighlight
        end
        object Panel11: TPanel
          Left = 13
          Top = 18
          Width = 586
          Height = 243
          TabOrder = 0
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 53
            Width = 584
            Height = 189
            Align = alClient
            Color = clBlack
            DataSource = DS6
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            FooterColor = clWindowText
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindow
            FooterFont.Height = -19
            FooterFont.Name = 'Arial'
            FooterFont.Style = []
            HorzScrollBar.Visible = False
            OddRowColor = clBlack
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbNeverShowEh
            Columns = <
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'ShipDate'
                Footers = <>
                Title.Caption = 'ShipDate|'#20986#36008#26085
                Width = 86
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Pairs'
                Footer.Alignment = taCenter
                Footer.FieldName = 'Pairs'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clYellow
                Footer.Font.Height = -19
                Footer.Font.Name = 'Arial'
                Footer.Font.Style = []
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Order Prs|'#35330#21934#38617#25976
                Width = 79
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'CuttingOK'
                Footers = <>
                Title.Caption = 'Finished/'#24050#23436#25104'|Cutting|'#35009#26039
                Width = 67
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'StitchingOK'
                Footers = <>
                Title.Caption = 'Finished/'#24050#23436#25104'|Stitching|'#37341#36554
                Width = 67
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'AssembleOK'
                Footers = <>
                Title.Caption = 'Finished/'#24050#23436#25104'|Assembling|'#25104#22411
                Width = 84
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'PackingOK'
                Footer.FieldName = 'PackingOK'
                Footer.Font.Charset = DEFAULT_CHARSET
                Footer.Font.Color = clYellow
                Footer.Font.Height = -19
                Footer.Font.Name = 'Arial'
                Footer.Font.Style = []
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Finished/'#24050#23436#25104'|Packing|'#21253#35037
                Width = 66
              end>
          end
          object Panel12: TPanel
            Left = 1
            Top = 27
            Width = 584
            Height = 26
            Align = alTop
            Caption = 'CBY '#21363#23559#20986#36008' (3'#26085#20839')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Panel13: TPanel
            Left = 1
            Top = 1
            Width = 584
            Height = 26
            Align = alTop
            Caption = 'CBY Shipdate Coming Soon (3Days)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 14
    Width = 1108
    Height = 859
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1106
      Height = 292
      Align = alTop
      TabOrder = 0
      Visible = False
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1104
        Height = 26
        Align = alTop
        Caption = 'Delay Risk List / '#24310#35492#36890#22577#26126#32048
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Ariel'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 27
        Width = 1104
        Height = 264
        Align = alClient
        Color = clBlack
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindowText
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindow
        FooterFont.Height = -19
        FooterFont.Name = 'Arial'
        FooterFont.Style = []
        OddRowColor = clBlack
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'StitchingPlan'
            Footers = <>
            Title.Caption = 'Ke hoach May|StitchingPlan|'#37341#36554#35336#30059#23436#25104#26085
            Width = 145
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Serino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            Footer.Alignment = taCenter
            Footer.FieldName = 'Serino'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clYellow
            Footer.Font.Height = -19
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'So thu tu|Serino|'#24207#34399
            Width = 61
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Groups'
            Footers = <>
            Title.Caption = 'So thu tu|Groups|'#20998#32068
            Width = 75
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Title.Caption = 'TB|TestNo|'#36890#22577
            Width = 97
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PlanQty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            Footer.Alignment = taCenter
            Footer.FieldName = 'PlanQty'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clYellow
            Footer.Font.Height = -19
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'So doi|Pairs|'#38617#25976
            Width = 58
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PartE'
            Footers = <>
            MaxWidth = 700
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Department'
            Width = 129
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ReasonE'
            Footers = <>
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Reason'
            Width = 221
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ReasonV'
            Footers = <>
            Title.Caption = 'Why Delay/'#28858#20309#24310#35492'|Ly do'
            Width = 196
          end>
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 319
      Width = 1106
      Height = 539
      Align = alClient
      Color = clBlack
      DataSource = DS1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      FooterColor = clBlack
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWhite
      FooterFont.Height = -19
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghClearSelection, dghDialogFind]
      ParentFont = False
      RowHeight = 40
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Serino'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'So thu tu|Serino|'#24207#34399
          Width = 60
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Groups'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'So thu tu|Groups|'#20998#32068
          Width = 68
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'TestNo'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'TB|TestNo|'#36890#22577
          Width = 97
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'PlanQty'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'So doi|Pairs|'#38617#25976
          Width = 55
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'SR'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Width = 182
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Stage'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Giai doan|Stage|'#38542#27573
          Width = 82
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'CuttingOK'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Chat OK|Cutting OK|'#35009#26039#23436#25104#26085
          Width = 142
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'SMatOK'
          Footers = <>
          Title.Caption = 'Kho Chuan Bi Vat Tu OK|Warehouse MTL OK|'#20489#24235#20633#26009#23436#25104
          Width = 182
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'StitchingPlan'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Ke hoach May|StitchingPlan|'#37341#36554#35336#30059#23436#25104#26085
          Width = 122
        end>
    end
    object Panel7: TPanel
      Left = 1
      Top = 293
      Width = 1106
      Height = 26
      Align = alTop
      Caption = 'Unfinish Task (Today+Delay) / '#26410#23436#25104#20219#21209' ('#26412#26085'+'#24310#35492')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1596
    Height = 14
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 323
      Top = 24
      Width = 295
      Height = 47
      Caption = 'Digital Signage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 23
      Top = 24
      Width = 302
      Height = 47
      Caption = 'Stitching Team '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 185
      Top = 81
      Width = 129
      Height = 47
      Caption = #37341#36554#32068
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 323
      Top = 81
      Width = 172
      Height = 47
      Caption = #25976#20301#30475#29256
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -41
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 683
      Top = 14
      Width = 163
      Height = 26
      DataField = 'date'
      DataSource = DS5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 878
      Top = 13
      Width = 142
      Height = 32
      Caption = 'Done/Total'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape13: TShape
      Left = 653
      Top = 46
      Width = 427
      Height = 91
      Brush.Color = clSkyBlue
      Shape = stRoundRect
    end
    object Label7: TLabel
      Left = 699
      Top = 56
      Width = 76
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Tasks'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 702
      Top = 91
      Width = 85
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = 'risk'
      DataSource = DS5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 834
      Top = 56
      Width = 67
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Pairs'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 813
      Top = 91
      Width = 143
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = 'pairs'
      DataSource = DS5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 966
      Top = 56
      Width = 59
      Height = 32
      BiDiMode = bdRightToLeft
      Caption = 'Rate'
      Color = clSkyBlue
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 962
      Top = 91
      Width = 111
      Height = 40
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataField = '_percent'
      DataSource = DS5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 168
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Itkhua@!erp;Persist Security Info=T' +
      'rue;User ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 168
  end
  object Query1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.CuttingOK,main.SMatOK,main.SMatGet, main.StitchingPlan, ' +
        'SQplan.Qty AS PlanQty FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_mater' +
        'ial SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.Sti' +
        'tchingDate_first AS StitchingPlan, ShoeTest.StitchingDate AS Sti' +
        'tchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date(), 111) AND ShoeTest.StitchingDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts'
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitchi' +
        'ng Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper A' +
        'nd Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'order by   StitchingPlan,groups,serino')
    Left = 48
    Top = 200
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      Size = 10
    end
    object Query1Groups: TStringField
      FieldName = 'Groups'
      Size = 6
    end
    object Query1Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query1SR: TStringField
      FieldName = 'SR'
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      Size = 15
    end
    object Query1CuttingOK: TDateTimeField
      FieldName = 'CuttingOK'
    end
    object Query1SMatOK: TDateTimeField
      FieldName = 'SMatOK'
    end
    object Query1SMatGet: TDateTimeField
      FieldName = 'SMatGet'
    end
    object Query1StitchingPlan: TDateTimeField
      FieldName = 'StitchingPlan'
    end
    object Query1PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
  end
  object Timer1: TTimer
    Interval = 15000
    OnTimer = Timer1Timer
    Left = 16
    Top = 200
  end
  object Query2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from ('
      
        'SELECT top 3 CONVERT(varchar, StitchingPlan,111) AS StitchingPla' +
        'n, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varch' +
        'ar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))' +
        '+'#39'%'#39' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 11' +
        '1) AS StitchingPlan,'
      
        '  case when CONVERT(varchar(8), StitchingOK, 108) = '#39'00:00:00'#39' t' +
        'hen 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varcha' +
        'r,main.StitchingOK, 111) AS StitchingOK,'
      
        '  case when StitchingOK is null then 0 when CONVERT(varchar(8), ' +
        'StitchingOK, 108) = '#39'00:00:00'#39' then 0 when convert(varchar, Stit' +
        'chingPlan, 111) <> convert(varchar, StitchingOK, 111) then 0 els' +
        'e isnull(SQplan.Qty,0) end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDat' +
        'e StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate_first, 111) between co' +
        'nvert(varchar, getdate()-7, 111) and convert(varchar, getdate(),' +
        ' 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS SQplan on SQplan.TestNo=main.testno'
      ') AS main2 '
      'group by StitchingPlan order by StitchingPlan desc)mainA'
      'union'
      
        'SELECT '#39' Total '#39' StitchingPlan, SUM(PlanQty) AS PlanQty,SUM(OKqt' +
        'y) AS OKQty, '#39#39' AS Complete FROM ('
      
        ' SELECT top 3 CONVERT(varchar, StitchingPlan,111) AS StitchingPl' +
        'an, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varc' +
        'har,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2))' +
        ')+'#39'%'#39' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 11' +
        '1) AS StitchingPlan,'
      
        '  case when CONVERT(varchar(8), StitchingOK, 108) = '#39'00:00:00'#39' t' +
        'hen 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varcha' +
        'r,main.StitchingOK, 111) AS StitchingOK,'
      
        '  case when StitchingOK is null then 0 when CONVERT(varchar(8), ' +
        'StitchingOK, 108) = '#39'00:00:00'#39' then 0 when convert(varchar, Stit' +
        'chingPlan, 111) <> convert(varchar, StitchingOK, 111) then 0 els' +
        'e isnull(SQplan.Qty,0) end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDat' +
        'e StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate_first, 111) between co' +
        'nvert(varchar, getdate()-7, 111) and convert(varchar, getdate(),' +
        ' 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      
        '    group by shoetest2.testno) AS SQplan on SQplan.TestNo=main.t' +
        'estno'
      '  )AS main2 group by StitchingPlan order by StitchingPlan desc'
      ') AS main3 '
      'order by StitchingPlan desc')
    Left = 144
    Top = 200
    object Query2StitchingPlan: TStringField
      FieldName = 'StitchingPlan'
      ReadOnly = True
      Size = 30
    end
    object Query2PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query2OKQty: TBCDField
      FieldName = 'OKQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query2Complete: TStringField
      FieldName = 'Complete'
      ReadOnly = True
      Size = 30
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 144
    Top = 168
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 240
    Top = 168
  end
  object Query3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from ('
      
        'select top 3 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39') '
      
        'when isnull(CONVERT(varchar,CBYQty.Date),'#39#39')<>'#39#39' then isnull(CON' +
        'VERT(varchar,CBYQty.Date),'#39#39')'
      
        'else isnull(CONVERT(varchar,MassProductionQty.Date),'#39#39')  end Dat' +
        'e,'
      
        'isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProdu' +
        'ctionQty,0) MassProduction,'
      
        'isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,' +
        '0) Total   from ('
      
        'SELECT CONVERT(VARCHAR, StitchingOK ,111) AS date, SUM(sampleqty' +
        ') AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article,  convert(varchar,main.StitchingOK, 111) AS StitchingOK' +
        ', isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'StitchingDate StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) ' +
        'and CONVERT(varchar(8), StitchingDate, 108)  <> '#39'00:00:00'#39
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2 '
      'group by StitchingOK)sample'
      'full outer join ( '
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'S'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050201'#39' AND GXLB = '#39'S'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty o' +
        'n MassProductionQty.Date=sample.date'
      '    )main  group by Date order by date desc)mainA'
      'union'
      
        'select '#39' Total '#39' Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassPr' +
        'oduction) MassProduction,SUM(TOTal) Total from ('
      
        'select top 3 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39') '
      
        'when isnull(CONVERT(varchar,CBYQty.Date),'#39#39')<>'#39#39' then isnull(CON' +
        'VERT(varchar,CBYQty.Date),'#39#39')'
      
        'else isnull(CONVERT(varchar,MassProductionQty.Date),'#39#39')  end Dat' +
        'e,'
      
        'isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProdu' +
        'ctionQty,0) MassProduction,'
      
        'isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,' +
        '0) Total   from ('
      
        'SELECT CONVERT(VARCHAR, StitchingOK ,111) AS date, SUM(sampleqty' +
        ') AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article,  convert(varchar,main.StitchingOK, 111) AS StitchingOK' +
        ', isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'StitchingDate StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) ' +
        'and CONVERT(varchar(8), StitchingDate, 108)  <> '#39'00:00:00'#39
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2 '
      'group by StitchingOK)sample'
      'full outer join ( '
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'S'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050201'#39' AND GXLB = '#39'S'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty o' +
        'n MassProductionQty.Date=sample.date'
      '    )main  group by Date order by date desc) AS main3 '
      '    order by Date desc')
    Left = 240
    Top = 200
    object Query3Date: TStringField
      FieldName = 'Date'
      ReadOnly = True
      Size = 30
    end
    object Query3Sample: TBCDField
      FieldName = 'Sample'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query3CBY: TIntegerField
      FieldName = 'CBY'
      ReadOnly = True
    end
    object Query3MassProduction: TIntegerField
      FieldName = 'MassProduction'
      ReadOnly = True
    end
    object Query3Total: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
  end
  object Query5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select CONVERT(VARCHAR, GETDATE(), 107) date,convert(VARCHAR,COU' +
        'NT(StitchingOK)) +'#39'/'#39'+convert(VARCHAR,COUNT(testno)) risk,'
      
        'convert(VARCHAR,SUM(OKQty)) +'#39'/'#39'+convert(VARCHAR,SUM(PlanQty)) p' +
        'airs, CONVERT(VARCHAR,cast(ROUND(SUM(OKQty)/SUM(PlanQty)*100,2) ' +
        'as numeric(5,2) ))+'#39'%'#39' as _percent from ('
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.StitchingPlan, SQplan.Qty AS PlanQty,StitchingOK'
      
        ', case when StitchingOK is null then  0 else isnull(SQplan.Qty,0' +
        ') end OKQty FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate_first AS StitchingPlan,' +
        ' ShoeTest.StitchingDate AS StitchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date(), 111) and (ShoeTest.StitchingDate_first>= CONVERT(VARCHAR' +
        ', GetDate(), 111) or ShoeTest.StitchingDate is null) '
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      ')main2'
      '')
    Left = 328
    Top = 208
    object Query5date: TStringField
      FieldName = 'date'
      ReadOnly = True
      Size = 30
    end
    object Query5risk: TStringField
      FieldName = 'risk'
      ReadOnly = True
      Size = 61
    end
    object Query5pairs: TStringField
      FieldName = 'pairs'
      ReadOnly = True
      Size = 61
    end
    object Query5_percent: TStringField
      FieldName = '_percent'
      ReadOnly = True
      Size = 31
    end
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 328
    Top = 168
  end
  object Query4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, SQplan.Qty AS Plan' +
        'Qty,ShoetestDelay.PartE,ShoetestDelay.PartC,ReasonE,ReasonC,Reas' +
        'onV,StitchingPlan FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate_first AS StitchingPlan,' +
        ' ShoeTest.StitchingDate AS StitchingOK FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, Get' +
        'Date()-1, 111) AND ShoeTest.StitchingDate IS NULL'
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN('
      
        '  SELECT TestNo,DP,DR,GXLB,Part.VWSM PartV,Part.YWSM PartE,Part.' +
        'ZWSM PartC,Reason.ZWSM ReasonC,Reason.YWSM ReasonE,Reason.VWSM R' +
        'easonV from ShoetestDelay'
      '  LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP '
      
        '  LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDelay' +
        '.DR '
      '  where ShoetestDelay.GXLB='#39'S'#39
      ')ShoetestDelay on ShoetestDelay.TestNo=main.TestNo'
      'order by   StitchingPlan,groups,serino'
      '')
    Left = 288
    Top = 200
    object Query4TestNo: TStringField
      FieldName = 'TestNo'
      Size = 10
    end
    object Query4Groups: TStringField
      FieldName = 'Groups'
      Size = 6
    end
    object Query4Serino: TIntegerField
      FieldName = 'Serino'
    end
    object Query4PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query4PartE: TStringField
      FieldName = 'PartE'
      Size = 50
    end
    object Query4PartC: TStringField
      FieldName = 'PartC'
      Size = 50
    end
    object Query4ReasonE: TStringField
      FieldName = 'ReasonE'
      Size = 50
    end
    object Query4ReasonC: TStringField
      FieldName = 'ReasonC'
      Size = 50
    end
    object Query4ReasonV: TStringField
      FieldName = 'ReasonV'
      Size = 50
    end
    object Query4StitchingPlan: TDateTimeField
      FieldName = 'StitchingPlan'
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 288
    Top = 168
  end
  object DS6: TDataSource
    DataSet = Query6
    Left = 368
    Top = 176
  end
  object Query6: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select CONVERT(VARCHAR,initialEstimatedShipDate,111) ShipDate,SU' +
        'M(total) Pairs,SUM(CuttingOK) CuttingOK'
      
        ',SUM(StitchingOK) StitchingOK,SUM(AssembleOK) AssembleOK,SUM(Pac' +
        'kingOK) PackingOK'
      ' from('
      'select cby_orders.workOrderId,total,cancel,'
      
        'CASE WHEN ScanC.ScanDate is null then 0 else total end CuttingOK' +
        ','
      
        'CASE WHEN ScanS.ScanDate is null then 0 else total end Stitching' +
        'OK,'
      
        'CASE WHEN ScanA.ScanDate is null then 0 else total end AssembleO' +
        'K,'
      
        'CASE WHEN ScanI.ScanDate is null then 0 else total end PackingOK' +
        ','
      'initialEstimatedShipDate,'
      'requiredShipDate,'
      'ShipDate from CBY_Orders'
      
        'LEFT JOIN CBY_Orders_Scan AS ScanC ON ScanC.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanC.GXLB = '#39'C'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanS ON ScanS.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanS.GXLB = '#39'S'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanA ON ScanA.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanA.GXLB = '#39'A'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        '/*where (Cancel <>'#39'1'#39' or Cancel is null) and initialEstimatedShi' +
        'pDate between CONVERT(VARCHAR, GetDate()+1, 111)  and CONVERT(VA' +
        'RCHAR, GetDate()+5, 111)*/'
      
        'where (Cancel <>'#39'1'#39' or Cancel is null) and initialEstimatedShipD' +
        'ate in (select distinct top 3 initialEstimatedShipDate from CBY_' +
        'Orders where initialEstimatedShipDate > GETDATE() )'
      ')main group by CONVERT(VARCHAR,initialEstimatedShipDate,111)'
      'union'
      
        'select '#39'Total'#39' ShipDate, SUM(pairs) Pairs,SUM(cuttingOK) Cutting' +
        'OK,SUM(StitchingOK) StitchingOK,SUM(AssembleOK) AssembleOK,SUM(P' +
        'ackingOK) PackingOK from('
      
        'select CONVERT(VARCHAR,initialEstimatedShipDate,111) ShipDate,SU' +
        'M(total) Pairs,SUM(CuttingOK) CuttingOK'
      
        ',SUM(StitchingOK) StitchingOK,SUM(AssembleOK) AssembleOK,SUM(Pac' +
        'kingOK) PackingOK'
      ' from('
      'select cby_orders.workOrderId,total,cancel,'
      
        'CASE WHEN ScanC.ScanDate is null then 0 else total end CuttingOK' +
        ','
      
        'CASE WHEN ScanS.ScanDate is null then 0 else total end Stitching' +
        'OK,'
      
        'CASE WHEN ScanA.ScanDate is null then 0 else total end AssembleO' +
        'K,'
      
        'CASE WHEN ScanI.ScanDate is null then 0 else total end PackingOK' +
        ','
      'initialEstimatedShipDate,'
      'requiredShipDate,'
      'ShipDate from CBY_Orders'
      
        'LEFT JOIN CBY_Orders_Scan AS ScanC ON ScanC.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanC.GXLB = '#39'C'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanS ON ScanS.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanS.GXLB = '#39'S'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanA ON ScanA.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanA.GXLB = '#39'A'#39
      
        'LEFT JOIN CBY_Orders_Scan AS ScanI ON ScanI.workOrderId = CBY_Or' +
        'ders.workOrderId AND ScanI.GXLB = '#39'I'#39
      
        '/*where (Cancel <>'#39'1'#39' or Cancel is null) and initialEstimatedShi' +
        'pDate between CONVERT(VARCHAR, GetDate()+1, 111)  and CONVERT(VA' +
        'RCHAR, GetDate()+5, 111)*/'
      
        'where (Cancel <>'#39'1'#39' or Cancel is null) and initialEstimatedShipD' +
        'ate in (select distinct top 3 initialEstimatedShipDate from CBY_' +
        'Orders where initialEstimatedShipDate > GETDATE() )'
      
        ')main group by CONVERT(VARCHAR,initialEstimatedShipDate,111))mai' +
        'n2'
      ''
      '')
    Left = 368
    Top = 208
    object Query6ShipDate: TStringField
      FieldName = 'ShipDate'
      ReadOnly = True
      Size = 30
    end
    object Query6Pairs: TIntegerField
      FieldName = 'Pairs'
      ReadOnly = True
    end
    object Query6CuttingOK: TIntegerField
      FieldName = 'CuttingOK'
      ReadOnly = True
    end
    object Query6StitchingOK: TIntegerField
      FieldName = 'StitchingOK'
      ReadOnly = True
    end
    object Query6AssembleOK: TIntegerField
      FieldName = 'AssembleOK'
      ReadOnly = True
    end
    object Query6PackingOK: TIntegerField
      FieldName = 'PackingOK'
      ReadOnly = True
    end
  end
end
