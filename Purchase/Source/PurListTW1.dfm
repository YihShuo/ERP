object PurListTW: TPurListTW
  Left = 271
  Top = 191
  Width = 842
  Height = 500
  Caption = 'PurListTW'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 37
      Height = 16
      Caption = 'ZLBH:'
    end
    object Label2: TLabel
      Left = 216
      Top = 24
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label6: TLabel
      Left = 208
      Top = 64
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object L1: TLabel
      Left = 488
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
      Visible = False
    end
    object L2: TLabel
      Left = 608
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
      Visible = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 264
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 528
      Top = 56
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 88
      Top = 56
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 264
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CBX1: TCheckBox
      Left = 416
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Only TW'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CBX2: TComboBox
      Left = 528
      Top = 16
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 6
      Visible = False
      Items.Strings = (
        '2006'
        '2007'
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
    object CBX3: TComboBox
      Left = 656
      Top = 16
      Width = 57
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 7
      Visible = False
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object CB2: TCheckBox
      Left = 400
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Shipdate'
      TabOrder = 8
      OnClick = CB2Click
    end
    object Button2: TButton
      Left = 624
      Top = 56
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 834
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'dgdh'
        Footers = <>
        Title.TitleButton = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'zlbh'
        Footers = <>
        Title.TitleButton = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SLRQ'
        Footers = <>
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'Con_Date'
        Footers = <>
        Title.TitleButton = True
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.TitleButton = True
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.TitleButton = True
        Width = 326
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.TitleButton = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Title.TitleButton = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'zl_qty'
        Footers = <>
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'st_qty'
        Footers = <>
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'dg_qty'
        Footers = <>
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'in_qty'
        Footers = <>
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'ex_qty'
        Footers = <>
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'zd_date'
        Footers = <>
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'hf_date'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'ZXRQ'
        Footers = <>
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'PAIRS'
        Footers = <>
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'SHIPDATE'
        Footers = <>
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'cghzbh'
        Footers = <>
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'zzbz'
        Footers = <>
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'zd_date'
        Footers = <>
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SHLB'
        Footers = <>
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CON_NO'
        Footers = <>
        Title.TitleButton = True
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 353
      end>
  end
  object TWCG: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc '
      '      ,CLZL.cldh,CLZL.dwbh,  CGHZZLSS.cqdh,'
      '      SUM(CGHZZLS.zl_qty) zl_qty,SUM(CGHZZLS.st_qty) st_qty,'
      '      SUM(CGHZZLS.dg_qty) dg_qty,SUM(CGHZZLS.in_qty) in_qty,'
      '      SUM(CGHZZLS.ex_qty) ex_qty,CGHZZLSS.hf_date,'
      
        '      min(space(8)) ex_date,  DDZL.SHIPDATE,HBCGZL.ZXRQ,DDZL.PAI' +
        'RS,'
      
        '      VJHZL.SLRQ,CGHZZLSS.zd_date,  CGHZZLSS.cghzbh,CGHZZLSS.zzb' +
        'z,'
      
        '      CGHZZLSS.dg_date,CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZS' +
        'ZL.zsywjc,CLZL.ywpm,CLZL.ZWpm,'
      '      DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pumadh,'
      '      HBCGZL.KBBH,min(space(8)) zwsm  FROM CGHZZLS'
      'LEFT JOIN CGHZZLSS ON CGHZZLS.cghzbh = CGHZZLSS.cghzbh'
      
        '                  AND CGHZZLS.ZLBH   = CGHZZLSS.ZLBH  AND CGHZZL' +
        'S.clbh   = CGHZZLSS.clbh'
      
        '                  AND CGHZZLS.size   = CGHZZLSS.size  AND CGHZZL' +
        'S.dgdh   = CGHZZLSS.dgdh'
      'LEFT JOIN ZSZL     ON ZSZL.zsdh      = CGHZZLSS.zsbh'
      'LEFT JOIN CLZL     ON CGHZZLS.clbh   = CLZL.cldh'
      'LEFT JOIN DDZL     ON CGHZZLS.zlbh   = DDZL.zlbh'
      'left join KFZl on KFZl.KFDH=DDZl.KHBH '
      
        'LEFT JOIN XXZL     ON XXZL.XieXing   = DDZL.XieXing  AND XXZL.Sh' +
        'eHao    = DDZL.SheHao'
      'LEFT JOIN HBCGZL   ON CGHZZLS.cghzbh = HBCGZL.cgbh'
      'LEFT JOIN (SELECT MAX(jhzl.slrq) AS slrq, jhzls.dgdh'
      '                    FROM jhzls'
      '                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh'
      
        '                   GROUP BY jhzls.dgdh) AS VJHZL  ON CGHZZLS.dgd' +
        'h   = VJHZL.dgdh'
      'LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,'
      
        '                   max(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB)' +
        ' as SHLB,max(EXZL.CON_NO) as CON_NO FROM EXZLSS'
      '                   LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO  '
      '                   LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO'
      '                  GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE)'
      
        '                 AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND C' +
        'GHZZLS.ZLBH   = CONZL.ZLBH  AND CGHZZLS.size   = CONZL.size'
      'LEFT JOIN (SELECT MAX(jhzl.sldh1) AS acc_no, jhzls.dgdh'
      '                    FROM jhzls'
      '                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh'
      
        '                   GROUP BY jhzls.dgdh) AS ACCNOZL  ON CGHZZLS.d' +
        'gdh   = ACCNOZL.dgdh'
      'WHERE CGHZZLS.cghzbh IN (SELECT DISTINCT cgbh  FROM ZLZL'
      
        '                                                LEFT JOIN DDZL O' +
        'N DDZL.zlbh = ZLZL.zlbh'
      
        '                                               WHERE DDZL.gsdh  ' +
        '    = '#39'LAI'#39')'
      'AND CGHZZLS.size <> '#39'ZZZZZZ'#39
      'and CGHZZLS.zlbh like '#39'Y0812-00%'#39
      'and CLZL.CLDh like '#39'%'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and XXZl.Article like '#39'%'#39
      'and DDZl.GSBH='#39'VA12'#39
      'and CLZl.CQDH='#39'TW'#39
      
        'GROUP BY CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.c' +
        'ldh,'
      
        '                   CLZL.dwbh,CGHZZLSS.cqdh,CGHZZLSS.hf_date,  DD' +
        'ZL.SHIPDATE,  '
      
        '                   HBCGZL.ZXRQ,DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd' +
        '_date,  CGHZZLSS.cghzbh'
      
        '                  ,CGHZZLSS.zzbz,CGHZZLSS.dg_date,CONZL.Con_Date' +
        ',CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.Zwpm,'
      
        '                  DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pum' +
        'adh,HBCGZL.KBBH'
      'UNION ALL'
      
        ' SELECT CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.cl' +
        'dh,CLZL.dwbh,  CGHZZLSS.cqdh'
      
        '               ,SUM(CGHZZLS.zl_qty) zl_qty,SUM(CGHZZLS.st_qty) s' +
        't_qty,  SUM(CGHZZLS.dg_qty) dg_qty,SUM(CGHZZLS.in_qty) in_qty,'
      '               SUM(CGHZZLS.ex_qty) ex_qty,CGHZZLSS.hf_date,'
      
        '               min(space(8)) ex_date,  DDZL.SHIPDATE,HBCGZL.ZXRQ' +
        ',DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd_date,'
      
        '               CGHZZLSS.cghzbh,CGHZZLSS.zzbz,CGHZZLSS.dg_date,CO' +
        'NZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.' +
        'Zwpm,'
      
        '               DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pumadh' +
        ',HBCGZL.KBBH,min(space(8)) zwsm'
      'FROM CGHZZLS'
      'LEFT JOIN CGHZZLSS ON CGHZZLS.cghzbh = CGHZZLSS.cghzbh'
      
        '            AND CGHZZLS.clbh   = CGHZZLSS.clbh  AND CGHZZLS.size' +
        '   = CGHZZLSS.size'
      
        '            AND CGHZZLS.dgdh   = CGHZZLSS.dgdh  LEFT JOIN ZSZL  ' +
        '   ON ZSZL.zsdh      = CGHZZLSS.zsbh'
      'LEFT JOIN CLZL     ON CGHZZLS.clbh   = CLZL.cldh'
      'LEFT JOIN DDZL     ON CGHZZLS.zlbh   = DDZL.zlbh'
      'left join KFZl on KFZl.KFDH=DDZl.KHBH '
      
        'LEFT JOIN XXZL     ON XXZL.XieXing   = DDZL.XieXing  AND XXZL.Sh' +
        'eHao    = DDZL.SheHao'
      'LEFT JOIN HBCGZL   ON CGHZZLS.cghzbh = HBCGZL.cgbh'
      'LEFT JOIN (SELECT MAX(jhzl.slrq) AS slrq, jhzls.dgdh  FROM jhzls'
      '                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh'
      
        '                   GROUP BY jhzls.dgdh) AS VJHZL  ON CGHZZLS.dgd' +
        'h   = VJHZL.dgdh'
      'LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,'
      
        '             MAX(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB) as SH' +
        'LB,max(EXZL.CON_NO) as CON_NO'
      '                  FROM EXZLSS'
      '           LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO'
      '           LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO'
      
        '           GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE ) AS CON' +
        'ZL'
      
        '                 ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLB' +
        'H= CONZL.ZLBH  AND CGHZZLS.size= CONZL.size'
      
        'LEFT JOIN (SELECT MAX(jhzl.sldh1) AS acc_no, jhzls.dgdh  FROM jh' +
        'zls'
      '                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh'
      
        '                    GROUP BY jhzls.dgdh) AS ACCNOZL  ON CGHZZLS.' +
        'dgdh   = ACCNOZL.dgdh'
      'WHERE CGHZZLS.cghzbh IN (SELECT DISTINCT cgbh  FROM ZLZL'
      
        '                                                LEFT JOIN DDZL O' +
        'N DDZL.zlbh = ZLZL.zlbh'
      
        '                                                WHERE DDZL.gsdh ' +
        '     = '#39'LAI'#39')'
      '              AND CGHZZLS.size = '#39'ZZZZZZ'#39
      '              AND CGHZZLS.zlbh like '#39'Y0812-00%'#39
      'and CLZL.CLDh like '#39'%'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and XXZl.Article like '#39'%'#39
      'and DDZl.GSBH='#39'VA12'#39
      'and CLZl.CQDH='#39'TW'#39
      
        'GROUP BY CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.c' +
        'ldh,'
      
        '                  CLZL.dwbh,CGHZZLSS.cqdh,CGHZZLSS.hf_date,  DDZ' +
        'L.SHIPDATE,HBCGZL.ZXRQ'
      
        '                    ,DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd_date,  CG' +
        'HZZLSS.cghzbh,CGHZZLSS.zzbz,CGHZZLSS.dg_date,'
      
        '                   CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.z' +
        'sywjc,CLZL.ywpm,CLZL.Zwpm,  DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_n' +
        'o,'
      '                   CLZL.pumadh,HBCGZL.KBBH')
    Left = 136
    Top = 136
    object TWCGdgdh: TStringField
      FieldName = 'dgdh'
      FixedChar = True
      Size = 13
    end
    object TWCGzlbh: TStringField
      FieldName = 'zlbh'
      FixedChar = True
      Size = 15
    end
    object TWCGXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object TWCGzsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object TWCGcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object TWCGdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object TWCGcqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object TWCGzl_qty: TFloatField
      FieldName = 'zl_qty'
    end
    object TWCGst_qty: TFloatField
      FieldName = 'st_qty'
    end
    object TWCGdg_qty: TFloatField
      FieldName = 'dg_qty'
    end
    object TWCGin_qty: TFloatField
      FieldName = 'in_qty'
    end
    object TWCGex_qty: TFloatField
      FieldName = 'ex_qty'
    end
    object TWCGhf_date: TStringField
      FieldName = 'hf_date'
      FixedChar = True
      Size = 8
    end
    object TWCGex_date: TStringField
      FieldName = 'ex_date'
      FixedChar = True
      Size = 8
    end
    object TWCGSHIPDATE: TDateTimeField
      FieldName = 'SHIPDATE'
    end
    object TWCGZXRQ: TStringField
      FieldName = 'ZXRQ'
      FixedChar = True
      Size = 8
    end
    object TWCGPAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object TWCGSLRQ: TStringField
      FieldName = 'SLRQ'
      FixedChar = True
      Size = 8
    end
    object TWCGzd_date: TStringField
      FieldName = 'zd_date'
      FixedChar = True
      Size = 8
    end
    object TWCGcghzbh: TStringField
      FieldName = 'cghzbh'
      FixedChar = True
    end
    object TWCGzzbz: TStringField
      FieldName = 'zzbz'
      FixedChar = True
      Size = 13
    end
    object TWCGdg_date: TStringField
      FieldName = 'dg_date'
      FixedChar = True
      Size = 8
    end
    object TWCGzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object TWCGywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object TWCGKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object TWCGARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object TWCGacc_no: TStringField
      FieldName = 'acc_no'
      FixedChar = True
      Size = 15
    end
    object TWCGpumadh: TStringField
      FieldName = 'pumadh'
      FixedChar = True
      Size = 30
    end
    object TWCGKBBH: TStringField
      FieldName = 'KBBH'
      FixedChar = True
    end
    object TWCGzwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 8
    end
    object TWCGCon_Date: TStringField
      FieldName = 'Con_Date'
      FixedChar = True
      Size = 8
    end
    object TWCGSHLB: TStringField
      FieldName = 'SHLB'
      FixedChar = True
      Size = 3
    end
    object TWCGCON_NO: TStringField
      FieldName = 'CON_NO'
      FixedChar = True
    end
    object TWCGzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = TWCG
    Left = 184
    Top = 144
  end
end
