object UPMaterialQuery: TUPMaterialQuery
  Left = 231
  Top = 309
  Width = 1280
  Height = 675
  Caption = 'N744-UP Material Query'
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
    object Label2: TLabel
      Left = 16
      Top = 59
      Width = 49
      Height = 19
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
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
      TabOrder = 0
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
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 16
      Top = 82
      Width = 60
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      TabOrder = 3
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
      Width = 115
      Height = 114
      Caption = 'Country'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
        Top = 44
        Width = 80
        Height = 25
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
      Width = 196
      Height = 115
      Caption = 'Material Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label7: TLabel
        Left = 27
        Top = 33
        Width = 81
        Height = 18
        Caption = 'Raw Material'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744448
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 27
        Top = 80
        Width = 65
        Height = 18
        Caption = 'Treatment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744448
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
      end
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
        Left = 34
        Top = 96
        Width = 90
        Height = 17
        Caption = 'Treatment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioButton6: TRadioButton
        Left = 34
        Top = 48
        Width = 88
        Height = 17
        Caption = 'Assemble'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RadioButton7: TRadioButton
        Left = 34
        Top = 66
        Width = 80
        Height = 17
        Caption = 'Packing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 121
        Top = 48
        Width = 60
        Height = 17
        Caption = 'Upper'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Candara'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object Button1: TButton
      Left = 778
      Top = 67
      Width = 280
      Height = 47
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object GroupBox5: TGroupBox
      Left = 778
      Top = 2
      Width = 280
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
        Width = 91
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
        Width = 51
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
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 4
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FTY'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'EffectiveDate'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Effective Date'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Season'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.TitleButton = True
          Width = 60
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.Color = 14286847
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Mat.ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ENG Name'
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'CHN Name'
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Unit'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'SGroup'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Group'
          Title.TitleButton = True
          Visible = False
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'Department'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Type'
          Title.TitleButton = True
          Width = 80
        end
        item
          Color = 15925222
          DisplayFormat = 'MOQ ###,###,##0.00'
          EditButtons = <>
          FieldName = 'MOQ'
          Footer.Color = 15925222
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Procurement|MOQ'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          DisplayFormat = '###,###,##0.00000'
          EditButtons = <>
          FieldName = 'Price_FOB'
          Footers = <>
          Title.Caption = 'Procurement|FOB'
          Title.Color = 14286771
        end
        item
          DisplayFormat = '###,###,##0.00000'
          EditButtons = <>
          FieldName = 'Prod_nfc_USD'
          Footers = <>
          Title.Caption = 'Procurement|Prod_nfc_USD'
          Title.Color = 14286771
          Width = 100
        end
        item
          DisplayFormat = '###,###,##0.00000'
          EditButtons = <>
          FieldName = 'Prod_nfc_VND'
          Footers = <>
          Title.Caption = 'Procurement|Prod_nfc_VND'
          Title.Color = 14286771
          Width = 99
        end
        item
          Color = 15925222
          DisplayFormat = '###,###,##0.00000'
          EditButtons = <>
          FieldName = 'Price_USD'
          Footer.Color = 15925222
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Procurement|USD'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15925222
          DisplayFormat = '###,###,##0.#####'
          EditButtons = <>
          FieldName = 'Price_VND'
          Footer.Color = 15925222
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
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
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
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
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Discount|End of Monthly'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ContractorTax'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Contractor Tax [1%]'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Sea_freight_cost'
          Footers = <>
          Width = 113
        end
        item
          DisplayFormat = '#%'
          EditButtons = <>
          FieldName = 'VAT'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'TT_Transportation'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Transaction Terms|Transportation'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'TT_Payment'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Transaction Terms|Payment'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'TT_Document'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Transaction Terms|Document'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'memo'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Remark'
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'ZSDH'
          Footer.Color = 14286847
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ERP Supplier|ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ERP Supplier|Style'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'GroupName'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ERP Supplier|Group'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ERP Supplier|ENG Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'zsqm'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'ERP Supplier|CHN Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'VD3 Supplier|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Zsdh_TW_jc'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'VD3 Supplier|ENG Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'MZSDH'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Payment Agency|ID'
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Mzsywjc'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'Payment Agency|ENG Name'
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15724527
          EditButtons = <>
          FieldName = 'UserID'
          Footer.Color = 15724527
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'User|ID'
          Title.TitleButton = True
          Width = 80
        end
        item
          Color = 15724527
          DisplayFormat = 'yyyy/mm/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'UserDate'
          Footer.Color = 15724527
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Caption = 'User|Date'
          Title.TitleButton = True
          Width = 160
        end>
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM'
      '('
      
        'SELECT DISTINCT m.CLBH, m.FTY, m.EffectiveDate, m.Season, c.ywpm' +
        ', c.zwpm, c.dwbh, m.MOQ, m.Price_USD, m.Price_VND,'
      
        '(SELECT TOP 1 s.Discount_UP FROM Data_UP_Supplier s WHERE s.zsdh' +
        ' = m.ZSDH AND s.EffectiveDate <= m.EffectiveDate ORDER BY s.Effe' +
        'ctiveDate DESC) AS Discount_UP,'
      
        '(SELECT TOP 1 s.Discount_OA FROM Data_UP_Supplier s WHERE s.zsdh' +
        ' = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.Eff' +
        'ectiveDate DESC) AS Discount_OA,'
      
        '(SELECT TOP 1 s.ContractorTax FROM Data_UP_Supplier s WHERE s.zs' +
        'dh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.E' +
        'ffectiveDate DESC) AS ContractorTax,'
      
        '(SELECT TOP 1 s.TT_Transportation FROM Data_UP_Supplier s WHERE ' +
        's.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY' +
        ' s.EffectiveDate DESC) AS TT_Transportation,'
      
        '(SELECT TOP 1 s.TT_Payment FROM Data_UP_Supplier s WHERE s.zsdh ' +
        '= m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.Effe' +
        'ctiveDate DESC) AS TT_Payment,'
      
        '(SELECT TOP 1 s.TT_Document FROM Data_UP_Supplier s WHERE s.zsdh' +
        ' = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.Eff' +
        'ectiveDate DESC) AS TT_Document,'
      
        '(SELECT TOP 1 s.memo FROM Data_UP_Supplier s WHERE s.zsdh = m.ZS' +
        'DH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveD' +
        'ate DESC) AS memo,'
      
        '(SELECT TOP 1 s.SEA_Freight_cost FROM Data_UP_Supplier s WHERE s' +
        '.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY ' +
        's.EffectiveDate DESC) AS Sea_freight_cost,'
      'zv.VAT,'
      
        'z.ZSDH,z.Style, z.GroupName, z.zsywjc,z.zsqm, z.MZSDH, z.Country' +
        ','
      'm.Price_FOB,'
      'm.Prod_nfc_USD,'
      'm.Prod_nfc_VND, '
      'm.UserID, m.UserDate,'
      'g.SGroup, g.Department,'
      'z.Zsdh_TW,'
      
        '(select zsywjc from zszl B where B.zsdh=z.Zsdh_TW ) as  Zsdh_TW_' +
        'jc,'
      '(select zsywjc from zszl C where C.zsdh=z.mzsdh ) as  Mzsywjc '
      'FROM Data_UP_Material m'
      'LEFT JOIN Data_UP_Supplier s ON s.ZSDH = m.ZSDH'
      'LEFT JOIN zszl z ON z.zsdh = m.ZSDH'
      'LEFT JOIN clzl c ON c.cldh = m.CLBH'
      'LEFT JOIN zszl_VN zv ON zv.zsdh = m.ZSDH'
      'LEFT JOIN Data_UP_Style_Group g ON g.Style = z.Style'
      ') NICK20170315'
      'WHERE'
      '1 = 2'
      'AND ((discount_UP <> 0) OR (Discount_OA <> 0))')
    Left = 224
    Top = 171
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1FTY: TStringField
      FieldName = 'FTY'
      FixedChar = True
    end
    object Query1EffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
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
    object Query1MOQ: TIntegerField
      FieldName = 'MOQ'
    end
    object Query1Price_USD: TFloatField
      FieldName = 'Price_USD'
    end
    object Query1Price_VND: TIntegerField
      FieldName = 'Price_VND'
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
    object Query1Sea_freight_cost: TStringField
      FieldName = 'Sea_freight_cost'
      FixedChar = True
      Size = 3
    end
    object Query1VAT: TCurrencyField
      FieldName = 'VAT'
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
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
    object Query1Price_FOB: TFloatField
      FieldName = 'Price_FOB'
    end
    object Query1Prod_nfc_USD: TFloatField
      FieldName = 'Prod_nfc_USD'
    end
    object Query1Prod_nfc_VND: TIntegerField
      FieldName = 'Prod_nfc_VND'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
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
    object Query1Zsdh_TW: TStringField
      FieldName = 'Zsdh_TW'
      FixedChar = True
      Size = 6
    end
    object Query1Zsdh_TW_jc: TStringField
      FieldName = 'Zsdh_TW_jc'
      FixedChar = True
    end
    object Query1Mzsywjc: TStringField
      FieldName = 'Mzsywjc'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 203
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 240
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
