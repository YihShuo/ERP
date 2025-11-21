object SemiMaterialMonth: TSemiMaterialMonth
  Left = 305
  Top = 268
  Width = 1125
  Height = 526
  Caption = 'SemiMaterialMonth'
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
    Top = 0
    Width = 1117
    Height = 495
    ActivePage = TS2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Monthly Material'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1109
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label6: TLabel
          Left = 128
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label5: TLabel
          Left = 231
          Top = 16
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DBBH:'
        end
        object Button3: TButton
          Left = 568
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 472
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button4Click
        end
        object CBX2: TComboBox
          Left = 56
          Top = 13
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 16
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
        object Edit3: TEdit
          Left = 304
          Top = 12
          Width = 113
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
        object Button7: TButton
          Left = 776
          Top = 8
          Width = 121
          Height = 33
          Caption = 'CalFinShoePrice'
          TabOrder = 6
          OnClick = Button7Click
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1109
        Height = 415
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
            Width = 89
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
            FieldName = 'VNACC'
            Footer.FieldName = 'VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #32317#37329#38989'|VNACC'
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1109
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 148
          Top = 17
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Label1: TLabel
          Left = 5
          Top = 16
          Width = 45
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
        object Label3: TLabel
          Left = 351
          Top = 17
          Width = 48
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Factory:'
        end
        object Edit1: TEdit
          Left = 221
          Top = 14
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 566
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP: TDateTimePicker
          Left = 53
          Top = 13
          Width = 89
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
        object Button2: TButton
          Left = 659
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button2Click
        end
        object ComboBox1: TComboBox
          Left = 403
          Top = 12
          Width = 65
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 4
        end
        object Button6: TButton
          Left = 752
          Top = 8
          Width = 121
          Height = 33
          Caption = 'NoOrderVNACC'
          TabOrder = 5
          OnClick = Button6Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1109
        Height = 415
        Align = alClient
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
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1109
        Height = 415
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
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|Pairs'
          end
          item
            EditButtons = <>
            FieldName = 'FKCQy'
            Footer.FieldName = 'FKCQy'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25104#21697#24235#23384'|FKCQy'
          end
          item
            EditButtons = <>
            FieldName = 'NoFKCQty1'
            Footer.FieldName = 'NoFKCQty1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #23578#26410#20837#24235'|NoFKCQty'
          end
          item
            EditButtons = <>
            FieldName = 'InQty'
            Footer.FieldName = 'InQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #30070#26399#20837#24235'|InQty'
          end
          item
            EditButtons = <>
            FieldName = 'VNACCMon'
            Footer.FieldName = 'VNACCMon'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#21021#26448#26009#36027#29992'|VNACCMon'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.FieldName = 'VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #30070#26399#26448#26009#36027#29992'|VNACC'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ZVNACC'
            Footer.FieldName = 'ZVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25892#25552#36027#29992'|ZVNACC'
          end
          item
            EditButtons = <>
            FieldName = 'NotInQty'
            Footer.FieldName = 'NotInQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #23578#26410#20837#24235#38617#25976'|NotInQty'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SemiVNACC'
            Footer.FieldName = 'SemiVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21322#25104#21697#36027#29992'|SemiVNACC'
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'FShoeVNACC'
            Footer.FieldName = 'FShoeVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25104#21697#38795#32317#37329#38989'|FShoeVNACC'
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'FShoe1Pair_VNACC'
            Footer.FieldName = 'FShoe1Pair_VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25104#21697#38795#25104#26412#27599#38617'|FShoe1Pair_VNACC'
            Width = 97
          end>
      end
    end
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'If object_id('#39'tempdb..#DDZL_Mon'#39') is not null'
      'begin  drop table #DDZL_Mon end'
      '  Select DDBH  into #DDZL_Mon from ('
      #9'   Select YWDD.YSBH as DDBH '
      #9'   From YWCP'
      #9'   Left join YWDD on YWDD.DDBH=YWCP.DDBH'
      
        #9'   where convert(varchar,YWCP.Indate,111) between '#39'2022/07/01'#39' ' +
        'and '#39'2022/07/31'#39
      
        #9#9#9'and IsNull(YWCP.SB,'#39#39')<>'#39#39' and Convert(varchar,YWCP.Indate,11' +
        '1) <= '#39'2022/07/31'#39' '
      
        #9#9#9'and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP where S' +
        'B='#39'3'#39' and convert(varchar,YWCP.EXEDATE,111) <='#39'2022/07/31'#39')'
      #9'  Group by YWDD.YSBH '
      #9'  Union all'
      #9'  Select KCLLS.SCBH'
      #9'  From KCLL'
      #9'  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        #9'  where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) ' +
        'between '#39'2022/07/01'#39' and  '#39'2022/07/30'#39
      #9#9#9'--and KCLL.GSBH='#39'VA12'#39
      #9'  Group by KCLLS.SCBH  '
      ') DDZL')
    Left = 422
    Top = 191
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'If object_id('#39'tempdb..#DDZL_Mon'#39') is not null '
      'Begin  drop table #DDZL_Mon end '
      '  Select DDBH  into #DDZL_Mon from ('
      #9'  Select YWDD.YSBH as DDBH '
      #9'  From YWCP'
      #9'  Left join YWDD on YWDD.DDBH=YWCP.DDBH'
      
        #9'  where convert(varchar,YWCP.Indate,111) Between '#39'2022/10/01'#39' a' +
        'nd '#39'2022/10/26'#39' '
      '        and YWDD.YSBH like '#39'Y2206-0747%'#39' '
      #9'  Group by YWDD.YSBH '
      #9'  Union all'
      #9'  Select KCLLS.SCBH'
      #9'  From KCLL'
      #9'  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        #9'  where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) ' +
        'between '#39'2022/10/01'#39' and '#39'2022/10/26'#39' '
      '        and KCLL.SCBH like '#39'Y2206-0747%'#39' '
      #9'  Group by KCLLS.SCBH  '
      ') DDZL '
      
        'Select DDZL.*,DDZL.Pairs- YWCPKC.KCQty as FKCQy,IsNull(DDZL.Pair' +
        's- IsNull(YWCPKC.KCQty,0),DDZL.Pairs) as NoFKCQty1,YWCP_Mon.InQt' +
        'y,KCLLMonth.VNACC as VNACCMon,KCLLS.VNACC,Round(YWCP_Mon.InQty*0' +
        '.0,0) as ZVNACC'
      
        '       ,DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,' +
        '0) as NotInQty'
      
        #9'     ,Round((0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.K' +
        'CQty,0),DDZL.Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(Y' +
        'WCP_Mon.InQty,0)),0) as SemiVNACC'
      
        #9'     ,0+KCLLS.VNACC+Round(YWCP_Mon.InQty*0.0,0)- Round((0+KCLLS' +
        '.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.Pairs))*' +
        '(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)),0) ' +
        'as FShoeVNACC'
      
        #9'     ,Round(( 0+KCLLS.VNACC+Round(YWCP_Mon.InQty*0.0,0)- Round(' +
        '(0+KCLLS.VNACC)/(IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),DDZL.' +
        'Pairs))*(DDZL.Pairs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty' +
        ',0)),0) )/IsNull(YWCP_Mon.InQty,0),0) as FShoe1Pair_VNACC '
      'from ('
      #9'Select DDZL.DDBH,DDZL.Pairs '
      #9'from DDZL '
      #9'where DDZL.DDBH in ('
      #9'   Select DDBH From #DDZL_Mon'
      #9') '
      ') DDZL'
      'Left join ('
      #9'Select YWDD.YSBH,Sum(YWCPMonth.Qty) as KCQty '
      #9'from YWCPMonth with (nolock)'
      #9'left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.DDBH '
      #9'left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH '
      #9'where YWCPMonth.KCYEAR= '#39'2022'#39' and YWCPMonth.KCMONTH='#39'09'#39'  '
      '        and YWDD.YSBH like '#39'Y2206-0747%'#39' '
      #9'Group by YWDD.YSBH ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH'
      'Left join ('
      #9'Select KCLLMonth.DDBH,KCLLMonth.VNACC'
      #9'from KCLLMonth with (nolock)'
      #9'left join DDZL  with (nolock) on KCLLMonth.DDBH=DDZL.DDBH '
      #9'where KCLLMonth.KCYEAR= '#39'2022'#39' and KCLLMonth.KCMONTH='#39'09'#39'  '
      '        and DDZL.DDBH like '#39'Y2206-0747%'#39' '
      '    ) KCLLMonth on KCLLMonth.DDBH=DDZL.DDBH'
      'Left join ('
      '        Select YWDD.YSBH,Sum(YWCP.Qty) as InQty  '
      #9'        from YWCP with (nolock)'
      #9'        left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH '
      
        #9#9'    where convert(varchar,YWCP.Indate,111) between '#39'2022/10/01' +
        #39' and '#39'2022/10/26'#39' '
      #9#9'    Group by YWDD.YSBH'
      ')  YWCP_Mon on YWCP_Mon.YSBH=DDZL.DDBH '
      'left join ('
      '    Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC '
      #9'  From KCLL'
      #9'  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        #9'  where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) ' +
        'between '#39'2022/10/01'#39' and '#39'2022/10/26'#39' '
      #9#9#9'and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      #9#9#9'and KCLLS.SCBH like '#39'Y2206-0747%'#39
      #9'  Group by KCLLS.SCBH'
      ')  KCLLS on KCLLS.SCBH=DDZL.DDBH'
      'where 1=1 '
      ' and DDZL.DDBH like '#39'Y2206-0747%'#39)
    Left = 496
    Top = 192
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '#,##0'
    end
    object Query2NoFKCQy: TIntegerField
      FieldName = 'FKCQy'
      DisplayFormat = '#,##0'
    end
    object Query2NoFKCQty1: TIntegerField
      FieldName = 'NoFKCQty1'
      DisplayFormat = '#,##0'
    end
    object Query2InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '#,##0'
    end
    object Query2VNACCMon: TCurrencyField
      FieldName = 'VNACCMon'
      DisplayFormat = '#,##0'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query2NotInQty: TIntegerField
      FieldName = 'NotInQty'
      DisplayFormat = '#,##0'
    end
    object Query2ZVNACC: TFloatField
      FieldName = 'ZVNACC'
      DisplayFormat = '#,##0'
    end
    object Query2SemiVNACC: TCurrencyField
      FieldName = 'SemiVNACC'
      DisplayFormat = '#,##0'
    end
    object Query2FShoeVNACC: TFloatField
      FieldName = 'FShoeVNACC'
      DisplayFormat = '#,##0'
    end
    object Query2FShoe1Pair_VNACC: TFloatField
      FieldName = 'FShoe1Pair_VNACC'
      DisplayFormat = '#,##0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CWKCLLMonth.*,DDZL.ARTICLE '
      'from CWKCLLMonth'
      'left join DDZL on DDZL.DDBH=CWKCLLMonth.DDBH')
    Left = 456
    Top = 192
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.CWKCLLMonth.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.CWKCLLMonth.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.CWKCLLMonth.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      Origin = 'DB.CWKCLLMonth.VNACC'
      DisplayFormat = '#,##0'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWKCLLMonth.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWKCLLMonth.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CWKCLLMonth.YN'
      FixedChar = True
      Size = 1
    end
  end
end
