object Traceability_Purchasing_Chemical: TTraceability_Purchasing_Chemical
  Left = 354
  Top = 272
  Width = 1767
  Height = 675
  Caption = 'Traceability_Purchasing_Chemical'
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
    Width = 1751
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 15
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 19
      Top = 47
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 246
      Top = 15
      Width = 48
      Height = 16
      Caption = 'SuppID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 227
      Top = 47
      Width = 72
      Height = 16
      Caption = 'SuppName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 438
      Top = 15
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 593
      Top = 14
      Width = 20
      Height = 16
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNoEdit: TEdit
      Left = 87
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 458
      Top = 38
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 87
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 546
      Top = 38
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object SuppIDEdit: TEdit
      Left = 302
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object SuppNameEdit: TEdit
      Left = 302
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 494
      Top = 11
      Width = 97
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
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 614
      Top = 11
      Width = 97
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
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1751
    Height = 555
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'MatPO#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'MATERIAL CODE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'MATERIAL DESCRIPTION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UNIT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'LOCATION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY ORDERED'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY INPUT W/H'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'VENDOR NAME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Address_Of_Buy_Com'
        Footers = <>
        Title.Caption = 'ADDRESS OF BUYING COMPANY'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Address_Of_Sell_Com'
        Footers = <>
        Title.Caption = 'ADDRESS OF SELL COMPANY'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'usprice'
        Footers = <>
        Title.Caption = 'PRICE USD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'vnprice'
        Footers = <>
        Title.Caption = 'PRICE VND'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = 'NUMBER OF INFORMATION DECLARATION/INVOICE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'BillNo'
        Footers = <>
        Title.Caption = 'BILL/NO DELIVERY NOTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CountryOrigin'
        Footers = <>
        Title.Caption = 'COUNTRY OF ORIGIN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'MaterialOrigin'
        Footers = <>
        Title.Caption = 'Origin of material'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CertificateOrigin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Title.Caption = 'Certificate of origin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        Title.Caption = 'Paid No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PaymentDate'
        Footers = <>
        Title.Caption = 'Paid date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Caption = 'Name of payer'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = 'Department'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Amount_USD'
        Footers = <>
        Title.Caption = 'Amount USD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Amount_VND'
        Footers = <>
        Title.Caption = 'Amount VND'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = 'INPUT W/H DATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = 'INPUT W/H NO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = 'PO DATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  CGZLS.GSBH, CGZLS.CGNO, CGZLS.CLBH,  CLZL.YWPM, CLZL.DWB' +
        'H , case when  CGZLS.ZSBH='#39'VC115'#39' then '#39'TW'#39' else '#39'VN'#39' end as CQD' +
        'H                          '
      
        '        , isnull(CGZLS.Qty, 0) as CGQty,  RKZL.RKQty,zszl.zsywjc' +
        ' as SupName,'#39'HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU' +
        ' VILLAGE, LONG HO DISTRICT, VINH LONG PROVINCE, VIETNAM'#39' as Addr' +
        'ess_Of_Buy_Com'
      #9#9', zszl.yjdz as Address_Of_Sell_Com '
      #9#9', RKZL.usprice,RKZL.vnprice,RKZL.DOCNO,RKZL.Declaretion'
      
        #9#9',case when CGZLS.ZSBH='#39'VC115'#39' then RKZL.BillNo else Bill_Info.' +
        'BillNo end as BillNo '
      
        '        ,case when CGZLS.ZSBH='#39'VC115'#39' then '#39'VIET NAM'#39' else Bill_' +
        'Info.Country end as CountryOrigin '
      
        '        ,Origin.Country as MaterialOrigin,Origin.DocFile as Cert' +
        'ificateOrigin,RKZL.FKBH,RKZL.PaymentDate,RKZL.USERNAME,RKZL.DepN' +
        'ame,RKZL.Amount_USD,RKZL.Amount_VND,RKZL.RKDate,RKZl.RKNO,CGZLS.' +
        'CGDate  '
      '                           '
      
        'from (                                                          ' +
        '                             '
      
        '      select CGZLS.CGNO, CGZLS.CLBH, CGZLS.Qty, CGZL.CGDate     ' +
        '                             '
      
        '             , CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH' +
        '                             '
      
        '      from CGZLS                                                ' +
        '                             '
      
        '      left join CGZL on CGZl.CGNO=CGZLS.CGNO                    ' +
        '                             '
      '           where CGZLS.YN!=0 and CGZLS.CLBH like '#39'W%'#39
      
        '               and CGZL.GSBH = '#39'VTX'#39'                            ' +
        '            '
      
        '                 and convert(smalldatetime,convert(varchar,CGZL.' +
        'CGDate,111)) between         '
      '                     '#39'2023/09/12'#39'and '#39'2023/11/11'#39
      
        '                 and CGZL.CGLX = 4                              ' +
        '                             '
      
        '      )  CGZLS                                                  ' +
        '                             '
      
        ' left join ( select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQt' +
        'y,  '
      
        '                    max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) a' +
        's RKDate, '
      
        '                    max(kcrks.usprice) as usprice,max(kcrks.vnpr' +
        'ice) as vnprice ,Declaretion,KCRK.DOCNO,KCRK.Memo as BillNo,KCRK' +
        '.ZSBH,zszl.yjdz '
      
        '         '#9#9#9#9'   ,CGZL_Payment.FKBH,CGZL_Payment.USERDATE as Paym' +
        'entDate,Busers.USERNAME,DepName '
      
        '                    ,round(((CGZL_Declaration.TONGTRIGIA_HOADON)' +
        '-(round((CGZL_Declaration.TONGTRIGIA_HOADON*(100-CGZL_PaymentS.P' +
        'ercent_TT)/100),2))),2)  as Amount_USD '
      
        '                    ,CGZL_VATNO.TONGTIEN_THANHTOAN as Amount_VND' +
        ' '
      '             from  KCRKS with (nolock)  '
      
        '             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RK' +
        'NO  '
      '        '#9'    left join KCPK on kcrk.RKNO=kcpk.PKNO '
      '        '#9'    left join zszl on kcrk.ZSBH=zszl.zsdh '
      
        '         '#9'  left join CGZL_PaymentS on kcpk.Declaretion=CGZL_Pay' +
        'mentS.DECLARATION and kcrk.DOCNO=CGZL_PaymentS.DOCNO '
      
        '       '#9'    left join CGZL_PaymentSS on CGZL_PaymentSS.VATNO=KCR' +
        'K.DOCNO and CGZL_PaymentSS.ZSBH_MST=zszl.tybh  '
      
        '       '#9'    left join CGZL_Payment on isnull(CGZL_PaymentS.FKBH,' +
        'CGZL_PaymentSS.FKBH)=CGZL_Payment.FKBH  '
      
        '             left join  CGZL_Declaration on CGZL_PaymentS.DECLAR' +
        'ATION=CGZL_Declaration.DECLARATION'
      
        '       '#9#9#9'left join  CGZL_VATNO on CGZL_VATNO.VATNO=CGZL_Payment' +
        'SS.VATNO and CGZL_PaymentSS.ZSBH_MST=CGZL_VATNO.ZSBH_MST'
      
        '             and CGZL_PaymentSS.KYHIEU_HOADON=CGZL_VATNO.KYHIEU_' +
        'HOADON  '
      
        '       '#9'    left join BDepartment on CGZL_Payment.DEPID=BDepartm' +
        'ent.ID  '
      
        '     '#9#9'    left join Busers on CGZL_Payment.USERID=Busers.USERID' +
        ' '
      '             where KCRK.SFL<>'#39'THU HOI'#39' and KCRK.CKBH='#39'VTXW'#39
      
        '              group by KCRK.ZSNO,KCRKS.CLBH,Declaretion,KCRK.DOC' +
        'NO,KCRK.MEMO,KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.' +
        'USERDATE,Busers.USERNAME,DepName '
      
        '                     ,CGZL_Declaration.TONGTRIGIA_HOADON,CGZL_Pa' +
        'ymentS.Percent_TT,CGZL_VATNO.TONGTIEN_THANHTOAN  ) RKZL   '
      #9#9#9#9#9' on RKZL.ZSNO = CGZLS.CGNO and RKZL.CLBH = CGZLS.CLBH     '
      'left join CLZL on CGZLS.CLBH = CLZL.CLDH  '
      'left join zszl on cgzls.zsbh=zszl.zsdh'#9
      'left join Bill_Info on RKZL.DOCNO=Bill_Info.DocNo '
      
        'left join CLZL_Origin Origin on CLZL.CLDH=Origin.CLBH and Origin' +
        '.GSBH='#39'VTX'#39'  '#9#9#9#9'                                               ' +
        ' '
      'where  1=2 and CLZL.ywpm like '#39'%%'#39
      'and   CLZL.ZWPM like '#39'%%'#39
      'order by CGZLS.CGNO ASC')
    Left = 530
    Top = 324
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 2
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
    end
    object Query1Address_Of_Buy_Com: TStringField
      FieldName = 'Address_Of_Buy_Com'
      FixedChar = True
      Size = 106
    end
    object Query1Address_Of_Sell_Com: TStringField
      FieldName = 'Address_Of_Sell_Com'
      FixedChar = True
      Size = 150
    end
    object Query1usprice: TFloatField
      FieldName = 'usprice'
      DisplayFormat = '##,#0.00000'
    end
    object Query1vnprice: TCurrencyField
      FieldName = 'vnprice'
      DisplayFormat = '##,#0'
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query1BillNo: TStringField
      FieldName = 'BillNo'
      FixedChar = True
      Size = 50
    end
    object Query1CountryOrigin: TStringField
      FieldName = 'CountryOrigin'
      FixedChar = True
      Size = 50
    end
    object Query1MaterialOrigin: TStringField
      FieldName = 'MaterialOrigin'
      FixedChar = True
      Size = 50
    end
    object Query1CertificateOrigin: TStringField
      FieldName = 'CertificateOrigin'
      FixedChar = True
      Size = 100
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1PaymentDate: TDateTimeField
      FieldName = 'PaymentDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1Amount_USD: TCurrencyField
      FieldName = 'Amount_USD'
      DisplayFormat = '##,#0.00000'
    end
    object Query1Amount_VND: TCurrencyField
      FieldName = 'Amount_VND'
      DisplayFormat = '##,#0'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
  object DS2: TDataSource
    DataSet = QFile
    Left = 1234
    Top = 284
  end
  object QFile: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,KCRKSCan_RFSS.Lo' +
        'tNO, zszl_lot.LotFile from KCRKSCan_RFSS'
      
        'left join KCRKSCan_RFSSS on KCRKScan_RFSS.SCNO = KCRKScan_RFSSS.' +
        'SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFSSS.CLBH and KCRKScan_R' +
        'FSS.Pack = KCRKScan_RFSSS.Pack'
      
        'left join zszl_lot on zszl_lot.LotNO=KCRKSCan_RFSS.LotNO and zsz' +
        'l_lot.zsdh=KCRKSCan_RFSS.USERID'
      'WHERE KCRKScan_RFSSS.ZLBH LIKE '#39'%'#39' + :ZLBH + '#39'%'#39
      '      AND LotFile IS NOT NULL'
      
        'Group by KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,KCRKSCan_RFSS.' +
        'LotNO, zszl_lot.LotFile')
    Left = 1234
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object QFileCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCRKSCan_RFS.CLBH'
      FixedChar = True
      Size = 15
    end
    object QFileZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object QFileLotNO: TStringField
      FieldName = 'LotNO'
      Origin = 'DB.KCRKScan_RFSS.LotNO'
      FixedChar = True
      Size = 50
    end
    object QFileLotFile: TStringField
      FieldName = 'LotFile'
      Size = 50
    end
  end
end
