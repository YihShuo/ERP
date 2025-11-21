object TestItem_Standard: TTestItem_Standard
  Left = 552
  Top = 192
  Width = 320
  Height = 405
  Caption = 'Select Tested Item and Standard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object ItemView: TListView
    Left = 0
    Top = 0
    Width = 304
    Height = 367
    Align = alClient
    Columns = <
      item
        Caption = 'Tested Item'
        Width = 150
      end
      item
        Caption = 'Standard'
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
