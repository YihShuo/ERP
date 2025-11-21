object MaterialReleased_LotNO: TMaterialReleased_LotNO
  Left = 569
  Top = 288
  Width = 857
  Height = 379
  Caption = 'MaterialReleased_LotNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 168
      Top = 12
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
    end
    object Label3: TLabel
      Left = 552
      Top = 12
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LotNO:'
    end
    object Label4: TLabel
      Left = 420
      Top = 12
      Width = 22
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 55
      Top = 9
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      DataField = 'MaterialID'
      DataSource = MaterialReleasedCofirm.DS4
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 214
      Top = 9
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      DataField = 'RY_Begin'
      DataSource = MaterialReleasedCofirm.DS4
      ReadOnly = True
      TabOrder = 1
    end
    object QueryBtn: TButton
      Left = 708
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = QueryBtnClick
    end
    object Edit1: TEdit
      Left = 599
      Top = 9
      Width = 95
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 319
      Top = 9
      Width = 95
      Height = 24
      Date = 42401.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 42401.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 450
      Top = 9
      Width = 95
      Height = 24
      Date = 42794.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 42794.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 841
    Height = 299
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCNO'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'Pack'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'LotNO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 80
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 160
    object Query1SCNO: TStringField
      FieldName = 'SCNO'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query1Pack: TIntegerField
      FieldName = 'Pack'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1LotNO: TStringField
      FieldName = 'LotNO'
      Size = 50
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 46
    Top = 149
  end
end
