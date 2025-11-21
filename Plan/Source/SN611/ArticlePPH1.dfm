object ArticlePPH: TArticlePPH
  Left = 260
  Top = 134
  Width = 928
  Height = 480
  Caption = 'ArticlePPH'
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
    Width = 912
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 30
      Width = 34
      Height = 16
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 29
      Width = 17
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 57
      Width = 66
      Height = 16
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 207
      Top = 60
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 383
      Top = 60
      Width = 37
      Height = 16
      Caption = 'GXLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 1
      Width = 241
      Height = 25
      AutoSize = False
      Caption = #27599#23567#26178#29986#33021'SKU POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 27
      Width = 97
      Height = 24
      Date = 43185.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 43185.610104166670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DTP1Change
    end
    object DTP2: TDateTimePicker
      Left = 152
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39983.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object Query: TButton
      Left = 512
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = QueryClick
    end
    object Edit1: TEdit
      Left = 79
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 255
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP3: TDateTimePicker
      Left = 272
      Top = 27
      Width = 97
      Height = 24
      Date = 43185.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 43185.610104166670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 376
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.999305555550000000
      Format = 'HH:mm:ss'
      Time = 39983.999305555550000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
    end
    object CBX4: TComboBox
      Left = 426
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        '')
    end
    object Button2: TButton
      Left = 600
      Top = 47
      Width = 81
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button2Click
    end
    object btnexcel2: TButton
      Left = 688
      Top = 46
      Width = 81
      Height = 33
      Caption = 'Excel 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnexcel2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 912
    Height = 353
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
        FieldName = 'DepName'
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'RPlandate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Style'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'DDBH_T'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MTQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'OKDate'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DDGB'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'Xuong'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'LackQty'
        Footers = <>
        Width = 51
      end>
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 204
    Top = 84
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select BDepartment.DepName,SMDD.RPlandate,DDZL.DDBH,DDZL.ShipDat' +
        'e, DDZL.BUYNO,'
      ' SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH,'
      
        ' (case when DDZL.DDBH <> MAX(SMDD.DDBH) then (('#39'T'#39'+MIN(right(SMD' +
        'D.DDBH,3)))+'#39'-'#39'+('#39'T'#39'+MAX(right(SMDD.DDBH,3)))) else '#39'T01'#39' end) a' +
        's DDBH_T'
      ' ,sum(SMDD.Qty) Qty ,isnull(SCBZCL.Qty,0) MTQty,XXZL.XTMH,'
      
        ' CONVERT(varchar(2),MONTH(SMDD.OKDate)) +'#39'/'#39'+CONVERT(varchar(2),' +
        'DAY(SMDD.OKDate)) as OKDate, '
      ' DDZL.DDGB,BDepartment.Xuong,    '
      
        ' case when (IsNull(SCBBS.Qty,0)-DDZL.Pairs)>=0 then '#39'OK'#39' else Co' +
        'nvert(varchar,IsNull(SCBBS.Qty,0) -DDZL.Pairs) end as LackQty   ' +
        '  '
      ' from SMDD  '
      ' left join DDZL on SMDD.YSBH=DDZL.DDBH'
      
        ' left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao '
      
        ' left join SCXXDV on SCXXDV.XieXing=DDZL.XieXing and SCXXDV.SheH' +
        'ao=DDZL.SheHao  '
      ' Left join BDepartment on BDepartment.ID=SMDD.DepNo  '
      
        ' left join (select convert(varchar,SCBZCL.BZDate,111) as BZDate,' +
        'SCBZCL.DepNo,CEILING(SCBZCL.Qty)  as Qty from SCBZCL '
      '          left join BDepartment on BDepartment.id=SCBZCL.depno '
      
        '          where BZDate between convert(smalldatetime,'#39'2018/04/26' +
        ' 00:00:00'#39') and convert(smalldatetime,'#39'2018/04/28 23:59:00'#39')  '
      '          and SCBZCL.GSBH ='#39'VA12'#39' '
      '          and BDepartment.depname like '#39'A1_LEAN1%'#39' '
      
        '          ) SCBZCL on SCBZCL.BZDate=SMDD.RPlanDate and SCBZCL.De' +
        'pNo=SMDD.DepNO '
      ' Left join (  '
      '    select SCBH,Sum(Qty) as Qty from SCBBS  '
      '    left join DDZL on SCBBS.SCBH=DDZL.DDBH  '
      '    where SCBBS.GXLB = '#39'A'#39' '
      '   -- and Exists (select * from (select YSBH from SMDD'
      
        '              -- where SMDD.RPlandate between convert(smalldatet' +
        'ime,'#39'2018/04/26 00:00:00'#39') and convert(smalldatetime,'#39'2018/04/28' +
        ' 23:59:00'#39')'
      '               --and SMDD.GXLB= '#39'A'#39
      '               -- Group by YSBH) SMDD where SMDD.YSBH=DDZL.DDBH)'
      '                Group by SCBBS.SCBH  '
      ' ) SCBBS on SCBBS.SCBH=DDZL.DDBH  '
      
        ' where SMDD.RPlandate between convert(smalldatetime,'#39'2018/04/26 ' +
        '00:00:00'#39') and convert(smalldatetime,'#39'2018/04/28 23:59:00'#39')  '
      ' and SMDD.GXLB = '#39'A'#39' '
      ' and BDepartment.depname like '#39'A1_LEAN1%'#39' '
      
        ' group by BDepartment.DepName,DDZL.DDBH,DDZL.ShipDate,DDZL.BUYNO' +
        ',SCXXDV.Style,DDZL.Article,DDZL.Pairs,XXZL.DAOMH,XXZL.XTMH,scbzc' +
        'l.Qty, '
      
        ' SMDD.RPlandate ,DDZL.DDGB,BDepartment.Xuong  ,SMDD.OKDate, sCBB' +
        'S.Qty '
      ' order by BDepartment.DepName,SMDD.RPlandate'
      '')
    Left = 204
    Top = 228
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1RPlandate: TDateTimeField
      FieldName = 'RPlandate'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1Style: TStringField
      FieldName = 'Style'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1DDBH_T: TStringField
      FieldName = 'DDBH_T'
      FixedChar = True
      Size = 11
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1MTQty: TIntegerField
      FieldName = 'MTQty'
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1OKDate: TStringField
      FieldName = 'OKDate'
      FixedChar = True
      Size = 5
    end
    object Query1DDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object Query1Xuong: TStringField
      FieldName = 'Xuong'
      FixedChar = True
      Size = 3
    end
    object Query1LackQty: TStringField
      FieldName = 'LackQty'
      FixedChar = True
      Size = 30
    end
  end
  object KTemp: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 84
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 244
    Top = 228
  end
  object Sum_Temp: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 200
  end
end
