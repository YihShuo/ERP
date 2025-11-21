object ConverseProductionSchedule: TConverseProductionSchedule
  Left = 220
  Top = 188
  Width = 928
  Height = 480
  Caption = 'Converse Production Schedule'
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
    Height = 65
    Align = alTop
    TabOrder = 0
    object lbTo: TLabel
      Left = 136
      Top = 16
      Width = 18
      Height = 20
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnExcel: TButton
      Left = 760
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 0
      OnClick = bnExcelClick
    end
    object dtpFrom: TDateTimePicker
      Left = 48
      Top = 16
      Width = 81
      Height = 25
      Date = 41758.667785011570000000
      Format = 'yyyy/MM'
      Time = 41758.667785011570000000
      TabOrder = 1
    end
    object dtpTo: TDateTimePicker
      Left = 168
      Top = 16
      Width = 81
      Height = 25
      Date = 41758.667785011570000000
      Format = 'yyyy/MM'
      Time = 41758.667785011570000000
      TabOrder = 2
    end
    object bnImport: TButton
      Left = 584
      Top = 16
      Width = 113
      Height = 33
      Caption = 'Import Material Status'
      TabOrder = 3
      OnClick = bnImportClick
    end
  end
  object pnMain: TPanel
    Left = 0
    Top = 65
    Width = 912
    Height = 377
    Align = alClient
    TabOrder = 1
    object lbMsg: TLabel
      Left = 32
      Top = 64
      Width = 777
      Height = 80
      AutoSize = False
      Font.Charset = JOHAB_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    Left = 48
    Top = 72
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 8
    Top = 72
  end
end
