object UPSupplierName: TUPSupplierName
  Left = 280
  Top = 153
  Width = 610
  Height = 800
  Caption = 'UP Supplier Name'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 76
    Width = 602
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 76
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 10
      Width = 57
      Height = 23
      Caption = 'Sup. ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 41
      Width = 88
      Height = 23
      Caption = 'Sup. Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 110
      Top = 8
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 110
      Top = 42
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 436
      Top = 11
      Width = 149
      Height = 54
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 240
      Top = 3
      Width = 185
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RadioButton1: TRadioButton
      Left = 250
      Top = 17
      Width = 169
      Height = 25
      Caption = 'Production Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object RadioButton2: TRadioButton
      Left = 250
      Top = 41
      Width = 161
      Height = 17
      Caption = 'All Supplier'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 78
    Width = 602
    Height = 691
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 600
      Height = 689
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Candara'
          Title.Font.Style = [fsBold]
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Candara'
          Title.Font.Style = [fsBold]
          Width = 300
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'GroupName'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zsqm'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'MZSDH'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'Mzsywjc'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'remark'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'VAT'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW_jc'
          Footers = <>
          Visible = False
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT z.zsdh, zsywjc, Style, GroupName, zsqm, Country, MZSDH,Zs' +
        'dh_TW,(select zsywjc from zszl A where A.zsdh=z.mzsdh ) as  Mzsy' +
        'wjc'
      
        ',(select zsywjc from zszl B where B.zsdh=z.Zsdh_TW ) as  Zsdh_TW' +
        '_jc, zv.VAT,zm.remark'
      ' FROM zszl z '
      ' left join zszl_VN zv ON zv.zsdh=Z.zsdh'
      ' left join zszl_mat zm on zm.zsdh = z.zsdh'
      ' where 1=2')
    Left = 24
    Top = 115
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1Style: TStringField
      FieldName = 'Style'
      FixedChar = True
    end
    object Query1GroupName: TStringField
      FieldName = 'GroupName'
      FixedChar = True
      Size = 30
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1MZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1Zsdh_TW: TStringField
      FieldName = 'Zsdh_TW'
      FixedChar = True
      Size = 6
    end
    object Query1Mzsywjc: TStringField
      FieldName = 'Mzsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1Zsdh_TW_jc: TStringField
      FieldName = 'Zsdh_TW_jc'
      FixedChar = True
      Size = 200
    end
    object Query1VAT: TCurrencyField
      FieldName = 'VAT'
    end
    object Query1remark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 147
  end
end
