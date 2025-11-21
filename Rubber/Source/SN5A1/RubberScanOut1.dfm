object RubberScanOut: TRubberScanOut
  Left = 192
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'Rubber scan out'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 984
      Top = 32
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 208
      Top = 32
      Width = 82
      Height = 24
      Caption = 'QRCODE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 304
      Top = 16
      Width = 353
      Height = 49
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
    object CLassCB: TComboBox
      Left = 1032
      Top = 32
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Ca 1 - Morning'
      Visible = False
      Items.Strings = (
        'Ca 1 - Morning'
        'Ca 2- Noon'
        'Ca 3 - Night')
    end
    object UploadBtn: TButton
      Left = 752
      Top = 20
      Width = 89
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = UploadBtnClick
    end
    object Button2: TButton
      Left = 857
      Top = 20
      Width = 81
      Height = 41
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 161
      Height = 65
      TabOrder = 4
      object RadioQRCODE: TRadioButton
        Left = 16
        Top = 16
        Width = 113
        Height = 17
        Caption = 'QRCODE'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 40
        Width = 113
        Height = 17
        Caption = 'RY ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 1297
    Height = 555
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEBAR'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDBH'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okCTS'
        ReadOnly = True
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'outCTS'
        Visible = True
      end>
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      
        'update [TB_ERP].[dbo].[SMDDScanOut] set [ROut]=:ROut where [QRCo' +
        'de]=:QRCode and [GXLB]='#39'O'#39' ')
    Left = 560
    Top = 304
  end
  object DS1: TDataSource
    DataSet = WorkScanQry
    Left = 560
    Top = 271
  end
  object WorkScanQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT [CODEBAR],[DDBH],[XXCC],[okCTS]-isnull([outCTS],0) [okCTS' +
        '] ,0 [outCTS]'
      '  FROM [TB_ERP].[dbo].[SMDDSS] where 1<>1')
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object WorkScanQryCODEBAR: TStringField
      FieldName = 'CODEBAR'
    end
    object WorkScanQryDDBH: TStringField
      FieldName = 'DDBH'
    end
    object WorkScanQryXXCC: TStringField
      FieldName = 'XXCC'
    end
    object WorkScanQryokCTS: TIntegerField
      FieldName = 'okCTS'
    end
    object WorkScanQryoutCTS: TIntegerField
      FieldName = 'outCTS'
    end
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 527
    Top = 240
  end
end
