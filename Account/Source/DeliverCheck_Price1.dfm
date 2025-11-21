object DeliverCheck_Price: TDeliverCheck_Price
  Left = 386
  Top = 236
  Width = 562
  Height = 344
  BorderIcons = [biSystemMenu]
  Caption = 'DeliverCheck_Price'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 280
      Top = 24
      Width = 58
      Height = 16
      Caption = 'MatCode:'
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 16
      Width = 97
      Height = 24
      Date = 39806.616723622680000000
      Format = 'yyyy/MM/dd'
      Time = 39806.616723622680000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 176
      Top = 16
      Width = 97
      Height = 24
      Date = 39806.616723622680000000
      Format = 'yyyy/MM/dd'
      Time = 39806.616723622680000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 472
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 344
      Top = 16
      Width = 113
      Height = 24
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 554
    Height = 261
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 108
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCRK.RKNO,KCRK.USERDate,KCRKS.CLBH,KCRKS.USPrice,KCRKS.VN' +
        'Price,ZSZL.ZSYWJC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH')
    Left = 216
    Top = 104
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 104
  end
end
