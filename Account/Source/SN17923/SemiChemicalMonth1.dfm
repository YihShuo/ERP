object SemiChemicalMonth: TSemiChemicalMonth
  Left = 294
  Top = 232
  Width = 1545
  Height = 675
  Caption = 'SemiChemicalMonth'
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
    Width = 1529
    Height = 636
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
        Width = 1521
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 27
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label6: TLabel
          Left = 152
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label5: TLabel
          Left = 4
          Top = 48
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DBBH:'
        end
        object Label8: TLabel
          Left = 216
          Top = 45
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO:'
        end
        object Label13: TLabel
          Left = 548
          Top = 14
          Width = 44
          Height = 16
          Caption = 'CWBH:'
        end
        object Label3: TLabel
          Left = 262
          Top = 13
          Width = 99
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO: VTXW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button3: TButton
          Left = 669
          Top = 36
          Width = 92
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 575
          Top = 36
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button4Click
        end
        object CBX1: TComboBox
          Left = 80
          Top = 13
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 17
          TabOrder = 2
          Text = '2023'
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
        object CBX2: TComboBox
          Left = 200
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
        object DDBHEdit1: TEdit
          Left = 80
          Top = 42
          Width = 129
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object CBX_HGLB1: TComboBox
          Left = 290
          Top = 41
          Width = 271
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 5
          TabOrder = 5
          Text = 'NK+TC+HD+KD+NK1+TC1+HD1+KD1'
          Items.Strings = (
            ''
            'NK'
            'TC'
            'HD'
            'KD'
            'NK+TC+HD+KD+NK1+TC1+HD1+KD1'
            'NK1'
            'TC1'
            'HD1'
            'KD1')
        end
        object CWBHEdit1: TEdit
          Left = 597
          Top = 11
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
          Text = '152'
        end
        object chk_PB1: TCheckBox
          Left = 402
          Top = 14
          Width = 137
          Height = 17
          Caption = 'CPNVLPB Factory'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 81
        Width = 1521
        Height = 524
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
        PopupMenu = PopupMenu2
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
            FieldName = 'CKBH'
            Footers = <>
            Width = 60
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
        Width = 1521
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 49
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Label9: TLabel
          Left = 180
          Top = 49
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO:'
        end
        object Label10: TLabel
          Left = 639
          Top = 8
          Width = 117
          Height = 16
          Caption = 'CPNVLPB/1 DOI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object CPNVLPBLabel: TLabel
          Left = 755
          Top = 7
          Width = 5
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 525
          Top = 8
          Width = 44
          Height = 16
          Caption = 'CWBH:'
        end
        object Label14: TLabel
          Left = 25
          Top = 12
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label16: TLabel
          Left = 151
          Top = 12
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label1: TLabel
          Left = 262
          Top = 10
          Width = 99
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO: VTXW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DDBHEdit2: TEdit
          Left = 74
          Top = 45
          Width = 95
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 571
          Top = 37
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 663
          Top = 37
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 805
          Top = -1
          Width = 121
          Height = 33
          Caption = 'NoOrderVNACC'
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button8: TButton
          Left = 755
          Top = 36
          Width = 82
          Height = 33
          Caption = 'Print'
          TabOrder = 4
          OnClick = Button8Click
        end
        object CBX_HGLB2: TComboBox
          Left = 254
          Top = 45
          Width = 312
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 5
          TabOrder = 5
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
        object CheckBox1: TCheckBox
          Left = 384
          Top = 8
          Width = 137
          Height = 17
          Caption = 'CPNVLPB Factory'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object CWBHEdit2: TEdit
          Left = 574
          Top = 5
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 7
          Text = '152'
        end
        object CBX3: TComboBox
          Left = 76
          Top = 8
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 17
          TabOrder = 8
          Text = '2023'
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
        object CBX4: TComboBox
          Left = 199
          Top = 8
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 9
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
        object Button5: TButton
          Left = 839
          Top = 35
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 10
          OnClick = Button5Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 81
        Width = 1521
        Height = 524
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
        Top = 81
        Width = 1521
        Height = 524
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
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'DON HANG|'#35330#21934#32232#34399
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SL DON HANG|'#35330#21934#38617#25976
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'FKCQy'
            Footer.FieldName = 'FKCQy'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SLCTHKT|'#21069#26399#26410#20570#25976#37327
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'NoFKCQty1'
            Footer.FieldName = 'NoFKCQty1'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TSLCTHDK|'#23578#26410#20837#24235
          end
          item
            EditButtons = <>
            FieldName = 'InQty'
            Footer.FieldName = 'InQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SLNKTP|'#30070#26399#20837#24235
          end
          item
            EditButtons = <>
            FieldName = 'VNACCMon'
            Footer.FieldName = 'VNACCMon'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'DAU KY '#26399#21021'|CPDDDK|'#26410#23436#25104#25976#37327#30340#36027#29992
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.FieldName = 'VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'PHAT SINH TRONG KY|CPNVLTT|'#30452#25509#26448#26009#36027#29992
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ZVNACC'
            Footer.FieldName = 'ZVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'PHAT SINH TRONG KY|CPNVLPB|'#26448#26009#20998#37197#36027#29992
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'NotInQty'
            Footer.FieldName = 'NotInQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CUOI KY '#26399#26411'|SLDDCK|'#22312#35069#21697#25976#37327
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SemiVNACC'
            Footer.FieldName = 'SemiVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CUOI KY '#26399#26411'|CPDDCK| '#22312#35069#21697#36027#29992
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'FShoeVNACC'
            Footer.FieldName = 'FShoeVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CHI PHI SAN PHAM|TCPNVL|'#21407#29289#26009#32317#37329#38989
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'FShoe1Pair_VNACC'
            Footer.FieldName = 'FShoe1Pair_VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CHI PHI SAN PHAM|CHI PHI/1 DOI|'#36027#29992'/1'#38617
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = '<=30'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '31~60'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '61~90'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '91~120'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '121~180'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '181~360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '>360'
            Footer.ValueType = fvtSum
            Footers = <>
            Visible = False
            Width = 55
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
    Top = 233
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 202
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'If object_id('#39'tempdb..#DDZL_Mon'#39') is not null '
      'Begin  drop table #DDZL_Mon end '
      '  Select DDBH  into #DDZL_Mon from ('
      #9'  Select YWDD.YSBH as DDBH '
      #9'  From YWCP'
      #9'  Left join YWDD on YWDD.DDBH=YWCP.DDBH'
      
        #9'  where convert(varchar,YWCP.Indate,111) Between '#39'2023/01/01'#39' a' +
        'nd '#39'2023/01/31'#39' '
      #9'  Group by YWDD.YSBH '
      '    Union all'
      #9'  SELECT MasterOrder AS DDBH'
      #9'  FROM CBY_Orders'
      
        #9'  WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '#39'2023/01/01'#39' a' +
        'nd '#39'2023/01/31'#39' '
      '    GROUP BY MasterOrder'
      #9'  Union all'
      #9'  Select  shoetest.YPDH as DDBH'
      #9'  from shoetest'
      
        #9'  where Convert(varchar,shoetest.complete, 111) between '#39'2023/0' +
        '1/01'#39' and '#39'2023/01/31'#39' '
      '  '#9'and SUBSTRING(shoetest.YPDH,4,1)='#39'V'#39
      #9'  Group by shoetest.YPDH'
      '    Union all'
      '    Select DDBH '
      #9'  from LIY_DD.dbo.OUTSOLE_RK '
      #9'  where DDBH like '#39'AUR%'#39' '
      
        #9'  and Convert(varchar,Indate,111) between '#39'2023/01/01'#39' and '#39'202' +
        '3/01/31'#39' '
      '    group by DDBH '
      #9'  Union all'
      #9'  Select KCLLS.SCBH'
      #9'  From KCLL'
      #9'  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO '
      '    Left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        #9'  where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) ' +
        'between '#39'2023/01/01'#39' and '#39'2023/01/31'#39' '
      '   AND KCCK.GSBH='#39'VTX'#39
      #9#9'and KCCK.CKBH='#39'VTXW'#39' '
      '    and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39') '
      
        '    and KCLLS.Qty<>0 and SUBSTRING(KCLLS.SCBH,4,1) not in('#39'T'#39','#39'K' +
        #39')'
      #9'  Group by KCLLS.SCBH  '
      '    Union all'
      #9'  Select DDBH'
      #9'  from CWKCLLMonth'
      #9'  where KCYEAR='#39'2022'#39' and KCMONTH='#39'12'#39' '
      #9#9'and CWKCLLMonth.CKBH='#39'VTXW'#39' '
      '    and CWKCLLMonth.VNACC>0'
      #9'  Group by DDBH'
      ') DDZL '
      'IF OBJECT_ID('#39'tempdb..#SemiMat_Mon'#39') IS NOT NULL'
      'BEGIN DROP TABLE #SemiMat_Mon END '
      
        'select CPNVL_Tot.DDBH,CPNVL_Tot.Pairs,CPNVL_Tot.FKCQy,CPNVL_Tot.' +
        'NoFKCQty1,CPNVL_Tot.InQty,CPNVL_Tot.VNACCMon,CPNVL_Tot.VNACC,CPN' +
        'VL_Tot.ZVNACC,CPNVL_Tot.NotInQty '
      
        '  '#9'   ,CPNVL_Tot.SemiVNACC,isnull(convert(float,CPNVL_Tot.VNACCM' +
        'on),0)+isnull(convert(float,CPNVL_Tot.VNACC),0)+isnull(convert(f' +
        'loat,CPNVL_Tot.ZVNACC),0)-isnull(convert(float,CPNVL_Tot.SemiVNA' +
        'CC),0) as FShoeVNACC '
      #9'     ,case when (CPNVL_Tot.InQty)>0 then '
      
        '            round((isnull(convert(float,CPNVL_Tot.VNACCMon),0)+i' +
        'snull(convert(float,CPNVL_Tot.VNACC),0)+isnull(convert(float,CPN' +
        'VL_Tot.ZVNACC),0)-isnull(convert(float,CPNVL_Tot.SemiVNACC),0))/' +
        '(CPNVL_Tot.InQty),0)'
      '        else NULL end as FShoe1Pair_VNACC'
      '     into #SemiMat_Mon'
      
        'from ( select CPNVL.DDBH,CPNVL.Pairs,FKCQy,NoFKCQty1,InQty,VNACC' +
        'Mon,VNACC,ZVNACC,NotInQty'
      
        '              ,case when (NoFKCQty1=0  ) then  Round(isnull( con' +
        'vert(float,VNACCMon),0) + isnull(convert(float,VNACC),0),0)'
      
        '          '#9#9' else Round(convert(money,(isnull(convert(Float,VNAC' +
        'CMon),0) + isnull(convert(float,VNACC),0) ) / NoFKCQty1 *'#9'NotInQ' +
        'ty),0) end as SemiVNACC '
      
        '  '#9'   from ( select DDZL.DDBH,DDZL.Pairs,Case when ((IsNull(CWKC' +
        'LLMonth.VNACC,0)=0) and (IsNull(YWCPKC.KCQty,0)=0)) then null el' +
        'se  DDZL.Pairs- IsNull(YWCPKC.KCQty,0)- IsNull(CBY_Shipping.Ship' +
        'Qty,0)  end as FKCQy'
      
        '                  '#9' ,IsNull(DDZL.Pairs- IsNull(YWCPKC.KCQty,0),D' +
        'DZL.Pairs)- IsNull(CBY_Shipping.ShipQty,0) as NoFKCQty1,DDZL.Pai' +
        'rs-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0)- IsNull(CBY_S' +
        'hipping.ShipQty,0)  as NotInQty'
      
        '                  '#9' ,YWCP_Mon.InQty,Isnull(CWKCLLMonth.VNACC,0) ' +
        'as VNACCMon,IsNull(KCLLS.VNACC,0)- Isnull(RK_THUHOI.VNACC,0)+isn' +
        'ull(CWKCLLMonth_Adjust_TT.ExchACC,0)  as VNACC'
      
        '                  '#9' ,Round(convert(float,YWCP_Mon.InQty*-0.00548' +
        '088735842062),0)+isnull(CWKCLLMonth_Adjust_PB.ExchACC,0)  as ZVN' +
        'ACC '
      'from ( Select *'
      #9'      From ( Select DDZL.DDBH,DDZL.Pairs '
      #9'             from DDZLTW DDZL '
      '               Union all'
      #9#9'           select ypzl.YPDH as DDBH,ypzl.Quantity as Pairs'
      #9#9'           from ypzl'
      #9#9'           Union all'
      #9#9'           SELECT MasterOrder AS DDBH, SUM(total) AS Pairs'
      #9#9'           FROM CBY_Orders'
      #9#9'           group by MasterOrder '
      '               Union all'
      '               select DDBH,Pairs '
      '               from LIY_DD.dbo.DDZL '
      '    '#9#9#9#9'   where DDBH like '#39'AUR%'#39' '
      '             ) DDZL'
      #9'      where DDZL.DDBH in ('
      #9'      Select DDBH From #DDZL_Mon'
      #9'    ) '
      '      ) DDZL'
      'Left join ('
      #9'          Select YWDD.YSBH,Sum(YWCPMonth.Qty) as KCQty '
      #9'          from YWCPMonth with (nolock)'
      
        #9'          left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.' +
        'DDBH '
      #9'          left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH '
      
        #9'          where YWCPMonth.KCYEAR= '#39'2022'#39' and YWCPMonth.KCMONTH=' +
        #39'12'#39'  '
      #9'          Group by YWDD.YSBH '
      '            Union all '
      
        '            SELECT CBY_Orders.MasterOrder AS YSBH, SUM(ShoeTestM' +
        'onth.Qty) AS KCQty'
      '            FROM ShoeTestMonth WITH (NOLOCK)'
      
        '            LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = Sho' +
        'eTestMonth.TestNo'
      
        '            WHERE ShoeTestMonth.KCYEAR = '#39'2022'#39' AND ShoeTestMont' +
        'h.KCMONTH = '#39'12'#39
      '            AND CBY_Orders.workOrderId IS NOT NULL'
      '            GROUP BY CBY_Orders.MasterOrder'
      '            Union all'
      
        '            select ypzl.YPDH AS YSBH,sum(shoetestmonth.Qty) as K' +
        'CQty'
      '      '#9#9#9'from shoetestmonth WITH (NOLOCK)'
      
        '      '#9#9#9'left join ShoeTest on shoetestmonth.TestNo=ShoeTest.Tes' +
        'tNo'
      '      '#9#9#9'left join ypzl on ShoeTest.YPDH=ypzl.YPDH'
      
        '            WHERE ShoeTestMonth.KCYEAR = '#39'2022'#39' AND ShoeTestMont' +
        'h.KCMONTH = '#39'12'#39
      '      '#9#9#9'and ypzl.YPDH is not null'
      '      '#9#9#9'group by ypzl.YPDH'
      '            Union all'
      '      '#9#9#9'select DDBH as YSBH, sum(Qty) as KCQty'
      '      '#9#9#9'from LIY_DD.dbo.OUTSOLE_Month'
      
        '      '#9#9#9'where KCYEAR='#39'2022'#39' and KCMONTH='#39'12'#39' and DDBH like '#39'AUR' +
        '%'#39' '
      '      '#9#9#9'group by DDBH '
      '            ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH'
      'Left join ('
      #9'          Select CWKCLLMonth.DDBH,CWKCLLMonth.VNACC'
      #9'          from CWKCLLMonth with (nolock)'
      
        #9'          where CWKCLLMonth.KCYEAR= '#39'2022'#39' and CWKCLLMonth.KCMO' +
        'NTH='#39'12'#39'  '
      '            and DDBH like '#39'%'#39' '
      #9#9'        and CWKCLLMonth.CKBH='#39'VTXW'#39' '
      '           ) CWKCLLMonth on CWKCLLMonth.DDBH=DDZL.DDBH'
      'Left join ('
      '            Select YWDD.YSBH,Sum(YWCP.Qty) as InQty  '
      #9'          from YWCP with (nolock)'
      #9'          left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH '
      
        #9#9'        where convert(varchar,YWCP.Indate,111) between '#39'2023/0' +
        '1/01'#39' and '#39'2023/01/31'#39' '
      #9#9'        Group by YWDD.YSBH'
      '            Union all '
      
        '       '#9#9#9'SELECT CBY_Orders.MasterOrder as YSBH,SUM(total) AS In' +
        'Qty'
      '       '#9#9#9'FROM CBY_Orders'
      
        '       '#9#9#9'WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '#39'2023/0' +
        '1/01'#39' and '#39'2023/01/31'#39' '
      '       '#9#9#9'GROUP BY MasterOrder'
      '       '#9#9#9'Union all'
      
        '       '#9#9#9'Select shoetest.YPDH as YSBH,sum(shoetest2.qty) as InQ' +
        'ty'
      '       '#9#9#9'from shoetest'
      
        '       '#9#9#9'left join (select testno,sum(qty) as qty from shoetest' +
        '2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.test' +
        'no'
      
        '       '#9#9#9'where Convert(varchar,shoetest.complete, 111) between ' +
        #39'2023/01/01'#39' and '#39'2023/01/31'#39' '
      '     '#9#9'    and SUBSTRING(shoetest.YPDH,4,1)='#39'V'#39
      '            group by shoetest.YPDH'
      '            Union all '
      '            select DDBH as YSBH,sum(qty) as InQty '
      '      '#9#9#9'from LIY_DD.dbo.OUTSOLE_RK '
      '      '#9#9#9'where DDBH like '#39'AUR%'#39
      
        '      '#9#9#9'and Convert(varchar,Indate,111) between '#39'2023/01/01'#39' an' +
        'd '#39'2023/01/31'#39' '
      '      '#9#9#9'group by DDBH '
      '          )  YWCP_Mon on YWCP_Mon.YSBH=DDZL.DDBH'
      'left join ( '
      
        '          SELECT CBY_Orders.MasterOrder as YSBH,SUM(total) AS Sh' +
        'ipQty '
      ' '#9#9#9#9#9'FROM CBY_Orders  '
      ' '#9#9#9#9#9'WHERE CONVERT(VARCHAR, shipdate, 111) < '#39'2023/01/01'#39' '
      
        #9#9#9#9#9'and ((CBY_Orders.MasterOrder in ( select DDBH from CWKCLLMo' +
        'nth where CWKCLLMonth.KCYEAR= '#39'2022'#39' and CWKCLLMonth.KCMONTH='#39'12' +
        #39'   and DDBH like '#39'CBY%'#39')) '
      
        #9#9#9#9#9'or (CBY_Orders.MasterOrder in (   SELECT CBY_Orders.MasterO' +
        'rder AS YSBH '
      
        '                                            FROM ShoeTestMonth W' +
        'ITH (NOLOCK)'
      
        '           '#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  LEFT JOIN CBY_Orders ON CBY_Orders.' +
        'workOrderId = ShoeTestMonth.TestNo '
      
        '            '#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'WHERE ShoeTestMonth.KCYEAR = '#39'2022'#39' ' +
        'AND ShoeTestMonth.KCMONTH = '#39'12'#39' '
      
        '            '#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND CBY_Orders.workOrderId IS NOT NU' +
        'LL '
      '            '#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'GROUP BY CBY_Orders.MasterOrder))) '
      #9#9#9#9'  GROUP BY MasterOrder  '
      '          ) CBY_Shipping on CBY_Shipping.YSBH=DDZL.DDBH '
      'left join ( select DDBH,isnull(ExchACC,0) as ExchACC'
      '            from CWKCLLMonth_Adjust_PB'
      '      '#9#9#9'where KCYEAR='#39'2023'#39' and KCMONTH='#39'01'#39'  and LB='#39'PB'#39
      #9#9#9'      and CKBH='#39'VTX'#39' '
      
        '          ) CWKCLLMonth_Adjust_PB on CWKCLLMonth_Adjust_PB.DDBH ' +
        '= DDZL.DDBH'
      'left join ( select DDBH,isnull(ExchACC,0) as ExchACC'
      '            from CWKCLLMonth_Adjust_PB'
      '      '#9#9#9'where KCYEAR='#39'2023'#39' and KCMONTH='#39'01'#39'  and LB='#39'TT'#39
      #9#9#9'      and CKBH='#39'VTX'#39' '
      
        '          ) CWKCLLMonth_Adjust_TT on CWKCLLMonth_Adjust_TT.DDBH ' +
        '= DDZL.DDBH'
      'left join ( Select KCLLS.SCBH,sum(VNACC) as VNACC'
      '            From( Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC '
      '     '#9'            From KCLL '
      '     '#9'            Left join KCLLS on KCLL.LLNO=KCLLS.LLNO '
      '                  Left join KCCK on KCCK.CKBH=KCLL.CKBH  '
      
        '                  left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and K' +
        'CZLS.CKBH=KCLL.CKBH  '
      
        '                  where  KCLL.YN='#39'5'#39' and KCLL.CFMID<>'#39'NO'#39' and Co' +
        'nvert(varchar,KCLL.CFMDate,111) between '#39'2023/01/01'#39' and '#39'2023/0' +
        '1/31'#39'  '
      #9#9#9'            and KCCK.GSBH='#39'VTX'#39' '
      #9'               '#9'and KCCK.CKBH='#39'VTXW'#39' '
      '                  and KCZLS.CWBH = '#39'152'#39
      '           '#9'      and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      
        '    '#9#9'          and not Exists(select * from KCLLS_CB where LLNO' +
        '=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)'
      '                  Group by KCLLS.SCBH'
      '                  UNION ALL'
      
        #9#9'              SELECT KCLLS_CB.SCBH_Cost as SCBH,sum(VNACC) as ' +
        'VNACC'
      '                  FROM KCLLS_CB'
      '          '#9'      Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO'
      '                  Left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        #9'                where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL' +
        '.CFMDate,111) between '#39'2023/01/01'#39' and '#39'2023/01/31'#39'  '
      #9#9#9'            and KCCK.GSBH='#39'VTX'#39
      #9'               '#9'and KCCK.CKBH='#39'VTXW'#39' '
      '                  and KCLLS_CB.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      
        #9#9'              Group by KCLLS_CB.SCBH_Cost ) KCLLS group by KCL' +
        'LS.SCBH ) KCLLS on KCLLS.SCBH=DDZL.DDBH '
      
        'left join ('#9'SELECT KCRKS.CGBH as SCBH,SUM(KCRKS.VNACC+ISNULL(EXC' +
        'HACC,0)) VNACC'
      '            FROM KCRKS'
      '            LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO'
      '            Left join KCCK on KCCK.CKBH=KCRK.CKBH '
      
        '            WHERE  KCRK.YN='#39'5'#39' and Convert(varchar,KCRK.USERDATE' +
        ',111) between '#39'2023/01/01'#39' and '#39'2023/01/31'#39'  '
      '            AND KCCK.GSBH='#39'VTX'#39' '
      '      '#9#9#9'AND KCRKS.CostID='#39'6211'#39
      '            AND KCRK.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      
        '            GROUP BY KCRKS.CGBH )RK_THUHOI on RK_THUHOI.SCBH=DDZ' +
        'L.DDBH'
      'where 1=1 '
      ') CPNVL ) CPNVL_Tot'
      'where 1=1 '
      'Union All'
      
        'select '#39'DICH VU KHAI THAC'#39' as DDBH,0 as Pairs, 1 as FKCQty, 1 as' +
        ' NoFKCQty,1 as InQty,0 as VNACCMon,KCLL_DICHVUKHAITHAC.VNACC,0 a' +
        's ZVNACC,0 as NotInQty,0 as SemiVNACC,KCLL_DICHVUKHAITHAC.VNACC ' +
        'as FShoeVNACC,KCLL_DICHVUKHAITHAC.VNACC as FShoe1Pair_VNACC'
      'from ('#9'select sum(VNACC) as VNACC '
      '   '#9#9'  from('#9'Select Sum(VNACC_HG) as VNACC '
      '              From KCLL'
      '     '#9#9#9#9'  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO '
      '              Left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        '              left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS' +
        '.CKBH=KCLL.CKBH  '
      
        '     '#9#9#9#9'  where KCLL.YN='#39'5'#39' and KCLL.CFMID<>'#39'NO'#39' and Convert(va' +
        'rchar,KCLL.CFMDate,111) between '#39'2023/01/01'#39' and '#39'2023/01/31'#39'  '
      #9'            and KCCK.GSBH='#39'VTX'#39
      #9'            and KCCK.CKBH='#39'VTXW'#39' '
      '              and KCZLS.CWBH = '#39'152'#39
      '     '#9#9#9#9'  and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39') '
      
        '     '#9#9#9#9'  and KCLLS.CostID like '#39'621%'#39' and (KCLLS.SCBH like '#39'BY' +
        'IT%'#39' or KCLLS.SCBH like '#39'BYIK%'#39')'
      
        '     '#9#9#9#9'  and not exists(select* from KCLLS_CB where LLNO=KCLLS' +
        '.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) '
      '     '#9#9#9#9'  UNION ALL'
      '     '#9#9#9#9'  SELECT Sum(VNACC) as VNACC '
      '     '#9#9#9#9'  FROM KCLLS_CB '
      '     '#9#9#9#9'  Left join KCLL on KCLL.LLNO=KCLLS_CB.LLNO'
      '              Left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        '     '#9#9#9#9'  where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDa' +
        'te,111) between '#39'2023/01/01'#39' and '#39'2023/01/31'#39'  '
      #9'          and KCCK.GSBH='#39'VTX'#39
      #9'            and KCCK.CKBH='#39'VTXW'#39' '
      '     '#9#9#9#9'  and KCLLS_CB.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39') '
      
        '      '#9#9#9'  and KCLLS_CB.CostID like '#39'621%'#39' and (KCLLS_CB.SCBH_Co' +
        'st like '#39'BYIT%'#39' or KCLLS_CB.SCBH_Cost like '#39'BYIK%'#39')'
      '     '#9#9#9') KCLL ) KCLL_DICHVUKHAITHAC'
      
        'Select *,0.0 as '#39'<=30'#39',0.0 as '#39'31~60'#39',0.0 as '#39'61~90'#39',0.0 as '#39'91~' +
        '120'#39',0.0 as '#39'121~180'#39',0.0 as '#39'181~360'#39',0.0 as '#39'>360'#39
      ' from #SemiMat_Mon  Order by DDBH')
    UpdateObject = UPDet2
    Left = 496
    Top = 234
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query2FKCQy: TFloatField
      FieldName = 'FKCQy'
    end
    object Query2NoFKCQty1: TFloatField
      FieldName = 'NoFKCQty1'
    end
    object Query2InQty: TFloatField
      FieldName = 'InQty'
    end
    object Query2VNACCMon: TCurrencyField
      FieldName = 'VNACCMon'
      DisplayFormat = '#,##0'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query2NotInQty: TFloatField
      FieldName = 'NotInQty'
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
    object Query2BDEDesigner30: TFloatField
      FieldName = '<=30'
    end
    object Query2BDEDesigner3160: TFloatField
      FieldName = '31~60'
    end
    object Query2BDEDesigner6190: TFloatField
      FieldName = '61~90'
    end
    object Query2BDEDesigner91120: TFloatField
      FieldName = '91~120'
    end
    object Query2BDEDesigner121180: TFloatField
      FieldName = '121~180'
    end
    object Query2BDEDesigner181360: TFloatField
      FieldName = '181~360'
    end
    object Query2BDEDesigner360: TFloatField
      FieldName = '>360'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 202
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CWKCLLMonth.*,DDZL.ARTICLE '
      'from CWKCLLMonth'
      'left join DDZL on DDZL.DDBH=CWKCLLMonth.DDBH')
    UpdateObject = UPDet1
    Left = 456
    Top = 234
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
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Size = 4
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
  object PopupMenu1: TPopupMenu
    Left = 498
    Top = 266
    object Adjust_NVL_PB: TMenuItem
      Caption = 'Dieu Chinh Chi Phi NVL Phan Bo'
      OnClick = Adjust_NVL_PBClick
    end
    object Adjust_NVL_TT: TMenuItem
      Caption = 'Dieu Chinh Chi Phi NVL Truc Tiep'
      OnClick = Adjust_NVL_TTClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnu1: TMenuItem
      Caption = 'Don hang Chi Tiet'
      OnClick = mnu1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Save_GT: TMenuItem
      Caption = 'Luu Du Lieu Gia Thanh'
      OnClick = Save_GTClick
    end
    object Confirm_GT: TMenuItem
      Caption = 'Confirm Gia Thanh'
      OnClick = Confirm_GTClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Modify_SL: TMenuItem
      Caption = 'Dieu Chinh So Luong'
      OnClick = Modify_SLClick
    end
    object Save_SL: TMenuItem
      Caption = 'Luu Dieu Chinh So Luong'
      Enabled = False
      OnClick = Save_SLClick
    end
    object Cancel_SL: TMenuItem
      Caption = 'Huy Bo Dieu Chinh So Luong'
      Enabled = False
      OnClick = Cancel_SLClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 457
    Top = 267
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
      'Update CWKCLLMonth'
      'set'
      '  VNACC = :VNACC,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  CKBH= :OLD_CKBH and'
      '  DDBH= :OLD_DDBH ')
    Left = 456
    Top = 301
  end
  object CheckQry: TQuery
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
    Left = 534
    Top = 233
  end
  object UPDet2: TUpdateSQL
    ModifySQL.Strings = (
      'Update CW_MatCostMonth'
      'set'
      '  NoFKCQty1 = :NoFKCQty1,'
      '  NotInQty = :NotInQty,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  CKBH= :OLD_CKBH and'
      '  DDBH= :OLD_DDBH ')
    Left = 497
    Top = 300
  end
end
