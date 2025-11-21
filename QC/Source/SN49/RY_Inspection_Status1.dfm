object RY_Inspection_Status: TRY_Inspection_Status
  Left = 346
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'RY_Inspection_Status'
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
    Height = 97
    Align = alTop
    Caption = 'MA Defect'
    Color = clBlack
    TabOrder = 0
    object Label2: TLabel
      Left = 402
      Top = 18
      Width = 107
      Height = 25
      Caption = 'Destination'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 460
      Top = 60
      Width = 45
      Height = 25
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 31
      Top = 21
      Width = 91
      Height = 25
      Caption = 'GAC Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 271
      Top = 19
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 32
      Top = 68
      Width = 123
      Height = 17
      Caption = 'Last Inspection Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 271
      Top = 59
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 677
      Top = 8
      Width = 82
      Height = 41
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object YWSM: TEdit
      Left = 513
      Top = 13
      Width = 135
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 160
      Top = 15
      Width = 108
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 282
      Top = 15
      Width = 106
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 27
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object Button2: TButton
      Left = 677
      Top = 52
      Width = 82
      Height = 41
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object DevTypeEdit: TComboBox
      Left = 513
      Top = 56
      Width = 137
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 25
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU'
        'Innovation ')
    end
    object Last_Date: TCheckBox
      Left = 770
      Top = 70
      Width = 143
      Height = 23
      Caption = 'Last Inspection'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox2: TCheckBox
      Left = 11
      Top = 67
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object DTP3: TDateTimePicker
      Left = 160
      Top = 55
      Width = 108
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DTP4: TDateTimePicker
      Left = 282
      Top = 55
      Width = 106
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1289
    Height = 539
    Align = alClient
    Color = clGradientInactiveCaption
    DataSource = DS1
    EvenRowColor = clMenu
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OddRowColor = clInactiveCaption
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'RY#'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = 'LEAN'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = 'PO #'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'Material Description'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'Material'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Destination'
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'DevType'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Order Qty'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Title.Caption = 'In Warehouse Qty'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RateQty'
        Footers = <>
        Title.Caption = 'In Warehouse Rate'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'FTT'
        Footers = <>
        Title.Caption = 'Overall FTT'
      end
      item
        EditButtons = <>
        FieldName = 'Production_NGQty'
        Footers = <>
        Title.Caption = 'TQC Defect Qty'
      end
      item
        EditButtons = <>
        FieldName = 'FTTdefectcode'
        Footers = <>
        Title.Caption = 'TQC Defects'
        Width = 157
      end
      item
        EditButtons = <>
        FieldName = 'HI_Tot'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'HI Lot Pass Rate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'HI_DefQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'HI_InsQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DI_Tot'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DI Lot Pass Rate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DI_Defectcode'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'DI_DefQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DI_InsQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DI Defect Rate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 106
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select DDBH,DepName,KHPO,XieMing,Article,YWSM,DevType,Qty,okQty,' +
        'LEFT(cast((case when RateQty <> 0 then RateQty else 0 end) as va' +
        'rchar),4)+'#39'%'#39' RateQty,FTT    '
      
        '    , sum (Production_NGQty) as  Production_NGQty  , FTTdefectco' +
        'de,HI_Tot       '
      
        '    ,Case when HILot<>0 then Round(1.00*sum(HILot)/ sum(HI_Tot),' +
        '2) else 0 end  as '#39'HI Lot Pass Rate'#39',HI_DefQty,HI_InsQty,DI_Tot ' +
        '       '
      
        '    ,Case when DILot<>0 then Round(1.00*sum(DILot)/ sum(DI_Tot),' +
        '2) else 0 end  as '#39'DI Lot Pass Rate'#39' ,DI_Defectcode,DI_DefQty,DI' +
        '_InsQty  '
      
        '    ,Case when DI_DefQty<>0 then Round(1.00*sum(DI_DefQty)/ sum(' +
        'DI_InsQty),2)  else 0 end  as '#39'DI Defect Rate'#39' ,ShipDate      '
      '  from (  '
      
        '  select distinct DDZL.DDBH,DDZL.KHPO,XXZL.XieMing,DDZL.Article,' +
        'LBZLS.YWSM,kfxxzl.DevType,   '
      
        '  DDZL.Pairs as Qty,okQty,(okQty/DDZL.Pairs)*100 as RateQty,FTT,' +
        'ISNULL(HI_DefQty,0) as HI_DefQty,ISNULL(HI_InsQty,0) as HI_InsQt' +
        'y,ISNULL(DI_DefQty,0) as DI_DefQty,ISNULL(DI_InsQty,0) as DI_Ins' +
        'Qty    '
      
        '  ,ISNULL(HILot,0) as HILot,ISNULL(DILot,0) as DILot, DI_Tot,HI_' +
        'Tot,BDepartment.DepName    '
      '  ,CAST(substring (( select '#39'/'#39' + QCMAYY.YYBH      '
      '  from QCMA      '
      '  left join QCMAD on QCMAD.ProNo=QCMA.ProNo    '
      '  left join QCMAYY  on QCMAYY.YYBH=QCMAD.YYBH    '
      
        '  where QCMA.SCBH=DDZL.DDBH and QCMA.GXLB='#39'DI'#39'  group by QCMAYY.' +
        'YYBH order by CAST(QCMAYY.YYBH AS varchar)      '
      
        '  for XML Path ('#39#39')),2,1000) as varchar(1000)  ) as DI_Defectcod' +
        'e    '
      '  ,CAST(substring (( select '#39'/'#39' + QCBLYY.YYBH      '
      '  from QCR      '
      '  left join QCRD on QCR.ProNo=QCRD.ProNo    '
      '  left join QCBLYY  on QCBLYY.YYBH=QCRD.YYBH    '
      
        '  where QCR.SCBH=DDZL.DDBH and  QCR.GXLB='#39'AR'#39' group by QCBLYY.YY' +
        'BH order by CAST(QCBLYY.YYBH AS varchar)      '
      
        '  for XML Path ('#39#39')),2,1000) as varchar(1000)  ) as FTTdefectcod' +
        'e   '
      '  ,DDZL.ShipDate,Production_Qty ,Production_NGQty     '
      '  from DDZL left join KFZL on KFZl.KFDH=DDZl.KHBH     '
      '  left join ZLZL on ZLZL.ZLBH=DDZL.DDBH    '
      
        '  left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=X' +
        'XZL.SheHao    '
      '  left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB    '
      '  left join WOPR_MA on WOPR_MA.SCBH=DDZL.DDBH  '
      
        '  left join (select SCBH,DepNo,sum(Qty+NGQty) as Production_Qty,' +
        'sum(NGQty) as Production_NGQty  from WOPR where GXLB='#39'AR'#39' group ' +
        'by SCBH,DepNo) MA on  MA.SCBH=DDZL.DDBH  and WOPR_MA.DepNo=MA.De' +
        'pNo  '
      '  left join BDepartment on BDepartment.ID=WOPR_MA.DepNo  '
      
        '  left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.She' +
        'Hao = kfxxzl.SheHao     '
      
        '  left join (select ywcp.DDBH,sum(YWCP.Qty) as okQty from ywcp g' +
        'roup by DDBH) ywcp on ywcp.DDBH=DDZL.DDBH    '
      
        '  left join (SELECT LEFT(cast((case when sum([Qty])>0 then sum([' +
        'Qty])*100.0/(sum([Qty])+sum([NGQty])) else 0.0 end) as varchar),' +
        '4)+'#39'%'#39' FTT,SCBH    '
      
        '                FROM WOPR where 1=1 and WOPR.GXLB='#39'AR'#39' group by ' +
        'SCBH) WOPR on WOPR.SCBH=DDZL.DDBH    '
      
        '    left join (select sum(WOPR_MA.DefQty) as DI_DefQty, sum(WOPR' +
        '_MA.InsQty) as DI_InsQty,SCBH from WOPR_MA where 1=1 and GXLB='#39'D' +
        'I'#39' group by SCBH) Rate_DI on Rate_DI.SCBH=DDZL.DDBH    '
      
        '    left join (select sum(WOPR_MA.DefQty) as HI_DefQty, sum(WOPR' +
        '_MA.InsQty) as HI_InsQty,SCBH from WOPR_MA where 1=1 and GXLB='#39'H' +
        'I'#39' group by SCBH) Rate_HI on Rate_HI.SCBH=DDZL.DDBH    '
      
        '    left join (select count (WOPR_MA.ID) as HILot,SCBH from WOPR' +
        '_MA where 1=1 and GXLB='#39'HI'#39' and Result='#39'P'#39' and PrdQty<>0 group b' +
        'y SCBH) Lot_HI on Lot_HI.SCBH=DDZL.DDBH    '
      
        '    left join (select count (WOPR_MA.ID) as DILot,SCBH from WOPR' +
        '_MA where 1=1 and GXLB='#39'DI'#39' and Result='#39'P'#39' and PrdQty<>0 group b' +
        'y SCBH) Lot_DI on Lot_DI.SCBH=DDZL.DDBH    '
      
        '    left join (select count (WOPR_MA.ID) as DI_Tot,SCBH from WOP' +
        'R_MA where 1=1  and PrdQty<>0 and GXLB='#39'DI'#39' group by SCBH) DILot' +
        '_Tot on DILot_Tot.SCBH=DDZL.DDBH   '
      
        '    left join (select count (WOPR_MA.ID) as HI_Tot,SCBH from WOP' +
        'R_MA where 1=1  and PrdQty<>0 and GXLB='#39'HI'#39' group by SCBH) HILot' +
        '_Tot on HILot_Tot.SCBH=DDZL.DDBH   '
      '  where 1=1'
      
        'and  CONVERT(varchar(10),DDZL.ShipDate ,111) between '#39'2024/04/13' +
        #39' and '#39'2024/04/13'#39' '
      '    ) WOPR_MA   '
      '       '
      
        'group by DDBH,KHPO,XieMing,Article,YWSM,DevType,Qty,okQty,RateQt' +
        'y,FTT,WOPR_MA.HI_DefQty,DI_DefQty,HILot,DILot,HI_DefQty,HI_InsQt' +
        'y,ShipDate,DepName,DI_Defectcode,FTTdefectcode,HI_Tot'
      ',DI_Tot,DI_Defectcode,DI_DefQty,DI_InsQty '
      'order by ShipDate')
    Left = 232
    Top = 152
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1okQty: TIntegerField
      FieldName = 'okQty'
    end
    object Query1RateQty: TStringField
      FieldName = 'RateQty'
      FixedChar = True
      Size = 9
    end
    object Query1FTT: TStringField
      FieldName = 'FTT'
      FixedChar = True
      Size = 9
    end
    object Query1Production_NGQty: TIntegerField
      FieldName = 'Production_NGQty'
    end
    object Query1FTTdefectcode: TStringField
      FieldName = 'FTTdefectcode'
      FixedChar = True
      Size = 255
    end
    object Query1HI_Tot: TIntegerField
      FieldName = 'HI_Tot'
    end
    object Query1HILotPassRate: TFloatField
      FieldName = 'HI Lot Pass Rate'
    end
    object Query1HI_DefQty: TIntegerField
      FieldName = 'HI_DefQty'
    end
    object Query1HI_InsQty: TIntegerField
      FieldName = 'HI_InsQty'
    end
    object Query1DI_Tot: TIntegerField
      FieldName = 'DI_Tot'
    end
    object Query1DILotPassRate: TFloatField
      FieldName = 'DI Lot Pass Rate'
    end
    object Query1DI_Defectcode: TStringField
      FieldName = 'DI_Defectcode'
      FixedChar = True
      Size = 255
    end
    object Query1DI_DefQty: TIntegerField
      FieldName = 'DI_DefQty'
    end
    object Query1DI_InsQty: TIntegerField
      FieldName = 'DI_InsQty'
    end
    object Query1DIDefectRate: TFloatField
      FieldName = 'DI Defect Rate'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Excel1: TQuery
    DatabaseName = 'DB'
    Left = 472
    Top = 240
  end
  object Excel2: TQuery
    DatabaseName = 'DB'
    Left = 536
    Top = 240
  end
  object Excel3: TQuery
    DatabaseName = 'DB'
    Left = 584
    Top = 240
  end
end
