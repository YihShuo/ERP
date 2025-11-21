object MonthSemiFinishProduct: TMonthSemiFinishProduct
  Left = 446
  Top = 205
  Width = 1305
  Height = 675
  Caption = 'Month Semi FG Cost'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TS1
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Monthly Report'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 188
          Height = 24
          Caption = 'Monthly Semi-FG Cost'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 262
          Top = 47
          Width = 22
          Height = 16
          Caption = 'RY:'
        end
        object Label12: TLabel
          Left = 28
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Year:'
        end
        object Label13: TLabel
          Left = 143
          Top = 45
          Width = 39
          Height = 16
          Caption = 'Month:'
        end
        object Edt_RY1: TEdit
          Left = 287
          Top = 44
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          TabOrder = 0
        end
        object btn_Query: TButton
          Left = 486
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btn_QueryClick
        end
        object btn_Excel: TButton
          Left = 583
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btn_ExcelClick
        end
        object cbx_Year: TComboBox
          Left = 64
          Top = 43
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 3
          Text = '2017'
        end
        object cbx_Month: TComboBox
          Left = 184
          Top = 43
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
          ItemHeight = 16
          TabOrder = 4
          Text = '01'
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
        object btn_Monthly: TButton
          Left = 684
          Top = 38
          Width = 89
          Height = 33
          Caption = 'Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btn_MonthlyClick
        end
      end
      object DBG_MonthStock: TDBGridEh
        Left = 0
        Top = 81
        Width = 1281
        Height = 524
        Align = alClient
        DataSource = DS_MonthStock
        Flat = False
        FooterColor = 16759739
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
            FieldName = 'KCYEAR'
            Footers = <>
            Title.Caption = 'Nam|'#24180
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Title.Caption = 'Thang|'#26376
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Don Hang|'#35330#21934
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Depot'
            Footers = <>
            Title.Caption = 'Xuong|'#24288#21029
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SL DDCK|'#26399#26411#22312#35069#21697#37327
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RemCost'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Gia Tri Ton|'#24235#23384#20729#20540
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'RemCost01T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '30 Ngay|30'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost02T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '60 Ngay|60'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost03T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '90 Ngay|90'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost04T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '120 Ngay|120'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost05T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '150 Ngay|150'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost06T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '180 Ngay|180'#22825
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RemCost07T'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '>180 Ngay|>180'#22825
            Width = 100
          end>
      end
    end
  end
  object Qry_MonthStock: TQuery
    AfterOpen = Qry_MonthStockAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCYEAR,KCMONTH,DDBH,Depot,RemQty,RemCost,RemCost01T,RemCo' +
        'st02T,RemCost03T,RemCost04T,RemCost05T,RemCost06T,RemCost07T   '
      'FROM CW_MastCostMonth_SemiFG'
      'WHERE KCYEAR='#39'2022'#39' AND KCMONTH='#39'09'#39' AND  1=2')
    Left = 244
    Top = 186
    object Qry_MonthStockKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Qry_MonthStockKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Qry_MonthStockDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Qry_MonthStockDepot: TStringField
      FieldName = 'Depot'
      FixedChar = True
      Size = 5
    end
    object Qry_MonthStockRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object Qry_MonthStockRemCost: TFloatField
      FieldName = 'RemCost'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost01T: TFloatField
      FieldName = 'RemCost01T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost02T: TFloatField
      FieldName = 'RemCost02T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost03T: TFloatField
      FieldName = 'RemCost03T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost04T: TFloatField
      FieldName = 'RemCost04T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost05T: TFloatField
      FieldName = 'RemCost05T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost06T: TFloatField
      FieldName = 'RemCost06T'
      DisplayFormat = '#,##0'
    end
    object Qry_MonthStockRemCost07T: TFloatField
      FieldName = 'RemCost07T'
      DisplayFormat = '#,##0'
    end
  end
  object DS_MonthStock: TDataSource
    DataSet = Qry_MonthStock
    Left = 244
    Top = 219
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 169
    Top = 186
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 133
    Top = 185
  end
end
