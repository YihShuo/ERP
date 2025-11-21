object WarehouseTrace: TWarehouseTrace
  Left = 293
  Top = 200
  Width = 783
  Height = 500
  Caption = 'WarehouseTrace'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 368
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 160
      Top = 24
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 58
      Height = 16
      Caption = 'ArticleNo:'
    end
    object Label7: TLabel
      Left = 640
      Top = 32
      Width = 51
      Height = 16
      Caption = 'Finished'
    end
    object Label9: TLabel
      Left = 640
      Top = 8
      Width = 56
      Height = 16
      Caption = 'No Finish'
    end
    object Label10: TLabel
      Left = 640
      Top = 56
      Width = 48
      Height = 16
      Caption = 'No Start'
    end
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label8: TLabel
      Left = 160
      Top = 61
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Edit3: TEdit
      Left = 424
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit3KeyPress
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 344
      Top = 48
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Button2: TButton
      Left = 456
      Top = 48
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 608
      Top = 8
      Width = 25
      Height = 21
      Color = clRed
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CBX2: TComboBox
      Left = 64
      Top = 53
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 6
      Text = '2006'
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
      Left = 216
      Top = 53
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
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
    object Edit4: TEdit
      Left = 608
      Top = 32
      Width = 25
      Height = 21
      Color = 4259584
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 608
      Top = 56
      Width = 25
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 504
    Top = 89
    Width = 271
    Height = 377
    Align = alRight
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 1
      Width = 262
      Height = 375
      Align = alRight
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DDCC'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XXCC'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDQty'
          Width = 46
          Visible = True
        end
        item
          Color = 13303754
          Expanded = False
          FieldName = 'okQty'
          Width = 45
          Visible = True
        end
        item
          Color = 11316479
          Expanded = False
          FieldName = 'LackQty'
          Width = 47
          Visible = True
        end>
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 89
    Width = 504
    Height = 377
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDQty'
        Visible = True
      end
      item
        Color = 13696976
        Expanded = False
        FieldName = 'okQty'
        Width = 58
        Visible = True
      end
      item
        Color = 13290239
        Expanded = False
        FieldName = 'QtyLack'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTQty'
        Width = 48
        Visible = True
      end
      item
        Color = 13696976
        Expanded = False
        FieldName = 'CTok'
        Width = 52
        Visible = True
      end
      item
        Color = 13290239
        Expanded = False
        FieldName = 'CTLack'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KHBH'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KHPO'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDCC'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shipdate'
        Width = 71
        Visible = True
      end>
  end
  object DDZL: TQuery
    AfterScroll = DDZLAfterScroll
    OnCalcFields = DDZLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select DDZL.DDBH,DDZL.XieXing,DDZl.SheHao,DDZL.Article,'
      'DDZL.Pairs as DDQty,DDZL.shipdate,DDZL.CCGB as DDCC,DDZL.KHBH,'
      
        'DDZL.KHPO,XXZl.XieMing,XXZl.CCGB as XXCC ,SCSMRK.CTok,SCSMRK.okQ' +
        'ty,SCZLDate.CTQty'
      'from DDZL'
      'left join XXZL on XXZl.XieXing=DDZl.XieXing'
      ' and XXZL.SheHao=DDZl.SheHao'
      'left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH '
      'left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBh '
      
        'left join (select SCSMRK.DDBH,count(SCSMRK.CTNO) as CTok,sum(SCS' +
        'MRK.Qty) as okQty'
      '           from SCSMRK '
      '           left join DDZL on SCSMRK.DDBH=DDZL.DDBH '
      '           where  SCSMRK.DDBH like '#39'%'#39
      
        '           and Convert(smalldatetime,convert(varchar,DDZL.ShipDa' +
        'te)) between '
      #39'2008/04/01'#39
      '        and '#39'2008/04/30'#39
      '        group by SCSMRK.DDBH ) SCSMRK on SCSMRK.DDBH =DDZL.DDBH '
      'where  DDZL.DDZT='#39'Y'#39
      'and ZLZL.CQDH='#39'LTY'#39
      'and XXZL.Article like '#39'%'#39
      'and XXZL.XieMing like '#39'%%'#39
      'and DDZL.DDBH like '#39'%'#39
      
        'and Convert(smalldatetime,convert(varchar,DDZL.ShipDate)) betwee' +
        'n '
      #39'2008/04/01'#39
      ' and '#39'2008/04/30'#39
      'order by DDZL.DDBH')
    Left = 312
    Top = 152
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDZLDDQty: TIntegerField
      FieldName = 'DDQty'
      DisplayFormat = '##,#0'
    end
    object DDZLokQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object DDZLQtyLack: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QtyLack'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object DDZLCTQty: TIntegerField
      FieldName = 'CTQty'
      DisplayFormat = '##,#0'
    end
    object DDZLCTok: TIntegerField
      FieldName = 'CTok'
      DisplayFormat = '##,#0'
    end
    object DDZLCTLack: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CTLack'
      Calculated = True
    end
    object DDZLKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object DDZLKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object DDZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object DDZLDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object DDZLshipdate: TDateTimeField
      FieldName = 'shipdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 344
    Top = 152
  end
  object DDCC: TQuery
    OnCalcFields = DDCCCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select DDZLS.DDBH,DDZLS.CC as DDCC, DDZLS.Quantity as DDQty,XXZL' +
        'S3.UK_Size as XXCC, sum(SCSMRKS.Qty) as okQty'
      'from DDZLS '
      'left join DDZL on DDZL.DDBH=DDZLS.DDBH'
      
        'left join XXZLS3 on DDZLS.CC=XXZLS3.UK_Size and XXZLS3.XieXing=D' +
        'DZL.XieXing '
      
        'left join SCSMRKS on SCSMRKS.DDBH=DDZLS.DDBH and SCSMRKS.XXCC=XX' +
        'ZLS3.UK_Size'
      'where DDZLS.DDBH='#39'LT0804001'#39' '
      'and DDZLS.Quantity<>0'
      'group by DDZLS.DDBH,DDZLS.CC , DDZLS.Quantity,XXZLS3.UK_Size'
      'order by DDZLS.CC ')
    Left = 600
    Top = 161
    object DDCCDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCWXLH.DDBH'
      FixedChar = True
      Size = 50
    end
    object DDCCXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCWXLH.XXCC'
      FixedChar = True
      Size = 6
    end
    object DDCCDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.XXZLS3.UK_Size'
      FixedChar = True
      Size = 6
    end
    object DDCCDDQty: TIntegerField
      FieldName = 'DDQty'
      DisplayFormat = '##,#0'
    end
    object DDCCokQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object DDCCLackQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LackQty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
  end
  object DS2: TDataSource
    DataSet = DDCC
    Left = 632
    Top = 161
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 192
    object Details1: TMenuItem
      Caption = 'Details'
      OnClick = Details1Click
    end
  end
end
