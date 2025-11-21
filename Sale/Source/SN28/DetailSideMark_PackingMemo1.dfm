object DetailSideMark_PackingMemo: TDetailSideMark_PackingMemo
  Left = 288
  Top = 118
  Width = 1051
  Height = 563
  Caption = 'DetailSideMark_PackingMemo'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1035
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
      Left = 8
      Top = 18
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 17
      Width = 56
      Height = 16
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
    object Label3: TLabel
      Left = 192
      Top = 49
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtSpecNo: TEdit
      Left = 91
      Top = 15
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtArticle: TEdit
      Left = 250
      Top = 15
      Width = 121
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
    object RB1: TRadioButton
      Left = 376
      Top = 14
      Width = 86
      Height = 17
      Caption = 'XF From'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
    end
    object DTP1: TDateTimePicker
      Left = 470
      Top = 12
      Width = 89
      Height = 24
      Date = 43101.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 43101.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 582
      Top = 12
      Width = 89
      Height = 24
      Date = 43435.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 43435.569282222220000000
      TabOrder = 4
    end
    object RB2: TRadioButton
      Left = 376
      Top = 46
      Width = 89
      Height = 17
      Caption = 'BuyNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button3: TButton
      Left = 675
      Top = 5
      Width = 70
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 675
      Top = 40
      Width = 70
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object edtBuyNo: TEdit
      Left = 469
      Top = 43
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object edtCountry: TEdit
      Left = 251
      Top = 44
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object SideMark_PackingPage: TPageControl
    Left = 0
    Top = 81
    Width = 1035
    Height = 443
    ActivePage = TS4
    Align = alClient
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'SideMark'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1027
        Height = 412
        Align = alClient
        DataSource = DS_YWDDMT
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'MTBH1'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MTLR1'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MTBH2'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MTLR2'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MTBH3'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MTLR3'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MTBH4'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MTLR4'
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Packing Memo'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 25
        Width = 1027
        Height = 387
        Align = alClient
        DataSource = DS_YWDDBZ
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MENO'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'LX'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'VNSM'
            Footers = <>
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1027
        Height = 25
        Align = alTop
        TabOrder = 1
        object rdShipping: TRadioButton
          Left = 66
          Top = 3
          Width = 73
          Height = 17
          Caption = 'shipping'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rdShippingClick
        end
        object rdProduction: TRadioButton
          Left = 178
          Top = 4
          Width = 89
          Height = 17
          Caption = 'production'
          TabOrder = 1
          OnClick = rdProductionClick
        end
        object rdTotal: TRadioButton
          Left = 306
          Top = 4
          Width = 57
          Height = 17
          Caption = 'total'
          TabOrder = 2
          OnClick = rdTotalClick
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'Packing list'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1027
        Height = 412
        Align = alClient
        DataSource = DS_YWBZPOS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Userid'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Userdate'
            Footers = <>
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Label Material'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1027
        Height = 412
        Align = alClient
        DataSource = DS_ZLZLS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'xh'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
          end>
      end
    end
  end
  object qryYWDDMT: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDDMT.*,DDZL.Article'
      'from YWDDMT left join DDZL'
      'on YWDDMT.DDBH=DDZL.DDBH'
      'where BUYNO Like '#39'202101%'#39)
    Left = 124
    Top = 236
    object qryYWDDMTDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDMT.DDBH'
      FixedChar = True
      Size = 15
    end
    object qryYWDDMTArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object qryYWDDMTXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDMT.XH'
      FixedChar = True
      Size = 3
    end
    object qryYWDDMTMTBH1: TStringField
      FieldName = 'MTBH1'
      Origin = 'DB.YWDDMT.MTBH1'
      FixedChar = True
      Size = 6
    end
    object qryYWDDMTMTLR1: TStringField
      FieldName = 'MTLR1'
      Origin = 'DB.YWDDMT.MTLR1'
      FixedChar = True
      Size = 50
    end
    object qryYWDDMTMTBH2: TStringField
      FieldName = 'MTBH2'
      Origin = 'DB.YWDDMT.MTBH2'
      FixedChar = True
      Size = 6
    end
    object qryYWDDMTMTLR2: TStringField
      FieldName = 'MTLR2'
      Origin = 'DB.YWDDMT.MTLR2'
      FixedChar = True
      Size = 50
    end
    object qryYWDDMTMTBH3: TStringField
      FieldName = 'MTBH3'
      Origin = 'DB.YWDDMT.MTBH3'
      FixedChar = True
      Size = 6
    end
    object qryYWDDMTMTLR3: TStringField
      FieldName = 'MTLR3'
      Origin = 'DB.YWDDMT.MTLR3'
      FixedChar = True
      Size = 50
    end
    object qryYWDDMTMTBH4: TStringField
      FieldName = 'MTBH4'
      Origin = 'DB.YWDDMT.MTBH4'
      FixedChar = True
      Size = 6
    end
    object qryYWDDMTMTLR4: TStringField
      FieldName = 'MTLR4'
      Origin = 'DB.YWDDMT.MTLR4'
      FixedChar = True
      Size = 50
    end
    object qryYWDDMTUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWDDMT.USERDATE'
    end
    object qryYWDDMTUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDMT.USERID'
      FixedChar = True
    end
    object qryYWDDMTYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDMT.YN'
      FixedChar = True
      Size = 1
    end
  end
  object qryYWDDBZ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDDBZ.* ,LBZLS.YWSM as Country'
      'from YWDDBZ left join YWDD on YWDDBZ.DDBH=YWDD.DDBH'
      'left join DDZL on YWDD.DDBH =DDZL.DDBH'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'where BUYNO like '#39'202101%'#39)
    Left = 180
    Top = 236
    object qryYWDDBZDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDBZ.DDBH'
      FixedChar = True
      Size = 15
    end
    object qryYWDDBZXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDBZ.XH'
      FixedChar = True
      Size = 3
    end
    object qryYWDDBZMENO: TStringField
      FieldName = 'MENO'
      Origin = 'DB.YWDDBZ.MENO'
      FixedChar = True
      Size = 8
    end
    object qryYWDDBZZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.YWDDBZ.ZWSM'
      FixedChar = True
      Size = 250
    end
    object qryYWDDBZVNSM: TStringField
      FieldName = 'VNSM'
      Origin = 'DB.YWDDBZ.VNSM'
      FixedChar = True
      Size = 250
    end
    object qryYWDDBZLX: TStringField
      FieldName = 'LX'
      Origin = 'DB.YWDDBZ.LX'
      FixedChar = True
      Size = 3
    end
    object qryYWDDBZCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object qryYWDDBZUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDBZ.USERID'
      FixedChar = True
    end
    object qryYWDDBZUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.YWDDBZ.USERDate'
    end
    object qryYWDDBZYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDBZ.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_YWDDMT: TDataSource
    DataSet = qryYWDDMT
    Left = 124
    Top = 268
  end
  object DS_YWDDBZ: TDataSource
    DataSet = qryYWDDBZ
    Left = 180
    Top = 268
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 324
    Top = 236
  end
  object qryYWBZPOS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWBZPOS.DDBH,max(ctz) as CTS,MAX(YWBZPOS.USERID) as Useri' +
        'd, MAX(YWBZPOS.USERDATE) as Userdate'
      'from ywbzpos left join ywdd on ywbzpos.ddbh=ywdd.ddbh'
      'left join ddzl on ywdd.ddbh=ddzl.ddbh'
      'where buyno like '#39'202101%'#39
      'group by YWBZPOS.DDBH'
      'order by ywbzpos.ddbh')
    Left = 220
    Top = 236
    object qryYWBZPOSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object qryYWBZPOSCTS: TIntegerField
      FieldName = 'CTS'
    end
    object qryYWBZPOSUserid: TStringField
      FieldName = 'Userid'
      FixedChar = True
    end
    object qryYWBZPOSUserdate: TDateTimeField
      FieldName = 'Userdate'
    end
  end
  object DS_YWBZPOS: TDataSource
    DataSet = qryYWBZPOS
    Left = 220
    Top = 268
  end
  object qryZLZLS2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,U' +
        'SERDATE,YN,ZWPM,DWBH,Article,BUYNO'
      
        ',max (Case when (CCQQ is not null and CCQZ is not null) and (CCQ' +
        'Q <> '#39#39' and CCQZ <> '#39#39') then YWPM +'#39'('#39'+CCQQ +'#39'-'#39' +CCQZ +'#39')'#39' else' +
        ' YWPM end) as YWPM'
      'from ('
      
        'select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,DDZL.Article,DDZL.' +
        'BUYNO'
      
        '         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ els' +
        'e DXXZLS.CCQQ end) as CCQQ'
      
        '         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ els' +
        'e DXXZLS.CCQZ end) as CCQZ'
      'from ZLZLS2'
      'left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      'LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH'
      'LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING '
      
        '           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZL' +
        'S.BWBH '
      'LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING'
      
        '           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXX' +
        'ZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH'
      'where ZLZLS2.ZLBH='#39'Y2106-0004'#39
      '         and ZLZLS2.CLBH like '#39'H14%'#39
      '         and  not exists ('
      '         select *'
      '         from ZLZLS2 A'
      
        '         where ZLZLS2.ZLBH=A.ZLBH and ZLZLS2.BWBH=A.BWBH and ZLZ' +
        'LS2.CLBH=A.CLBH  and ZLZLS2.MJBH=A.MJBH and ZLZLS2.SIZE=A.SIZE a' +
        'nd A.YN=2)'
      
        'group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJ' +
        'BH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,'
      
        'ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN' +
        ',CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh,DDZL.Article,DDZL.BUYNO'
      'union all'
      
        'select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,DDZL.Article,DDZL.' +
        'BUYNO'
      
        '         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ els' +
        'e DXXZLS.CCQQ end) as CCQQ'
      
        '         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ els' +
        'e DXXZLS.CCQZ end) as CCQZ'
      'from ZLZLS2'
      'left join CLZL on ZLZLS2.CLBH=CLZL.CLDH '
      'LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH'
      'LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING '
      
        '           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZL' +
        'S.BWBH'
      'LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING'
      
        '           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXX' +
        'ZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH'
      'where ZLZLS2.ZLBH='#39'Y2106-0004'#39
      '          and ZLZLS2.CLBH like '#39'H14%'#39
      'and zlzls2.YN='#39'2'#39' '
      
        'group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJ' +
        'BH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,'
      
        'ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN' +
        ',CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh,DDZL.Article,DDZL.BUYNO'
      ') ZLZLS2'
      
        'group by ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID' +
        ',USERDATE,YN,ZWPM,DWBH,Article,BUYNO')
    Left = 260
    Top = 236
    object qryZLZLS2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object qryZLZLS2xh: TStringField
      FieldName = 'xh'
      FixedChar = True
      Size = 3
    end
    object qryZLZLS2BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object qryZLZLS2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object qryZLZLS2SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object qryZLZLS2CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object qryZLZLS2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object qryZLZLS2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 255
    end
    object qryZLZLS2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qryZLZLS2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryZLZLS2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qryZLZLS2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object qryZLZLS2BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS_ZLZLS2: TDataSource
    DataSet = qryZLZLS2
    Left = 260
    Top = 268
  end
end
