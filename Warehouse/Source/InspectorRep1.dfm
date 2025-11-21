object InspectorRep: TInspectorRep
  Left = 269
  Top = 222
  Width = 870
  Height = 500
  Caption = 'InspectorRep'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
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
    object Label1: TLabel
      Left = 24
      Top = 64
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label8: TLabel
      Left = 176
      Top = 61
      Width = 20
      Height = 16
      Caption = 'To:'
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
    object DTP1: TDateTimePicker
      Left = 64
      Top = 56
      Width = 105
      Height = 24
      Date = 39477.775883784720000000
      Format = 'yyyy/MM/dd'
      Time = 39477.775883784720000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 56
      Width = 105
      Height = 24
      Date = 39477.776384722220000000
      Format = 'yyyy/MM/dd'
      Time = 39477.776384722220000000
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 862
    Height = 377
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shehao'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDQty'
        Width = 69
        Visible = True
      end
      item
        Color = 11599792
        Expanded = False
        FieldName = 'Qty'
        Width = 60
        Visible = True
      end
      item
        Color = 12303359
        Expanded = False
        FieldName = 'QtyLack'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTDD'
        Width = 58
        Visible = True
      end
      item
        Color = 11599792
        Expanded = False
        FieldName = 'CTQty'
        Width = 54
        Visible = True
      end
      item
        Color = 12303359
        Expanded = False
        FieldName = 'CTLack'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'shipdate'
        Width = 78
        Visible = True
      end>
  end
  object SCSMYW: TQuery
    OnCalcFields = SCSMYWCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCSMYW.DDBH,count(SCSMYW.CTNO) as CTQty,isnull(sum(SCSMRK' +
        '.Qty),0) as Qty,XXZL.XieXing,XXZL.Shehao,XXZL.Article,'
      
        'XXZL.XieMing,DDZL.Pairs as DDQty,DDZL.shipdate,SCZLDate.CTQty as' +
        ' CTDD'
      'from SCSMYW'
      
        'left join SCSMRK on SCSMYW.DDBH=SCSMRK.DDBH and SCSMYW.CTNO=SCSM' +
        'RK.CTNO '
      'left join DDZL on SCSMYW.DDBH=DDZL.DDBH '
      
        'left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH '
      'where SCSMYW.DDBH like '#39'%'#39
      ' and XXZL.Article like '#39'%'#39
      ' and XXZL.XieMing like '#39'%%'#39
      
        ' and Convert(smalldatetime,convert(varchar,SCSMYW.USERDate,111))' +
        ' between '
      #39'2008/01/30'#39
      ' and '#39'2008/01/30'#39
      
        'group by  SCSMYW.DDBH,XXZL.XieXing,XXZL.Shehao,XXZL.Article,XXZL' +
        '.XieMing,DDZL.Pairs,DDZL.shipdate,SCZLDATE.CTQty'
      'order by SCSMYW.DDBH ')
    Left = 184
    Top = 144
    object SCSMYWDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SCSMYWXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SCSMYWShehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object SCSMYWArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SCSMYWXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SCSMYWDDQty: TIntegerField
      FieldName = 'DDQty'
      DisplayFormat = '##,#0'
    end
    object SCSMYWQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SCSMYWQtyLack: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QtyLack'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object SCSMYWCTDD: TIntegerField
      FieldName = 'CTDD'
      DisplayFormat = '##,#0'
    end
    object SCSMYWCTQty: TIntegerField
      FieldName = 'CTQty'
      DisplayFormat = '##,#0'
    end
    object SCSMYWCTLack: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CTLack'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object SCSMYWshipdate: TDateTimeField
      FieldName = 'shipdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = SCSMYW
    Left = 224
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 208
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
