object DeliverCheckOrder: TDeliverCheckOrder
  Left = 418
  Top = 292
  Width = 1003
  Height = 473
  Caption = 'Deliver Check Order'
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
    Width = 987
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 11
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
    end
    object Label4: TLabel
      Left = 160
      Top = 13
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
    end
    object Label2: TLabel
      Left = 8
      Top = 41
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 136
      Top = 42
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label12: TLabel
      Left = 352
      Top = 13
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label14: TLabel
      Left = 248
      Top = 44
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label13: TLabel
      Left = 266
      Top = 43
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label15: TLabel
      Left = 368
      Top = 41
      Width = 47
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label16: TLabel
      Left = 467
      Top = 42
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 9
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 628
      Top = 38
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 240
      Top = 9
      Width = 113
      Height = 24
      TabOrder = 2
    end
    object Button2: TButton
      Left = 627
      Top = 4
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 72
      Top = 39
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 4
      Text = '2020'
      OnChange = CBX1Change
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 194
      Top = 40
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 5
      Text = '01'
      OnChange = CBX2Change
      Items.Strings = (
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
    object GSBHCBX: TComboBox
      Left = 416
      Top = 9
      Width = 89
      Height = 24
      ItemHeight = 16
      TabOrder = 6
    end
    object CBX4: TComboBox
      Left = 302
      Top = 38
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 7
      Text = '2020'
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX5: TComboBox
      Left = 417
      Top = 38
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 8
      Text = '01'
      Items.Strings = (
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
    object CBX6: TComboBox
      Left = 527
      Top = 37
      Width = 81
      Height = 24
      ItemHeight = 16
      TabOrder = 9
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 987
    Height = 361
    Align = alClient
    TabOrder = 1
    object PC1: TPageControl
      Left = 1
      Top = 1
      Width = 985
      Height = 359
      ActivePage = TS2
      Align = alClient
      TabOrder = 0
      object TS1: TTabSheet
        Caption = 'Total'
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 977
          Height = 328
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
              FieldName = 'SCBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #35330#21934'|SCBH'
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SKU|Article'
              Width = 105
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Title.Caption = #38795#21517'|XieMing'
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'DaoMH'
              Footers = <>
              Title.Caption = #26028#20992'|DaoMH'
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'KFJC'
              Footers = <>
              Title.Caption = #21697#29260'|KFJC'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'pairs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38617#25976'|pairs'
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'InQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25104#22411#20837#24235'|InQty'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'VNACC'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #26448#26009#32317#37329#38989'|VNACC'
              Width = 100
            end>
        end
      end
      object TS2: TTabSheet
        Caption = 'Ton kho'
        ImageIndex = 2
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 977
          Height = 328
          Align = alClient
          DataSource = DS3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
              FieldName = 'SCBH'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #35330#21934'|SCBH'
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SKU|Article'
              Width = 105
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Title.Caption = #38795#21517'|XieMing'
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'DaoMH'
              Footers = <>
              Title.Caption = #26028#20992'|DaoMH'
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'KFJC'
              Footers = <>
              Title.Caption = #21697#29260'|KFJC'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'pairs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #38617#25976'|pairs'
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'InQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #25104#22411#20837#24235'|InQty'
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'VNACC'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #26448#26009#32317#37329#38989'|VNACC'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'HGLB'
              Footers = <>
              Title.Caption = #39006#21029'|HGLB'
              Width = 55
            end>
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC' +
        ',DDZL.pairs,isnull(YWCP.InQty,0) as InQty,isnull(temp.VNACC,0) a' +
        's VNACC'
      
        'from DDZL left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.S' +
        'heHao=XXZL.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      'left join (select kclls.scbh as ddbh, sum(kclls.vnacc) as VNACC'
      #9#9#9'from kclls left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      
        #9#9#9'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.' +
        'CKBH'
      #9#9#9'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        #9#9#9'where  KCLL.YN='#39'5'#39' and Convert(smalldatetime,convert(varchar,' +
        'KCLL.CFMDate,111)) between'
      #9#9#9#39'2015/04/01'#39' and '#39'2015/04/30'#39' and KCCK.GSBH='#39'VA12'#39
      #9#9#9'group by kclls.scbh)as temp on  temp.DDBH=DDZL.DDBH'
      'left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty'
      ' from YWCP left join YWDD on YWDD.DDBH=YWCP.DDBH'
      ' left join DDZL on DDZL.DDBH=YWDD.YSBH'
      'where YWDD.YSBH like  '#39'%%'#39
      ' group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH'
      'left join kclls on kclls.scbh=ddzl.ddbh'
      'left join kcll on kcll.llno=kclls.llno'
      
        'where Convert(smalldatetime,convert(varchar,kcll.CFMDate,111)) b' +
        'etween '#39'2015/04/01'#39' and '#39'2015/04/30'#39
      'and KCLL.YN='#39'5'#39
      'and KCLLS.SCBH like '#39'%'#39
      'and XXZL.Article like '#39'%'#39
      'and KCLL.GSBH='#39'VA12'#39
      
        'group by  KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.K' +
        'FJC,DDZL.pairs,temp.VNACC,YWCP.InQty'
      'order by KCLLS.SCBH')
    Left = 225
    Top = 137
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DaoMH: TStringField
      FieldName = 'DaoMH'
      FixedChar = True
      Size = 30
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 169
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 137
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 262
    Top = 168
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC' +
        ',DDZL.pairs,isnull(YWCP.InQty,0) as InQty,isnull(temp.VNACC,0) a' +
        's VNACC,temp.HGLB'
      'from DDZL '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      
        'left join (select KCLLS.SCBH as ddbh,KCLLS.HGLB, sum(KCLLS.VNACC' +
        '_HG) as VNACC'
      '          from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '          '
      
        '          left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKB' +
        'H=KCLL.CKBH'
      '          left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        '          where   KCLL.YN='#39'5'#39' and Convert(smalldatetime,convert(' +
        'varchar,KCLL.CFMDate,111)) between'
      '             '#39'2017/10/01'#39' and '#39'2017/10/31'#39' '
      '           and KCCK.GSBH='#39'VA12'#39' '
      '           and KCLLS.SCBH like '#39'Y1710-0056%'#39' '
      
        '          group by KCLLS.SCBH,KCLLS.HGLB ) as temp on  temp.DDBH' +
        '=DDZL.DDBH'
      'left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty'
      '           from YWCP left join YWDD on YWDD.DDBH=YWCP.DDBH'
      '           left join DDZL on DDZL.DDBH=YWDD.YSBH'
      '           where YWDD.YSBH like  '#39'%%'#39
      '           group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH'
      'left join kclls on kclls.scbh=ddzl.ddbh'
      'left join kcll on kcll.llno=kclls.llno'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH'
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween'
      #39'2017/10/01'#39' and '#39'2017/10/31'#39' '
      'and KCLL.YN='#39'5'#39
      'and KCLLS.SCBH like '#39'Y1710-0056%'#39
      'and XXZL.Article like '#39'%'#39
      'and KCCK.GSBH='#39'VA12'#39' '
      
        'group by  KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.K' +
        'FJC,DDZL.pairs,temp.VNACC,temp.HGLB,YWCP.InQty'
      'order by KCLLS.SCBH'
      ''
      ''
      '')
    Left = 260
    Top = 136
    object Query3SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query3Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query3XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query3DaoMH: TStringField
      FieldName = 'DaoMH'
      FixedChar = True
      Size = 30
    end
    object Query3KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query3pairs: TIntegerField
      FieldName = 'pairs'
    end
    object Query3InQty: TIntegerField
      FieldName = 'InQty'
    end
    object Query3VNACC: TFloatField
      FieldName = 'VNACC'
    end
    object Query3HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
end
