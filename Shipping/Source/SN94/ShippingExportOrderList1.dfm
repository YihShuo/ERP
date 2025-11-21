object ShippingExportOrderList: TShippingExportOrderList
  Left = 290
  Top = 196
  Width = 928
  Height = 480
  Caption = 'Shipping Export Order List'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 4
      Top = 46
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RYNo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 204
      Top = 44
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inv No.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnQuery: TButton
      Left = 448
      Top = 5
      Width = 78
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnQueryClick
    end
    object btnExcel: TButton
      Left = 447
      Top = 39
      Width = 78
      Height = 28
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExcelClick
    end
    object edtRY: TEdit
      Left = 80
      Top = 41
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtInvNo: TEdit
      Left = 282
      Top = 41
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ckb_InvDate: TCheckBox
      Left = 8
      Top = 12
      Width = 89
      Height = 17
      Caption = 'Inv_Date'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 108
      Top = 7
      Width = 97
      Height = 24
      Date = 43409.628376527780000000
      Time = 43409.628376527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 212
      Top = 8
      Width = 101
      Height = 24
      Date = 43409.628376527780000000
      Time = 43409.628376527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 912
    Height = 368
    Align = alClient
    DataSource = DS_INVOICE_M
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'SOTK'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'INV_NO'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'PAIRS'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'UNIT_PRICE'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'AMOUNT'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'TO_WHERE'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'INV_DATE'
        Footers = <>
        Width = 84
      end>
  end
  object INVOICE_M: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      ''
      
        'select KFJC,RYNO,SOTK,INV_NO,PAIRS,UNIT_PRICE,AMOUNT,TO_WHERE,IN' +
        'V_DATE  from ('
      
        'select '#39'1.List'#39' as SB,KFZL.KFJC,INVOICE_D.RYNO,Declaretion as SO' +
        'TK,INVOICE_M.INV_NO ,INVOICE_D.PAIRS,INVOICE_D.UNIT_PRICE,INVOIC' +
        'E_D.AMOUNT,INVOICE_M.TO_WHERE, INVOICE_M.INV_DATE from INVOICE_M'
      'left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO'
      'left join DDZL on DDZL.DDBH=INVOICE_D.RYNO'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      
        'where convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,1' +
        '11)) between '
      #39'2018/10/1'#39' and '#39'2018/10/30'#39
      'union all'
      
        'select '#39'2.TOTAL'#39' as SB,'#39'TOTAL'#39' as KFJC,'#39#39' as RYNO,'#39#39' as SOTK,INV' +
        'OICE_M.INV_NO ,Sum(INVOICE_D.PAIRS) as PAIRS,null as UNIT_PRICE,' +
        'Sum(INVOICE_D.AMOUNT) as AMOUNT,Max(INVOICE_M.TO_WHERE) as TO_WH' +
        'ERE,Max(INVOICE_M.INV_DATE) as INV_DATE from INVOICE_M'
      'left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO'
      'left join DDZL on DDZL.DDBH=INVOICE_D.RYNO'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      
        'where convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,1' +
        '11)) between '
      #39'2018/10/1'#39' and '#39'2018/10/30'#39
      'Group by INVOICE_M.INV_NO'
      'union all'
      
        'select '#39'3.TOTAL  ALL'#39' as SB,'#39'TOTAL ALL'#39' as KFJC,'#39#39' as RYNO,'#39#39' as' +
        ' SOTK,'#39'ZZZZZZZZZZ'#39' as INV_NO ,Sum(INVOICE_D.PAIRS) as PAIRS,null' +
        ' as UNIT_PRICE,Sum(INVOICE_D.AMOUNT) as AMOUNT,'#39#39' as TO_WHERE,nu' +
        'll as INV_DATE from INVOICE_M'
      'left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO'
      'left join DDZL on DDZL.DDBH=INVOICE_D.RYNO'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      
        'where convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,1' +
        '11)) between '
      #39'2018/10/1'#39' and '#39'2018/10/30'#39
      ' ) INVOICE_M'
      'order by INVOICE_M.INV_NO,INVOICE_M.SB')
    Left = 256
    Top = 168
    object INVOICE_MKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object INVOICE_MRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object INVOICE_MINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 15
    end
    object INVOICE_MPAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object INVOICE_MUNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
      DisplayFormat = '#0.00'
    end
    object INVOICE_MAMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
      DisplayFormat = '#0.00'
    end
    object INVOICE_MTO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object INVOICE_MINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object INVOICE_MSOTK: TStringField
      FieldName = 'SOTK'
      FixedChar = True
    end
  end
  object DS_INVOICE_M: TDataSource
    DataSet = INVOICE_M
    Left = 288
    Top = 168
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 176
    Top = 208
  end
end
