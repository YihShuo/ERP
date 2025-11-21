object CBY_SemiMaterialMonth: TCBY_SemiMaterialMonth
  Left = 286
  Top = 267
  Width = 1510
  Height = 661
  Caption = 'Develop_SemiMaterialMonth'
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
    Width = 1494
    Height = 622
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
        Width = 1486
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 49
          Top = 12
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label6: TLabel
          Left = 183
          Top = 12
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label5: TLabel
          Left = 17
          Top = 49
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MasterOrder:'
        end
        object Label8: TLabel
          Left = 232
          Top = 49
          Width = 40
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO:'
        end
        object Label13: TLabel
          Left = 592
          Top = 12
          Width = 44
          Height = 16
          Caption = 'CWBH:'
        end
        object Label3: TLabel
          Left = 286
          Top = 10
          Width = 99
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO: CDC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button3: TButton
          Left = 670
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 575
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button4Click
        end
        object CBX1: TComboBox
          Left = 97
          Top = 8
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
          Left = 231
          Top = 8
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
          Left = 97
          Top = 45
          Width = 120
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object CBX_HGLB1: TComboBox
          Left = 274
          Top = 45
          Width = 119
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 5
          TabOrder = 5
          Text = 'NK+TC+HD+KD'
          Items.Strings = (
            ''
            'NK'
            'TC'
            'HD'
            'KD'
            'NK+TC+HD+KD')
        end
        object CWBHEdit1: TEdit
          Left = 638
          Top = 8
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
          Text = '152'
        end
        object chk_PB1: TCheckBox
          Left = 416
          Top = 49
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
        Width = 1486
        Height = 510
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
            Title.Caption = #24288#21029'|GSBH'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|MasterOrder'
            Width = 120
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
        Width = 1486
        Height = 81
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 49
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MasterOrder:'
        end
        object Label9: TLabel
          Left = 226
          Top = 49
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'KHO:'
        end
        object Label10: TLabel
          Left = 667
          Top = 12
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
          Left = 790
          Top = 12
          Width = 227
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label15: TLabel
          Left = 552
          Top = 12
          Width = 44
          Height = 16
          Caption = 'CWBH:'
        end
        object Label14: TLabel
          Left = 17
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
          Caption = 'KHO: CDC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DDBHEdit2: TEdit
          Left = 97
          Top = 45
          Width = 120
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 575
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 670
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button6: TButton
          Left = 860
          Top = 40
          Width = 120
          Height = 33
          Caption = 'NoOrderVNACC'
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button8: TButton
          Left = 765
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Print'
          TabOrder = 4
          OnClick = Button8Click
        end
        object CBX_HGLB2: TComboBox
          Left = 274
          Top = 45
          Width = 119
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 5
          TabOrder = 5
          Text = 'NK+TC+HD+KD'
          Items.Strings = (
            ''
            'NK'
            'TC'
            'HD'
            'KD'
            'NK+TC+HD+KD')
        end
        object CheckBox1: TCheckBox
          Left = 416
          Top = 49
          Width = 137
          Height = 17
          Caption = 'CPNVLPB Factory'
          Checked = True
          State = cbChecked
          TabOrder = 6
          Visible = False
        end
        object CWBHEdit2: TEdit
          Left = 598
          Top = 8
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 7
          Text = '152'
        end
        object Button5: TButton
          Left = 989
          Top = 40
          Width = 90
          Height = 33
          Caption = 'Monthly'
          TabOrder = 8
          OnClick = Button5Click
        end
        object CBX3: TComboBox
          Left = 65
          Top = 8
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 17
          TabOrder = 9
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
          TabOrder = 10
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
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 81
        Width = 1486
        Height = 510
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
        Width = 1486
        Height = 510
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
            Title.TitleButton = True
            Width = 120
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
    Left = 256
    Top = 250
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 320
    Top = 218
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
      
        '       ,0.0 as '#39'<=30'#39',0.0 as '#39'31~60'#39',0.0 as '#39'61~90'#39',0.0 as '#39'91~1' +
        '20'#39',0.0 as '#39'121~180'#39',0.0 as '#39'181~360'#39',0.0 as '#39'>360'#39
      'from ('
      #9'Select DDZL.DDBH,cast(DDZL.Pairs as decimal(18,2)) as Pairs'
      #9'from DDZL '
      #9'where DDZL.DDBH in ('
      #9'   Select DDBH From #DDZL_Mon'
      #9') '
      ') DDZL'
      'Left join ('
      
        #9'Select YWDD.YSBH,Sum(cast(YWCPMonth.Qty as decimal(18,2))) as K' +
        'CQty'
      #9'from YWCPMonth with (nolock)'
      #9'left join YWDD  with (nolock) on YWDD.DDBH=YWCPMonth.DDBH '
      #9'left join DDZL  with (nolock) on YWDD.YSBH=DDZL.DDBH '
      #9'where YWCPMonth.KCYEAR= '#39'2022'#39' and YWCPMonth.KCMONTH='#39'09'#39'  '
      '        and YWDD.YSBH like '#39'Y2206-0747%'#39' '
      #9'Group by YWDD.YSBH ) YWCPKC on YWCPKC.YSBH=DDZL.DDBH'
      'Left join ('
      #9'Select CWKCLLMonth.DDBH,CWKCLLMonth.VNACC'
      #9'from CWKCLLMonth with (nolock)'
      #9'left join DDZL  with (nolock) on CWKCLLMonth.DDBH=DDZL.DDBH'
      #9'where CWKCLLMonth.KCYEAR= '#39'2022'#39' and CWKCLLMonth.KCMONTH='#39'09'#39
      '        and DDZL.DDBH like '#39'Y2206-0747%'#39' '
      '    ) KCLLMonth on KCLLMonth.DDBH=DDZL.DDBH'
      'Left join ('
      
        '        Select YWDD.YSBH,Sum(cast(YWCP.Qty as decimal(18,2))) as' +
        ' InQty'
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
    UpdateObject = UPDet2
    Left = 320
    Top = 250
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
    Left = 288
    Top = 218
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CWKCLLMonth.*,DDZL.ARTICLE '
      'from CWKCLLMonth'
      'left join DDZL on DDZL.DDBH=CWKCLLMonth.DDBH')
    UpdateObject = UPDet1
    Left = 288
    Top = 250
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
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 321
    Top = 282
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
    Left = 286
    Top = 283
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
    Left = 287
    Top = 315
  end
  object OpenDialog1: TOpenDialog
    Left = 732
    Top = 219
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
    Left = 358
    Top = 249
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
    Left = 319
    Top = 315
  end
end
