object SemiMonthTotal: TSemiMonthTotal
  Left = 484
  Top = 196
  Width = 1596
  Height = 675
  Caption = 'SemiMonthTotal'
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
    Width = 1580
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
    object TS2: TTabSheet
      Caption = 'Semi Monthly Total'
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
        Width = 1572
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
        object Label10: TLabel
          Left = 590
          Top = 9
          Width = 257
          Height = 16
          Caption = 'CHI PHI NVL NVLTT PB HC+VC (GP):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 277
          Top = 12
          Width = 63
          Height = 16
          Caption = 'Exchange:'
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
          Left = 590
          Top = 32
          Width = 186
          Height = 16
          Caption = 'CHI PHI NCTT (TK622 GP):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 590
          Top = 56
          Width = 174
          Height = 16
          Caption = 'CHI PHI SXC (TK627 GP):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DDBHEdit: TEdit
          Left = 74
          Top = 45
          Width = 171
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 321
          Top = 42
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 417
          Top = 41
          Width = 89
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button2Click
        end
        object ExchangeEdit: TEdit
          Left = 350
          Top = 9
          Width = 60
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CBX3: TComboBox
          Left = 76
          Top = 8
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          TabOrder = 4
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
            '2029'
            '2030')
        end
        object CBX4: TComboBox
          Left = 199
          Top = 8
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 5
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
          Left = 416
          Top = 4
          Width = 89
          Height = 33
          Caption = 'Monthly'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Button5Click
        end
        object DBEdit_NVLTTPB: TDBEdit
          Left = 858
          Top = 4
          Width = 169
          Height = 24
          DataField = 'CP621_GP'
          DataSource = DS2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit_NCTT: TDBEdit
          Left = 858
          Top = 29
          Width = 169
          Height = 24
          DataField = 'CP622_GP'
          DataSource = DS2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit_SXC: TDBEdit
          Left = 858
          Top = 54
          Width = 169
          Height = 24
          DataField = 'CP627_GP'
          DataSource = DS2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 81
        Width = 1572
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
        Width = 1572
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
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
            FieldName = 'Factory'
            Footers = <>
            Title.Caption = 'Xuong|'#24288#21029
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'G_DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'DON HANG| '#35330#21934
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'H_FKCQy'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SLCTHKT|'#21069#26399#26410#20570#25976#37327
          end
          item
            EditButtons = <>
            FieldName = 'I_InQty'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SLNK|'#20837#24235#29986#37327
          end
          item
            EditButtons = <>
            FieldName = 'J_VNACCMon_Mas'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVL DDDK|'#21407#26448#26009#36027#29992#21021#26399#22312#35069#21697
          end
          item
            EditButtons = <>
            FieldName = 'K_VNACCMon_HC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVL DDDK -HC DE - CCS| '#21407#26448#26009#36027#29992#21021#26399#22312#35069#21697#65288#21270#23416#65292#22823#24213#65292'CCS'#65289
          end
          item
            EditButtons = <>
            FieldName = 'L_VNACCMon'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CONG CP DDDK|'#32317#20849
          end
          item
            EditButtons = <>
            FieldName = 'M_Rate_TP'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TY LE THUC HIEN TPNK|'#22519#34892#27604#20363' ('#20837#24235#25104#21697#65289
          end
          item
            EditButtons = <>
            FieldName = 'N_SP_TuongDuong'
            Footer.DisplayFormat = '##,#0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SP HOAN THANH TUONG DUONG|'#25104#21697#23436#25104#30456#30070
          end
          item
            EditButtons = <>
            FieldName = 'O_VNACC_Mas'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVLTT PHAT SINH|'#30452#25509#21407#26009#65292#29289#26009#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'P_ZVNACC_Mas'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVLTT PB|'#30452#25509#21407#26009#65292#29289#26009#36027#29992' ('#20998#37197')'
          end
          item
            EditButtons = <>
            FieldName = 'Q_VNACC_HC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'PHAT SINH TRONG KY CP NVL ( HC CCS-DE)|'#21407#26448#26009#36027#29992'-'#22823#36554'-'#22823#24213
          end
          item
            EditButtons = <>
            FieldName = 'R_ZVNACC_HC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVL (HC KHAC)|'#21407#26009#36027#29992' '#65288#20854#20182#21270#23416#21697#65289
          end
          item
            EditButtons = <>
            FieldName = 'S_CPPB'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVL NVLTT PB HC+VC|'#30452#25509#21407#26009#36027#29992#65288#36939#36027#65289
          end
          item
            EditButtons = <>
            FieldName = 'T_TCPPS'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CPPS NVLTT (TK 621)|'#30452#25509#21407#26009#65292#29289#26009#32317#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'U_CP622'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NCTT (TK622)|'#30452#25509#20154#24037#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'V_CP627'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP SXC (TK627)|'#32317#29983#29986#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'W_TOTAL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CONG|'#32317#20849
          end
          item
            EditButtons = <>
            FieldName = 'X_NotInQty'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SL DDCK|'#26399#26411#22312#35069#21697#25976#37327
          end
          item
            EditButtons = <>
            FieldName = 'Y_SemiVNACC_Mas'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVTT DDCK|'#21407#26448#26009#36027#29992#26399#26411#22312#35069#21697
          end
          item
            EditButtons = <>
            FieldName = 'Z_SemiVNACCC_HC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CHI PHI NVL (HC CCS-DE)|'#21407#26448#26009#36027#29992#26399#26411#22312#35069#21697#65288#21270#23416#21697'-CCS-'#22823#24213') DDCK'
          end
          item
            EditButtons = <>
            FieldName = 'AA_SemiVNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CP DDCK|'#22312#24314#26399#26411#30452#25509#21407#26009#65292#29289#26009#32317#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'AB_FShoeVNACC_Mas'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVLTT CHINH|'#30452#25509#21407#26448#26009#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'AC_FShoeVNACC_HC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CP NVL (HC CCS-DE)|'#21407#26448#26009#36027#29992#26399#26411#22312#35069#21697#65288#21270#23416#21697'-CCS-'#22823#24213#65289'DDCK'
          end
          item
            EditButtons = <>
            FieldName = 'AD_CPPB'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'CHI PHI NVL (PHAN  BO)|'#21407#26448#26009#36027#29992#65288#20998#37197#65289
          end
          item
            EditButtons = <>
            FieldName = 'AE_TCPNVL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CHI PHI NVL TT|'#30452#25509#21407#26009#65292#29289#26009#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'AF_CPNCTT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CHI PHI NCTT|'#30452#25509#20154#24037#32317#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'AG_CPSXC'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG CHI PHI SXC|'#32317#29983#29986#36027#29992
          end
          item
            EditButtons = <>
            FieldName = 'AH_TGTSP'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG GIA THANH SP|'#32317#29986#21697#25104#26412
          end
          item
            EditButtons = <>
            FieldName = 'AI_GIATHANH_1DOI'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'GIA THANH/1 DOI| '#25104#26412'/ '#38617
          end
          item
            EditButtons = <>
            FieldName = 'AJ_GT1DOI_USD'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'GIA THANH /  1 DOI (USD)|'#25104#26412'/ '#38617' (USD)'
          end
          item
            EditButtons = <>
            FieldName = 'AK_GIABAN'
            Footer.DisplayFormat = '##,#0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'GIA BAN / 1 DOI|'#37559#21806#20729#26684' / '#38617
          end
          item
            EditButtons = <>
            FieldName = 'AL_DOANHTHU'
            Footer.DisplayFormat = '##,#0.00'
            Footer.FieldName = 'DOANHTHU_ALL'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = 'DOANH THU DU KIEN|'#38928#31639#25910#20837'(USD)'
          end
          item
            EditButtons = <>
            FieldName = 'AM_GVGB'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '%GV/GB'
          end
          item
            EditButtons = <>
            FieldName = 'AN_TLPB'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TY LE PHAN BO CHI PHI|'#27604#29575
          end
          item
            EditButtons = <>
            FieldName = 'AP_KHACHHANG'
            Footers = <>
            Title.Caption = 'KHACH HANG|'#23458#25142
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
    Left = 406
    Top = 337
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 472
    Top = 322
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select *'
      'From CW_MatCostMonth_Total'
      'Where 1=2')
    UpdateObject = UPDet2
    Left = 472
    Top = 354
    object Query2KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.CW_MatCostMonth_Total.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query2KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.CW_MatCostMonth_Total.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query2Factory: TStringField
      FieldName = 'Factory'
      Origin = 'DB.CW_MatCostMonth_Total.Factory'
      FixedChar = True
      Size = 10
    end
    object Query2G_DDBH: TStringField
      FieldName = 'G_DDBH'
      Origin = 'DB.CW_MatCostMonth_Total.G_DDBH'
      FixedChar = True
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
      Origin = 'DB.CW_MatCostMonth_Total.Pairs'
    end
    object Query2H_FKCQy: TFloatField
      FieldName = 'H_FKCQy'
      Origin = 'DB.CW_MatCostMonth_Total.H_FKCQy'
    end
    object Query2NoFKCQty1: TFloatField
      FieldName = 'NoFKCQty1'
      Origin = 'DB.CW_MatCostMonth_Total.NoFKCQty1'
    end
    object Query2I_InQty: TFloatField
      FieldName = 'I_InQty'
      Origin = 'DB.CW_MatCostMonth_Total.I_InQty'
    end
    object Query2J_VNACCMon_Mas: TCurrencyField
      FieldName = 'J_VNACCMon_Mas'
      Origin = 'DB.CW_MatCostMonth_Total.J_VNACCMon_Mas'
      DisplayFormat = '#,##0'
    end
    object Query2K_VNACCMon_HC: TCurrencyField
      FieldName = 'K_VNACCMon_HC'
      Origin = 'DB.CW_MatCostMonth_Total.K_VNACCMon_HC'
      DisplayFormat = '#,##0'
    end
    object Query2L_VNACCMon: TCurrencyField
      FieldName = 'L_VNACCMon'
      Origin = 'DB.CW_MatCostMonth_Total.L_VNACCMon'
      DisplayFormat = '#,##0'
    end
    object Query2M_Rate_TP: TFloatField
      FieldName = 'M_Rate_TP'
      Origin = 'DB.CW_MatCostMonth_Total.M_Rate_TP'
    end
    object Query2N_SP_TuongDuong: TFloatField
      FieldName = 'N_SP_TuongDuong'
      Origin = 'DB.CW_MatCostMonth_Total.N_SP_TuongDuong'
    end
    object Query2O_VNACC_Mas: TCurrencyField
      FieldName = 'O_VNACC_Mas'
      Origin = 'DB.CW_MatCostMonth_Total.O_VNACC_Mas'
      DisplayFormat = '#,##0'
    end
    object Query2P_ZVNACC_Mas: TCurrencyField
      FieldName = 'P_ZVNACC_Mas'
      Origin = 'DB.CW_MatCostMonth_Total.P_ZVNACC_Mas'
      DisplayFormat = '#,##0'
    end
    object Query2Q_VNACC_HC: TCurrencyField
      FieldName = 'Q_VNACC_HC'
      Origin = 'DB.CW_MatCostMonth_Total.Q_VNACC_HC'
      DisplayFormat = '#,##0'
    end
    object Query2R_ZVNACC_HC: TCurrencyField
      FieldName = 'R_ZVNACC_HC'
      Origin = 'DB.CW_MatCostMonth_Total.R_ZVNACC_HC'
      DisplayFormat = '#,##0'
    end
    object Query2S_CPPB: TCurrencyField
      FieldName = 'S_CPPB'
      Origin = 'DB.CW_MatCostMonth_Total.S_CPPB'
      DisplayFormat = '#,##0'
    end
    object Query2T_TCPPS: TCurrencyField
      FieldName = 'T_TCPPS'
      Origin = 'DB.CW_MatCostMonth_Total.T_TCPPS'
      DisplayFormat = '#,##0'
    end
    object Query2U_CP622: TCurrencyField
      FieldName = 'U_CP622'
      Origin = 'DB.CW_MatCostMonth_Total.U_CP622'
      DisplayFormat = '#,##0'
    end
    object Query2V_CP627: TCurrencyField
      FieldName = 'V_CP627'
      Origin = 'DB.CW_MatCostMonth_Total.V_CP627'
      DisplayFormat = '#,##0'
    end
    object Query2W_TOTAL: TCurrencyField
      FieldName = 'W_TOTAL'
      Origin = 'DB.CW_MatCostMonth_Total.W_TOTAL'
      DisplayFormat = '#,##0'
    end
    object Query2X_NotInQty: TFloatField
      FieldName = 'X_NotInQty'
      Origin = 'DB.CW_MatCostMonth_Total.X_NotInQty'
    end
    object Query2Y_SemiVNACC_Mas: TCurrencyField
      FieldName = 'Y_SemiVNACC_Mas'
      Origin = 'DB.CW_MatCostMonth_Total.Y_SemiVNACC_Mas'
      DisplayFormat = '#,##0'
    end
    object Query2Z_SemiVNACCC_HC: TCurrencyField
      FieldName = 'Z_SemiVNACCC_HC'
      Origin = 'DB.CW_MatCostMonth_Total.Z_SemiVNACCC_HC'
      DisplayFormat = '#,##0'
    end
    object Query2AA_SemiVNACC: TCurrencyField
      FieldName = 'AA_SemiVNACC'
      Origin = 'DB.CW_MatCostMonth_Total.AA_SemiVNACC'
      DisplayFormat = '#,##0'
    end
    object Query2AB_FShoeVNACC_Mas: TCurrencyField
      FieldName = 'AB_FShoeVNACC_Mas'
      Origin = 'DB.CW_MatCostMonth_Total.AB_FShoeVNACC_Mas'
      DisplayFormat = '#,##0'
    end
    object Query2AC_FShoeVNACC_HC: TCurrencyField
      FieldName = 'AC_FShoeVNACC_HC'
      Origin = 'DB.CW_MatCostMonth_Total.AC_FShoeVNACC_HC'
      DisplayFormat = '#,##0'
    end
    object Query2AD_CPPB: TCurrencyField
      FieldName = 'AD_CPPB'
      Origin = 'DB.CW_MatCostMonth_Total.AD_CPPB'
      DisplayFormat = '#,##0'
    end
    object Query2AE_TCPNVL: TCurrencyField
      FieldName = 'AE_TCPNVL'
      Origin = 'DB.CW_MatCostMonth_Total.AE_TCPNVL'
      DisplayFormat = '#,##0'
    end
    object Query2AF_CPNCTT: TCurrencyField
      FieldName = 'AF_CPNCTT'
      Origin = 'DB.CW_MatCostMonth_Total.AF_CPNCTT'
      DisplayFormat = '#,##0'
    end
    object Query2AG_CPSXC: TCurrencyField
      FieldName = 'AG_CPSXC'
      Origin = 'DB.CW_MatCostMonth_Total.AG_CPSXC'
      DisplayFormat = '#,##0'
    end
    object Query2AH_TGTSP: TCurrencyField
      FieldName = 'AH_TGTSP'
      Origin = 'DB.CW_MatCostMonth_Total.AH_TGTSP'
      DisplayFormat = '#,##0'
    end
    object Query2AI_GIATHANH_1DOI: TCurrencyField
      FieldName = 'AI_GIATHANH_1DOI'
      Origin = 'DB.CW_MatCostMonth_Total.AI_GIATHANH_1DOI'
      DisplayFormat = '#,##0'
    end
    object Query2AJ_GT1DOI_USD: TCurrencyField
      FieldName = 'AJ_GT1DOI_USD'
      Origin = 'DB.CW_MatCostMonth_Total.AJ_GT1DOI_USD'
      DisplayFormat = '##,#0.00'
    end
    object Query2AK_GIABAN: TCurrencyField
      FieldName = 'AK_GIABAN'
      Origin = 'DB.CW_MatCostMonth_Total.AK_GIABAN'
      DisplayFormat = '##,#0.00'
    end
    object Query2AL_DOANHTHU: TFloatField
      FieldName = 'AL_DOANHTHU'
    end
    object Query2AM_GVGB: TFloatField
      FieldName = 'AM_GVGB'
      Origin = 'DB.CW_MatCostMonth_Total.AM_GVGB'
      DisplayFormat = '##,#0.00'
    end
    object Query2AN_TLPB: TFloatField
      FieldName = 'AN_TLPB'
      Origin = 'DB.CW_MatCostMonth_Total.AN_TLPB'
      DisplayFormat = '##,#0.000'
    end
    object Query2AP_KHACHHANG: TStringField
      FieldName = 'AP_KHACHHANG'
      Origin = 'DB.CW_MatCostMonth_Total.AP_KHACHHANG'
      FixedChar = True
    end
    object Query2AR_VNPrice: TCurrencyField
      FieldName = 'AR_VNPrice'
      Origin = 'DB.CW_MatCostMonth_Total.AR_VNPrice'
    end
    object Query2CP621_GP: TCurrencyField
      FieldName = 'CP621_GP'
      Origin = 'DB.CW_MatCostMonth_Total.CP621_GP'
      DisplayFormat = '#,##0'
    end
    object Query2CP622_GP: TCurrencyField
      FieldName = 'CP622_GP'
      Origin = 'DB.CW_MatCostMonth_Total.CP622_GP'
      DisplayFormat = '#,##0'
    end
    object Query2CP627_GP: TCurrencyField
      FieldName = 'CP627_GP'
      Origin = 'DB.CW_MatCostMonth_Total.CP627_GP'
      DisplayFormat = '#,##0'
    end
    object Query2CWHL: TCurrencyField
      FieldName = 'CWHL'
      Origin = 'DB.CW_MatCostMonth_Total.CWHL'
      DisplayFormat = '#,##0'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.CW_MatCostMonth_Total.UserID'
      FixedChar = True
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.CW_MatCostMonth_Total.UserDate'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CW_MatCostMonth_Total.YN'
      FixedChar = True
      Size = 1
    end
    object Query2DOANHTHU_ALL: TFloatField
      FieldName = 'DOANHTHU_ALL'
    end
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
    Left = 510
    Top = 353
  end
  object UPDet2: TUpdateSQL
    ModifySQL.Strings = (
      'Update CW_MatCostMonth_Total'
      'set'
      '  S_CPPB = :S_CPPB,'
      '  T_TCPPS = :T_TCPPS,'
      '  U_CP622 = :U_CP622,'
      '  V_CP627 = :V_CP627,'
      '  W_TOTAL = :W_TOTAL,'
      '  AD_CPPB = :AD_CPPB,'
      '  AE_TCPNVL = :AE_TCPNVL,'
      '  AF_CPNCTT = :AF_CPNCTT,'
      '  AG_CPSXC = :AG_CPSXC,'
      '  AH_TGTSP = :AH_TGTSP,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  G_DDBH= :OLD_G_DDBH')
    Left = 471
    Top = 419
  end
  object PopupMenu2: TPopupMenu
    Left = 468
    Top = 387
    object Adjust1: TMenuItem
      Caption = 'Adjust'
      OnClick = Adjust1Click
    end
  end
  object Qry_DT: TQuery
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
    Left = 542
    Top = 345
    object Qry_DTDOANHTHU_ALL: TCurrencyField
      FieldName = 'DOANHTHU_ALL'
    end
  end
end
