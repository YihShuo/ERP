object RyPPH: TRyPPH
  Left = 194
  Top = 213
  Width = 1300
  Height = 516
  Caption = 'RyPPH'
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
    Width = 1292
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 188
      Top = 35
      Width = 51
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 2
      Top = 36
      Width = 76
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
    end
    object Label6: TLabel
      Left = 24
      Top = 63
      Width = 93
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PlanDate:'
    end
    object Label8: TLabel
      Left = 230
      Top = 65
      Width = 20
      Height = 18
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 8
      Top = 4
      Width = 209
      Height = 25
      AutoSize = False
      Caption = #29983#29986#35330#21934'POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 344
      Top = 34
      Width = 82
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lean:'
    end
    object Button1: TButton
      Left = 541
      Top = 24
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 242
      Top = 33
      Width = 100
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 621
      Top = 23
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 80
      Top = 33
      Width = 99
      Height = 26
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 121
      Top = 61
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 253
      Top = 61
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 7
      Top = 65
      Width = 14
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object LeanEdit: TEdit
      Left = 427
      Top = 31
      Width = 110
      Height = 26
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1292
    Height = 396
    Align = alClient
    DataSource = DataSource1
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
        Footers = <>
        Title.Caption = 'Buy'#21029'|BuyNo'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        Title.Caption = #29983#29986#35506#21029'|Depname'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'plandate'
        Footers = <>
        Title.Caption = #19978#32218#26085#26399'|Plandate'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Devcode'
        Footers = <>
        Title.Caption = 'SR|Devcode'
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394#21517#31281'|Color Name'
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'SHipdate'
        Footers = <>
        Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = #20986#36008#22283#23478'|Country'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #20992#27169#34399'|DaoMH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'IEQty'
        Footers = <>
        Title.Caption = #29986#33021'|IEQty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'IEPeo'
        Footers = <>
        Title.Caption = #20154#25976'|IEPeo'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'POH'
        Footers = <>
        Title.Caption = 'IE|POH'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = '8'#32026'|Tier'
        Width = 46
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname,max(SMDD.plandat' +
        'e) as plandate ,DDZL.ARTICLE'
      
        ',XXZL.YSSM,DDZL.pairs,DDZL.SHipdate,LBZLS.YWSM as Country,XXZL.D' +
        'AOMH,XXZL.XTMH,IEQty,IEPeo,POH,'
      '       case when POH>=1.5 then 1'
      '            when POH>=1.25 and POH<1.5 then 2'
      '            when POH>=1.13 and POH<1.25 then 3'
      '            when POH>=1.0 and POH<1.13 then 4'
      '            when POH>=0.86 and POH<1.0 then 5'
      '            when POH>=0.75 and POH<0.86 then 6'
      '            when POH>=0.61 and POH<0.75 then 7'
      '            when POH<=0.6 then 8 end T2,KFXXZL.Devcode'
      'from SMDD '
      'left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      'left join DDZL on DDZl.DDBH=SMDD.YSBH'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      
        'left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao'
      
        'left join KFXXZL on KFXXZL.XieXing=.DDZL.XieXing and KFXXZL.SheH' +
        'ao=DDZL.SheHao'
      
        'left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)a' +
        's IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Conver' +
        't(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH'
      
        '            from SCXXCL group by xiexing,shehao) SCXXCL on SCXXC' +
        'L.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      'where 1=1 '
      'and  DDZL.buyno like '#39'%'#39
      'and  DDZL.DDBH like '#39'Y1802-0432%'#39
      'and  DDZL.GSBH='#39'VA12'#39' '
      'and  Bdepartment.Depname like '#39'%'#39
      
        'and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) b' +
        'etween '
      '       '#39'2018/02/01'#39' and  '#39'2018/02/28'#39')'
      'and SMDD.GXLB ='#39'A'#39' '
      'group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE'
      
        ',XXZL.YSSM,DDZL.pairs,DDZL.SHipdate,LBZLS.YWSM,XXZL.DAOMH,XXZL.X' +
        'TMH,IEQty,IEPeo,POH,KFXXZL.Devcode'
      'order by Bdepartment.depname,SMDD.plandate ')
    Left = 320
    Top = 232
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object Query1plandate: TDateTimeField
      FieldName = 'plandate'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Devcode: TStringField
      FieldName = 'Devcode'
      FixedChar = True
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query1SHipdate: TDateTimeField
      FieldName = 'SHipdate'
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1IEQty: TIntegerField
      FieldName = 'IEQty'
    end
    object Query1IEPeo: TIntegerField
      FieldName = 'IEPeo'
    end
    object Query1POH: TFloatField
      FieldName = 'POH'
    end
    object Query1T2: TIntegerField
      FieldName = 'T2'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 232
  end
end
