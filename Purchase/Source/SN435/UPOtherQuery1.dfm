object UPOtherQuery: TUPOtherQuery
  Left = 288
  Top = 228
  Width = 1280
  Height = 675
  Caption = 'N745-UP Other Material Query'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 122
    Width = 1272
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1272
    Height = 122
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 3
      Width = 25
      Height = 19
      Caption = 'FTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 25
      Width = 60
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 82
      Top = 2
      Width = 358
      Height = 57
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 14
        Height = 19
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 138
        Top = 24
        Width = 40
        Height = 19
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 32
        Top = 22
        Width = 100
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 186
        Top = 22
        Width = 80
        Height = 27
        Color = 14286847
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit5: TEdit
        Left = 269
        Top = 22
        Width = 80
        Height = 27
        Color = 14286847
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 82
      Top = 59
      Width = 358
      Height = 57
      Caption = 'Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 14
        Height = 19
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 138
        Top = 24
        Width = 40
        Height = 19
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Edit6: TEdit
        Left = 32
        Top = 22
        Width = 100
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit7: TEdit
        Left = 186
        Top = 22
        Width = 162
        Height = 27
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 449
      Top = 2
      Width = 116
      Height = 115
      Caption = 'Country'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object RadioButton3: TRadioButton
        Left = 23
        Top = 79
        Width = 80
        Height = 17
        Caption = 'Vietnam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 23
        Top = 48
        Width = 80
        Height = 17
        Caption = 'Oversea'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioButton4: TRadioButton
        Left = 7
        Top = 20
        Width = 40
        Height = 17
        Caption = 'All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      Left = 573
      Top = 2
      Width = 172
      Height = 115
      Caption = 'Material Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object RadioButton1: TRadioButton
        Left = 8
        Top = 19
        Width = 49
        Height = 17
        Caption = 'All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton8: TRadioButton
        Left = 25
        Top = 96
        Width = 130
        Height = 17
        Caption = 'Office Stationery'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioButton6: TRadioButton
        Left = 25
        Top = 50
        Width = 143
        Height = 17
        Caption = 'Machinery Parts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RadioButton7: TRadioButton
        Left = 25
        Top = 34
        Width = 80
        Height = 17
        Caption = 'Chemical'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 25
        Top = 66
        Width = 96
        Height = 17
        Caption = 'Computer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object RadioButton9: TRadioButton
        Left = 25
        Top = 81
        Width = 96
        Height = 17
        Caption = 'Tool'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Button1: TButton
      Left = 1044
      Top = 65
      Width = 160
      Height = 49
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object GroupBox5: TGroupBox
      Left = 752
      Top = 58
      Width = 284
      Height = 57
      Caption = 'Period'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Label2: TLabel
        Left = 146
        Top = 22
        Width = 13
        Height = 33
        Caption = '~'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object CheckBox4: TCheckBox
        Left = 8
        Top = 22
        Width = 17
        Height = 25
        Caption = 'CheckBox4'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 32
        Top = 22
        Width = 110
        Height = 27
        Date = 42829.375757256930000000
        Time = 42829.375757256930000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DateTimePicker2: TDateTimePicker
        Left = 165
        Top = 22
        Width = 110
        Height = 27
        Date = 42829.375757256930000000
        Time = 42829.375757256930000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox6: TGroupBox
      Left = 752
      Top = 2
      Width = 284
      Height = 57
      Caption = 'Accounting'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object CheckBox1: TCheckBox
        Left = 8
        Top = 27
        Width = 88
        Height = 17
        Caption = 'Discount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBox3: TCheckBox
        Left = 96
        Top = 27
        Width = 129
        Height = 17
        Caption = 'Contractor Tax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 224
        Top = 27
        Width = 57
        Height = 17
        Caption = 'VAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 124
    Width = 1272
    Height = 520
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1270
      Height = 518
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -19
      FooterFont.Name = 'Calibri'
      FooterFont.Style = [fsBold]
      FooterRowCount = 1
      FrozenCols = 3
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'FTY'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'CGDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Effective Date'
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.Color = 14286847
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Mat. ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ENG Name'
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'CHN Name'
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Unit'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'SGroup'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Type'
          Title.TitleButton = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'Department'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Visible = False
          Width = 80
        end
        item
          DisplayFormat = '###,###,##0.00'
          EditButtons = <>
          FieldName = 'FOB'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Procurement|FOB'
          Title.Color = 14286771
          Width = 72
        end
        item
          DisplayFormat = '###,###,##0.00'
          EditButtons = <>
          FieldName = 'Prod_nfc_USD'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Procurement|Prod_nfc_USD'
          Title.Color = 14286771
          Width = 109
        end
        item
          DisplayFormat = '###,###,##0.00'
          EditButtons = <>
          FieldName = 'Prod_nfc_VND'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Procurement|Prod_nfc_VND'
          Title.Color = 14286771
          Width = 120
        end
        item
          Color = 15925222
          DisplayFormat = '###,###,##0.00000'
          EditButtons = <>
          FieldName = 'USPrice'
          Footer.Color = 15925222
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Procurement|USD'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15925222
          DisplayFormat = '###,###,##0.00'
          EditButtons = <>
          FieldName = 'VNPrice'
          Footer.Color = 15925222
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Procurement|VND'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15925222
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'Discount_UP'
          Footer.Color = 15925222
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Discount|Unit Price'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15925222
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'Discount_OA'
          Footer.Color = 15925222
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Discount|End of Monthly'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ContractorTax'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Contractor Tax [1%]'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Sea_freight_cost'
          Footers = <>
          ReadOnly = True
          Width = 123
        end
        item
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'VAT'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'TT_Transportation'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Transaction Terms|Transportation'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'TT_Payment'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Transaction Terms|Payment'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'TT_Document'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Transaction Terms|Document'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'memo'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Remark'
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'ZSBH'
          Footer.Color = 14286847
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|Style'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'GroupName'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|Group'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|ENG Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsqm'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'ERP Supplier|CHN Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'VD3 Supplier|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW_jc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'VD3 Supplier|ENG Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'MZSDH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Payment Agency|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Mzsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Payment Agency|Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 100
        end>
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '      SELECT'
      '      '
      '         CLBH, GSBH, MIN(CGDate) AS CGDate, USPrice, VNPrice, '
      '         ywpm, zwpm, dwbh,'
      '         Discount_UP, '
      '         Discount_OA, '
      '         ContractorTax, '
      '         TT_Transportation, '
      '         TT_Payment, '
      '         TT_Document, '
      '         memo,'
      '         Sea_freight_cost, '
      '         FOB, '
      '         Prod_nfc_VND, '
      '         Prod_nfc_USD, '
      '         VAT,'
      
        '         ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsd' +
        'h_TW,'
      '         SGroup, Department, '
      '         Zsdh_TW_jc, '
      '         Mzsywjc'
      ''
      '      FROM '
      '          ( '
      
        '          SELECT c.CLBH, g.GSBH, g.CGDate, s.USPrice, s.VNPrice,' +
        ' '
      '         l.ywpm, l.zwpm, l.dwbh,'
      
        '          (SELECT TOP 1 s.Discount_UP FROM Data_UP_Supplier s WH' +
        'ERE s.zsdh = g.ZSBH AND s.EffectiveDate <= g.CGDate ORDER BY s.E' +
        'ffectiveDate DESC) AS Discount_UP, '
      
        '          (SELECT TOP 1 s.Discount_OA FROM Data_UP_Supplier s WH' +
        'ERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.' +
        'EffectiveDate DESC) AS Discount_OA, '
      
        '          (SELECT TOP 1 s.ContractorTax FROM Data_UP_Supplier s ' +
        'WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY ' +
        's.EffectiveDate DESC) AS ContractorTax, '
      
        '          (SELECT TOP 1 s.TT_Transportation FROM Data_UP_Supplie' +
        'r s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER' +
        ' BY s.EffectiveDate DESC) AS TT_Transportation, '
      
        '          (SELECT TOP 1 s.TT_Payment FROM Data_UP_Supplier s WHE' +
        'RE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.E' +
        'ffectiveDate DESC) AS TT_Payment, '
      
        '          (SELECT TOP 1 s.TT_Document FROM Data_UP_Supplier s WH' +
        'ERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.' +
        'EffectiveDate DESC) AS TT_Document, '
      
        '          (SELECT TOP 1 s.memo FROM Data_UP_Supplier s WHERE s.z' +
        'sdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.Effecti' +
        'veDate DESC) AS memo,'
      
        '         (SELECT TOP 1 s.SEA_Freight_cost FROM Data_UP_Supplier ' +
        's WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER B' +
        'Y s.EffectiveDate DESC) AS Sea_freight_cost,'
      
        '          (select top 1 m.Price_FOB from Data_UP_Material m wher' +
        'e m.zsdh = g.zsbh AND  m.EffectiveDate <= g.CGDate order by m.ef' +
        'fectivedate desc) as FOB, '
      
        '         (select top 1 m.Prod_nfc_VND from Data_UP_Material m wh' +
        'ere m.zsdh = g.zsbh AND  m.EffectiveDate <= g.CGDate order by m.' +
        'effectivedate desc) as Prod_nfc_VND, '
      
        '          (select top 1 m.Prod_nfc_USD from Data_UP_Material m w' +
        'here m.zsdh = g.zsbh AND  m.EffectiveDate <= g.CGDate order by m' +
        '.effectivedate desc) as Prod_nfc_USD,  '
      '         zv.VAT,'
      
        '         g.ZSBH,z.Style, z.GroupName, z.zsywjc,z.zsqm, z.MZSDH, ' +
        'z.Country, z.Zsdh_TW,'
      '         u.SGroup, u.Department, '
      
        '          (select zsywjc from zszl B where B.zsdh=z.Zsdh_TW ) as' +
        '  Zsdh_TW_jc, '
      
        '          (select zsywjc from zszl C where C.zsdh=z.mzsdh ) as  ' +
        'Mzsywjc, '
      '          c.USERID, c.USERDate  '
      '         FROM CGZLS c'
      '         LEFT JOIN CGZL G ON g.CGNO = c.CGNO'
      '         LEFT JOIN CLZL L ON l.cldh = c.CLBH'
      '         LEFT JOIN ZSZL Z ON z.zsdh = g.ZSBH'
      
        '         LEFT JOIN KCRKS S ON s.CGBH = c.CGNO AND S.CLBH = C.CLB' +
        'H'
      '         LEFT JOIN zszl_VN zv ON zv.zsdh = g.ZSBH'
      '         LEFT JOIN Data_UP_Style_Group u ON u.Style = Z.Style'
      '         ) Second_Tier '
      '         WHERE 1 = 2'
      
        '         and CLBH NOT IN (SELECT U.CLBH FROM Data_UP_Material U ' +
        'WHERE U.CLBH = CLBH)'
      
        '         GROUP BY CLBH, GSBH, USPrice, VNPrice, ywpm, zwpm, dwbh' +
        ', '
      
        '         ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsd' +
        'h_TW, '
      
        '         Discount_UP, Discount_OA, ContractorTax, TT_Transportat' +
        'ion, TT_Payment, TT_Document, memo, Sea_freight_cost, FOB,Prod_n' +
        'fc_VND,Prod_nfc_USD, '
      '         VAT,'
      
        '         ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsd' +
        'h_TW, Zsdh_TW_jc,  Mzsywjc,'
      '         SGroup, Department')
    Left = 112
    Top = 153
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1Discount_UP: TCurrencyField
      FieldName = 'Discount_UP'
    end
    object Query1Discount_OA: TCurrencyField
      FieldName = 'Discount_OA'
    end
    object Query1ContractorTax: TStringField
      FieldName = 'ContractorTax'
      FixedChar = True
      Size = 30
    end
    object Query1TT_Transportation: TStringField
      FieldName = 'TT_Transportation'
      FixedChar = True
      Size = 200
    end
    object Query1TT_Payment: TStringField
      FieldName = 'TT_Payment'
      FixedChar = True
      Size = 200
    end
    object Query1TT_Document: TStringField
      FieldName = 'TT_Document'
      FixedChar = True
      Size = 200
    end
    object Query1memo: TStringField
      FieldName = 'memo'
      FixedChar = True
      Size = 240
    end
    object Query1VAT: TCurrencyField
      FieldName = 'VAT'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
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
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1MZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1Zsdh_TW: TStringField
      FieldName = 'Zsdh_TW'
      FixedChar = True
      Size = 6
    end
    object Query1SGroup: TStringField
      FieldName = 'SGroup'
      FixedChar = True
      Size = 30
    end
    object Query1Department: TStringField
      FieldName = 'Department'
      FixedChar = True
      Size = 30
    end
    object Query1Zsdh_TW_jc: TStringField
      FieldName = 'Zsdh_TW_jc'
      FixedChar = True
      Size = 200
    end
    object Query1Mzsywjc: TStringField
      FieldName = 'Mzsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1FOB: TFloatField
      FieldName = 'FOB'
    end
    object Query1Prod_nfc_VND: TIntegerField
      FieldName = 'Prod_nfc_VND'
    end
    object Query1Prod_nfc_USD: TFloatField
      FieldName = 'Prod_nfc_USD'
    end
    object Query1Sea_freight_cost: TStringField
      FieldName = 'Sea_freight_cost'
      FixedChar = True
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 187
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 220
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
