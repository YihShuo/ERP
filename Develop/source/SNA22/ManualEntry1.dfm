object ManualEntry: TManualEntry
  Left = 662
  Top = 359
  Width = 307
  Height = 192
  BorderIcons = [biSystemMenu]
  Caption = 'Manual Entry'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 153
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 46
      Top = 32
      Width = 64
      Height = 16
      Caption = 'Invoice No'
    end
    object Label2: TLabel
      Left = 91
      Top = 57
      Width = 19
      Height = 16
      Caption = 'PO'
    end
    object Label3: TLabel
      Left = 41
      Top = 82
      Width = 69
      Height = 16
      Caption = 'Material No'
    end
    object ED_InvoiceNo: TEdit
      Left = 120
      Top = 29
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object ED_PO: TEdit
      Left = 120
      Top = 54
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object ED_MaterialNo: TEdit
      Left = 120
      Top = 79
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 108
      Top = 116
      Width = 75
      Height = 25
      Caption = 'Confirm'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
