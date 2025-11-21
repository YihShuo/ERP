object Supplier_KPI: TSupplier_KPI
  Left = 331
  Top = 236
  Width = 1599
  Height = 675
  Caption = 'Supplier_KPI'
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
  object PC1: TPageControl
    Left = 0
    Top = 49
    Width = 1583
    Height = 587
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TS1: TTabSheet
      Caption = 'Supplier Trace'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1575
        Height = 556
        Align = alClient
        DataSource = DS_Supplier
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
            FieldName = 'SupplierID'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
            Width = 200
          end
          item
            Color = cl3DLight
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Q1'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 120
          end
          item
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Q2'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 120
          end
          item
            Color = cl3DLight
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Q3'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 120
          end
          item
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Q4'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Top Supplier'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1575
        Height = 556
        Align = alClient
        DataSource = DS_topten
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
            FieldName = 'RN'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SupplierID'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footer.Value = 'Total:'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'TermPayment'
            Footers = <>
            Title.Caption = 'Term of Payment (Day)'
            Width = 150
          end
          item
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 120
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Rate'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SuppType'
            Footers = <>
            Width = 150
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Compare'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1575
        Height = 556
        Align = alClient
        DataSource = DS_Compare
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RN'
            Footers = <>
            Title.Caption = 'STT|'#25490#21517
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'SupplierID'
            Footers = <>
            Title.Caption = 'SupplierID|'#24288#21830#32232#34399
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
            Title.Caption = 'SupplierName|'#24288#21830#21517#31281
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'TermPayment'
            Footers = <>
            Title.Caption = 'TermPayment|'#20184#27454#26781#20214
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SupType'
            Footers = <>
            Title.Caption = 'SupType|'#20844#21496#39006#22411
            Width = 60
          end
          item
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Last_VNACC'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Last Year|VNACC|'#36914#36008#28136#38989
            Width = 120
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Last_Rate'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Last Year|Rate|'#36914#36008#27604#29575
          end
          item
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'This Year|VNACC|'#36914#36008#28136#38989
            Width = 120
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Rate'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'This Year|Rate|'#36914#36008#27604#29575
          end
          item
            Color = 12713983
            DisplayFormat = '##,#0'
            EditButtons = <>
            FieldName = 'Diff'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Diff|'#20841#26399#36914#36008#37329#38989#24046#30064
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MatType'
            Footers = <>
            Title.Caption = 'MatType|'#36914#36008#21697#38917#20043#24615#36074#33287#29992#36884
            Width = 150
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Entry Detail'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1575
        Height = 556
        Align = alClient
        DataSource = DS_Detail
        Flat = False
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 7
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Years'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Months'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Title.Caption = #24288#21029'|GSBH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #20837#24235#32232#34399'|RKNO'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SupplierID'
            Footers = <>
            Title.Caption = #24288#21830#32232#34399'|SupplierID'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'SupplierName'
            Footers = <>
            Title.Caption = #24288#21830'|SupplierName'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'ZSNO'
            Footers = <>
            Title.Caption = #25505#36092#21934#34399'|PO NO'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Title.Caption = #30332#31080'|INVOICE/VATNO'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'DECLARATION'
            Footers = <>
            Title.Caption = #22577#38364#21934'|TOKHAI'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKDATE'
            Footers = <>
            Title.Caption = #20837#24235#26085#26399'|RKDATE'
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #25505#36092#30906#35469'|CFMDATE'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|Mat No'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'MatName'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|Material Name'
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
            FieldName = 'CWBH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.DisplayFormat = '##,#0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'USPRICE'
            Footer.DisplayFormat = '##,#0.0000'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footer.DisplayFormat = '##,#0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #32654#37329#37329#38989'|USACC'
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21295#29575'|CWHL'
          end
          item
            EditButtons = <>
            FieldName = 'VNPRICE'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.DisplayFormat = '##,#0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #36234#30462#37329#38989'|VNACC'
          end
          item
            EditButtons = <>
            FieldName = 'EXCHACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKSB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'COSTID'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = #28023#38364'|HaiQuan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'HQName'
            Footers = <>
            Title.Caption = #28023#38364#21517#31281'|HQName'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'FKBH'
            Footers = <>
            Title.Caption = #20184#27454#32232#34399'|FKBH'
            Width = 100
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1583
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label14: TLabel
      Left = 321
      Top = 20
      Width = 66
      Height = 16
      Caption = 'SupplierID:'
    end
    object Label15: TLabel
      Left = 14
      Top = 20
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label16: TLabel
      Left = 119
      Top = 20
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label17: TLabel
      Left = 1510
      Top = 91
      Width = 84
      Height = 16
      Caption = '[18]=[19]-[17]='
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label1: TLabel
      Left = 235
      Top = 20
      Width = 25
      Height = 16
      Caption = 'Top'
    end
    object Edt_SuppName: TEdit
      Left = 396
      Top = 17
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
      TabOrder = 0
    end
    object BT_Query: TButton
      Left = 658
      Top = 7
      Width = 80
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = BT_QueryClick
    end
    object BT_Excel: TButton
      Left = 742
      Top = 7
      Width = 80
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 2
      OnClick = BT_ExcelClick
    end
    object cbx_Month: TComboBox
      Left = 160
      Top = 17
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      Color = clMoneyGreen
      DropDownCount = 12
      ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
      ItemHeight = 16
      TabOrder = 3
      Text = 'ALL'
      OnChange = cbx_TopChange
      Items.Strings = (
        '01-03'
        '04-06'
        '07-09'
        '10-12'
        'ALL')
    end
    object btn_Monthly: TButton
      Left = 830
      Top = 7
      Width = 80
      Height = 33
      Caption = 'Monthly'
      TabOrder = 4
      OnClick = btn_MonthlyClick
    end
    object cbx_Year: TComboBox
      Left = 51
      Top = 17
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      Color = clMoneyGreen
      ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
      ItemHeight = 16
      TabOrder = 5
      Text = '2017'
      OnChange = cbx_TopChange
    end
    object cbx_Top: TComboBox
      Left = 263
      Top = 17
      Width = 42
      Height = 24
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 6
      Text = '10'
      OnChange = cbx_TopChange
      Items.Strings = (
        '10'
        '20')
    end
    object btn_Data: TButton
      Left = 914
      Top = 7
      Width = 121
      Height = 33
      Caption = 'Get A Factory Data'
      TabOrder = 7
      Visible = False
      OnClick = btn_DataClick
    end
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 60
    Top = 184
  end
  object Qry_Supplier: TQuery
    AfterOpen = Qry_SupplierAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SupplierID, SupplierName'
      '       ,sum(case when MONTHS='#39'01-03'#39' then VNACC end) '#39'Q1'#39
      '       ,sum(case when MONTHS='#39'04-06'#39' then VNACC end) '#39'Q2'#39
      #9'   ,sum(case when MONTHS='#39'07-09'#39' then VNACC end) '#39'Q3'#39
      #9'   ,sum(case when MONTHS='#39'10-12'#39' then VNACC end) '#39'Q4'#39
      'from KPI_Supplier'
      'where Years='#39'2022'#39
      'group by SupplierID, SupplierName')
    Left = 124
    Top = 184
    object Qry_SupplierSupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 15
    end
    object Qry_SupplierSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 200
    end
    object Qry_SupplierQ1: TFloatField
      FieldName = 'Q1'
    end
    object Qry_SupplierQ2: TFloatField
      FieldName = 'Q2'
    end
    object Qry_SupplierQ3: TFloatField
      FieldName = 'Q3'
    end
    object Qry_SupplierQ4: TFloatField
      FieldName = 'Q4'
    end
  end
  object DS_Supplier: TDataSource
    DataSet = Qry_Supplier
    Left = 124
    Top = 224
  end
  object Qry_Monthly: TQuery
    DatabaseName = 'DB'
    Left = 92
    Top = 184
  end
  object Qry_topten: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select RN,YEARS,SupplierID,SupplierName,VNACC,isnull(Style,'#39#39')+i' +
        'snull(Style_Chinese,'#39#39') SuppType'
      
        '      ,SaleContract.TermPayment,convert(float,VNACC)/convert(flo' +
        'at,SUM(VNACC) OVER (PARTITION BY Years))*100 Rate'
      'from(  '
      '     select *  '
      '     from(  '
      
        '          select ROW_NUMBER() over (ORDER BY VNACC desc)  RN, * ' +
        ' '
      '          from( '
      
        '               select Years,SupplierID,SupplierName,sum(VNACC) V' +
        'NACC, Max(MatType) MatType  '
      '               from KPI_Supplier  '
      '               where years='#39'2022'#39'  '
      '               group by Years,SupplierID,SupplierName '
      '              )Supp  '
      '         )Supp  '
      '     where RN<=10  '
      '     union all  '
      
        '     select '#39'11'#39'RN, Years,'#39'Other'#39' SupplierID,'#39'Other'#39' SupplierNam' +
        'e,sum(VNACC) VNACC, '#39' '#39' MatType  '
      '     from(  '
      
        '          select ROW_NUMBER() over (ORDER BY VNACC desc)  RN, * ' +
        ' '
      '          from(  '
      
        '               select Years,SupplierID,SupplierName,sum(VNACC) V' +
        'NACC  '
      '               from KPI_Supplier  '
      '               where years='#39'2022'#39'   '
      '               group by Years,SupplierID,SupplierName'
      '              )Supp  '
      '         )Supp  '
      '     where RN>10  '
      '     group by Years'
      '   )Supp  '
      'left join SaleContract on SaleContract.ZSBH=Supp.SupplierID'
      'left join zszl on zszl.zsdh=Supp.SupplierID'
      'order by RN  ')
    Left = 156
    Top = 184
    object Qry_toptenRN: TFloatField
      FieldName = 'RN'
    end
    object Qry_toptenSupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 15
    end
    object Qry_toptenSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 200
    end
    object Qry_toptenTermPayment: TStringField
      FieldName = 'TermPayment'
      FixedChar = True
      Size = 150
    end
    object Qry_toptenVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Qry_toptenRate: TFloatField
      FieldName = 'Rate'
    end
    object Qry_toptenSuppType: TStringField
      FieldName = 'SuppType'
      FixedChar = True
      Size = 70
    end
  end
  object DS_topten: TDataSource
    DataSet = Qry_topten
    Left = 156
    Top = 224
  end
  object Qry_Compare: TQuery
    AfterOpen = Qry_CompareAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'if OBJECT_id('#39'tempdb..#Top10Supp'#39') is not null  '
      'begin drop table #Top10Supp end  '
      'select * into #Top10Supp '
      'from(  '
      
        '     select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  RN, *' +
        '  '
      '     from(  '
      '          select Years,SupplierID,SupplierName,sum(VNACC) VNACC '
      '          from KPI_Supplier  '
      '          where years='#39'2022'#39'  '
      '          group by Years,SupplierID,SupplierName  '
      '         )Supp1'
      #9'--================='
      
        #9'left join (select Years LastYear,SupplierID Last_SupplierID,Sup' +
        'plierName Last_SupplierName,sum(VNACC) Last_VNACC '
      '               from KPI_Supplier  '
      '               where years='#39'2021'#39'  '
      
        '               group by Years,SupplierID,SupplierName )Supp2 on ' +
        'Supp2.Last_SupplierID=Supp1.SupplierID'
      #9'--================='
      '    )Supp10  '
      'where RN<=10'
      '--======================================================='
      'if OBJECT_id('#39'tempdb..#Top11Supp'#39') is not null  '
      'begin drop table #Top11Supp end  '
      'select* into #Top11Supp'
      'from('
      
        '     select '#39'11'#39' RN, Years,'#39'Other'#39' SupplierID,'#39'Other'#39' SupplierNa' +
        'me,sum(VNACC) VNACC '
      '     from(  '
      
        '          select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  ' +
        'RN, *  '
      '          from(  '
      
        '               select Years,SupplierID,SupplierName,sum(VNACC) V' +
        'NACC '
      '               from KPI_Supplier  '
      '               where years='#39'2022'#39'  '
      '               group by Years,SupplierID,SupplierName  '
      '              )Supp1'
      '         )Supp  '
      '    where RN>10'
      '    group by Years) Supp11'
      
        'left join (select Years LastYear,'#39'Other'#39' Last_SupplierID,'#39'Other'#39 +
        ' Last_SupplierName,sum(VNACC) Last_VNACC '
      '           from KPI_Supplier  '
      '           where years='#39'2021'#39'  '
      
        #9#9#9#9'    and not exists(select 1 from #Top10Supp TopSupp where La' +
        'st_SupplierID=KPI_Supplier.SupplierID and RN<=10)'
      
        '           group by Years )Supp2 on Supp2.Last_SupplierID=Supp11' +
        '.SupplierID'
      
        '--==============================================================' +
        '==='
      
        'select RN,SupplierID,SupplierName,SaleContract.TermPayment,'#39#20844#21496#39' ' +
        'SupType'
      
        '       ,Last_VNACC,convert(float,Last_VNACC)/convert(float,SUM(L' +
        'ast_VNACC) OVER (PARTITION BY LastYear))*100 Last_Rate'
      
        '       ,VNACC,convert(float,VNACC)/convert(float,SUM(VNACC) OVER' +
        ' (PARTITION BY Years))*100 Rate'
      #9'     ,Last_VNACC-VNACC Diff'
      
        '       ,isnull(zszl.Style,'#39#39')+isnull(zszl.Style_Chinese,'#39#39') MatT' +
        'ype'
      'from('
      '     select* from #Top10Supp'
      '     union all '
      '     select* from #Top11Supp)Supp'
      'left join SaleContract on SaleContract.ZSBH=Supp.SupplierID '
      'left join zszl on zszl.zsdh=Supp.SupplierID')
    Left = 189
    Top = 184
    object Qry_CompareRN: TFloatField
      FieldName = 'RN'
    end
    object Qry_CompareSupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 15
    end
    object Qry_CompareSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 200
    end
    object Qry_CompareTermPayment: TStringField
      FieldName = 'TermPayment'
      FixedChar = True
      Size = 150
    end
    object Qry_CompareSupType: TStringField
      FieldName = 'SupType'
      FixedChar = True
      Size = 4
    end
    object Qry_CompareLast_VNACC: TFloatField
      FieldName = 'Last_VNACC'
      DisplayFormat = '##,#0'
    end
    object Qry_CompareLast_Rate: TFloatField
      FieldName = 'Last_Rate'
    end
    object Qry_CompareVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Qry_CompareRate: TFloatField
      FieldName = 'Rate'
    end
    object Qry_CompareDiff: TFloatField
      FieldName = 'Diff'
      DisplayFormat = '##,#0'
    end
    object Qry_CompareMatType: TStringField
      FieldName = 'MatType'
      FixedChar = True
      Size = 70
    end
  end
  object DS_Compare: TDataSource
    DataSet = Qry_Compare
    Left = 188
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.*'
    Left = 189
    Top = 146
  end
  object Qry_Detail: TQuery
    BeforeOpen = Qry_DetailBeforeOpen
    AfterOpen = Qry_DetailAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select* '
      'from AFactory_EntryDetail '
      'where Years='#39'2023'#39' and Months='#39'01-03'#39)
    Left = 221
    Top = 185
    object Qry_DetailYears: TStringField
      FieldName = 'Years'
      FixedChar = True
      Size = 4
    end
    object Qry_DetailMonths: TStringField
      FieldName = 'Months'
      FixedChar = True
      Size = 5
    end
    object Qry_DetailGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DetailCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DetailRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 12
    end
    object Qry_DetailSuppID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 6
    end
    object Qry_DetailSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 100
    end
    object Qry_DetailZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Qry_DetailDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object Qry_DetailDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object Qry_DetailRKDATE: TDateTimeField
      FieldName = 'RKDATE'
    end
    object Qry_DetailCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Qry_DetailCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_DetailMatName: TStringField
      FieldName = 'MatName'
      FixedChar = True
      Size = 200
    end
    object Qry_DetailDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_DetailCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Qry_DetailPaQty: TFloatField
      FieldName = 'PaQty'
    end
    object Qry_DetailQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Qry_DetailUSPRICE: TFloatField
      FieldName = 'USPRICE'
      DisplayFormat = '##,#0.0000'
    end
    object Qry_DetailUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Qry_DetailCWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object Qry_DetailVNPRICE: TCurrencyField
      FieldName = 'VNPRICE'
      DisplayFormat = '##,#0'
    end
    object Qry_DetailVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Qry_DetailEXCHACC: TFloatField
      FieldName = 'EXCHACC'
      DisplayFormat = '##,#0'
    end
    object Qry_DetailCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Qry_DetailRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object Qry_DetailCOSTID: TStringField
      FieldName = 'COSTID'
      FixedChar = True
      Size = 10
    end
    object Qry_DetailCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Qry_DetailHQName: TStringField
      FieldName = 'HQName'
      FixedChar = True
      Size = 200
    end
    object Qry_DetailUnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Qry_DetailRateC: TFloatField
      FieldName = 'RateC'
    end
    object Qry_DetailHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Qry_DetailFKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Detail: TDataSource
    DataSet = Qry_Detail
    Left = 221
    Top = 224
  end
end
