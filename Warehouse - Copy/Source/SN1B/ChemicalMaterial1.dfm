object ChemicalMaterial: TChemicalMaterial
  Left = 235
  Top = 139
  Width = 1386
  Height = 498
  Caption = 'ChemicalMaterial'
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
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 19
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 188
      Top = 19
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label5: TLabel
      Left = 0
      Top = 49
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH:'
    end
    object Label6: TLabel
      Left = 512
      Top = 51
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label1: TLabel
      Left = 210
      Top = 51
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCDate:'
    end
    object Label4: TLabel
      Left = 376
      Top = 51
      Width = 41
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 480
      Top = 20
      Width = 81
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type:'
    end
    object Label8: TLabel
      Left = 686
      Top = 20
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per%:'
    end
    object Label9: TLabel
      Left = 832
      Top = 18
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Xuong'
    end
    object DDBH_MLab: TLabel
      Left = 53
      Top = 72
      Width = 147
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 904
      Top = 42
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 269
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 376
      Top = 16
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 80
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 4
    end
    object Button2: TButton
      Left = 994
      Top = 42
      Width = 80
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 596
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 285
      Top = 48
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 416
      Top = 48
      Width = 98
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object CB1: TComboBox
      Left = 564
      Top = 16
      Width = 121
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 9
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Normal'
        'Replenish')
    end
    object PerCombo: TComboBox
      Left = 758
      Top = 16
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 10
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        '>100%'
        '<100%'
        '<>100%')
    end
    object DTP3: TDateTimePicker
      Left = 801
      Top = 48
      Width = 97
      Height = 24
      Date = 42884.438314814810000000
      Time = 42884.438314814810000000
      TabOrder = 11
    end
    object CK1: TCheckBox
      Left = 719
      Top = 52
      Width = 83
      Height = 17
      Caption = 'InWare:'
      TabOrder = 12
    end
    object CQDHCombo: TComboBox
      Left = 917
      Top = 14
      Width = 66
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 13
      Text = 'VR%'
      Items.Strings = (
        'VR%'
        'VR1'
        'VR2'
        'VR3')
    end
    object CB2: TCheckBox
      Left = 189
      Top = 51
      Width = 17
      Height = 17
      TabOrder = 14
    end
    object Button3: TBitBtn
      Left = 994
      Top = 7
      Width = 80
      Height = 33
      Caption = 'Order'
      TabOrder = 15
      OnClick = Button3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000F3F3F3F3F3F3
        F4F4F4F2F3F3F3F3F3F5F5F5F2F2F2F5F6F6F6F7F7C4C1BDBEB9B6C0BCB8C2BD
        B9BDB8B4CECBC8F7F8F9F4F4F4F3F4F4F4F4F4F2F3F3F4F4F4F3F3F3F2F4F4F4
        F4F4F4F5F5F2F3F3F3F3F3F4F6F6F4F3F3F3F3F3F7F6F6F3F4F4F9F9FA48382C
        3221143826193726182E1C0D6C6057FFFFFFF4F4F4F3F3F3F4F4F4F5F5F5F1F2
        F2F5F5F5F5F5F5F3F3F3F1F1F1F5F5F5F3F3F3F0F1F1F2F2F2F4F4F4F0F0F0F7
        F7F7F7F8F85D4F44493A2D4F3F334D40334536287D736AFBFCFDF2F3F3F4F4F4
        F2F3F3F2F2F2F7F7F7F2F2F2F1F1F1F5F5F5F4F5F5F3F3F3F3F3F3F4F4F4F4F4
        F4F1F2F2F6F7F7F0F0F0F7F7F85A4C42483A2D4E3F324D3F324535277B7068FE
        FEFFF2F2F2F2F3F3F4F4F4F5F5F5F1F1F1F3F3F3F5F5F5F2F2F2F4F4F4F4F4F4
        F2F2F2F4F4F4F2F3F3F4F4F4F3F3F3F4F4F4F7F8F95B4D43493A2C4E3F324D3F
        324435277D7169FEFFFFF3F5F5F3F3F3F4F4F4F3F4F4F2F3F3F4F5F5F3F3F3F4
        F4F4F3F3F3F2F3F3F5F5F5F2F2F2F5F5F5F2F2F2F3F4F4F5F5F5FAF9F95C4D43
        493A2C4E3F324E3F324435277C7069FEFFFFF3F3F3F3F4F4F2F3F3F3F3F3F4F5
        F5F3F3F3F4F4F4F3F4F4F4F4F4F3F3F3F2F2F2F6F6F6F2F2F2F3F4F4F4F4F4F4
        F5F5F9F9FA5C4D41493A2C4E3F324E3F324435277C7169FFFFFFF4F5F5F2F2F2
        F4F4F4F5F5F5F1F1F1F5F5F5F4F4F4F3F3F3F2F2F2F3F3F3F5F5F5F0F0F0F5F5
        F5F3F3F3F0F0F0F6F7F8F8F9F85C4F44493A2C4E3F324E3F324435277C7169FD
        FEFEF2F2F2F5F5F5F2F2F2F2F2F2F7F7F7F0F1F1F3F3F3F4F4F4F6F6F6F3F3F3
        F1F1F1F4F4F4F2F2F2F4F3F3F6F6F6F2F2F2F8F9F95A4C42493A2C4E3F324E3F
        324435277C7069FEFFFFF4F4F4F1F1F1F4F4F4F5F5F5EDEEEEF4F4F4F4F5F5F2
        F2F2F4F3F3F3F4F4F3F3F3F3F3F3F4F4F4F3F3F3F3F4F4F3F3F3F8F9F95B4E43
        493A2C4E3F324E3F324435287C7169FCFDFEF3F3F3F3F3F3F4F4F4F2F2F2F2F2
        F2F2F2F2F3F3F3F3F3F3F2F2F2F3F3F3F3F3F3F2F2F2F6F6F6F8FAFAF2F2F2F5
        F5F6F9F8F85C4E43493A2C4E3F324E3F324435277C7169FFFFFFF2F2F2F4F4F4
        F8FAFAF6F6F6F2F3F3F4F4F4F2F3F3F5F5F5F5F5F5F2F2F2F3F3F3F9FBFBE9E8
        E7C0BCB9FCFDFDF3F4F4FAFAFA57493D493A2D4E3F334E3F334536287C6F67FF
        FFFFF5F5F5FBFBFCB2ACA7FEFFFFF5F5F5F3F3F3F4F4F4F2F2F2F1F2F2F4F6F6
        F5F5F5FFFFFF584A3EB2ABA7FEFFFFFCFDFDF4F3F33726184D3E314E3F334E3F
        314B3C2F4D3D31FFFFFFF4F5F6FFFFFF74695F8A8079FFFFFFF3F3F4F2F2F2F5
        F5F5F6F6F6F3F3F3FFFFFF796E65271506BEB9B5FFFFFFFAFAFA64564C453629
        4D3F334E3F334E3F324E3F323D2D20877D75FFFFFFFFFFFF8E847C2817079F99
        93FFFFFFF6F6F6F1F1F1F2F3F3FFFFFF91867E3A2A1D453629796D648C847C51
        41354231234D3F334D3F324E3F324E3F314E3F324E3F323D2D1F5A4D42978E88
        63564B493A2D362417B8B2AEFFFFFFF4F4F4FFFFFFB1AAA53827194D3E304D3F
        32453527403123483A2C4D3F324E3F324D3F334E3F314E3F324E3F324E3F324E
        3F3247382A3F2F2148392C4D3F324C3C2F362517E1DEDCFFFFFFBCB7B2352417
        4D3F314E3F334D3F334E3F324E3F324D3F324E3F324C3F314D3F314E3F324E3F
        324E3F324E3F314E3F324C3F334E3F324C3F324E3F324E3F324B3C303A291CDD
        DBD849392D47382B4E3F324D3F314C3F314E3F324D3F324E3F324E3F324D3F32
        4E3F324030224636284E3F324E3F324E3F324D3F324D3F314D3F324D3F324E3F
        324E40323D2D206B5E54C0BBB739291B4D3E324D3F324D3F324E3F324E3F324D
        3F324E3F3248382C3825188D847E67594E3A2B1D493B2E4E3F324E3F324E3F32
        4D3F324D3F324E3F324A3A2E413124D6D2CFFFFFFFADA69F3726184E3E314E3F
        324535294031233D2C1F39281A54473BB0A9A4FFFFFFFFFFFF978E864D3E3237
        25183F2F2141312349392C4D3F324C3C3039291ACAC5C2FFFFFFF4F4F4FFFFFF
        867C743B2A1D48372B6F635A7E746C938A82BAB5B0EBEBE9FFFFFFF3F3F3F4F5
        F5FFFFFFDFDCDCB5AEA9887F77847B725E50464A3B2E362517A9A29CFFFFFFF3
        F3F3F4F4F4F4F4F4FFFFFF756A602A1709C2BCB8FFFFFFFFFFFFFBFDFDF9F9F9
        F3F3F3F0F2F2F6F7F7F2F2F2FAF9F9FDFFFFFFFFFFFFFFFF8D847C2E1C0E9890
        89FFFFFFF4F4F4F4F4F4F2F3F3F3F3F3F7F7F7FFFFFF4F3F33B2ACA7FEFFFFF3
        F4F4F3F3F3F4F3F3F3F3F3F4F5F5F0F1F1F4F4F4F2F3F3F4F3F3F2F2F2FFFFFF
        7669617D726AFFFFFFF4F4F4F4F4F4F3F3F3F5F5F5F3F2F2F2F2F2FBFDFDEEED
        ECC2BEBBFEFEFFF2F2F2F3F3F3F4F4F4F4F4F4F0F0F0F6F6F6F2F3F3F4F4F4F3
        F3F3F5F5F5FCFDFEB4AEAAFFFFFEF3F3F4F4F4F4F5F5F5F2F2F2}
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1370
    Height = 378
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
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
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH1'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'cldhz'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|Material ID'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|English name'
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|TW name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 45
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'TCLYL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29992#37327'|TCLYL'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #38936#37327'|TempQty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #23526#30332'|Qty'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'THQty'
        Footers = <>
        Title.Caption = #36864#24235'|THQty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Title.Caption = #27604#29575'|Person'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU|Article'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411'|XieMing'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #26028#20992'|DAOMH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CalDate'
        Footers = <>
        Title.Caption = #35336#31639#26085'|CalDate'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #24288#21029'|CQDH'
        Width = 57
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select cldh,DDBH,cldhz,ZLBH1,TCLYL,zwpm,ywpm,CQDH,Qty/TCLYL_M*TC' +
        'LYL as Qty,TempQty/TCLYL_M*TCLYL as TempQty,DWBH,Article,XieMing' +
        ',Pairs,CalDate,THQty,DAOMH from ('
      'Select ZLZLS3.*,ZLZLS3_M.TCLYL_M from('
      
        'SELECT max(ZLZLS3.cldh) as cldh,max(ZLZLS3.DDBH) as DDBH,right(Z' +
        'LZLS3.cldhz,10) as cldhz,DDZL.ZLBH1 as ZLBH1,Convert(float,round' +
        '(sum(ZLZLS3.TCLYL),2)) as TCLYL,'
      
        'CLZL.zwpm,CLZL.ywpm,DDZL.CQDH ,isnull(KCLLS.Qty,0) as Qty,isnull' +
        '(KCLLS.TempQty,0) as TempQty,CLZL.DWBH,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL.Article else XXZL.Ar' +
        'ticle end as Article,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL_XXZL.XieMing else XX' +
        'ZL.XieMing end as XieMing,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL.Quantity else ERP_DD' +
        'ZL.Pairs end as Pairs,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL_XXZL.DAOMH else XXZL' +
        '.DAOMH end as DAOMH,'
      'Max(ZLZLS3.USERDATE) as CalDate,isnull(KCRKS.Qty,0) as THQty'
      'FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND  D' +
        'DZL.CQDH = ZLZLS3.CQDH'
      'LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh'
      
        'LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh ' +
        ' and ZLZLS3.cldhz=CLZLSL.cldhz'
      'and  CLZLSL.cldh=CLZL.cldh'
      
        'left join (select KCLL.GSBH,KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLL' +
        'S.Qty),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty'
      '           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '           where KCLL.USERDate>getdate()-270 '
      '           and KCLL.GSBH like '#39'VR%'#39
      '           and KCLLS.SCBH like '#39'Y1712-0570%'#39' '
      '           group by KCLL.GSBH,KCLLS.SCBH,KCLLS.CLBH) KCLLS'
      
        '     on  '#39'A'#39'+KCLLS.CLBH=CLZL.CLDH and KCLLS.GSBH=DDZL.CQDH  --KC' +
        'LLS.SCBH=DDZL.ZLBH1 and'
      
        'left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,' +
        '2,10)'
      'Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1'
      'left join ('
      
        'select KCRKS.GSBH,KCRKS.CGBH, KCRKS.CLBH,round(sum( case when KC' +
        'RK.CFMID<>'#39'NO'#39' then KCRKS.Qty else 0 end),2) as Qty from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where KCRKS.CGBH='#39'Y1712-0570A'#39
      '      and KCRKS.MEMO like '#39'VR%'#39' and KCRK.SFL='#39'THU HOI'#39
      
        'group by KCRKS.GSBH,KCRKS.CGBH, KCRKS.CLBH ) KCRKS on KCRKS.CGBH' +
        '=DDZL.ZLBH1 and '#39'A'#39'+KCRKS.CLBH=CLZL.CLDH and KCRKS.GSBH=ZLZLS3.C' +
        'QDH'
      
        'left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.She' +
        'hao=xxzl.shehao'
      'and DDZL.ZLBH1 not like '#39'LAIV%'#39
      
        'left join YPZL on DDZL.ZLBH1=YPZL.YPDH  and DDZL.ZLBH1 like '#39'LAI' +
        'V%'#39
      
        'left join XXZL YPZL_XXZL on  YPZL_XXZL.XieXing=YPZL.XieXing and ' +
        'YPZL_XXZL.Shehao=YPZL.shehao and DDZL.ZLBH1 like '#39'LAIV%'#39
      ''
      'where  ZLZLS3.TCLYL>0 and DDZL.CQDH like '#39'VR%'#39' '
      'and DDZL.ZLBH1 like '#39'Y1712-0570A%'#39
      
        'GROUP BY  ZLZLS3.cldhz ,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH' +
        ',KCLLS.Qty,KCLLS.TempQty ,CLZL.DWBH,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL.Article else XXZL.Ar' +
        'ticle end,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL_XXZL.XieMing else XX' +
        'ZL.XieMing end,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL.Quantity else ERP_DD' +
        'ZL.Pairs  end,KCRKS.Qty,'
      
        'case when DDZL.ZLBH1 like '#39'LAIV%'#39' then YPZL_XXZL.DAOMH else XXZL' +
        '.DAOMH end'
      ')ZLZLS3'
      ''
      'left join ('
      
        '     select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as cldhz,' +
        'DDZL.CQDH,Convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL_M'
      '   FROM LIY_DD.dbo.ZLZLS3  ZLZLS3'
      
        '   LEFT JOIN LIY_DD.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND' +
        ' DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN LIY_DD.dbo.CLZL CLZL ON ZLZLS' +
        '3.cldhz = CLZL.cldh '
      
        '   LEFT JOIN LIY_DD.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cl' +
        'dh and ZLZLS3.cldhz=CLZLSL.cldhz '
      
        '   left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cld' +
        'hz,2,10)'
      '   Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 '
      
        '   left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.' +
        'Shehao=xxzl.shehao '
      
        '   where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='#39'Y1712-0570'#39' and ZLZLS3' +
        '.CQDH like '#39'VR%'#39
      '          and ZLZLS3.CLDHZ like '#39'%'#39' '
      
        '   GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,DDZL.CQDH ) ZLZLS3_M on  ZL' +
        'ZLS3.cldhz=ZLZLS3_M.cldhz and   ZLZLS3.CQDH=ZLZLS3_M.CQDH '
      ') ZLZLS3'
      ''
      'union all'
      
        'select Null as cldh,Null as DDBH,KCLLS.CLBH as cldhz,KCLLS.SCBH ' +
        'as ZLBH1,0 as TCLYL,CLZL.ZWPM,CLZL.YWPM,KCLL.GSBH as CQDH,Sum(KC' +
        'LLS.Qty) as Qty,Sum(KCLLS.TempQty) as TempQty,CLZL.DWBH,DDZL.Art' +
        'icle,'
      
        '       case when KCLLS.SCBH like '#39'LAIV%'#39' then YPZL_XXZL.XieMing ' +
        'else XXZL.XieMing end as XieMing,DDZL.Pairs,null as CalDate ,isn' +
        'ull(KCRKS.Qty,0) as THQty,'
      
        '       case when KCLLS.SCBH like '#39'LAIV%'#39' then YPZL_XXZL.DAOMH el' +
        'se XXZL.DAOMH end as DAOMH'
      'from  KCLLS'
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        'left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl' +
        '.shehao'
      
        'left join YPZL on KCLLS.SCBH=YPZL.YPDH  and KCLLS.SCBH like '#39'LAI' +
        'V%'#39
      
        'left join XXZL YPZL_XXZL on  YPZL_XXZL.XieXing=YPZL.XieXing and ' +
        'YPZL_XXZL.Shehao=YPZL.shehao and KCLLS.SCBH like '#39'LAIV%'#39
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join ('
      
        'select KCRKS.GSBH,KCRKS.CGBH, KCRKS.CLBH,round(sum( case when KC' +
        'RK.CFMID<>'#39'NO'#39' then KCRKS.Qty else 0 end),2) as Qty from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where KCRKS.CGBH='#39'Y1712-0570'#39
      '      and KCRKS.MEMO like '#39'VR%'#39' and KCRK.SFL='#39'THU HOI'#39
      
        'group by KCRKS.GSBH,KCRKS.CGBH, KCRKS.CLBH ) KCRKS on KCRKS.CGBH' +
        '=kclls.SCBH and '#39'A'#39'+KCRKS.CLBH=CLZL.CLDH and KCRKS.GSBH=kcll.GSB' +
        'H'
      
        'WHERE KCLL.GSBH like '#39'VR%'#39' and NOT EXISTS(SELECT *  FROM LIY_DD.' +
        'dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and '#39'A'#39'+KCLLS.CLBH=ZLZL' +
        'S3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)'
      
        '   and KCLLS.SCBH like '#39'Y1712-0570%'#39' and KCLLS.CLBH like '#39'%'#39' and' +
        ' KCLLS.Qty>0'
      
        'Group by  KCLLS.CLBH,KCLLS.SCBH,CLZL.ZWPM,CLZL.YWPM,KCLL.GSBH,CL' +
        'ZL.DWBH,DDZL.Article,case when KCLLS.SCBH like '#39'LAIV%'#39' then YPZL' +
        '_XXZL.XieMing else XXZL.XieMing end,DDZL.Pairs,KCRKS.Qty,'
      
        'case when KCLLS.SCBH like '#39'LAIV%'#39' then YPZL_XXZL.DAOMH else XXZL' +
        '.DAOMH end    ')
    UpdateObject = UpMas
    Left = 296
    Top = 160
    object Query1cldhz: TStringField
      FieldName = 'cldhz'
      FixedChar = True
      Size = 16
    end
    object Query1ZLBH1: TStringField
      FieldName = 'ZLBH1'
      FixedChar = True
      Size = 18
    end
    object Query1TCLYL: TFloatField
      FieldName = 'TCLYL'
      DisplayFormat = '##,#0.00'
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 60
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 60
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 3
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1TempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1CalDate: TStringField
      FieldName = 'CalDate'
      FixedChar = True
      Size = 17
    end
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object Query1THQty: TCurrencyField
      FieldName = 'THQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 264
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
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
    object N2: TMenuItem
      Caption = '-'
    end
    object Set1: TMenuItem
      Caption = 'CLSL=Qty'
      Enabled = False
      OnClick = Set1Click
    end
    object Set2: TMenuItem
      Caption = 'CLSL=Qty-THQty'
      Enabled = False
      OnClick = Set2Click
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.ZLZLS3'
      'set'
      '  TCLYL = :TCLYL,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID'
      'where'
      '  cldh = :OLD_cldh'
      '  AND cldhz = :OLD_cldhz'
      '  AND DDBH = :OLD_DDBH'
      '  AND CQDH = :OLD_CQDH')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.ZLZLS3'
      '  (cldh, cldhz, DDBH, ZLBH1, TCLYL, USERDATE, USERID )'
      'values'
      '  (:cldh, :cldhz, :DDBH, :ZLBH1, :TCLYL, :USERDATE, :USERID )')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.ZLZLS3'
      'where'
      '  cldh = :OLD_cldh'
      '  AND cldhz = :OLD_cldhz'
      '  AND DDBH = :OLD_DDBH'
      '  AND CQDH = :OLD_CQDH')
    Left = 294
    Top = 192
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 160
  end
  object ExeQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 232
    Top = 192
  end
end
