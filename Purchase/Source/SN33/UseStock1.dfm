object UseStock: TUseStock
  Left = 534
  Top = 259
  Width = 1078
  Height = 519
  Caption = 'UseStock'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1062
    Height = 480
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'UseStock'#21033#24235
      object Splitter1: TSplitter
        Left = 801
        Top = 81
        Width = 5
        Height = 368
        Align = alRight
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1054
        Height = 81
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 18
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 176
          Top = 18
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 176
          Top = 50
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrdNo:'
        end
        object Label6: TLabel
          Left = 512
          Top = 19
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'XieMing:'
        end
        object Label7: TLabel
          Left = 368
          Top = 20
          Width = 71
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customer:'
        end
        object Label3: TLabel
          Left = 0
          Top = 51
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SKU#:'
        end
        object Label13: TLabel
          Left = 672
          Top = 20
          Width = 63
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BUYNO:'
        end
        object Button1: TButton
          Left = 837
          Top = 43
          Width = 81
          Height = 33
          Caption = 'Query'
          TabOrder = 6
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 264
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
          Left = 80
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
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 444
          Top = 16
          Width = 65
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
          Left = 264
          Top = 48
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object Edit6: TEdit
          Left = 572
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
          TabOrder = 3
        end
        object CheckBox1: TCheckBox
          Left = 631
          Top = 52
          Width = 80
          Height = 17
          Caption = 'TW'
          Color = 10395294
          ParentColor = False
          TabOrder = 7
        end
        object Button2: TButton
          Left = 837
          Top = 8
          Width = 81
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 8
          OnClick = Button2Click
        end
        object Edit3: TEdit
          Left = 80
          Top = 48
          Width = 97
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button3: TButton
          Left = 925
          Top = 43
          Width = 81
          Height = 33
          Caption = 'PRINT'
          TabOrder = 9
          OnClick = Button3Click
        end
        object CheckBox2: TCheckBox
          Left = 718
          Top = 52
          Width = 80
          Height = 17
          Caption = 'VN'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 10
        end
        object Edit7: TEdit
          Left = 737
          Top = 16
          Width = 93
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 11
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 81
        Width = 801
        Height = 368
        Align = alClient
        DataSource = DSZLZLS2
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
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BUYNO|BUYNO'
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#25976#37327'|CGQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CLBHYS'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20195#29992#26448#26009'|CLBHYS'
            Visible = False
            Width = 84
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'ZKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21033#24235#21934#34399'|Kho No'
            Width = 80
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'ZKQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21033#24235#25976#37327'|Kho Qty'
            Width = 61
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'ZKLQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21033#24235#21097#39192'|Kho con'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #21033#24235#20633#35387'|UseStock Memo'
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#26085#26399'|CGDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35201#27714#20132#26399'|YQDate'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22238#24489#20132#26399'|CFMDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#26085#26399'|RKDate'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
            Title.TitleButton = True
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#21934#34399'|CGNO'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Title.Caption = #20351#29992#32773'ID|USERID'
          end>
      end
      object Panel2: TPanel
        Left = 806
        Top = 81
        Width = 248
        Height = 368
        Align = alRight
        TabOrder = 2
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 49
          Width = 246
          Height = 318
          Align = alClient
          DataSource = DS1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'SIZE'
              Footers = <>
              ReadOnly = True
              Title.Caption = #23610#30908'|SIZE'
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footer.FieldName = 'CLSL'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #35069#20196#29992#37327'|CLSL'
              Width = 57
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'UseStock'
              Footer.FieldName = 'UseStock'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20351#29992#24235#23384'|UseStock'
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              Title.Caption = #20351#29992#32773'ID|USERID'
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 246
          Height = 48
          Align = alTop
          TabOrder = 1
          object BB5: TBitBtn
            Left = 0
            Top = -1
            Width = 49
            Height = 49
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BB5Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 216
  end
  object DSZLZLS2: TDataSource
    DataSet = ZLZLS2Qry
    Left = 169
    Top = 184
  end
  object ZLZLS2Qry: TQuery
    CachedUpdates = True
    AfterOpen = ZLZLS2QryAfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      'select * from ('
      
        'select  isnull(DDZLTW.BUYNO,0)as BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,C' +
        'LZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pair' +
        's,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMD' +
        'ate,CGZl.CGDate,'
      
        '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBH' +
        'YS,'
      
        '        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL' +
        '.ShipDate,KCZK.ZKBH,KCZK.Memo,KCZK.ZKQty,KCZK.ZKLQty,CGKCUSE.Use' +
        'rID'
      'from ZLZLS2  with (nolock) '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join DDZlTW  with (nolock) on DDZlTW.DDBH=ZLZLS2.ZLBH'
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH '
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH'
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and X' +
        'XZL.SheHao=DDZl.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate '
      '           from CGZLSS with (nolock) '
      
        '           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGN' +
        'O'
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CGZLSS.ZLBH like '#39'Y21%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate '
      '           from  KCRKS with (nolock) '
      
        '           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where KCRKS.CLBH like '#39'%'#39
      '                 and KCRKS.CGBH like '#39'Y21%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'Left Join ( select ZKBH,CLBH,Memo,ZKQty,ZKLQty from ('
      
        #9#9'select ZKBH,CLBH,Memo,Qty as ZKQty,LQty as ZKLQty,ROW_NUMBER()' +
        ' over (PARTITION BY CLBH ORDER BY (convert(float,YN))*10000*(cas' +
        'e when LQty>0 then 1 else 0 end)+YN DESC,ZKBH DESC) as  rn'
      #9#9'from KCZK'
      #9#9'where KCZK.GSBH='#39'VA12'#39
      '      and KCZK.Memo like '#39'%2-6 buy 2021 huy do Covid%'#39
      
        '    and KCZK.USERDate>GetDate()-180 and LQty>=0 ) KCZK where KCZ' +
        'K.rn=1 )  KCZK on KCZK.CLBH=ZLZLS2.CLBH '
      'where ZLZLS2.CLBH like '#39'%'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'Y21%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and XXZl.XieMing like '#39'%%'#39
      '       and XXZL.Article like '#39'%'#39
      '       and DDZL.GSBH='#39'VA12'#39
      '       and KFZL.KFJC like '#39'%%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and SCZL.SCBH=SCZl.ZLBH '
      '       and SCZL.SCBH is not null '
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      
        'group by DDZLTW.BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWB' +
        'H,CLZL.CQDH,CLZL.ZWPM,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGKCUS' +
        'E.CLBHYS,CGZl.CGQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate,KCZK.ZKBH,KCZK.ZKQty,KCZK.ZKLQty,KCZK' +
        '.Memo,CGKCUSE.UserID'
      ' ) ZLZLS2'
      ' where 1=1'
      '      and ZLZLS2.Memo like '#39'%2-6 buy 2021 huy do Covid%'#39
      'order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH'
      '')
    UpdateObject = UpZLZLS2
    Left = 168
    Top = 216
    object ZLZLS2QryBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object ZLZLS2QryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object ZLZLS2QryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object ZLZLS2QryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ZLZLS2QryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object ZLZLS2QryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object ZLZLS2QryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ZLZLS2QryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ZLZLS2QryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object ZLZLS2QryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object ZLZLS2QryCGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object ZLZLS2QryRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object ZLZLS2QryUseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object ZLZLS2QryCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object ZLZLS2QryYQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object ZLZLS2QryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object ZLZLS2QryRKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object ZLZLS2QryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object ZLZLS2QryCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object ZLZLS2QryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object ZLZLS2QryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object ZLZLS2QryCLBHYS: TStringField
      FieldName = 'CLBHYS'
      FixedChar = True
      Size = 15
    end
    object ZLZLS2QryZKBH: TStringField
      FieldName = 'ZKBH'
      FixedChar = True
      Size = 11
    end
    object ZLZLS2QryZKQty: TFloatField
      FieldName = 'ZKQty'
    end
    object ZLZLS2QryZKLQty: TFloatField
      FieldName = 'ZKLQty'
    end
    object ZLZLS2QryMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 200
    end
    object ZLZLS2QryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
  end
  object UpZLZLS2: TUpdateSQL
    Left = 168
    Top = 248
  end
  object PrintDBGridEh2: TPrintDBGridEh
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 208
    Top = 216
  end
  object DS1: TDataSource
    DataSet = CGKCUSESQry
    Left = 880
    Top = 192
  end
  object UpSql1: TUpdateSQL
    Left = 880
    Top = 256
  end
  object CGKCUSESQry: TQuery
    CachedUpdates = True
    AfterOpen = CGKCUSESQryAfterOpen
    DatabaseName = 'DB'
    DataSource = DSZLZLS2
    RequestLive = True
    SQL.Strings = (
      ''
      
        'Select ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,Sum(ZLZLS2.CLSL) as C' +
        'LSL,IsNull(CGKCUSES.Qty,0) as UseStock,CGKCUSES.UserID'
      'from ZLZLS2'
      
        'left join (select ZLBH,CLBH,SIZE,Sum(Qty) as Qty,UserID from CGK' +
        'CUSES where ZLBH=:ZLBH and CLBH=:CLBH and GSBH=:GSBH   Group by ' +
        'ZLBH,CLBH,SIZE,UserID ) CGKCUSES on CGKCUSES.ZLBH=ZLZLS2.ZLBH an' +
        'd CGKCUSES.CLBH=ZLZLS2.CLBH and CGKCUSES.SIZE=ZLZLS2.SIZE'
      'where ZLZLS2.ZLBH=:ZLBH and ZLZLS2.CLBH=:CLBH'
      
        'Group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,CGKCUSES.Qty,CGKCUS' +
        'ES.UserID'
      'Order by ZLZLS2.SIZE'
      '')
    UpdateObject = UpSql1
    Left = 880
    Top = 224
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object CGKCUSESQryZLBH: TStringField
      DisplayWidth = 15
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CGKCUSESQryCLBH: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CGKCUSESQrySIZE: TStringField
      DisplayWidth = 9
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CGKCUSESQryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CGKCUSESQryUseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object CGKCUSESQryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
  end
  object KCZKSQry: TQuery
    CachedUpdates = True
    AfterOpen = CGKCUSESQryAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      '')
    UpdateObject = UpdKCZKS
    Left = 928
    Top = 224
  end
  object UpdKCZKS: TUpdateSQL
    ModifySQL.Strings = (
      '')
    Left = 928
    Top = 256
  end
end
