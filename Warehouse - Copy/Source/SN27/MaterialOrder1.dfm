object MaterialOrder: TMaterialOrder
  Left = 355
  Top = 411
  Width = 1101
  Height = 585
  Caption = 'Material Order'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 830
    Top = 73
    Width = 5
    Height = 481
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 184
      Top = 14
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 0
      Top = 46
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 0
      Top = 15
      Width = 73
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
    object Label1: TLabel
      Left = 368
      Top = 44
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDZT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 184
      Top = 46
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 904
      Top = 10
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BaseDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCGNO: TEdit
      Left = 256
      Top = 11
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtDDBH: TEdit
      Left = 73
      Top = 43
      Width = 112
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyUp = edtDDBHKeyUp
    end
    object btnQuery: TButton
      Left = 800
      Top = 38
      Width = 89
      Height = 32
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnQueryClick
    end
    object edtBUYNO: TEdit
      Left = 74
      Top = 12
      Width = 111
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyUp = edtBUYNOKeyUp
    end
    object btnCopy: TButton
      Left = 799
      Top = 2
      Width = 90
      Height = 32
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnCopyClick
    end
    object DDZTCK: TCheckBox
      Left = 376
      Top = 14
      Width = 137
      Height = 17
      Caption = 'Cancel(CLSL=0)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object DDZTCombo: TComboBox
      Left = 447
      Top = 39
      Width = 66
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'All'
      Items.Strings = (
        'All'
        'Y'
        'C')
    end
    object editCLBH: TEdit
      Left = 256
      Top = 41
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 524
      Top = 42
      Width = 49
      Height = 17
      Caption = 'TW'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 615
      Top = 42
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Left = 693
      Top = 6
      Width = 100
      Height = 17
      Caption = 'RKQty>0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Chk_Det: TCheckBox
      Left = 694
      Top = 52
      Width = 106
      Height = 17
      Caption = 'Show Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Chk_DetClick
    end
    object BaseDate: TDateTimePicker
      Left = 993
      Top = 7
      Width = 93
      Height = 24
      Date = 40020.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 40020.406377673610000000
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Button1: TButton
      Left = 987
      Top = 35
      Width = 97
      Height = 35
      Caption = 'Cal Remain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button1Click
    end
    object CheckBox4: TCheckBox
      Left = 693
      Top = 30
      Width = 100
      Height = 17
      Caption = 'RemQty>0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object XLSBtn: TButton
      Left = 900
      Top = 35
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = XLSBtnClick
    end
    object CheckBox5: TCheckBox
      Left = 524
      Top = 14
      Width = 157
      Height = 17
      Caption = 'Copy=>(RKQty - CLSL)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 16
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 835
    Top = 73
    Width = 258
    Height = 481
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
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
    Visible = False
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'Buy'#21029'|BUYNO'
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934'|RY'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Caption = #29376#24907'|DDZT'
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #23458#25142'PO#|KHPO'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26009#34399'|MatID'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21697#21517'|MatName'
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.FieldName = 'CGQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25505#36092'|CGQty'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235'|RKQty'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #25505#36092#26085#26399'|CGDate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#20132#26399'|YQDate'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#35206#20132#26399'|CFMDate'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = #25505#36092#21934#34399'|CGNO'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = #20837#24235#26085#26399'|RKDate'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
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
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|ShipDate'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 304
      end
      item
        EditButtons = <>
        FieldName = 'DelFlag'
        Footers = <>
        Title.Caption = #21034#38500#27161#35468'|DelFlag'
        Width = 71
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 830
    Height = 481
    Align = alClient
    AllowedOperations = [alopUpdateEh]
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26009#34399'|MatID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21697#21517'|MatName'
        Width = 237
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 51
      end
      item
        Color = clSkyBlue
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Width = 57
      end
      item
        Color = clSkyBlue
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = #25505#36092#37327'|CGQty'
        Width = 69
      end
      item
        Color = clSkyBlue
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20837#24235'|RKQty'
        Width = 66
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'Remain'
        Footers = <>
        Title.Caption = '='#21487#21033#24235'|=Remain'
        Title.Color = clAqua
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 279
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 240
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select MatList.*,#RemainKC_N26.Remain from ('
      
        'select CLBH,YWPM,ZWPM,CQDH,DWBH,Sum(CLSL) as CLSL,Sum(CGQty) as ' +
        'CGQty,Sum(RKQty) as RKQty from ('
      'Select * from ( '
      
        'select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,' +
        'DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DD' +
        'ZL.Pairs,'
      
        '        case when DDZLTW.DDZT<>'#39'C'#39' then isnull(sum(ZLZLS2.CLSL),' +
        '0) else 0 end as CLSL,'
      '        isnull(CGZL.CGQty,0) as CGQty,'
      '        CGZl.CGDate,CGZL.YQDate,CGZL.CFMDate,CGZL.CGNO,'
      
        '        DDZL.ShipDate,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,'#39'Y'#39' as De' +
        'lFlag     '
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH  and DDZ' +
        'L.DDBH  like '#39'Y2004-0461%'#39' '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPr' +
        'ice '
      '           from CGZLSS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH  and DDZL.' +
        'DDBH  like '#39'Y2004-0461%'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.ZLBH  like '#39'Y2004-0461%'#39' '
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
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH  and DDZL.DDB' +
        'H  like '#39'Y2004-0461%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH  like '#39'Y2004-0461%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      '       where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH  like '#39'Y2004-0461%'#39' '
      ' and RKZL.RKQty>0 '
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and ZLZLS2.CLSL<>0'
      
        'group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.C' +
        'LBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,'
      '         DDZL.Pairs,CGZl.CGQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate, '
      '         RKZL.USPrice,RKZL.VNPrice,CGZL.USPrice,CGZL.VNPrice'
      ') ZLZLS2 where 1=1  '
      'union all'
      
        'select CGZLSS.*,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,'#39'N'#39' as DelFlag ' +
        ' from ('
      
        'select DDZLTW.BUYNO,CGZLSS.ZLBH,DDZLTW.DDZT,DDZLTW.KHPO,CGZLS.CL' +
        'BH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZLTW.Pairs,'
      
        '       case when DDZLTW.DDZT<>'#39'C'#39' then isnull(Sum(CGZLSS.CLSL),0' +
        ') else 0 end as CLSL,'
      
        '       Sum(CGZLSS.Qty) as CGQty,Max(CGZL.CGDate) as CGDate,Max(C' +
        'GZLS.YQDate) as YQDate,Max(CGZLSS.CFMDate) as CFMDate,Max(CGZL.C' +
        'GNO) as CGNO,DDZLTW.ShipDate from CGZLSS with (nolock)'
      'Left join  CGZL with (nolock)  on CGZL.CGNO=CGZLSS.CGNO'
      
        'Left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZ' +
        'LS.CLBH=CGZLSS.CLBH'
      'Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH'
      'Left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'where CGZLSS.Qty>0 and CGZL.GSBH ='#39'VA12'#39
      '      and CGZLSS.ZLBH  like '#39'Y2004-0461%'#39' '
      
        '      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZM' +
        'LB='#39'N'#39' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2' +
        '.CLBH=CGZLSS.CLBH)) '
      
        '      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZL' +
        'SS.ZLBH)) )'
      
        'group by DDZLTW.BUYNO,DDZLTW.KHPO,CGZLSS.ZLBH,DDZLTW.Pairs,CGZLS' +
        '.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,DDZLTW.ShipDate,DD' +
        'ZLTW.DDZT '
      ') CGZLSS'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      
        '                  max(kcrks.usprice) as usprice,max(kcrks.vnpric' +
        'e) as vnprice '
      '           from  KCRKS with (nolock)  '
      
        '           inner join DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH  and D' +
        'DZL.DDBH  like '#39'Y2004-0461%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where 1=1 '
      '                 and KCRKS.CGBH  like '#39'Y2004-0461%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=CGZLSS.ZLBH and RKZL.CLBH=CGZLSS.C' +
        'LBH '
      'where 1=1'
      ' and RKZL.RKQty>0 '
      ' ) MatList Group by CLBH,YWPM,ZWPM,CQDH,DWBH ) MatList '
      'Left join #RemainKC_N26 on #RemainKC_N26.CLDH=MatList.CLBH')
    Left = 328
    Top = 209
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
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
    end
    object Query1Remain: TFloatField
      FieldName = 'Remain'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select * from ( '
      
        'select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,' +
        'DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DD' +
        'ZL.Pairs,'
      
        '        case when DDZLTW.DDZT<>'#39'C'#39' then isnull(sum(ZLZLS2.CLSL),' +
        '0) else 0 end as CLSL,'
      '        isnull(CGZL.CGQty,0) as CGQty,'
      '        CGZl.CGDate,CGZL.YQDate,CGZL.CFMDate,CGZL.CGNO,'
      
        '        DDZL.ShipDate,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,'#39'Y'#39' as De' +
        'lFlag '
      '      '
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2004-0461%'#39' '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPr' +
        'ice '
      '           from CGZLSS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.G' +
        'SBH='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2004-0461%'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.ZLBH  like '#39'Y2004-0461%'#39' '
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
        '='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2004-0461%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CGBH  like '#39'Y2004-0461%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      '       where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH  like '#39'Y2004-0461%'#39' '
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and ZLZLS2.CLSL<>0'
      
        'group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.C' +
        'LBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,'
      '         DDZL.Pairs,CGZl.CGQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate, '
      '         RKZL.USPrice,RKZL.VNPrice,CGZL.USPrice,CGZL.VNPrice'
      ') ZLZLS2 where 1=1  '
      ''
      'union all'
      ''
      ''
      
        'select CGZLSS.*,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,'#39'N'#39' as DelFlag ' +
        ' from ('
      
        'select DDZLTW.BUYNO,CGZLSS.ZLBH,DDZLTW.DDZT,DDZLTW.KHPO,CGZLS.CL' +
        'BH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZLTW.Pairs,case whe' +
        'n DDZLTW.DDZT<>'#39'C'#39' then isnull(Sum(CGZLSS.CLSL),0) else 0 end as' +
        ' CLSL,Sum(CGZLSS.Qty) as CGQty,'
      
        '       Max(CGZL.CGDate) as CGDate,Max(CGZLS.YQDate) as YQDate,Ma' +
        'x(CGZLSS.CFMDate) as CFMDate,Max(CGZL.CGNO) as CGNO,DDZLTW.ShipD' +
        'ate from CGZLSS with (nolock)'
      'Left join  CGZL with (nolock)  on CGZL.CGNO=CGZLSS.CGNO'
      
        'Left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZ' +
        'LS.CLBH=CGZLSS.CLBH'
      'Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH'
      'Left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'where CGZLSS.Qty>0 and CGZL.GSBH ='#39'VA12'#39
      '      and CGZLSS.ZLBH  like '#39'Y2008-0303%'#39' '
      
        '      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZM' +
        'LB='#39'N'#39' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2' +
        '.CLBH=CGZLSS.CLBH)) '
      
        '      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZL' +
        'SS.ZLBH)) )'
      
        'group by DDZLTW.BUYNO,DDZLTW.KHPO,CGZLSS.ZLBH,DDZLTW.Pairs,CGZLS' +
        '.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,DDZLTW.ShipDate,DD' +
        'ZLTW.DDZT '
      ') CGZLSS'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      
        '                  max(kcrks.usprice) as usprice,max(kcrks.vnpric' +
        'e) as vnprice '
      '           from  KCRKS with (nolock)  '
      
        '           inner join DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH and DD' +
        'ZL.DDBH  like '#39'Y2008-0303%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where 1=1 '
      '                 and KCRKS.CGBH  like '#39'Y2008-0303%'#39' '
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=CGZLSS.ZLBH and RKZL.CLBH=CGZLSS.C' +
        'LBH '
      'where 1=1 ')
    Left = 760
    Top = 201
    object Query2BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query2RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query2CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query2ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query2RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2DelFlag: TStringField
      FieldName = 'DelFlag'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 760
    Top = 232
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#RemainKC'#39') is not null  '
      'begin   drop table #RemainKC end   '
      'if object_id('#39'tempdb..#RemainKC_N26'#39') is not null  '
      'begin   drop table #RemainKC_N26 end   '
      'select CLZL.CLDH,'
      '       CLZL.CLLB,'
      '       CLZL.YWPM,'
      '       CLZL.ZWPM,'
      '       CLZL.DWBH,'
      '       CLZL.CQDH,'
      '       LastKC.LastRem,'
      '       RK.RKQty,'
      '       QC.QCQty,'
      '       LL.LLQty,'
      '       JGRK.JGRK,'
      '       JGCK.JGCK,'
      '       JGCKTemp.JGCK as JGCKTemp,'
      '       JGCKTemp1.JGCK as JGCKTempM'
      'into #RemainKC from CLZL  '
      'left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2020'#39
      '           and KCMONTH='#39'07'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                 '#39'2020/08/01'#39
      '                 and '
      
        '                 convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))<='
      '                 '#39'2020/08/14'#39
      '                 and KCRKS.CLBH like '#39'%'#39
      '                 and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty '
      '           from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=' +
        #39'NO'#39' '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                '#39'2020/08/01'#39
      
        '                and convert(smalldatetime,convert(varchar,KCRK.U' +
        'SERDATE,111))<='
      '                '#39'2020/08/14'#39
      '                and KCRKS.CLBH like '#39'%'#39
      '                and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty '
      '           from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2020/08/14'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '                 and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2020/08/14'#39
      '                 and JGZLS.CLBH like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      
        '                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CL' +
        'DH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty '
      '                      from JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2020/08/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2020/08/14'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<'#39'2017/09/01'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2020/08/14'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<'#39'2017/09/01'#39
      '                 and JGZLS.ZMLB like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      '                 group by JGZLS.ZMLB '
      '           union all'
      '           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2020/08/14'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))>='#39'2017/09/01'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '                 and KCLL.SCBH ='#39'JJJJJJJJJJ'#39
      '           group by KCLL.CKBH,KCLLS.CLBH'
      '           ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where 1=2 and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2020/08/14'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      ' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           where  JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2020/08/14'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZ' +
        'L.CLDH'
      
        '  where not (LastKC.LastRem is null  and RK.RKQty is null and LL' +
        '.LLQty is null '
      
        '               and JGRK.JGRK is null and JGCK.JGCK is null and J' +
        'GCKTemp.JGCK is null and JGCKTemp1.JGCK is null)'
      'and LEFT(CLZL.CLDH,1)<>'#39'X'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'Z'#39'   '
      'and LEFT(CLZL.CLDH,1)<>'#39'V'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'J'#39'  '
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select #RemainKC.CLDH,'
      '       KCZLS.KCBH,'
      '       KCZLS.CKBH,'
      '    case when isnull(zlzls.UnLL,0)>=0 then '
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0) -isn' +
        'ull(ZLZLS.UnLL,0) - isnull(JGZLZLS2.CLSL,0) '
      '    else '
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnu' +
        'll(JGZLZLS2.CLSL,0) end as Remain'
      'into #RemainKC_N26 '
      'from #RemainKC '
      'left join (select * '
      '           from KCZLS '
      '           where CKBH='#39'VA12'#39
      '           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH'
      'left join     '
      
        '  (select ZLZLS2.CLBH, sum(case when isnull(ZLZLS2.CLSL,0)-ISNUL' +
        'L(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZ' +
        'LS2LL.QTY,0) end) UnLL '
      '   from (     '
      '            (select ZLZLS2.ZLBH,ZLZLS2.CLBH '
      '                   ,sum(ZLZLS2.CLSL) AS CLSL '
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             where ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39 +
        ' and DDZL.DDRQ<=convert(smalldatetime,'#39'2020/08/14'#39') '
      '                   and ZLZLS2.CLBH like '#39'%'#39
      
        '                   and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Conve' +
        'rt(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' an' +
        'd ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate'
      '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 '
      
        '    left join (select  KCLLS.SCBH,KCLLS.CLBH, sum(CASE  WHEN (KC' +
        'LLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty' +
        ' '
      '               from  KCLLS,KCLL '
      '               left join ddzl on ddzl.ddbh=KCLL.SCBH'
      
        '               where KCLL.CFMID<>'#39'NO'#39' AND KCLLS.LLNO=KCLL.LLNO A' +
        'ND KCLL.SCBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39'  and convert(va' +
        'rchar,KCLL.CFMDate,111)<='#39'2020/08/14'#39' '
      
        '               and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert(v' +
        'archar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and dd' +
        'zl.DDLB in ('#39'F'#39','#39'N'#39')  and ddzl.shipdate >@Ldate and DDZL.DDRQ<=c' +
        'onvert(smalldatetime,'#39'2020/08/14'#39') '
      '               and KCLLS.CLBH like '#39'%'#39' '
      '               group by KCLLS.SCBH,KCLLS.CLBH '
      
        '               ) ZLZLS2LL on ZLZLS2LL.CLBH=ZLZLS2.CLBH and ZLZLS' +
        '2LL.SCBH=ZLZLS2.ZLBH '
      '         ) group by ZLZLS2.clbh '
      '   )ZLZLS on  ZLZLS.clbh=#RemainKC.CLDH '
      
        'left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2' +
        '.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS ' +
        'CLSLS, ZLZLS2.MJBH'
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             left join (select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JG' +
        'ZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS'
      #9#9#9#9#9#9'   left join JGZL on JGZL.JGNO=JGZLSS.JGNO '
      
        #9#9#9#9#9#9'   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLB' +
        'H=JGZLSS.CLBH'
      '              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  '
      #9#9#9#9#9#9'   where JGZL.CFMID1 <>'#39'NO'#39' and JGZLS.ZMLB like '#39'%'#39' '
      #9#9#9#9#9#9#9#9' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39' '
      
        '                and convert(smalldatetime,convert(varchar,JGZL.C' +
        'FMDATE1,111))< '#39'2017/09/01'#39
      
        '                and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert(' +
        'varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and d' +
        'dzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=' +
        'convert(smalldatetime,'#39'2020/08/14'#39') '
      #9#9#9#9#9#9#9'group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB '
      '           union all'
      
        '           select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KC' +
        'LLS.Qty) as okQty from KCLL '
      '           left join KCLLS on KCLLS.LLNO=KCLL.LLNO '
      '           left join ddzl on ddzl.ddbh=KCLLS.SCBH  '
      
        '                where convert(smalldatetime,convert(varchar,KCLL' +
        '.CFMDATE,111))>='#39'2017/09/01'#39
      
        '                 and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLL.CFMID <>'#39'NO' +
        #39
      '                 and KCLLS.CLBH like '#39'%'#39
      
        '                 and KCLL.GSBH='#39'VA12'#39' and convert(varchar,KCLL.C' +
        'FMDate,111)<='#39'2020/08/14'#39' '
      
        '                 and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert' +
        '(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and ' +
        'ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate  and DDZL.DDRQ' +
        '<=Convert(smalldatetime,'#39'2020/08/14'#39') '
      '           group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH'
      
        #9#9#9#9#9#9'  ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZL' +
        'S2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH'
      
        '             where ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA1' +
        '2'#39' '
      '                   and ZLZLS2.CLBH like '#39'%'#39' '
      
        '                   and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Conve' +
        'rt(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' an' +
        'd ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate and DDZL.DDR' +
        'Q<=convert(smalldatetime,'#39'2020/08/14'#39') '
      
        '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty, ZLZL' +
        'S2.MJBH'
      
        '                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty' +
        ',0)'
      
        '            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#Re' +
        'mainKC.CLDH '
      
        'left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGR' +
        'K.okQty,0)) as UnRkQty  '
      '           from CGZLS'
      '           left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      
        '           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCR' +
        'KS.Qty,0)) as okQty from KCRKS'
      '                      left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '                      where IsNull(KCRKS.Flag,0)<>1  and ISNULL(' +
        'KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'DL'#39' and KCRK.GS' +
        'BH='#39'VA12'#39' '
      
        '                            and convert(varchar,KCRK.USERDATE,11' +
        '1)<='#39'2020/08/14'#39
      
        '                            and ZSNO in (select CGNO from CGZL w' +
        'here CGZL.GSBH='#39'VA12'#39'  '
      
        '                                                                ' +
        '      and (CGZL.CGLX='#39'2'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'5'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'3'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'1'#39')'
      
        '                                                                ' +
        '    and CGZL.CGDate > @Ldate ) '
      
        '                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CG' +
        'RK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH '
      
        '           where  CGZLS.YN<>'#39'5'#39' and CGZLS.YN<>'#39'0'#39' and IsNull(CGZ' +
        'L.DevType,'#39#39')<>'#39'Z07'#39' '
      '                  and CGZLS.CLBH like '#39'%'#39
      '                  and CGZL.GSBH='#39'VA12'#39
      
        '                  and CGZL.CGDate > @Ldate and convert(varchar,C' +
        'GZL.CGDate,111)<='#39'2020/08/14'#39'  '
      '                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) '
      '                  and (CGZL.CGLX='#39'2'#39
      '                  or CGZL.CGLX='#39'5'#39
      '                  or CGZL.CGLX='#39'3'#39
      '                  or CGZL.CGLX='#39'1'#39')'
      
        '           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLD' +
        'H '
      'where 1=1 '
      'and  ('
      '     case when isnull(zlzls.UnLL,0)>=0 then '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- i' +
        'snull(zlzls.UnLL,0) -isnull(JGZLZLS2.CLSL,0) )'
      '     else '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-is' +
        'null(JGZLZLS2.CLSL,0) )'
      '     end ) >0.05 '
      'order by #RemainKC.CLDH')
    Left = 299
    Top = 208
  end
  object CGZLSSQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'if object_id('#39'tempdb..#RemainKC'#39') is not null  '
      'begin   drop table #RemainKC end   '
      'if object_id('#39'tempdb..#RemainKC_N26'#39') is not null  '
      'begin   drop table #RemainKC_N26 end   '
      'select CLZL.CLDH,'
      '       CLZL.CLLB,'
      '       CLZL.YWPM,'
      '       CLZL.ZWPM,'
      '       CLZL.DWBH,'
      '       CLZL.CQDH,'
      '       LastKC.LastRem,'
      '       RK.RKQty,'
      '       QC.QCQty,'
      '       LL.LLQty,'
      '       JGRK.JGRK,'
      '       JGCK.JGCK,'
      '       JGCKTemp.JGCK as JGCKTemp,'
      '       JGCKTemp1.JGCK as JGCKTempM'
      'into #RemainKC from CLZL  '
      'left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2020'#39
      '           and KCMONTH='#39'07'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                 '#39'2020/08/01'#39
      '                 and '
      
        '                 convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))<='
      '                 '#39'2020/08/14'#39
      '                 and KCRKS.CLBH like '#39'%'#39
      '                 and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty '
      '           from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=' +
        #39'NO'#39' '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                '#39'2020/08/01'#39
      
        '                and convert(smalldatetime,convert(varchar,KCRK.U' +
        'SERDATE,111))<='
      '                '#39'2020/08/14'#39
      '                and KCRKS.CLBH like '#39'%'#39
      '                and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty '
      '           from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2020/08/14'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '                 and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2020/08/14'#39
      '                 and JGZLS.CLBH like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      
        '                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CL' +
        'DH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty '
      '                      from JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2020/08/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2020/08/14'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<'#39'2017/09/01'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2020/08/14'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<'#39'2017/09/01'#39
      '                 and JGZLS.ZMLB like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      '                 group by JGZLS.ZMLB '
      '           union all'
      '           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2020/08/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2020/08/14'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))>='#39'2017/09/01'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '                 and KCLL.SCBH ='#39'JJJJJJJJJJ'#39
      '           group by KCLL.CKBH,KCLLS.CLBH'
      '           ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where 1=2 and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2020/08/14'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      ' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           where  JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2020/08/14'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZ' +
        'L.CLDH'
      
        '  where not (LastKC.LastRem is null  and RK.RKQty is null and LL' +
        '.LLQty is null '
      
        '               and JGRK.JGRK is null and JGCK.JGCK is null and J' +
        'GCKTemp.JGCK is null and JGCKTemp1.JGCK is null)'
      'and LEFT(CLZL.CLDH,1)<>'#39'X'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'Z'#39'   '
      'and LEFT(CLZL.CLDH,1)<>'#39'V'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'J'#39'  '
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select #RemainKC.CLDH,'
      '       KCZLS.KCBH,'
      '       KCZLS.CKBH,'
      '    case when isnull(zlzls.UnLL,0)>=0 then '
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0) -isn' +
        'ull(ZLZLS.UnLL,0) - isnull(JGZLZLS2.CLSL,0) '
      '    else '
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnu' +
        'll(JGZLZLS2.CLSL,0) end as Remain'
      'into #RemainKC_N26 '
      'from #RemainKC '
      'left join (select * '
      '           from KCZLS '
      '           where CKBH='#39'VA12'#39
      '           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH'
      'left join     '
      
        '  (select ZLZLS2.CLBH, sum(case when isnull(ZLZLS2.CLSL,0)-ISNUL' +
        'L(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZ' +
        'LS2LL.QTY,0) end) UnLL '
      '   from (     '
      '            (select ZLZLS2.ZLBH,ZLZLS2.CLBH '
      '                   ,sum(ZLZLS2.CLSL) AS CLSL '
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             where ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39 +
        ' and DDZL.DDRQ<=convert(smalldatetime,'#39'2020/08/14'#39') '
      '                   and ZLZLS2.CLBH like '#39'%'#39
      
        '                   and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Conve' +
        'rt(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' an' +
        'd ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate'
      '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 '
      
        '    left join (select  KCLLS.SCBH,KCLLS.CLBH, sum(CASE  WHEN (KC' +
        'LLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty' +
        ' '
      '               from  KCLLS,KCLL '
      '               left join ddzl on ddzl.ddbh=KCLL.SCBH'
      
        '               where KCLL.CFMID<>'#39'NO'#39' AND KCLLS.LLNO=KCLL.LLNO A' +
        'ND KCLL.SCBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39'  and convert(va' +
        'rchar,KCLL.CFMDate,111)<='#39'2020/08/14'#39' '
      
        '               and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert(v' +
        'archar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and dd' +
        'zl.DDLB in ('#39'F'#39','#39'N'#39')  and ddzl.shipdate >@Ldate and DDZL.DDRQ<=c' +
        'onvert(smalldatetime,'#39'2020/08/14'#39') '
      '               and KCLLS.CLBH like '#39'%'#39' '
      '               group by KCLLS.SCBH,KCLLS.CLBH '
      
        '               ) ZLZLS2LL on ZLZLS2LL.CLBH=ZLZLS2.CLBH and ZLZLS' +
        '2LL.SCBH=ZLZLS2.ZLBH '
      '         ) group by ZLZLS2.clbh '
      '   )ZLZLS on  ZLZLS.clbh=#RemainKC.CLDH '
      
        'left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2' +
        '.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS ' +
        'CLSLS, ZLZLS2.MJBH'
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             left join (select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JG' +
        'ZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS'
      #9#9#9#9#9#9'   left join JGZL on JGZL.JGNO=JGZLSS.JGNO '
      
        #9#9#9#9#9#9'   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLB' +
        'H=JGZLSS.CLBH'
      '              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  '
      #9#9#9#9#9#9'   where JGZL.CFMID1 <>'#39'NO'#39' and JGZLS.ZMLB like '#39'%'#39' '
      #9#9#9#9#9#9#9#9' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39' '
      
        '                and convert(smalldatetime,convert(varchar,JGZL.C' +
        'FMDATE1,111))< '#39'2017/09/01'#39
      
        '                and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert(' +
        'varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and d' +
        'dzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=' +
        'convert(smalldatetime,'#39'2020/08/14'#39') '
      #9#9#9#9#9#9#9'group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB '
      '           union all'
      
        '           select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KC' +
        'LLS.Qty) as okQty from KCLL '
      '           left join KCLLS on KCLLS.LLNO=KCLL.LLNO '
      '           left join ddzl on ddzl.ddbh=KCLLS.SCBH  '
      
        '                where convert(smalldatetime,convert(varchar,KCLL' +
        '.CFMDATE,111))>='#39'2017/09/01'#39
      
        '                 and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLL.CFMID <>'#39'NO' +
        #39
      '                 and KCLLS.CLBH like '#39'%'#39
      
        '                 and KCLL.GSBH='#39'VA12'#39' and convert(varchar,KCLL.C' +
        'FMDate,111)<='#39'2020/08/14'#39' '
      
        '                 and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Convert' +
        '(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' and ' +
        'ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate  and DDZL.DDRQ' +
        '<=Convert(smalldatetime,'#39'2020/08/14'#39') '
      '           group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH'
      
        #9#9#9#9#9#9'  ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZL' +
        'S2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH'
      
        '             where ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA1' +
        '2'#39' '
      '                   and ZLZLS2.CLBH like '#39'%'#39' '
      
        '                   and ((ddzl.YN='#39'1'#39') or (ddzl.YN<>'#39'1'#39' and Conve' +
        'rt(varchar,ddzl.OKDate,111)>'#39'2020/08/14'#39')) and ddzl.DDZT<>'#39'C'#39' an' +
        'd ddzl.DDLB in ('#39'F'#39','#39'N'#39') and ddzl.shipdate > @Ldate and DDZL.DDR' +
        'Q<=convert(smalldatetime,'#39'2020/08/14'#39') '
      
        '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty, ZLZL' +
        'S2.MJBH'
      
        '                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty' +
        ',0)'
      
        '            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#Re' +
        'mainKC.CLDH '
      
        'left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGR' +
        'K.okQty,0)) as UnRkQty  '
      '           from CGZLS'
      '           left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      
        '           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCR' +
        'KS.Qty,0)) as okQty from KCRKS'
      '                      left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '                      where IsNull(KCRKS.Flag,0)<>1  and ISNULL(' +
        'KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'DL'#39' and KCRK.GS' +
        'BH='#39'VA12'#39' '
      
        '                            and convert(varchar,KCRK.USERDATE,11' +
        '1)<='#39'2020/08/14'#39
      
        '                            and ZSNO in (select CGNO from CGZL w' +
        'here CGZL.GSBH='#39'VA12'#39'  '
      
        '                                                                ' +
        '      and (CGZL.CGLX='#39'2'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'5'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'3'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'1'#39')'
      
        '                                                                ' +
        '    and CGZL.CGDate > @Ldate ) '
      
        '                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CG' +
        'RK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH '
      
        '           where  CGZLS.YN<>'#39'5'#39' and CGZLS.YN<>'#39'0'#39' and IsNull(CGZ' +
        'L.DevType,'#39#39')<>'#39'Z07'#39' '
      '                  and CGZLS.CLBH like '#39'%'#39
      '                  and CGZL.GSBH='#39'VA12'#39
      
        '                  and CGZL.CGDate > @Ldate and convert(varchar,C' +
        'GZL.CGDate,111)<='#39'2020/08/14'#39'  '
      '                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) '
      '                  and (CGZL.CGLX='#39'2'#39
      '                  or CGZL.CGLX='#39'5'#39
      '                  or CGZL.CGLX='#39'3'#39
      '                  or CGZL.CGLX='#39'1'#39')'
      
        '           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLD' +
        'H '
      'where 1=1 '
      'and  ('
      '     case when isnull(zlzls.UnLL,0)>=0 then '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- i' +
        'snull(zlzls.UnLL,0) -isnull(JGZLZLS2.CLSL,0) )'
      '     else '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-is' +
        'null(JGZLZLS2.CLSL,0) )'
      '     end ) >0.05 '
      'order by #RemainKC.CLDH')
    Left = 363
    Top = 208
  end
end
