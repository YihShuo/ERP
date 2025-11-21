object CutScheduleMainPC: TCutScheduleMainPC
  Left = 309
  Top = 63
  Width = 1622
  Height = 977
  Caption = 'CutScheduleMainPC'
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
    Left = 1603
    Top = 14
    Height = 924
    Align = alRight
    Color = clBlack
    ParentColor = False
  end
  object Label3: TLabel
    Left = 16
    Top = 10
    Width = 741
    Height = 37
    Caption = 'Cutting Schedule unfinished task (Sample Only) '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1606
    Height = 14
    Align = alTop
    TabOrder = 0
    Visible = False
    object Shape13: TShape
      Left = 653
      Top = 46
      Width = 427
      Height = 91
      Brush.Color = clSkyBlue
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 297
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
      Width = 271
      Height = 47
      Caption = 'Cutting Team '
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
      Left = 153
      Top = 81
      Width = 129
      Height = 47
      Caption = #35009#26039#32068
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
      Left = 297
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
  end
  object Panel2: TPanel
    Left = 1120
    Top = 14
    Width = 483
    Height = 924
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 300
      Width = 481
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
          FieldName = 'CuttingPlan'
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
    object Panel3: TPanel
      Left = 1
      Top = 488
      Width = 481
      Height = 26
      Align = alTop
      Caption = 'Daily Output (3 days) / '#26085#29986#33021' (3'#26085#20839')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 514
      Width = 481
      Height = 409
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
      FooterFont.Height = -16
      FooterFont.Name = 'Arial'
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      ParentFont = False
      SumList.Active = True
      TabOrder = 2
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
          Footer.FieldName = 'CBY'
          Footer.ValueType = fvtSum
          Footers = <>
          Width = 75
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'MassProduction'
          Footer.Alignment = taCenter
          Footer.FieldName = 'MassProduction'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'hien truong|Mass Production|'#37327#29986#20195#24037
          Width = 130
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'Total'
          Footer.Alignment = taCenter
          Footer.FieldName = 'Total'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Tong cong|Total|'#32317#25976
          Width = 90
        end>
    end
    object Panel8: TPanel
      Left = 1
      Top = 274
      Width = 481
      Height = 26
      Align = alTop
      Caption = 'Daily Completion Rate (3 days) / '#26085#36948#25104#29575' (3'#26085#20839')'
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
      Width = 481
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
        Width = 479
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
          Width = 477
          Height = 269
          Align = alClient
          Brush.Color = clMenuHighlight
        end
        object Panel11: TPanel
          Left = 13
          Top = 19
          Width = 586
          Height = 242
          TabOrder = 0
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 53
            Width = 584
            Height = 188
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
    Width = 1120
    Height = 924
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1118
      Height = 292
      Align = alTop
      TabOrder = 0
      Visible = False
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1116
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
        Width = 1116
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
        HorzScrollBar.Visible = False
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
            FieldName = 'CuttingPlan'
            Footers = <>
            Title.Caption = 'Ke hoach chat|CuttingPlan|'#35009#26039#35336#30059#23436#25104#26085
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
    object Panel7: TPanel
      Left = 1
      Top = 293
      Width = 1118
      Height = 26
      Align = alTop
      Caption = 'Unfinish Task (Today+Delay) / '#26410#23436#25104#20219#21209' ('#26412#26085'+'#24310#35492')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 319
      Width = 1118
      Height = 604
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
      HorzScrollBar.Visible = False
      OptionsEh = [dghFixed3D, dghClearSelection, dghDialogFind]
      ParentFont = False
      RowHeight = 40
      SumList.Active = True
      TabOrder = 2
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
          Width = 69
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
          Width = 79
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
          Width = 100
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
          Width = 62
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
          Width = 191
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
          Width = 80
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd hh:mm'
          EditButtons = <>
          FieldName = 'WarehouseOK'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Kho Chuan Bi Vat Tu OK|Warehouse MTL OK|'#20489#24235#20633#26009#23436#25104
          Width = 180
        end
        item
          Alignment = taCenter
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'CuttingPlan'
          Footer.Alignment = taCenter
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clYellow
          Footer.Font.Height = -19
          Footer.Font.Name = 'Arial'
          Footer.Font.Style = []
          Footers = <>
          Title.Caption = 'Ke hoach chat|CuttingPlan|'#35009#26039#35336#30059#23436#25104#26085
          Width = 224
        end>
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 752
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Itkhua@!erp;Persist Security Info=T' +
      'rue;User ID=tyx;Initial Catalog=LIY_ERP;Data Source=192.168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 752
  end
  object Query1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty FRO' +
        'M ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) AND ShoeTest.CutDate IS NULL'
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
      'order by   CuttingPlan,groups,serino')
    Left = 56
    Top = 784
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
    object Query1WarehouseOK: TDateTimeField
      FieldName = 'WarehouseOK'
    end
    object Query1PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query1CuttingPlan: TDateTimeField
      FieldName = 'CuttingPlan'
    end
  end
  object Timer1: TTimer
    Interval = 15000
    OnTimer = Timer1Timer
    Left = 24
    Top = 784
  end
  object Query2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        '  SELECT top 3 main.Date, main.PlanQty,mainOK.RealOK , convert(v' +
        'archar,cast(ROUND(mainOK.RealOK/PlanQty*100,2) as numeric(5,2)))' +
        '+'#39'%'#39' Complete'
      '  from ('
      
        '    select convert(varchar, ShoeTest.CutDate_first, 111) Date,su' +
        'm(SQplan.Qty) PlanQty from ShoeTest '
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      '    left join ('
      '      select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '      left join shoetestDetail on shoetestDetail.yybh=shoetest2.' +
        'parts'
      
        '      WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Sti' +
        'tching Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upp' +
        'er And Bottom(CE)'#39')'
      '      group by shoetest2.testno'
      '    ) AS SQplan on SQplan.TestNo=ShoeTest.testno    '
      
        '    where  convert(varchar, CutDate_first, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) '
      
        '    and ((not (convert(varchar, CutDate_first, 111)> CONVERT(var' +
        'char, CutDate,111)))  or CONVERT(varchar, CutDate,111) is null)'
      '    group by  convert(varchar, ShoeTest.CutDate_first, 111)'
      '  ) AS main '
      '  left join ('
      
        '    select  convert(varchar, ShoeTestOK.CutDate, 111) Date,sum(R' +
        'ealOK.Qty) RealOK from ShoeTest ShoeTestOK'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTestOK.Tes' +
        'tNo'
      '    left join ('
      '      select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '      left join shoetestDetail on shoetestDetail.yybh=shoetest2.' +
        'parts'
      
        '      WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Sti' +
        'tching Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upp' +
        'er And Bottom(CE)'#39')'
      '      group by shoetest2.testno'
      '    ) AS RealOK on RealOK.TestNo=ShoeTestOK.testno    '
      
        '   where  convert(varchar, ShoeTestOK.CutDate, 111) between conv' +
        'ert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 1' +
        '11)   '
      '   group by  convert(varchar, ShoeTestOK.CutDate, 111)'
      '  )as mainOK on main.Date=mainOK.Date'
      '  union '
      
        '  select '#39' Total'#39' Date, SUM(PlanQty) PlanQty, SUM(RealOK) RealOK' +
        ', '#39#39' AS Complete  from ('
      
        '  SELECT top 3 main.Date, main.PlanQty,mainOK.RealOK , convert(v' +
        'archar,cast(ROUND(mainOK.RealOK/PlanQty*100,2) as numeric(5,2)))' +
        '+'#39'%'#39' Complete'
      '  from ('
      
        '    select convert(varchar, ShoeTest.CutDate_first, 111) Date,su' +
        'm(SQplan.Qty) PlanQty from ShoeTest '
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      '    left join ('
      '      select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '      left join shoetestDetail on shoetestDetail.yybh=shoetest2.' +
        'parts'
      
        '      WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Sti' +
        'tching Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upp' +
        'er And Bottom(CE)'#39')'
      '      group by shoetest2.testno'
      '    ) AS SQplan on SQplan.TestNo=ShoeTest.testno    '
      
        '    where  convert(varchar, CutDate_first, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111) '
      
        '    and ((not (convert(varchar, CutDate_first, 111)> CONVERT(var' +
        'char, CutDate,111)))  or CONVERT(varchar, CutDate,111) is null)'
      '    group by  convert(varchar, ShoeTest.CutDate_first, 111)'
      '  ) AS main'
      '  left join ('
      
        '    select  convert(varchar, ShoeTestOK.CutDate, 111) Date,sum(R' +
        'ealOK.Qty) RealOK from ShoeTest ShoeTestOK'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTestOK.Tes' +
        'tNo'
      '    left join ('
      '      select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '      left join shoetestDetail on shoetestDetail.yybh=shoetest2.' +
        'parts'
      
        '      WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Sti' +
        'tching Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upp' +
        'er And Bottom(CE)'#39')'
      '      group by shoetest2.testno'
      '    ) AS RealOK on RealOK.TestNo=ShoeTestOK.testno    '
      
        '   where  convert(varchar, ShoeTestOK.CutDate, 111) between conv' +
        'ert(varchar, getdate()-7, 111) and convert(varchar, getdate(), 1' +
        '11)   '
      '   group by  convert(varchar, ShoeTestOK.CutDate, 111)'
      
        '  )as mainOK on main.Date=mainOK.Date  order by main.Date desc)m' +
        'ain3'
      '  order by main.Date desc'
      '    ')
    Left = 80
    Top = 784
    object Query2Date: TStringField
      FieldName = 'Date'
      ReadOnly = True
      Size = 30
    end
    object Query2PlanQty: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query2RealOK: TBCDField
      FieldName = 'RealOK'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query2Complete: TStringField
      FieldName = 'Complete'
      ReadOnly = True
      Size = 31
    end
  end
  object DS2: TDataSource
    DataSet = Query7
    Left = 88
    Top = 752
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 112
    Top = 752
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
      
        'SELECT CONVERT(VARCHAR, CuttingOK ,111) AS date, SUM(sampleqty) ' +
        'AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.Warehouse, convert(varchar,main.CuttingOK, 111) A' +
        'S CuttingOK, isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'PreparationDate Warehouse,CutDate CuttingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, CutDate, 111) between convert(varcha' +
        'r, getdate()-7, 111) and convert(varchar, getdate(), 111) and CO' +
        'NVERT(varchar(8), CutDate, 108)  <> '#39'00:00:00'#39
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    where YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2 '
      'group by CuttingOK)sample'
      'full outer join ( '
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'C'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050101'#39' AND GXLB = '#39'C'#39
      
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
      
        'SELECT CONVERT(VARCHAR, CuttingOK ,111) AS date, SUM(sampleqty) ' +
        'AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.Warehouse, convert(varchar,main.CuttingOK, 111) A' +
        'S CuttingOK, isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'PreparationDate Warehouse,CutDate CuttingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, CutDate, 111) between convert(varcha' +
        'r, getdate()-7, 111) and convert(varchar, getdate(), 111) and CO' +
        'NVERT(varchar(8), CutDate, 108)  <> '#39'00:00:00'#39
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    where YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2 '
      'group by CuttingOK)sample'
      'full outer join ( '
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'C'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050101'#39' AND GXLB = '#39'C'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty o' +
        'n MassProductionQty.Date=sample.date'
      '    )main  group by Date order by date desc) AS main3 '
      '    order by Date desc'
      '')
    Left = 112
    Top = 784
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
  object DS4: TDataSource
    DataSet = Query4
    Left = 145
    Top = 751
  end
  object Query4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'SELECT main.TestNo, main.Groups, main.Serino, SQplan.Qty AS Plan' +
        'Qty,ShoetestDelay.PartE,ShoetestDelay.PartC,ReasonE,ReasonC,Reas' +
        'onV,CuttingPlan FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        '-1, 111) AND ShoeTest.CutDate IS NULL'
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
      '  where ShoetestDelay.GXLB='#39'C'#39
      ')ShoetestDelay on ShoetestDelay.TestNo=main.TestNo'
      'order by   CuttingPlan,groups,serino')
    Left = 144
    Top = 784
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
    object Query4CuttingPlan: TDateTimeField
      FieldName = 'CuttingPlan'
    end
  end
  object Query5: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select CONVERT(VARCHAR, GETDATE(), 107) date,convert(VARCHAR,COU' +
        'NT(CuttingOK)) +'#39'/'#39'+convert(VARCHAR,COUNT(testno)) risk,'
      
        'convert(VARCHAR,SUM(OKQty)) +'#39'/'#39'+convert(VARCHAR,SUM(PlanQty)) p' +
        'airs, CONVERT(VARCHAR,cast(ROUND(SUM(OKQty)/SUM(PlanQty)*100,2) ' +
        'as numeric(5,2) ))+'#39'%'#39' as _percent from ('
      
        'SELECT main.TestNo, main.Groups, main.Serino, main.SR, main.Stag' +
        'e, main.WarehouseOK, main.CuttingPlan, SQplan.Qty AS PlanQty,Cut' +
        'tingOK'
      
        ', case when cuttingOK is null then  0 else isnull(SQplan.Qty,0) ' +
        'end OKQty FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS CuttingPlan, ShoeTest.CutDate AS CuttingOK ' +
        'FROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-10, 111) AND CONVERT(VARCHAR, GetDate()' +
        ', 111) and (ShoeTest.CutDate>= CONVERT(VARCHAR, GetDate(), 111) ' +
        'or ShoeTest.CutDate is null) '
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
      ')main2')
    Left = 184
    Top = 784
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
    Left = 182
    Top = 753
  end
  object DS6: TDataSource
    DataSet = Query6
    Left = 216
    Top = 752
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
        'RCHAR, GetDate()+3, 111)       */'
      
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
        'RCHAR, GetDate()+3, 111)      */'
      
        'where (Cancel <>'#39'1'#39' or Cancel is null) and initialEstimatedShipD' +
        'ate in (select distinct top 3 initialEstimatedShipDate from CBY_' +
        'Orders where initialEstimatedShipDate > GETDATE() )'
      
        ')main group by CONVERT(VARCHAR,initialEstimatedShipDate,111))mai' +
        'n2 ')
    Left = 216
    Top = 784
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
  object Query7: TADOQuery
    Connection = ADOConnection1
    OnCalcFields = Query7CalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from ('
      
        'SELECT top 3 CONVERT(varchar, CuttingPlan,111) AS CuttingPlan, S' +
        'UM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,c' +
        'ast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+'#39'%'#39 +
        ' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.Warehouse, convert(varchar,main.CuttingPlan, 111)' +
        ' AS CuttingPlan, '
      
        '  case when convert(varchar, cuttingOK, 108) = '#39'00:00:00'#39' then 0' +
        ' else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varchar,mai' +
        'n.CuttingOK, 111) AS CuttingOK,'
      
        '  case when cuttingOK is null then  0 when convert(varchar, cutt' +
        'ingOK, 108) = '#39'00:00:00'#39' then 0 when convert(varchar, CuttingPla' +
        'n, 111) <> convert(varchar, cuttingOK, 111) then 0 else isnull(S' +
        'Qplan.Qty,0) end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'PreparationDate Warehouse,CutDate_first CuttingPlan,CutDate Cutt' +
        'ingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, CutDate_first, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    where YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS SQplan on SQplan.TestNo=main.testno'
      ') AS main2 '
      'group by CuttingPlan '
      'order by CuttingPlan desc)mainA'
      'union'
      
        'SELECT '#39' Total '#39' CuttingPlan, SUM(PlanQty) AS PlanQty, SUM(OKqty' +
        ') AS OKQty,'#39#39' Complete FROM ('
      
        'SELECT top 3 CONVERT(varchar, CuttingPlan,111) AS CuttingPlan, S' +
        'UM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,c' +
        'ast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+'#39'%'#39 +
        ' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.Warehouse, convert(varchar,main.CuttingPlan, 111)' +
        ' AS CuttingPlan, '
      
        '  case when convert(varchar, cuttingOK, 108) = '#39'00:00:00'#39' then 0' +
        ' else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varchar,mai' +
        'n.CuttingOK, 111) AS CuttingOK,'
      
        '  case when cuttingOK is null then  0 when convert(varchar, cutt' +
        'ingOK, 108) = '#39'00:00:00'#39' then 0 when convert(varchar, CuttingPla' +
        'n, 111) <> convert(varchar, cuttingOK, 111) then 0 else isnull(S' +
        'Qplan.Qty,0) end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'PreparationDate Warehouse,CutDate_first CuttingPlan,CutDate Cutt' +
        'ingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, CutDate_first, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    where YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS SQplan on SQplan.TestNo=main.testno'
      ') AS main2 '
      'group by CuttingPlan '
      'order by CuttingPlan desc'
      ''
      ') AS main3 '
      'order by cuttingPlan desc    ')
    Left = 88
    Top = 840
    object StringField1: TStringField
      FieldName = 'CuttingPlan'
      ReadOnly = True
      Size = 30
    end
    object BCDField1: TBCDField
      FieldName = 'PlanQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object BCDField2: TBCDField
      FieldName = 'OKQty'
      ReadOnly = True
      Precision = 32
      Size = 1
    end
    object Query7Complete: TStringField
      FieldName = 'Complete'
      ReadOnly = True
      Size = 31
    end
  end
end
