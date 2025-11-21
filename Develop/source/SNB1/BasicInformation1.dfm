object BasicInformation: TBasicInformation
  Left = 548
  Top = 243
  Width = 1379
  Height = 675
  Caption = 'BasicInformation'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 95
    Width = 1363
    Height = 541
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'Basic Information'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Width = 54
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Width = 182
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DevCode'
            Footers = <>
            ReadOnly = True
            Width = 154
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ColorWay'
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 125
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Planning_Level_2'
            Footers = <>
            Title.Caption = 'PlanningLevel2'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'Hold'
            Footers = <>
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'HoldStage'
            Footers = <>
            PickList.Strings = (
              'R1'
              'R2'
              'R3'
              'R4'
              'PC')
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Dropped'
            Footers = <>
            Width = 61
            OnUpdateData = DBGridEh1Columns6UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'DropDetail'
            Footers = <>
            KeyList.Strings = (
              'R1'
              'R2'
              'R3'
              'R4'
              'PC')
            PickList.Strings = (
              'R1'
              'R2'
              'R3'
              'R4'
              'PC')
            Title.Caption = 'DropStage'
            Width = 71
            OnUpdateData = DBGridEh1Columns7UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'TransferIn'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'Transfer'
            Footers = <>
            Title.Caption = 'TransferOut'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'Transferstage'
            Footers = <>
            PickList.Strings = (
              'R1'
              'R2'
              'R3'
              'R4'
              'PC')
            Title.Caption = 'Transfer Stage'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'Cut'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SS'
            Footers = <>
            Title.Caption = 'SampleSize'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Productiontype'
            Footers = <>
            Title.Caption = 'ProductionType'
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'Segment'
            Footers = <>
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'Category'
            Footers = <>
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'Bucket'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TechLevel_Flex'
            Footers = <>
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'R1 Sample'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnMouseDown = DBGridEhMouseDown
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Width = 54
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Width = 182
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DevCode'
            Footers = <>
            ReadOnly = True
            Width = 154
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 125
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TPDate'
            Footers = <>
            OnEditButtonClick = DBGridEhColumns6EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'TPlate'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            PickList.Strings = (
              'R1 receive')
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'RSD'
            Footers = <>
            Title.Caption = 'R1 Shipping Date'
            Width = 120
            OnEditButtonClick = DBGridEhColumns8EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Latest_MTRL_ETADate'
            Footers = <>
            Title.Caption = 'Latest MTRL ETA Date'
            Width = 148
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DFMEA'
            Footers = <>
            PickList.Strings = (
              'Red'
              'Yellow'
              'Green')
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'BOM Date'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'Develop Date'
            Footers = <>
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'Purchase Date'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'MTRL In Coming Date'
            Footers = <>
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'Warehouse Scan Date'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'R2 Sample'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnMouseDown = DBGridEhMouseDown
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Width = 54
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Width = 182
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DevCode'
            Footers = <>
            ReadOnly = True
            Width = 154
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 125
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TPDate'
            Footers = <>
            OnEditButtonClick = DBGridEhColumns6EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'TPlate'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            PickList.Strings = (
              'R1 revise'
              'R1 approved'
              'R2 add')
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'RSD'
            Footers = <>
            Title.Caption = 'R2 Shipping Date'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Latest_MTRL_ETADate'
            Footers = <>
            Title.Caption = 'Latest MTRL ETA Date'
            Width = 146
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DFMEA'
            Footers = <>
            PickList.Strings = (
              'Red'
              'Yellow'
              'Green')
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'BOM Date'
            Footers = <>
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'Develop Date'
            Footers = <>
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'Purchase Date'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'MTRL In Coming Date'
            Footers = <>
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'Warehouse Scan Date'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'R3 Sample'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnMouseDown = DBGridEhMouseDown
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Width = 54
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Width = 182
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DevCode'
            Footers = <>
            ReadOnly = True
            Width = 154
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 125
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TPDate'
            Footers = <>
            OnEditButtonClick = DBGridEhColumns6EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'TPlate'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            PickList.Strings = (
              'R2 revise'
              'R2 approved'
              'R3 add')
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'RSD'
            Footers = <>
            Title.Caption = 'R3 Shipping Date'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Latest_MTRL_ETADate'
            Footers = <>
            Title.Caption = 'Latest MTRL ETA Date'
            Width = 149
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DFMEA'
            Footers = <>
            PickList.Strings = (
              'Red'
              'Yellow'
              'Green')
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'BOM Date'
            Footers = <>
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Develop Date'
            Footers = <>
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'Purchase Date'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'MTRL In Coming Date'
            Footers = <>
            Width = 135
          end
          item
            EditButtons = <>
            FieldName = 'Warehouse Scan Date'
            Footers = <>
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'R4 Sample'
      ImageIndex = 4
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnMouseDown = DBGridEhMouseDown
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Width = 54
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Width = 182
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DevCode'
            Footers = <>
            ReadOnly = True
            Width = 154
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 125
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TPDate'
            Footers = <>
            OnEditButtonClick = DBGridEhColumns6EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            PickList.Strings = (
              'R4 receive')
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'RSD'
            Footers = <>
            Title.Caption = 'R4 Shipping Date'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Latest_MTRL_ETADate'
            Footers = <>
            Title.Caption = 'Latest MTRL ETA Date'
            Width = 146
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'DFMEA'
            Footers = <>
            PickList.Strings = (
              'Red'
              'Yellow'
              'Green')
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'BOM Date'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Develop Date'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'Purchase Date'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'MTRL In Coming Date'
            Footers = <>
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'Warehouse Scan Date'
            Footers = <>
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Shoes Confirm Information'
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 1355
        Height = 510
        Align = alClient
        DataSource = DataSource6
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
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ImgNameCFM'
            Footers = <>
            Title.Caption = 'Shoe Pic|'#33258#21205#24118#20837
            Width = 66
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'RiskLevel'
            Footers = <>
            Title.Caption = 'RiskLevel|'#35373#25104#36984#38917
            Width = 75
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Shoe Name'
            Footers = <>
            Title.Caption = 'Shoe Name|'#33258#21205#24118#20837
            Width = 84
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Title.Caption = 'SR|'#33258#21205#24118#20837
            Width = 118
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Caption = 'SKU|'#33258#21205#24118#20837
            Width = 83
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Tech Level'
            Footers = <>
            Title.Caption = 'Tech Level|'#33258#21205#24118#20837
            Width = 69
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
            Title.Caption = 'Size|'#33258#21205#24118#20837
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'BuyMonth'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|BuyMonth'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'ISD'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|ISD'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'FinalBom'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|FinalBom'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'FinalBomDate'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|FinalBomDate'
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'CTSsignCFMshoes'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CTSsignCFMshoes'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'CTSsignCFMshoesDate'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CTSsignCFMshoesDate'
            Width = 154
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesToQC'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CFMShoesToQC'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesToQCDate'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CFMShoesToQCDate'
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'CSBookToQC'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CSBookToQC'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'CSBookToQCDate'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CSBookToQCDate'
          end
          item
            EditButtons = <>
            FieldName = 'CWToQCOP'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CWToQCOP'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CWToQC'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CWToQC'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CWToQCDate'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|CWToQCDate'
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'UserID_Dev'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|UserID_Dev'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'Userdate_Dev'
            Footers = <>
            Title.Caption = 'Dev Confirm Shoes|Userdate_Dev'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'FinalBOMQCReceive'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|FinalBOMQCReceive'
          end
          item
            EditButtons = <>
            FieldName = 'FinalBOMQCReceiveDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|FinalBOMQCReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CFMshoesQCReceive'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CFMshoesQCReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CFMshoesQCReceiveDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CFMshoesQCReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CFMshoesQCprovidetoPur'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CFMshoesQCprovidetoPur'
          end
          item
            EditButtons = <>
            FieldName = 'CFMshoesQCprovidetoPurDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CFMshoesQCprovidetoPurDate'
          end
          item
            EditButtons = <>
            FieldName = 'CSbookQCReceive'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CSbookQCReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CSbookQCReceiveDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CSbookQCReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CSbookQCprovidetoPur'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CSbookQCprovidetoPur'
          end
          item
            EditButtons = <>
            FieldName = 'CSbookQCprovidetoPurDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CSbookQCprovidetoPurDate'
          end
          item
            EditButtons = <>
            FieldName = 'CWQCReceive'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CWQCReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CWQCReceiveDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CWQCReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CWQCprovidetoPur'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CWQCprovidetoPur'
          end
          item
            EditButtons = <>
            FieldName = 'CWQCprovidetoPurDate'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|CWQCprovidetoPurDate'
          end
          item
            EditButtons = <>
            FieldName = 'UserID_QC'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|UserID_QC'
          end
          item
            EditButtons = <>
            FieldName = 'Userdate_QC'
            Footers = <>
            Title.Caption = 'QC Confirm Shoes|Userdate_QC'
          end
          item
            EditButtons = <>
            FieldName = 'FinalBOMPurReceive'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|FinalBOMPurReceive'
          end
          item
            EditButtons = <>
            FieldName = 'FinalBOMPurReceiveDate'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|FinalBOMPurReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesPurReceive'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CFMShoesPurReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesPurReceiveDate'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CFMShoesPurReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CSBookPurReceive'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CSBookPurReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CSBookPurReceiveDate'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CSBookPurReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CWPurReceive'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CWPurReceive'
          end
          item
            EditButtons = <>
            FieldName = 'CWPurReceiveDate'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CWPurReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CWShipping'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CWShipping'
          end
          item
            EditButtons = <>
            FieldName = 'CWShippingDate'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|CWShippingDate'
          end
          item
            EditButtons = <>
            FieldName = 'UserID_Pur'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|UserID_Pur'
          end
          item
            EditButtons = <>
            FieldName = 'Userdate_Pur'
            Footers = <>
            Title.Caption = 'Purchase Confirm Shoes|Userdate_Pur'
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesSPTeamReceive'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|CFMShoesSPTeamReceive'
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesSPTeamReceiveDate'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|CFMShoesSPTeamReceiveDate'
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesShipping'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|CFMShoesShipping'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CFMShoesShippingDate'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|CFMShoesShippingDate'
          end
          item
            EditButtons = <>
            FieldName = 'UserID_SP'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|UserID_SP'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'Userdate_SP'
            Footers = <>
            Title.Caption = 'Shipping Confirm Shoes|Userdate_SP'
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 24
    Top = 432
    Width = 185
    Height = 185
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 1
    Visible = False
    object MC1: TMonthCalendar
      Left = 1
      Top = 1
      Width = 183
      Height = 183
      AutoSize = True
      Date = 43962.448111863430000000
      TabOrder = 0
      OnDblClick = MC1DblClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1363
    Height = 95
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label4: TLabel
      Left = 309
      Top = 12
      Width = 56
      Height = 16
      Caption = 'SEASON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 336
      Top = 41
      Width = 26
      Height = 16
      Caption = 'SR#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 441
      Top = 11
      Width = 27
      Height = 16
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label229: TLabel
      Left = 588
      Top = 11
      Width = 18
      Height = 16
      Caption = 'FD'
    end
    object Label89: TLabel
      Left = 492
      Top = 40
      Width = 38
      Height = 16
      Caption = 'TEAM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 688
      Top = 11
      Width = 32
      Height = 16
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 618
      Top = 40
      Width = 36
      Height = 16
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 8
      Top = 10
      Width = 49
      Height = 53
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object BB4: TBitBtn
      Left = 56
      Top = 10
      Width = 49
      Height = 53
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Left = 104
      Top = 10
      Width = 49
      Height = 53
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Left = 152
      Top = 10
      Width = 49
      Height = 53
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 200
      Top = 10
      Width = 49
      Height = 53
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object CB_SEASON: TComboBox
      Left = 369
      Top = 9
      Width = 57
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
    end
    object ED_SR: TEdit
      Left = 369
      Top = 36
      Width = 120
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ED_SKU: TEdit
      Left = 472
      Top = 9
      Width = 101
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CB_FD: TComboBox
      Left = 610
      Top = 8
      Width = 62
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
    end
    object CB_TEAM: TComboBox
      Left = 534
      Top = 35
      Width = 79
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Items.Strings = (
        ''
        'A'
        'B'
        'C'
        'SMU')
    end
    object CB_DEVTYPE: TComboBox
      Left = 725
      Top = 8
      Width = 61
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU')
    end
    object CB_NNULL: TCheckBox
      Left = 718
      Top = 38
      Width = 73
      Height = 21
      Caption = 'Not Null'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object BB8: TButton
      Left = 248
      Top = 10
      Width = 49
      Height = 53
      Caption = 'Excel'
      Enabled = False
      TabOrder = 12
      OnClick = BB8Click
    end
    object GroupBox2: TGroupBox
      Left = 868
      Top = -8
      Width = 137
      Height = 103
      TabOrder = 13
      object CheckBox5: TCheckBox
        Left = 8
        Top = 10
        Width = 121
        Height = 17
        Caption = 'Dropped'
        TabOrder = 0
      end
      object CheckBox6: TCheckBox
        Left = 8
        Top = 28
        Width = 121
        Height = 17
        Caption = 'NoDropped'
        TabOrder = 1
      end
      object CheckBox7: TCheckBox
        Left = 8
        Top = 46
        Width = 121
        Height = 17
        Caption = 'TransferIn'
        TabOrder = 2
      end
      object CheckBox8: TCheckBox
        Left = 8
        Top = 65
        Width = 121
        Height = 17
        Caption = 'TransferOut'
        TabOrder = 3
      end
      object CheckBox9: TCheckBox
        Left = 8
        Top = 84
        Width = 73
        Height = 17
        Caption = 'Hold'
        TabOrder = 4
      end
    end
    object ComboBox1: TComboBox
      Left = 660
      Top = 35
      Width = 51
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Text = 'CDC'
      Items.Strings = (
        'CDC'
        'SKX'
        'SRL')
    end
    object ImportETCBtn: TButton
      Left = 793
      Top = 8
      Width = 69
      Height = 45
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = ImportETCBtnClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT XXZLKF.XieXing, XXZLKF.SheHao, KFXXZL.XieMing, KFXXZL.Dev' +
        'Code, KFXXZL.ARTICLE, KFXXZL.JiJie,'
      
        'XXZLKF.Dropped, XXZLKF.TransferIn,xxzlkf.Planning_Level_2, XXZLK' +
        'F.Hold,XXZLKF.HoldStage,XXZLKF.Transfer, XXZLKF.Transferstage, X' +
        'XZLKF.Cut, XXZLKF.SS, XXZLKF.Productiontype,'
      
        'XXZLKF.Segment, XXZLKF.Category, XXZLKF.Bucket, XXZLKF.UserID, X' +
        'XZLKF.UserDate, XXZLKF.DropDetail, XXZLKF.CTS,KFXXZL.YSSM,xxzlkf' +
        '.TechLevel_Flex FROM XXZLKF'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZLKF.XieXing AND KFXXZL.S' +
        'heHao = XXZLKF.SheHao'
      'LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD'
      'LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH'
      'WHERE KFXXZL.JiJie LIKE '#39'%23S%'#39
      'AND KFXXZL.DevCode IN ('
      '  SELECT KFXXZL.DevCode FROM KFXXZL'
      
        '  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHa' +
        'o = KFXXZL.SheHao'
      
        '  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '#39'SK' +
        'X'#39') AND kfjd <> '#39'SEE'#39' AND KFXXZL.JiJie LIKE '#39'%23S%'#39
      '  GROUP BY KFXXZL.DevCode'
      ')'
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULLIFY%'#39
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULIFY%'#39
      'AND KFXXZL.DevCode <> '#39#39
      'AND kfzl_GS.GSBH= '#39'SKX'#39
      'AND LEN(XXZLKF.SheHao) = 2'
      'ORDER BY XXZLKF.XieXing, XXZLKF.SheHao')
    UpdateObject = UpdateSQL1
    Left = 24
    Top = 176
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object Query1DevCode: TStringField
      FieldName = 'DevCode'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
    end
    object Query1Dropped: TBooleanField
      FieldName = 'Dropped'
    end
    object Query1DropDetail: TStringField
      FieldName = 'DropDetail'
      Size = 5
    end
    object Query1TransferIn: TBooleanField
      FieldName = 'TransferIn'
    end
    object Query1Transfer: TBooleanField
      FieldName = 'Transfer'
    end
    object Query1Cut: TStringField
      FieldName = 'Cut'
      Size = 8
    end
    object Query1SS: TStringField
      FieldName = 'SS'
      Size = 5
    end
    object Query1Productiontype: TStringField
      FieldName = 'Productiontype'
      Size = 15
    end
    object Query1Segment: TStringField
      FieldName = 'Segment'
      Size = 50
    end
    object Query1Category: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object Query1Bucket: TStringField
      FieldName = 'Bucket'
      Size = 8
    end
    object Query1CTS: TStringField
      FieldName = 'CTS'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1Transferstage: TStringField
      FieldName = 'Transferstage'
      Origin = 'DB.xxzlkf.Transferstage'
      FixedChar = True
      Size = 5
    end
    object Query1Hold: TBooleanField
      FieldName = 'Hold'
      Origin = 'DB.xxzlkf.Hold'
    end
    object Query1HoldStage: TStringField
      FieldName = 'HoldStage'
      Origin = 'DB.xxzlkf.HoldStage'
      FixedChar = True
      Size = 5
    end
    object Query1YSSM: TStringField
      DisplayWidth = 10
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1Planning_Level_2: TStringField
      FieldName = 'Planning_Level_2'
      FixedChar = True
      Size = 50
    end
    object Query1TechLevel_Flex: TStringField
      FieldName = 'TechLevel_Flex'
      FixedChar = True
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 144
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE XXZLKF'
      'SET'
      '  Hold = :Hold,'
      '  Dropped = :Dropped,'
      '  DropDetail = :DropDetail,'
      '  TransferIn = :TransferIn,'
      '  Transfer = :Transfer,'
      '  Cut = :Cut,'
      '  SS  = :SS,'
      '  ProductionType = :ProductionType,'
      '  Segment = :Segment,'
      '  Category = :Category,'
      '  Bucket = :Bucket,'
      '  CTS = :CTS,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate,'
      '  Transferstage = :Transferstage,'
      '  HoldStage = :HoldStage'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  (SheHao = :OLD_SheHao OR SheHao = :OLD_SheHao + '#39'A'#39')')
    Left = 24
    Top = 208
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 184
    Top = 176
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 56
    Top = 144
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE R1Sample'
      'SET'
      '  TPDate = :TPDate,'
      '  Status = :Status,'
      '  RSD = :RSD,'
      '  DFMEA = :DFMEA,'
      '  Latest_MTRL_ETADate =:Latest_MTRL_ETADate,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  (SheHao = :OLD_SheHao OR SheHao = :OLD_SheHao + '#39'A'#39')')
    Left = 56
    Top = 208
  end
  object Query2: TQuery
    AfterOpen = QueryAfterOpen
    AfterScroll = QueryAfterScroll
    OnCalcFields = Query2CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT R1Sample.XieXing, R1Sample.SheHao, KFXXZL.XieMing, KFXXZL' +
        '.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, R1Sample.TPDate, R1Sampl' +
        'e.Status, R1Sample.RSD, R1Sample.UserID, R1Sample.UserDate,KFXXZ' +
        'L.YSSM '
      
        ',DelDate as '#39'BOM Date'#39',recheckdate as '#39'Develop Date'#39', '#39#39' as DFME' +
        'A, R1Sample.Latest_MTRL_ETADate '
      
        ',recieveDate as '#39'Purchase Date'#39',case when (shoetestplan.C_ETA is' +
        ' not null and  shoetestplan.C_ETA <> '#39#39') then shoetestplan.C_ETA' +
        ' else '#39'OK'#39' end as  '#39'MTRL In Coming Date'#39
      
        ',SHOETEST.preparationDate as '#39'Warehouse Scan Date'#39',GamePlan.CTS_' +
        'TP_DEADLINE,'#39#39' as '#39'TPlate'#39
      'FROM R1Sample'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = R1Sample.XieXing AND KFXXZL' +
        '.SheHao = R1Sample.SheHao'
      
        'LEFT JOIN XXZLKF ON XXZLKF.XieXing = R1Sample.XieXing AND XXZLKF' +
        '.SheHao = R1Sample.SheHao'
      'LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD'
      'LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH'
      
        'LEFT JOIN YPZL ON YPZL.XieXing = R1Sample.XieXing AND YPZL.SheHa' +
        'o = R1Sample.SheHao'
      'LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh'
      'Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH'
      
        'left join GamePlan on GamePlan.Season=KFXXZL.JiJie and GamePlan.' +
        'Stage=YPZL.KFJD'
      'WHERE KFXXZL.JiJie LIKE '#39'%23F%'#39
      'AND KFXXZL.DevCode IN ('
      '  SELECT KFXXZL.DevCode FROM KFXXZL'
      
        '  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHa' +
        'o = KFXXZL.SheHao'
      
        '  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '#39'CD' +
        'C'#39') AND kfjd <> '#39'SEE'#39' AND KFXXZL.JiJie LIKE '#39'%23F%'#39
      '  GROUP BY KFXXZL.DevCode'
      ')'
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULLIFY%'#39
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULIFY%'#39
      'AND KFXXZL.DevCode <> '#39#39
      'AND kfzl_GS.GSBH= '#39'CDC'#39
      'AND YPZL.KFJD IN ('#39'CR1'#39')'
      'AND KFXXZL.DevCode LIKE '#39'%G45090-CTE59N-23F01%'#39
      'AND (YPZL.YPDH LIKE '#39'LAIK%'#39' OR YPZL.YPDH LIKE '#39'BYIK%'#39')'
      'AND LEN(R1Sample.SheHao) = 2'
      'ORDER BY R1Sample.XieXing, R1Sample.SheHao'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    UpdateObject = UpdateSQL2
    Left = 56
    Top = 176
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query2JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query2TPDate: TStringField
      FieldName = 'TPDate'
      FixedChar = True
      Size = 15
    end
    object Query2Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 15
    end
    object Query2RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query2YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query2BOMDate: TDateTimeField
      FieldName = 'BOM Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query2DevelopDate: TDateTimeField
      FieldName = 'Develop Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query2DFMEA: TStringField
      DisplayWidth = 15
      FieldName = 'DFMEA'
      FixedChar = True
      Size = 15
    end
    object Query2PurchaseDate: TDateTimeField
      FieldName = 'Purchase Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query2MTRLInComingDate: TStringField
      FieldName = 'MTRL In Coming Date'
      FixedChar = True
      Size = 120
    end
    object Query2WarehouseScanDate: TDateTimeField
      FieldName = 'Warehouse Scan Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query2Latest_MTRL_ETADate: TDateTimeField
      FieldName = 'Latest_MTRL_ETADate'
    end
    object Query2TPlate: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TPlate'
      Calculated = True
    end
    object Query2CTS_TP_DEADLINE: TDateTimeField
      FieldName = 'CTS_TP_DEADLINE'
      DisplayFormat = 'MM/dd/yyyy'
    end
  end
  object Query3: TQuery
    AfterOpen = QueryAfterOpen
    AfterScroll = QueryAfterScroll
    OnCalcFields = Query3CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT R1Sample.XieXing, R1Sample.SheHao, KFXXZL.XieMing, KFXXZL' +
        '.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, R1Sample.TPDate, R1Sampl' +
        'e.Status, R1Sample.RSD, R1Sample.UserID, R1Sample.UserDate,KFXXZ' +
        'L.YSSM '
      
        ',DelDate as '#39'BOM Date'#39',recheckdate as '#39'Develop Date'#39', '#39#39' as DFME' +
        'A,R1Sample.Latest_MTRL_ETADate '
      
        ',recieveDate as '#39'Purchase Date'#39',case when (shoetestplan.C_ETA is' +
        ' not null and  shoetestplan.C_ETA <> '#39#39') then shoetestplan.C_ETA' +
        ' else '#39'OK'#39' end as  '#39'MTRL In Coming Date'#39
      
        ',SHOETEST.preparationDate as '#39'Warehouse Scan Date'#39',GamePlan.CTS_' +
        'TP_DEADLINE,'#39#39' as '#39'TPlate'#39'   '
      'FROM R1Sample'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = R1Sample.XieXing AND KFXXZL' +
        '.SheHao = R1Sample.SheHao'
      
        'LEFT JOIN XXZLKF ON XXZLKF.XieXing = R1Sample.XieXing AND XXZLKF' +
        '.SheHao = R1Sample.SheHao'
      'LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD'
      'LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH'
      
        'LEFT JOIN YPZL ON YPZL.XieXing = R1Sample.XieXing AND YPZL.SheHa' +
        'o = R1Sample.SheHao'
      'LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh'
      'Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH'
      
        'left join GamePlan on GamePlan.Season=KFXXZL.JiJie and GamePlan.' +
        'Stage=YPZL.KFJD'
      'WHERE KFXXZL.JiJie LIKE '#39'%23F%'#39
      'AND KFXXZL.DevCode IN ('
      '  SELECT KFXXZL.DevCode FROM KFXXZL'
      
        '  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHa' +
        'o = KFXXZL.SheHao'
      
        '  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '#39'CD' +
        'C'#39') AND kfjd <> '#39'SEE'#39' AND KFXXZL.JiJie LIKE '#39'%23F%'#39
      '  GROUP BY KFXXZL.DevCode'
      ')'
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULLIFY%'#39
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULIFY%'#39
      'AND KFXXZL.DevCode <> '#39#39
      'AND kfzl_GS.GSBH= '#39'CDC'#39
      'AND YPZL.KFJD IN ('#39'CR1'#39')'
      'AND KFXXZL.DevCode LIKE '#39'%G45090-CTE59N-23F01%'#39
      'AND (YPZL.YPDH LIKE '#39'LAIK%'#39' OR YPZL.YPDH LIKE '#39'BYIK%'#39')'
      'AND LEN(R1Sample.SheHao) = 2'
      'ORDER BY R1Sample.XieXing, R1Sample.SheHao'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    UpdateObject = UpdateSQL3
    Left = 88
    Top = 176
    object Query3XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query3SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query3XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query3DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
    object Query3ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query3JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query3TPDate: TStringField
      FieldName = 'TPDate'
      FixedChar = True
      Size = 15
    end
    object Query3Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 15
    end
    object Query3RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object Query3UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query3YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query3BOMDate: TDateTimeField
      FieldName = 'BOM Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query3DevelopDate: TDateTimeField
      FieldName = 'Develop Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query3DFMEA: TStringField
      DisplayWidth = 15
      FieldName = 'DFMEA'
      FixedChar = True
      Size = 15
    end
    object Query3PurchaseDate: TDateTimeField
      FieldName = 'Purchase Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query3MTRLInComingDate: TStringField
      FieldName = 'MTRL In Coming Date'
      FixedChar = True
      Size = 120
    end
    object Query3WarehouseScanDate: TDateTimeField
      FieldName = 'Warehouse Scan Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query3Latest_MTRL_ETADate: TDateTimeField
      FieldName = 'Latest_MTRL_ETADate'
    end
    object Query3TPlate: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TPlate'
      Calculated = True
    end
    object Query3CTS_TP_DEADLINE: TDateTimeField
      FieldName = 'CTS_TP_DEADLINE'
      DisplayFormat = 'MM/dd/yyyy'
    end
  end
  object Query4: TQuery
    AfterOpen = QueryAfterOpen
    AfterScroll = QueryAfterScroll
    OnCalcFields = Query4CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT R1Sample.XieXing, R1Sample.SheHao, KFXXZL.XieMing, KFXXZL' +
        '.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, R1Sample.TPDate, R1Sampl' +
        'e.Status, R1Sample.RSD, R1Sample.UserID, R1Sample.UserDate,KFXXZ' +
        'L.YSSM '
      
        ',DelDate as '#39'BOM Date'#39',recheckdate as '#39'Develop Date'#39', '#39#39' as DFME' +
        'A,R1Sample.Latest_MTRL_ETADate '
      
        ',recieveDate as '#39'Purchase Date'#39',case when (shoetestplan.C_ETA is' +
        ' not null and  shoetestplan.C_ETA <> '#39#39') then shoetestplan.C_ETA' +
        ' else '#39'OK'#39' end as  '#39'MTRL In Coming Date'#39
      
        ',SHOETEST.preparationDate as '#39'Warehouse Scan Date'#39',GamePlan.CTS_' +
        'TP_DEADLINE,'#39#39' as '#39'TPlate'#39'  '
      'FROM R1Sample'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = R1Sample.XieXing AND KFXXZL' +
        '.SheHao = R1Sample.SheHao'
      
        'LEFT JOIN XXZLKF ON XXZLKF.XieXing = R1Sample.XieXing AND XXZLKF' +
        '.SheHao = R1Sample.SheHao'
      'LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD'
      'LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH'
      
        'LEFT JOIN YPZL ON YPZL.XieXing = R1Sample.XieXing AND YPZL.SheHa' +
        'o = R1Sample.SheHao'
      'LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh'
      'Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH'
      
        'left join GamePlan on GamePlan.Season=KFXXZL.JiJie and GamePlan.' +
        'Stage=YPZL.KFJD'
      'WHERE KFXXZL.JiJie LIKE '#39'%23F%'#39
      'AND KFXXZL.DevCode IN ('
      '  SELECT KFXXZL.DevCode FROM KFXXZL'
      
        '  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHa' +
        'o = KFXXZL.SheHao'
      
        '  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '#39'CD' +
        'C'#39') AND kfjd <> '#39'SEE'#39' AND KFXXZL.JiJie LIKE '#39'%23F%'#39
      '  GROUP BY KFXXZL.DevCode'
      ')'
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULLIFY%'#39
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULIFY%'#39
      'AND KFXXZL.DevCode <> '#39#39
      'AND kfzl_GS.GSBH= '#39'CDC'#39
      'AND YPZL.KFJD IN ('#39'CR1'#39')'
      'AND KFXXZL.DevCode LIKE '#39'%G45090-CTE59N-23F01%'#39
      'AND (YPZL.YPDH LIKE '#39'LAIK%'#39' OR YPZL.YPDH LIKE '#39'BYIK%'#39')'
      'AND LEN(R1Sample.SheHao) = 2'
      'ORDER BY R1Sample.XieXing, R1Sample.SheHao'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    UpdateObject = UpdateSQL4
    Left = 120
    Top = 176
    object Query4XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query4SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query4XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query4DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
    object Query4ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query4JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query4TPDate: TStringField
      FieldName = 'TPDate'
      FixedChar = True
      Size = 15
    end
    object Query4Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 15
    end
    object Query4RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object Query4UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query4UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query4YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query4BOMDate: TDateTimeField
      FieldName = 'BOM Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query4DevelopDate: TDateTimeField
      FieldName = 'Develop Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query4DFMEA: TStringField
      DisplayWidth = 15
      FieldName = 'DFMEA'
      FixedChar = True
      Size = 15
    end
    object Query4PurchaseDate: TDateTimeField
      FieldName = 'Purchase Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query4MTRLInComingDate: TStringField
      FieldName = 'MTRL In Coming Date'
      FixedChar = True
      Size = 120
    end
    object Query4WarehouseScanDate: TDateTimeField
      FieldName = 'Warehouse Scan Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query4Latest_MTRL_ETADate: TDateTimeField
      FieldName = 'Latest_MTRL_ETADate'
    end
    object Query4TPlate: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TPlate'
      Calculated = True
    end
    object Query4CTS_TP_DEADLINE: TDateTimeField
      FieldName = 'CTS_TP_DEADLINE'
      DisplayFormat = 'MM/dd/yyyy'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 88
    Top = 144
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 120
    Top = 144
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE R2Sample'
      'SET'
      '  TPDate = :TPDate,'
      '  Status = :Status,'
      '  RSD = :RSD,'
      '  DFMEA = :DFMEA,'
      '  Latest_MTRL_ETADate = :Latest_MTRL_ETADate,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  (SheHao = :OLD_SheHao OR SheHao = :OLD_SheHao + '#39'A'#39')')
    Left = 88
    Top = 208
  end
  object UpdateSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE R3Sample'
      'SET'
      '  TPDate = :TPDate,'
      '  Status = :Status,'
      '  RSD = :RSD,'
      '  DFMEA = :DFMEA,'
      '  Latest_MTRL_ETADate = :Latest_MTRL_ETADate,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  (SheHao = :OLD_SheHao OR SheHao = :OLD_SheHao + '#39'A'#39')')
    Left = 120
    Top = 208
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 152
    Top = 144
  end
  object Query5: TQuery
    AfterOpen = QueryAfterOpen
    AfterScroll = QueryAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT R1Sample.XieXing, R1Sample.SheHao, KFXXZL.XieMing, KFXXZL' +
        '.DevCode, KFXXZL.ARTICLE, KFXXZL.JiJie, R1Sample.TPDate, R1Sampl' +
        'e.Status, R1Sample.RSD, R1Sample.UserID, R1Sample.UserDate,KFXXZ' +
        'L.YSSM '
      
        ',DelDate as '#39'BOM Date'#39',recheckdate as '#39'Develop Date'#39', '#39#39' as DFME' +
        'A,R1Sample.Latest_MTRL_ETADate '
      
        ',recieveDate as '#39'Purchase Date'#39',case when (shoetestplan.C_ETA is' +
        ' not null and  shoetestplan.C_ETA <> '#39#39') then shoetestplan.C_ETA' +
        ' else '#39'OK'#39' end as  '#39'MTRL In Coming Date'#39
      ',SHOETEST.preparationDate as '#39'Warehouse Scan Date'#39'  '
      'FROM R1Sample'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = R1Sample.XieXing AND KFXXZL' +
        '.SheHao = R1Sample.SheHao'
      
        'LEFT JOIN XXZLKF ON XXZLKF.XieXing = R1Sample.XieXing AND XXZLKF' +
        '.SheHao = R1Sample.SheHao'
      'LEFT JOIN FDGroups ON FDGroups.FDName = KFXXZL.FD'
      'LEFT JOIN KFZL_GS ON KFZL_GS.KHBH = KFXXZL.KHDH'
      
        'LEFT JOIN YPZL ON YPZL.XieXing = R1Sample.XieXing AND YPZL.SheHa' +
        'o = R1Sample.SheHao'
      'LEFT JOIN shoetestplan on shoetestplan.ypdh=YPZL.ypdh'
      'Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH '
      'WHERE KFXXZL.JiJie LIKE '#39'%23F%'#39
      'AND KFXXZL.DevCode IN ('
      '  SELECT KFXXZL.DevCode FROM KFXXZL'
      
        '  LEFT JOIN YPZL ON YPZL.XieXing = KFXXZL.XieXing AND YPZL.SheHa' +
        'o = KFXXZL.SheHao'
      
        '  WHERE KFXXZL.khdh = (select KHBH from kfzl_GS where GSBH = '#39'CD' +
        'C'#39') AND kfjd <> '#39'SEE'#39' AND KFXXZL.JiJie LIKE '#39'%23F%'#39
      '  GROUP BY KFXXZL.DevCode'
      ')'
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULLIFY%'#39
      'AND KFXXZL.Xieming NOT LIKE '#39'%NULIFY%'#39
      'AND KFXXZL.DevCode <> '#39#39
      'AND kfzl_GS.GSBH= '#39'CDC'#39
      'AND YPZL.KFJD IN ('#39'CR1'#39')'
      'AND KFXXZL.DevCode LIKE '#39'%G45090-CTE59N-23F01%'#39
      'AND (YPZL.YPDH LIKE '#39'LAIK%'#39' OR YPZL.YPDH LIKE '#39'BYIK%'#39')'
      'AND LEN(R1Sample.SheHao) = 2'
      'ORDER BY R1Sample.XieXing, R1Sample.SheHao'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    UpdateObject = UpdateSQL5
    Left = 152
    Top = 176
    object Query5XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query5SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query5XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query5DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
    object Query5ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query5JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query5TPDate: TStringField
      FieldName = 'TPDate'
      FixedChar = True
      Size = 15
    end
    object Query5Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 15
    end
    object Query5RSD: TStringField
      FieldName = 'RSD'
      FixedChar = True
      Size = 15
    end
    object Query5UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query5UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query5YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query5BOMDate: TDateTimeField
      FieldName = 'BOM Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query5DevelopDate: TDateTimeField
      FieldName = 'Develop Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query5DFMEA: TStringField
      FieldName = 'DFMEA'
      FixedChar = True
      Size = 15
    end
    object Query5PurchaseDate: TDateTimeField
      FieldName = 'Purchase Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query5MTRLInComingDate: TStringField
      FieldName = 'MTRL In Coming Date'
      FixedChar = True
      Size = 120
    end
    object Query5WarehouseScanDate: TDateTimeField
      FieldName = 'Warehouse Scan Date'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query5Latest_MTRL_ETADate: TDateTimeField
      FieldName = 'Latest_MTRL_ETADate'
    end
  end
  object UpdateSQL5: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE R4Sample'
      'SET'
      '  TPDate = :TPDate,'
      '  Status = :Status,'
      '  RSD = :RSD,'
      '  DFMEA = :DFMEA,'
      '  Latest_MTRL_ETADate = :Latest_MTRL_ETADate,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  (SheHao = :OLD_SheHao OR SheHao = :OLD_SheHao + '#39'A'#39')')
    Left = 152
    Top = 208
  end
  object Query6: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT PC_Data.*,xxzlkf.SS as Size, KFXXZL.XieMing as '#39'Shoe Name' +
        #39',KFXXZL.DEVCODE AS SR,KFXXZL.ARTICLE AS SKU,kfxxzl.KFLX as '#39'Tec' +
        'h Level'#39
      
        '    ,KFXXZL.SheHao,KFXXZL.XieXing , KFXXZL.FD, ISNULL(PC_Data.Xi' +
        'eXing, '#39'X'#39') AS Exist, ISNULL(XXZLKF.ImgNameCfm, '#39#39') AS ImgNameCF' +
        'M  '
      '     FROM PC_Data    '
      
        '    LEFT JOIN KFXXZL ON PC_Data.XieXing = KFXXZL.XieXing AND PC_' +
        'Data.SheHao = KFXXZL.SheHao    '
      
        '    LEFT JOIN XXZLKF ON XXZLKF.XieXing = KFXXZL.XieXing AND XXZL' +
        'KF.SheHao = KFXXZL.SheHao    '
      '  WHERE 1=1'
      '  AND KFXXZL.JiJie = '#39'23U'#39'   '
      '  AND LEN(KFXXZL.SheHao) <= 2   '
      '  AND XXZLKF.Dropped <> '#39'1'#39'   '
      '  AND XXZLKF.Transfer <> '#39'1'#39'  '
      'ORDER BY KFXXZL.FD, KFXXZL.DEVCODE, KFXXZL.XieMing')
    Left = 388
    Top = 180
    object Query6XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query6SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query6RiskLevel: TStringField
      FieldName = 'RiskLevel'
      FixedChar = True
      Size = 5
    end
    object Query6BuyMonth: TDateTimeField
      FieldName = 'BuyMonth'
    end
    object Query6ISD: TDateTimeField
      FieldName = 'ISD'
    end
    object Query6FinalBom: TBooleanField
      FieldName = 'FinalBom'
    end
    object Query6FinalBomDate: TDateTimeField
      FieldName = 'FinalBomDate'
    end
    object Query6CTSsignCFMshoes: TBooleanField
      FieldName = 'CTSsignCFMshoes'
    end
    object Query6CTSsignCFMshoesDate: TDateTimeField
      FieldName = 'CTSsignCFMshoesDate'
    end
    object Query6CFMShoesToQC: TBooleanField
      FieldName = 'CFMShoesToQC'
    end
    object Query6CFMShoesToQCDate: TDateTimeField
      FieldName = 'CFMShoesToQCDate'
    end
    object Query6CSBookToQC: TBooleanField
      FieldName = 'CSBookToQC'
    end
    object Query6CSBookToQCDate: TDateTimeField
      FieldName = 'CSBookToQCDate'
    end
    object Query6CWToQCOP: TStringField
      FieldName = 'CWToQCOP'
      FixedChar = True
      Size = 10
    end
    object Query6CWToQC: TStringField
      FieldName = 'CWToQC'
      FixedChar = True
    end
    object Query6CWToQCDate: TDateTimeField
      FieldName = 'CWToQCDate'
    end
    object Query6UserID_Dev: TStringField
      FieldName = 'UserID_Dev'
      FixedChar = True
      Size = 15
    end
    object Query6Userdate_Dev: TDateTimeField
      FieldName = 'Userdate_Dev'
    end
    object Query6FinalBOMQCReceive: TBooleanField
      FieldName = 'FinalBOMQCReceive'
    end
    object Query6FinalBOMQCReceiveDate: TDateTimeField
      FieldName = 'FinalBOMQCReceiveDate'
    end
    object Query6CFMshoesQCReceive: TBooleanField
      FieldName = 'CFMshoesQCReceive'
    end
    object Query6CFMshoesQCReceiveDate: TDateTimeField
      FieldName = 'CFMshoesQCReceiveDate'
    end
    object Query6CFMshoesQCprovidetoPur: TBooleanField
      FieldName = 'CFMshoesQCprovidetoPur'
    end
    object Query6CFMshoesQCprovidetoPurDate: TDateTimeField
      FieldName = 'CFMshoesQCprovidetoPurDate'
    end
    object Query6CSbookQCReceive: TBooleanField
      FieldName = 'CSbookQCReceive'
    end
    object Query6CSbookQCReceiveDate: TDateTimeField
      FieldName = 'CSbookQCReceiveDate'
    end
    object Query6CSbookQCprovidetoPur: TBooleanField
      FieldName = 'CSbookQCprovidetoPur'
    end
    object Query6CSbookQCprovidetoPurDate: TDateTimeField
      FieldName = 'CSbookQCprovidetoPurDate'
    end
    object Query6CWQCReceive: TBooleanField
      FieldName = 'CWQCReceive'
    end
    object Query6CWQCReceiveDate: TDateTimeField
      FieldName = 'CWQCReceiveDate'
    end
    object Query6CWQCprovidetoPur: TBooleanField
      FieldName = 'CWQCprovidetoPur'
    end
    object Query6CWQCprovidetoPurDate: TDateTimeField
      FieldName = 'CWQCprovidetoPurDate'
    end
    object Query6UserID_QC: TStringField
      FieldName = 'UserID_QC'
      FixedChar = True
      Size = 15
    end
    object Query6Userdate_QC: TDateTimeField
      FieldName = 'Userdate_QC'
    end
    object Query6FinalBOMPurReceive: TBooleanField
      FieldName = 'FinalBOMPurReceive'
    end
    object Query6FinalBOMPurReceiveDate: TDateTimeField
      FieldName = 'FinalBOMPurReceiveDate'
    end
    object Query6CFMShoesPurReceive: TBooleanField
      FieldName = 'CFMShoesPurReceive'
    end
    object Query6CFMShoesPurReceiveDate: TDateTimeField
      FieldName = 'CFMShoesPurReceiveDate'
    end
    object Query6CSBookPurReceive: TBooleanField
      FieldName = 'CSBookPurReceive'
    end
    object Query6CSBookPurReceiveDate: TDateTimeField
      FieldName = 'CSBookPurReceiveDate'
    end
    object Query6CWPurReceive: TBooleanField
      FieldName = 'CWPurReceive'
    end
    object Query6CWPurReceiveDate: TDateTimeField
      FieldName = 'CWPurReceiveDate'
    end
    object Query6CWShipping: TBooleanField
      FieldName = 'CWShipping'
    end
    object Query6CWShippingDate: TDateTimeField
      FieldName = 'CWShippingDate'
    end
    object Query6UserID_Pur: TStringField
      FieldName = 'UserID_Pur'
      FixedChar = True
      Size = 15
    end
    object Query6Userdate_Pur: TDateTimeField
      FieldName = 'Userdate_Pur'
    end
    object Query6CFMShoesSPTeamReceive: TBooleanField
      FieldName = 'CFMShoesSPTeamReceive'
    end
    object Query6CFMShoesSPTeamReceiveDate: TDateTimeField
      FieldName = 'CFMShoesSPTeamReceiveDate'
    end
    object Query6CFMShoesShipping: TBooleanField
      FieldName = 'CFMShoesShipping'
    end
    object Query6CFMShoesShippingDate: TDateTimeField
      FieldName = 'CFMShoesShippingDate'
    end
    object Query6UserID_SP: TStringField
      FieldName = 'UserID_SP'
      FixedChar = True
      Size = 15
    end
    object Query6Userdate_SP: TDateTimeField
      FieldName = 'Userdate_SP'
    end
    object Query6ShoeName: TStringField
      FieldName = 'Shoe Name'
      FixedChar = True
      Size = 50
    end
    object Query6SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query6SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query6TechLevel: TStringField
      FieldName = 'Tech Level'
      FixedChar = True
      Size = 3
    end
    object Query6SheHao_1: TStringField
      FieldName = 'SheHao_1'
      FixedChar = True
      Size = 5
    end
    object Query6XieXing_1: TStringField
      FieldName = 'XieXing_1'
      FixedChar = True
      Size = 15
    end
    object Query6FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query6Exist: TStringField
      FieldName = 'Exist'
      FixedChar = True
      Size = 15
    end
    object Query6ImgNameCFM: TStringField
      FieldName = 'ImgNameCFM'
      FixedChar = True
      Size = 255
    end
    object Query6Size: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 5
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 388
    Top = 140
  end
  object OpenDialog: TOpenDialog
    FileName = '*.xlsx'
    Filter = 'CSV|*.csv|EXCEL|*.xls|EXCEL|*.xlsx'
    Left = 440
    Top = 184
  end
end
