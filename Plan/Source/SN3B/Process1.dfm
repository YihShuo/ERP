object F_Process: TF_Process
  Left = 895
  Top = 278
  Width = 180
  Height = 409
  Caption = 'F_Process'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 172
    Height = 382
    Align = alClient
    ColCount = 2
    DefaultColWidth = 12
    RowCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    OnMouseDown = StringGrid1MouseDown
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 104
    Top = 8
  end
end
