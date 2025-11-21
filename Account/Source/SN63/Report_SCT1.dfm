object Report_SCT: TReport_SCT
  Left = 334
  Top = 233
  Width = 1386
  Height = 675
  Caption = 'Monthly Report SCT'
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
      Left = 615
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
      Left = 675
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
      Left = 648
      Top = 18
      Width = 305
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
        'NKNQ'
        '')
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
      Left = 860
      Top = 52
      Width = 86
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 10
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 768
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
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #20358#28304'|HGLB'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364#32232#34399'|CNO'
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
        Footers = <
          item
            FieldName = 'CWBH'
            ValueType = fvtCount
          end>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'SOCHUNGTU'
        Footers = <>
        Title.Caption = #20659#31080#34399#30908'|SOCHUNGTU'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #26085#26399'|CFMDATE'
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #20379#25033#21830'|ZSYWJC'
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = #22577#38364#21934'/'#30332#31080'|TOKHAI/HOADON'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934'|SCBH'
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Title.Caption = #31185#30446'|CWBH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Title.Caption = #23565#25033#31185#30446'|CostID'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327' '#20837'|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729#20837'|USPrice'
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #37329#38989#20837'|USACC'
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #21934#20729#20837'|VNPrice'
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Caption = #37329#38989#20837'|VNACC'
      end
      item
        EditButtons = <>
        FieldName = 'Qty_X'
        Footers = <
          item
            FieldName = 'Qty_X'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327' '#20986'|Qty_X'
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice_X'
        Footers = <>
        Title.Caption = #21934#20729' '#20986'|VNPrice_X'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'VNACC_X'
        Footers = <
          item
            FieldName = 'VNACC_X'
            ValueType = fvtSum
          end>
        Title.Caption = #37329#38989' '#20986'|VNACC_X'
        Width = 70
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
      
        'select kcrk.GSBH,kcrk.CKBH,KCRK.HGLB,KCRKs.CNO,KCRKS.CLBH,CLZL.Y' +
        'WPM,CLZL.DWBH,KCRK.RKNO as SOCHUNGTU,KCRK.CFMDATE,ZSZL.ZSYWJC,KC' +
        'PK.Declaretion,'#39#39' as SCBH,KCZLS.CWBH,KCRKS.CostID,'
      
        #9#9'KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC+' +
        'isnull(KCRKS.ExchACC,0) as VNACC,'#39#39' as Qty_X,'#39#39' as VNPrice_X, '#39#39 +
        ' as VNACC_X'#9
      
        'from (select * from KCRKS union all select * from KCRKS_2014) KC' +
        'RKS'
      
        'left join (select * from KCRK union all select * from KCRK_2014)' +
        ' KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKB' +
        'H '
      'left join KCCK on KCCK.CKBH=KCRK.CKBH '
      'left join KCPK on KCPK.PKNO=KCRK.RKNO '
      
        'where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between '
      '      '#39'2022/04/01'#39' and '#39'2022/04/30'#39
      '      and KCCK.GSBH='#39'VA12'#39
      #9'  AND KCRK.YN='#39'5'#39
      #9'  and KCRK.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')'
      #9'  and 1=2'
      'union all'
      
        'select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.' +
        'YWPM,CLZL.DWBH,KCLLS.LLNO SOCHUNGTU,KCLL.CFMDate,'#39#39' as ZSYWJC,'#39#39 +
        ' as Declaretion,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID,'
      
        #9'   isnull(KCLLS.Qty,0) as Qty,'#39#39' as USPRice, '#39#39' as USACC,'#39#39' as ' +
        'VNPrice, '#39#39' as VNACC, isnull(KCLLS.Qty,0)  as Qty_X, isnull(KCLL' +
        'S.VNPrice_HG,0)  as VNPrice_X, KCLLS.VNACC_HG as VNACC_X'
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS '
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2022/04/01'#39' and '#39'2022/04/30'#39
      '      and KCLLS.CLBH like '#39'%'#39' '
      '      and CLZL.YWPM like '#39'%%'#39' '
      '      and CLZL.YWPM like '#39'%%'#39' '
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39' '
      '      and KCLLS.CostID like '#39'%'#39' '
      '      and KCLLS.LLNO like '#39'%'#39' '
      '      and KCLL.YN='#39'5'#39' '
      '      and KCCK.GSBH='#39'VA12'#39
      '      and KCLLS.SCBH like '#39'%'#39' '
      #9'  and KCLLS.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39')'
      #9'  and 1=2'
      '')
    Left = 496
    Top = 192
    object Query2GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query2CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2SOCHUNGTU: TStringField
      FieldName = 'SOCHUNGTU'
      FixedChar = True
      Size = 11
    end
    object Query2CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query2Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query2SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query2CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query2CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query2USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query2USACC: TFloatField
      FieldName = 'USACC'
    end
    object Query2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query2Qty_X: TCurrencyField
      FieldName = 'Qty_X'
    end
    object Query2VNPrice_X: TCurrencyField
      FieldName = 'VNPrice_X'
      DisplayFormat = '#,##0'
    end
    object Query2VNACC_X: TCurrencyField
      FieldName = 'VNACC_X'
      DisplayFormat = '#,##0'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 528
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT SUM (QTY) AS QTY,SUM (USACC) AS USACC,SUM (VNACC) AS VNAC' +
        'C,SUM (Qty_X) AS Qty_X,SUM (VNACC_X) AS VNACC_X'
      
        'FROM (select kcrk.GSBH,kcrk.CKBH,KCRK.HGLB,KCRKs.CNO,KCRKS.CLBH,' +
        'CLZL.YWPM,CLZL.DWBH,KCRK.RKNO as SOCHUNGTU,KCRK.CFMDATE,ZSZL.ZSY' +
        'WJC,'
      
        'case when KCRK.HGLB in ('#39'NK'#39','#39'TC'#39','#39'KD'#39') then KCPK.Declaretion  w' +
        'hen KCRK.HGLB='#39'HD'#39' then KCRK.DOCNO end as Declaretion,'#39' '#39' as SCB' +
        'H,KCZLS.CWBH,KCRKS.CostID,'
      
        #9#9'    KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VN' +
        'ACC+isnull(KCRKS.ExchACC,0) as VNACC,'#39' '#39' as Qty_X,'#39' '#39' as VNPrice' +
        '_X, '#39' '#39' as VNACC_X'
      
        'from (select * from KCRKS union all select * from KCRKS_2014) KC' +
        'RKS '
      
        'left join (select * from KCRK union all select * from KCRK_2014)' +
        ' KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      
        'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCRK.CKBH'
      'left join KCPK on KCPK.PKNO=KCRK.RKNO'
      
        'where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between'
      '      '#39'2022/04/01'#39' and '#39'2022/04/30'#39
      '      and KCZLS.CWBH like '#39'152%'#39
      ' and KCCK.GSBH='#39'VA12'#39
      'AND KCRK.YN='#39'5'#39
      '      and KCRKS.CLBH like '#39'A010009132%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      'and KCRK.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39') '
      'union all'
      
        'select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.' +
        'YWPM,CLZL.DWBH,KCLLS.LLNO as SOCHUNGTU,KCLL.CFMDate,'#39' '#39' as ZSYWJ' +
        'C,'#39' '#39' as Declaretion,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID,'
      
        #9'      '#39' '#39' as Qty,'#39' '#39' as USPRice, '#39' '#39' as USACC,'#39' '#39' as VNPrice, '#39 +
        ' '#39' as VNACC, isnull(KCLLS.Qty,0)  as Qty_X, isnull(KCLLS.VNPrice' +
        '_HG,0)  as VNPrice_X, KCLLS.VNACC_HG as VNACC_X'
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS'
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '      '#39'2022/04/01'#39' and '#39'2022/04/30'#39
      '      and KCLLS.CLBH like '#39'A010009132%'#39
      '      and CLZL.YWPM like '#39'%%'#39'  '
      '      and CLZL.YWPM like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCZLS.CWBH like '#39'152%'#39
      ' and KCCK.GSBH='#39'VA12'#39
      'and KCLLS.HGLB in ('#39'NK'#39','#39'TC'#39','#39'HD'#39','#39'KD'#39') '
      ') KCLL --order by 1,2,5,3,12 ')
    Left = 408
    Top = 192
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1Qty_X: TCurrencyField
      FieldName = 'Qty_X'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNACC_X: TCurrencyField
      FieldName = 'VNACC_X'
      DisplayFormat = '##,#0'
    end
  end
end
