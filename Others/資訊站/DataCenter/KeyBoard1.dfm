object KeyBoard: TKeyBoard
  Left = 439
  Top = 211
  BorderStyle = bsNone
  Caption = 'KeyBoard'
  ClientHeight = 305
  ClientWidth = 851
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
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 305
    Align = alClient
    BevelOuter = bvNone
    Color = 1710618
    TabOrder = 0
    object TouchPanel1: TTouchPanel
      Left = 4
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '1'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnMouseDown = TouchPanel1MouseDown
      OnMouseUp = TouchPanel1MouseUp
      OnTouch = TouchPanel1Touch
    end
    object TouchPanel2: TTouchPanel
      Left = 81
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '2'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object TouchPanel3: TTouchPanel
      Left = 158
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '3'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object TouchPanel4: TTouchPanel
      Left = 235
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '4'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object TouchPanel5: TTouchPanel
      Left = 312
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '5'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object TouchPanel6: TTouchPanel
      Left = 389
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '6'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object TouchPanel7: TTouchPanel
      Left = 466
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '7'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object TouchPanel8: TTouchPanel
      Left = 543
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '8'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object TouchPanel9: TTouchPanel
      Left = 620
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '9'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object TouchPanel10: TTouchPanel
      Left = 697
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '0'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object TouchPanel11: TTouchPanel
      Left = 774
      Top = 4
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = '-'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object TouchPanel12: TTouchPanel
      Left = 43
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'Q'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object TouchPanel13: TTouchPanel
      Left = 120
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'W'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object TouchPanel14: TTouchPanel
      Left = 197
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'E'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object TouchPanel15: TTouchPanel
      Left = 274
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'R'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object TouchPanel16: TTouchPanel
      Left = 351
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'T'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object TouchPanel17: TTouchPanel
      Left = 428
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'Y'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object TouchPanel18: TTouchPanel
      Left = 505
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'U'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object TouchPanel19: TTouchPanel
      Left = 582
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'I'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object TouchPanel20: TTouchPanel
      Left = 659
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'O'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object TouchPanel21: TTouchPanel
      Left = 736
      Top = 65
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'P'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object TouchPanel22: TTouchPanel
      Left = 81
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'A'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object TouchPanel23: TTouchPanel
      Left = 158
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'S'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object TouchPanel24: TTouchPanel
      Left = 235
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'D'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object TouchPanel25: TTouchPanel
      Left = 312
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'F'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
    object TouchPanel26: TTouchPanel
      Left = 389
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'G'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
    end
    object TouchPanel27: TTouchPanel
      Left = 466
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'H'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
    end
    object TouchPanel28: TTouchPanel
      Left = 543
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'J'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object TouchPanel29: TTouchPanel
      Left = 620
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'K'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
    end
    object TouchPanel30: TTouchPanel
      Left = 697
      Top = 126
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'L'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
    object TouchPanel31: TTouchPanel
      Left = 120
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'Z'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
    end
    object TouchPanel32: TTouchPanel
      Left = 197
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'X'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
    end
    object TouchPanel33: TTouchPanel
      Left = 274
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'C'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
    end
    object TouchPanel34: TTouchPanel
      Left = 351
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'V'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
    end
    object TouchPanel35: TTouchPanel
      Left = 428
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'B'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
    end
    object TouchPanel36: TTouchPanel
      Left = 505
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'N'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
    end
    object TouchPanel37: TTouchPanel
      Left = 582
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = 'M'
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
    end
    object TouchPanel38: TTouchPanel
      Left = 659
      Top = 187
      Width = 73
      Height = 57
      BevelOuter = bvNone
      Caption = #8592
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 37
      OnMouseUp = TouchPanel38MouseUp
    end
    object TouchPanel39: TTouchPanel
      Left = 0
      Top = 248
      Width = 851
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
      Caption = #9660
      Color = 3355443
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft YaHei'
      Font.Style = []
      ParentFont = False
      TabOrder = 38
      OnMouseUp = TouchPanel39MouseUp
    end
  end
end
