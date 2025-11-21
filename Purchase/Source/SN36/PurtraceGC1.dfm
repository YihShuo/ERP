object PurtraceGC: TPurtraceGC
  Left = 383
  Top = 220
  Width = 1189
  Height = 577
  Caption = 'PurtraceGC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1181
    Height = 145
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
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
    object Label2: TLabel
      Left = 160
      Top = 20
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
    object Label5: TLabel
      Left = 179
      Top = 51
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 344
      Top = 52
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label7: TLabel
      Left = 336
      Top = 20
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 15
      Top = 53
      Width = 37
      Height = 16
      Alignment = taRightJustify
      Caption = 'SKU#:'
    end
    object Label4: TLabel
      Left = 768
      Top = 50
      Width = 43
      Height = 16
      AutoSize = False
      Caption = #21295#29575':'
    end
    object Label8: TLabel
      Left = 8
      Top = 84
      Width = 74
      Height = 16
      Caption = 'ShipingDate'
    end
    object Label9: TLabel
      Left = 189
      Top = 83
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Label10: TLabel
      Left = 682
      Top = 22
      Width = 44
      Height = 16
      Caption = 'BuyNo:'
    end
    object lbKHPO: TLabel
      Left = 13
      Top = 116
      Width = 49
      Height = 16
      AutoSize = False
      Caption = 'KHPO:'
    end
    object lbDDGB: TLabel
      Left = 163
      Top = 116
      Width = 73
      Height = 16
      AutoSize = False
      Caption = 'Destination:'
    end
    object Label11: TLabel
      Left = 320
      Top = 116
      Width = 125
      Height = 16
      Caption = 'Purchase Type(TW):'
    end
    object Button1: TButton
      Left = 594
      Top = 76
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 56
      Top = 16
      Width = 97
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
    object Edit4: TEdit
      Left = 400
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 224
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 400
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 365
      Top = 85
      Width = 49
      Height = 17
      Caption = 'TW'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object Button2: TButton
      Left = 692
      Top = 76
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 56
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button3: TButton
      Left = 793
      Top = 77
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 9
      OnClick = Button3Click
    end
    object CheckBox2: TCheckBox
      Left = 424
      Top = 85
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 10
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 509
      Top = 22
      Width = 65
      Height = 17
      Caption = 'CG ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 11
    end
    object CheckBox4: TCheckBox
      Left = 509
      Top = 52
      Width = 76
      Height = 17
      Caption = 'CG no ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 12
    end
    object CB5: TCheckBox
      Left = 683
      Top = 50
      Width = 73
      Height = 17
      Caption = #31639#37329#38989
      TabOrder = 13
    end
    object Edit7: TEdit
      Left = 815
      Top = 46
      Width = 85
      Height = 24
      MaxLength = 15
      TabOrder = 14
    end
    object CheckBox5: TCheckBox
      Left = 479
      Top = 85
      Width = 49
      Height = 17
      Caption = 'BOX'
      Color = 10395294
      ParentColor = False
      TabOrder = 15
    end
    object CYear: TComboBox
      Left = 88
      Top = 80
      Width = 97
      Height = 24
      Color = clYellow
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 16
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2020')
    end
    object CMonth: TComboBox
      Left = 200
      Top = 80
      Width = 41
      Height = 24
      Color = clYellow
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 17
      Text = '00'
      Items.Strings = (
        '00'
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
    object Button4: TButton
      Left = 819
      Top = 16
      Width = 81
      Height = 25
      Caption = #26597#35426#25552#31034
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = Button4Click
    end
    object Edit8: TEdit
      Left = 731
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object edKHPO: TEdit
      Left = 56
      Top = 112
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object edDDGB: TEdit
      Left = 240
      Top = 112
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object OrderType: TComboBox
      Left = 448
      Top = 112
      Width = 89
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 22
      Text = 'All'
      Items.Strings = (
        'All'
        'Formal'
        'Replenish')
    end
    object DDZTCK: TCheckBox
      Left = 545
      Top = 116
      Width = 120
      Height = 17
      Caption = 'Cancel(CLSL=0)'
      Checked = True
      State = cbChecked
      TabOrder = 23
    end
    object CancelCK: TCheckBox
      Left = 673
      Top = 116
      Width = 120
      Height = 17
      Caption = 'Order Cancel'
      Checked = True
      State = cbChecked
      TabOrder = 24
    end
    object HistoryCB: TCheckBox
      Left = 241
      Top = 83
      Width = 120
      Height = 17
      Caption = #39023#31034#27511#21490#36039#26009
      TabOrder = 25
    end
    object GCCheckBox: TCheckBox
      Left = 535
      Top = 85
      Width = 49
      Height = 17
      Caption = 'GC'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 26
    end
  end
  object PurchasePage: TPageControl
    Left = 0
    Top = 145
    Width = 1181
    Height = 401
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'VN'#25913#36234#21335#25505#36092
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1173
        Height = 370
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = PopupMenu
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footer.FieldName = 'KHPO'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 183
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 182
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'OrderDate'
            Footers = <>
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'INDATE'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLDATE'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'ZMLB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'JGDate'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'JGQty'
            Footers = <>
          end>
      end
    end
  end
  object CheckBox6: TCheckBox
    Left = 591
    Top = 23
    Width = 88
    Height = 16
    Caption = 'R+U ok'
    Color = 10395294
    ParentColor = False
    TabOrder = 2
  end
  object CheckBox7: TCheckBox
    Left = 590
    Top = 54
    Width = 88
    Height = 16
    Caption = 'R+U not ok'
    Color = 10395294
    ParentColor = False
    TabOrder = 3
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 40
    Top = 368
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    OnCalcFields = Query2CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select top 10 * from ( '
      
        'select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,' +
        'DDZL.KHPO,ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,' +
        'XXZL.Article,XXZL.XieMing,DDZL.Pairs,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        case when DDZLTW.DDZT<>'#39'C'#39' then isnull(sum(ZLZLS2.CLSL),' +
        '0) else 0 end as CLSL,'
      '        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,'
      '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,'
      
        '        RKZL.RKNO,RKZL.RKDate,case when ((CLZL.CQDH='#39'TW'#39')and (HG' +
        'INV.HGQty is not null)) then HGINV.HGQty else RKZL.RKQty end as ' +
        'RKQty,HGINV.DOCNO,null as JGNO,null as JGDate,null as JGQty,DDZL' +
        '.ShipDate,'
      
        '        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl' +
        '.vnprice,CGZL.VNPrice) as vnprice'
      '        ,convert(smalldatetime,ddzl.userdate,111) as indate'
      '        ,convert(smalldatetime,zlzls2.userdate,111) as cldate'
      '        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate'
      
        '    '#9#9' ,(convert(int,zlzls2.userdate)-convert(int,ddzl.ddrq)) as' +
        ' get2com'
      
        '    '#9#9' ,(convert(int,CGZl.CGDate)-convert(int,zlzls2.userdate)) ' +
        'as com2cg'
      
        '    '#9#9' ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as c' +
        'g2rk'
      
        '    '#9#9' ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as ' +
        'cgkpi'
      
        '         ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as ' +
        'zsywjc'
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39' and DDZL.DDBH like '#39'Y1605-0002%'#39' '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='#39'VA12'#39' '
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and' +
        ' XXZL.SheHao=DDZLTW.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
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
        'SBH='#39'VA12'#39' and DDZL.DDBH like '#39'Y1605-0002%'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.ZLBH like '#39'Y1605-0002%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
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
        '='#39'VA12'#39' and DDZL.DDBH like '#39'Y1605-0002%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH like '#39'Y1605-0002%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      
        'left join (select HG_INVS.CGBH as ZLBH ,HG_INVS.CLBH,sum(HG_INVS' +
        '.Qty ) as HGQty, '
      
        '                  max(HG_INV.DOCNO) as DOCNO,max(HG_INV.USERDate' +
        ') as HGDate '
      '           from  HG_INVS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH=HG_INVS.CGBH and DDZL.GS' +
        'BH='#39'VA12'#39' and DDZL.DDBH like '#39'Y1605-0002%'#39' '
      
        '           left join HG_INV with (nolock)  on HG_INV.RKNO=HG_INV' +
        'S.RKNO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and HG_INVS.CGBH like '#39'Y1605-0002%'#39
      '           group by HG_INVS.CGBH,HG_INVS.CLBH ) HGINV'
      
        '                 on HGINV.ZLBH=ZLZLS2.ZLBH and HGINV.CLBH=ZLZLS2' +
        '.CLBH'
      
        'left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zsz' +
        'l.zsdh  '
      '       where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'Y1605-0002%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      
        'group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.C' +
        'LBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.use' +
        'rdate,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.C' +
        'GQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,HGINV.HGQty,HGINV.DOCNO,DDZL.ShipDate, '
      '         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice'
      #9#9'      ,ddzl.ddrq,zlzls2.userdate,lbzls.ywsm'
      ') ZLZLS2  '
      'union all'
      'Select * from ( '
      
        'select isnull(DDZLTW.BUYNO,0) as BUYNO,ywbzpo.DDBH as ZLBH,DDZLT' +
        'W.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.CLZMLB as ZMLB,CLZL.YWPM,CLZL.' +
        'ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,'
      
        '        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty,0.0 ' +
        'as clsl,getdate() as YQDate,'
      '         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,'
      
        '         max(CGZL.CGNO) as CGNO,0.0 as usestock,RKZL.RKNO,RKZL.R' +
        'KDate,isnull(RKZL.RKQty,0) as RKQty,Null as DOCNO,null as JGNO,n' +
        'ull as JGDate,null as JGQty,DDZL.ShipDate,'
      
        '           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice' +
        ',0) as VNPrice   '
      '        ,convert(smalldatetime,ddzl.userdate,111) as indate'
      '        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate'
      '        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate'
      '    '#9#9' ,null as get2com'
      '    '#9#9' ,null as com2cg'
      '    '#9#9' ,null as cg2rk'
      '    '#9#9' ,null as cgkpi'
      '       ,lbzls.ywsm,'#39#39' as zsdh,'#39#39' as zsywjc'
      'from ywbzpo  with (nolock) '
      'left join ywdd on ywbzpo.ddbh = ywdd.ddbh'
      'left join  CGZL with (nolock)  on CGZL.CGNO=ywdd.CGNO '
      'left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH '
      'left join DDZl  with (nolock) on DDZl.DDBH=ywbzpo.ddbh '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ywbzpo.ddbh'
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and' +
        ' XXZL.SheHao=DDZLTW.SheHao '
      'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      
        ' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ' +
        ') as RKQty,'
      
        ' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vn' +
        'price  '
      ' from  KCRKS with (nolock)  '
      ' left join DDZL on DDZL.DDBH = KCRKS.CGBH'
      'left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO '
      'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      'where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH like '#39'Y1605-0002%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH,usprice,vnprice ) RKZL'
      
        '                 on RKZL.ZLBH=ywbzpo.ddbh and RKZL.CLBH=ywbzpo.C' +
        'LBH '
      ' left join (select  ywbzpo.ddbh as ZLBH,ywbzpo.CLBH as clbh'
      ' from  ywbzpo with (nolock) '
      ' left join DDZL on DDZL.DDBH = YWBZPO.DDBH'
      ' where DDZL.GSBH='#39'VA12'#39
      '                 and ywbzpo.ddbh like '#39'Y1605-0002%'#39
      '           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2'
      
        '                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZL' +
        'S2.CLBH '
      '       where IsNull(DDZL.GSBH,'#39'VA12'#39')='#39'VA12'#39
      '       and ywbzpo.ddbh like '#39'Y1605-0002%'#39
      
        ' group by DDZLTW.BUYNO,ywbzpo.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.' +
        'CLBH,CLZL.CLZMLB,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Ar' +
        'ticle,XXZL.XieMing,'
      
        ' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQ' +
        'ty,DDZL.ShipDate,'
      ' rkzl.USPrice,rkzl.VNPrice '
      ' ,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm'
      ') ZLZLS2  '
      'union all'
      'Select * from ('
      
        '      select DDZL.BUYNO,DDZL.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,' +
        #39'ZZZZZZZZZZ'#39' as CLBH,CLZL.CLZMLB as ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZ' +
        'L.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,'
      
        '             CLZL.CQDH, null CGQty,ExtraVN.CLSL*DDZL.Pairs as CL' +
        'SL, null as YQDate, null as CFMDate, null as CGDate, null as CGN' +
        'O,null as UseStock, null as RKNO,null as RKDate, null as RKQty,n' +
        'ull as DOCNO,null as JGNO,null as JGDate,null as JGQty,'
      
        '             DDZL.Shipdate,ExtraVN.VNPrice,ExtraVN.USPrice,null ' +
        'as indate,null as cldate,null as orderdate,null as get2com, null' +
        ' as com2cg,null as cg2rk,null as cgkpi,lbzls.ywsm,ZSZL.ZSDH,ZSZL' +
        '.ZSYWJC '
      '      from ExtraVN '
      
        '      inner join DDZl  on DDZL.XieXing=ExtraVN.XieXing and DDZL.' +
        'Shehao=ExtraVN.SheHao '
      '      left join DDZLTW with (nolock) on DDZLTW.DDBH=DDZL.DDBH'
      '      left join CLZL on CLZL.CLDH=ExtraVN.CLBH'
      
        '      left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXi' +
        'ng and XXZL.SheHao=DDZLTW.SheHao '
      '      left join zszl on ExtraVN.CSBH=ZSZL.ZSDH'
      '      left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      '      left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH '
      '      where DDZL.GSBH='#39'VA12'#39' '
      '       and DDZL.DDBH like '#39'Y1605-0002%'#39
      '       '
      'Union All'
      
        '      select DDZL.BUYNO,DDZL.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,' +
        'ZLZLS2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Artic' +
        'le,XXZL.XieMing,DDZL.Pairs,'
      
        '             CLZL.CQDH, null CGQty,Sum(ZLZLS2.CLSL) as CLSL, nul' +
        'l as YQDate, null as CFMDate, null as CGDate, null as CGNO,null ' +
        'as UseStock, null as RKNO,null as RKDate, null as RKQty,null as ' +
        'DOCNO,JGZL.JGNO,JGZL.JGDate,JGZL.JGQty,'
      
        '             DDZL.Shipdate,IsNull(JGZL.USPrice,CGBJS.USPrice) as' +
        ' USPrice,IsNull(JGZL.VNPrice,CGBJS.VNPrice) as VNPrice,null as i' +
        'ndate,null as cldate,null as orderdate,null as get2com,'
      
        '             null as com2cg,null as cg2rk,null as cgkpi,lbzls.yw' +
        'sm,ZSZL.ZSDH,ZSZL.ZSYWJC        '
      '      from  ZLZLS2 '
      '      inner join DDZL on DDZL.DDBH=ZLZLS2.ZLBH'
      '      left join DDZLTW with (nolock) on DDZLTW.DDBH=DDZL.DDBH'
      '      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH'
      
        '      left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXi' +
        'ng and XXZL.SheHao=DDZLTW.SheHao '
      '      left join (    '
      
        '      select JGZLSS.ZLBH ,JGZLS.CLBH,sum(JGZLSS.CLSL ) as JGQty,' +
        ' '
      
        '                  max(JGZL.JGNO) as JGNO,max(JGZL.CFMDate1) as J' +
        'GDate, '
      
        '                  max(JGZLS.usprice) as usprice,max(JGZLS.vnpric' +
        'e) as vnprice '
      '           from  JGZLSS with (nolock)  '
      
        '           inner join DDZL on DDZL.DDBH=JGZLSS.ZLBH and DDZL.GSB' +
        'H='#39'VA12'#39' and DDZL.DDBH like '#39'Y1605-0002%'#39' '
      
        '           left join JGZLS with (nolock) on JGZLS.JGNO=JGZLSS.JG' +
        'NO  and JGZLS.CLBH=JGZLSS.CLBH and  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '           left join JGZL with (nolock)  on JGZL.JGNO=JGZLSS.JGN' +
        'O '
      '           where DDZL.GSBH='#39'VA12'#39' '
      '                 and JGZLSS.ZLBH like '#39'Y1605-0002%'#39
      '                 and JGZL.CFMID2<>'#39'NO'#39
      '           group by JGZLSS.ZLBH ,JGZLS.CLBH'
      
        '      ) JGZL on  JGZL.ZLBH=ZLZLS2.ZLBH and JGZL.CLBH=ZLZLS2.CLBH' +
        ' '
      '      left join ('
      
        '         select CLBH,USPrice ,VNPrice,rn  from (select CGBJS.CLB' +
        'H,CGBJS.USPrice,CGBJS.VNPrice, '
      
        '         '#9'    ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER B' +
        'Y CGBJ.BJNO DESC) as  rn '
      '         from CGBJ '
      '         left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      
        '         where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null ) CGB' +
        'J where rn=1     '
      '      ) CGBJS ON CGBJS.CLBH=ZLZLS2.CLBH '
      '      left join zszl on ZLZLS2.CSBH=ZSZL.ZSDH'
      '      left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      '      where 1=1 '
      '           and ZLZLS2.ZMLB='#39'Y'#39'  '
      '           and CLSL>0 '
      '        and DDZL.DDBH like '#39'Y1605-0002%'#39
      
        '      Group by DDZL.BUYNO,DDZL.DDBH ,DDZLTW.DDZT,DDZL.KHPO,ZLZLS' +
        '2.CLBH,ZLZLS2.ZMLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XX' +
        'ZL.XieMing,DDZL.Pairs,'
      
        '               CLZL.CQDH,JGZL.JGNO,JGZL.JGDate,JGZL.JGQty,DDZL.S' +
        'hipdate,JGZL.VNPrice,CGBJS.VNPrice,JGZL.USPrice,CGBJS.USPrice,lb' +
        'zls.ywsm,ZSZL.ZSDH,ZSZL.ZSYWJC '
      ''
      ') ZLZLS2 '
      'order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH '
      ''
      '  ')
    UpdateObject = UpdateSQL3
    Left = 104
    Top = 368
    object StringField1: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'KHPO'
    end
    object StringField3: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object StringField6: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'OrderDate'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'INDATE'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CLDATE'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object StringField10: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField11: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object StringField12: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object FloatField2: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query2VNACC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      currency = False
      Calculated = True
    end
    object StringField13: TStringField
      FieldName = 'ywsm'
    end
    object StringField14: TStringField
      FieldName = 'DDZT'
      Size = 0
    end
    object Query2ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query2zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query2DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object Query2ZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 1
    end
    object Query2JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query2JGDate: TDateTimeField
      FieldName = 'JGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2JGQty: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.0'
    end
  end
  object UpdateSQL3: TUpdateSQL
    Left = 104
    Top = 400
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 136
    Top = 368
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xlsx)|*.xlsx|CSV(comma split)(*.csv)|*.csv|Web Page' +
      '(*.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 39
    Top = 403
  end
  object PopupMenu: TPopupMenu
    Left = 140
    Top = 404
    object Copy1: TMenuItem
      Caption = 'Copy to Clibboard'
      OnClick = Copy1Click
    end
  end
end
