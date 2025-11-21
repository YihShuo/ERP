object EntryList_VATNO: TEntryList_VATNO
  Left = 791
  Top = 244
  Width = 675
  Height = 532
  Caption = 'EntryList_VATNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 13
      Width = 50
      Height = 16
      Caption = 'VATNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 260
      Top = 13
      Width = 59
      Height = 16
      Caption = 'VATDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 414
      Top = 14
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
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 48
      Height = 16
      Caption = 'SuppID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 556
      Top = 5
      Width = 89
      Height = 33
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
    object EDIT1: TEdit
      Left = 187
      Top = 9
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 321
      Top = 8
      Width = 89
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = '?? (??) - ???'
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 430
      Top = 8
      Width = 89
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = '?? (??) - ???'
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 58
      Top = 9
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 659
    Height = 452
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
    FooterFont.Height = -11
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
        FieldName = 'VATNO'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
        Footers = <>
        Title.Caption = 'Tax Code'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'SuppID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier Name'
        Width = 250
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZL_VATNO.*,zszl.zsdh,zszl.zsywjc '
      'from CGZL_VATNO'
      'left join zszl on zszl.tybh=CGZL_VATNO.ZSBH_MST')
    Left = 216
    Top = 128
    object Query1VATNO: TStringField
      FieldName = 'VATNO'
      Origin = 'DB.CGZL_VATNO.VATNO'
      FixedChar = True
      Size = 50
    end
    object Query1VATDATE: TDateTimeField
      FieldName = 'VATDATE'
      Origin = 'DB.CGZL_VATNO.VATDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1ZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Origin = 'DB.CGZL_VATNO.ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_VATNO.USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_VATNO.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_VATNO.YN'
      FixedChar = True
      Size = 1
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 128
  end
end
