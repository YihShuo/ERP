object Traceability_Warehouse_Chemical: TTraceability_Warehouse_Chemical
  Left = 420
  Top = 278
  Width = 1767
  Height = 675
  Caption = 'Traceability_Warehouse_Chemical'
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
    Width = 1751
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 15
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
    object Label6: TLabel
      Left = 19
      Top = 47
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
    object Label2: TLabel
      Left = 246
      Top = 15
      Width = 48
      Height = 16
      Caption = 'SuppID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 227
      Top = 47
      Width = 72
      Height = 16
      Caption = 'SuppName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 443
      Top = 15
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'In WH Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 622
      Top = 14
      Width = 20
      Height = 16
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNoEdit: TEdit
      Left = 87
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 458
      Top = 38
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 87
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 546
      Top = 38
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object SuppIDEdit: TEdit
      Left = 302
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object SuppNameEdit: TEdit
      Left = 302
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 523
      Top = 11
      Width = 97
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
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 643
      Top = 11
      Width = 97
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
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1751
    Height = 555
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
        FieldName = 'RKNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'INPUT W/H NO'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MATERIAL CODE'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MATERIAL DESCRIPTION'
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'UNIT'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'LOCATION'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY ORDERED'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY INPUT W/H'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'MAT.ARRIVAL DATE'
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = 'INPUT W/H DATE'
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = 'MAT.PO#'
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE OR DELIVERY NOTE'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = 'WAREHOUSE PLACEMENT'
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select RKZL.RKNO,RKZL.CLBH,CLZL.YWPM, CLZL.DWBH , case when  CGZ' +
        'LS.ZSBH='#39'VC115'#39' then '#39'TW'#39' else '#39'VN'#39' end as CQDH '
      
        #9#9',isnull(CGZLS.Qty, 0) as CGQty, RKZL.RKQty, CGZLS.CFMDate, RKZ' +
        'L.RKDate,CGZLS.CGNO,RKZL.RKNO,KCZLS.KCBH'
      #9#9',RKZL.DOCNO,KCZLS.KCBH'
      'from  ('
      #9#9#9'select'#9'KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,  '
      #9#9#9#9#9'KCRK.RKNO as RKNO,max(KCRK.USERDate) as RKDate, '
      
        '                    max(kcrks.usprice) as usprice,max(kcrks.vnpr' +
        'ice) as vnprice ,Declaretion,'
      
        #9#9#9#9#9'case when ((left(KCRK.HGLB,2) in ('#39'NK'#39','#39'TC'#39','#39'KD'#39')) or (KCRK' +
        '.HGLB='#39'H11'#39'))  then KCRK.DOCNO else KCRK.MEMO end as DOCNO,KCRK.' +
        'ZSBH,KCRK.CKBH'
      '         '#9'from  KCRKS with (nolock)  '
      #9#9#9'left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  '
      '        '#9'left join KCPK on kcrk.RKNO=kcpk.PKNO '
      '         '#9'where KCRK.SFL<>'#39'THU HOI'#39' and KCRK.CKBH='#39'VTXW'#39
      
        #9#9#9'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between         '
      '                     '#39'2023/09/12'#39'and '#39'2023/10/11'#39
      
        '            group by KCRK.ZSNO,KCRKS.CLBH,Declaretion,KCRK.DOCNO' +
        ',KCRK.MEMO,KCRK.ZSBH,KCRK.CKBH,KCRK.RKNO,KCRK.HGLB )RKZL'
      
        'left join ( select CGZLS.CGNO, CGZLS.CLBH, CGZLS.Qty, CGZL.CGDat' +
        'e                                  '
      
        #9#9#9#9#9', CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH        ' +
        '                     '
      
        #9#9#9'from CGZLS                                                   ' +
        '                          '
      
        #9#9#9'left join CGZL on CGZl.CGNO=CGZLS.CGNO                       ' +
        '                          '
      #9#9#9'where CGZLS.YN!=0 and CGZLS.CLBH like '#39'W%'#39
      
        '            and CGZL.GSBH = '#39'VTX'#39'                               ' +
        '         '
      
        '            and CGZL.CGLX = 4   ) CGZLS on CGZLS.CGNO=RKZL.ZSNO ' +
        'and CGZLS.CLBH=RKZL.CLBH   '
      'left join CLZL on RKZL.CLBH = CLZL.CLDH  '
      'left join zszl on RKZL.zsbh=zszl.zsdh'
      'left join KCZLS on KCZLS.CLBH=RKZL.CLBH and KCZLS.CKBH=RKZL.CKBH'
      'where 1=2'
      'order by RKZL.RKNO')
    Left = 530
    Top = 324
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
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
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 2
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
end
