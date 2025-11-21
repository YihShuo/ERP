object DailyProductionDep: TDailyProductionDep
  Left = 222
  Top = 174
  Width = 928
  Height = 480
  Caption = 'Daily Production of Department'
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
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 57
    Align = alTop
    TabOrder = 0
    object lbFactory: TLabel
      Left = 24
      Top = 8
      Width = 49
      Height = 25
      AutoSize = False
      Caption = 'Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lbDate: TLabel
      Left = 176
      Top = 8
      Width = 105
      Height = 25
      AutoSize = False
      Caption = 'Produce Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object bnQuery: TButton
      Left = 600
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object bnExcel: TButton
      Left = 704
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = bnExcelClick
    end
    object cbFactory: TComboBox
      Left = 80
      Top = 8
      Width = 89
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object dtpDate: TDateTimePicker
      Left = 280
      Top = 8
      Width = 89
      Height = 25
      Date = 41732.339799421290000000
      Time = 41732.339799421290000000
      TabOrder = 3
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 57
    Width = 912
    Height = 385
    Align = alClient
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 4
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = gdMainGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272'|DepName'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'sumline'
        Footers = <>
        Title.Caption = #32068#21029'|sumline'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Kind'
        Footers = <>
        Title.Caption = #39006#21029'|Kind'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'C_r'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Target'
      end
      item
        EditButtons = <>
        FieldName = 'C_d'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'C_m'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'S_r'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Target'
      end
      item
        EditButtons = <>
        FieldName = 'S_d'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'S_m'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'W_r'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Target'
      end
      item
        EditButtons = <>
        FieldName = 'W_d'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'W_m'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'O_r'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Target'
      end
      item
        EditButtons = <>
        FieldName = 'O_d'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'O_m'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'Z_r'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Target'
      end
      item
        EditButtons = <>
        FieldName = 'Z_d'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'Z_m'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'A_r'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Target'
      end
      item
        EditButtons = <>
        FieldName = 'A_d'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'A_m'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Monthly'
      end>
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 32
    Top = 136
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 72
    Top = 136
    object qrMainGS: TStringField
      FieldName = 'GSBH'
    end
    object qrMainDepName2: TStringField
      FieldName = 'DepName'
    end
    object qrMainDepName: TStringField
      FieldName = 'sumline'
    end
    object qrMainKind: TStringField
      FieldName = 'Kind'
    end
    object qrMainC_r: TIntegerField
      FieldName = 'C_r'
    end
    object qrMainC_d: TFloatField
      FieldName = 'C_d'
    end
    object qrMainC_m: TFloatField
      FieldName = 'C_m'
    end
    object qrMainS_r: TIntegerField
      FieldName = 'S_r'
    end
    object qrMainS_d: TFloatField
      FieldName = 'S_d'
    end
    object qrMainS_m: TFloatField
      FieldName = 'S_m'
    end
    object qrMainW_r: TIntegerField
      FieldName = 'W_r'
    end
    object qrMainW_d: TFloatField
      FieldName = 'W_d'
    end
    object qrMainW_m: TFloatField
      FieldName = 'W_m'
    end
    object qrMainO_r: TIntegerField
      FieldName = 'O_r'
    end
    object qrMainO_d: TFloatField
      FieldName = 'O_d'
    end
    object qrMainO_m: TFloatField
      FieldName = 'O_m'
    end
    object qrMainZ_r: TIntegerField
      FieldName = 'Z_r'
    end
    object qrMainZ_d: TFloatField
      FieldName = 'Z_d'
    end
    object qrMainZ_m: TFloatField
      FieldName = 'Z_m'
    end
    object qrMainA_r: TIntegerField
      FieldName = 'A_r'
    end
    object qrMainA_d: TFloatField
      FieldName = 'A_d'
    end
    object qrMainA_m: TFloatField
      FieldName = 'A_m'
    end
  end
  object qrGS: TQuery
    DatabaseName = 'dB'
    Left = 112
    Top = 136
  end
end
