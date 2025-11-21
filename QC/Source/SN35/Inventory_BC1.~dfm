object Inventory_BC: TInventory_BC
  Left = 251
  Top = 127
  Width = 1343
  Height = 627
  Caption = 'Inventory_BC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1327
    Height = 588
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Inventory'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1319
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 152
          Top = 16
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object Label2: TLabel
          Left = 288
          Top = 16
          Width = 38
          Height = 16
          Caption = 'Grade'
        end
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label4: TLabel
          Left = 400
          Top = 16
          Width = 55
          Height = 16
          Caption = 'Order No'
        end
        object Button1: TButton
          Left = 552
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 627
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object ED_SKU1: TEdit
          Left = 184
          Top = 12
          Width = 89
          Height = 24
          TabOrder = 2
        end
        object CB1: TComboBox
          Left = 331
          Top = 12
          Width = 62
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'B'
            'C')
        end
        object DTP5: TDateTimePicker
          Left = 42
          Top = 12
          Width = 97
          Height = 24
          Date = 44873.360677210650000000
          Format = 'yyyy/MM/dd'
          Time = 44873.360677210650000000
          TabOrder = 4
          OnChange = DTP5Change
        end
        object Button7: TButton
          Left = 792
          Top = 11
          Width = 241
          Height = 25
          Caption = 'Calculate Closing Stock Of'
          TabOrder = 5
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 704
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Print'
          TabOrder = 6
          OnClick = Button8Click
        end
        object ED_Order: TEdit
          Left = 456
          Top = 12
          Width = 89
          Height = 24
          TabOrder = 7
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1319
        Height = 509
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Order'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = '00.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '01.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '01.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '17.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Grade B'
      ImageIndex = 1
      TabVisible = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1319
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 14
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label6: TLabel
          Left = 146
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label7: TLabel
          Left = 280
          Top = 16
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object Button3: TButton
          Left = 432
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 507
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button4Click
        end
        object DTP1: TDateTimePicker
          Left = 47
          Top = 12
          Width = 97
          Height = 24
          Date = 44873.360677210650000000
          Format = 'yyyy/MM/dd'
          Time = 44873.360677210650000000
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 159
          Top = 12
          Width = 97
          Height = 24
          Date = 44873.360677210650000000
          Format = 'yyyy/MM/dd'
          Time = 44873.360677210650000000
          TabOrder = 3
        end
        object ED_SKU: TEdit
          Left = 312
          Top = 12
          Width = 89
          Height = 24
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 48
        Width = 1319
        Height = 509
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = 'Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Dep Name'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Order'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = 'Defect'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Title.Caption = 'Color'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = '01.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '17.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Grade C'
      ImageIndex = 2
      TabVisible = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1319
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 14
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label9: TLabel
          Left = 146
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label10: TLabel
          Left = 280
          Top = 16
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object Button5: TButton
          Left = 432
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 507
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button6Click
        end
        object DTP3: TDateTimePicker
          Left = 47
          Top = 12
          Width = 97
          Height = 24
          Date = 44873.360677210650000000
          Format = 'yyyy/MM/dd'
          Time = 44873.360677210650000000
          TabOrder = 2
        end
        object DTP4: TDateTimePicker
          Left = 159
          Top = 12
          Width = 97
          Height = 24
          Date = 44873.360677210650000000
          Format = 'yyyy/MM/dd'
          Time = 44873.360677210650000000
          TabOrder = 3
        end
        object ED_SKU2: TEdit
          Left = 312
          Top = 12
          Width = 89
          Height = 24
          TabOrder = 4
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 48
        Width = 1319
        Height = 509
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = 'Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Dep Name'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Order'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = 'Defect'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Title.Caption = 'Color'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = '01.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '02.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '03.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '04.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '05.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '06.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '07.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '08.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '09.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '10.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '11.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '12.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '13.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '14.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '15.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '16.5'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = '17.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 35
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = QInventory
    Left = 24
    Top = 128
  end
  object QInventory: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT Grade, DDBH, Article,case when LEFT(DDBH,3)='#39'JTS'#39' then '#39'T' +
        'EVA'#39' else '#39'HOKA'#39' END as KH'
      ', MAX(CASE WHEN Size = '#39'00.0'#39' THEN Qty END) AS '#39'00.0'#39
      ', MAX(CASE WHEN Size = '#39'01.0'#39' THEN Qty END) AS '#39'01.0'#39
      ', MAX(CASE WHEN Size = '#39'01.5'#39' THEN Qty END) AS '#39'01.5'#39
      ', MAX(CASE WHEN Size = '#39'02.0'#39' THEN Qty END) AS '#39'02.0'#39
      ', MAX(CASE WHEN Size = '#39'02.5'#39' THEN Qty END) AS '#39'02.5'#39
      ', MAX(CASE WHEN Size = '#39'03.0'#39' THEN Qty END) AS '#39'03.0'#39
      ', MAX(CASE WHEN Size = '#39'03.5'#39' THEN Qty END) AS '#39'03.5'#39
      ', MAX(CASE WHEN Size = '#39'04.0'#39' THEN Qty END) AS '#39'04.0'#39
      ', MAX(CASE WHEN Size = '#39'04.5'#39' THEN Qty END) AS '#39'04.5'#39
      ', MAX(CASE WHEN Size = '#39'05.0'#39' THEN Qty END) AS '#39'05.0'#39
      ', MAX(CASE WHEN Size = '#39'05.5'#39' THEN Qty END) AS '#39'05.5'#39
      ', MAX(CASE WHEN Size = '#39'06.0'#39' THEN Qty END) AS '#39'06.0'#39
      ', MAX(CASE WHEN Size = '#39'06.5'#39' THEN Qty END) AS '#39'06.5'#39
      ', MAX(CASE WHEN Size = '#39'07.0'#39' THEN Qty END) AS '#39'07.0'#39
      ', MAX(CASE WHEN Size = '#39'07.5'#39' THEN Qty END) AS '#39'07.5'#39
      ', MAX(CASE WHEN Size = '#39'08.0'#39' THEN Qty END) AS '#39'08.0'#39
      ', MAX(CASE WHEN Size = '#39'08.5'#39' THEN Qty END) AS '#39'08.5'#39
      ', MAX(CASE WHEN Size = '#39'09.0'#39' THEN Qty END) AS '#39'09.0'#39
      ', MAX(CASE WHEN Size = '#39'09.5'#39' THEN Qty END) AS '#39'09.5'#39
      ', MAX(CASE WHEN Size = '#39'10.0'#39' THEN Qty END) AS '#39'10.0'#39
      ', MAX(CASE WHEN Size = '#39'10.5'#39' THEN Qty END) AS '#39'10.5'#39
      ', MAX(CASE WHEN Size = '#39'11.0'#39' THEN Qty END) AS '#39'11.0'#39
      ', MAX(CASE WHEN Size = '#39'11.5'#39' THEN Qty END) AS '#39'11.5'#39
      ', MAX(CASE WHEN Size = '#39'12.0'#39' THEN Qty END) AS '#39'12.0'#39
      ', MAX(CASE WHEN Size = '#39'12.5'#39' THEN Qty END) AS '#39'12.5'#39
      ', MAX(CASE WHEN Size = '#39'13.0'#39' THEN Qty END) AS '#39'13.0'#39
      ', MAX(CASE WHEN Size = '#39'13.5'#39' THEN Qty END) AS '#39'13.5'#39
      ', MAX(CASE WHEN Size = '#39'14.0'#39' THEN Qty END) AS '#39'14.0'#39
      ', MAX(CASE WHEN Size = '#39'14.5'#39' THEN Qty END) AS '#39'14.5'#39
      ', MAX(CASE WHEN Size = '#39'15.0'#39' THEN Qty END) AS '#39'15.0'#39
      ', MAX(CASE WHEN Size = '#39'15.5'#39' THEN Qty END) AS '#39'15.5'#39
      ', MAX(CASE WHEN Size = '#39'16.0'#39' THEN Qty END) AS '#39'16.0'#39
      ', MAX(CASE WHEN Size = '#39'16.5'#39' THEN Qty END) AS '#39'16.5'#39
      ', MAX(CASE WHEN Size = '#39'17.0'#39' THEN Qty END) AS '#39'17.0'#39
      ', SUM(CASE WHEN Size = '#39'00.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'01.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'01.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'02.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'02.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'03.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'03.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'04.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'04.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'05.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'05.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'06.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'06.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'07.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'07.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'08.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'08.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'09.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'09.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'10.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'10.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'11.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'11.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'12.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'12.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'13.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'13.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'14.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'14.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'15.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'15.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'16.0'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'16.5'#39' THEN Qty ELSE 0 END) +'
      '  SUM(CASE WHEN Size = '#39'17.0'#39' THEN Qty ELSE 0 END) AS TotalQty '
      'FROM ('
      '  SELECT * FROM ('
      
        '  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Article, KCRKS_' +
        'BC.Size, SUM(KCRKS_BC.Qty) AS Qty FROM ('
      
        '    SELECT Grade, BCShoeMonth.DDBH, Size, Qty, DDZL.Article FROM' +
        ' BCShoeMonth'
      '    LEFT JOIN DDZL ON DDZL.DDBH = BCShoeMonth.DDBH'
      '    WHERE KCYear = '#39'2024'#39' AND KCMonth = '#39'05'#39
      '    AND BCShoeMonth.GSBH = '#39'VA12'#39
      '    UNION ALL'
      
        '    SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_B' +
        'C.Qty, DDZL.Article FROM KCRKS_BC'
      '    LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        '    WHERE KCRK_BC.flowflag not in ('#39'X'#39') and KCRK_BC.GSBH = '#39'VA12' +
        #39
      
        '    AND CONVERT(VARCHAR, KCRK_BC.CFMDate, 111) BETWEEN '#39'2024/06/' +
        '01'#39' AND '#39'2024/06/25'#39
      '    UNION ALL'
      
        '    SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_B' +
        'C.Qty*-1 AS Qty, DDZL.Article FROM KCLLS_BC'
      '    LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH'
      
        '    WHERE KCLL_BC.flowflag not in ('#39'X'#39') and KCLL_BC.GSBH = '#39'VA12' +
        #39
      
        '    AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN '#39'2024/06/' +
        '01'#39' AND '#39'2024/06/25'#39
      '  ) AS KCRKS_BC'
      
        '  GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Article, KCRK' +
        'S_BC.Size'
      ') AS KCRKS_BC'
      '  ) AS KCRKS_BC'
      '  WHERE 1 = 1 and KCRKS_BC.Qty > 0'
      'GROUP BY Grade, DDBH, Article'
      'ORDER BY Grade, Article, DDBH')
    Left = 24
    Top = 160
    object QInventoryGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QInventoryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QInventoryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QInventoryBDEDesigner010: TFloatField
      FieldName = '01.0'
    end
    object QInventoryBDEDesigner015: TFloatField
      FieldName = '01.5'
    end
    object QInventoryBDEDesigner020: TFloatField
      FieldName = '02.0'
    end
    object QInventoryBDEDesigner025: TFloatField
      FieldName = '02.5'
    end
    object QInventoryBDEDesigner030: TFloatField
      FieldName = '03.0'
    end
    object QInventoryBDEDesigner035: TFloatField
      FieldName = '03.5'
    end
    object QInventoryBDEDesigner040: TFloatField
      FieldName = '04.0'
    end
    object QInventoryBDEDesigner045: TFloatField
      FieldName = '04.5'
    end
    object QInventoryBDEDesigner050: TFloatField
      FieldName = '05.0'
    end
    object QInventoryBDEDesigner055: TFloatField
      FieldName = '05.5'
    end
    object QInventoryBDEDesigner060: TFloatField
      FieldName = '06.0'
    end
    object QInventoryBDEDesigner065: TFloatField
      FieldName = '06.5'
    end
    object QInventoryBDEDesigner070: TFloatField
      FieldName = '07.0'
    end
    object QInventoryBDEDesigner075: TFloatField
      FieldName = '07.5'
    end
    object QInventoryBDEDesigner080: TFloatField
      FieldName = '08.0'
    end
    object QInventoryBDEDesigner085: TFloatField
      FieldName = '08.5'
    end
    object QInventoryBDEDesigner090: TFloatField
      FieldName = '09.0'
    end
    object QInventoryBDEDesigner095: TFloatField
      FieldName = '09.5'
    end
    object QInventoryBDEDesigner100: TFloatField
      FieldName = '10.0'
    end
    object QInventoryBDEDesigner105: TFloatField
      FieldName = '10.5'
    end
    object QInventoryBDEDesigner110: TFloatField
      FieldName = '11.0'
    end
    object QInventoryBDEDesigner115: TFloatField
      FieldName = '11.5'
    end
    object QInventoryBDEDesigner120: TFloatField
      FieldName = '12.0'
    end
    object QInventoryBDEDesigner125: TFloatField
      FieldName = '12.5'
    end
    object QInventoryBDEDesigner130: TFloatField
      FieldName = '13.0'
    end
    object QInventoryBDEDesigner135: TFloatField
      FieldName = '13.5'
    end
    object QInventoryBDEDesigner140: TFloatField
      FieldName = '14.0'
    end
    object QInventoryBDEDesigner145: TFloatField
      FieldName = '14.5'
    end
    object QInventoryBDEDesigner150: TFloatField
      FieldName = '15.0'
    end
    object QInventoryBDEDesigner155: TFloatField
      FieldName = '15.5'
    end
    object QInventoryBDEDesigner160: TFloatField
      FieldName = '16.0'
    end
    object QInventoryBDEDesigner165: TFloatField
      FieldName = '16.5'
    end
    object QInventoryBDEDesigner170: TFloatField
      FieldName = '17.0'
    end
    object QInventoryTotalQty: TFloatField
      FieldName = 'TotalQty'
    end
    object QInventoryBDEDesigner000: TFloatField
      FieldName = '00.0'
    end
    object QInventoryKH: TStringField
      FieldName = 'KH'
      FixedChar = True
      Size = 4
    end
  end
  object QGradeB: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, KCRK_BC.UserDate, 111) AS UserDate, BDep' +
        'artment.DepName,'
      'KCRKS_BC.DDBH, QCBLYY.YWSM, XXZL.YSSM, DDZL.Article'
      ', MAX(CASE WHEN Size = '#39'03.0'#39' THEN Qty END) AS '#39'03.0'#39' '
      ', MAX(CASE WHEN Size = '#39'03.5'#39' THEN Qty END) AS '#39'03.5'#39
      ', MAX(CASE WHEN Size = '#39'04.0'#39' THEN Qty END) AS '#39'04.0'#39
      ', MAX(CASE WHEN Size = '#39'04.5'#39' THEN Qty END) AS '#39'04.5'#39
      ', MAX(CASE WHEN Size = '#39'05.0'#39' THEN Qty END) AS '#39'05.0'#39
      ', MAX(CASE WHEN Size = '#39'05.5'#39' THEN Qty END) AS '#39'05.5'#39
      ', MAX(CASE WHEN Size = '#39'06.0'#39' THEN Qty END) AS '#39'06.0'#39
      ', MAX(CASE WHEN Size = '#39'06.5'#39' THEN Qty END) AS '#39'06.5'#39
      ', MAX(CASE WHEN Size = '#39'07.0'#39' THEN Qty END) AS '#39'07.0'#39
      ', MAX(CASE WHEN Size = '#39'07.5'#39' THEN Qty END) AS '#39'07.5'#39
      ', MAX(CASE WHEN Size = '#39'08.0'#39' THEN Qty END) AS '#39'08.0'#39
      ', MAX(CASE WHEN Size = '#39'08.5'#39' THEN Qty END) AS '#39'08.5'#39
      ', MAX(CASE WHEN Size = '#39'09.0'#39' THEN Qty END) AS '#39'09.0'#39
      ', MAX(CASE WHEN Size = '#39'09.5'#39' THEN Qty END) AS '#39'09.5'#39
      ', MAX(CASE WHEN Size = '#39'10.0'#39' THEN Qty END) AS '#39'10.0'#39
      ', MAX(CASE WHEN Size = '#39'10.5'#39' THEN Qty END) AS '#39'10.5'#39
      ', MAX(CASE WHEN Size = '#39'11.0'#39' THEN Qty END) AS '#39'11.0'#39
      ', MAX(CASE WHEN Size = '#39'11.5'#39' THEN Qty END) AS '#39'11.5'#39
      ', MAX(CASE WHEN Size = '#39'12.0'#39' THEN Qty END) AS '#39'12.0'#39
      ', MAX(CASE WHEN Size = '#39'12.5'#39' THEN Qty END) AS '#39'12.5'#39
      ', MAX(CASE WHEN Size = '#39'13.0'#39' THEN Qty END) AS '#39'13.0'#39
      ', MAX(CASE WHEN Size = '#39'13.5'#39' THEN Qty END) AS '#39'13.5'#39
      ', MAX(CASE WHEN Size = '#39'14.0'#39' THEN Qty END) AS '#39'14.0'#39
      ', MAX(CASE WHEN Size = '#39'15.0'#39' THEN Qty END) AS '#39'15.0'#39
      ', MAX(CASE WHEN Size = '#39'16.0'#39' THEN Qty END) AS '#39'16.0'#39
      'FROM KCRKS_BC'
      'LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'
      'LEFT JOIN BDepartment ON BDepartment.ID = KCRKS_BC.DepID'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'LEFT JOIN QCBLYY ON QCBLYY.YYBH = KCRKS_BC.DefectID'
      'WHERE flowflag = '#39'Z'#39' AND KCRKS_BC.Grade = '#39'B'#39
      
        'AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN '#39'2022/11/01'#39 +
        ' AND '#39'2022/11/30'#39
      
        'GROUP BY CONVERT(VARCHAR, KCRK_BC.UserDate, 111), BDepartment.De' +
        'pName,'
      'KCRKS_BC.DDBH, QCBLYY.YWSM, XXZL.YSSM, DDZL.Article')
    Left = 57
    Top = 160
    object QGradeBCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QGradeBDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object QGradeBDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QGradeBYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object QGradeBYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object QGradeBArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QGradeBField010: TFloatField
      FieldName = '01.0'
    end
    object QGradeBField020: TFloatField
      FieldName = '02.0'
    end
    object QGradeBField025: TFloatField
      FieldName = '02.5'
    end
    object QGradeBBDEDesigner030: TFloatField
      FieldName = '03.0'
    end
    object QGradeBBDEDesigner035: TFloatField
      FieldName = '03.5'
    end
    object QGradeBBDEDesigner040: TFloatField
      FieldName = '04.0'
    end
    object QGradeBBDEDesigner045: TFloatField
      FieldName = '04.5'
    end
    object QGradeBBDEDesigner050: TFloatField
      FieldName = '05.0'
    end
    object QGradeBBDEDesigner055: TFloatField
      FieldName = '05.5'
    end
    object QGradeBBDEDesigner060: TFloatField
      FieldName = '06.0'
    end
    object QGradeBBDEDesigner065: TFloatField
      FieldName = '06.5'
    end
    object QGradeBBDEDesigner070: TFloatField
      FieldName = '07.0'
    end
    object QGradeBBDEDesigner075: TFloatField
      FieldName = '07.5'
    end
    object QGradeBBDEDesigner080: TFloatField
      FieldName = '08.0'
    end
    object QGradeBBDEDesigner085: TFloatField
      FieldName = '08.5'
    end
    object QGradeBBDEDesigner090: TFloatField
      FieldName = '09.0'
    end
    object QGradeBBDEDesigner095: TFloatField
      FieldName = '09.5'
    end
    object QGradeBBDEDesigner100: TFloatField
      FieldName = '10.0'
    end
    object QGradeBBDEDesigner105: TFloatField
      FieldName = '10.5'
    end
    object QGradeBBDEDesigner110: TFloatField
      FieldName = '11.0'
    end
    object QGradeBBDEDesigner115: TFloatField
      FieldName = '11.5'
    end
    object QGradeBBDEDesigner120: TFloatField
      FieldName = '12.0'
    end
    object QGradeBBDEDesigner125: TFloatField
      FieldName = '12.5'
    end
    object QGradeBBDEDesigner130: TFloatField
      FieldName = '13.0'
    end
    object QGradeBBDEDesigner135: TFloatField
      FieldName = '13.5'
    end
    object QGradeBBDEDesigner140: TFloatField
      FieldName = '14.0'
    end
    object QGradeBField145: TFloatField
      FieldName = '14.5'
    end
    object QGradeBBDEDesigner150: TFloatField
      FieldName = '15.0'
    end
    object QGradeBField155: TFloatField
      FieldName = '15.5'
    end
    object QGradeBBDEDesigner160: TFloatField
      FieldName = '16.0'
    end
    object QGradeBField165: TFloatField
      FieldName = '16.5'
    end
    object QGradeBField170: TFloatField
      FieldName = '17.0'
    end
  end
  object DS2: TDataSource
    DataSet = QGradeB
    Left = 57
    Top = 128
  end
  object QGradeC: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CONVERT(VARCHAR, KCRK_BC.UserDate, 111) AS UserDate, BDep' +
        'artment.DepName,'
      'KCRKS_BC.DDBH, QCBLYY.YWSM, XXZL.YSSM, DDZL.Article'
      ', MAX(CASE WHEN Size = '#39'03.0'#39' THEN Qty END) AS '#39'03.0'#39' '
      ', MAX(CASE WHEN Size = '#39'03.5'#39' THEN Qty END) AS '#39'03.5'#39
      ', MAX(CASE WHEN Size = '#39'04.0'#39' THEN Qty END) AS '#39'04.0'#39
      ', MAX(CASE WHEN Size = '#39'04.5'#39' THEN Qty END) AS '#39'04.5'#39
      ', MAX(CASE WHEN Size = '#39'05.0'#39' THEN Qty END) AS '#39'05.0'#39
      ', MAX(CASE WHEN Size = '#39'05.5'#39' THEN Qty END) AS '#39'05.5'#39
      ', MAX(CASE WHEN Size = '#39'06.0'#39' THEN Qty END) AS '#39'06.0'#39
      ', MAX(CASE WHEN Size = '#39'06.5'#39' THEN Qty END) AS '#39'06.5'#39
      ', MAX(CASE WHEN Size = '#39'07.0'#39' THEN Qty END) AS '#39'07.0'#39
      ', MAX(CASE WHEN Size = '#39'07.5'#39' THEN Qty END) AS '#39'07.5'#39
      ', MAX(CASE WHEN Size = '#39'08.0'#39' THEN Qty END) AS '#39'08.0'#39
      ', MAX(CASE WHEN Size = '#39'08.5'#39' THEN Qty END) AS '#39'08.5'#39
      ', MAX(CASE WHEN Size = '#39'09.0'#39' THEN Qty END) AS '#39'09.0'#39
      ', MAX(CASE WHEN Size = '#39'09.5'#39' THEN Qty END) AS '#39'09.5'#39
      ', MAX(CASE WHEN Size = '#39'10.0'#39' THEN Qty END) AS '#39'10.0'#39
      ', MAX(CASE WHEN Size = '#39'10.5'#39' THEN Qty END) AS '#39'10.5'#39
      ', MAX(CASE WHEN Size = '#39'11.0'#39' THEN Qty END) AS '#39'11.0'#39
      ', MAX(CASE WHEN Size = '#39'11.5'#39' THEN Qty END) AS '#39'11.5'#39
      ', MAX(CASE WHEN Size = '#39'12.0'#39' THEN Qty END) AS '#39'12.0'#39
      ', MAX(CASE WHEN Size = '#39'12.5'#39' THEN Qty END) AS '#39'12.5'#39
      ', MAX(CASE WHEN Size = '#39'13.0'#39' THEN Qty END) AS '#39'13.0'#39
      ', MAX(CASE WHEN Size = '#39'13.5'#39' THEN Qty END) AS '#39'13.5'#39
      ', MAX(CASE WHEN Size = '#39'14.0'#39' THEN Qty END) AS '#39'14.0'#39
      ', MAX(CASE WHEN Size = '#39'15.0'#39' THEN Qty END) AS '#39'15.0'#39
      ', MAX(CASE WHEN Size = '#39'16.0'#39' THEN Qty END) AS '#39'16.0'#39
      'FROM KCRKS_BC'
      'LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'
      'LEFT JOIN BDepartment ON BDepartment.ID = KCRKS_BC.DepID'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'LEFT JOIN QCBLYY ON QCBLYY.YYBH = KCRKS_BC.DefectID'
      'WHERE flowflag = '#39'Z'#39' AND KCRKS_BC.Grade = '#39'B'#39
      
        'AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN '#39'2022/11/01'#39 +
        ' AND '#39'2022/11/30'#39
      
        'GROUP BY CONVERT(VARCHAR, KCRK_BC.UserDate, 111), BDepartment.De' +
        'pName,'
      'KCRKS_BC.DDBH, QCBLYY.YWSM, XXZL.YSSM, DDZL.Article')
    Left = 89
    Top = 160
    object DateTimeField1: TDateTimeField
      FieldName = 'CFMDate'
    end
    object StringField1: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QGradeCField010: TFloatField
      FieldName = '01.0'
    end
    object QGradeCField020: TFloatField
      FieldName = '02.0'
    end
    object QGradeCField025: TFloatField
      FieldName = '02.5'
    end
    object FloatField1: TFloatField
      FieldName = '03.0'
    end
    object FloatField2: TFloatField
      FieldName = '03.5'
    end
    object FloatField3: TFloatField
      FieldName = '04.0'
    end
    object FloatField4: TFloatField
      FieldName = '04.5'
    end
    object FloatField5: TFloatField
      FieldName = '05.0'
    end
    object FloatField6: TFloatField
      FieldName = '05.5'
    end
    object FloatField7: TFloatField
      FieldName = '06.0'
    end
    object FloatField8: TFloatField
      FieldName = '06.5'
    end
    object FloatField9: TFloatField
      FieldName = '07.0'
    end
    object FloatField10: TFloatField
      FieldName = '07.5'
    end
    object FloatField11: TFloatField
      FieldName = '08.0'
    end
    object FloatField12: TFloatField
      FieldName = '08.5'
    end
    object FloatField13: TFloatField
      FieldName = '09.0'
    end
    object FloatField14: TFloatField
      FieldName = '09.5'
    end
    object FloatField15: TFloatField
      FieldName = '10.0'
    end
    object FloatField16: TFloatField
      FieldName = '10.5'
    end
    object FloatField17: TFloatField
      FieldName = '11.0'
    end
    object FloatField18: TFloatField
      FieldName = '11.5'
    end
    object FloatField19: TFloatField
      FieldName = '12.0'
    end
    object FloatField20: TFloatField
      FieldName = '12.5'
    end
    object FloatField21: TFloatField
      FieldName = '13.0'
    end
    object FloatField22: TFloatField
      FieldName = '13.5'
    end
    object FloatField23: TFloatField
      FieldName = '14.0'
    end
    object QGradeCField145: TFloatField
      FieldName = '14.5'
    end
    object FloatField24: TFloatField
      FieldName = '15.0'
    end
    object QGradeCField155: TFloatField
      FieldName = '15.5'
    end
    object FloatField25: TFloatField
      FieldName = '16.0'
    end
    object QGradeCField165: TFloatField
      FieldName = '16.5'
    end
    object QGradeCField170: TFloatField
      FieldName = '17.0'
    end
  end
  object DS3: TDataSource
    DataSet = QGradeC
    Left = 89
    Top = 128
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 121
    Top = 160
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 121
    Top = 128
  end
end
