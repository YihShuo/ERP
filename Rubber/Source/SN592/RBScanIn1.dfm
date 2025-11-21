object RBScanIn: TRBScanIn
  Left = 296
  Top = 167
  Width = 1305
  Height = 675
  Caption = 'RB ScanIn'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 286
      Top = 31
      Width = 42
      Height = 25
      Caption = 'QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 1032
      Top = 18
      Width = 43
      Height = 16
      Caption = 'CLASS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 396
      Top = 20
      Width = 353
      Height = 45
      AutoSize = False
      Color = 10223615
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button2: TButton
      Left = 904
      Top = 21
      Width = 81
      Height = 41
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 96
      Top = 0
      Width = 177
      Height = 81
      Caption = 'P0000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 96
        Top = 28
        Width = 11
        Height = 20
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 96
        Top = 53
        Width = 11
        Height = 20
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 32
        Width = 54
        Height = 16
        Caption = 'All QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 56
        Width = 56
        Height = 16
        Caption = 'OK QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object StaticText1: TStaticText
      Left = 771
      Top = 30
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EDqty: TEdit
      Left = 338
      Top = 26
      Width = 41
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '5'
      OnKeyPress = EDqtyKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 65
      Height = 73
      TabOrder = 5
      object Label19: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 29
        Caption = 'RB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Button1: TButton
      Left = 803
      Top = 22
      Width = 81
      Height = 41
      Caption = 'UPLOAD'
      TabOrder = 6
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 1086
      Top = 15
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      Text = 'Ca 1 - Morning'
      Items.Strings = (
        'Ca 1 - Morning'
        'Ca 2- Noon'
        'Ca 3 - Night')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 97
    Width = 1289
    Height = 539
    Align = alClient
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 144
    Top = 336
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 256
    object Delete: TMenuItem
      Caption = 'Delete'
      OnClick = DeleteClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 568
    Top = 192
  end
end
