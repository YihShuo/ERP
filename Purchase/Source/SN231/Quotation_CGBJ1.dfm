object Quotation_CGBJ: TQuotation_CGBJ
  Left = 612
  Top = 336
  Width = 1273
  Height = 529
  Caption = 'Quotation_CGBJ'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1257
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 12
      Width = 78
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 44
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 12
      Width = 78
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VendorID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 44
      Width = 78
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 624
      Top = 37
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object YWPM1Edit: TEdit
      Left = 256
      Top = 40
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CLBHEdit: TEdit
      Left = 256
      Top = 8
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object YWPM2Edit: TEdit
      Left = 376
      Top = 40
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object YWPM3Edit: TEdit
      Left = 496
      Top = 40
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object ZSBHEdit: TEdit
      Left = 80
      Top = 8
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object zsywjcEdit: TEdit
      Left = 80
      Top = 40
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Button2: TButton
      Left = 720
      Top = 37
      Width = 89
      Height = 33
      Caption = 'Excel'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 621
      Top = 2
      Width = 89
      Height = 33
      Caption = 'Copy'
      TabOrder = 8
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1257
    Height = 417
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footer.FieldName = 'BJNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 270
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 312
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 48
      end
      item
        DisplayFormat = '#0.0000'
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 63
      end
      item
        DisplayFormat = '#0.0000'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Discount'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'SuppEx'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'EXPDATE'
        Footers = <>
        Width = 67
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        #9'    Select top 100 CGBJ.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,ZSZL.zs' +
        'ywjc from ('
      
        #9#9#9'Select *  from (select CGBJ.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.U' +
        'SPrice,CGBJS.VNPrice ,CGBJS.Discount, CGBJS.SuppEx,CGBJ.EXPDATE,'
      
        #9#9#9#9#9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CG' +
        'BJ.BJNO DESC) as  rn'
      #9#9#9#9#9#9#9#9#9#9'from CGBJ'
      #9#9#9#9#9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null'
      #9#9#9') CGBJ where rn=1 ) CGBJ'
      #9#9#9'left join CLZL on CLZL.CLDH=CGBJ.CLBH'
      #9#9#9'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH')
    Left = 424
    Top = 160
    object Query1BJNO: TStringField
      DisplayWidth = 11
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1zsywjc: TStringField
      DisplayWidth = 8
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1ZSBH: TStringField
      DisplayWidth = 6
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1CLBH: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1USPrice: TFloatField
      DisplayWidth = 10
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      DisplayWidth = 10
      FieldName = 'VNPrice'
    end
    object Query1Discount: TFloatField
      DisplayWidth = 10
      FieldName = 'Discount'
    end
    object Query1SuppEx: TFloatField
      DisplayWidth = 10
      FieldName = 'SuppEx'
    end
    object Query1EXPDATE: TDateTimeField
      FieldName = 'EXPDATE'
    end
    object Query1rn: TFloatField
      FieldName = 'rn'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 427
    Top = 193
  end
end
