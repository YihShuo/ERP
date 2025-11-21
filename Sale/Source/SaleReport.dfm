object salereportf: Tsalereportf
  Left = 553
  Top = 385
  Width = 870
  Height = 499
  Caption = 'SaleReport'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 10
      Width = 81
      Height = 20
      AutoSize = False
      Caption = 'GSBH('#24288#21029'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 97
      Height = 20
      AutoSize = False
      Caption = 'Shipdate('#20132#26399'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 209
      Top = 44
      Width = 11
      Height = 16
      Caption = 'to'
    end
    object CB1: TComboBox
      Left = 114
      Top = 6
      Width = 89
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'VA3'
      Items.Strings = (
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
    object dtp1: TDateTimePicker
      Left = 112
      Top = 41
      Width = 97
      Height = 24
      Date = 40173.612860023150000000
      Time = 40173.612860023150000000
      TabOrder = 1
    end
    object dtp2: TDateTimePicker
      Left = 221
      Top = 41
      Width = 97
      Height = 24
      Date = 40173.612860023150000000
      Time = 40173.612860023150000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 336
      Top = 41
      Width = 75
      Height = 25
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 862
    Height = 395
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
    Columns = <
      item
        EditButtons = <>
        FieldName = #35330#21934#34399
        Footers = <
          item
            ValueType = fvtCount
          end>
      end
      item
        EditButtons = <>
        FieldName = #23458#25142#21517#31281
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #21407#22987#20132#26399
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = #23526#38555#20986#36008#26085
        Footers = <>
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = #38928#35336#20986#36008#25976#37327
        Footers = <
          item
            Color = clYellow
            ValueType = fvtSum
          end>
      end
      item
        Color = clSilver
        EditButtons = <>
        FieldName = #23526#38555#20986#36008#25976
        Footers = <
          item
            Color = clLime
            ValueType = fvtSum
          end>
      end
      item
        Color = clGray
        EditButtons = <>
        FieldName = #30701#35037#25976
        Footers = <
          item
            Color = clRed
            ValueType = fvtSum
          end>
      end>
  end
  object DataSource1: TDataSource
    DataSet = saledata
    Left = 456
    Top = 128
  end
  object saledata: TQuery
    DatabaseName = 'dB'
    Filtered = True
    Constrained = True
    SQL.Strings = (
      
        'select ddzl.ddbh as '#35330#21934#34399',kfzl.kfjc as '#23458#25142#21517#31281',ddzl.shipdate as '#21407#22987#20132#26399',' +
        'max(ywcp.exedate) as '#23526#38555#20986#36008#26085',ddzl.pairs as '#38928#35336#20986#36008#25976#37327','
      
        '          outgoods.qty as '#23526#38555#20986#36008#25976',(ddzl.pairs-outgoods.qty) as '#30701#35037#25976 +
        '  from DDzl '
      'left join kfzl on kfzl.kfdh=ddzl.khbh'
      'left join ywcp on ywcp.ddbh=ddzl.ddbh'
      'left join (select ddbh,sum(qty) as qty   from YWcp '
      
        'where exedate is not null  group by ddbh ) outgoods on outgoods.' +
        'ddbh=ddzl.ddbh'
      ''
      
        'where gsbh='#39'VA3'#39' and (shipdate>'#39'2009/11/1'#39' and shipdate<'#39'2009/12' +
        '/1'#39') '
      '          or (exedate>'#39'2009/11/1'#39' and exedate<'#39'2009/12/1'#39')'
      
        'group by  ddzl.ddbh,kfzl.kfjc,ddzl.shipdate,ddzl.pairs,outgoods.' +
        'qty'
      'order by ddzl.ddbh')
    Left = 424
    Top = 128
    object saledataBDEDesigner: TStringField
      FieldName = #35330#21934#34399
      FixedChar = True
      Size = 15
    end
    object saledataBDEDesigner2: TStringField
      FieldName = #23458#25142#21517#31281
      FixedChar = True
    end
    object saledataBDEDesigner3: TDateTimeField
      FieldName = #21407#22987#20132#26399
    end
    object saledataBDEDesigner4: TDateTimeField
      FieldName = #23526#38555#20986#36008#26085
    end
    object saledataBDEDesigner5: TIntegerField
      FieldName = #38928#35336#20986#36008#25976#37327
    end
    object saledataBDEDesigner6: TIntegerField
      FieldName = #23526#38555#20986#36008#25976
    end
    object saledataBDEDesigner7: TIntegerField
      FieldName = #30701#35037#25976
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from DDZL_OD '
      'where  ImportDate='#39'2013/12/03'#39
      ' and DDBH like '#39'%'#39
      ' and XieXing like '#39'%'#39
      ' and SheHao like '#39'%'#39
      ' and Article like '#39'%'#39
      ' order by '
      ' DDBH')
    Left = 392
    Top = 129
  end
end
