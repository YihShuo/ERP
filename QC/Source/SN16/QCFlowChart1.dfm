object QCFlowChart: TQCFlowChart
  Left = 416
  Top = 298
  Width = 928
  Height = 534
  Caption = 'QCFlowChart'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mainPanel: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 495
    Align = alClient
    TabOrder = 0
    object shp6: TShape
      Left = 20
      Top = 200
      Width = 380
      Height = 185
      Brush.Color = clTeal
      Shape = stRoundRect
    end
    object Shape10: TShape
      Left = 29
      Top = 288
      Width = 360
      Height = 91
      Brush.Color = clLime
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 20
      Top = 8
      Width = 413
      Height = 185
      Brush.Color = clTeal
      Shape = stRoundRect
    end
    object Shape9: TShape
      Left = 152
      Top = 35
      Width = 265
      Height = 153
      Brush.Color = clLime
      Shape = stRoundRect
    end
    object SN724_Back: TShape
      Left = 304
      Top = 77
      Width = 108
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN723_Back: TShape
      Left = 163
      Top = 117
      Width = 134
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN722_Back: TShape
      Left = 163
      Top = 45
      Width = 134
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN721_Back: TShape
      Left = 29
      Top = 77
      Width = 108
      Height = 65
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN56_Back: TShape
      Left = 35
      Top = 312
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN51_Back: TShape
      Left = 153
      Top = 229
      Width = 108
      Height = 49
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN5B_Back: TShape
      Left = 152
      Top = 312
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN5B_Link: TLabel
      Left = 156
      Top = 324
      Width = 105
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N5B QC Defect Input'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Shape8: TShape
      Left = 204
      Top = 277
      Width = 5
      Height = 12
      Brush.Color = clBlack
    end
    object SN51_Link: TLabel
      Left = 157
      Top = 238
      Width = 101
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N51 QC Issue'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN56_Link: TLabel
      Left = 40
      Top = 324
      Width = 102
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N56 QC Andon Input'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label6: TLabel
      Left = 32
      Top = 291
      Width = 121
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Realtime'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 152
      Top = 291
      Width = 113
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Batch'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 48
      Top = 15
      Width = 361
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'QC Material Testing'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN721_Link: TLabel
      Left = 32
      Top = 93
      Width = 102
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N721 QC Material '
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN722_Link: TLabel
      Left = 168
      Top = 61
      Width = 126
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'SN722 Leather Report'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN723_Link: TLabel
      Left = 168
      Top = 125
      Width = 125
      Height = 48
      Alignment = taCenter
      AutoSize = False
      Caption = 'SN723 Textile/Accessory Report'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object SN724_Link: TLabel
      Left = 309
      Top = 93
      Width = 99
      Height = 44
      Alignment = taCenter
      AutoSize = False
      Caption = 'SN724 Mat Lab Check'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 96
      Top = 208
      Width = 233
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'QC Production line'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape11: TShape
      Left = 207
      Top = 192
      Width = 5
      Height = 10
      Brush.Color = clBlack
    end
    object Shape13: TShape
      Left = 136
      Top = 106
      Width = 9
      Height = 4
      Brush.Color = clBlack
    end
    object Shape14: TShape
      Left = 144
      Top = 77
      Width = 5
      Height = 68
      Brush.Color = clBlack
    end
    object Shape15: TShape
      Left = 146
      Top = 77
      Width = 7
      Height = 4
      Brush.Color = clBlack
    end
    object Shape16: TShape
      Left = 146
      Top = 141
      Width = 7
      Height = 4
      Brush.Color = clBlack
    end
    object Label2: TLabel
      Left = 269
      Top = 291
      Width = 113
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'Outsole'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object SN5F_Back: TShape
      Left = 269
      Top = 312
      Width = 113
      Height = 59
      Brush.Color = clMoneyGreen
      Shape = stRoundRect
    end
    object SN5F_Link: TLabel
      Left = 273
      Top = 324
      Width = 105
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'N5F Outsole Inspection'
      Color = clMoneyGreen
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
  end
end
