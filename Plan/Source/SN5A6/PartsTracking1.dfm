object PartsTracking: TPartsTracking
  Left = 219
  Top = 159
  Width = 1305
  Height = 675
  Caption = 'PartsTracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 65
    Align = alTop
    TabOrder = 0
    OnClick = Panel1Click
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 39
      Height = 16
      Caption = 'DDBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 12
      Width = 35
      Height = 16
      Caption = 'LEAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 497
      Top = 12
      Width = 56
      Height = 16
      Caption = 'PlanDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 659
      Top = 16
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SB1: TSpeedButton
      Left = 460
      Top = 7
      Width = 18
      Height = 24
      Glyph.Data = {
        96000000424D9600000000000000360000002800000007000000040000000100
        18000000000060000000120B0000120B00000000000000000000F0F0F0F0F0F0
        F0F0F0000000F0F0F0F0F0F0F0F0F0000000F0F0F0F0F0F00000000000000000
        00F0F0F0F0F0F0000000F0F0F0000000000000000000000000000000F0F0F000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SB1Click
    end
    object Edit1: TEdit
      Left = 60
      Top = 36
      Width = 709
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 880
      Top = 8
      Width = 73
      Height = 49
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Print1: TBitBtn
      Left = 1040
      Top = 8
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Print1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Print2: TBitBtn
      Left = 1104
      Top = 8
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Generate'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Print2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object DTP1: TDateTimePicker
      Left = 560
      Top = 8
      Width = 97
      Height = 24
      Date = 43818.618274467590000000
      Format = 'yyyy/MM/dd'
      Time = 43818.618274467590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 672
      Top = 8
      Width = 97
      Height = 24
      Date = 43818.618274467590000000
      Format = 'yyyy/MM/dd'
      Time = 43818.618274467590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object LEANEdit: TEdit
      Left = 60
      Top = 8
      Width = 402
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnExit = LEANEditExit
    end
    object Button2: TButton
      Left = 952
      Top = 8
      Width = 73
      Height = 49
      Caption = 'Exception'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object CB1: TComboBox
      Left = 784
      Top = 24
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = #20013#25991
      Items.Strings = (
        #20013#25991
        'ENGLISH'
        'VIETNAM')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 1287
    Height = 443
    Align = alClient
    ColCount = 2
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking]
    TabOrder = 1
    OnDrawCell = StringGrid1DrawCell
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 508
    Width = 1287
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object CLLean: TCheckListBox
    Left = 60
    Top = 31
    Width = 420
    Height = 38
    OnClickCheck = CLLeanClickCheck
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'Lean')
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = CLLeanClick
  end
  object QRotation: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 96
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = QPrint
    Left = 16
    Top = 560
  end
  object QPrint: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 560
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.CenterText.Strings = (
      '&[Page] / &[Pages]')
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -21
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    PrintFontName = #26032#32048#26126#39636
    Units = MM
    Left = 80
    Top = 560
  end
end
