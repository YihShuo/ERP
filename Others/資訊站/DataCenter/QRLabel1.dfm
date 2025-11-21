object QRLabel: TQRLabel
  Left = 457
  Top = 289
  BorderStyle = bsNone
  Caption = 'QRLabel'
  ClientHeight = 259
  ClientWidth = 165
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 165
    Height = 259
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object LB_ORDER: TLabel
      Left = 0
      Top = 132
      Width = 165
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'ORDER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_PART: TLabel
      Left = 0
      Top = 154
      Width = 165
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'PART'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 0
      Top = 180
      Width = 82
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'SIZE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_SIZE: TLabel
      Left = 0
      Top = 199
      Width = 82
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'SIZE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 0
      Top = 232
      Width = 82
      Height = 27
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'QTY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_DATE: TLabel
      Left = 0
      Top = 0
      Width = 165
      Height = 30
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 180
      Width = 82
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'XXCC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_XXCC: TLabel
      Left = 83
      Top = 199
      Width = 82
      Height = 27
      Alignment = taCenter
      AutoSize = False
      Caption = 'XXCC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Shape1: TShape
      Left = 2
      Top = 230
      Width = 161
      Height = 2
      Align = alCustom
      Pen.Width = 2
    end
    object LB_QTY: TLabel
      Left = 83
      Top = 232
      Width = 82
      Height = 27
      Align = alCustom
      Alignment = taCenter
      AutoSize = False
      Caption = 'QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object LB_DIECUT: TLabel
      Left = 0
      Top = 110
      Width = 165
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'DieCut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Panel2: TPanel
      Left = 0
      Top = 30
      Width = 165
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object PaintBox1: TPaintBox
        Left = 10
        Top = 0
        Width = 75
        Height = 75
        Align = alLeft
        OnPaint = PaintBox1Paint
      end
      object LB_MACHINE: TLabel
        Left = 85
        Top = 0
        Width = 80
        Height = 75
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Machine'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft YaHei'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object IMG_MACHINE: TImage
        Left = 0
        Top = 0
        Width = 10
        Height = 75
        Align = alLeft
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 105
      Width = 165
      Height = 5
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
    end
  end
end
