object Traceability_Warehouse: TTraceability_Warehouse
  Left = 333
  Top = 364
  Width = 1616
  Height = 675
  Caption = 'Traceability Warehouse'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1600
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 209
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
      Left = 190
      Top = 51
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
      Top = 51
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
      Left = 255
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
      Left = 521
      Top = 6
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
      Left = 255
      Top = 47
      Width = 227
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
      Left = 521
      Top = 44
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
      Top = 47
      Width = 98
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
      Width = 98
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
    Top = 85
    Width = 1600
    Height = 551
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
        FieldName = 'BUYNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'BUY ORDER'
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = 'CUSTOMER PO'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'RY#'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'SHOE NAME'
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = 'PO# QTY'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MATERIAL DESCRIPTION'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'UNIT'
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'LOCATION'
      end
      item
        EditButtons = <>
        FieldName = 'QTYUSAGE'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY USAGE'
      end
      item
        EditButtons = <>
        FieldName = 'QTYORDERED'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY ORDERED'
      end
      item
        EditButtons = <>
        FieldName = 'QTYINPUT'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY INPUT W/H'
      end
      item
        EditButtons = <>
        FieldName = 'UseStock'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USE STOCK'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'MAT. ARRIVAL DATE'
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = 'INPUT W/H DATE'
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = 'Mat. PO#'
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = 'INPUT W/H NO'
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE or Delivery Note '
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = 'Warehouse placement'
      end
      item
        EditButtons = <>
        FieldName = 'FlexID'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MATERIAL CODE'
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
        Title.Caption = 'Materials Release Quantity'
      end
      item
        EditButtons = <>
        FieldName = 'release'
        Footers = <>
        Title.Caption = 'Date of release'
      end
      item
        EditButtons = <>
        FieldName = 'LotNo'
        Footers = <>
        Width = 120
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select  isnull(DDZLTW.BUYNO,0) as BUYNO,DDZL.KHPO,ZLZLS2.ZLBH,XX' +
        'ZL.Article,kfxxzl.DEVCODE as SR,XXZL.XieMing,DDZL.Pairs,CLZL.YWP' +
        'M,CLZL.DWBH,CLZL.CQDH '
      
        ',case when (DDZLTW.DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')<>'#39'N'#39') t' +
        'hen isnull(sum(ZLZLS2.CLSL),0) else 0 end as QTYUSAGE ,isnull(CG' +
        'ZL.CGQty,0) as QTYORDERED,RKZL.RKQty as QTYINPUT'
      
        ',isnull(CGKCUSE.Qty,0) as UseStock,CGZL.CFMDate,RKZL.RKDate,CGZL' +
        '.CGNO,RKZl.RKNO,RKZL.DOCNO,KCZLS.KCBH,cldhflex as FlexID,ZLZLS2.' +
        'CLBH,LLQty,KCLL.CFMDate as release'
      ' from ZLZLS2 with (nolock) '
      
        ' inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZ' +
        'L.GSBH='#39'VA12'#39' and DDZL.BUYNO like '#39'2023%'#39' and DDZL.DDBH like '#39'Y2' +
        '307-0007%'#39' '
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
        '.GSBH='#39'VA12'#39' and DDZL.BUYNO like '#39'2023%'#39' and DDZL.DDBH like '#39'Y23' +
        '07-0007%'#39' '
      
        '             left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS' +
        '.CGNO and CGZLS.CLBH=CGZLSS.CLBH   '
      
        '             left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.' +
        'CGNO  '
      
        '             where CGZL.CGLX in ('#39'1'#39','#39'2'#39','#39'5'#39') and  DDZL.GSBH='#39'VA' +
        '12'#39' '
      '           and DDZL.BUYNO like '#39'2023%'#39' '
      '           and CGZLSS.ZLBH  like '#39'Y2307-0007%'#39' '
      '           and CGZLSS.CLBH like '#39'J040027678%'#39' '
      '             group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL  '
      '             on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH '
      
        ' left join ( select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty' +
        ' ) as RKQty,  '
      
        '                    max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) a' +
        's RKDate,max(KCRK.CFMDATE) as CFMDATE, '
      
        '                    max(kcrks.usprice) as usprice,max(kcrks.vnpr' +
        'ice) as vnprice ,Declaretion,KCRK.DOCNO,KCRK.ZSBH,zszl.yjdz '
      
        '         '#9#9#9#9'  ,CGZL_Payment.FKBH,CGZL_Payment.USERDATE as Payme' +
        'ntDate,Busers.USERNAME,DepName '
      '             from  KCRKS with (nolock)  '
      
        '             inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GS' +
        'BH='#39'VA12'#39' and DDZL.BUYNO like '#39'2023%'#39' and DDZL.DDBH like '#39'Y2307-' +
        '0007%'#39' '
      
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
      
        '       '#9'    left join BDepartment on CGZL_Payment.DEPID=BDepartm' +
        'ent.ID  '
      
        '     '#9#9'    left join Busers on CGZL_Payment.USERID=Busers.USERID' +
        ' '
      '             where DDZL.GSBH='#39'VA12'#39' '
      '             and KCRK.SFL<>'#39'THU HOI'#39' '
      '           and DDZL.BUYNO like '#39'2023%'#39' '
      '           and KCRKS.CGBH  like '#39'Y2307-0007%'#39' '
      '           and KCRKS.CLBH like '#39'J040027678%'#39' '
      
        '             group by KCRKS.CGBH,KCRKS.CLBH,Declaretion,KCRK.DOC' +
        'NO,KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.USERDATE,B' +
        'users.USERNAME,DepName ) RKZL  '
      '             on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH '
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH,max(KCLL.CFMDate) CFMDat' +
        'e,sum(KCLLS.Qty) as LLQty,KCLL.CKBH'
      
        #9'       from KCLLS with (nolock) left join KCLL with (nolock)  o' +
        'n KCLL.LLNO=KCLLS.LLNO '
      
        #9#9'   inner join DDZL on DDZL.DDBH=KCLLS.SCBH and DDZL.GSBH='#39'VA12' +
        #39' and DDZL.BUYNO like '#39'2023%'#39' and DDZL.DDBH like '#39'Y2307-0007%'#39'  '
      #9#9'   where KCLL.GSBH='#39'VA12'#39' '
      #9#9'   and DDZL.BUYNO like '#39'2023%'#39' '
      '           and KCLLS.SCBH like '#39'Y2307-0007%'#39' '
      
        '           and KCLLS.CLBH like '#39'J040027678%'#39' group by  KCLLS.SCB' +
        'H,KCLLS.CLBH,KCLL.CKBH ) KCLL  on KCLL.SCBH=ZLZLS2.ZLBH and KCLL' +
        '.CLBH=ZLZLS2.CLBH '
      ''
      
        ' left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zs' +
        'zl.zsdh  '
      
        ' left join CLZL_Origin Origin on CLZL.CLDH=Origin.CLBH and Origi' +
        'n.GSBH='#39'VA12'#39'  '
      ' left join CLZL_FLEX on CLZL.CLDH=CLZL_FLEX.CLDH '
      
        ' left join KCZLS on KCZLS.CLBH=ZLZLS2.CLBH and KCLL.CKBH=KCZLS.C' +
        'KBH'
      ' where DDZL.GSBH='#39'VA12'#39' '
      ' and ZLZLS2.CLBH not like '#39'W%'#39' '
      
        ' and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2' +
        '.CLBH ) '
      '           and DDZL.BUYNO like '#39'2023%'#39' '
      ' and ZLZLS2.ZLBH  like '#39'Y2307-0007%'#39' '
      'and ZLZLS2.CLBH  like '#39'J040027678%'#39' '
      ' and ZLZLS2.ZMLB='#39'N'#39' '
      ' and ZLZLS2.CLSL<>0 '
      ' and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null) '
      
        ' group by DDZLTW.BUYNO,DDZL.KHPO,ZLZLS2.ZLBH,XXZL.Article,kfxxzl' +
        '.DEVCODE,XXZL.XieMing,DDZL.Pairs,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH ,' +
        'DDZLTW.DDZT,SCZL.IsCGZLS,CGZL.CGQty,RKZL.RKQty'
      
        ',CGKCUSE.Qty,RKZL.RKDate,CGZL.CFMDate,CGZL.CGNO,RKZl.RKNO,RKZL.D' +
        'OCNO,KCZLS.KCBH,cldhflex,ZLZLS2.CLBH,LLQty,KCLL.CFMDate'
      ''
      ''
      ''
      '')
    Left = 530
    Top = 324
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 15
    end
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
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
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
      Size = 4
    end
    object Query1QTYUSAGE: TFloatField
      FieldName = 'QTYUSAGE'
      DisplayFormat = '##,#0.0'
    end
    object Query1QTYORDERED: TCurrencyField
      FieldName = 'QTYORDERED'
      DisplayFormat = '##,#0.0'
    end
    object Query1QTYINPUT: TCurrencyField
      FieldName = 'QTYINPUT'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1FlexID: TStringField
      FieldName = 'FlexID'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1release: TDateTimeField
      FieldName = 'release'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LotNo: TStringField
      FieldName = 'LotNo'
      Size = 50
    end
  end
end
