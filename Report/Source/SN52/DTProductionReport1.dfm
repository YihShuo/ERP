object DTProductionReport: TDTProductionReport
  Left = 255
  Top = 181
  Width = 947
  Height = 480
  Caption = 'N91 DT Production Report'
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
  object gdMain: TDBGridEh
    Left = 0
    Top = 65
    Width = 931
    Height = 377
    Align = alClient
    AllowedOperations = []
    AllowedSelections = []
    AutoFitColWidths = True
    DataSource = dsMain
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    HorzScrollBar.Tracking = True
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = gdMainDrawColumnCell
  end
  object pnQuery: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 65
    Align = alTop
    TabOrder = 1
    object lbKind: TLabel
      Left = 16
      Top = 40
      Width = 60
      Height = 13
      AutoSize = False
      Constraints.MinWidth = 5
    end
    object lbDate: TLabel
      Left = 88
      Top = 40
      Width = 177
      Height = 13
      AutoSize = False
    end
    object lbRotating: TLabel
      Left = 312
      Top = 40
      Width = 129
      Height = 17
      AutoSize = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 344
      Top = 16
      Width = 21
      Height = 13
      Caption = 'to'#33267
    end
    object cbKind: TComboBox
      Left = 24
      Top = 8
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Current'#27491#21934
      OnChange = cbKindChange
      Items.Strings = (
        'Current'#27491#21934
        'Preparation'#38928#35036#21934)
    end
    object dtpPre: TDateTimePicker
      Left = 232
      Top = 8
      Width = 97
      Height = 25
      Date = 0.606140891206450800
      Time = 0.606140891206450800
      TabOrder = 1
    end
    object bnQuery: TButton
      Left = 632
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = bnQueryClick
    end
    object bnExcel: TButton
      Left = 744
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = bnExcelClick
    end
    object cbRotating: TCheckBox
      Left = 504
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Ratating'#36852#36681#25976
      TabOrder = 4
    end
    object dtpPost: TDateTimePicker
      Left = 384
      Top = 8
      Width = 97
      Height = 25
      Date = 41601.606140891210000000
      Time = 41601.606140891210000000
      TabOrder = 5
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 72
    Top = 408
  end
  object qrMain: TQuery
    DatabaseName = 'DB'
    Left = 112
    Top = 408
  end
end
