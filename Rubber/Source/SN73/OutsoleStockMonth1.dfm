object OutsoleStockMonth: TOutsoleStockMonth
  Left = 272
  Top = 131
  Width = 928
  Height = 480
  Caption = 'OutsoleStockMonth'
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
    Width = 912
    Height = 441
    ActivePage = TS2
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Monthly'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label3: TLabel
          Left = 128
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label1: TLabel
          Left = 254
          Top = 16
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Button2: TButton
          Left = 573
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 472
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button3Click
        end
        object CBX2: TComboBox
          Left = 56
          Top = 13
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          TabOrder = 2
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
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX3: TComboBox
          Left = 176
          Top = 12
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 3
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
        object Edit1: TEdit
          Left = 303
          Top = 12
          Width = 124
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button5: TButton
          Left = 672
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button5Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 904
        Height = 361
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
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
            ReadOnly = True
            Title.Caption = #24180'|KCYEAR'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26376'|KCMONTH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38617#25976'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 96
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Stock'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 904
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 194
          Top = 18
          Width = 52
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Label4: TLabel
          Left = 23
          Top = 18
          Width = 36
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 250
          Top = 13
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 559
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP: TDateTimePicker
          Left = 63
          Top = 13
          Width = 113
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button4: TButton
          Left = 655
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button4Click
        end
        object CheckBox1: TCheckBox
          Left = 390
          Top = 18
          Width = 57
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object CheckBox2: TCheckBox
          Left = 468
          Top = 18
          Width = 57
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 5
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 904
        Height = 361
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footer.FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|Quantity'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footer.FieldName = 'LLQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30332#26009#25976#37327'|LLQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footer.FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 85
          end>
      end
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Outsole_MonthAll.DDBH,DDZL.Pairs,isnull(Outsole_Month.Qty' +
        ',0) as LastRem, isnull(RK.Qty,0) as RKQty, isnull(LL.Qty,0) as L' +
        'LQty, Outsole_MonthAll.Qty  '
      '        ,DDZL.CQDH as CKBH,DDZL.Article from (  '
      ' Select DDBH, sum(Qty) as Qty from ( '
      ' Select DDBH,Qty,'#39'1'#39' as SB  '
      '   from LIY_DD.dbo.OUTSOLE_Month OutMonth  '
      '   where OutMonth.KCYEAR='#39'2022'#39'  '
      '  '#9'and OutMonth.KCMONTH='#39'12'#39' '
      ' union all  '
      ' Select  RK.DDBH,sum(RK.Qty) as Qty,'#39'2'#39' as SB  '
      '   from LIY_DD.dbo.OUTSOLE_RK RK   '
      
        '   where Convert(varchar,RK.InDate, 111) between '#39'2023/01/01'#39' an' +
        'd '#39'2023/01/30'#39' '
      '   Group by RK.DDBH  '
      ' union all   '
      '   Select  LL.DDBH,-1*sum(LL.Qty) as Qty,'#39'3'#39' as SB  '
      '   from LIY_DD.dbo.OUTSOLE_LL LL '
      
        '   where Convert(varchar,LL.LLDate, 111) between '#39'2023/01/01'#39' an' +
        'd '#39'2023/01/30'#39' '
      
        '   Group by LL.DDBH  )  Outsole_Month  Group by DDBH )  Outsole_' +
        'MonthAll '
      ' Left join (  '
      '   Select DDBH,Qty,'#39'1'#39' as SB  '
      '   from LIY_DD.dbo.OUTSOLE_Month OutMonth  '
      '   where OutMonth.KCYEAR='#39'2022'#39'  '
      
        '  '#9'and OutMonth.KCMONTH='#39'12'#39' ) Outsole_Month on Outsole_Month.DD' +
        'BH=Outsole_MonthAll.DDBH  '
      ' Left join (  '
      '   Select  RK.DDBH,sum(RK.Qty) as Qty,'#39'2'#39' as SB  '
      '  '#9'from LIY_DD.dbo.OUTSOLE_RK RK    '
      
        '  '#9'where Convert(varchar,RK.InDate, 111) between '#39'2023/01/01'#39' an' +
        'd '#39'2023/01/30'#39
      '  '#9'Group by RK.DDBH ) RK on RK.DDBH=Outsole_MonthAll.DDBH  '
      ' Left join (  '
      '  '#9'Select  LL.DDBH,sum(LL.Qty) as Qty,'#39'3'#39' as SB  '
      '  '#9'from LIY_DD.dbo.OUTSOLE_LL LL   '
      
        '  '#9'where Convert(varchar,LL.LLDate, 111) between '#39'2023/01/01'#39' an' +
        'd '#39'2023/01/30'#39
      '  '#9'Group by LL.DDBH ) LL on LL.DDBH=Outsole_MonthAll.DDBH  '
      
        ' Left join LIY_DD.dbo.DDZL DDZL on DDZL.DDBH=Outsole_MonthAll.DD' +
        'BH  '
      ' where 1=1 and DDZL.CQDH='#39'VR3'#39
      ' and DDZL.DDBH like '#39'AURR0211-001%'#39'   '
      ' order by Outsole_MonthAll.DDBH   ')
    Left = 496
    Top = 192
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
      DisplayFormat = '#,##0.0'
    end
    object Query2LastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '#,##0.0'
    end
    object Query2RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#,##0.0'
    end
    object Query2LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '#,##0.0'
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select OutMonth.*,DDZL.ARTICLE'
      'from  LIY_DD.dbo.OUTSOLE_Month OutMonth'
      'left join LIY_DD.dbo.DDZL DDZL on OutMonth.DDBH=DDZL.DDBH'
      'where 1=1  '
      'and OutMonth.KCYEAR='#39'2022'#39' '
      'and OutMonth.KCMONTH='#39'12'#39' ')
    UpdateObject = UPDet1
    Left = 456
    Top = 192
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 160
  end
  object EXEQry: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 458
    Top = 266
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object UPDet1: TUpdateSQL
    ModifySQL.Strings = (
      'Update LIY_DD.dbo.OUTSOLE_Month'
      'set'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  DDBH= :OLD_DDBH ')
    Left = 457
    Top = 227
  end
end
