object YPZLShipReviseUsage_BWBH: TYPZLShipReviseUsage_BWBH
  Left = 524
  Top = 486
  Width = 681
  Height = 237
  Caption = 'YPZLShipReviseUsage_BWBH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 673
    Height = 157
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWDH'
        Footers = <>
        Title.Caption = 'ID'
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 14
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 176
      Top = 14
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWSM:'
    end
    object Label3: TLabel
      Left = 376
      Top = 14
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZWSM:'
    end
    object Button1: TButton
      Left = 584
      Top = 5
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 248
      Top = 11
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 56
      Top = 11
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 448
      Top = 11
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 384
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select BWDH,YWSM,ZWSM from BWZL')
    Left = 384
    Top = 152
    object Query1BWDH: TStringField
      DisplayWidth = 4
      FieldName = 'BWDH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      DisplayWidth = 24
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1ZWSM: TStringField
      DisplayWidth = 23
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
  end
end
