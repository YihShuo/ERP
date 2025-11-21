object OutsoleDDZLRtp: TOutsoleDDZLRtp
  Left = 269
  Top = 282
  Width = 1260
  Height = 692
  Caption = 'OutsoleDDZLRtp'
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
    Width = 1244
    Height = 75
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 195
      Top = 14
      Width = 42
      Height = 16
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 35
      Top = 15
      Width = 47
      Height = 16
      Caption = 'Buy No:'
    end
    object Label2: TLabel
      Left = 13
      Top = 42
      Width = 69
      Height = 16
      Caption = 'Order Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 203
      Top = 44
      Width = 44
      Height = 16
      Caption = 'DDMH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 394
      Top = 13
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object BuyNoEdit: TEdit
      Left = 86
      Top = 11
      Width = 107
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '202001'
    end
    object Button2: TButton
      Left = 544
      Top = 40
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object DDBHEdit: TEdit
      Left = 250
      Top = 9
      Width = 127
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button3: TButton
      Left = 544
      Top = 1
      Width = 73
      Height = 36
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button3Click
    end
    object DDMHEdit: TEdit
      Left = 250
      Top = 41
      Width = 127
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CBX1: TComboBox
      Left = 435
      Top = 9
      Width = 94
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 5
      Items.Strings = (
        'All')
    end
    object WHCKBox: TCheckBox
      Left = 395
      Top = 44
      Width = 86
      Height = 17
      Caption = 'Not in WH'
      TabOrder = 6
    end
    object RYTypeCB: TComboBox
      Left = 86
      Top = 40
      Width = 113
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = 'All'
      Items.Strings = (
        'All'
        'Normal Order'
        'Quick Order')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 75
    Width = 1244
    Height = 578
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 473
      Top = 1
      Width = 4
      Height = 576
    end
    object DBGridEh2: TDBGridEh
      Left = 477
      Top = 1
      Width = 766
      Height = 576
      Align = alClient
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      PopupMenu = PopupMenu1
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
          FieldName = 'BUYNO'
          Footers = <>
          Title.Caption = 'Buy No|Buy No'
        end
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <>
          Title.Caption = #35330#21934#32232#34399'|DDBH'
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Title.Caption = 'SKU#|ARTICLE'
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'DDZT'
          Footers = <>
          Title.Caption = #29376#24907'|DDZT'
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'CC'
          Footers = <>
          Title.Caption = #23610#30908'|CC'
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'GJCC'
          Footers = <>
          Title.Caption = #24037#20855#23610#30908'|GJCC'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footer.FieldName = 'Quantity'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #38617#25976'|Quantity'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'DDRQ'
          Footers = <>
          Title.Caption = #25509#21934#26085'|DDRQ'
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Title.Caption = #20986#36008#26085'|ShipDate'
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'DDMH'
          Footers = <>
          Title.Caption = #24213#27169'|DDMH'
          Width = 121
        end
        item
          EditButtons = <>
          FieldName = 'DDGB'
          Footers = <>
          Title.Caption = #20986#36008#22283#23478'|DDGB'
          Width = 59
        end>
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 472
      Height = 576
      Align = alLeft
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
      OnGetCellParams = DBGridEh1GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDMH'
          Footers = <>
          Title.Caption = #24213#27169'|DDMH'
          Width = 102
        end
        item
          EditButtons = <>
          FieldName = 'DQty'
          Footer.FieldName = 'DQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #25976#37327'|Qty'
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'GJCC'
          Footers = <>
          Title.Caption = #24037#20855#23610#30908'|GJCC'
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'OutSoleQty'
          Footers = <>
          Title.Caption = #29986#33021'|OutSole'
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #35330#21934#38617#25976'|Pairs'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'ProdDays'
          Footer.FieldName = 'ProdDays'
          Footer.ValueType = fvtAvg
          Footers = <>
          Title.Caption = #38928#35336#22825#25976'|ProdDays'
        end>
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 160
  end
  object OutsoleQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      
        'Select DDZL.*,OutsoleS.DQty,OutsoleSCBZCL.Qty as OutSoleQty,Outs' +
        'oleS.YWPM,OutsoleS.CLBH,Round(DDZL.Pairs/Convert(float,OutsoleSC' +
        'BZCL.Qty*OutsoleS.DQty),1) as ProdDays from ('
      
        'Select DDMH,GJCC,SUM(DDZL.Quantity) as Pairs,Min(Shipdate) as Sh' +
        'ipdate from ('
      
        'Select DDZL.DDBH,DDZL.ARTICLE,DDZL.DDZT,DDZLS.CC,XXGJS.GJCC,DDZL' +
        'S.Quantity,DDZL.ShipDate,XXZL.DDMH from DDZL '
      'Left join DDZLs on DDZLS.DDBH=DDZL.DDBH '
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH '
      
        'Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      
        'Left join XXGJS on xxgjs.XieXing=DDZL.XieXing and xxgjs.GJLB=101' +
        ' and xxgjs.XXCC=DDZLs.CC '
      'Where 1=1 '
      '  and DDZL.BUYNO like '#39'201801%'#39' '
      '  and XXZL.DDMH like '#39'TD-009%'#39' '
      ') DDZL Group by DDMH,GJCC  ) DDZL'
      'Left join ('
      '  select OutsoleS.*,IsNull(CLZL.cltd, CLZL.YWPM) as YWPM from ('
      '  select CLBH,SIZ,Sum(RKQty) as DQty from ('
      
        '  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQ' +
        'ty from OSRKSS,OSRK '
      
        '  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='#39'VA12'#39' and OSRKSS.Z' +
        'LBH='#39'NEWL'#39' and convert(smalldatetime,convert(varchar,OSRK.UserDa' +
        'te,111)) between '#39'2020/04/01'#39' and '#39'2020/04/01'#39' '
      '  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where' +
        ' CKBH='#39'VA12#L'#39' and KCYEAR='#39'2020'#39' and KCMonth='#39'03'#39' ) as tmpRKTLFL' +
        ' '
      '  group by CKBH,CLBH,SIZ ) OutsoleS'
      '  left join CLZL on CLZL.cldh=OutSoleS.CLBH'
      
        ') OutsoleS on OutsoleS.YWPM=DDZL.DDMH and OutsoleS.SIZ=DDZL.GJCC' +
        ' '
      
        'left join OutsoleSCBZCL on OutsoleSCBZCL.CLDH=OutsoleS.CLBH ) DD' +
        'ZL '
      
        'Order by case when DDZL.GJCC is  null  then 0 else 1 end,DDZL.DD' +
        'MH,DDZL.GJCC')
    Left = 200
    Top = 190
    object OutsoleQryDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object OutsoleQryGJCC: TStringField
      FieldName = 'GJCC'
      FixedChar = True
      Size = 6
    end
    object OutsoleQryPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object OutsoleQryShipdate: TDateTimeField
      FieldName = 'Shipdate'
    end
    object OutsoleQryDQty: TFloatField
      FieldName = 'DQty'
    end
    object OutsoleQryOutSoleQty: TIntegerField
      FieldName = 'OutSoleQty'
    end
    object OutsoleQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 50
    end
    object OutsoleQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object OutsoleQryProdDays: TFloatField
      FieldName = 'ProdDays'
    end
  end
  object DS1: TDataSource
    DataSet = OutsoleQry
    Left = 200
    Top = 223
  end
  object DDZLSQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'Select DDZL.BUYNO,DDZL.DDBH,DDZL.ARTICLE,DDZL.DDZT,DDZLS.CC,XXGJ' +
        'S.GJCC,DDZLS.Quantity,DDZL.DDRQ,DDZL.ShipDate,XXZL.DDMH,DDZL.DDG' +
        'B from DDZL '
      'left join DDZLs on DDZLS.DDBH=DDZL.DDBH '
      
        'Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      
        'left join XXGJS on xxgjs.XieXing=DDZL.XieXing and xxgjs.GJLB=101' +
        ' and xxgjs.XXCC=DDZLs.CC '
      'Where 1=1 and XXZL.DDMH=:DDMH and XXGJS.GJCC=:GJCC  '
      '  and DDZL.BUYNO like '#39'201801%'#39' '
      '  and XXZL.DDMH like '#39'TD-009%'#39' '
      'order by DDZL.ARTICLE,DDZLS.CC,XXGJS.GJCC')
    Left = 236
    Top = 190
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDMH'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'GJCC'
        ParamType = ptUnknown
        Size = 7
      end>
    object DDZLSQryBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object DDZLSQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLSQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object DDZLSQryDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object DDZLSQryCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object DDZLSQryGJCC: TStringField
      FieldName = 'GJCC'
      FixedChar = True
      Size = 6
    end
    object DDZLSQryQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object DDZLSQryDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object DDZLSQryShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLSQryDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object DDZLSQryDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = DDZLSQry
    Left = 236
    Top = 223
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 203
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
