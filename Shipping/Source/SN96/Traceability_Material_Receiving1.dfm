object Traceability_Material_Receiving: TTraceability_Material_Receiving
  Left = 238
  Top = 162
  Width = 1767
  Height = 675
  Caption = 'Traceability_Material_Receiving'
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
      Left = 230
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
      Left = 210
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
      Left = 12
      Top = 47
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 15
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNoEdit: TEdit
      Left = 278
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 441
      Top = 22
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 278
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button3: TButton
      Left = 529
      Top = 22
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object BuyNoEdit: TEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RYEdit: TEdit
      Left = 72
      Top = 11
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
        FieldName = 'KHPO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Customer PO'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'RY#'
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = 'ID#/Red Invoice#'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'BillNo'
        Footers = <>
        Title.Caption = 'Bill of loading'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'PO or Invoice'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'Date of receipt'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'LoadingDate'
        Footers = <>
        Title.Caption = 'Loading date/Shipping date'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ArivalDate'
        Footers = <>
        Title.Caption = 'Arival date'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DeliverDate'
        Footers = <>
        Title.Caption = 'Deliver date'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Place'
        Footers = <>
        Title.Caption = 'Place of receipt'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'PlaceLading'
        Footers = <>
        Title.Caption = 'Place of lading'
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'PortExport'
        Footers = <>
        Title.Caption = 'Port of export'
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'PlaceDischarge'
        Footers = <>
        Title.Caption = 'Port or place of discharge'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'PlaceDelivery'
        Footers = <>
        Title.Caption = 'Place of delivery'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'FWD'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Exporter'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Producer'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Carrier'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Shipper'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Consignee'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'NotifyParty'
        Footers = <>
        Title.Caption = 'Notify Party'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Container'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VersselIdentification'
        Footers = <>
        Title.Caption = 'Verssel Identification'
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'PackingSlip3'
        Footers = <>
        Title.Caption = 'Packing Slip3'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Packinglocation'
        Footers = <>
        Title.Caption = 'Packing location'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Packdate'
        Footers = <>
        Title.Caption = 'Pack date'
        Width = 55
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select *'
      'from ('
      
        'Select  DDZL.KHPO ,ZLZLS2.ZLBH, case when RKZL.Declaretion is no' +
        't null then RKZL.Declaretion else RKZL.DOCNO end as Declaretion,' +
        'Bill_Info.BillNo'
      
        #9#9',case when RKZL.Declaretion is not null then RKZL.DOCNO else '#39 +
        'NO'#39' end as DOCNO,CGZL.CFMDate,Bill_Info.LoadingDate,Bill_Info.Ar' +
        'ivalDate'
      
        #9#9','#39'HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU VILLAGE,' +
        ' LONG HO DISTRICT, VINH LONG PROVINCE, VIETNAM'#39' as Place'
      
        #9#9',Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDis' +
        'charge,Bill_Info.PlaceDelivery,Bill_Info.FWD,Max(zszl.zsywjc) as' +
        ' Exporter'
      
        #9#9',case when CLZL.cqdh='#39'VN'#39' then '#39'VIET NAM'#39' else Bill_Info.Count' +
        'ry end as Producer,Bill_Info.Carrier,Bill_Info.Shipper'
      
        #9#9','#39'Vinh Long Footwear CO., LTD'#39' as Consignee,'#39'NO'#39' as NotifyPart' +
        'y,Bill_Info.Container,Bill_Info.VersselIdentification'
      
        '    ,'#39#39' as PackingSlip3,'#39#39' as Packinglocation, '#39#39' as Packdate   ' +
        '  '#9#9
      ' from ZLZLS2 with (nolock) '
      
        ' inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZ' +
        'L.GSBH='#39'VA12'#39' and DDZL.DDBH like '#39'Y2310-1583%'#39' '
      ' left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH '
      ' left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH  '
      ' left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH   '
      ' left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH   '
      ' left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH   '
      ' left join (  '
      
        '              Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,S' +
        'um(CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock) '
      '              where CGKCUSES.GSBH='#39'VA12'#39' '
      
        '              Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH' +
        ') CGKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.C' +
        'LBH and CGKCUSE.GSBH='#39'VA12'#39' '
      
        ' left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing an' +
        'd XXZL.SheHao=DDZLTW.SheHao '
      
        ' left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXin' +
        'g and KFXXZL.SheHao=DDZLTW.SheHao  '
      
        ' left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing ' +
        'and XXBWFL.BWBH=ZLZLS2.BWBH  '
      ' left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  '
      ' left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      
        ' left join ( select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as C' +
        'GQty, '
      
        '                    max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDa' +
        'te) as CGDate, '
      
        '                    max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as' +
        ' YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VN' +
        'Price  '
      '             from CGZLSS with (nolock)  '
      
        '             inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39' and DDZL.DDBH like '#39'Y2310-1583%'#39' '
      
        '             left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS' +
        '.CGNO and CGZLS.CLBH=CGZLSS.CLBH   '
      
        '             left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.' +
        'CGNO  '
      
        '             where CGZL.CGLX in ('#39'1'#39','#39'2'#39','#39'5'#39') and  DDZL.GSBH='#39'VA' +
        '12'#39' '
      '           and CGZLSS.ZLBH  like '#39'Y2310-1583%'#39' '
      '             group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL  '
      '             on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH '
      
        ' left join ( select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty' +
        ' ) as RKQty,  '
      
        '                    max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) a' +
        's RKDate, '
      
        '                    max(kcrks.usprice) as usprice,max(kcrks.vnpr' +
        'ice) as vnprice ,Declaretion,KCRK.DOCNO,KCRK.Memo as BillNo,KCRK' +
        '.ZSBH,zszl.yjdz '
      '             from  KCRKS with (nolock)  '
      
        '             inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GS' +
        'BH='#39'VA12'#39' and DDZL.DDBH like '#39'Y2310-1583%'#39' '
      
        '             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RK' +
        'NO  '
      '        '#9'    left join KCPK on kcrk.RKNO=kcpk.PKNO '
      '        '#9'    left join zszl on kcrk.ZSBH=zszl.zsdh '
      '         '#9'  where DDZL.GSBH='#39'VA12'#39' '
      '             and KCRK.SFL<>'#39'THU HOI'#39' '
      '           and KCRKS.CGBH  like '#39'Y2310-1583%'#39' '
      
        '             group by KCRKS.CGBH,KCRKS.CLBH,Declaretion,KCRK.DOC' +
        'NO,KCRK.MEMO,KCRK.ZSBH,zszl.yjdz ) RKZL  '
      '             on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH '
      
        ' left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zs' +
        'zl.zsdh  '
      ' left join Bill_Info on RKZL.DOCNO=Bill_Info.DocNo '
      ' where DDZL.GSBH='#39'VA12'#39' '
      ' and ZLZLS2.CLBH not like '#39'W%'#39' '
      ' --and zlzls2.CLBH='#39'G030000425'#39
      
        ' and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2' +
        '.CLBH ) '
      ' and ZLZLS2.ZLBH  like '#39'Y2310-1583%'#39' '
      ' and ZLZLS2.ZMLB='#39'N'#39' '
      ' and ZLZLS2.CLSL<>0 '
      ' and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null) '
      
        ' group by DDZL.KHPO ,ZLZLS2.ZLBH, Bill_Info.BillNo,CGZL.CFMDate,' +
        'Bill_Info.LoadingDate,Bill_Info.ArivalDate'
      
        #9#9',Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDis' +
        'charge,Bill_Info.PlaceDelivery,Bill_Info.FWD'
      
        #9#9',Bill_Info.Carrier,Bill_Info.Shipper,Bill_Info.Container,Bill_' +
        'Info.VersselIdentification,RKZL.Declaretion,RKZL.DOCNO,CLZL.cqdh' +
        '  '
      #9#9',Bill_Info.Country ) Exp_Info'
      
        'where  ((isnull(Exp_Info.Declaretion,'#39#39')<>'#39#39')  or  (Exp_Info.DOC' +
        'NO <>'#39'NO'#39') or (isnull(Exp_Info.CFMDate,'#39#39')<>'#39#39'))')
    Left = 530
    Top = 324
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
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
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1LoadingDate: TDateTimeField
      FieldName = 'LoadingDate'
    end
    object Query1ArivalDate: TDateTimeField
      FieldName = 'ArivalDate'
    end
    object Query1DeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
    object Query1Place: TStringField
      FieldName = 'Place'
      FixedChar = True
      Size = 106
    end
    object Query1PlaceLading: TStringField
      FieldName = 'PlaceLading'
      FixedChar = True
      Size = 150
    end
    object Query1PortExport: TStringField
      FieldName = 'PortExport'
      FixedChar = True
      Size = 150
    end
    object Query1PlaceDischarge: TStringField
      FieldName = 'PlaceDischarge'
      FixedChar = True
      Size = 150
    end
    object Query1PlaceDelivery: TStringField
      FieldName = 'PlaceDelivery'
      FixedChar = True
      Size = 150
    end
    object Query1FWD: TStringField
      FieldName = 'FWD'
      FixedChar = True
      Size = 100
    end
    object Query1Exporter: TStringField
      FieldName = 'Exporter'
      FixedChar = True
    end
    object Query1Producer: TStringField
      FieldName = 'Producer'
      FixedChar = True
      Size = 50
    end
    object Query1Carrier: TStringField
      FieldName = 'Carrier'
      FixedChar = True
      Size = 100
    end
    object Query1Shipper: TStringField
      FieldName = 'Shipper'
      FixedChar = True
      Size = 100
    end
    object Query1Consignee: TStringField
      FieldName = 'Consignee'
      FixedChar = True
      Size = 27
    end
    object Query1NotifyParty: TStringField
      FieldName = 'NotifyParty'
      FixedChar = True
      Size = 2
    end
    object Query1Container: TStringField
      FieldName = 'Container'
      FixedChar = True
      Size = 30
    end
    object Query1VersselIdentification: TStringField
      FieldName = 'VersselIdentification'
      FixedChar = True
      Size = 100
    end
    object Query1PackingSlip3: TStringField
      FieldName = 'PackingSlip3'
      FixedChar = True
      Size = 1
    end
    object Query1Packinglocation: TStringField
      FieldName = 'Packinglocation'
      FixedChar = True
      Size = 150
    end
    object Query1Packdate: TStringField
      FieldName = 'Packdate'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
end
