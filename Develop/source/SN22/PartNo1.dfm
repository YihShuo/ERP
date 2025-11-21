object PartNo: TPartNo
  Left = 498
  Top = 359
  Width = 689
  Height = 328
  Caption = 'PartNo'
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
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 222
      Top = 11
      Width = 57
      Height = 20
      Caption = 'Part No:'
    end
    object Label3: TLabel
      Left = 356
      Top = 13
      Width = 56
      Height = 20
      Caption = 'English:'
    end
    object Label2: TLabel
      Left = 6
      Top = 11
      Width = 82
      Height = 20
      Caption = 'Sample No:'
    end
    object bwdhEdit: TEdit
      Left = 282
      Top = 9
      Width = 57
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
      Left = 556
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object YWSMEdit1: TEdit
      Left = 414
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 90
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 673
    Height = 240
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
        FieldName = 'bwdh'
        Footers = <>
        Title.Caption = #37096#20301#20195#30908'|No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Title.Caption = #20013#25991#35498#26126'|Chinese'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = #33521#25991#35498#26126'|English'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
      'select bwdh,zwsm,ywsm,bwlb from bwzl')
    Left = 424
    Top = 160
    object PartQrybwdh: TStringField
      FieldName = 'bwdh'
      Origin = 'DB.bwzl.bwdh'
      FixedChar = True
      Size = 4
    end
    object PartQryzwsm: TStringField
      FieldName = 'zwsm'
      Origin = 'DB.bwzl.zwsm'
      FixedChar = True
      Size = 40
    end
    object PartQryywsm: TStringField
      FieldName = 'ywsm'
      Origin = 'DB.bwzl.ywsm'
      FixedChar = True
      Size = 40
    end
    object PartQrybwlb: TStringField
      FieldName = 'bwlb'
      Origin = 'DB.bwzl.bwlb'
      FixedChar = True
      Size = 1
    end
  end
end
