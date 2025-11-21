object Report: TReport
  Left = 589
  Top = 248
  Width = 343
  Height = 361
  Caption = 'Select Report'
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
  object ItemView: TListView
    Left = 0
    Top = 0
    Width = 327
    Height = 323
    Align = alClient
    Columns = <
      item
        Caption = 'Module'
        Width = 86
      end
      item
        Caption = 'Report Name'
        Width = 150
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
