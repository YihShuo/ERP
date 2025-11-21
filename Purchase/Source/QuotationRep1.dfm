object QuotationRep: TQuotationRep
  Left = 699
  Top = 326
  Width = 919
  Height = 500
  Caption = 'QuotationRep'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 19
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 20
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'English:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 536
      Top = 18
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 50
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chinese:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 536
      Top = 51
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = -2
      Top = 51
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BJNO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 71
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 265
      Top = 16
      Width = 115
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 382
      Top = 16
      Width = 155
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 608
      Top = 15
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button1: TButton
      Left = 798
      Top = 44
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 797
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 265
      Top = 48
      Width = 115
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 382
      Top = 48
      Width = 155
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object checkbox1: TCheckBox
      Left = 682
      Top = 19
      Width = 49
      Height = 17
      Caption = 'TW'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 8
    end
    object checkbox2: TCheckBox
      Left = 741
      Top = 19
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 9
    end
    object Check: TCheckBox
      Left = 740
      Top = 51
      Width = 57
      Height = 17
      Caption = 'Mine'
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 607
      Top = 48
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object Edit8: TEdit
      Left = 71
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 81
    Width = 911
    Height = 388
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        Title.Caption = #22577#20729#32232#34399'|BJNO'
      end
      item
        EditButtons = <>
        FieldName = 'BJLX'
        Footers = <>
        Title.Caption = #39006#21029'|BJLX'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830'|ZSBH'
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 198
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #37327#29986#21934#20729'|USD'
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #37327#29986#21934#20729'|VND'
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #26356#26032#26085#26399'|USERDATE'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDate'
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 265
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGBJ.*,CGBJS.*,ZSZL.ZSYWJC,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH'
      'from CGBJ'
      'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'left join CLZL on CLZl.CLDH=CGBJS.CLBH'
      'where CGBJS.CLBH like '#39'%'#39
      ' and CGBJ.ZSBH like '#39'%'#39
      ' and CGBJ.GSBH='#39'VA12'#39
      'and CGBJ.USERID='#39'21191'#39' '
      'order by CGBJ.BJNO desc,CGBJS.CLBH')
    Left = 256
    Top = 112
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
      Origin = 'DB.CGBJ.BJNO'
      FixedChar = True
      Size = 11
    end
    object Query1BJLX: TStringField
      FieldName = 'BJLX'
      Origin = 'DB.CGBJ.YN'
      FixedChar = True
      Size = 1
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.CGBJ.ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGBJ.YN'
      FixedChar = True
      Size = 15
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CGBJ.YN'
      DisplayFormat = '#,##0.0000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.CGBJ.YN'
      DisplayFormat = '#,##0'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CGBJ.YN'
      FixedChar = True
      Size = 100
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGBJ.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGBJ.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
end
