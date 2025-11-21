object OriginVATNo: TOriginVATNo
  Left = 210
  Top = 121
  Width = 1386
  Height = 612
  Caption = 'OriginVATNo_TK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 434
    Top = 325
    Width = 49
    Height = 16
    Caption = 'DOCNO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 436
    Top = 356
    Width = 45
    Height = 16
    Caption = 'Country'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 313
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1368
      Height = 70
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 13
        Width = 62
        Height = 16
        Caption = 'HOA DON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 204
        Top = 13
        Width = 45
        Height = 16
        Caption = 'Country'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 177
        Top = 46
        Width = 7
        Height = 13
        Caption = '~'
      end
      object Label3: TLabel
        Left = 391
        Top = 12
        Width = 48
        Height = 16
        Caption = 'Supp ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 933
        Top = 8
        Width = 97
        Height = 24
        Caption = 'HOA DON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 308
        Top = 42
        Width = 90
        Height = 16
        Caption = 'Supplier Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edt_VATNO: TEdit
        Left = 73
        Top = 6
        Width = 122
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edt_Country: TEdit
        Left = 257
        Top = 6
        Width = 106
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object chk_UserDate_VATNO: TCheckBox
        Left = 13
        Top = 44
        Width = 68
        Height = 17
        Caption = 'UserDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DTP3_VATNO: TDateTimePicker
        Left = 87
        Top = 38
        Width = 88
        Height = 24
        Date = 39214.580252268520000000
        Format = 'yyyy/MM/dd'
        Time = 39214.580252268520000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object query_VATNO: TButton
        Left = 750
        Top = 6
        Width = 74
        Height = 30
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = query_VATNOClick
      end
      object ex_VATNO: TButton
        Left = 830
        Top = 6
        Width = 75
        Height = 30
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = ex_VATNOClick
      end
      object DTP4_VATNO: TDateTimePicker
        Left = 187
        Top = 38
        Width = 88
        Height = 24
        Date = 39214.580252268520000000
        Format = 'yyyy/MM/dd'
        Time = 39214.580252268520000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object edt_SuppID: TEdit
        Left = 446
        Top = 5
        Width = 106
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object CheckMine_VAT: TCheckBox
        Left = 579
        Top = 42
        Width = 47
        Height = 17
        Caption = 'Mine'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 8
      end
      object edt_supplier: TEdit
        Left = 404
        Top = 35
        Width = 148
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object CheckBox1: TCheckBox
        Left = 580
        Top = 12
        Width = 158
        Height = 17
        Caption = 'VATNO already exist'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 71
      Width = 1368
      Height = 241
      Align = alClient
      DataSource = DS_VATNO
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 3
      OnDblClick = DBGridEh1DblClick
      OnEditButtonClick = DBGridEh1EditButtonClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DOCNO'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'HOA DON'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 173
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH'
          Footers = <>
          Title.Caption = 'SuppID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          Title.Caption = 'Supplier Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'VATFile'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          OnEditButtonClick = DBGridEh1Columns4EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'USERID_PUR'
          Footers = <>
          Title.Caption = 'USERID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 99
        end
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'USERDATE_PUR'
          Footers = <>
          Title.Caption = 'USERDATE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'VATNO'
          Footers = <>
          PopupMenu = PopupMenu1
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 113
        end
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'VATDATE'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH_MST'
          Footers = <>
          Title.Caption = 'MST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'TEN_NGUOIBAN'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 238
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 313
    Width = 1370
    Height = 260
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1368
      Height = 68
      Align = alTop
      TabOrder = 0
      object Label6: TLabel
        Left = 14
        Top = 12
        Width = 52
        Height = 16
        Caption = 'TO KHAI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 237
        Top = 13
        Width = 49
        Height = 16
        Caption = 'DOCNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 163
        Top = 43
        Width = 7
        Height = 13
        Caption = '~'
      end
      object Label10: TLabel
        Left = 276
        Top = 44
        Width = 45
        Height = 16
        Caption = 'SuppID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 1006
        Top = 9
        Width = 83
        Height = 24
        Caption = 'TO KHAI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 411
        Top = 42
        Width = 72
        Height = 16
        Caption = 'Supp Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 435
        Top = 10
        Width = 45
        Height = 16
        Caption = 'Country'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edt_TK: TEdit
        Left = 75
        Top = 6
        Width = 142
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edt_DOCNO: TEdit
        Left = 291
        Top = 6
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object query_TK: TButton
        Left = 798
        Top = 4
        Width = 74
        Height = 30
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = query_TKClick
      end
      object excel_TK: TButton
        Left = 877
        Top = 4
        Width = 74
        Height = 30
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = excel_TKClick
      end
      object chk_UserDate_TK: TCheckBox
        Left = 10
        Top = 42
        Width = 68
        Height = 17
        Caption = 'UserDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DTP3_TK: TDateTimePicker
        Left = 74
        Top = 37
        Width = 88
        Height = 24
        Date = 39214.580252268520000000
        Format = 'yyyy/MM/dd'
        Time = 39214.580252268520000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DTP4_TK: TDateTimePicker
        Left = 173
        Top = 37
        Width = 88
        Height = 24
        Date = 39214.580252268520000000
        Format = 'yyyy/MM/dd'
        Time = 39214.580252268520000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object edt_SuppID_TK: TEdit
        Left = 328
        Top = 37
        Width = 67
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object CheckMine_TK: TCheckBox
        Left = 617
        Top = 40
        Width = 47
        Height = 17
        Caption = 'Mine'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 8
      end
      object CheckBox2: TCheckBox
        Left = 617
        Top = 12
        Width = 181
        Height = 17
        Caption = 'Declaration already exist'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 69
      Width = 1368
      Height = 190
      Align = alClient
      DataSource = DS_TK
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu2
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 3
      OnDblClick = DBGridEh2DblClick
      OnEditButtonClick = DBGridEh2EditButtonClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Declaretion'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'TO KHAI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 171
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH'
          Footers = <>
          Title.Caption = 'SuppID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          Title.Caption = 'Supplier Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'DeclarationFile'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          OnEditButtonClick = DBGridEh2Columns4EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'USERID_PUR'
          Footers = <>
          Title.Caption = 'USERID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 99
        end
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'USERDATE_PUR'
          Footers = <>
          Title.Caption = 'USERDATE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'DECLARATION'
          Footers = <>
          PopupMenu = PopupMenu1
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 113
        end
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'NGAYDANGKY'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'DOCNO'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'TENDOITAC'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 271
        end>
    end
  end
  object edt_Country_TK: TEdit
    Left = 488
    Top = 318
    Width = 120
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt_Supplier_TK: TEdit
    Left = 488
    Top = 349
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Qry_VATNO: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DOCNO,VATNO,VATDATE,ZSBH_MST,TEN_NGUOIBAN,Country,VATFile' +
        ',USERID_PUR,USERDATE_PUR,ZSZL.ZSDH as ZSBH,ZSZL.ZSYWJC '
      'from KCRK'
      'left join CGZL_VATNO on KCRK.DOCNO = CGZL_VATNO.VATNO'
      'left join ZSZL on ZSZL.TYBH=CGZL_VATNO.ZSBH_MST '
      'left join CGZL on KCRK.ZSNO = CGZL.CGNO'
      'where 1=2 ')
    UpdateObject = Up_VATNO
    Left = 131
    Top = 165
    object Qry_VATNODOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Qry_VATNOZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_VATNOZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_VATNOCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Qry_VATNOVATFile: TStringField
      FieldName = 'VATFile'
      FixedChar = True
      Size = 100
    end
    object Qry_VATNOUSERID_PUR: TStringField
      FieldName = 'USERID_PUR'
      FixedChar = True
      Size = 10
    end
    object Qry_VATNOUSERDATE_PUR: TDateTimeField
      FieldName = 'USERDATE_PUR'
    end
    object Qry_VATNOVATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object Qry_VATNOVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object Qry_VATNOZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object Qry_VATNOTEN_NGUOIBAN: TStringField
      FieldName = 'TEN_NGUOIBAN'
      FixedChar = True
      Size = 200
    end
  end
  object DS_VATNO: TDataSource
    DataSet = Qry_VATNO
    Left = 132
    Top = 129
  end
  object Up_VATNO: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_VATNO'
      'set'
      '  CGZL_VATNO.Country = :Country,'
      '  CGZL_VATNO.VATFile = :VATFile,'
      '  CGZL_VATNO.USERID_PUR = :USERID_PUR,'
      '  CGZL_VATNO.USERDATE_PUR = GETDATE()'
      'where'
      '  CGZL_VATNO.VATNO = :OLD_VATNO and'
      '  CGZL_VATNO.ZSBH_MST = :OLD_ZSBH_MST'
      ''
      '')
    DeleteSQL.Strings = (
      '')
    Left = 131
    Top = 200
  end
  object Qry_TK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCPK.Declaretion,KCRK.ZSBH,ZSYWJC,DECLARATION,NGAYDANGKY,' +
        'CGZL_Declaration.DOCNO,TENDOITAC,Country,DeclarationFile,USERID_' +
        'PUR,USERDATE_PUR'
      'from KCRK '
      'left join KCPK on KCRK.RKNO = KCPK.PKNO'
      
        'left join CGZL_Declaration on KCPK.Declaretion = CGZL_Declaratio' +
        'n.Declaration'
      'left join CGZL on KCRK.ZSNO = CGZL.CGNO'
      'left join ZSZL on KCRK.ZSBH =  ZSZL.ZSDH'
      'where 1=2')
    UpdateObject = Up_TK
    Left = 131
    Top = 460
    object Qry_TKDeclaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Qry_TKZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_TKZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_TKCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 100
    end
    object Qry_TKDeclarationFile: TStringField
      FieldName = 'DeclarationFile'
      FixedChar = True
      Size = 100
    end
    object Qry_TKUSERID_PUR: TStringField
      FieldName = 'USERID_PUR'
      FixedChar = True
      Size = 15
    end
    object Qry_TKUSERDATE_PUR: TDateTimeField
      FieldName = 'USERDATE_PUR'
    end
    object Qry_TKDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object Qry_TKNGAYDANGKY: TDateTimeField
      FieldName = 'NGAYDANGKY'
    end
    object Qry_TKDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object Qry_TKTENDOITAC: TStringField
      FieldName = 'TENDOITAC'
      FixedChar = True
      Size = 255
    end
  end
  object DS_TK: TDataSource
    DataSet = Qry_TK
    Left = 131
    Top = 425
  end
  object Up_TK: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_Declaration'
      'set'
      '  CGZL_Declaration.Country = :Country,'
      '  CGZL_Declaration.DeclarationFile = :DeclarationFile,'
      '  CGZL_Declaration.USERID_PUR = :USERID_PUR,'
      '  CGZL_Declaration.USERDATE_PUR = GETDATE()'
      'where'
      '  CGZL_Declaration.Declaration = :OLD_Declaration')
    Left = 131
    Top = 495
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 165
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 176
    Top = 461
    object Modify2: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 176
    Top = 130
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 84
    Top = 165
  end
end
