object OrderDetailKhuonIn: TOrderDetailKhuonIn
  Left = 229
  Top = 310
  Width = 1177
  Height = 567
  Caption = 'OrderDetailKhuonIn'
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1161
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 4
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
    object Label6: TLabel
      Left = 195
      Top = 14
      Width = 45
      Height = 16
      Caption = 'YWPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 428
      Top = 14
      Width = 61
      Height = 16
      Caption = 'UserDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 599
      Top = 18
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit5: TEdit
      Left = 246
      Top = 11
      Width = 161
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
    object DT1: TDateTimePicker
      Left = 491
      Top = 11
      Width = 105
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
      TabOrder = 1
    end
    object DT2: TDateTimePicker
      Left = 610
      Top = 11
      Width = 106
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
      TabOrder = 2
    end
    object Button4: TButton
      Left = 735
      Top = 7
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Edit3: TEdit
      Left = 52
      Top = 11
      Width = 129
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
    object Button1: TButton
      Left = 831
      Top = 7
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 249
    Width = 1161
    Height = 279
    Align = alClient
    DataSource = ZLZLS2DS
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu3
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGrid3GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 260
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #38936#26009'|TempQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.ToolTips = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #23526#30332'|Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #27604#29575'|Person'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #38617#25976'|Quantity'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = 'SKU|Article'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Name'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #35215#26684'|Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'CalDate'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #35336#31639#26085#26399'|CalDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end>
  end
  object DBGrid4: TDBGridEh
    Left = 0
    Top = 49
    Width = 1161
    Height = 200
    Align = alTop
    DataSource = DDZLDS
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 260
      end
      item
        EditButtons = <>
        FieldName = 'QUANTITY'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DIENTICH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 200
      end>
  end
  object ZLZLS2Query: TQuery
    OnCalcFields = ZLZLS2QueryCalcFields
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      
        'select ZLZLS2.ZLBH,ZLZLS2.CLBH ,CLZL.YWPM,CLZL.DWBH,ZLZLS2.CLSL,' +
        'KCLLS.TempQty,KCLLS.Qty,DDZL.Quantity as Pairs,DDZL.Article,CLZL' +
        '1.YWPM as Name,max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH'
      'from KHUONIN_ZLZLS2 ZLZLS2 left join KHUONIN_DDZL DDZL'
      'on ZLZLS2.ZLBH=DDZL.DDBH'
      'left join CLZL on ZLZLS2.CLBH=clzl.cldh'
      'left join CLZL CLZL1 on DDZL.Article=CLZL1.cldh'
      
        'left join ( select  KCLLS.SCBH,KCLLS.CLBH,sum(KCLLS.TempQty) as ' +
        'TempQty, sum(KCLLS.Qty) as Qty'
      #9#9#9'from kclls left join kcll on kclls.LLNO=kcll.LLNO'
      #9#9#9'left join clzl on kclls.clbh=clzl.cldh'
      #9#9#9'left join KHUONIN_DDZL DDZL on KCLLS.SCBH=ddzl.DDBH'
      #9#9#9'where KCLLS.SCBH =:DDBH and KCLLS.Qty>0'
      
        #9#9#9'group by KCLLS.SCBH,KCLLS.CLBH) KCLLS on KCLLS.SCBH=ZLZLS2.ZL' +
        'BH and KCLLS.CLBH=ZLZLS2.CLBH'
      'where ZLZLS2.ZLBH=:DDBH and ZLZLS2.CLSL>0'
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH ,CLZL.YWPM,CLZL.DWBH,ZLZLS2.CLS' +
        'L,KCLLS.TempQty,KCLLS.Qty,DDZL.Quantity,DDZL.Article,CLZL1.YWPM,' +
        'DDZL.GSBH')
    Left = 249
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 18
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 16
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object StringField8: TStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CalDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object StringField10: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object ZLZLS2DS: TDataSource
    DataSet = ZLZLS2Query
    Left = 251
    Top = 175
  end
  object DDZLQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DDZL.DDBH,DDZL.ARTICLE,YWPM,QUANTITY,DIENTICH,MEMO,DDZL.U' +
        'SERID,DDZL.USERDATE,DDZL.YN,DDZL.GSBH,ZLZLS2.USERDATE as CALDATE'
      'FROM KHUONIN_DDZL DDZL '
      'LEFT JOIN CLZL ON DDZL.ARTICLE=CLZL.CLDH'
      
        'LEFT JOIN ( select distinct ZLBH ,max(userdate) as UserDate from' +
        ' KHUONIN_ZLZLS2 ZLZLS2 group by ZLBH) ZLZLS2 on ZLZLS2.ZLBH=DDZL' +
        '.DDBH'
      'WHERE 1=2')
    Left = 196
    Top = 128
    object DDZLQueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLQueryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 10
    end
    object DDZLQueryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DDZLQueryQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object DDZLQueryDIENTICH: TFloatField
      FieldName = 'DIENTICH'
    end
    object DDZLQueryMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object DDZLQueryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DDZLQueryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DDZLQueryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DDZLQueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DDZLQueryCALDATE: TDateTimeField
      FieldName = 'CALDATE'
    end
  end
  object DDZLDS: TDataSource
    DataSet = DDZLQuery
    Left = 196
    Top = 168
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 313
    Top = 147
  end
  object PopupMenu3: TPopupMenu
    Left = 161
    Top = 125
    object MenuItem1: TMenuItem
      Caption = 'Detail'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
  end
end
