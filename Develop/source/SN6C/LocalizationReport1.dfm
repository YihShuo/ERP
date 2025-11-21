object LocalizationReport: TLocalizationReport
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Localization Report'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label67: TLabel
      Left = 8
      Top = 25
      Width = 56
      Height = 16
      Caption = 'SEASON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 348
      Top = 25
      Width = 26
      Height = 16
      Caption = 'SR#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 502
      Top = 25
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label221: TLabel
      Left = 669
      Top = 25
      Width = 73
      Height = 16
      Caption = 'Sample NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label272: TLabel
      Left = 128
      Top = 25
      Width = 32
      Height = 16
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label105: TLabel
      Left = 976
      Top = 10
      Width = 178
      Height = 20
      Caption = 'Localization (VN >=80%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label106: TLabel
      Left = 976
      Top = 35
      Width = 196
      Height = 20
      Caption = 'Localization (VN >= 80%)%:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ptVN: TLabel
      Left = 1178
      Top = 35
      Width = 26
      Height = 20
      Caption = 'N/A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object qtyVN: TLabel
      Left = 1178
      Top = 10
      Width = 26
      Height = 20
      Caption = 'N/A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 232
      Top = 25
      Width = 36
      Height = 16
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 66
      Top = 20
      Width = 55
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 375
      Top = 20
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 540
      Top = 20
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 745
      Top = 20
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 161
      Top = 20
      Width = 61
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'Inline'
        'Incubate'
        'CTM')
    end
    object Button1: TButton
      Left = 882
      Top = 4
      Width = 85
      Height = 27
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object ComboBox3: TComboBox
      Left = 273
      Top = 20
      Width = 61
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        ''
        'CR1'
        'CR2'
        'CFM')
    end
    object Button2: TButton
      Left = 882
      Top = 35
      Width = 85
      Height = 27
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 65
    Width = 1289
    Height = 571
    Align = alClient
    DataSource = IMAGE
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <
          item
            FieldName = 'DEVCODE'
            ValueType = fvtCount
          end>
        Title.Caption = 'SR#'
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'pt'
        Footers = <>
        Visible = False
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ptR1'
        Footers = <>
        Title.Caption = 'R1'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ptR2'
        Footers = <>
        Title.Caption = 'R2'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ptCFM'
        Footers = <>
        Title.Caption = 'CFM'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'shehao'
        Footers = <>
        Visible = False
        Width = 114
      end>
  end
  object startcfm: TQuery
    DatabaseName = 'dB'
    Left = 100
    Top = 536
  end
  object QryIMAGE: TQuery
    AfterOpen = QryIMAGEAfterOpen
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select isnull(KFXXZL.Article,'#39#39') as Article,'
      'isnull(KFXXZL.DEVCODE,'#39#39') as DEVCODE,'
      'isnull(KFXXZL.FD,'#39#39') as FD,'
      'isnull(XXZLKF.imgnamer1,'#39#39') as IMAGER1,'
      'isnull(XXZLKF.imgnamer2,'#39#39') as IMAGER2,'
      'isnull(XXZLKF.imgnamer3,'#39#39') as IMAGER3,'
      'isnull(XXZLKF.imgnamer4,'#39#39') as IMAGER4,'
      'isnull(XXZLKF.imgnamecfm,'#39#39') as IMAGECFM,'
      'KFXXZL.xiexing,KFXXZL.shehao'
      ' from KFXXZL'
      
        'left join  xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.sh' +
        'ehao=kfxxzl.shehao'
      'where kfxxzl.jijie like '#39'%%'#39
      'and KFXXZL.khdH='#39'036'#39' ')
    Left = 468
    Top = 536
    object QryIMAGEArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QryIMAGEDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object QryIMAGEjijie: TStringField
      FieldName = 'jijie'
    end
    object QryIMAGEYPDH: TStringField
      FieldName = 'YPDH'
    end
    object QryIMAGEFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object QryIMAGEptR1: TFloatField
      FieldName = 'ptR1'
    end
    object QryIMAGEptR2: TFloatField
      FieldName = 'ptR2'
    end
    object QryIMAGEptCFM: TFloatField
      FieldName = 'ptCFM'
    end
    object QryIMAGEpt: TFloatField
      FieldName = 'pt'
    end
    object QryIMAGExiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object QryIMAGEshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
  end
  object IMAGE: TDataSource
    DataSet = QryIMAGE
    Left = 468
    Top = 504
  end
end
