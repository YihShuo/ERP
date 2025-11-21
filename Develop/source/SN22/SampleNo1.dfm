object SampleNo: TSampleNo
  Left = 506
  Top = 528
  Width = 689
  Height = 328
  Caption = 'SampleNo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 55
      Top = 51
      Width = 27
      Height = 20
      Caption = 'SR:'
    end
    object Label2: TLabel
      Left = 6
      Top = 11
      Width = 82
      Height = 20
      Caption = 'Sample No:'
    end
    object Label3: TLabel
      Left = 244
      Top = 11
      Width = 63
      Height = 20
      Caption = 'Style No:'
    end
    object Label4: TLabel
      Left = 263
      Top = 43
      Width = 41
      Height = 20
      Caption = 'Color:'
    end
    object Label5: TLabel
      Left = 420
      Top = 11
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Edit5: TEdit
      Left = 312
      Top = 9
      Width = 87
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 420
      Top = 41
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 90
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 90
      Top = 48
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 312
      Top = 41
      Width = 87
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 474
      Top = 7
      Width = 87
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 673
    Height = 200
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypdh'
        Footers = <>
        Title.Caption = 'Sample NO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = 'Style No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = 'Color'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end>
  end
  object DS1: TDataSource
    DataSet = PartQry
    Left = 424
    Top = 128
  end
  object PartQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ypdh,ypzl.XieXing,ypzl.SheHao,ypzl.ARTICLE,DEVCODE,ypzl.K' +
        'FJD'
      'from ypzl left join kfxxzl '
      
        'ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao' +
        ' '
      'where ypdh like '#39'LAIK240500164%'#39
      '')
    Left = 424
    Top = 160
    object PartQryypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object PartQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object PartQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object PartQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object PartQryDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object PartQryKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
  end
end
