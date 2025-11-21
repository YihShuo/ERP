object QWHSRpt: TQWHSRpt
  Left = 337
  Top = 215
  Width = 1449
  Height = 675
  Caption = 'QWHSRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1441
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 3
      Top = 10
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 593
      Top = 12
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
    object Label1: TLabel
      Left = 3
      Top = 42
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Order:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 203
      Top = 10
      Width = 89
      Height = 17
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
      Left = 203
      Top = 42
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 406
      Top = 42
      Width = 89
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 718
      Top = 10
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 614
      Top = 42
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'STNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 838
      Top = 42
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HQNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 894
      Top = 10
      Width = 83
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGUser'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 1068
      Top = 36
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1067
      Top = 4
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object zsywjcEdit: TEdit
      Left = 93
      Top = 7
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 416
      Top = 12
      Width = 81
      Height = 14
      Caption = 'From'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 498
      Top = 7
      Width = 95
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
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 619
      Top = 7
      Width = 94
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
      TabOrder = 5
    end
    object ZLBHEdit: TEdit
      Left = 93
      Top = 39
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ArticleEdit: TEdit
      Left = 293
      Top = 39
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object BuyNoEdit: TEdit
      Left = 293
      Top = 7
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object CLBHEdit: TEdit
      Left = 498
      Top = 39
      Width = 111
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CGNOEdit: TEdit
      Left = 802
      Top = 7
      Width = 87
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object STNOEdit: TEdit
      Left = 698
      Top = 39
      Width = 135
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object HQNOEdit: TEdit
      Left = 922
      Top = 39
      Width = 135
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CGUserIDEdit: TEdit
      Left = 978
      Top = 7
      Width = 87
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1441
    Height = 571
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Caption = #35330#21934#29376#24907'|DDZT'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = #24288#21830'|zsywjc'
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footer.FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #25505#36092#21934#34399'|CGNO'
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|ZLBH'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = #22411#34399'|Article'
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = #23395#24230'|BUYNO'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #29289#26009#20195#34399'|CLBH'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #29289#26009#35498#26126'|YWPM'
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #29289#26009#20013#25991'|ZWPM'
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #38656#27714#29992#37327'|CLSL'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'usprice'
        Footers = <>
        Title.Caption = #32654#37329#21934#20729'|usprice'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'vnprice'
        Footers = <>
        Title.Caption = #36234#30462#21934#20729'|vnprice'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = #35330#36092#37327'|CGQty'
      end
      item
        EditButtons = <>
        FieldName = 'UseStock'
        Footers = <>
        Title.Caption = #21033#29992#24235#23384#37327'|UseStock'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'UseYG'
        Footers = <>
        Title.Caption = #27798#37559#25976#37327'|UseYG'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'Diff'
        Footers = <>
        Title.Caption = #26410#35330#36092#25976#37327'|Diff'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CLSL105'
        Footers = <>
        Title.Caption = #25163#20874#29992#37327'('#38750#19968#23565#19968#21152'5%)|CLSL105'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #25910#36008#37327'|RKQty'
      end
      item
        EditButtons = <>
        FieldName = 'ShipDest'
        Footers = <>
        Title.Caption = #20986#21475#22320'|ShipDest'
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = #22283#23478'|Country'
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #35330#21934#20132#26399'|ShipDate'
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        Title.Caption = #23610#30908'US|Size'
      end
      item
        EditButtons = <>
        FieldName = 'GENDER'
        Footers = <>
        Title.Caption = #39006#22411'|Gender'
      end
      item
        EditButtons = <>
        FieldName = 'STNO'
        Footers = <>
        Title.Caption = #25163#20874#30003#35531#34399'|STNO'
      end
      item
        EditButtons = <>
        FieldName = 'HQNO'
        Footers = <>
        Title.Caption = #25163#20874#34399'|HQNO'
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
      end>
  end
  object QWHSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select ZLZLS2.* from ( '
      
        'select  DDZLTW.DDZT,Max(zszl.zsywjc) as zsywjc,CGZL.CGNO,ZLZLS2.' +
        'ZLBH,XXZL.Article,isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.CLBH,CL' +
        'ZL.YWPM,CLZL.ZWPM,CLZL.DWBH,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,isnull(rkzl.usprice,C' +
        'GZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnp' +
        'rice,isnull(CGZL.CGQty,0) as CGQty,   '
      
        #9#9'isnull(CGKCUSE.Qty,0) as UseStock,isnull(CGYGUSE.Qty,0) as Use' +
        'YG,isnull(sum(ZLZLS2.CLSL),0)- isnull(CGZL.CGQty,0) -isnull(CGKC' +
        'USE.Qty,0) -isnull(CGYGUSE.Qty,0)  as Diff, '
      
        '        case when CLZL.DWBH<>'#39'PRS'#39' then isnull(sum(ZLZLS2.CLSL),' +
        '0)*1.05 else isnull(sum(ZLZLS2.CLSL),0) end as CLSL105,'
      
        #9#9'RKZL.RKQty,lbzls.ywsm as ShipDest,XXZL.XieMing,lbzls.ywsm as C' +
        'ountry,DDZL.ShipDate,DDZLS.Size,XXZL.GENDER,BY_QWHS2.STNO,BY_QWH' +
        'S2.HQNO,DDZL.Pairs,CLZL.CQDH'
      '      '
      
        'from  (Select ZLBH,CLBH,Max(STNO) as STNO,Max(HQNO) as HQNO from' +
        ' BY_QWHS2 Group by ZLBH,CLBH)  BY_QWHS2'
      
        'inner join ZLZLS2 with (nolock)   on BY_QWHS2.ZLBH=ZLZLS2.ZLBH a' +
        'nd BY_QWHS2.CLBH=ZLZLS2.CLBH'
      
        'left join DDZl  with (nolock) on DDZl.DDBH=BY_QWHS2.ZLBH and DDZ' +
        'L.GSBH='#39'VA12'#39' and DDZL.DDBH  like '#39'%'#39' '
      
        'left join (select DDBH,Min(CC)+'#39'-'#39'+Max(CC) as Size from DDZLS Gr' +
        'oup by DDBH ) DDZLS on DDZLS.DDBH=BY_QWHS2.ZLBH'
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join ( '
      
        '           Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,Sum(' +
        'CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock)'
      '           where CGKCUSES.GSBH='#39'VA12'#39
      
        '           Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH) C' +
        'GKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH' +
        ' and CGKCUSE.GSBH='#39'VA12'#39
      'left join ( '
      
        '           Select CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH,Sum(' +
        'CGYGUSES.Qty) as Qty  from CGYGUSES with (nolock)'
      '           where CGYGUSES.GSBH='#39'VA12'#39
      
        '           Group by CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH) C' +
        'GYGUSE  on CGYGUSE.ZLBH=ZLZLS2.ZLBH and CGYGUSE.CLBH=ZLZLS2.CLBH' +
        ' and CGYGUSE.GSBH='#39'VA12'#39
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and' +
        ' XXZL.SheHao=DDZLTW.SheHao'
      'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPric' +
        'e '
      '           from CGZLSS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.G' +
        'SBH='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2106-0001%'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.ZLBH  like '#39'%'#39' '
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH  ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      
        '                  max(kcrks.usprice) as usprice,max(kcrks.vnpric' +
        'e) as vnprice '
      '           from  KCRKS with (nolock)  '
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH' +
        '='#39'VA12'#39' and DDZL.DDBH  like '#39'%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH  like '#39'%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      ''
      
        'left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zsz' +
        'l.zsdh  '
      '       where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH  like '#39'%'#39' '
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'TW'#39
      '       and ZLZLS2.CLSL<>0'
      
        'group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,ZLZLS2.CLBH,CLZL.Y' +
        'WPM,CLZL.DWBH,CLZL.ZWPM,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGYGUS' +
        'E.Qty,CGZl.CGQty,CGZL.CGNO,RKZL.RKQty,DDZL.ShipDate,DDZLS.Size, '
      
        '         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice,lbz' +
        'ls.ywsm,XXZL.GENDER,BY_QWHS2.STNO,BY_QWHS2.HQNO,CLZL.CQDH'
      ') ZLZLS2   '
      'where 1=1 '
      'order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ')
    Left = 448
    Top = 200
    object QWHSQryDDZT: TStringField
      DisplayWidth = 4
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object QWHSQryzsywjc: TStringField
      DisplayWidth = 13
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object QWHSQryCGNO: TStringField
      DisplayWidth = 11
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QWHSQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object QWHSQryArticle: TStringField
      DisplayWidth = 10
      FieldName = 'Article'
      FixedChar = True
    end
    object QWHSQryBUYNO: TStringField
      DisplayWidth = 11
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object QWHSQryCLBH: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object QWHSQryYWPM: TStringField
      DisplayWidth = 48
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object QWHSQryZWPM: TStringField
      DisplayWidth = 46
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object QWHSQryDWBH: TStringField
      DisplayWidth = 5
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object QWHSQryCLSL: TFloatField
      DisplayWidth = 7
      FieldName = 'CLSL'
    end
    object QWHSQryusprice: TFloatField
      DisplayWidth = 8
      FieldName = 'usprice'
      DisplayFormat = '#0.00'
    end
    object QWHSQryvnprice: TCurrencyField
      DisplayWidth = 8
      FieldName = 'vnprice'
      DisplayFormat = '#0.00'
    end
    object QWHSQryCGQty: TCurrencyField
      DisplayWidth = 9
      FieldName = 'CGQty'
      DisplayFormat = '#0.00'
    end
    object QWHSQryUseStock: TCurrencyField
      DisplayWidth = 9
      FieldName = 'UseStock'
      DisplayFormat = '#0.00'
    end
    object QWHSQryUseYG: TCurrencyField
      DisplayWidth = 8
      FieldName = 'UseYG'
      DisplayFormat = '#0.00'
    end
    object QWHSQryDiff: TFloatField
      DisplayWidth = 6
      FieldName = 'Diff'
    end
    object QWHSQryCLSL105: TFloatField
      DisplayWidth = 8
      FieldName = 'CLSL105'
    end
    object QWHSQryRKQty: TCurrencyField
      DisplayWidth = 9
      FieldName = 'RKQty'
    end
    object QWHSQryShipDest: TStringField
      DisplayWidth = 7
      FieldName = 'ShipDest'
      FixedChar = True
      Size = 50
    end
    object QWHSQryXieMing: TStringField
      DisplayWidth = 14
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object QWHSQryCountry: TStringField
      DisplayWidth = 7
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object QWHSQryShipDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'ShipDate'
    end
    object QWHSQrySize: TStringField
      DisplayWidth = 9
      FieldName = 'Size'
      FixedChar = True
      Size = 13
    end
    object QWHSQryGENDER: TStringField
      DisplayWidth = 10
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object QWHSQrySTNO: TStringField
      DisplayWidth = 11
      FieldName = 'STNO'
      FixedChar = True
      Size = 11
    end
    object QWHSQryHQNO: TStringField
      DisplayWidth = 11
      FieldName = 'HQNO'
      FixedChar = True
      Size = 11
    end
    object QWHSQryPairs: TIntegerField
      DisplayWidth = 8
      FieldName = 'Pairs'
    end
    object QWHSQryCQDH: TStringField
      DisplayWidth = 5
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = QWHSQry
    Left = 480
    Top = 200
  end
end
