object MergeInvoice: TMergeInvoice
  Left = 306
  Top = 119
  Width = 1589
  Height = 805
  Caption = 'MergeInvoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1573
    Height = 766
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Invoice'
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 1565
        Height = 694
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 632
          Top = 345
          Height = 349
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel4: TPanel
          Left = 635
          Top = 345
          Width = 77
          Height = 349
          Align = alLeft
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 0
          object btnMerge: TButton
            Left = 8
            Top = 144
            Width = 62
            Height = 30
            Caption = 'Merge'
            Enabled = False
            TabOrder = 0
            OnClick = btnMergeClick
          end
          object btnModify: TButton
            Left = 7
            Top = 96
            Width = 62
            Height = 30
            Caption = 'Modify'
            Enabled = False
            TabOrder = 1
            OnClick = btnModifyClick
          end
          object btncancel: TButton
            Left = 7
            Top = 192
            Width = 62
            Height = 30
            Caption = 'Cancel'
            Enabled = False
            TabOrder = 2
            OnClick = btncancelClick
          end
        end
        object Panel3: TPanel
          Left = 712
          Top = 345
          Width = 853
          Height = 349
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 853
            Height = 349
            Align = alClient
            DataSource = DS3
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 2
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'INV_NO'
                Footers = <>
                Title.Caption = 'Invoice No.'
                Width = 87
              end
              item
                EditButtons = <>
                FieldName = 'PACK_NO'
                Footers = <>
                Title.Caption = 'Pack No.'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'RYNO'
                Footers = <>
                Title.Caption = 'RY'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'PO'
                Footers = <>
                Title.Caption = 'PO#'
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'Article'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'CUSTORDNO'
                Footers = <>
                Title.Caption = 'Custord No.'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'STYLE_NAME'
                Footers = <>
                Title.Caption = 'Style Name'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'PAIRS'
                Footer.FieldName = 'PAIRS'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Pairs'
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'UNIT_PRICE'
                Footer.FieldName = 'UNIT_PRICE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Unit Price'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footer.FieldName = 'AMOUNT'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Amount'
                Width = 60
              end>
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 1565
          Height = 296
          Align = alTop
          AllowedOperations = [alopUpdateEh]
          DataSource = DS_Inv
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FrozenCols = 3
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              Color = cl3DLight
              EditButtons = <>
              FieldName = 'INV_NO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Inv No.'
              Width = 79
            end
            item
              ButtonStyle = cbsNone
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'INV_DATE'
              Footers = <>
              Title.Caption = 'Inv Date'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'RISK'
              Footers = <>
              ReadOnly = True
              Width = 161
            end
            item
              EditButtons = <>
              FieldName = 'SHIP_BY'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Ship By'
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'FROM_WHERE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'From Where'
              Width = 150
            end
            item
              ButtonStyle = cbsNone
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'TO_WHERE'
              Footers = <>
              PickList.Strings = (
                ''
                'ARGENTINA'
                'AUSTRALIA'
                'BELGIUM'
                'BRASIL'
                'CANADA'
                'CHILE'
                'CHINA'
                'COLUMBIA'
                'CONGO'
                'DJIBOUTI'
                'EGYPT'
                'FRANCE'
                'GABON'
                'GERMANY'
                'GREECE'
                'HONG KONG'
                'INDIA'
                'INDONESIA'
                'ISRAEL'
                'ITALY'
                'JAPAN'
                'KAZAKHSTAN'
                'KOREA'
                'LEBANON'
                'MALAYSIA'
                'MEXICO'
                'MONACO'
                'NEPAL'
                'NETHERLANDS'
                'NEW ZEALAND'
                'NORWAY'
                'PANAMA'
                'PARAGUAY'
                'PERU'
                'PHILIPPINES'
                'RUSSIA'
                'RUSSIAN'
                'S AFRICA'
                'SENEGAL'
                'SINGAPORE'
                'SPAIN'
                'TAIWAN'
                'THAILAND'
                'TUNISIA'
                'TURKEY'
                'U.K.'
                'USA'
                'UAE'
                'UKRAINE'
                'URUGUAY'
                'VENEZUELA'
                'VIETNAM'
                '')
              Title.Caption = 'To Where'
              Width = 65
            end
            item
              Color = 16758783
              EditButtons = <>
              FieldName = 'CUSTID'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Cust ID'
              Width = 55
            end
            item
              DisplayFormat = '#,###'
              EditButtons = <>
              FieldName = 'TOTAL_PAIRS'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total Pairs'
              Width = 73
            end
            item
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'TOTAL_AMOUNT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total Amount'
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'TOTAL_AMOUNT_WORD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Amount Word'
              Visible = False
              Width = 250
            end
            item
              EditButtons = <>
              FieldName = 'CURRENCY'
              Footers = <>
              Title.Caption = 'Currency'
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'BRAND'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Brand'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'NO'
              Footers = <>
              Title.Caption = 'No.'
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'FACTORY'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Factory'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'YEAR'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Year'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'SAVE_USER'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User ID'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'SAVE_TIME'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'User Date'
              Width = 135
            end>
        end
        object Panel5: TPanel
          Left = 0
          Top = 296
          Width = 1565
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 3
          object Label3: TLabel
            Left = 320
            Top = 16
            Width = 19
            Height = 16
            Caption = 'RY'
          end
          object Label5: TLabel
            Left = 8
            Top = 12
            Width = 98
            Height = 24
            Caption = 'Select RY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 120
            Top = 16
            Width = 67
            Height = 16
            Caption = 'Invoice No.'
          end
          object Label7: TLabel
            Left = 640
            Top = 12
            Width = 63
            Height = 24
            Caption = 'Merge'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 344
            Top = 12
            Width = 113
            Height = 24
            TabOrder = 0
          end
          object Button2: TButton
            Left = 472
            Top = 7
            Width = 75
            Height = 33
            Caption = 'Query'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object Edit2: TEdit
            Left = 192
            Top = 12
            Width = 121
            Height = 24
            TabOrder = 2
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 345
          Width = 632
          Height = 349
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Splitter8: TSplitter
            Left = 0
            Top = 209
            Width = 632
            Height = 3
            Cursor = crVSplit
            Align = alTop
            Color = clSkyBlue
            ParentColor = False
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 212
            Width = 632
            Height = 137
            Align = alClient
            DataSource = DS_InvSS
            EvenRowColor = clSkyBlue
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OddRowColor = clSkyBlue
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'INV_NO'
                Footers = <>
                Title.Caption = 'Invoice No.'
                Width = 87
              end
              item
                EditButtons = <>
                FieldName = 'RYNO'
                Footers = <>
                Title.Caption = 'RY'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'PO'
                Footers = <>
                Title.Caption = 'PO#'
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'Article'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'CUSTORDNO'
                Footers = <>
                Title.Caption = 'Custord No.'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'STYLE_NAME'
                Footers = <>
                Title.Caption = 'Style Name'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'PAIRS'
                Footers = <>
                Title.Caption = 'Pairs'
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'UNIT_PRICE'
                Footers = <>
                Title.Caption = 'Unit Price'
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.Caption = 'Amount'
              end>
          end
          object DBGridEh12: TDBGridEh
            Left = 0
            Top = 0
            Width = 632
            Height = 209
            Align = alTop
            AllowedOperations = [alopUpdateEh]
            DataSource = DS_InvS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                Checkboxes = True
                EditButtons = <>
                FieldName = 'YB'
                Footers = <>
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'INV_NO'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Inv No.'
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'REF'
                Footers = <>
                Width = 84
              end
              item
                ButtonStyle = cbsNone
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'INV_DATE'
                Footers = <>
                Title.Caption = 'Inv Date'
                Width = 70
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'TO_WHERE'
                Footers = <>
                PickList.Strings = (
                  ''
                  'ARGENTINA'
                  'AUSTRALIA'
                  'BELGIUM'
                  'BRASIL'
                  'CANADA'
                  'CHILE'
                  'CHINA'
                  'COLUMBIA'
                  'CONGO'
                  'DJIBOUTI'
                  'EGYPT'
                  'FRANCE'
                  'GABON'
                  'GERMANY'
                  'GREECE'
                  'HONG KONG'
                  'INDIA'
                  'INDONESIA'
                  'ISRAEL'
                  'ITALY'
                  'JAPAN'
                  'KAZAKHSTAN'
                  'KOREA'
                  'LEBANON'
                  'MALAYSIA'
                  'MEXICO'
                  'MONACO'
                  'NEPAL'
                  'NETHERLANDS'
                  'NEW ZEALAND'
                  'NORWAY'
                  'PANAMA'
                  'PARAGUAY'
                  'PERU'
                  'PHILIPPINES'
                  'RUSSIA'
                  'RUSSIAN'
                  'S AFRICA'
                  'SENEGAL'
                  'SINGAPORE'
                  'SPAIN'
                  'TAIWAN'
                  'THAILAND'
                  'TUNISIA'
                  'TURKEY'
                  'U.K.'
                  'USA'
                  'UAE'
                  'UKRAINE'
                  'URUGUAY'
                  'VENEZUELA'
                  'VIETNAM'
                  '')
                Title.Caption = 'To Where'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'CUSTID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Cust ID'
                Width = 55
              end
              item
                DisplayFormat = '#,###'
                EditButtons = <>
                FieldName = 'TOTAL_PAIRS'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Pairs'
                Width = 50
              end
              item
                DisplayFormat = '#,##0.00'
                EditButtons = <>
                FieldName = 'TOTAL_AMOUNT'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Amount'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'CURRENCY'
                Footers = <>
                Title.Caption = 'Currency'
                Width = 65
              end>
          end
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1565
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label18: TLabel
          Left = 180
          Top = 16
          Width = 9
          Height = 13
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 288
          Top = 12
          Width = 67
          Height = 16
          Caption = 'Invoice No.'
        end
        object Label20: TLabel
          Left = 481
          Top = 12
          Width = 50
          Height = 16
          Caption = 'Cust No.'
        end
        object Chk_Indate1: TCheckBox
          Left = 16
          Top = 12
          Width = 66
          Height = 17
          Caption = 'Inv Date'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object DTP1: TDateTimePicker
          Left = 88
          Top = 10
          Width = 89
          Height = 24
          Date = 41898.327956631950000000
          Format = 'yyyy/MM/dd'
          Time = 41898.327956631950000000
          TabOrder = 1
        end
        object DTP2: TDateTimePicker
          Left = 192
          Top = 10
          Width = 89
          Height = 24
          Date = 41898.327956631950000000
          Format = 'yyyy/MM/dd'
          Time = 41898.327956631950000000
          TabOrder = 2
        end
        object Edt_Inv: TEdit
          Left = 360
          Top = 10
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          Color = cl3DLight
          TabOrder = 3
        end
        object Button3: TButton
          Left = 633
          Top = 4
          Width = 75
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
        object Edt_Cust: TEdit
          Left = 533
          Top = 10
          Width = 85
          Height = 24
          Color = 16758783
          TabOrder = 5
        end
      end
    end
  end
  object qry_invs: TQuery
    AfterOpen = qry_invsAfterOpen
    BeforeClose = qry_invsBeforeClose
    DatabaseName = 'DB'
    DataSource = DS_Inv
    SQL.Strings = (
      'SELECT distinct im.*,0 as YB'
      'FROM INVOICE_M im left join INVOICE_D id on id.Inv_No=im.Inv_No'
      'WHERE 1=2 AND im.PRINT_LOCK IS NULL '
      #9#9'and im.inv_no <> :inv_no and CustID=:CustID')
    UpdateObject = UpdRY1
    Left = 522
    Top = 225
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'CUSTID'
        ParamType = ptUnknown
        Size = 11
      end>
    object qry_invsINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object qry_invsRISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 50
    end
    object qry_invsSHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object qry_invsFROM_WHERE: TStringField
      FieldName = 'FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_invsTO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_invsTOTAL_PAIRS: TIntegerField
      FieldName = 'TOTAL_PAIRS'
    end
    object qry_invsTOTAL_AMOUNT: TCurrencyField
      FieldName = 'TOTAL_AMOUNT'
    end
    object qry_invsCUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_invsCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 10
    end
    object qry_invsSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 5
    end
    object qry_invsStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 10
    end
    object qry_invsInv_Type: TStringField
      FieldName = 'Inv_Type'
      FixedChar = True
      Size = 50
    end
    object qry_invsYB: TIntegerField
      FieldName = 'YB'
    end
    object qry_invsINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_invsInv_Sup: TStringField
      FieldName = 'Inv_Sup'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Inv: TDataSource
    DataSet = qry_inv
    Left = 482
    Top = 196
  end
  object qry_ry2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Inv
    SQL.Strings = (
      'SELECT id.*'
      'FROM INVOICE_D id '
      'where id.Inv_no=:Inv_no')
    Left = 610
    Top = 225
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object qry_ry2PACK_NO: TStringField
      FieldName = 'PACK_NO'
      Origin = 'MYDB.INVOICE_D.PACK_NO'
      FixedChar = True
      Size = 10
    end
    object qry_ry2STYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      Origin = 'MYDB.INVOICE_D.STYLE_NAME'
      FixedChar = True
      Size = 50
    end
    object qry_ry2PO: TStringField
      FieldName = 'PO'
      Origin = 'MYDB.INVOICE_D.PO'
      FixedChar = True
      Size = 50
    end
    object qry_ry2CUSTORDNO: TStringField
      FieldName = 'CUSTORDNO'
      Origin = 'MYDB.INVOICE_D.CUSTORDNO'
      FixedChar = True
      Size = 50
    end
    object qry_ry2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'MYDB.INVOICE_D.ARTICLE'
      FixedChar = True
      Size = 50
    end
    object qry_ry2SIZE_RUN: TStringField
      FieldName = 'SIZE_RUN'
      Origin = 'MYDB.INVOICE_D.SIZE_RUN'
      FixedChar = True
      Size = 50
    end
    object qry_ry2PAIRS: TIntegerField
      FieldName = 'PAIRS'
      Origin = 'MYDB.INVOICE_D.PAIRS'
    end
    object qry_ry2UNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
      Origin = 'MYDB.INVOICE_D.UNIT_PRICE'
      currency = False
    end
    object qry_ry2AMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
      Origin = 'MYDB.INVOICE_D.AMOUNT'
      currency = False
    end
    object qry_ry2INV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_D.INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_ry2RYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.INVOICE_D.RYNO'
      FixedChar = True
      Size = 50
    end
  end
  object DS_InvS: TDataSource
    DataSet = qry_invs
    Left = 522
    Top = 193
  end
  object qry_inv: TQuery
    AfterOpen = qry_invAfterOpen
    BeforeClose = qry_invBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT im.INV_NO, im.INV_DATE, si.Company_Name RISK, im.SHIP_BY,' +
        ' im.FROM_WHERE, im.TO_WHERE,im.TOTAL_PAIRS,'
      
        '     im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD, im.BRAND, im.NO, im.' +
        'FACTORY, im.[YEAR], im.SAVE_USER'
      
        '   , im.SAVE_TIME, im.PRINT_LOCK, im.CFM_USER,im.CFM_TIME, im.CF' +
        'MED, im.PRINT_USER, im.PRINT_TIME'
      
        '   , im.UNLOCK_USER,im.UNLOCK_TIME, im.YN, im.CUSTID, im.CURRENC' +
        'Y, im.Season, im.Stage,im.Inv_Type'
      '   , im.Unit, im.Inv_Sup'
      'FROM INVOICE_M im '
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK '
      'WHERE 1=2')
    Left = 482
    Top = 229
    object qry_invINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Origin = 'MYDB.INVOICE_M.INV_DATE'
    end
    object qry_invSHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      Origin = 'MYDB.INVOICE_M.SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object qry_invFROM_WHERE: TStringField
      FieldName = 'FROM_WHERE'
      Origin = 'MYDB.INVOICE_M.FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_invTO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      Origin = 'MYDB.INVOICE_M.TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_invTOTAL_PAIRS: TIntegerField
      FieldName = 'TOTAL_PAIRS'
      Origin = 'MYDB.INVOICE_M.TOTAL_PAIRS'
    end
    object qry_invTOTAL_AMOUNT: TCurrencyField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT'
    end
    object qry_invTOTAL_AMOUNT_WORD: TStringField
      FieldName = 'TOTAL_AMOUNT_WORD'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT_WORD'
      FixedChar = True
      Size = 200
    end
    object qry_invBRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'MYDB.INVOICE_M.BRAND'
      FixedChar = True
      Size = 10
    end
    object qry_invNO: TIntegerField
      FieldName = 'NO'
      Origin = 'MYDB.INVOICE_M.NO'
    end
    object qry_invFACTORY: TStringField
      FieldName = 'FACTORY'
      Origin = 'MYDB.INVOICE_M.FACTORY'
      FixedChar = True
      Size = 10
    end
    object qry_invYEAR: TStringField
      FieldName = 'YEAR'
      Origin = 'MYDB.INVOICE_M.YEAR'
      FixedChar = True
      Size = 10
    end
    object qry_invSAVE_USER: TStringField
      FieldName = 'SAVE_USER'
      Origin = 'MYDB.INVOICE_M.SAVE_USER'
      FixedChar = True
      Size = 10
    end
    object qry_invSAVE_TIME: TDateTimeField
      FieldName = 'SAVE_TIME'
      Origin = 'MYDB.INVOICE_M.SAVE_TIME'
    end
    object qry_invPRINT_LOCK: TStringField
      FieldName = 'PRINT_LOCK'
      Origin = 'MYDB.INVOICE_M.PRINT_LOCK'
      FixedChar = True
      Size = 2
    end
    object qry_invCFM_USER: TStringField
      FieldName = 'CFM_USER'
      Origin = 'MYDB.INVOICE_M.CFM_USER'
      FixedChar = True
      Size = 10
    end
    object qry_invCFM_TIME: TDateTimeField
      FieldName = 'CFM_TIME'
      Origin = 'MYDB.INVOICE_M.CFM_TIME'
    end
    object qry_invCFMED: TStringField
      FieldName = 'CFMED'
      Origin = 'MYDB.INVOICE_M.CFMED'
      FixedChar = True
      Size = 2
    end
    object qry_invPRINT_USER: TStringField
      FieldName = 'PRINT_USER'
      Origin = 'MYDB.INVOICE_M.PRINT_USER'
      FixedChar = True
      Size = 10
    end
    object qry_invPRINT_TIME: TDateTimeField
      FieldName = 'PRINT_TIME'
      Origin = 'MYDB.INVOICE_M.PRINT_TIME'
    end
    object qry_invUNLOCK_USER: TStringField
      FieldName = 'UNLOCK_USER'
      Origin = 'MYDB.INVOICE_M.UNLOCK_USER'
      FixedChar = True
      Size = 10
    end
    object qry_invUNLOCK_TIME: TDateTimeField
      FieldName = 'UNLOCK_TIME'
      Origin = 'MYDB.INVOICE_M.UNLOCK_TIME'
    end
    object qry_invYN: TStringField
      FieldName = 'YN'
      Origin = 'MYDB.INVOICE_M.YN'
      FixedChar = True
      Size = 1
    end
    object qry_invCUSTID: TStringField
      FieldName = 'CUSTID'
      Origin = 'MYDB.INVOICE_M.CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_invCURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'MYDB.INVOICE_M.CURRENCY'
      FixedChar = True
      Size = 10
    end
    object qry_invSeason: TStringField
      FieldName = 'Season'
      Origin = 'MYDB.INVOICE_M.Season'
      FixedChar = True
      Size = 5
    end
    object qry_invStage: TStringField
      FieldName = 'Stage'
      Origin = 'MYDB.INVOICE_M.Stage'
      FixedChar = True
      Size = 10
    end
    object qry_invInv_Type: TStringField
      FieldName = 'Inv_Type'
      Origin = 'MYDB.INVOICE_M.Inv_Type'
      FixedChar = True
      Size = 50
    end
    object qry_invINV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_M.INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_invRISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 255
    end
  end
  object DS3: TDataSource
    DataSet = qry_ry2
    Left = 610
    Top = 193
  end
  object UpdRY1: TUpdateSQL
    Left = 522
    Top = 257
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 704
    Top = 201
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 736
    Top = 201
  end
  object Pop_Inv4: TPopupMenu
    Left = 224
    Top = 292
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Unconfirm1: TMenuItem
      Caption = 'Un-Confirm'
    end
  end
  object qry_invSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_InvS
    SQL.Strings = (
      'SELECT * FROM INVOICE_D id'
      'WHERE id.INV_NO=:INV_NO')
    Left = 570
    Top = 227
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object StringField66: TStringField
      FieldName = 'PACK_NO'
      Origin = 'MYDB.INVOICE_D.PACK_NO'
      FixedChar = True
      Size = 10
    end
    object StringField68: TStringField
      FieldName = 'STYLE_NAME'
      Origin = 'MYDB.INVOICE_D.STYLE_NAME'
      FixedChar = True
      Size = 50
    end
    object StringField71: TStringField
      FieldName = 'PO'
      Origin = 'MYDB.INVOICE_D.PO'
      FixedChar = True
      Size = 50
    end
    object StringField72: TStringField
      FieldName = 'CUSTORDNO'
      Origin = 'MYDB.INVOICE_D.CUSTORDNO'
      FixedChar = True
      Size = 50
    end
    object StringField73: TStringField
      FieldName = 'ARTICLE'
      Origin = 'MYDB.INVOICE_D.ARTICLE'
      FixedChar = True
      Size = 50
    end
    object StringField74: TStringField
      FieldName = 'SIZE_RUN'
      Origin = 'MYDB.INVOICE_D.SIZE_RUN'
      FixedChar = True
      Size = 50
    end
    object IntegerField16: TIntegerField
      FieldName = 'PAIRS'
      Origin = 'MYDB.INVOICE_D.PAIRS'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'UNIT_PRICE'
      Origin = 'MYDB.INVOICE_D.UNIT_PRICE'
      currency = False
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'AMOUNT'
      Origin = 'MYDB.INVOICE_D.AMOUNT'
      currency = False
    end
    object StringField76: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.INVOICE_D.UserID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField15: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.INVOICE_D.UserDate'
    end
    object StringField77: TStringField
      FieldName = 'YN'
      Origin = 'MYDB.INVOICE_D.YN'
      FixedChar = True
      Size = 1
    end
    object qry_invSSINV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_D.INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_invSSRYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.INVOICE_D.RYNO'
      FixedChar = True
      Size = 50
    end
  end
  object DS_InvSS: TDataSource
    DataSet = qry_invSS
    Left = 570
    Top = 195
  end
end
