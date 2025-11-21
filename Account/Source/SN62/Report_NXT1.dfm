object Report_NXT: TReport_NXT
  Left = 219
  Top = 148
  Width = 1386
  Height = 675
  Caption = 'Montly Report NXT'
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
    Width = 1370
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 23
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 23
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 368
      Top = 61
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 46
      Top = 61
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 159
      Top = 61
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 464
      Top = 23
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label16: TLabel
      Left = 623
      Top = 21
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label7: TLabel
      Left = 253
      Top = 61
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory:'
    end
    object Label10: TLabel
      Left = 502
      Top = 62
      Width = 90
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Not CKBH:'
    end
    object Edit2: TEdit
      Left = 264
      Top = 21
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 21
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 705
      Top = 53
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 428
      Top = 58
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Edit3: TEdit
      Left = 368
      Top = 21
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CBX2: TComboBox
      Left = 80
      Top = 58
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 5
      Text = '2020'
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
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX3: TComboBox
      Left = 200
      Top = 58
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
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
    object Edit4: TEdit
      Left = 544
      Top = 21
      Width = 57
      Height = 24
      TabOrder = 7
    end
    object CBX6: TComboBox
      Left = 656
      Top = 18
      Width = 319
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 5
      TabOrder = 8
      Text = 'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
      Items.Strings = (
        ''
        'NK'
        'TC'
        'HD'
        'KD'
        'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'NQ'
        'NKNQ')
    end
    object CBX4: TComboBox
      Left = 303
      Top = 58
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 9
      Text = 'ALL'
      OnChange = CBX4Change
      Items.Strings = (
        'ALL')
    end
    object Button4: TButton
      Left = 891
      Top = 52
      Width = 88
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 10
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 799
      Top = 52
      Width = 86
      Height = 34
      Caption = 'Print-S'
      TabOrder = 11
      OnClick = Button2Click
    end
    object NotInCKBHEdit: TEdit
      Left = 598
      Top = 57
      Width = 64
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 105
    Width = 1370
    Height = 531
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 105
    Width = 1370
    Height = 531
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16759739
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 5
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    RowHeight = 4
    RowLines = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235'|CKBH'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'MaGop'
        Footers = <>
        Title.Caption = #26009#34399'|MaGop'
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #20358#28304'|HGLB'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'HGBH'
        Footers = <>
        Title.Caption = #28023#38364#32232#34399'|HGBH'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Title.TitleButton = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 317
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <
          item
            FieldName = 'CWBH'
            ValueType = fvtCount
          end>
        Title.Caption = #25142#21475'|CWBH'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'TotPrice'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'TotPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #21934#20729'|TotPrice'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'LastQty'
        Footers = <
          item
            DisplayFormat = '##,#0.0000'
            FieldName = 'LastQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#21021'|LastQty'
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LastACC'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'LastACC'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#21021#37329#38989'|LastACC'
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <
          item
            DisplayFormat = '##,#0.0000'
            FieldName = 'RKQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235'|RKQty'
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'RKACC'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'RKACC'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#37329#38989'|RKACC'
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CKQty'
        Footers = <
          item
            DisplayFormat = '##,#0.0000'
            FieldName = 'CKQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30332#26009'|CKQty'
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CKACC'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'CKACC'
            ValueType = fvtSum
          end>
        Title.Caption = #30332#26009#32317#37329#38989'|CKACC'
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'RemQty'
        Footers = <
          item
            DisplayFormat = '##,#0.0000'
            FieldName = 'RemQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#26411'|RemQty'
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'RemACC'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'RemACC'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#26411#32317#37329#38989'|RemACC'
        Title.TitleButton = True
        Width = 120
      end>
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 192
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 571
    Top = 165
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.HGLB,CWCL' +
        'ZL.CLBH,CWCLZL.LastQty,'
      
        '       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWC' +
        'LZL.JGACC,'
      
        '       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQt' +
        'y,CWCLZL.CKQty,RemQty'
      '       ,JGCKACC'
      
        ',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCL' +
        'COUNT.VNACC) else CWCLZL.CKACC  end [CKACC] '
      
        ',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCL' +
        'COUNT.VNACC else CWCLZL.RemACC end [RemACC]'
      ',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH '
      ',CLHG.HGBH,CLHG.UnitC,CLHG.RateC'
      'from  CWCLZL_HG CWCLZL'
      
        'left join CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCO' +
        'UNT.KCMONTH=CWCLZL.KCMONTH '
      
        '                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUN' +
        'T.CLBH=CWCLZL.CLBH '
      'left join CLZL on  CLZL.CLDH= CWCLZL.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CK' +
        'BH'
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      
        'left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.KCYear>='#39'2017' +
        #39
      'where CWCLZL.KCYEAR='#39'2017'#39
      '      and CWCLZL.KCMONTH='#39'06'#39
      '      and CWCLZL.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and KCZLS.CWBH like '#39'%'#39
      ' and KCCK.GSBH='#39'VA12'#39)
    Left = 496
    Top = 192
    object StringField1: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2MaGop: TStringField
      FieldName = 'MaGop'
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query2TotPrice: TCurrencyField
      FieldName = 'TotPrice'
      DisplayFormat = '#,##0'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2LastACC: TCurrencyField
      FieldName = 'LastACC'
      DisplayFormat = '#,##0'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RKACC: TCurrencyField
      FieldName = 'RKACC'
      DisplayFormat = '#,##0'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2CKACC: TCurrencyField
      FieldName = 'CKACC'
      DisplayFormat = '#,##0'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RemACC: TCurrencyField
      FieldName = 'RemACC'
      DisplayFormat = '#,##0'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 528
    Top = 192
  end
end
