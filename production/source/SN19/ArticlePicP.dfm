object ArticlePic: TArticlePic
  Left = 236
  Top = 125
  Width = 1280
  Height = 615
  Caption = 'Article Picture'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QCImage: TImage
    Left = 0
    Top = 105
    Width = 1272
    Height = 479
    HelpType = htKeyword
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    Stretch = True
    OnDblClick = QCImageDblClick
  end
  object ToolPanel: TPanel
    Left = 0
    Top = 0
    Width = 1272
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object PFCGroupBox: TGroupBox
      Left = 552
      Top = 2
      Width = 393
      Height = 95
      Caption = 'Media File'
      TabOrder = 0
      Visible = False
      object Info: TLabel
        Left = 17
        Top = 65
        Width = 368
        Height = 20
        AutoSize = False
      end
      object ClassCombo: TComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        ItemIndex = 0
        TabOrder = 0
        Text = 'Assambly'
        OnChange = ClassComboChange
        Items.Strings = (
          'Assambly'
          'Cutting'
          'Packing'
          'Stitching')
      end
      object Button2: TButton
        Left = 304
        Top = 24
        Width = 75
        Height = 41
        Caption = 'Open'
        TabOrder = 1
        OnClick = Button2Click
      end
      object FileTypeCombo: TComboBox
        Left = 168
        Top = 32
        Width = 129
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        ItemIndex = 0
        TabOrder = 2
        Text = 'AVI'
        OnChange = FileTypeComboChange
        Items.Strings = (
          'AVI'
          'PDF'
          'XLS')
      end
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 0
      Width = 513
      Height = 97
      Caption = 'Search'
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 100
        Height = 20
        Caption = 'Order Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 251
        Top = 47
        Width = 55
        Height = 20
        Caption = 'XieXing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 36
        Top = 47
        Width = 75
        Height = 20
        Caption = 'Article NO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 112
        Top = 15
        Width = 121
        Height = 28
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 112
        Top = 46
        Width = 121
        Height = 28
        TabOrder = 1
      end
      object CB1: TCheckBox
        Left = 248
        Top = 16
        Width = 249
        Height = 17
        Caption = 'Search In Six Months Data'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 315
        Top = 46
        Width = 121
        Height = 28
        TabOrder = 3
      end
      object Button1: TButton
        Left = 446
        Top = 46
        Width = 59
        Height = 25
        Caption = 'Query'
        TabOrder = 4
        OnClick = Button1Click
      end
    end
  end
  object JPGTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = JPGTimerTimer
    Left = 768
    Top = 88
  end
  object PFCQuery: TQuery
    DatabaseName = 'DB'
    Left = 728
    Top = 88
  end
end
