object AccMonthStock: TAccMonthStock
  Left = 324
  Top = 267
  Width = 1344
  Height = 691
  Caption = 'AccMonthStock'
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
    Width = 1336
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
      Width = 235
      Height = 24
      Caption = 'Month Material Stock Report'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 50
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 354
      Top = 89
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 28
      Top = 87
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 143
      Top = 86
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 184
      Top = 50
      Width = 44
      Height = 16
      Caption = 'CWBH:'
    end
    object Label16: TLabel
      Left = 477
      Top = 89
      Width = 31
      Height = 16
      Caption = 'KHO:'
    end
    object Label7: TLabel
      Left = 237
      Top = 89
      Width = 48
      Height = 16
      Caption = 'Factory:'
    end
    object PorgressLabel: TLabel
      Left = 736
      Top = 48
      Width = 102
      Height = 20
      Caption = 'PorgressLabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 296
      Top = 50
      Width = 60
      Height = 16
      Caption = 'Exchange'
    end
    object Edit1: TEdit
      Left = 64
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 641
      Top = 40
      Width = 89
      Height = 33
      Caption = 'Monthly'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 396
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
      Left = 739
      Top = 80
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 64
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 12
      TabOrder = 4
      Text = '2018'
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
        '2020')
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
      TabOrder = 5
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
      Left = 232
      Top = 48
      Width = 57
      Height = 24
      TabOrder = 6
      Text = '152'
    end
    object CBX6: TComboBox
      Left = 513
      Top = 85
      Width = 104
      Height = 24
      ItemHeight = 16
      ItemIndex = 7
      TabOrder = 7
      Text = 'NK+HD+KD'
      Items.Strings = (
        'ALL'
        'NK'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK+HD+KD')
    end
    object CBX4: TComboBox
      Left = 287
      Top = 85
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 8
    end
    object Button3: TButton
      Left = 643
      Top = 80
      Width = 86
      Height = 33
      Caption = 'Query'
      TabOrder = 9
      OnClick = Button3Click
    end
    object ExchangeEdit: TEdit
      Left = 360
      Top = 48
      Width = 121
      Height = 24
      TabOrder = 10
      Text = '23300'
    end
    object CheckBox1: TCheckBox
      Left = 485
      Top = 51
      Width = 60
      Height = 17
      Caption = 'Detail'
      TabOrder = 11
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1336
    Height = 539
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Stock 6T'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1328
        Height = 508
        Align = alClient
        DataSource = Stock6TDS
        Flat = False
        FooterColor = clWindow
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
            FieldName = 'KCYEAR'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footers = <>
            Visible = False
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc01T'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc02T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc03T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc04T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc05T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemAcc06T'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Stock Class'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1328
        Height = 508
        Align = alClient
        DataSource = StockClassQryDS
        Flat = False
        FooterColor = clWindow
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
            FieldName = 'KCYEAR'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'class0'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class2'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class3'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class4'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class5'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class6'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class7'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class8'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class9'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class10'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class11'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class12'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Class13'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Stock ABD'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1328
        Height = 508
        Align = alClient
        DataSource = StockABDDS
        Flat = False
        FooterColor = clWindow
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
            FieldName = 'KCYEAR'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'LB'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'classABD'
            Footers = <>
            Width = 78
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Calcuation'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1328
        Height = 508
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
            FieldName = 'KCYEAR'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'RemACC'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty01T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty02T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty03T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty04T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty05T'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RemQty06T'
            Footers = <>
          end>
      end
    end
  end
  object CalQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWCLZL.*,KCZLS.CWBH '
      'from CWCLZL_HG_Mon CWCLZL '
      
        'Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.' +
        'CKBH '
      'left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      'where CWCLZL.KCYEAR='#39'2018'#39' and CWCLZL.KCMONTH='#39'05'#39'  '
      '      and KCZLS.CWBH like '#39'152%'#39
      '      and CWCLZL.CLBH like '#39'D080017510%'#39
      'and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        ' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in' +
        ' (select DFL from bgszl where GSDH='#39'VA12'#39'))')
    UpdateObject = UpdateSQL1
    Left = 552
    Top = 163
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
    object CalQueryCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object CalQueryRemACC: TFloatField
      DisplayWidth = 10
      FieldName = 'RemACC'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty01: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty01'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty02: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty02'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty03: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty03'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty04: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty04'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty05: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty05'
      DisplayFormat = '0.00'
    end
    object CalQueryRemQty06: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RemQty06'
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
    object CalQueryUSERID: TStringField
      DisplayWidth = 5
      FieldName = 'USERID'
      FixedChar = True
      Size = 5
    end
    object CalQueryUSERDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object CalQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object CalDS: TDataSource
    DataSet = CalQuery
    Left = 552
    Top = 136
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 163
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update CWCLZL_HG_Mon'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE'
      'where'
      '  KCYEAR=:OLD_KCYEAR and'
      '  KCMONTH=:OLD_KCMONTH and'
      '  CKBH=:OLD_CKBH and'
      '  HGLB=:OLD_HGLB and'
      '  CLBH=:OLD_CLBH')
    InsertSQL.Strings = (
      'Insert into CWCLZL_HG_Mon'
      
        '  (KCYEAR , KCMONTH, CKBH, CLBH, HGLB, RemACC ,RemQty01 , RemQty' +
        '02, RemQty03, RemQty04, RemQty05, RemQty06 , RemQty01T ,RemQty02' +
        'T, RemQty03T, RemQty04T, RemQty05T, RemQty06T , USERDate, USERID' +
        ', YN)'
      ' Values'
      
        '  (:KCYEAR , :KCMONTH, :CKBH, :CLBH, :HGLB, :RemACC ,:RemQty01 ,' +
        ' :RemQty02, :RemQty03, :RemQty04, :RemQty05, :RemQty06 , :RemQty' +
        '01T ,:RemQty02T, :RemQty03T, :RemQty04T, :RemQty05T, :RemQty06T ' +
        ', :USERDate, :USERID, :YN)'
      ''
      '')
    DeleteSQL.Strings = (
      'Delete from CWCLZL_HG_Mon'
      'where'
      '  KCYEAR=:OLD_KCYEAR and'
      '  KCMONTH=:OLD_KCMONTH and'
      '  CKBH=:OLD_CKBH and'
      '  HGLB=:OLD_HGLB and'
      '  CLBH=:OLD_CLBH')
    Left = 552
    Top = 194
  end
  object Stock6TQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '   select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'ALL'#39' as CKBH,'#39'ALL'#39'  as C' +
        'LBH,'#39'ALL'#39'  as HGLB,null as RemQty,null as RemACC '
      
        '           ,null  as RemQty01T,null as RemQty02T,null as RemQty0' +
        '3T,null as RemQty04T,null as RemQty05T,null as RemQty06T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty01T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc01T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty02T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc02T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty03T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc03T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty04T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc04T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty05T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc05T '
      
        '           ,sum(case when RemACC>0 then Round(RemQty06T*((RemACC' +
        '/RemQty01/1.0)),2) else 0 end)  as RemAcc06T '
      '    from CWCLZL_HG_Mon CWCLZL '
      '    Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '    union all '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc01T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc02T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc03T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc04T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc05T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/RemQty01/1.0)),2) else 0 end  as RemAcc06T  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB '
      ' ')
    Left = 424
    Top = 163
    object Stock6TQryKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Stock6TQryCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Stock6TQryHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Stock6TQryRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemACC: TFloatField
      FieldName = 'RemACC'
    end
    object Stock6TQryRemQty01T: TCurrencyField
      FieldName = 'RemQty01T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemQty02T: TCurrencyField
      FieldName = 'RemQty02T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemQty03T: TCurrencyField
      FieldName = 'RemQty03T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemQty04T: TCurrencyField
      FieldName = 'RemQty04T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemQty05T: TCurrencyField
      FieldName = 'RemQty05T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemQty06T: TCurrencyField
      FieldName = 'RemQty06T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc01T: TFloatField
      FieldName = 'RemAcc01T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc02T: TFloatField
      FieldName = 'RemAcc02T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc03T: TFloatField
      FieldName = 'RemAcc03T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc04T: TFloatField
      FieldName = 'RemAcc04T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc05T: TFloatField
      FieldName = 'RemAcc05T'
      DisplayFormat = '0.00'
    end
    object Stock6TQryRemAcc06T: TFloatField
      FieldName = 'RemAcc06T'
      DisplayFormat = '0.00'
    end
  end
  object Stock6TDS: TDataSource
    DataSet = Stock6TQry
    Left = 424
    Top = 136
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 587
    Top = 165
  end
  object StockClassQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'class0'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K02'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class1'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'F16'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class2'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,1)='#39'A'#39'  then RemAcc04T+Rem' +
        'Acc05T+RemAcc06T end) as '#39'Class3'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'P99'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class4'#39'      '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'E06'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class5'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'G03'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class6'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'G07'#39'  then RemAcc04T+R' +
        'emAcc05T+RemAcc06T end) as '#39'Class7'#39' '
      
        '      ,sum(case when left(CWCLZL.CLBH,1)='#39'M'#39'  then RemAcc04T+Rem' +
        'Acc05T+RemAcc06T end) as '#39'Class8'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'E01'#39' or left(CWCLZL.CL' +
        'BH,3)='#39'E02'#39'   then RemAcc04T+RemAcc05T+RemAcc06T end) as '#39'Class9' +
        #39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K01'#39'   then RemAcc04T+' +
        'RemAcc05T+RemAcc06T end) as '#39'Class10'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'K03'#39'   then RemAcc04T+' +
        'RemAcc05T+RemAcc06T end) as '#39'Class11'#39
      
        '      ,sum(case when left(CWCLZL.CLBH,3)='#39'J02'#39' or left(CWCLZL.CL' +
        'BH,3)='#39'J03'#39'   then RemAcc04T+RemAcc05T+RemAcc06T end) as '#39'Class1' +
        '2'#39
      
        '      ,SUM(case when left(CWCLZL.CLBH,3) not in ('#39'K02'#39','#39'F16'#39','#39'P9' +
        '9'#39','#39'E06'#39','#39'G03'#39','#39'G07'#39','#39'E01'#39','#39'E02'#39','#39'K01'#39','#39'K03'#39','#39'J02'#39','#39'J03'#39') and le' +
        'ft(CWCLZL.CLBH,1) not in ('#39'A'#39','#39'M'#39') then RemAcc04T+RemAcc05T+RemA' +
        'cc06T end) as '#39'Class13'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '      and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      ')  CWCLZL'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH')
    Left = 456
    Top = 163
    object StockClassQryKCYEAR: TStringField
      DisplayWidth = 6
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StockClassQryKCMONTH: TStringField
      DisplayWidth = 4
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StockClassQryclass0: TFloatField
      DisplayWidth = 11
      FieldName = 'class0'
    end
    object StockClassQryClass1: TFloatField
      DisplayWidth = 10
      FieldName = 'Class1'
    end
    object StockClassQryClass2: TFloatField
      DisplayWidth = 10
      FieldName = 'Class2'
    end
    object StockClassQryClass3: TFloatField
      DisplayWidth = 10
      FieldName = 'Class3'
    end
    object StockClassQryClass4: TFloatField
      DisplayWidth = 10
      FieldName = 'Class4'
    end
    object StockClassQryClass5: TFloatField
      DisplayWidth = 10
      FieldName = 'Class5'
    end
    object StockClassQryClass6: TFloatField
      DisplayWidth = 10
      FieldName = 'Class6'
    end
    object StockClassQryClass7: TFloatField
      DisplayWidth = 10
      FieldName = 'Class7'
    end
    object StockClassQryClass8: TFloatField
      DisplayWidth = 10
      FieldName = 'Class8'
    end
    object StockClassQryClass9: TFloatField
      DisplayWidth = 10
      FieldName = 'Class9'
    end
    object StockClassQryClass10: TFloatField
      DisplayWidth = 10
      FieldName = 'Class10'
    end
    object StockClassQryClass11: TFloatField
      DisplayWidth = 10
      FieldName = 'Class11'
    end
    object StockClassQryClass12: TFloatField
      DisplayWidth = 10
      FieldName = 'Class12'
    end
    object StockClassQryClass13: TFloatField
      DisplayWidth = 10
      FieldName = 'Class13'
    end
  end
  object StockClassQryDS: TDataSource
    DataSet = StockClassQry
    Left = 456
    Top = 136
  end
  object StockABDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '/*'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH  '
      '      ,sum(RemAcc01T+RemAcc02T) as '#39'class0'#39
      '      ,sum(RemAcc03T) as '#39'class1'#39
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'class2'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'D%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      '*/'
      ''
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'A'#39' as LB  '
      
        '      ,sum(RemAcc01T+RemAcc02T+RemAcc03T+RemAcc04T+RemAcc05T+Rem' +
        'Acc06T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH  in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      'union all'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'B'#39' as LB   '
      '      ,sum(RemAcc01T+RemAcc02T+RemAcc03T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH not in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH'
      'union all'
      'Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,'#39'D'#39' as LB   '
      '      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as '#39'classABD'#39
      'from ( '
      
        '    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,' +
        'CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC '
      
        '           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,C' +
        'WCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc01T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc02T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc03T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc04T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc05T' +
        ' '
      
        '           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWC' +
        'LZL.RemACC/CWCLZL.RemQty01/23300.0)),2) else 0 end  as RemAcc06T' +
        '  '
      '    from CWCLZL_HG_Mon CWCLZL'
      
        '    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CW' +
        'CLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH an' +
        'd CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  '
      
        '    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWC' +
        'LZL.CKBH '
      '    left join KCCK on KCCK.CKBH=CWCLZL.CKBH '
      '    where 1=1 '
      '    and KCZLS.CWBH like '#39'152%'#39
      '    and CWCLZL.CLBH like '#39'%'#39
      '    and CWCLZL.HGLB in ('#39'NK'#39','#39'HD'#39','#39'KD'#39') '
      
        '    and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL' +
        ' in (select DFL from bgszl where GSDH='#39'VA12'#39')) '
      '    '
      '    )  CWCLZL  '
      'where CWCLZL.CLBH not in ('
      '  select CLBH '
      '  from zlzls2'
      '  left join DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        '  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>' +
        #39'C'#39' and DDZL.DDLB='#39'N'#39
      '  Group by CLBH )'
      'Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH')
    Left = 492
    Top = 163
    object StockABDQryKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StockABDQryKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StockABDQryLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
    object StockABDQryclassABD: TFloatField
      FieldName = 'classABD'
    end
  end
  object StockABDDS: TDataSource
    DataSet = StockABDQry
    Left = 492
    Top = 137
  end
end
