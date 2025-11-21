object HRMForm: THRMForm
  Left = 0
  Top = 0
  Caption = 'HRMForm'
  ClientHeight = 379
  ClientWidth = 1576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1576
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 11
      Top = 16
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#259'm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 133
      Top = 15
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Th'#225'ng:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object NVMa: TLabel
      Left = 248
      Top = 14
      Width = 44
      Height = 16
      Caption = 'NV M'#227':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 2
      Top = 48
      Width = 41
      Height = 16
      Caption = #272#417'n v'#7883':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 411
      Top = 41
      Width = 33
      Height = 22
      Caption = '<>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 248
      Top = 44
      Width = 44
      Height = 16
      Caption = 'DV M'#227':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object QryBtn: TButton
      Left = 450
      Top = 9
      Width = 63
      Height = 52
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object CBX1: TComboBox
      Left = 45
      Top = 11
      Width = 73
      Height = 25
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 15
      ParentFont = False
      TabOrder = 1
      Text = '2021'
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
      Left = 177
      Top = 11
      Width = 65
      Height = 25
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
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
    object NV_MAEdit: TEdit
      Left = 293
      Top = 11
      Width = 151
      Height = 24
      TabOrder = 3
    end
    object DonviCombo: TComboBox
      Left = 45
      Top = 43
      Width = 194
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'DonviCombo'
    end
    object ImportlBtn: TButton
      Left = 519
      Top = 9
      Width = 63
      Height = 52
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = ImportlBtnClick
    end
    object ExcelBtn: TButton
      Left = 588
      Top = 9
      Width = 63
      Height = 52
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = ExcelBtnClick
    end
    object DONVIMAEdit: TEdit
      Left = 293
      Top = 41
      Width = 112
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1576
    Height = 298
    Align = alClient
    BiDiMode = bdLeftToRight
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    FrozenCols = 10
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    RowHeight = 20
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'T_MA'
        Footers = <>
        Title.Caption = #26376#24180'|T_MA'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_Ma'
        Footer.FieldName = 'NV_MA'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #21729#24037#24037#34399'|NV_MA'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_Ten'
        Footers = <>
        Title.Caption = #21729#24037#22995#21517'|NV_Ten'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_MA'
        Footers = <>
        Title.Caption = #21934#20301#20195#30908'|DV_MA'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_Ten'
        Footers = <>
        Title.Caption = #21934#20301#21517#31281'|DV_TEN'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_Ngayvao'
        Footers = <>
        Title.Caption = #21040#32887#26085'|NGAYVAO'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CVU_MA'
        Footers = <>
        Title.Caption = #32887#32026#20195#30908'|CVU_MA'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CVU_TEN'
        Footers = <>
        Title.Caption = #32887#32026#21517#31281'|CVU_TEN'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CV_MA'
        Footers = <>
        Title.Caption = #24037#20316#20195#30908'|CV_MA'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CV_TEN'
        Footers = <>
        Title.Caption = #24037#20316#25551#36848'|CV_TEN'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_THOIVIEC'
        Footers = <>
        Title.Caption = #38626#32887'|THOIVIEC'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TV_NgayThoiViec'
        Footers = <>
        Title.Caption = #38626#32887#26085'|NgayThoiViec'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SONGAYCONG'
        Footers = <>
        Title.Caption = #24037#20316#26178#25976'|SONGAYCONG'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_SONGAYCONGTRONGTHANG'
        Footers = <>
        Title.Caption = #26376#22825#25976'|SONGAYCONGTRONGTHANG'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIDQ'
        Footers = <>
        Title.Caption = #27665#20853'|NGHIDQ'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIR1'
        Footers = <>
        Title.Caption = #23130#21930#20551'|NGHIR1'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIP'
        Footers = <>
        Title.Caption = #24180#20551'|NGHIP'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIR'
        Footers = <>
        Title.Caption = #31680#26085'|NGHIR'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIRO'
        Footers = <>
        Title.Caption = #20107#20551'|NGHIRO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIOM'
        Footers = <>
        Title.Caption = #30149#20551'|NGHIOM'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIST'
        Footers = <>
        Title.Caption = #27969#29986#20551'|NGHIST'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITS'
        Footers = <>
        Title.Caption = #29986#20551'|NGHITS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIO'
        Footers = <>
        Title.Caption = #26336#24037'|NGHIO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINO'
        Footers = <>
        Title.Caption = #28961#34218#20551'|NGHINO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIKHAMTHAI'
        Footers = <>
        Title.Caption = #29986#27298#20551'|NGHIKHAMTHAI'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIDS'
        Footers = <>
        Title.Caption = #20581#24247#35519#39178'|NGHIDS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIKHHGD'
        Footers = <>
        Title.Caption = #29983#32946#35336#30059'|NGHIKHHGD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIPD'
        Footers = <>
        Title.Caption = #26202#29677#20572#24037'|NGHIPD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIQS'
        Footers = <>
        Title.Caption = #36557#20107#20551'|NGHIQS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITNLD'
        Footers = <>
        Title.Caption = #28797#38627#21214#21205'|NGHITNLD'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITS1'
        Footers = <>
        Title.Caption = #38506#29986'|NGHITS1'
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo1'
        Footers = <>
        Title.Caption = #28961#34218#20551'|NGHINo1'
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHICO'
        Footers = <>
        Title.Caption = #23401#23376#30149'|NGHICO'
        Width = 48
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIPt'
        Footers = <>
        Title.Caption = #22825#28797'|NGHIPt'
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHICC'
        Footers = <>
        Title.Caption = #25563#29677'|NGHICC'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo2'
        Footers = <>
        Title.Caption = #24213#34218#20572#24037'|L_NGHINo2'
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo3'
        Footers = <>
        Title.Caption = 'No3 '#20572#24037'|L_NGHINo3'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo4'
        Footers = <>
        Title.Caption = 'No4 '#20572#24037'|L_NGHINo4'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo5'
        Footers = <>
        Title.Caption = 'No5 '#20572#24037'|L_NGHINo5'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo6'
        Footers = <>
        Title.Caption = 'No6 '#20572#24037'|L_NGHINo6'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo7'
        Footers = <>
        Title.Caption = 'No7 '#20572#24037'|L_NGHINo7'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIF0'
        Footers = <>
        Title.Caption = #30906#35386#32773#25918#20551' |L_NGHIF0'
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'HESONGAYCONG'
        Footers = <>
        Title.Caption = #24046#21220#31995#25976'|HESONGAYCONG'
        Width = 64
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 394
    Top = 248
  end
  object HRMQry: TMyADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select  ST_LUONG.*,'
      
        '        case when L_NGHIO>0 or NV_THOIVIEC=1 OR  (NV_NGAYVAO>='#39'2' +
        '021/01/01'#39' and NV_NGAYVAO<='#39'2021/01/31'#39' ) or (L_NGHIRO/8)>3 or '
      
        '                 ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NGHIR+L_NGHIOM+L_' +
        'NGHIST+L_NGHITS+L_NGHIO+L_NGHINO+L_NGHIKHAMTHAI+L_NGHIDS+L_NGHIK' +
        'HHGD+L_NGHIPD+L_NGHIQS+L_NGHITNLD+L_NGHITS1+L_NGHINo1+L_NGHICO+L' +
        '_NGHIPt+L_NGHICC+L_NGHINo2)/8)>(L_SONGAYCONGTRONGTHANG/2) then'
      #9#9'       0'
      #9#9'     else'
      
        #9#9#9'   case when  L_NGHIRO=0 and ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NG' +
        'HIR+L_NGHIOM+L_NGHIST+L_NGHITS+L_NGHIO+L_NGHINO+L_NGHIKHAMTHAI+L' +
        '_NGHIDS+'
      
        '                                    L_NGHIKHHGD+L_NGHIPD+L_NGHIQ' +
        'S+L_NGHITNLD+L_NGHITS1+L_NGHINo1+L_NGHICO+L_NGHIPt+L_NGHICC+L_NG' +
        'HINo2)/8)<=4 then 1 else 0.5 end'
      '             end'
      #9'    as HESONGAYCONG'
      'from ('
      'Select '#39'01-2021'#39' as T_MA,'
      '       ST_NHANVIEN.NV_Ma, '
      '       ST_NHANVIEN.NV_Ten, '
      '       ST_GIOQUETTHE_NV.DV_MA, '
      '       ST_DONVI.DV_Ten,  '
      '       ST_NHANVIEN.NV_Ngayvao, '
      '       ST_NHANVIEN.CVU_MA, '
      '       ST_CHUCVU.CVU_TEN, '
      '       ST_NHANVIEN.CV_MA, '
      '       ST_CONGVIEC.CV_TEN,'
      
        '       Case when ST_NHANVIEN.NV_Ngayvao=ST_NHANVIEN.NV_NgayTV th' +
        'en 1 '
      
        '            else Case when IT_CHUYENDONVI.DV_MA IS NULL  THEN 0 ' +
        'ELSE ISNULL(ST_NHANVIEN.IT_DDNGHIVIEC,0) end  End AS NV_THOIVIEC' +
        ', '
      #9'      IT_CHUYENDONVI.NGAY AS TV_NgayThoiViec,'
      '       ST_THANG.T_SONGAYCONG as L_SONGAYCONGTRONGTHANG'
      
        '       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 or ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=2 or ST_GIOQUETTHE.CC_HESONGAYCONG=4 or ' +
        ' '
      
        '             (ST_GIOQUETTHE.CC_HESONGAYCONG=3 and ST_GIOQUETTHE.' +
        'CA_MA in ('#39'Ca 1'#39','#39'Ca 2'#39','#39'Ca 3'#39','#39'Ca 4'#39','#39'Ca 6'#39','#39'Ca 7'#39','#39'Ca HC'#39','#39'Ca0' +
        '1'#39','#39'Ca02'#39','#39'Ca03'#39') ) ) '
      
        '            then ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end)  as ' +
        'SONGAYCONG'
      
        '       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'Dq'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDQ'
      
        '       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'R1'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIR1 '
      
        '       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'P'#39') then 8-' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIP'
      
        '       ,SUM(CASE WHEN ST_GIOQUETTHE.CC_GIOBINHTHUONG=0 AND ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=3 THEN 8 - ( CASE WHEN CC_HESONGAYCONG=' +
        '1 THEN ISNULL(ST_GIOQUETTHE.CC_GIOBINHTHUONG,0) ELSE 0 END ) ELS' +
        'E 0 END) AS L_NGHIR'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'RO'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIRO'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'OM'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIOM'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'ST'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIST'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'TS'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'O'#39') then 8-' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIO'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'NO'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINO'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'KThai'#39') the' +
        'n 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHAMTHAI'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'Ds'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDS'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'KHHGD'#39') the' +
        'n 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHHGD'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'PD'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPD'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'QS'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIQS'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'TNLD'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITNLD'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'TS1'#39') then ' +
        '8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS1'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No1'#39') then ' +
        '8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo1'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'CO'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICO'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'Pt'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPt'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'CC'#39') then 8' +
        '-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICC'
      
        #9'      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIO' +
        'QUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No2'#39') then ' +
        '8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo2'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No3'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo3'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No4'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo4'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No5'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo5'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No6'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo6'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'No7'#39') then' +
        ' 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo7'
      
        '        ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GI' +
        'OQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA='#39'F0'#39') then ' +
        '8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIF0'
      'From  HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN '
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTH' +
        'E ON ST_NHANVIEN.NV_MA = ST_GIOQUETTHE.NV_MA'
      'Left join ('
      'select * from ('
      
        'Select ST_GIOQUETTHE.NV_MA,ST_GIOQUETTHE.DV_MATL as DV_MA,ST_GIO' +
        'QUETTHE.QT_NGAY,ROW_NUMBER() over (PARTITION BY NV_MA ORDER BY Q' +
        'T_NGAY DESC) as  rn'
      'from HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_GI' +
        'OQUETTHE.DV_MATL = ST_DONVI.DV_MA '
      
        'where  ST_GIOQUETTHE.QT_NGAY BETWEEN '#39'2021/01/01'#39'  AND '#39'2021/01/' +
        '31'#39'  and ST_DONVI.X_MA_ <>'#39'TAM'#39'  '
      
        ' ) ST_GIOQUETTHE where rn=1 ) ST_GIOQUETTHE_NV on ST_GIOQUETTHE_' +
        'NV.NV_MA=ST_NHANVIEN.NV_MA '
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_GIO' +
        'QUETTHE_NV.DV_MA = ST_DONVI.DV_MA'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC ON ' +
        'ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_CHUCVU ST_CHUCVU  ON ST_' +
        'NHANVIEN.CVU_MA = ST_CHUCVU.CVU_MA'
      
        'LEFT join HumanDB.[P0104-TYXUAN].dbo.ST_THANG ST_THANG on ST_THA' +
        'NG.T_MA='#39'01-2021'#39' '
      
        'LEFT JOIN (Select NV_MA,Min(NGAY) as NGAY,Max(DV_MA) as DV_MA fr' +
        'om HumanDB.[P0104-TYXUAN].dbo.IT_CHUYENDONVI IT_CHUYENDONVI wher' +
        'e IT_CHUYENDONVI.DV_MA='#39#39' AND NGAY BETWEEN '#39'2021/01/01'#39'  AND '#39'20' +
        '21/01/31'#39' Group by NV_MA) IT_CHUYENDONVI ON ST_NHANVIEN.NV_Ma=IT' +
        '_CHUYENDONVI.NV_MA '
      
        'WHERE ST_NHANVIEN.NV_MA NOT IN (SELECT NV_MA FROM HumanDB.[P0104' +
        '-TYXUAN].dbo.ST_NHANVIENTHOIVIEC ST_NHANVIENTHOIVIEC where TV_Ng' +
        'ayThoiViec<'#39'2021/01/01'#39') '
      
        '   AND ST_NHANVIEN.NV_Ma NOT IN (SELECT NV_MA AS NGAY FROM Human' +
        'DB.[P0104-TYXUAN].dbo.IT_CHUYENDONVI IT_CHUYENDONVI WHERE DV_MA=' +
        #39#39' and  NGAY<'#39'2021/01/01'#39')  '
      '   AND IsNull(ST_NHANVIEN.DV_MA,'#39#39')<>'#39#39'  '
      #9'  AND ST_NHANVIEN.NV_NGAYVAO <= '#39'2021/01/31'#39' '
      
        #9'  AND ST_GIOQUETTHE.QT_NGAY BETWEEN '#39'2021/01/01'#39'  AND '#39'2021/01/' +
        '31'#39' '
      ' AND ST_DONVI.KHU IN ('#39'A'#39','#39'DVC'#39','#39'HC'#39')'
      '      AND ST_NHANVIEN.NV_MA like '#39'21191%'#39' '
      
        'Group by ST_NHANVIEN.NV_Ma,ST_NHANVIEN.NV_Ten, ST_GIOQUETTHE_NV.' +
        'DV_MA,ST_DONVI.DV_Ten,  ST_NHANVIEN.NV_Ngayvao,ST_NHANVIEN.CV_MA' +
        ',ST_CONGVIEC.CV_TEN,ISNULL(IT_DDNGHIVIEC,0),IT_CHUYENDONVI.NGAY,' +
        'IT_CHUYENDONVI.DV_MA,ST_NHANVIEN.NV_NgayTV, '
      
        '         ST_NHANVIEN.CVU_MA, ST_CHUCVU.CVU_TEN, ST_NHANVIEN.CM_M' +
        'A,ST_CONGVIEC.CV_TEN, ST_THANG.T_SONGAYCONG '
      ') ST_LUONG '
      'Order by DV_MA,NV_MA')
    Left = 392
    Top = 200
    object HRMQryT_MA: TStringField
      FieldName = 'T_MA'
      ReadOnly = True
      Size = 7
    end
    object HRMQryNV_Ma: TWideStringField
      FieldName = 'NV_Ma'
      Size = 50
    end
    object HRMQryNV_Ten: TWideStringField
      FieldName = 'NV_Ten'
      Size = 50
    end
    object HRMQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object HRMQryDV_Ten: TWideStringField
      FieldName = 'DV_Ten'
      Size = 50
    end
    object HRMQryNV_Ngayvao: TDateTimeField
      FieldName = 'NV_Ngayvao'
    end
    object HRMQryCVU_MA: TWideStringField
      FieldName = 'CVU_MA'
      Size = 50
    end
    object HRMQryCVU_TEN: TWideStringField
      FieldName = 'CVU_TEN'
      Size = 50
    end
    object HRMQryCV_MA: TWideStringField
      FieldName = 'CV_MA'
      Size = 50
    end
    object HRMQryCV_TEN: TWideStringField
      FieldName = 'CV_TEN'
      Size = 500
    end
    object HRMQryNV_THOIVIEC: TIntegerField
      FieldName = 'NV_THOIVIEC'
      ReadOnly = True
    end
    object HRMQryTV_NgayThoiViec: TWideStringField
      FieldName = 'TV_NgayThoiViec'
      ReadOnly = True
      Size = 10
    end
    object HRMQryL_SONGAYCONGTRONGTHANG: TIntegerField
      FieldName = 'L_SONGAYCONGTRONGTHANG'
    end
    object HRMQrySONGAYCONG: TFloatField
      FieldName = 'SONGAYCONG'
      ReadOnly = True
    end
    object HRMQryL_NGHIDQ: TFloatField
      FieldName = 'L_NGHIDQ'
      ReadOnly = True
    end
    object HRMQryL_NGHIR1: TFloatField
      FieldName = 'L_NGHIR1'
      ReadOnly = True
    end
    object HRMQryL_NGHIP: TFloatField
      FieldName = 'L_NGHIP'
      ReadOnly = True
    end
    object HRMQryL_NGHIR: TFloatField
      FieldName = 'L_NGHIR'
      ReadOnly = True
    end
    object HRMQryL_NGHIRO: TFloatField
      FieldName = 'L_NGHIRO'
      ReadOnly = True
    end
    object HRMQryL_NGHIOM: TFloatField
      FieldName = 'L_NGHIOM'
      ReadOnly = True
    end
    object HRMQryL_NGHIST: TFloatField
      FieldName = 'L_NGHIST'
      ReadOnly = True
    end
    object HRMQryL_NGHITS: TFloatField
      FieldName = 'L_NGHITS'
      ReadOnly = True
    end
    object HRMQryL_NGHIO: TFloatField
      FieldName = 'L_NGHIO'
      ReadOnly = True
    end
    object HRMQryL_NGHINO: TFloatField
      FieldName = 'L_NGHINO'
      ReadOnly = True
    end
    object HRMQryL_NGHIKHAMTHAI: TFloatField
      FieldName = 'L_NGHIKHAMTHAI'
      ReadOnly = True
    end
    object HRMQryL_NGHIDS: TFloatField
      FieldName = 'L_NGHIDS'
      ReadOnly = True
    end
    object HRMQryL_NGHIKHHGD: TFloatField
      FieldName = 'L_NGHIKHHGD'
      ReadOnly = True
    end
    object HRMQryL_NGHIPD: TFloatField
      FieldName = 'L_NGHIPD'
      ReadOnly = True
    end
    object HRMQryL_NGHIQS: TFloatField
      FieldName = 'L_NGHIQS'
      ReadOnly = True
    end
    object HRMQryL_NGHITNLD: TFloatField
      FieldName = 'L_NGHITNLD'
      ReadOnly = True
    end
    object HRMQryL_NGHITS1: TFloatField
      FieldName = 'L_NGHITS1'
      ReadOnly = True
    end
    object HRMQryL_NGHINo1: TFloatField
      FieldName = 'L_NGHINo1'
      ReadOnly = True
    end
    object HRMQryL_NGHICO: TFloatField
      FieldName = 'L_NGHICO'
      ReadOnly = True
    end
    object HRMQryL_NGHIPt: TFloatField
      FieldName = 'L_NGHIPt'
      ReadOnly = True
    end
    object HRMQryL_NGHICC: TFloatField
      FieldName = 'L_NGHICC'
      ReadOnly = True
    end
    object HRMQryL_NGHINo2: TFloatField
      FieldName = 'L_NGHINo2'
      ReadOnly = True
    end
    object HRMQryL_NGHINo3: TFloatField
      FieldName = 'L_NGHINo3'
      ReadOnly = True
    end
    object HRMQryL_NGHINo4: TFloatField
      FieldName = 'L_NGHINo4'
      ReadOnly = True
    end
    object HRMQryL_NGHINo5: TFloatField
      FieldName = 'L_NGHINo5'
      ReadOnly = True
    end
    object HRMQryL_NGHINo6: TFloatField
      FieldName = 'L_NGHINo6'
      ReadOnly = True
    end
    object HRMQryL_NGHINo7: TFloatField
      FieldName = 'L_NGHINo7'
      ReadOnly = True
    end
    object HRMQryL_NGHIF0: TFloatField
      FieldName = 'L_NGHIF0'
      ReadOnly = True
    end
    object HRMQryHESONGAYCONG: TBCDField
      FieldName = 'HESONGAYCONG'
      ReadOnly = True
      Precision = 2
      Size = 1
    end
  end
  object QTemp: TMyADOQuery
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 600
    Parameters = <>
    Left = 344
    Top = 200
  end
end
