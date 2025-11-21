object Report608: TReport608
  Left = 171
  Top = 174
  Width = 921
  Height = 468
  Caption = 'Report608'
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
  object Label3: TLabel
    Left = 424
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 432
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object pro: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 110
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 160
      Top = 33
      Width = 35
      Height = 18
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 280
      Top = 33
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 640
      Top = 45
      Width = 49
      Height = 18
      Caption = 'GSBH:'
    end
    object Label1: TLabel
      Left = 8
      Top = 1
      Width = 377
      Height = 25
      AutoSize = False
      Caption = #26410#20986#36008#30340#29983#29986#35330#21934#20013#21508#24037#27573#30340#29983#29986#36914#24230
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 280
      Top = 73
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 160
      Top = 73
      Width = 35
      Height = 18
      Caption = 'Year:'
    end
    object Label10: TLabel
      Left = 408
      Top = 61
      Width = 119
      Height = 20
      Caption = 'Customer Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 440
      Top = 32
      Width = 85
      Height = 22
      Caption = #23458#25142#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 800
      Top = 33
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 200
      Top = 33
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 1
      ParentFont = False
      TabOrder = 1
      Text = '2007'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX2: TComboBox
      Left = 320
      Top = 33
      Width = 57
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Edit1: TEdit
      Left = 536
      Top = 42
      Width = 89
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CBX5: TComboBox
      Left = 696
      Top = 40
      Width = 73
      Height = 26
      CharCase = ecUpperCase
      ItemHeight = 18
      TabOrder = 4
      Text = 'VA12'
      Items.Strings = (
        'VA12'
        'VA3'
        'VB1'
        'VB2'
        'ALL')
    end
    object CBX3: TComboBox
      Left = 200
      Top = 73
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 1
      ParentFont = False
      TabOrder = 5
      Text = '2007'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX4: TComboBox
      Left = 320
      Top = 73
      Width = 57
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CB1: TCheckBox
      Left = 88
      Top = 32
      Width = 73
      Height = 17
      Caption = #25237#29986#26376':'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object CB2: TCheckBox
      Left = 88
      Top = 72
      Width = 73
      Height = 17
      Caption = #20986#36008#26376':'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 110
    Width = 905
    Height = 320
    Align = alClient
    DataSource = DS2
    DrawMemoText = True
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    IndicatorTitle.TitleButton = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Alignment = taCenter
        Color = clWhite
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #35330#21934#24288#21029'|GSBH'
        Title.TitleButton = True
        Width = 66
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Title.TitleButton = True
        Width = 89
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 83
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 106
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '##,#0'
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|QTY'
        Title.TitleButton = True
        Width = 77
      end
      item
        Alignment = taCenter
        Color = clWhite
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CSD'
        Footers = <>
        Title.Caption = #23458#25142#20132#26399#26085'|CSD'
        Title.TitleButton = True
        Width = 96
      end
      item
        Alignment = taCenter
        Color = clWhite
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'X/F'
        Footers = <>
        Title.Caption = #20986#24288#26085'|X/F'
        Title.TitleButton = True
        Width = 93
      end
      item
        Alignment = taCenter
        Color = clWhite
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.Caption = #35336#30059#29983#29986#26085'|planDate'
        Title.TitleButton = True
        Width = 93
      end
      item
        Alignment = taCenter
        Color = clWhite
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PlanEDate'
        Footers = <>
        Title.Caption = #35336#30059#23436#25104#26085'|planEDate'
        Title.TitleButton = True
        Width = 89
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'C_proQty'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '##,#0'
            FieldName = 'C_proQty'
            ValueType = fvtSum
          end>
        Title.Caption = #35009#26039#23436#25104#25976'|C_proQty'
        Title.TitleButton = True
        Width = 71
        OnEditButtonDown = DBGridEh1Columns9EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'C_Per%'
        Footers = <>
        Title.Caption = #35009#26039#23436#25104#29575'|C_Per%'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clWhite
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'S_proQty'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '##,#0'
            FieldName = 'S_proQty'
            ValueType = fvtSum
          end>
        Title.Caption = #37341#36554#23436#25104#25976'|S_proQty'
        Title.TitleButton = True
        Width = 70
        OnEditButtonDown = DBGridEh1Columns11EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'S_Per%'
        Footers = <>
        Title.Caption = #37341#36554#23436#25104#29575'|S_Per%'
      end
      item
        ButtonStyle = cbsEllipsis
        Color = clWhite
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'A_proQty'
        Footer.FieldName = 'A_proQty'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '##,#0'
            FieldName = 'A_proQty'
            ValueType = fvtSum
          end>
        Title.Caption = #25104#22411#23436#25104#25976'|A_proQty'
        Title.TitleButton = True
        Width = 66
        OnEditButtonDown = DBGridEh1Columns13EditButtonDown
      end
      item
        EditButtons = <>
        FieldName = 'A_Per%'
        Footers = <>
        Title.Caption = #25104#22411#23436#25104#29575'|A_Per%'
      end
      item
        Alignment = taCenter
        Color = clWhite
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'LastInDate'
        Footers = <>
        Title.Caption = #26368#24460#20837#24235#26085'|LastInDate'
        Title.TitleButton = True
        Width = 93
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'inQty'
        Footers = <
          item
            Alignment = taCenter
            DisplayFormat = '##,#0'
            FieldName = 'inQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#25976#37327'|inQty'
        OnEditButtonDown = DBGridEh1Columns16EditButtonDown
      end>
  end
  object QTemp: TQuery
    DatabaseName = 'dB'
    Left = 552
    Top = 280
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 584
    Top = 216
    object Query2GSBH: TStringField
      FieldName = 'GSBH'
    end
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
    end
    object Query2KFJC: TStringField
      FieldName = 'KFJC'
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2CSD: TDateTimeField
      FieldName = 'CSD'
    end
    object Query2XF: TDateTimeField
      FieldName = 'X/F'
    end
    object Query2PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query2PlanEDate: TDateTimeField
      FieldName = 'PlanEDate'
    end
    object Query2proQty: TIntegerField
      FieldName = 'C_proQty'
    end
    object Query2C_Per: TFloatField
      FieldName = 'C_Per%'
    end
    object Query2S_proQty: TIntegerField
      FieldName = 'S_proQty'
    end
    object Query2S_Per: TFloatField
      FieldName = 'S_Per%'
    end
    object Query2A_proQty: TIntegerField
      FieldName = 'A_proQty'
    end
    object Query2A_Per: TFloatField
      FieldName = 'A_Per%'
    end
    object Query2LastInDate: TDateTimeField
      FieldName = 'LastInDate'
    end
    object Query2inQty: TIntegerField
      FieldName = 'inQty'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 648
    Top = 216
  end
  object PopupMenu2: TPopupMenu
    Left = 240
    Top = 232
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitGridToPageWidth, pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '  &[Page]  /    &[Pages]')
    PageHeader.CenterText.Strings = (
      #21508#24288#37096#38272#26376#29986#33021#32113#35336#34920
      'Monthly production report')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 296
    Top = 232
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B446174655D200D0A5C706172207D0D0A00}
  end
end
