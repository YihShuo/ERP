object RSLBatch: TRSLBatch
  Left = 502
  Top = 245
  Width = 318
  Height = 172
  Caption = 'RSLBatch'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 273
    Height = 89
    Caption = 'RSL Set File'
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 27
      Width = 89
      Height = 16
      Caption = 'RSL PDDate'#65306
    end
    object Label2: TLabel
      Left = 16
      Top = 59
      Width = 96
      Height = 16
      Caption = 'RSL FilePage'#65306
    end
    object DT1: TDateTimePicker
      Left = 120
      Top = 23
      Width = 146
      Height = 24
      Date = 42640.601645069440000000
      Format = 'yyyy/MM/dd'
      Time = 42640.601645069440000000
      TabOrder = 0
    end
    object RSLFileEdit: TEdit
      Left = 120
      Top = 55
      Width = 145
      Height = 24
      ReadOnly = True
      TabOrder = 1
      OnClick = RSLFileEditClick
    end
  end
  object Button1: TButton
    Left = 64
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Huy'
    TabOrder = 2
    OnClick = Button2Click
  end
end
