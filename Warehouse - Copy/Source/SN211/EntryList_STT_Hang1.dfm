object EntryList_STT_Hang: TEntryList_STT_Hang
  Left = 401
  Top = 233
  Width = 1419
  Height = 532
  Caption = 'EntryList_STT_Hang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1403
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
      Left = 262
      Top = 13
      Width = 52
      Height = 16
      Caption = 'DOCNO:'
      FocusControl = DBGridEh1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 13
      Width = 72
      Height = 16
      Caption = 'Declaration:'
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
      Left = 317
      Top = 9
      Width = 151
      Height = 24
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 98
      Top = 9
      Width = 124
      Height = 24
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1403
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
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
        FieldName = 'DECLARATION'
        Footers = <>
        Title.Caption = 'To Khai'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'Invoice'
        Width = 120
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'SOTT'
        Footers = <>
        Title.Caption = 'STT Hang'
      end
      item
        EditButtons = <>
        FieldName = 'NGAYTHONGQUAN'
        Footers = <>
        Title.Caption = 'Ngay Thong Quan'
      end
      item
        EditButtons = <>
        FieldName = 'MALOAIHINH'
        Footers = <>
        Title.Caption = 'Loai Hinh'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'MANPL_SP'
        Footers = <>
        Title.Caption = 'Ma NPL SP'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TONGSOLUONG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Tong SL'
      end
      item
        EditButtons = <>
        FieldName = 'DONGIA'
        Footers = <>
        Title.Caption = 'Don Gia'
      end
      item
        EditButtons = <>
        FieldName = 'TRIGIANT'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Tri Gia NT'
      end
      item
        EditButtons = <>
        FieldName = 'XUATXU'
        Footers = <>
        Title.Caption = 'Xuat Xu'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HSCODE'
        Footers = <>
        Title.Caption = 'HS Code'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'TENHANGHOA'
        Footers = <>
        Title.Caption = 'Ten Hang Hoa'
        Width = 350
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select DeclarationS.DECLARATION,DeclarationS.DOCNO,DeclarationS.' +
        'SOTT,Declaration.NGAYTHONGQUAN,DeclarationS.MALOAIHINH'
      
        #9#9',DeclarationS.MANPL_SP,DeclarationS.TONGSOLUONG,DeclarationS.T' +
        'RIGIANT,DeclarationS.TENDOITAC'
      'From CGZL_DeclarationS DeclarationS'
      'left join CGZL_Declaration Declaration'
      
        'on DeclarationS.DECLARATION=Declaration.DECLARATION and Declarat' +
        'ionS.DOCNO=Declaration.DOCNO'
      
        'Where DeclarationS.DOCNO='#39'LYCMS-290-2024-CSG'#39' and DeclarationS.D' +
        'ECLARATION='#39'106695420750'#39
      '')
    Left = 216
    Top = 128
    object Query1DECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object Query1SOTT: TIntegerField
      FieldName = 'SOTT'
    end
    object Query1NGAYTHONGQUAN: TDateTimeField
      FieldName = 'NGAYTHONGQUAN'
    end
    object Query1MALOAIHINH: TStringField
      FieldName = 'MALOAIHINH'
      FixedChar = True
      Size = 5
    end
    object Query1MANPL_SP: TStringField
      FieldName = 'MANPL_SP'
      FixedChar = True
      Size = 50
    end
    object Query1TONGSOLUONG: TCurrencyField
      FieldName = 'TONGSOLUONG'
      DisplayFormat = '##,#0.00'
    end
    object Query1TRIGIANT: TCurrencyField
      FieldName = 'TRIGIANT'
      DisplayFormat = '##,#0.00'
    end
    object Query1TENDOITAC: TStringField
      FieldName = 'TENDOITAC'
      FixedChar = True
      Size = 255
    end
    object Query1XUATXU: TStringField
      FieldName = 'XUATXU'
      Size = 50
    end
    object Query1DONGIA: TFloatField
      FieldName = 'DONGIA'
    end
    object Query1HSCODE: TStringField
      FieldName = 'HSCODE'
      Size = 50
    end
    object Query1TENHANGHOA: TStringField
      FieldName = 'TENHANGHOA'
      Size = 800
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 128
  end
  object qry_temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 320
    Top = 128
  end
end
