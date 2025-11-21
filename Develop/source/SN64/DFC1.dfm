object DFC: TDFC
  Left = 264
  Top = 132
  Width = 1599
  Height = 893
  Caption = 'DevelopFlowChart'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape7: TShape
    Left = 477
    Top = 98
    Width = 180
    Height = 50
    Brush.Color = clMoneyGreen
    Shape = stRoundRect
  end
  object Shape11: TShape
    Left = 255
    Top = 66
    Width = 180
    Height = 50
    Brush.Color = clMoneyGreen
    Shape = stRoundRect
  end
  object Label2: TLabel
    Left = 284
    Top = 83
    Width = 61
    Height = 48
    Alignment = taCenter
    Caption = 'N26 Material Query'
    Color = clMoneyGreen
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Label6: TLabel
    Left = 501
    Top = 148
    Width = 62
    Height = 80
    Alignment = taCenter
    Caption = 'N74 Sample Order Tracking Data'
    Color = clMoneyGreen
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1583
    Height = 854
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet6: TTabSheet
      Caption = 'Sample'
      ImageIndex = 5
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1575
        Height = 209
        Align = alTop
        Caption = 'Panel4'
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 1573
          Height = 182
          Align = alTop
          Color = cl3DDkShadow
          DataSource = SampleDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'ReceiveSR'
              Footer.FieldName = 'ReceiveSR'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'SR Receive|TongCong SR|SR'#32317#25976
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'CutMaterialOK'
              Footer.FieldName = 'CutMaterialOK'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting Chat '#35009#26039'|MaterialOK|VatTuOK|'#38754#26009'OK'
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'CutMaterialGet'
              Footer.FieldName = 'CutMaterialGet'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting Chat '#35009#26039'|MaterialGet|VatTuGet|'#38754#26009#38936#26009
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'Cutdate'
              Footer.FieldName = 'Cutdate'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting Chat '#35009#26039'|CuttingFinish|ChatOK|'#35009#26039#23436#25104
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'StitchingMaterialOK'
              Footer.FieldName = 'StitchingMaterialOK'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching May '#37341#36554'|MaterialOK|PhuLieuMayOK|'#37341#36554#21103#26009'OK'
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'StitchingMaterialGet'
              Footer.FieldName = 'StitchingMaterialGet'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching May '#37341#36554'|MaterialGet|PhuLieuMayLanh|'#37341#36554#21103#26009#38936#26009
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'StitchingDate'
              Footer.FieldName = 'StitchingDate'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching May '#37341#36554'|StitchingFinish|MayOK|'#37341#36554#23436#25104
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'AssemblyMaterialOK'
              Footer.FieldName = 'AssemblyMaterialOK'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assembly Go '#25104#22411'|MaterialOK|PhuLieuGoOK|'#25104#22411#21103#26009'OK'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'AssemblyMaterialGet'
              Footer.FieldName = 'AssemblyMaterialGet'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assembly Go '#25104#22411'|MaterialGet|PhuLieuGetOK|'#25104#22411#38936#26009
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'AssemblyDate'
              Footer.FieldName = 'AssemblyDate'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assembly Go '#25104#22411'|AssemblyFinish||GoOK|'#25104#22411#23436#25104'OK'
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'PackingMaterialOK'
              Footer.FieldName = 'PackingMaterialOK'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Packing BaoBi '#21253#35037'|MaterialOK|PhuLieuBaoBiOK|'#21253#26448'OK'
              Width = 96
            end
            item
              EditButtons = <>
              FieldName = 'PackingMaterialGet'
              Footer.FieldName = 'PackingMaterialGet'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Packing BaoBi '#21253#35037'|MaterialGet|PhuLieuBaoBiGet|'#21253#26448#38936#26009
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'PackingDate'
              Footer.FieldName = 'PackingDate'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Packing BaoBi '#21253#35037'|PackingOK|BaoBiOK|'#21253#35037#23436#25104
              Width = 153
            end>
        end
        object Button1: TButton
          Left = 72
          Top = 182
          Width = 124
          Height = 27
          Caption = 'Groups SR List Excel'
          TabOrder = 1
          OnClick = Button1Click
        end
        object OtherParts: TCheckBox
          Left = 300
          Top = 195
          Width = 78
          Height = 14
          Caption = 'OtherParts'
          TabOrder = 2
          OnClick = OtherPartsClick
        end
        object Button3: TButton
          Left = 196
          Top = 182
          Width = 91
          Height = 27
          Caption = 'Daily Report'
          TabOrder = 3
          OnClick = Button3Click
        end
        object Button8: TButton
          Left = 8
          Top = 182
          Width = 61
          Height = 27
          Caption = 'ShowData'
          TabOrder = 4
          OnClick = Button8Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 209
        Width = 1575
        Height = 156
        Align = alTop
        Caption = 'Panel5'
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1573
          Height = 154
          Align = alClient
          Color = cl3DDkShadow
          DataSource = SampleStatusDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Groups'
              Footers = <>
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = 'Parts|'#37096#20214
              Width = 142
            end
            item
              EditButtons = <>
              FieldName = 'totalQty'
              Footer.FieldName = 'totalQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'TotalQty|'#32317#25976
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'Cutting'
              Footer.FieldName = 'Cutting'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting|'#35009#26039#20013
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'Stitchinging'
              Footer.FieldName = 'Stitchinging'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching|'#37341#36554#20013
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'Assemblying'
              Footer.FieldName = 'Assemblying'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assemblying|'#25104#22411#20013
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'Packinging'
              Footer.FieldName = 'Packinging'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Packing|'#21253#35037#20013
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'PackingOK'
              Footer.FieldName = 'PackingOK'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PackingOK|'#24050#23436#25104
              Width = 90
            end>
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 365
        Width = 1575
        Height = 461
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 2
        object PackingEH: TDBGridEh
          Left = 1025
          Top = 46
          Width = 341
          Height = 414
          Align = alLeft
          Color = cl3DDkShadow
          DataSource = PackingDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footer.FieldName = 'ywsm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Packing'#21253#35037'|Actual'#23526#38555'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PackingQry'
              Footer.FieldName = 'PackingQry'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Packing'#21253#35037'|Actual'#23526#38555'|Qty|'#25976#37327
              Width = 40
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1573
          Height = 45
          Align = alTop
          TabOrder = 1
          object Memo3: TMemo
            Left = 270
            Top = 7
            Width = 352
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #27161#26999#39636
            Font.Style = []
            Lines.Strings = (
              'Planning Capacity & Actual '
              'Capacity'
              '')
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object Memo4: TMemo
            Left = 621
            Top = 7
            Width = 228
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #27161#26999#39636
            Font.Style = []
            Lines.Strings = (
              #35336#21123#29986#33021#33287#23526#38555#29986#33021)
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DateTimePicker1: TDateTimePicker
            Left = 20
            Top = 7
            Width = 124
            Height = 28
            Date = 44564.614086377320000000
            Time = 44564.614086377320000000
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnChange = DateTimePicker1Change
          end
          object DateTimePicker2: TDateTimePicker
            Left = 143
            Top = 7
            Width = 108
            Height = 28
            Date = 44564.614086377320000000
            Time = 44564.614086377320000000
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnChange = DateTimePicker2Change
          end
          object dtp22: TDateTimePicker
            Left = 950
            Top = 10
            Width = 84
            Height = 21
            Date = 41675.999305555550000000
            Format = 'HH:mm:ss'
            Time = 41675.999305555550000000
            Kind = dtkTime
            TabOrder = 4
            Visible = False
          end
          object dtp11: TDateTimePicker
            Left = 866
            Top = 10
            Width = 84
            Height = 21
            Date = 41675.000000000000000000
            Format = 'HH:mm:ss'
            Time = 41675.000000000000000000
            Kind = dtkTime
            TabOrder = 5
            Visible = False
          end
          object Button2: TButton
            Left = 249
            Top = 7
            Width = 21
            Height = 26
            Caption = 'OK'
            TabOrder = 6
            OnClick = Button2Click
          end
        end
        object CutDbEh: TDBGridEh
          Left = 1
          Top = 46
          Width = 341
          Height = 414
          Align = alLeft
          Color = cl3DDkShadow
          DataSource = CutDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footer.FieldName = 'ywsm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Cutting'#35009#26039'|Planning'#35336#30059'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PlanningQty'
              Footer.FieldName = 'PlanningQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting'#35009#26039'|Planning'#35336#30059'|Qty|'#25976#37327
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ywsm_1'
              Footer.FieldName = 'ywsm_1'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Cutting'#35009#26039'|Actual'#23526#38555'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'SampleRoomQty'
              Footer.FieldName = 'SampleRoomQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Cutting'#35009#26039'|Actual'#23526#38555'|Qty|'#25976#37327
              Width = 41
            end>
        end
        object StitchingDbEh: TDBGridEh
          Left = 342
          Top = 46
          Width = 341
          Height = 414
          Align = alLeft
          Color = cl3DDkShadow
          DataSource = StitchingDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footer.FieldName = 'ywsm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Stitching'#37341#36554'|Planning'#35336#30059'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PlanningQty'
              Footer.FieldName = 'PlanningQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching'#37341#36554'|Planning'#35336#30059'|Qty|'#25976#37327
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ywsm_1'
              Footer.FieldName = 'ywsm_1'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Stitching'#37341#36554'|Actual'#23526#38555'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'SampleRoomQty'
              Footer.FieldName = 'SampleRoomQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Stitching'#37341#36554'|Actual'#23526#38555'|Qty|'#25976#37327
              Width = 41
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 683
          Top = 46
          Width = 342
          Height = 414
          Align = alLeft
          Color = cl3DDkShadow
          DataSource = AssemblyDS
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clTeal
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindow
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footer.FieldName = 'ywsm'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Assembly'#25104#22411'|Planning'#35336#30059'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'PlanningQty'
              Footer.FieldName = 'PlanningQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assembly'#25104#22411'|Planning'#35336#30059'|Qty|'#25976#37327
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ywsm_1'
              Footer.FieldName = 'ywsm_1'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Assembly'#25104#22411'|Actual'#23526#38555'|Parts|'#37096#20214
              Width = 114
            end
            item
              EditButtons = <>
              FieldName = 'SampleRoomQty'
              Footer.FieldName = 'SampleRoomQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Assembly'#25104#22411'|Actual'#23526#38555'|Qty|'#25976#37327
              Width = 41
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Function'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1575
        Height = 41
        Align = alTop
        TabOrder = 0
        OnDblClick = Panel1DblClick
        object Label1: TLabel
          Left = 192
          Top = 10
          Width = 42
          Height = 20
          Caption = 'Yours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 397
          Top = 10
          Width = 90
          Height = 20
          Caption = 'TeamLeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 640
          Top = 10
          Width = 90
          Height = 20
          Caption = 'TeamLeader'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 10
          Width = 40
          Height = 20
          Caption = 'Team'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 55
          Top = 8
          Width = 106
          Height = 28
          DataField = 'FDTeam'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 240
          Top = 8
          Width = 129
          Height = 28
          Color = clSkyBlue
          DataField = 'busers'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 496
          Top = 8
          Width = 129
          Height = 28
          DataField = 'Teamleader'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 736
          Top = 8
          Width = 129
          Height = 28
          DataField = 'Teamleader2'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 1575
        Height = 785
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object mainPanel: TPanel
          Left = 1
          Top = 1
          Width = 1573
          Height = 783
          Align = alClient
          TabOrder = 0
          object Shape13: TShape
            Left = 10
            Top = 342
            Width = 255
            Height = 267
            Brush.Color = clSkyBlue
            Shape = stRoundRect
          end
          object SN68_Back: TShape
            Left = 24
            Top = 529
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object Shape12: TShape
            Left = 585
            Top = 22
            Width = 306
            Height = 155
            Brush.Color = clTeal
            Shape = stRoundRect
          end
          object SN65_Back: TShape
            Left = 24
            Top = 386
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN7A_Back: TShape
            Left = 24
            Top = 566
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object Shape1: TShape
            Left = 593
            Top = 344
            Width = 306
            Height = 297
            Brush.Color = clSkyBlue
            Shape = stRoundRect
          end
          object Shape19: TShape
            Left = 10
            Top = 22
            Width = 255
            Height = 297
            Brush.Color = clTeal
            Shape = stRoundRect
          end
          object Shape2: TShape
            Left = 305
            Top = 22
            Width = 255
            Height = 297
            Brush.Color = clTeal
            Shape = stRoundRect
          end
          object SN22_Back: TShape
            Left = 334
            Top = 53
            Width = 213
            Height = 44
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN22_Link: TLabel
            Left = 343
            Top = 65
            Width = 194
            Height = 24
            AutoSize = False
            Caption = 'N22 Sample Order Creation  '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN23_Back: TShape
            Left = 617
            Top = 378
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN23_Link: TLabel
            Left = 624
            Top = 384
            Width = 225
            Height = 17
            AutoSize = False
            Caption = 'N23 Sample Material'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN26_Back: TShape
            Left = 617
            Top = 413
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN26_Link: TLabel
            Left = 624
            Top = 418
            Width = 133
            Height = 16
            AutoSize = False
            Caption = 'N26 Material Query '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label7: TLabel
            Left = 408
            Top = 25
            Width = 59
            Height = 29
            Caption = 'BOM'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SN71_Back: TShape
            Left = 24
            Top = 457
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN71_Link: TLabel
            Left = 30
            Top = 463
            Width = 148
            Height = 16
            AutoSize = False
            Caption = 'N71 Season Analysis '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN34_Back: TShape
            Left = 617
            Top = 553
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN34_Link: TLabel
            Left = 624
            Top = 559
            Width = 234
            Height = 16
            AutoSize = False
            Caption = 'N34 Material Purchasing Tracking '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN16_Back: TShape
            Left = 24
            Top = 59
            Width = 221
            Height = 46
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN16_LINK: TLabel
            Left = 28
            Top = 69
            Width = 197
            Height = 32
            AutoSize = False
            Caption = 'N16 Material Change Reason'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN741_Back: TShape
            Left = 24
            Top = 177
            Width = 221
            Height = 64
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN741_LINK: TLabel
            Left = 31
            Top = 182
            Width = 202
            Height = 57
            AutoSize = False
            Caption = 
              'N741 Sample Order Tracking ColorSwatch&&Sticker Blue File MTL Da' +
              'ta '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN75_Back: TShape
            Left = 617
            Top = 94
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN75_LINK: TLabel
            Left = 624
            Top = 101
            Width = 162
            Height = 16
            AutoSize = False
            Caption = 'N75 Shoes Making TB   '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN35_Back: TShape
            Left = 617
            Top = 518
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN35_Link: TLabel
            Left = 624
            Top = 524
            Width = 106
            Height = 16
            AutoSize = False
            Caption = 'N35 LeadTime  '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label3: TLabel
            Left = 649
            Top = 25
            Width = 166
            Height = 29
            Caption = 'Sample Room'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SN27_Back: TShape
            Left = 617
            Top = 59
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN27_LINK: TLabel
            Left = 624
            Top = 64
            Width = 124
            Height = 16
            AutoSize = False
            Caption = 'N27 Sample Plan  '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN76_Back: TShape
            Left = 334
            Top = 100
            Width = 211
            Height = 32
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN76_Link: TLabel
            Left = 345
            Top = 106
            Width = 192
            Height = 23
            AutoSize = False
            Caption = 'N76 Bom Data Seach '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label4: TLabel
            Left = 81
            Top = 353
            Width = 92
            Height = 29
            Caption = 'Asistant'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Shape15: TShape
            Left = 585
            Top = 183
            Width = 306
            Height = 137
            Brush.Color = clTeal
            Shape = stRoundRect
          end
          object Label5: TLabel
            Left = 673
            Top = 193
            Width = 133
            Height = 29
            Caption = 'Warehouse'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SN28_Back: TShape
            Left = 617
            Top = 226
            Width = 248
            Height = 39
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN28_LINK: TLabel
            Left = 624
            Top = 233
            Width = 225
            Height = 24
            AutoSize = False
            Caption = 'N28 Sample Warehouse '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN44_Back: TShape
            Left = 617
            Top = 483
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN44_LINK: TLabel
            Left = 624
            Top = 488
            Width = 118
            Height = 16
            AutoSize = False
            Caption = 'N44 Stock Check '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN29_Back: TShape
            Left = 617
            Top = 448
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN29_Link: TLabel
            Left = 624
            Top = 456
            Width = 189
            Height = 16
            AutoSize = False
            Caption = 'N29 FlexCode Mat&Supplier  '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label8: TLabel
            Left = 81
            Top = 25
            Width = 122
            Height = 29
            Caption = 'Developer'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SN72_Back: TShape
            Left = 24
            Top = 114
            Width = 221
            Height = 55
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN72_Link: TLabel
            Left = 32
            Top = 122
            Width = 201
            Height = 32
            AutoSize = False
            Caption = 'N72 SR_Basic_Data SR_Stage_Data'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label9: TLabel
            Left = 681
            Top = 345
            Width = 95
            Height = 29
            Caption = 'Material'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Shape3: TShape
            Left = 305
            Top = 342
            Width = 255
            Height = 267
            Brush.Color = clSkyBlue
            Shape = stRoundRect
          end
          object Label10: TLabel
            Left = 385
            Top = 353
            Width = 100
            Height = 29
            Caption = 'PC_data'
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SN82_Back: TShape
            Left = 334
            Top = 386
            Width = 177
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN82_Link: TLabel
            Left = 343
            Top = 393
            Width = 132
            Height = 16
            AutoSize = False
            Caption = 'N82 PC Information'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN83_Back: TShape
            Left = 334
            Top = 423
            Width = 177
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN83_Link: TLabel
            Left = 344
            Top = 430
            Width = 161
            Height = 19
            AutoSize = False
            Caption = 'N83 PC Memo'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN73_Back: TShape
            Left = 334
            Top = 140
            Width = 211
            Height = 32
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN73_Link: TLabel
            Left = 345
            Top = 145
            Width = 184
            Height = 24
            AutoSize = False
            Caption = 'N73 Bom Update Record '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN7A_Link: TLabel
            Left = 32
            Top = 572
            Width = 193
            Height = 21
            AutoSize = False
            Caption = 'N7A TP Data Upload '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN77_Back: TShape
            Left = 24
            Top = 493
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN77_Link: TLabel
            Left = 30
            Top = 497
            Width = 195
            Height = 24
            AutoSize = False
            Caption = 'N77 Developer Name  '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN65_Link: TLabel
            Left = 30
            Top = 392
            Width = 197
            Height = 16
            AutoSize = False
            Caption = 'N65 Material Tracking Setup '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN67_Back: TShape
            Left = 24
            Top = 422
            Width = 207
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN67_Link: TLabel
            Left = 30
            Top = 428
            Width = 187
            Height = 21
            AutoSize = False
            Caption = 'N67 Developer Loading'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN78_Back: TShape
            Left = 336
            Top = 457
            Width = 175
            Height = 31
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN78_LINK: TLabel
            Left = 345
            Top = 463
            Width = 127
            Height = 16
            AutoSize = False
            Caption = 'N78 Dev Calendar '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN68_Link: TLabel
            Left = 30
            Top = 535
            Width = 148
            Height = 16
            AutoSize = False
            Caption = 'N68 Sample Analysis '
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object SN6A_Back: TShape
            Left = 617
            Top = 586
            Width = 248
            Height = 30
            Brush.Color = clMoneyGreen
            Shape = stRoundRect
          end
          object SN6A_Link: TLabel
            Left = 623
            Top = 591
            Width = 152
            Height = 16
            AutoSize = False
            Caption = 'N6A New Material List'
            Color = clMoneyGreen
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Memo'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 273
        Height = 826
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'BOM'
          'N23 Sample Material'
          ' '#65290#33256#26178#26009#34399#24314#31435
          ' '#65290#33256#26178#26009#34399#36681#27491#24335#26009#34399
          'N22 Sample Order Creation'
          ' '#65290#27171#21697#21934#24314#31435
          ''
          'Report'
          'N71 Sample Shoes Tracking List'
          ' '#65290#27171#21697#38795#21508#38917#32113#35336#36039#26009
          'N34 Material Purchasing Status'
          ' '#65290#25505#36092#26448#26009#29376#24907#26597#35426
          ' '#65290#31777#26131#37197#22871#34920
          ' '
          'Plan'
          'N27 Sample Plan'
          #38283#30332#29983#31649#36039#26009
          ''
          #35009#26039#35222#35258#21270#31995#32113#32113#38617#25976#32113#35336#21697#38917
          '('#39'Finished Shoe'#39', '#39'Half Stitching '
          'Upper'#39', '#39'Stitching Upper'#39', '#39'Lasted '
          'upper'#39', '#39'Upper Component'#39', '#39'CFM '
          'sample'#39', '#39'Upper And Bottom(CE)'#39')'
          ''
          #37341#36554#35222#35258#21270#31995#32113#32113#38617#25976#32113#35336#21697#38917
          '('#39'Finished Shoe'#39','#39'Half Stitching '
          'Upper'#39','#39'Stitching Upper'#39','#39'Lasted '
          'upper'#39','#39'Upper Component'#39','#39'CFM '
          'sample'#39','#39'Upper And Bottom(CE)'#39')'
          ''
          #25104#22411#35222#35258#21270#31995#32113#32113#38617#25976#32113#35336#21697#38917
          '('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM '
          'sample'#39','#39'Upper And Bottom(CE)'#39') ')
        ParentFont = False
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 273
        Top = 0
        Width = 417
        Height = 826
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'N26 Material Query'
          ' '#65290#21508#39006#26448#26009#26597#35426
          'N72 Dev Project Information Data'
          ' '#65290#38283#30332#22411#39636#22522#26412#36039#26009#24314#31435
          ' '#65290'R123'#33287'CFM'#36039#26009#24314#31435
          ' '#65290#35443#32048#37197#22871#34920#29986#20986
          ' '#65290#38795#22294#19978#20659
          'N74 Sample Order Tracking Data'
          #65290#27171#21697#38795#29983#29986#35330#21934#36039#26009
          #65290#21508#38542#27573#23395#31680#21508#22411#39636#25152#26377#26448#26009#21295#20986
          #65290#33394#21345#36039#26009#21295#20986
          'N16 Dev Material Update Record'
          #65290#38283#30332#26448#26009#26356#25913#21407#22240#35352#37636
          'N75 Sample Notice'
          #65290#27171#21697#38795#29983#29986#36890#22577
          'N35 FDStatusLeadTime'
          #65290#26448#26009'Leadtime'#26597#35426)
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Report'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1575
        Height = 46
        Align = alTop
        TabOrder = 0
        object Memo5: TMemo
          Left = 270
          Top = 7
          Width = 355
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          Lines.Strings = (
            'Develop sample production report')
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object Memo6: TMemo
          Left = 621
          Top = 7
          Width = 218
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          Lines.Strings = (
            #38283#30332#27171#21697#29983#29986#22577#34920)
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DateTimePicker3: TDateTimePicker
          Left = 20
          Top = 7
          Width = 124
          Height = 28
          Date = 44564.614086377320000000
          Time = 44564.614086377320000000
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DateTimePicker3Change
        end
        object DateTimePicker4: TDateTimePicker
          Left = 143
          Top = 7
          Width = 108
          Height = 28
          Date = 44564.614086377320000000
          Time = 44564.614086377320000000
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = DateTimePicker4Change
        end
        object DateTimePicker5: TDateTimePicker
          Left = 950
          Top = 10
          Width = 84
          Height = 21
          Date = 41675.999305555550000000
          Format = 'HH:mm:ss'
          Time = 41675.999305555550000000
          Kind = dtkTime
          TabOrder = 4
          Visible = False
        end
        object DateTimePicker6: TDateTimePicker
          Left = 866
          Top = 10
          Width = 84
          Height = 21
          Date = 41675.000000000000000000
          Format = 'HH:mm:ss'
          Time = 41675.000000000000000000
          Kind = dtkTime
          TabOrder = 5
          Visible = False
        end
        object Button4: TButton
          Left = 249
          Top = 7
          Width = 21
          Height = 26
          Caption = 'OK'
          TabOrder = 6
          OnClick = Button4Click
        end
        object DateTimePicker7: TDateTimePicker
          Left = 1034
          Top = 7
          Width = 108
          Height = 28
          Date = 44564.614086377320000000
          Time = 44564.614086377320000000
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnChange = DateTimePicker2Change
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 417
        Width = 1575
        Height = 208
        Align = alTop
        TabOrder = 1
        object Panel12: TPanel
          Left = 371
          Top = 1
          Width = 371
          Height = 206
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 0
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 369
            Height = 204
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -44
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Panel42: TPanel
              Left = 1
              Top = 1
              Width = 367
              Height = 33
              Align = alTop
              Caption = 'CBY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBGridEh15: TDBGridEh
              Left = 1
              Top = 34
              Width = 367
              Height = 169
              Align = alClient
              DataSource = DataSource1
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -9
              FooterFont.Name = #24494#36575#27491#40657#39636
              FooterFont.Style = []
              FooterRowCount = 1
              ParentFont = False
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -9
              TitleFont.Name = #24494#36575#27491#40657#39636
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Date'
                  Footers = <>
                  Width = 79
                end
                item
                  EditButtons = <>
                  FieldName = 'APacking'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end>
            end
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 370
          Height = 206
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 1
          object Panel10: TPanel
            Left = 1
            Top = 1
            Width = 368
            Height = 33
            Align = alTop
            Caption = 'Half'
            TabOrder = 0
          end
          object Panel11: TPanel
            Left = 1
            Top = 34
            Width = 368
            Height = 171
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh4: TDBGridEh
              Left = 1
              Top = 1
              Width = 366
              Height = 169
              Align = alClient
              DataSource = half_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'Half'
                  Footer.FieldName = 'Half'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
        object Panel41: TPanel
          Left = 742
          Top = 1
          Width = 832
          Height = 206
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -44
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Button12: TButton
            Left = 78
            Top = 39
            Width = 222
            Height = 79
            Caption = 'Excel'
            TabOrder = 0
            OnClick = Button5Click
          end
          object Button13: TButton
            Left = 78
            Top = 117
            Width = 222
            Height = 72
            Caption = 'detail'
            TabOrder = 1
            OnClick = Button6Click
          end
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 46
        Width = 1575
        Height = 176
        Align = alTop
        Caption = 'Panel8'
        TabOrder = 2
        object Panel19: TPanel
          Left = 742
          Top = 1
          Width = 370
          Height = 174
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 0
          object Panel20: TPanel
            Left = 1
            Top = 1
            Width = 368
            Height = 33
            Align = alTop
            Caption = 'MST_EXT_FSR'
            TabOrder = 0
          end
          object Panel21: TPanel
            Left = 1
            Top = 34
            Width = 368
            Height = 139
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh7: TDBGridEh
              Left = 1
              Top = 1
              Width = 366
              Height = 137
              Align = alClient
              DataSource = MST_EXT_FSR_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'MST_EXT_FSR'
                  Footer.FieldName = 'MST_EXT_FSR'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
        object Panel22: TPanel
          Left = 1
          Top = 1
          Width = 370
          Height = 174
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 1
          object Panel23: TPanel
            Left = 1
            Top = 1
            Width = 368
            Height = 33
            Align = alTop
            Caption = 'R1_R4_PC'
            TabOrder = 0
          end
          object Panel24: TPanel
            Left = 1
            Top = 34
            Width = 368
            Height = 139
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh8: TDBGridEh
              Left = 1
              Top = 1
              Width = 366
              Height = 137
              Align = alClient
              DataSource = R1_R4_PC_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'R1_R4_PC'
                  Footer.FieldName = 'R1_R4_PC'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
        object Panel25: TPanel
          Left = 371
          Top = 1
          Width = 371
          Height = 174
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 2
          object Panel26: TPanel
            Left = 1
            Top = 1
            Width = 369
            Height = 33
            Align = alTop
            Caption = 'R2_R3_ADD_WearFitTest'
            TabOrder = 0
          end
          object Panel27: TPanel
            Left = 1
            Top = 34
            Width = 369
            Height = 139
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh9: TDBGridEh
              Left = 1
              Top = 1
              Width = 367
              Height = 137
              Align = alClient
              DataSource = R2_R3_ADD_WearFitTest_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'R2_R3_ADD_WearFitTest'
                  Footer.FieldName = 'R2_R3_ADD_WearFitTest'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
      end
      object Panel28: TPanel
        Left = 0
        Top = 222
        Width = 1575
        Height = 195
        Align = alTop
        Caption = 'Panel8'
        TabOrder = 3
        object Panel29: TPanel
          Left = 742
          Top = 1
          Width = 370
          Height = 193
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 0
          object Panel30: TPanel
            Left = 1
            Top = 1
            Width = 368
            Height = 33
            Align = alTop
            Caption = 'Shoe'
            TabOrder = 0
          end
          object Panel31: TPanel
            Left = 1
            Top = 34
            Width = 368
            Height = 158
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh10: TDBGridEh
              Left = 1
              Top = 1
              Width = 366
              Height = 156
              Align = alClient
              DataSource = Shoe_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'Shoe'
                  Footer.FieldName = 'Shoe'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
        object Panel32: TPanel
          Left = 1
          Top = 1
          Width = 370
          Height = 193
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 1
          object Panel33: TPanel
            Left = 1
            Top = 1
            Width = 368
            Height = 33
            Align = alTop
            Caption = 'SEE_Pullover'
            TabOrder = 0
          end
          object Panel34: TPanel
            Left = 1
            Top = 34
            Width = 368
            Height = 158
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh11: TDBGridEh
              Left = 1
              Top = 1
              Width = 366
              Height = 156
              Align = alClient
              DataSource = SEE_Pullover_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'SEE_Pullover'
                  Footer.FieldName = 'SEE_Pullover'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
        object Panel35: TPanel
          Left = 371
          Top = 1
          Width = 371
          Height = 193
          Align = alLeft
          Caption = 'Panel9'
          TabOrder = 2
          object Panel36: TPanel
            Left = 1
            Top = 1
            Width = 369
            Height = 33
            Align = alTop
            Caption = 'QUV_OtherTest'
            TabOrder = 0
          end
          object Panel37: TPanel
            Left = 1
            Top = 34
            Width = 369
            Height = 158
            Align = alClient
            Caption = 'Panel11'
            TabOrder = 1
            object DBGridEh12: TDBGridEh
              Left = 1
              Top = 1
              Width = 367
              Height = 156
              Align = alClient
              DataSource = QUV_OtherTest_DS
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
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'testno'
                  Footer.FieldName = 'testno'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  Title.Caption = 'TB'
                  Width = 52
                end
                item
                  EditButtons = <>
                  FieldName = 'SQTBOKTime'
                  Footers = <>
                  Title.Caption = 'Time'
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'QUV_OtherTest'
                  Footer.FieldName = 'QUV_OtherTest'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Title.Caption = 'Qty'
                  Width = 35
                end
                item
                  EditButtons = <>
                  FieldName = 'ywsm'
                  Footers = <>
                  Title.Caption = 'Parts'
                  Width = 141
                end>
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Hourly output'
      ImageIndex = 4
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 41
        Width = 1575
        Height = 785
        Align = alClient
        DataSource = DS_HO
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnGetCellParams = DBGridEh5GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Date'
            Footers = <>
            HideDuplicates = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'GXLB'
            Footers = <>
            Title.Caption = 'Section'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'HourS'
            Footers = <>
            Title.Caption = 'Hour'
          end
          item
            EditButtons = <>
            FieldName = '7h30-8h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '8h30-9h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '9h30-10h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '10h30-11h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = '11h30-12h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '12h30-13h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '13h30-14h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '14h30-15h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = '15h30-16h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '16h30-17h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '17h30-18h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '18h30-19h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = '19h30-20h30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end>
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1575
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 18
          Top = 15
          Width = 34
          Height = 16
          Caption = 'Date'
        end
        object Label15: TLabel
          Left = 288
          Top = 15
          Width = 34
          Height = 16
          Caption = 'Data'
        end
        object Label16: TLabel
          Left = 154
          Top = 18
          Width = 11
          Height = 16
          Caption = '~'
        end
        object Label17: TLabel
          Left = 529
          Top = 14
          Width = 49
          Height = 16
          Caption = 'Format'
        end
        object DTP1: TDateTimePicker
          Left = 53
          Top = 11
          Width = 100
          Height = 24
          Date = 44776.681457037040000000
          Format = 'yyyy/MM/dd'
          Time = 44776.681457037040000000
          TabOrder = 0
        end
        object CB1: TComboBox
          Left = 324
          Top = 11
          Width = 181
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 1
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'SAMPLE'
            'CBY'
            'MASS PRODUCTION'
            'WITHOUT MASS PRODUCTION')
        end
        object DTP2: TDateTimePicker
          Left = 165
          Top = 11
          Width = 100
          Height = 24
          Date = 44776.681457037040000000
          Format = 'yyyy/MM/dd'
          Time = 44776.681457037040000000
          TabOrder = 2
        end
        object CB2: TComboBox
          Left = 582
          Top = 11
          Width = 107
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 4
          Text = '7h30-16h30'
          OnChange = CB2Change
          Items.Strings = (
            '7h30-16h30'
            '7h30-18h30'
            '7h30-20h30')
        end
        object Button7: TButton
          Left = 710
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 5
          OnClick = Button7Click
        end
        object B_Excel: TButton
          Left = 784
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = B_ExcelClick
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Delay Reason'
      ImageIndex = 5
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Width = 1575
        Height = 2
        Cursor = crVSplit
        Align = alTop
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 274
        Width = 1575
        Height = 552
        Align = alClient
        DataSource = DS_Delay
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        UseMultiTitle = True
        OnGetCellParams = DBGridEh5GetCellParams
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Plantime'
            Footers = <>
            Title.Caption = 'Plan Day'
            Width = 101
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Part'
            Footers = <>
            Title.Caption = 'Process'
            Width = 92
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Width = 74
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Groups'
            Footers = <>
            Width = 82
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Serino_1'
            Footers = <>
            Title.Caption = 'Serino'
            Width = 56
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'prs'
            Width = 54
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PartE'
            Footers = <>
            Title.Caption = 'Who Delay|Part'
            Width = 140
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ReasonE'
            Footers = <>
            Title.Caption = 'Who Delay|Reason'
            Width = 350
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'OKtime'
            Footers = <>
            Width = 180
          end>
      end
      object Panel16: TPanel
        Left = 0
        Top = 228
        Width = 1575
        Height = 46
        Align = alTop
        Alignment = taLeftJustify
        Caption = '        Delay Reason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Aerial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Button10: TButton
          Left = 277
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button10Click
        end
        object CheckBox1: TCheckBox
          Left = 364
          Top = 20
          Width = 79
          Height = 13
          Caption = 'not OK'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Aerial'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 2
        Width = 1575
        Height = 226
        Align = alTop
        Caption = 'Panel17'
        TabOrder = 2
        object Panel38: TPanel
          Left = 1
          Top = 1
          Width = 604
          Height = 224
          Align = alLeft
          Caption = 'Panel38'
          TabOrder = 0
          object Panel15: TPanel
            Left = 1
            Top = 1
            Width = 602
            Height = 40
            Align = alTop
            Alignment = taLeftJustify
            Caption = '            Sample Shoe OnTime Rate '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Aerial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Button9: TButton
              Left = 345
              Top = 9
              Width = 65
              Height = 25
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button9Click
            end
          end
          object DBGridEh13: TDBGridEh
            Left = 1
            Top = 41
            Width = 602
            Height = 182
            Align = alClient
            DataSource = DS_3days
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnGetCellParams = DBGridEh5GetCellParams
            Columns = <
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'serino'
                Footers = <>
                Title.Alignment = taCenter
                Visible = False
                Width = 49
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = '_Plan'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Date'
                Width = 98
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Part'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Process'
                Width = 91
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'PlanQty'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Plan prs'
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'OKQty'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Finish prs'
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Complete Rate'
                Width = 131
              end>
          end
        end
        object Panel39: TPanel
          Left = 605
          Top = 1
          Width = 969
          Height = 224
          Align = alClient
          Caption = 'Panel39'
          TabOrder = 1
          object Panel40: TPanel
            Left = 1
            Top = 1
            Width = 967
            Height = 40
            Align = alTop
            Alignment = taLeftJustify
            Caption = 
              '  Sample Room Completion Rate                        Daily Targe' +
              't'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Aerial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Button11: TButton
              Left = 615
              Top = 7
              Width = 76
              Height = 25
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button11Click
            end
            object DTP111: TDateTimePicker
              Left = 287
              Top = 5
              Width = 123
              Height = 29
              Date = 44776.681457037040000000
              Format = 'yyyy/MM/dd'
              Time = 44776.681457037040000000
              TabOrder = 1
            end
            object Edit1: TEdit
              Left = 527
              Top = 7
              Width = 72
              Height = 35
              TabOrder = 2
              Text = '1500'
            end
          end
          object DBGridEh14: TDBGridEh
            Left = 1
            Top = 41
            Width = 967
            Height = 182
            Align = alClient
            DataSource = DS_Rate
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnGetCellParams = DBGridEh5GetCellParams
            Columns = <
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Date'
                Footers = <>
                Title.Alignment = taCenter
                Width = 90
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Process'
                Footers = <>
                Title.Alignment = taCenter
                Width = 104
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Sample'
                Footers = <>
                Title.Alignment = taCenter
                Width = 86
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'CBY'
                Footers = <>
                Title.Alignment = taCenter
                Width = 85
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'MassProduction'
                Footers = <>
                Title.Alignment = taCenter
                Width = 127
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Total'
                Footers = <>
                Title.Alignment = taCenter
                Width = 86
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Title.Alignment = taCenter
                Width = 145
              end>
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select convert(varchar, getdate()-1, 111) yesterday,FDgroup.FDTe' +
        'am,busers.userid+'#39' - '#39'+isnull(busers.Engname,'#39'null'#39') as busers,'
      
        'TeamLeader+'#39' - '#39'+isnull(teamleaderID.Engname,'#39'null'#39') as Teamlead' +
        'er,'
      
        'TeamLeader2+'#39' - '#39'+isnull(teamleader2ID.Engname,'#39'null'#39') as   Team' +
        'leader2 from busers'
      'left join FDgroups on busers.userid=FDgroups.FDID'
      'left join FDgroup on FDgroups.FDTeam=FDgroup.FDTeam'
      
        'left join busers teamleaderID on teamleaderID.userid=FDgroup.tea' +
        'mleader'
      
        'left join busers teamleader2ID on teamleader2ID.userid=FDgroup.t' +
        'eamleader2')
    Left = 909
    Top = 282
    object Query1FDTeam: TStringField
      FieldName = 'FDTeam'
      FixedChar = True
      Size = 8
    end
    object Query1busers: TStringField
      FieldName = 'busers'
      FixedChar = True
      Size = 33
    end
    object Query1Teamleader: TStringField
      FieldName = 'Teamleader'
      FixedChar = True
      Size = 29
    end
    object Query1Teamleader2: TStringField
      FieldName = 'Teamleader2'
      FixedChar = True
      Size = 29
    end
    object Query1yesterday: TStringField
      FieldName = 'yesterday'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 949
    Top = 282
  end
  object SampleQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select Groups,'
      
        'isnull(SUM(ReceiveSR),0) ReceiveSR,isnull(SUM(CutMaterialOK),0) ' +
        'CutMaterialOK,isnull(SUM(CutMaterialGet),0) CutMaterialGet,isnul' +
        'l(SUM(cutdate),0) cutdate,'
      
        'isnull(SUM(StitchingMaterialOK),0) StitchingMaterialOK,isnull(su' +
        'm(StitchingMaterialGet),0) StitchingMaterialGet,isnull(SUM(Stitc' +
        'hingDate),0) StitchingDate,'
      
        'isnull(SUM(AssemblyMaterialOK),0) AssemblyMaterialOK,isnull(sum(' +
        'AssemblyMaterialGet),0) AssemblyMaterialGet,isnull(SUM(AssemblyD' +
        'ate),0) AssemblyDate,'
      
        'isnull(SUM(PackingMaterialOK),0) PackingMaterialOK,isnull(SUM(Pa' +
        'ckingMaterialGet),0) PackingMaterialGet,isnull(SUM(PackingDate),' +
        '0) PackingDate from('
      
        'select shoetestplanshow.Groups,shoetestplanshow.type,COUNT(shoet' +
        'estplan.ypdh) ReceiveSR,CutMaterialOK.CutMaterialOK,CutMaterialG' +
        'et.CutMaterialGet,cutdate.Cutdate,'
      
        'StitchingMaterialOK.StitchingMaterialOK,StitchingMaterialGet.Sti' +
        'tchingMaterialGet,stitchingDate.StitchingDate,'
      
        'AssemblyMaterialOK.AssemblyMaterialOK,AssemblyMaterialGet.Assemb' +
        'lyMaterialGet,AssemblyDate.AssemblyDate,'
      
        'PackingMaterialOK.PackingMaterialOK,PackingMaterialGet.PackingMa' +
        'terialGet,PackingDate.PackingDate'
      ' from shoetestplanshow'
      
        'left join shoetestplan on shoetestplan.groups=shoetestplanshow.g' +
        'roups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) Cu' +
        'tMaterialOK from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where preparationDate is not null'
      
        #9'group by shoetestplanshow.Groups,type) CutMaterialOK on CutMate' +
        'rialOK.Groups=shoetestplanshow.Groups and shoetestplanshow.type=' +
        'CutMaterialOK.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) Cu' +
        'tMaterialGet from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where FirstMatOutDate is not null'
      
        #9'group by shoetestplanshow.Groups,type) CutMaterialGet on CutMat' +
        'erialGet.Groups=shoetestplanshow.Groups and shoetestplanshow.typ' +
        'e=CutMaterialGet.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) cu' +
        'tdate from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where cutdate is not null'
      
        #9'group by shoetestplanshow.Groups,type) cutdate on cutdate.Group' +
        's=shoetestplanshow.Groups and shoetestplanshow.type=cutdate.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) St' +
        'itchingMaterialOK from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where S_material is not null'
      
        #9'group by shoetestplanshow.Groups,type) StitchingMaterialOK on S' +
        'titchingMaterialOK.Groups=shoetestplanshow.Groups and shoetestpl' +
        'anshow.type=StitchingMaterialOK.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) St' +
        'itchingMaterialGet from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where StitchingPhuFinishDate is not null'
      
        #9'group by shoetestplanshow.Groups,type) StitchingMaterialGet on ' +
        'StitchingMaterialGet.Groups=shoetestplanshow.Groups and shoetest' +
        'planshow.type=StitchingMaterialGet.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) st' +
        'itchingDate from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where stitchingDate is not null'
      
        #9'group by shoetestplanshow.Groups,type) stitchingDate on stitchi' +
        'ngDate.Groups=shoetestplanshow.Groups and shoetestplanshow.type=' +
        'stitchingDate.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) As' +
        'semblyMaterialOK from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where insole_send is not null'
      
        #9'group by shoetestplanshow.Groups,type) AssemblyMaterialOK on As' +
        'semblyMaterialOK.Groups=shoetestplanshow.Groups and shoetestplan' +
        'show.type=AssemblyMaterialOK.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) As' +
        'semblyMaterialGet from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where insole_get is not null'
      
        #9'group by shoetestplanshow.Groups,type) AssemblyMaterialGet on A' +
        'ssemblyMaterialGet.Groups=shoetestplanshow.Groups and shoetestpl' +
        'anshow.type=AssemblyMaterialGet.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) As' +
        'semblyDate from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where Assemblecomplete is not null'
      
        #9'group by shoetestplanshow.Groups,type) AssemblyDate on Assembly' +
        'Date.Groups=shoetestplanshow.Groups and shoetestplanshow.type=As' +
        'semblyDate.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) Pa' +
        'ckingMaterialOK from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where lace_send is not null'
      
        #9'group by shoetestplanshow.Groups,type) PackingMaterialOK on Pac' +
        'kingMaterialOK.Groups=shoetestplanshow.Groups and shoetestplansh' +
        'ow.type=PackingMaterialOK.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) Pa' +
        'ckingMaterialGet from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where lace_get is not null'
      
        #9'group by shoetestplanshow.groups,type) PackingMaterialGet on Pa' +
        'ckingMaterialGet.Groups=shoetestplanshow.Groups and shoetestplan' +
        'show.type=PackingMaterialGet.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,type,COUNT(shoetestplan.ypdh) Pa' +
        'ckingDate from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'where  Complete is not null'
      
        #9'group by shoetestplanshow.groups,type) PackingDate on PackingDa' +
        'te.Groups=shoetestplanshow.Groups and shoetestplanshow.type=Pack' +
        'ingDate.type'
      
        'group by shoetestplanshow.groups,shoetestplanshow.type,CutMateri' +
        'alOK,CutMaterialGet,cutdate,'
      
        'StitchingMaterialOK,StitchingMaterialGet,stitchingDate,AssemblyM' +
        'aterialOK.AssemblyMaterialOK,AssemblyMaterialGet.AssemblyMateria' +
        'lGet,AssemblyDate.AssemblyDate,'
      
        'PackingMaterialOK,PackingMaterialGet,PackingDate )main group by ' +
        'Groups'
      '')
    Left = 404
    Top = 627
    object SampleQryGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object SampleQryReceiveSR: TIntegerField
      FieldName = 'ReceiveSR'
    end
    object SampleQryCutMaterialOK: TIntegerField
      FieldName = 'CutMaterialOK'
    end
    object SampleQryCutMaterialGet: TIntegerField
      FieldName = 'CutMaterialGet'
    end
    object SampleQryCutdate: TIntegerField
      FieldName = 'Cutdate'
    end
    object SampleQryStitchingMaterialOK: TIntegerField
      FieldName = 'StitchingMaterialOK'
    end
    object SampleQryStitchingMaterialGet: TIntegerField
      FieldName = 'StitchingMaterialGet'
    end
    object SampleQryStitchingDate: TIntegerField
      FieldName = 'StitchingDate'
    end
    object SampleQryAssemblyMaterialOK: TIntegerField
      FieldName = 'AssemblyMaterialOK'
    end
    object SampleQryAssemblyMaterialGet: TIntegerField
      FieldName = 'AssemblyMaterialGet'
    end
    object SampleQryAssemblyDate: TIntegerField
      FieldName = 'AssemblyDate'
    end
    object SampleQryPackingMaterialOK: TIntegerField
      FieldName = 'PackingMaterialOK'
    end
    object SampleQryPackingMaterialGet: TIntegerField
      FieldName = 'PackingMaterialGet'
    end
    object SampleQryPackingDate: TIntegerField
      FieldName = 'PackingDate'
    end
  end
  object SampleDS: TDataSource
    DataSet = SampleQry
    Left = 364
    Top = 627
  end
  object SampleStatusQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select GROUPS,ywsm,isnull(SUM(totalQty),0) totalQty,isnull(SUM(c' +
        'utting),0) Cutting,isnull(SUM(Stitchinging),0) Stitchinging,isnu' +
        'll(SUM(Assemblying),0) Assemblying,isnull(SUM(Packinging),0) Pac' +
        'kinging,isnull(SUM(PackingOK),0) PackingOK from('
      
        'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDet' +
        'ail.ywsm,SUM(shoetest2.qty) totalQty,'
      'Cutting.Cutting,'
      'Stitchinging.Stitchinging-Cutting.Cutting Stitchinging,'
      'Assemblying.Assemblying-Stitchinging.Stitchinging Assemblying,'
      'Packinging.Packinging -Assemblying.Assemblying Packinging,'
      'isnull(PackingOK.PackingOK,0) PackingOK'
      ' from shoetestplanshow'
      
        'left join shoetestplan on shoetestplan.groups=shoetestplanshow.g' +
        'roups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      'left join shoetest on shoetest.testno=shoetestplan.testno'
      'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'left join ('
      
        #9'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDe' +
        'tail.ywsm,sum(shoetest2.qty) Cutting from  shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      #9'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      #9'where  cutdate is null or  cutdate='#39#39
      
        #9'group by shoetestplanshow.Groups,shoetestplanshow.type,shoetest' +
        'Detail.ywsm) Cutting on Cutting.Groups=shoetestplan.Groups'#9'and C' +
        'utting.ywsm=shoetestDetail.ywsm and shoetestplanshow.type=Cuttin' +
        'g.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDe' +
        'tail.ywsm,sum(shoetest2.qty) Stitchinging  from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      #9'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      #9'where  stitchingDate is null or stitchingDate='#39#39
      
        #9'group by shoetestplanshow.Groups,shoetestplanshow.type,shoetest' +
        'Detail.ywsm) Stitchinging on Stitchinging.Groups=shoetestplan.Gr' +
        'oups and Stitchinging.ywsm=shoetestDetail.ywsm and shoetestplans' +
        'how.type=Stitchinging.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDe' +
        'tail.ywsm,sum(shoetest2.qty) Assemblying  from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      #9'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      #9' where  Assemblecomplete is null or Assemblecomplete='#39#39
      
        #9'group by shoetestplanshow.Groups,shoetestplanshow.type,shoetest' +
        'Detail.ywsm) Assemblying on Assemblying.Groups=shoetestplan.Grou' +
        'ps and Assemblying.ywsm=shoetestDetail.ywsm and shoetestplanshow' +
        '.type=Assemblying.type'#9
      'left join ('
      
        #9'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDe' +
        'tail.ywsm,sum(shoetest2.qty) Packinging  from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      #9'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      #9' where  Complete is null or Complete='#39#39
      
        #9'group by shoetestplanshow.Groups,shoetestplanshow.type,shoetest' +
        'Detail.ywsm) Packinging on Packinging.Groups=shoetestplan.Groups' +
        ' and Packinging.ywsm=shoetestDetail.ywsm and shoetestplanshow.ty' +
        'pe=Packinging.type'
      'left join ('
      
        #9'select shoetestplanshow.Groups,shoetestplanshow.type,shoetestDe' +
        'tail.ywsm,sum(shoetest2.qty) PackingOK  from shoetestplanshow'
      
        #9'left join shoetestplan on shoetestplan.groups=shoetestplanshow.' +
        'groups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      #9'left join shoetest on shoetest.testno=shoetestplan.testno'
      #9'left join shoetest2 on shoetest2.testno=shoetestplan.testno'
      #9'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      #9' where  Complete is not null or Complete<>'#39#39
      
        #9'group by shoetestplanshow.Groups,shoetestplanshow.type,shoetest' +
        'Detail.ywsm) PackingOK on PackingOK.Groups=shoetestplan.Groups'#9' ' +
        'and PackingOK.ywsm=shoetestDetail.ywsm and shoetestplanshow.type' +
        '=PackingOK.type'
      
        'group by shoetestplanshow.groups,shoetestplanshow.type,shoetestD' +
        'etail.ywsm,Cutting.Cutting,Stitchinging.Stitchinging,Assemblying' +
        '.Assemblying,Packinging.Packinging,PackingOK.PackingOK'
      ')main   where 1=2 group by GROUPS,ywsm')
    Left = 484
    Top = 379
    object SampleStatusQryGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object SampleStatusQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object SampleStatusQrytotalQty: TFloatField
      FieldName = 'totalQty'
    end
    object SampleStatusQryCutting: TFloatField
      FieldName = 'Cutting'
    end
    object SampleStatusQryStitchinging: TFloatField
      FieldName = 'Stitchinging'
    end
    object SampleStatusQryPackinging: TFloatField
      FieldName = 'Packinging'
    end
    object SampleStatusQryAssemblying: TFloatField
      FieldName = 'Assemblying'
    end
    object SampleStatusQryPackingOK: TFloatField
      FieldName = 'PackingOK'
    end
  end
  object SampleStatusDS: TDataSource
    DataSet = SampleStatusQry
    Left = 516
    Top = 387
  end
  object SampleQryExcel: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select shoetestplan.Groups,shoetest.Article,shoetestplan.Testno ' +
        ','
      
        'case when shoetestplan.Testno <> isnull(shoetest.Testno,'#39'NOTB'#39') ' +
        'then '#39'TB problem'#39'  when shoetestplan.Testno = shoetest.Testno th' +
        'en '#39'TB OK'#39' end TBStatus'
      
        ',shoetest.preparationDate CutMaterialOK,shoetest.FirstMatOutDate' +
        ' CutMaterialGet,shoetest.cutdate CuttingOK,'
      
        'shoetest.S_material StitchingMaterialOK,shoetest.StitchingPhuFin' +
        'ishDate StitchingMaterialGet,shoetest.stitchingDate stitchingOK,'
      
        'shoetest.lace_send PackingMaterialOK,shoetest.lace_get PackingMa' +
        'terialGet,shoetest.Complete PackingOK from shoetestplanshow'
      
        'left join shoetestplan on shoetestplan.groups=shoetestplanshow.g' +
        'roups  and shoetestplanshow.type=left(shoetestplan.ypdh,4)'
      'left join shoetest on shoetest.testno=shoetestplan.testno'
      '')
    Left = 332
    Top = 628
    object SampleQryExcelGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object SampleQryExcelArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SampleQryExcelTestno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object SampleQryExcelTBStatus: TStringField
      FieldName = 'TBStatus'
      FixedChar = True
      Size = 10
    end
    object SampleQryExcelCutMaterialOK: TDateTimeField
      FieldName = 'CutMaterialOK'
    end
    object SampleQryExcelCutMaterialGet: TDateTimeField
      FieldName = 'CutMaterialGet'
    end
    object SampleQryExcelCuttingOK: TDateTimeField
      FieldName = 'CuttingOK'
    end
    object SampleQryExcelStitchingMaterialOK: TDateTimeField
      FieldName = 'StitchingMaterialOK'
    end
    object SampleQryExcelStitchingMaterialGet: TDateTimeField
      FieldName = 'StitchingMaterialGet'
    end
    object SampleQryExcelstitchingOK: TDateTimeField
      FieldName = 'stitchingOK'
    end
    object SampleQryExcelPackingMaterialOK: TDateTimeField
      FieldName = 'PackingMaterialOK'
    end
    object SampleQryExcelPackingMaterialGet: TDateTimeField
      FieldName = 'PackingMaterialGet'
    end
    object SampleQryExcelPackingOK: TDateTimeField
      FieldName = 'PackingOK'
    end
  end
  object CutQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '  select * from (select ywsm,SUM(Qty) PlanningQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where cuttingPL= convert(varchar, getdate()-1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper And B' +
        'ottom(CE)'#39')'
      ')main'
      'group by ywsm)planning'
      'full outer join ('
      'select ywsm,SUM(Qty) SampleRoomQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      
        'where convert(varchar,CutDate, 111)= convert(varchar, getdate()-' +
        '1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper And B' +
        'ottom(CE)'#39')'
      ')main2'
      'group by ywsm)real on real.YWSM=planning.ywsm')
    Left = 484
    Top = 644
    object CutQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object CutQryPlanningQty: TFloatField
      FieldName = 'PlanningQty'
    end
    object CutQryywsm_1: TStringField
      FieldName = 'ywsm_1'
      FixedChar = True
      Size = 50
    end
    object CutQrySampleRoomQty: TFloatField
      FieldName = 'SampleRoomQty'
    end
  end
  object CutDS: TDataSource
    DataSet = CutQry
    Left = 516
    Top = 644
  end
  object StitchingQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from (select ywsm,SUM(Qty) PlanningQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where StitchingPL= convert(varchar, getdate()-1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper And Bottom(CE)'#39')'
      ')main'
      'group by ywsm)planning'
      'full outer join ('
      'select ywsm,SUM(Qty) SampleRoomQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      
        'where convert(varchar,StitchingDate, 111)= convert(varchar, getd' +
        'ate()-1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper And Bottom(CE)'#39')'
      ')main2'
      'group by ywsm)real on real.YWSM=planning.ywsm')
    Left = 676
    Top = 668
    object StringField1: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'PlanningQty'
    end
    object StringField2: TStringField
      FieldName = 'ywsm_1'
      FixedChar = True
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'SampleRoomQty'
    end
  end
  object StitchingDS: TDataSource
    DataSet = StitchingQry
    Left = 716
    Top = 676
  end
  object AssemblyQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from (select ywsm,SUM(Qty) PlanningQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where AssemblyPL= convert(varchar, getdate()-1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper ' +
        'And Bottom(CE)'#39')'
      ')main'
      'group by ywsm)planning'
      'full outer join ('
      'select ywsm,SUM(Qty) SampleRoomQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      'left join kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      
        'where convert(varchar,Assemblecomplete, 111)= convert(varchar, g' +
        'etdate()-1, 111)'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper ' +
        'And Bottom(CE)'#39')'
      ')main2'
      'group by ywsm)real on real.YWSM=planning.ywsm')
    Left = 1084
    Top = 740
    object StringField3: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object FloatField3: TFloatField
      FieldName = 'PlanningQty'
    end
    object StringField4: TStringField
      FieldName = 'ywsm_1'
      FixedChar = True
      Size = 50
    end
    object FloatField4: TFloatField
      FieldName = 'SampleRoomQty'
    end
  end
  object AssemblyDS: TDataSource
    DataSet = AssemblyQry
    Left = 1116
    Top = 740
  end
  object PackingQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select * from (select ywsm,SUM(Qty) PackingQry from ('
      
        'select complete,ShoeTestPlan.Serino,shoetestplan.groups,shoetest' +
        'plan.groups2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      
        'left join (SELECT DEVCODE,kflx FROM kfxxzl GROUP BY DEVCODE,kflx' +
        ' )kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where 1=2'
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper ' +
        'And Bottom(CE)'#39')'
      ')main'
      'group by ywsm)real'
      '')
    Left = 1364
    Top = 740
    object PackingQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object PackingQryPackingQry: TFloatField
      FieldName = 'PackingQry'
    end
  end
  object PackingDS: TDataSource
    DataSet = PackingQry
    Left = 1396
    Top = 740
  end
  object Cutting_Daily_: TQuery
    DatabaseName = 'DB'
    Left = 1180
    Top = 187
  end
  object Stitching_Daily_: TQuery
    DatabaseName = 'DB'
    Left = 1220
    Top = 187
  end
  object Assembly_Daily_: TQuery
    DatabaseName = 'DB'
    Left = 1260
    Top = 187
  end
  object Packing_Daily_: TQuery
    DatabaseName = 'DB'
    Left = 1300
    Top = 187
  end
  object R1_R4_PC_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) R1' +
        '_R4_PC,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD01'#39','#39'MD06'#39','#39'MD08'#39') and left' +
        '(shoetest.YPDH,4) in ('#39'LAIK'#39','#39'BYIK'#39','#39'SKXK'#39','#39'CBYK'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 27
    Top = 186
    object R1_R4_PC_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object R1_R4_PC_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object R1_R4_PC_R1_R4_PC: TFloatField
      FieldName = 'R1_R4_PC'
    end
    object R1_R4_PC_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object R1_R4_PC_DS: TDataSource
    DataSet = R1_R4_PC_
    Left = 27
    Top = 155
  end
  object R2_R3_ADD_WearFitTest_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) R2' +
        '_R3_ADD_WearFitTest,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD01'#39','#39'MD03'#39','#39'MD04'#39') and left' +
        '(shoetest.YPDH,4) in ('#39'LAIV'#39','#39'BYIV'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 494
    Top = 318
    object R2_R3_ADD_WearFitTest_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object R2_R3_ADD_WearFitTest_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object R2_R3_ADD_WearFitTest_R2_R3_ADD_WearFitTest: TFloatField
      FieldName = 'R2_R3_ADD_WearFitTest'
    end
    object R2_R3_ADD_WearFitTest_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object R2_R3_ADD_WearFitTest_DS: TDataSource
    DataSet = R2_R3_ADD_WearFitTest_
    Left = 582
    Top = 310
  end
  object MST_EXT_FSR_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) MS' +
        'T_EXT_FSR,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD07'#39') and left(shoetest.YPDH' +
        ',4) in ('#39'LAIT'#39','#39'BYIT'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 1022
    Top = 158
    object MST_EXT_FSR_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object MST_EXT_FSR_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object MST_EXT_FSR_MST_EXT_FSR: TFloatField
      FieldName = 'MST_EXT_FSR'
    end
    object MST_EXT_FSR_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object SEE_Pullover_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) SE' +
        'E_Pullover,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD15'#39') and left(shoetest.YPDH' +
        ',4) in ('#39'LAIK'#39','#39'BYIK'#39','#39'SKXK'#39','#39'CBYK'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 86
    Top = 478
    object SEE_Pullover_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object SEE_Pullover_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object SEE_Pullover_SEE_Pullover: TFloatField
      FieldName = 'SEE_Pullover'
    end
    object SEE_Pullover_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object QUV_OtherTest_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) QU' +
        'V_OtherTest,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where convert(varchar,shoetest.SQTBOKTime,111) between '#39'2022/01/' +
        '01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD02'#39','#39'MD13'#39','#39'MD14'#39') and left' +
        '(shoetest.YPDH,4)  in ('#39'LAIK'#39','#39'BYIK'#39','#39'SKXK'#39','#39'CBYK'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 606
    Top = 374
    object QUV_OtherTest_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object QUV_OtherTest_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object QUV_OtherTest_QUV_OtherTest: TFloatField
      FieldName = 'QUV_OtherTest'
    end
    object QUV_OtherTest_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object Shoe_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) Sh' +
        'oe,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD09'#39','#39'MD05'#39','#39'MD11'#39','#39'MD16'#39') a' +
        'nd left(shoetest.YPDH,4)  in ('#39'LAIK'#39','#39'BYIK'#39','#39'SKXK'#39','#39'CBYK'#39')'
      '      and shoetest2.parts in ('#39'BW01'#39','#39'BW10'#39')'
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 1014
    Top = 422
    object Shoe_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object Shoe_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object Shoe_Shoe: TFloatField
      FieldName = 'Shoe'
    end
    object Shoe_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object half_: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.testno,shoetest.SQTBOKTime,sum(shoetest2.qty) Ha' +
        'lf,parts.ywsm from shoetest'
      'left join shoetest2 on shoetest2.TestNo=shoetest.TestNo'
      
        'left join shoetestdetail on shoetestdetail.YYBH=shoetest2.DepNam' +
        'e'
      'left join shoetestdetail parts on parts.YYBH=shoetest2.parts'
      
        'where 1=2 and convert(varchar,shoetest.SQTBOKTime,111) between '#39 +
        '2022/01/01'#39' and  '#39'2022/01/31'#39' '
      
        '      and shoetestdetail.YYBH in ('#39'MD09'#39','#39'MD05'#39','#39'MD11'#39','#39'MD16'#39') a' +
        'nd left(shoetest.YPDH,4)  in ('#39'LAIK'#39','#39'BYIK'#39','#39'SKXK'#39','#39'CBYK'#39')'
      '      and shoetest2.parts not in ('#39'BW01'#39','#39'BW10'#39') '
      'group by shoetest.testno,shoetest.SQTBOKTime,parts.ywsm '
      'order by shoetest.SQTBOKTime')
    Left = 174
    Top = 790
    object half_testno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object half_SQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object half_Half: TFloatField
      FieldName = 'Half'
    end
    object half_ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
  end
  object MST_EXT_FSR_DS: TDataSource
    DataSet = MST_EXT_FSR_
    Left = 1022
    Top = 190
  end
  object SEE_Pullover_DS: TDataSource
    DataSet = SEE_Pullover_
    Left = 86
    Top = 518
  end
  object QUV_OtherTest_DS: TDataSource
    DataSet = QUV_OtherTest_
    Left = 638
    Top = 374
  end
  object Shoe_DS: TDataSource
    DataSet = Shoe_
    Left = 1014
    Top = 462
  end
  object half_DS: TDataSource
    DataSet = half_
    Left = 214
    Top = 790
  end
  object DS_HO: TDataSource
    DataSet = QHO
    Left = 60
    Top = 155
  end
  object QHO: TQuery
    OnCalcFields = QHOCalcFields
    DatabaseName = 'DB'
    SessionName = 'Default'
    SQL.Strings = (
      'SELECT Date, GXLB'
      ', SUM(CASE WHEN Hour = 7 THEN Qty END) AS '#39'7h30-8h30'#39
      ', SUM(CASE WHEN Hour = 8 THEN Qty END) AS '#39'8h30-9h30'#39
      ', SUM(CASE WHEN Hour = 9 THEN Qty END) AS '#39'9h30-10h30'#39
      ', SUM(CASE WHEN Hour = 10 THEN Qty END) AS '#39'10h30-11h30'#39
      ', SUM(CASE WHEN Hour = 11 THEN Qty END) AS '#39'11h30-12h30'#39
      ', SUM(CASE WHEN Hour = 12 THEN Qty END) AS '#39'12h30-13h30'#39
      ', SUM(CASE WHEN Hour = 13 THEN Qty END) AS '#39'13h30-14h30'#39
      ', SUM(CASE WHEN Hour = 14 THEN Qty END) AS '#39'14h30-15h30'#39
      ', SUM(CASE WHEN Hour = 15 THEN Qty END) AS '#39'15h30-16h30'#39
      ', SUM(CASE WHEN Hour = 16 THEN Qty END) AS '#39'16h30-17h30'#39
      ', SUM(CASE WHEN Hour = 17 THEN Qty END) AS '#39'17h30-18h30'#39
      ', SUM(CASE WHEN Hour = 18 THEN Qty END) AS '#39'18h30-19h30'#39
      ', SUM(CASE WHEN Hour = 19 THEN Qty END) AS '#39'19h30-20h30'#39
      ', SUM(CASE WHEN Hour = 20 THEN Qty END) AS '#39'20h30-21h30'#39
      'FROM ('
      '  SELECT * FROM ('
      
        '    SELECT CONVERT(VARCHAR, ShoeTest.CutDate, 111) AS Date, DATE' +
        'PART(HH, DATEADD(MI, -30, ShoeTest.CutDate)) AS Hour, '#39'Cutting'#39' ' +
        'AS GXLB, shoetest2.Qty FROM ShoeTest'
      '    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo'
      
        '    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.' +
        'Parts'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.CutDa' +
        'te, 111)) BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' '
      
        '    AND YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ShoeTest.StitchingDate, 111) AS Date' +
        ', DATEPART(HH, DATEADD(MI, -30, ShoeTest.StitchingDate)) AS Hour' +
        ', '#39'Stitching'#39' AS GXLB, shoetest2.Qty FROM ShoeTest'
      '    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo'
      
        '    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.' +
        'Parts'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.Stitc' +
        'hingDate, 111)) BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' '
      
        '    AND YWSM IN ('#39'Finished Shoe'#39', '#39'Half Stitching Upper'#39', '#39'Stitc' +
        'hing Upper'#39', '#39'Lasted upper'#39', '#39'Upper Component'#39', '#39'CFM sample'#39', '#39'U' +
        'pper And Bottom(CE)'#39')'
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ShoeTest.AssembiyDate, 111) AS Date,' +
        ' DATEPART(HH, DATEADD(MI, -30, ShoeTest.AssembiyDate)) AS Hour, ' +
        #39'Assembly'#39' AS GXLB, shoetest2.Qty FROM ShoeTest'
      '    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo'
      
        '    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.' +
        'Parts'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.Assem' +
        'biyDate, 111)) BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' '
      
        '    AND YWSM IN ('#39'Finished Shoe'#39', '#39'Lasted upper'#39', '#39'CFM sample'#39', ' +
        #39'Upper And Bottom(CE)'#39')'
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ShoeTest.Complete, 111) AS Date, DAT' +
        'EPART(HH, DATEADD(MI, -30, ShoeTest.Complete)) AS Hour, '#39'Packing' +
        #39' AS GXLB, shoetest2.Qty FROM ShoeTest'
      '    LEFT JOIN ShoeTest2 ON ShoeTest2.TestNo = ShoeTest.TestNo'
      
        '    LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.' +
        'Parts'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ShoeTest.Compl' +
        'ete, 111)) BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' '
      
        '    AND YWSM IN ('#39'Finished Shoe'#39', '#39'CFM sample'#39', '#39'Upper And Botto' +
        'm(CE)'#39')'
      '  ) AS Sample'
      '  UNION ALL'
      '  SELECT * FROM ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Cutting'#39' AS GXLB, CBY_Ord' +
        'ers.total AS Qty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND GXLB = '#39'C'#39
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Stitching'#39' AS GXLB, CBY_O' +
        'rders.total AS Qty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND GXLB = '#39'S'#39
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Assembly'#39' AS GXLB, CBY_Or' +
        'ders.total AS Qty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND GXLB = '#39'A'#39
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Packing'#39' AS GXLB, CBY_Ord' +
        'ers.total AS Qty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND GXLB = '#39'I'#39
      '  ) AS CBY'
      '  UNION ALL'
      '  SELECT * FROM ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Cutting'#39' AS GXLB, SMDDSS.' +
        'Qty*SMDDSS.CTS AS Qty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND DepNO = '#39'A12050101'#39
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Stitching'#39' AS GXLB, SMDDS' +
        'S.Qty*SMDDSS.CTS AS Qty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND DepNO = '#39'A12050201'#39
      '    UNION ALL'
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, DATEPART(HH,' +
        ' DATEADD(MI, -30, ScanDate)) AS Hour, '#39'Assembly'#39' AS GXLB, SMDDSS' +
        '.Qty*SMDDSS.CTS AS Qty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN '#39'2022/08/03'#39' AND '#39'2022/08/03'#39' AND DepNO = '#39'A12050301'#39
      '  ) AS MassProduction'
      ') AS Output'
      'GROUP BY Date, GXLB'
      
        'ORDER BY Date DESC, CASE WHEN GXLB = '#39'Cutting'#39' THEN 1 ELSE CASE ' +
        'WHEN GXLB = '#39'Stitching'#39' THEN 2 ELSE CASE WHEN GXLB = '#39'Assembly'#39' ' +
        'THEN 3 ELSE CASE WHEN GXLB = '#39'Packing'#39' THEN 4 END END END END')
    Left = 60
    Top = 186
    object QHODate: TStringField
      FieldName = 'Date'
      FixedChar = True
      Size = 30
    end
    object QHOGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 9
    end
    object QHOBDEDesigner7h308h30: TFloatField
      FieldName = '7h30-8h30'
    end
    object QHOBDEDesigner8h309h30: TFloatField
      FieldName = '8h30-9h30'
    end
    object QHOBDEDesigner9h3010h30: TFloatField
      FieldName = '9h30-10h30'
    end
    object QHOBDEDesigner10h3011h30: TFloatField
      FieldName = '10h30-11h30'
    end
    object QHOBDEDesigner11h3012h30: TFloatField
      FieldName = '11h30-12h30'
    end
    object QHOBDEDesigner12h3013h30: TFloatField
      FieldName = '12h30-13h30'
    end
    object QHOBDEDesigner13h3014h30: TFloatField
      FieldName = '13h30-14h30'
    end
    object QHOBDEDesigner14h3015h30: TFloatField
      FieldName = '14h30-15h30'
    end
    object QHOBDEDesigner15h3016h30: TFloatField
      FieldName = '15h30-16h30'
    end
    object QHOBDEDesigner16h3017h30: TFloatField
      FieldName = '16h30-17h30'
    end
    object QHOBDEDesigner17h3018h30: TFloatField
      FieldName = '17h30-18h30'
    end
    object QHOBDEDesigner18h3019h30: TFloatField
      FieldName = '18h30-19h30'
    end
    object QHOBDEDesigner19h3020h30: TFloatField
      FieldName = '19h30-20h30'
    end
    object QHOTotal: TFloatField
      FieldName = 'Total'
    end
    object QHOSeq: TFloatField
      FieldName = 'Seq'
    end
    object QHOHourS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'HourS'
      Calculated = True
    end
  end
  object DS_3days: TDataSource
    DataSet = Q3days
    Left = 228
    Top = 139
  end
  object Q3days: TQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    SQL.Strings = (
      ''
      'select * from ('
      
        'SELECT top 3 '#39'Cutting'#39' Part,'#39'1'#39' serino,CONVERT(varchar, CuttingP' +
        'lan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OKQt' +
        'y, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2) a' +
        's numeric(5,2)))+'#39'%'#39' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.Warehouse, convert(varchar,main.CuttingPlan, 111)' +
        ' AS CuttingPlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(varc' +
        'har,main.CuttingOK, 111) AS CuttingOK,'
      
        '  case when cuttingOK is null then  0 else isnull(SQplan.Qty,0) ' +
        'end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'PreparationDate Warehouse,CutDate_first CuttingPlan,CutDate Cutt' +
        'ingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, CutDate_first, 111) between convert(' +
        'varchar, getdate()-7, 111) and convert(varchar, getdate()-1, 111' +
        ')'
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
      'group by CuttingPlan order by CuttingPlan desc )cutting'
      'union'
      'select * from ('
      
        'SELECT top 3 '#39'Stitching'#39' Part,'#39'2'#39' serino,CONVERT(varchar, Stitch' +
        'ingPlan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS ' +
        'OKQty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,' +
        '2) as numeric(5,2)))+'#39'%'#39' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 11' +
        '1) AS StitchingPlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(' +
        'varchar,main.StitchingOK, 111) AS StitchingOK,'
      
        '  case when StitchingOK is null then  0 else isnull(SQplan.Qty,0' +
        ') end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDat' +
        'e StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate_first, 111) between co' +
        'nvert(varchar, getdate()-7, 111) and convert(varchar, getdate()-' +
        '1, 111)'
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
      'group by StitchingPlan order by StitchingPlan desc  )stitching'
      'union'
      'select * from ('
      
        'SELECT top 3 '#39'Assemble'#39' Part,'#39'3'#39' serino,CONVERT(varchar, Assembl' +
        'ePlan,111) AS _Plan, SUM(SQplanQty) AS PlanQty, SUM(OKqty) AS OK' +
        'Qty, convert(varchar,cast(ROUND(SUM(OKqty)/SUM(SQplanQty)*100,2)' +
        ' as numeric(5,2)))+'#39'%'#39' Complete FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.StitchingOK, convert(varchar,main.AssemblePlan, 1' +
        '11) AS AssemblePlan, isnull(SQplan.Qty,0) AS SQplanQty, convert(' +
        'varchar,main.AssembleOK, 111) AS AssembleOK,'
      
        '  case when AssembleOK is null then  0 else isnull(SQplan.Qty,0)' +
        ' end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'StitchingDate StitchingOK,AssembiyDate_first AssemblePlan,Assemb' +
        'lecomplete AssembleOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, AssembiyDate_first, 111) between con' +
        'vert(varchar, getdate()-7, 111) and convert(varchar, getdate()-1' +
        ', 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2 '
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts '
      
        '    where  YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39',' +
        #39'Upper And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS SQplan on SQplan.TestNo=main.testno'
      ') AS main2 '
      'group by AssemblePlan order by AssemblePlan desc  )assemble'
      'order by _plan desc,serino '
      ''
      ''
      ''
      '')
    Left = 228
    Top = 186
    object Q3daysPart: TStringField
      FieldName = 'Part'
      FixedChar = True
      Size = 9
    end
    object Q3daysserino: TStringField
      FieldName = 'serino'
      FixedChar = True
      Size = 1
    end
    object Q3days_Plan: TStringField
      FieldName = '_Plan'
      FixedChar = True
      Size = 30
    end
    object Q3daysPlanQty: TFloatField
      FieldName = 'PlanQty'
    end
    object Q3daysOKQty: TFloatField
      FieldName = 'OKQty'
    end
    object Q3daysComplete: TStringField
      FieldName = 'Complete'
      FixedChar = True
      Size = 31
    end
  end
  object DS_Delay: TDataSource
    DataSet = QDelay
    Left = 300
    Top = 139
  end
  object QDelay: TQuery
    DatabaseName = 'DB'
    SessionName = 'Default'
    SQL.Strings = (
      
        'SELECT '#39'1'#39' serino,'#39'Cutting'#39' Part,main.TestNo, main.Groups, main.' +
        'Serino,SQplan.Qty  ,TBDelayReason.PartE ,TBDelayReason.ReasonE ,' +
        'Plantime,OKtime FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.PreparationDate AS WarehouseOK, ShoeT' +
        'est.CutDate_first AS Plantime, ShoeTest.CutDate AS OKtime FROM S' +
        'hoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.CutDate_first, 111) BETWEEN CO' +
        'NVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetDate()-' +
        '1, 111) '
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
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'C'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'where PartE is not null'
      'union'
      
        'SELECT '#39'2'#39' serino,'#39'Stitching'#39' Part,main.TestNo, main.Groups, mai' +
        'n.Serino,SQplan.Qty  ,TBDelayReason.PartE ,TBDelayReason.ReasonE' +
        ' ,Plantime,OKtime FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.Cutdate AS CuttingOK,shoetest.S_mater' +
        'ial SMatOK,shoetest.StitchingPhuFinishDate SMatGet, ShoeTest.Sti' +
        'tchingDate_first AS Plantime, ShoeTest.StitchingDate AS OKtime F' +
        'ROM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.StitchingDate_first, 111) BETW' +
        'EEN CONVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetD' +
        'ate()-1, 111) '
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
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'S'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'where PartE is not null'
      'union'
      
        'SELECT '#39'3'#39' serino,'#39'Assembly'#39' Part,main.TestNo, main.Groups, main' +
        '.Serino,SQplan.Qty ,TBDelayReason.PartE ,TBDelayReason.ReasonE ,' +
        'Plantime,OKtime FROM ('
      
        '  SELECT Groups, SeriNo, ShoeTest.TestNo, ShoeTest.Stage, ShoeTe' +
        'st.Article AS SR, ShoeTest.StitchingDate AS StitchingOK,shoetest' +
        '.insole_send AMatOk,shoetest.insole_get AMatGet, ShoeTest.Assemb' +
        'iyDate_first AS Plantime, ShoeTest.Assemblecomplete AS OKtime FR' +
        'OM ShoeTest'
      
        '  LEFT JOIN ShoeTestPlan ON ShoeTestPlan.TestNo = ShoeTest.TestN' +
        'o'
      
        '  WHERE CONVERT(VARCHAR, ShoeTest.AssembiyDate_first, 111) BETWE' +
        'EN CONVERT(VARCHAR, GetDate()-3, 111) AND CONVERT(VARCHAR, GetDa' +
        'te()-1, 111) '
      ') AS main'
      'LEFT JOIN ('
      '  SELECT ShoeTest2.TestNo, SUM(Qty) AS Qty FROM ShoeTest2 '
      
        '  LEFT JOIN ShoeTestDetail ON ShoeTestDetail.YYBH = ShoeTest2.Pa' +
        'rts '
      
        '  WHERE YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Up' +
        'per And Bottom(CE)'#39')'
      '  GROUP BY ShoeTest2.TestNo'
      ') AS SQplan ON SQplan.TestNo = main.TestNo'
      'LEFT JOIN ('
      
        '   SELECT TestNo,DP,DR,Part.YWSM,Part.VWSM PartV,Part.ZWSM PartC' +
        ',Part.YWSM PartE,Reason.VWSM ReasonV,Reason.ZWSM ReasonC,Reason.' +
        'YWSM ReasonE from ShoetestDelay'
      
        '   LEFT JOIN ShoeTestDetail Part ON Part.YYBH = ShoetestDelay.DP' +
        ' '
      
        '   LEFT JOIN ShoeTestDetail Reason ON Reason.YYBH = ShoetestDela' +
        'y.DR '
      '   where ShoetestDelay.GXLB='#39'A'#39
      ') AS TBDelayReason ON TBDelayReason.TestNo = main.TestNo'
      'order by OKtime ,serino'
      '')
    Left = 300
    Top = 186
    object QDelayserino: TStringField
      FieldName = 'serino'
      FixedChar = True
      Size = 1
    end
    object QDelayPart: TStringField
      FieldName = 'Part'
      FixedChar = True
      Size = 9
    end
    object QDelayTestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object QDelayGroups: TStringField
      FieldName = 'Groups'
      FixedChar = True
      Size = 6
    end
    object QDelaySerino_1: TIntegerField
      FieldName = 'Serino_1'
    end
    object QDelayQty: TFloatField
      FieldName = 'Qty'
    end
    object QDelayPartE: TStringField
      FieldName = 'PartE'
      FixedChar = True
      Size = 50
    end
    object QDelayReasonE: TStringField
      FieldName = 'ReasonE'
      FixedChar = True
      Size = 50
    end
    object QDelayPlantime: TDateTimeField
      FieldName = 'Plantime'
    end
    object QDelayOKtime: TDateTimeField
      FieldName = 'OKtime'
    end
  end
  object Rate: TQuery
    DatabaseName = 'dB'
    SessionName = 'Default'
    SQL.Strings = (
      ''
      
        'select '#39'1'#39' serino,Date,'#39'Cutting'#39' Process,Sample,CBY,MassProducti' +
        'on,Total, convert(varchar,cast(ROUND(Total/1500*100,2) as numeri' +
        'c(5,2)))+'#39'%'#39' Complete from ('
      
        'select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39')'
      
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
        'r, getdate()-7, 111) and convert(varchar, getdate(), 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2'
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    where YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2'
      'group by CuttingOK)sample'
      'full outer join ('
      
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
      '    )main  group by Date order by date desc)Cutting'
      'union'
      
        'select '#39'2'#39' Serino,Date,'#39'Stitching'#39' Process,Sample,CBY,MassProduc' +
        'tion,Total, convert(varchar,cast(ROUND(Total/1500*100,2) as nume' +
        'ric(5,2)))+'#39'%'#39' Complete from ('
      
        'select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39')'
      
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
        'varchar, getdate()-7, 111) and convert(varchar, getdate(), 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2'
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2'
      'group by StitchingOK)sample'
      'full outer join ('
      
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
      '    )main  group by Date order by date desc)Stitching'
      'union'
      ''
      ''
      
        'select '#39'3'#39' Serino,Date,'#39'Assembling'#39' Process,Sample,CBY,MassProdu' +
        'ction,Total, convert(varchar,cast(ROUND(Total/1500*100,2) as num' +
        'eric(5,2)))+'#39'%'#39' Complete from ('
      
        'select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39')'
      
        'when isnull(CONVERT(varchar,CBYQty.Date),'#39#39')<>'#39#39' then isnull(CON' +
        'VERT(varchar,CBYQty.Date),'#39#39')'
      
        'else isnull(CONVERT(varchar,MassProductionQty.Date),'#39#39')  end Dat' +
        'e,'
      
        'isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProdu' +
        'ctionQty,0) MassProduction,'
      
        'isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,' +
        '0) Total   from ('
      
        'SELECT CONVERT(VARCHAR, AssembleOK ,111) AS date, SUM(sampleqty)' +
        ' AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article,  convert(varchar,main.AssembleOK, 111) AS AssembleOK, ' +
        'isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'Assemblecomplete AssembleOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, Assemblecomplete, 111) between conve' +
        'rt(varchar, getdate()-7, 111) and convert(varchar, getdate(), 11' +
        '1)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2'
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    where  YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39',' +
        #39'Upper And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2'
      'group by AssembleOK)sample'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'A'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050301'#39' AND GXLB = '#39'A'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty o' +
        'n MassProductionQty.Date=sample.date'
      '    )main  group by Date order by date desc)Assembling'
      '    '
      '    '
      'union'
      ''
      ''
      
        'select '#39'4'#39' Serino,Date,'#39'Packing'#39' Process,Sample,CBY,MassProducti' +
        'on,total, convert(varchar,cast(ROUND(Total/1500*100,2) as numeri' +
        'c(5,2)))+'#39'%'#39' Complete from ('
      
        'select top 2 Date,SUM(Sample) Sample,SUM(CBY) CBY,SUM(MassProduc' +
        'tion) MassProduction,SUM(TOTal) Total from ('
      
        'select case when isnull(CONVERT(varchar,sample.date),'#39#39') <>'#39#39' th' +
        'en isnull(CONVERT(varchar,sample.Date),'#39#39')'
      
        'when isnull(CONVERT(varchar,CBYQty.Date),'#39#39')<>'#39#39' then isnull(CON' +
        'VERT(varchar,CBYQty.Date),'#39#39')'
      
        'else isnull(CONVERT(varchar,MassProductionQty.Date),'#39#39')  end Dat' +
        'e,'
      
        'isnull(SampleQty,0) Sample,isnull(CBYQty,0) CBY,isnull(MassProdu' +
        'ctionQty,0) MassProduction,'
      
        'isnull(SampleQty,0) +isnull(CBYQty,0) +isnull(MassProductionQty,' +
        '0) Total   from ('
      
        'SELECT CONVERT(VARCHAR, AssembleOK ,111) AS date, SUM(sampleqty)' +
        ' AS SampleQty FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article,  convert(varchar,main.AssembleOK, 111) AS AssembleOK, ' +
        'isnull(sample.Qty,0) AS sampleQty'
      '   from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'Complete AssembleOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, Complete, 111) between convert(varch' +
        'ar, getdate()-7, 111) and convert(varchar, getdate(), 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2'
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    where  YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39',' +
        #39'Upper And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS sample on sample.TestNo=main.testno'
      ') AS main2'
      'group by AssembleOK)sample'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date,  sum(CBY_Ord' +
        'ers.total) AS CBYQty FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND GXLB = '#39'A'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))CBYQty on CBYQty.da' +
        'te=sample.date'
      'full outer join ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS Date, sum(SMDDSS.Q' +
        'ty*SMZL.CTS) AS MassProductionQty FROM SMZL'
      '    LEFT JOIN SMDDSS ON SMDDSS.CODEBAR = SMZL.CODEBAR'
      
        '    WHERE CONVERT(SmallDateTime, CONVERT(VARCHAR, ScanDate, 111)' +
        ') BETWEEN convert(varchar, getdate()-7, 111) and convert(varchar' +
        ', getdate(), 111) AND DepNO = '#39'A12050301'#39' AND GXLB = '#39'A'#39
      
        '    group by CONVERT(VARCHAR, ScanDate, 111))MassProductionQty o' +
        'n MassProductionQty.Date=sample.date'
      '    )main  group by Date order by date desc)Packing'
      '    where date ='#39'2022/11/16'#39
      'order by Date'
      ''
      '')
    Left = 352
    Top = 191
    object RateDate: TStringField
      FieldName = 'Date'
      FixedChar = True
      Size = 30
    end
    object RateProcess: TStringField
      FieldName = 'Process'
      FixedChar = True
      Size = 10
    end
    object RateSample: TFloatField
      FieldName = 'Sample'
    end
    object RateCBY: TIntegerField
      FieldName = 'CBY'
    end
    object RateMassProduction: TIntegerField
      FieldName = 'MassProduction'
    end
    object RateTotal: TFloatField
      FieldName = 'Total'
    end
    object RateComplete: TStringField
      FieldName = 'Complete'
      FixedChar = True
      Size = 31
    end
    object Rateserino: TStringField
      FieldName = 'serino'
      FixedChar = True
      Size = 1
    end
  end
  object DS_Rate: TDataSource
    DataSet = Rate
    Left = 356
    Top = 147
  end
  object Qtmp: TQuery
    DatabaseName = 'dB'
    Left = 861
    Top = 402
  end
  object CBY_Paking: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'IF OBJECT_ID('#39'tempdb..#Progress'#39') IS NOT NULL'
      'BEGIN DROP TABLE #Progress END'
      'DECLARE @StartDate DateTime'
      'DECLARE @EndDate DateTime'
      'DECLARE @PreviousDate DateTime'
      'SET @StartDate = '#39'2023/11/01'#39
      'SET @EndDate = '#39'2023/11/01'#39
      
        'SET @PreviousDate = CASE WHEN DATEPART(DW, @StartDate - 1) <> 1 ' +
        'THEN'
      '                    CONVERT(VARCHAR, @StartDate - 1, 111) ELSE'
      '                    CONVERT(VARCHAR, @StartDate - 2, 111) END'
      'WITH TEMPTAB(DATE) AS ('
      '  SELECT @PreviousDate'
      '  UNION ALL'
      '  SELECT DATEADD(D, 1, TEMPTAB.DATE) AS DATE FROM TEMPTAB'
      '  WHERE DATEADD(D, 1, TEMPTAB.DATE) <= @EndDate'
      ')'
      
        'SELECT DateRange.Date, '#39'CBY'#39' AS Type, ISNULL(APacking, 0) AS APa' +
        'cking,'
      
        'ISNULL(TCutting, 0) AS TCutting, ISNULL(ACutting, 0) AS ACutting' +
        ','
      
        'ISNULL(TStitching, 0) AS TStitching, ISNULL(AStitching, 0) AS AS' +
        'titching,'
      
        'ISNULL(TAssembly, 0) AS TAssembly, ISNULL(AAssembly, 0) AS AAsse' +
        'mbly INTO #Progress FROM ('
      '  '
      '  '
      '  SELECT CONVERT(VARCHAR, DATE, 111) AS Date FROM TEMPTAB'
      ') AS DateRange'
      'LEFT JOIN ('
      
        '  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(ACutt' +
        'ing, 0) AS ACutting, ISNULL(TCutting, 0) AS TCutting FROM TEMPTA' +
        'B'
      '  LEFT JOIN ('
      
        '    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcce' +
        'ptDate ELSE ScanCP.ScanDate END AS AcceptDate, ISNULL(SUM(total)' +
        ', 0) AS TCutting FROM CBY_Orders'
      
        '    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = ' +
        'CBY_Orders.workOrderId AND ScanCP.GXLB = '#39'CP'#39
      
        '    WHERE MasterOrder IS NOT NULL AND CASE WHEN ScanCP.workOrder' +
        'Id IS NULL THEN factoryAcceptDate ELSE ScanCP.ScanDate END BETWE' +
        'EN @PreviousDate AND @EndDate'
      
        '    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAc' +
        'ceptDate ELSE ScanCP.ScanDate END'
      '  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE'
      '  LEFT JOIN ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(S' +
        'UM(CBY_Orders.total), 0) AS ACutting FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE GXLB = '#39'C'#39' AND CONVERT(SmallDateTime, CONVERT(VARCHAR,' +
        ' ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate'
      '    GROUP BY CONVERT(VARCHAR, ScanDate, 111)'
      '  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE'
      ') AS ActualC ON ActualC.AcceptDate = DateRange.Date'
      'LEFT JOIN ('
      
        '  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(AStit' +
        'ching, 0) AS AStitching, ISNULL(TStitching, 0) AS TStitching FRO' +
        'M TEMPTAB'
      '  LEFT JOIN ('
      
        '    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcce' +
        'ptDate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPAR' +
        'T(DW, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END' +
        ' END AS AcceptDate, ISNULL(SUM(total), 0) AS TStitching FROM CBY' +
        '_Orders'
      
        '    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = ' +
        'CBY_Orders.workOrderId AND ScanCP.GXLB = '#39'CP'#39
      '    WHERE CBY_Orders.MasterOrder IS NOT NULL'
      
        '    AND CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptD' +
        'ate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(D' +
        'W, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END' +
        ' END BETWEEN @PreviousDate AND @EndDate'
      
        '    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAc' +
        'ceptDate + 1 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEP' +
        'ART(DW, factoryAcceptDate + 1) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 1 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 1) > 0 THEN 1 ELSE 0 END' +
        ' END'
      '  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE'
      '  LEFT JOIN ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(S' +
        'UM(CBY_Orders.total), 0) AS AStitching FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE GXLB = '#39'S'#39' AND CONVERT(SmallDateTime, CONVERT(VARCHAR,' +
        ' ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate'
      '    GROUP BY CONVERT(VARCHAR, ScanDate, 111)'
      '  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE'
      ') AS ActualS ON ActualS.AcceptDate = DateRange.Date'
      'LEFT JOIN ('
      
        '  SELECT CONVERT(VARCHAR, DATE, 111) AS AcceptDate, ISNULL(AAsse' +
        'mbly, 0) AS AAssembly, ISNULL(TAssembly, 0) AS TAssembly FROM TE' +
        'MPTAB'
      '  LEFT JOIN ('
      
        '    SELECT CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcce' +
        'ptDate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPAR' +
        'T(DW, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END' +
        ' END AS AcceptDate, ISNULL(SUM(total), 0) AS TAssembly FROM CBY_' +
        'Orders'
      
        '    LEFT JOIN CBY_Orders_Scan AS ScanCP ON ScanCP.workOrderId = ' +
        'CBY_Orders.workOrderId AND ScanCP.GXLB = '#39'CP'#39
      '    WHERE CBY_Orders.MasterOrder IS NOT NULL'
      
        '    AND CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAcceptD' +
        'ate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEPART(D' +
        'W, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END' +
        ' END BETWEEN @PreviousDate AND @EndDate'
      
        '    GROUP BY CASE WHEN ScanCP.workOrderId IS NULL THEN factoryAc' +
        'ceptDate + 2 + CASE WHEN DATEPART(DW, factoryAcceptDate) - DATEP' +
        'ART(DW, factoryAcceptDate + 2) > 0 THEN 1 ELSE 0 END'
      
        '    ELSE ScanCP.ScanDate + 2 + CASE WHEN DATEPART(DW, ScanCP.Sca' +
        'nDate) - DATEPART(DW, ScanCP.ScanDate + 2) > 0 THEN 1 ELSE 0 END' +
        ' END'
      '  ) AS PlanData ON PlanData.AcceptDate = TEMPTAB.DATE'
      '  LEFT JOIN ('
      
        '    SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(S' +
        'UM(CBY_Orders.total), 0) AS AAssembly FROM CBY_Orders_Scan'
      
        '    LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'Scan.workOrderId'
      
        '    WHERE GXLB = '#39'A'#39' AND CONVERT(SmallDateTime, CONVERT(VARCHAR,' +
        ' ScanDate, 111)) BETWEEN @PreviousDate AND @EndDate'
      '    GROUP BY CONVERT(VARCHAR, ScanDate, 111)'
      '  ) AS ScanData ON ScanData.ScanDate = TEMPTAB.DATE'
      ') AS ActualA ON ActualA.AcceptDate = DateRange.Date'
      'LEFT JOIN ('
      
        '  SELECT CONVERT(VARCHAR, ScanDate, 111) AS ScanDate, ISNULL(SUM' +
        '(CBY_Orders.total), 0) AS APacking FROM CBY_Orders_Scan'
      
        '  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_Sc' +
        'an.workOrderId'
      
        '  WHERE GXLB = '#39'I'#39' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, S' +
        'canDate, 111)) BETWEEN @PreviousDate AND @EndDate'
      '  GROUP BY CONVERT(VARCHAR, ScanDate, 111)'
      ') AS ActualI ON ActualI.ScanDate = DateRange.Date'
      
        'SELECT Date, Type, ISNULL(Pairs, 0) AS Pairs, ISNULL(CancelPairs' +
        ', 0) AS CancelPairs,'
      
        'TCutting + ISNULL(C, 0) AS TCutting, ACutting, CASE WHEN ISNULL(' +
        'TCutting + ISNULL(C, 0), 0) > 0 THEN ISNULL(ACutting, 0)*100.0/I' +
        'SNULL(TCutting + ISNULL(C, 0), 0) ELSE 0 END AS PCutting,'
      
        'TStitching + ISNULL(S, 0) AS TStitching, AStitching, CASE WHEN I' +
        'SNULL(TStitching + ISNULL(S, 0), 0) > 0 THEN ISNULL(AStitching, ' +
        '0)*100.0/ISNULL(TStitching + ISNULL(S, 0), 0) ELSE 0 END AS PSti' +
        'tching,'
      
        'TAssembly + ISNULL(A, 0) AS TAssembly, AAssembly, CASE WHEN ISNU' +
        'LL(TAssembly + ISNULL(A, 0), 0) > 0 THEN ISNULL(AAssembly, 0)*10' +
        '0.0/ISNULL(TAssembly + ISNULL(A, 0), 0) ELSE 0 END AS PAssembly,'
      'APacking FROM #Progress'
      'LEFT JOIN ('
      
        '  SELECT CASE WHEN DATEPART(DW, CONVERT(SmallDateTime, Date, 111' +
        ') + 1) <> 1 THEN'
      '  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 1, 111) ELSE'
      
        '  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 2, 111) END AS' +
        ' PreviousDate,'
      
        '  SUM(CASE WHEN TCutting - ACutting > 0 THEN TCutting - ACutting' +
        ' ELSE 0 END) AS C,'
      
        '  SUM(CASE WHEN TStitching - AStitching > 0 THEN TStitching - AS' +
        'titching ELSE 0 END) AS S,'
      
        '  SUM(CASE WHEN TAssembly - AAssembly > 0 THEN TAssembly - AAsse' +
        'mbly ELSE 0 END) AS A FROM #Progress'
      
        '  GROUP BY CASE WHEN DATEPART(DW, CONVERT(SmallDateTime, Date, 1' +
        '11) + 1) <> 1 THEN'
      '  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 1, 111) ELSE'
      '  CONVERT(VARCHAR, CONVERT(SmallDateTime, Date) + 2, 111) END'
      ') AS Previous ON Previous.PreviousDate = #Progress.Date'
      'LEFT JOIN ('
      
        '  SELECT factoryAcceptDate, SUM(total) AS Pairs, SUM(CASE WHEN I' +
        'SNULL(Cancel, 0) = 1 THEN total END) AS CancelPairs FROM CBY_Ord' +
        'ers'
      '  WHERE factoryAcceptDate BETWEEN @StartDate AND @EndDate'
      '  GROUP BY factoryAcceptDate'
      
        ') AS CBY_Orders ON CONVERT(VARCHAR, CBY_Orders.factoryAcceptDate' +
        ', 111) = #Progress.Date'
      
        '--WHERE CONVERT(SmallDateTime, #Progress.Date) BETWEEN @StartDat' +
        'e AND @EndDate'
      'ORDER BY Date'
      ''
      '')
    Left = 504
    Top = 531
    object CBY_PakingDate: TStringField
      FieldName = 'Date'
      FixedChar = True
      Size = 30
    end
    object CBY_PakingType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 3
    end
    object CBY_PakingPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object CBY_PakingCancelPairs: TIntegerField
      FieldName = 'CancelPairs'
    end
    object CBY_PakingTCutting: TIntegerField
      FieldName = 'TCutting'
    end
    object CBY_PakingACutting: TIntegerField
      FieldName = 'ACutting'
    end
    object CBY_PakingPCutting: TFloatField
      FieldName = 'PCutting'
    end
    object CBY_PakingTStitching: TIntegerField
      FieldName = 'TStitching'
    end
    object CBY_PakingAStitching: TIntegerField
      FieldName = 'AStitching'
    end
    object CBY_PakingPStitching: TFloatField
      FieldName = 'PStitching'
    end
    object CBY_PakingTAssembly: TIntegerField
      FieldName = 'TAssembly'
    end
    object CBY_PakingAAssembly: TIntegerField
      FieldName = 'AAssembly'
    end
    object CBY_PakingPAssembly: TFloatField
      FieldName = 'PAssembly'
    end
    object CBY_PakingAPacking: TIntegerField
      FieldName = 'APacking'
    end
  end
  object DataSource1: TDataSource
    DataSet = CBY_Paking
    Left = 552
    Top = 531
  end
end
