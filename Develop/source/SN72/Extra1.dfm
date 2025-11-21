object Extra: TExtra
  Left = 609
  Top = 162
  Width = 1032
  Height = 659
  Caption = 'Select Extra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 1024
    Height = 587
    Align = alClient
    TabOrder = 0
    object ItemView: TListView
      Left = 1
      Top = 1
      Width = 1022
      Height = 585
      Align = alClient
      Columns = <
        item
          Caption = 'Extra'
          Width = 200
        end
        item
          Caption = 'Days'
        end
        item
          Caption = 'Chinese'
          Width = 244
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridLines = True
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = ItemViewDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
