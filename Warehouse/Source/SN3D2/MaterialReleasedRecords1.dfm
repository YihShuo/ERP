object MaterialReleasedRecords: TMaterialReleasedRecords
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'Material Released Records'
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
    Width = 1289
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 178
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
      Left = 358
      Top = 15
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
    object Label4: TLabel
      Left = 272
      Top = 47
      Width = 15
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 0
      Top = 15
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ListNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 408
      Top = 47
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNoEdit: TEdit
      Left = 223
      Top = 10
      Width = 122
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
      Left = 601
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
      TabOrder = 2
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 424
      Top = 10
      Width = 161
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
      Left = 601
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
      TabOrder = 3
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 169
      Top = 40
      Width = 105
      Height = 24
      Date = 42401.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 42401.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 294
      Top = 40
      Width = 105
      Height = 24
      Date = 42794.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 42794.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 55
      Top = 10
      Width = 114
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 45
      Width = 161
      Height = 17
      Caption = 'Materail Release Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 447
      Top = 42
      Width = 138
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 85
    Width = 1289
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
        FieldName = 'ListNo'
        Footers = <>
        Title.Caption = 'Material Release Form Number'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ConfirmDate'
        Footers = <>
        Title.Caption = 'Materail Release Date'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'MaterialID'
        Footers = <>
        Title.Caption = 'Item Number'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Item Description'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'FlexID'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Dept'
        Footers = <>
        Title.Caption = 'Request Party'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Title.Caption = 'Work Order Number'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'Product Item Number'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'RY_Begin'
        Footers = <>
        Title.Caption = 'Client PO Number'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'Shoe name'
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Title.Caption = 'Mateial Request Quantity'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'IssuanceUsage'
        Footers = <>
        Title.Caption = 'Mateial Release Quantity'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Serial'
        Footers = <>
        Title.Caption = 'Mateial Serial Number'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Style'
        Footers = <>
        Title.Caption = 'Mateial Style Number'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LotNO'
        Footers = <>
        Title.Caption = 'Material Lot Number'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = 'Shelf Number'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Note'
        Footers = <>
        Title.Caption = 'Delivery Note Number'
        Width = 90
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
    object Query1ListNo: TStringField
      FieldName = 'ListNo'
    end
    object Query1ConfirmDate: TDateTimeField
      FieldName = 'ConfirmDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1MaterialID: TStringField
      FieldName = 'MaterialID'
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 200
    end
    object Query1Dept: TStringField
      FieldName = 'Dept'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1RY_Begin: TStringField
      FieldName = 'RY_Begin'
    end
    object Query1Usage: TCurrencyField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.00'
    end
    object Query1IssuanceUsage: TCurrencyField
      FieldName = 'IssuanceUsage'
      DisplayFormat = '##,#0.00'
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
    end
    object Query1Serial: TStringField
      FieldName = 'Serial'
    end
    object Query1Style: TStringField
      FieldName = 'Style'
    end
    object Query1LotNO: TStringField
      FieldName = 'LotNO'
      Size = 50
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
    end
    object Query1Note: TStringField
      FieldName = 'Note'
    end
    object Query1FlexID: TStringField
      FieldName = 'FlexID'
    end
    object Query1SR: TStringField
      FieldName = 'SR'
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 320
  end
end
