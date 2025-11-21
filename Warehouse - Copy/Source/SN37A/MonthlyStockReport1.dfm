object MonthlyStockReport: TMonthlyStockReport
  Left = 307
  Top = 195
  Width = 1442
  Height = 675
  Caption = 'MonthlyStockReport'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1426
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 569
      Height = 24
      AutoSize = False
      Caption = 'Month Material Stock Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 50
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 265
      Top = 89
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 2
      Top = 87
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 134
      Top = 88
      Width = 46
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 192
      Top = 50
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label16: TLabel
      Left = 439
      Top = 55
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Edit1: TEdit
      Left = 63
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object CBX1: TComboBox
      Left = 333
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Button2: TButton
      Left = 556
      Top = 80
      Width = 87
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 64
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 16
      TabOrder = 3
      Text = '2022'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026')
    end
    object CBX3: TComboBox
      Left = 184
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 4
      TabOrder = 4
      Text = '05'
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
    object Edit4: TEdit
      Left = 279
      Top = 48
      Width = 128
      Height = 24
      TabOrder = 5
    end
    object CBX6: TComboBox
      Left = 504
      Top = 51
      Width = 323
      Height = 24
      ItemHeight = 16
      ItemIndex = 10
      TabOrder = 6
      Text = 'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK+TC+HD+KD'
        'NK1+TC1+HD1+KD1'
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ')
    end
    object Button3: TButton
      Left = 461
      Top = 80
      Width = 86
      Height = 33
      Caption = 'Query'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1426
    Height = 515
    Align = alClient
    DataSource = CalDS
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
        FieldName = 'KCYEAR'
        Footers = <>
        Title.Caption = #24180'|KCYEAR'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        Title.Caption = #26376'|KCMONTH'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235#21029'|CKBH'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'RemQty'
        Footer.FieldName = 'RemQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #26399#26411'|RemQty'
      end
      item
        EditButtons = <>
        FieldName = 'RemQty01T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '<30'#22825'|RemQty01T'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'RemQty02T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '31-60'#22825'|RemQty02T'
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'RemQty03T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '61-90'#22825'|RemQty03T'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'RemQty04T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '91-120'#22825'|RemQty04T'
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'RemQty05T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '121-180'#22825'|RemQty05T'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'RemQty06T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '181-359'#22825'|RemQty06T'
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'RemQty07T'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = '>=360'#22825'|RemQty07T'
      end>
  end
  object CalQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWCLZL.*,KCZLS.CWBH'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc01T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc02T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc03T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc04T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc05T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc06T'
      
        '      ,case when CWCLZL.RemACC>0 then Round(RemQty07T*((CWCLZL.R' +
        'emACC/CWCLZL.RemQty/1.0)),2) else 0 end  as RemAcc07T'
      'from CWCLZL_HG_Mon CWCLZL '
      
        'Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.' +
        'CKBH '
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      'where CWCLZL.KCYEAR='#39'2018'#39' and CWCLZL.KCMONTH='#39'05'#39'  '
      '      and KCZLS.CWBH like '#39'152%'#39
      'and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        ' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in' +
        ' (select DFL from bgszl where GSDH='#39'VA12'#39'))')
    Left = 552
    Top = 275
    object CalQueryKCYEAR: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object CalQueryKCMONTH: TStringField
      DisplayWidth = 2
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object CalQueryCKBH: TStringField
      DisplayWidth = 4
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object CalQueryHGLB: TStringField
      DisplayWidth = 4
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object CalQueryCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CalQueryYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object CalQueryDWBH: TStringField
      FieldName = 'DWBH'
      Size = 4
    end
    object CalQueryRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty01T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty01T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty02T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty02T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty03T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty03T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty04T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty04T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty05T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty05T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty06T: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty06T'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty07T: TCurrencyField
      FieldName = 'RemQty07T'
      DisplayFormat = '0.00'
    end
  end
  object CalDS: TDataSource
    DataSet = CalQuery
    Left = 552
    Top = 248
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 504
    Top = 272
  end
end
