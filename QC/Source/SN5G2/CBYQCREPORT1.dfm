object CBYQCReport: TCBYQCReport
  Left = 360
  Top = 303
  Width = 1305
  Height = 675
  Caption = 'CBYQC_Report'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1297
    Height = 644
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Defect Category Statistics'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 3
          Top = 8
          Width = 35
          Height = 16
          Caption = 'QC ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 193
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object ED_QCID: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS1
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
        FooterRowCount = 1
        ParentFont = False
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
            FieldName = 'DefectCategory'
            Footers = <>
            Title.Caption = 'Defect Category'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'Defectquantity'
            Footer.FieldName = 'Defectquantity'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Defec Quantity'
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Width = 200
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Defect Count Daily'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 35
          Height = 16
          Caption = 'QC ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 193
          Top = 8
          Width = 51
          Height = 16
          Caption = 'QC Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button3: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit1: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP3: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP4: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS2
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
        FooterRowCount = 1
        ParentFont = False
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
            FieldName = 'QCDate'
            Footers = <>
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'FirstPASS'
            Footer.FieldName = 'FirstPASS'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FirstInspection'
            Footer.FieldName = 'FirstInspection'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'NGTIME'
            Footer.FieldName = 'NGTIME'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NonFirstPass'
            Footer.FieldName = 'NonFirstPass'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'TotalInspections'
            Footer.FieldName = 'TotalInspections'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'FTT'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Uninspected Order ID'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1289
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 3
          Top = 8
          Width = 35
          Height = 16
          Caption = 'QC ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 161
          Top = 8
          Width = 95
          Height = 16
          Caption = 'SHIPPING Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 353
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 520
          Top = 5
          Width = 79
          Height = 37
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 637
          Top = 6
          Width = 77
          Height = 36
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Edit2: TEdit
          Left = 48
          Top = 4
          Width = 106
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DTP5: TDateTimePicker
          Left = 257
          Top = 4
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 3
        end
        object DTP6: TDateTimePicker
          Left = 367
          Top = 4
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 4
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 57
        Width = 1289
        Height = 552
        Align = alClient
        DataSource = DS3
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
        FooterRowCount = 1
        ParentFont = False
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
            FieldName = 'Uninspected_Order_ID'
            Footer.FieldName = 'Uninspected_Order_ID'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 170
          end
          item
            EditButtons = <>
            FieldName = 'Shipping_Date'
            Footers = <>
          end>
      end
    end
  end
  object QCYBQC: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select '#39'Non Pass'#39' as DefectCategory,count(*) as Defectquantity,'#39 +
        #39' as YWSM,'#39#39' as ZWSM from WOPR_MA'
      'where Result = '#39'F'#39' and YYBH is not null'
      
        'and CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023' +
        '/05/29'#39
      'and WOPR_MA.GSBH = '#39'CDC'#39
      'union'
      
        'select '#39'Defect'#39'+WOPR_MA.YYBH as DefectCategory,count(*) as Defec' +
        'tquantity,QCBLYY.YWSM,QCBLYY.ZWSM from WOPR_MA'
      
        'left join QCBLYY on QCBLYY.YYBH = WOPR_MA.YYBH and QCBLYY.GSBH =' +
        ' '#39'CDC'#39
      'where Result = '#39'F'#39' and WOPR_MA.yybh is not null'
      'and WOPR_MA.GSBH = '#39'CDC'#39
      
        'AND CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023' +
        '/05/29'#39
      'GROUP BY WOPR_MA.YYBH,QCBLYY.YWSM,QCBLYY.ZWSM ')
    Left = 104
    Top = 328
    object QCYBQCDefectCategory: TStringField
      FieldName = 'DefectCategory'
      FixedChar = True
      Size = 9
    end
    object QCYBQCDefectquantity: TIntegerField
      FieldName = 'Defectquantity'
    end
    object QCYBQCYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object QCYBQCZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = QCYBQC
    Left = 104
    Top = 264
  end
  object DS2: TDataSource
    DataSet = QCBYQC1
    Left = 184
    Top = 264
  end
  object QCBYQC1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ' '
      'select SCDate as QCDate,'
      
        '(select count(*) from WOPR_MA where YYBH is not null and Result ' +
        '= '#39'P'#39' and GSBH = '#39'CDC'#39
      
        'and SCBH not in (select SCBH from WOPR_MA where Result = '#39'F'#39') an' +
        'd CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023/0' +
        '5/29'#39') as FirstPASS,'
      ''
      
        '(select count(distinct SCBH) from WOPR_MA where YYBH is not null' +
        ' and GSBH = '#39'CDC'#39' and CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'202' +
        '3/05/22'#39' AND '#39'2023/05/29'#39
      ') as FirstInspection,'
      ''
      
        '(select count(*) from WOPR_MA where YYBH is not null and Result ' +
        '= '#39'F'#39' and GSBH = '#39'CDC'#39' and CONVERT(VARCHAR, SCDate, 111) BETWEEN' +
        ' '#39'2023/05/22'#39' AND '#39'2023/05/29'#39
      ') as NGTIME,'
      ''
      
        '(select count(*) from WOPR_MA where YYBH is not null and Result ' +
        '= '#39'P'#39' and GSBH = '#39'CDC'#39
      
        'and SCBH in (select SCBH from WOPR_MA where Result = '#39'F'#39') and CO' +
        'NVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023/05/29' +
        #39
      ') as NonFirstPass,'
      ''
      
        '(select count(*) from WOPR_MA where YYBH is not null and GSBH = ' +
        #39'CDC'#39' and CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND' +
        ' '#39'2023/05/29'#39
      ') as TotalInspections,'
      
        'CONVERT(varchar(10),round(100*(select count(*) from WOPR_MA wher' +
        'e YYBH is not null and Result = '#39'P'#39' and GSBH = '#39'CDC'#39
      
        'and SCBH not in (select SCBH from WOPR_MA where Result = '#39'F'#39') an' +
        'd CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023/0' +
        '5/29'#39') /'
      
        '(select count(distinct SCBH) from WOPR_MA where YYBH is not null' +
        ' and GSBH = '#39'CDC'#39' and CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'202' +
        '3/05/22'#39' AND '#39'2023/05/29'#39
      '),2))+'#39'%'#39' as FTT'
      ''
      'from WOPR_MA where YYBH is not null'
      
        'and CONVERT(VARCHAR, SCDate, 111) BETWEEN '#39'2023/05/22'#39' AND '#39'2023' +
        '/05/29'#39
      'and GSBH = '#39'CDC'#39
      'group by SCDate')
    Left = 184
    Top = 320
    object QCBYQC1QCDate: TDateTimeField
      FieldName = 'QCDate'
    end
    object QCBYQC1FirstPASS: TIntegerField
      FieldName = 'FirstPASS'
    end
    object QCBYQC1FirstInspection: TIntegerField
      FieldName = 'FirstInspection'
    end
    object QCBYQC1NGTIME: TIntegerField
      FieldName = 'NGTIME'
    end
    object QCBYQC1NonFirstPass: TIntegerField
      FieldName = 'NonFirstPass'
    end
    object QCBYQC1TotalInspections: TIntegerField
      FieldName = 'TotalInspections'
    end
    object QCBYQC1FTT: TStringField
      FieldName = 'FTT'
      FixedChar = True
      Size = 11
    end
  end
  object DS3: TDataSource
    DataSet = QCBYORDER
    Left = 272
    Top = 264
  end
  object QCBYORDER: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select workOrderId as Uninspected_Order_ID,initialEstimatedShipD' +
        'ate as Shipping_Date from CBY_Orders'
      'where initialEstimatedShipDate = '#39'2023/05/30'#39
      'and workOrderId not in '
      '(select SCBH from WOPR_MA'
      'where Result = '#39'P'#39
      'and GSBH = '#39'CDC'#39
      ')')
    Left = 272
    Top = 320
    object QCBYORDERUninspected_Order_ID: TStringField
      FieldName = 'Uninspected_Order_ID'
      FixedChar = True
      Size = 15
    end
    object QCBYORDERShipping_Date: TDateTimeField
      FieldName = 'Shipping_Date'
    end
  end
end
