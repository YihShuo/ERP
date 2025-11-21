object PD_PrintHDlg: TPD_PrintHDlg
  Left = 805
  Top = 364
  Width = 281
  Height = 143
  Caption = 'Option'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 104
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 129
      Top = 8
      Width = 8
      Height = 24
      Caption = '||'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CB_ORDER: TCheckBox
      Left = 32
      Top = 14
      Width = 89
      Height = 17
      Caption = 'BY ORDER'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnMouseUp = CB_ORDERMouseUp
    end
    object CB_CYCLE: TCheckBox
      Left = 152
      Top = 14
      Width = 81
      Height = 17
      Caption = 'BY CYCLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnMouseUp = CB_CYCLEMouseUp
    end
    object CB_TP: TCheckBox
      Left = 32
      Top = 38
      Width = 201
      Height = 17
      Caption = 'TOTAL PAIRS FOR EACH SIZE'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object Option_OK: TButton
      Left = 48
      Top = 65
      Width = 75
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Option_OKClick
    end
    object Option_cancel: TButton
      Left = 144
      Top = 65
      Width = 75
      Height = 25
      Caption = 'CANCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Option_cancelClick
    end
  end
end
