object ExportDialog: TExportDialog
  Left = 711
  Top = 308
  BorderStyle = bsDialog
  Caption = 'Export'
  ClientHeight = 141
  ClientWidth = 156
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 108
    Width = 156
    Height = 33
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 79
      Height = 33
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 78
      Top = 0
      Width = 79
      Height = 33
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 156
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object DTP1: TDateTimePicker
      Left = 40
      Top = 1
      Width = 112
      Height = 24
      Date = 45310.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45310.000000000000000000
      TabOrder = 0
      OnChange = DTP1Change
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 26
    Width = 156
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 40
      Top = -2
      Width = 112
      Height = 9
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP2: TDateTimePicker
      Left = 40
      Top = 6
      Width = 112
      Height = 24
      Date = 45310.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45310.000000000000000000
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 56
    Width = 156
    Height = 52
    Align = alClient
    TabOrder = 3
    object CLB1: TCheckListBox
      Left = 1
      Top = 1
      Width = 77
      Height = 50
      Align = alLeft
      Columns = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 0
    end
    object CLB2: TCheckListBox
      Left = 78
      Top = 1
      Width = 77
      Height = 50
      Align = alClient
      Columns = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 1
    end
  end
  object QExport: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 24
  end
end
