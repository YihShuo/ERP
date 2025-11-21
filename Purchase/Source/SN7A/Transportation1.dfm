object Transportation: TTransportation
  Left = 192
  Top = 107
  Width = 1045
  Height = 633
  Caption = 'Transportation'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1037
    Height = 606
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Transportation_fee'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1029
        Height = 49
        Align = alTop
        TabOrder = 0
        object Button1: TButton
          Left = 16
          Top = 5
          Width = 65
          Height = 38
          Caption = 'UPLOAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 89
          Top = 5
          Width = 65
          Height = 38
          Caption = 'UPDATE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 49
        Width = 1029
        Height = 525
        Align = alClient
        ColCount = 6
        DefaultColWidth = 12
        DefaultRowHeight = 17
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
        TabOrder = 1
        ColWidths = (
          12
          168
          120
          121
          130
          133)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Surcharge'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1029
        Height = 49
        Align = alTop
        TabOrder = 0
        Visible = False
        object Button3: TButton
          Left = 16
          Top = 5
          Width = 65
          Height = 38
          Caption = 'UPLOAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 89
          Top = 5
          Width = 65
          Height = 38
          Caption = 'UPDATE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object StringGrid2: TStringGrid
        Left = 0
        Top = 49
        Width = 1029
        Height = 525
        Align = alClient
        ColCount = 7
        DefaultColWidth = 12
        DefaultRowHeight = 17
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
        TabOrder = 1
        Visible = False
        ColWidths = (
          12
          139
          125
          158
          116
          122
          140)
      end
    end
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Excel|*.xlsx'
    Left = 224
    Top = 8
  end
end
