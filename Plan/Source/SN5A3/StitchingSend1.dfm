object StitchingSend: TStitchingSend
  Left = 378
  Top = 252
  Width = 1305
  Height = 675
  Caption = 'Stitching Send'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 20
      Height = 20
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 48
      Top = 12
      Width = 137
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 560
      Top = 12
      Width = 75
      Height = 27
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 192
      Top = 5
      Width = 361
      Height = 36
      TabOrder = 2
      object RB1: TRadioButton
        Left = 120
        Top = 14
        Width = 105
        Height = 17
        Caption = #20197#20992#25976#39023#31034
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RB2: TRadioButton
        Left = 232
        Top = 14
        Width = 121
        Height = 17
        Caption = #20197#30334#20998#27604#39023#31034
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RB3: TRadioButton
        Left = 8
        Top = 14
        Width = 105
        Height = 17
        Caption = #20197#38617#25976#39023#31034
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 51
    Width = 1289
    Height = 585
    Align = alClient
    ColCount = 2
    RowCount = 3
    FixedRows = 2
    TabOrder = 1
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 160
  end
  object QSize: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 192
  end
end
