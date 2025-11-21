object ScanStockDet_Car: TScanStockDet_Car
  Left = 459
  Top = 451
  Width = 756
  Height = 415
  BorderIcons = [biSystemMenu]
  Caption = 'ScanStockDet_Car'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 740
    Height = 376
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        Title.Caption = #22806#31665#27161'|CARTONBAR'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DDBH2'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CARTONNO'
        Footers = <>
        Title.Caption = #31665#34399'|NO'
        Width = 50
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.Caption = #24207#34399'|XH'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Width = 58
      end
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Title.Caption = #27161#35672'|SB'
        Width = 36
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'INDATE'
        Footers = <>
        Title.Caption = #39318#27425#20837#20489#26178#38291'|NDATE'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'LastInDate'
        Footers = <>
        Title.Caption = #26368#24460#20837#20489#26178#38291'|LastInDate'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'DZQty'
        Footers = <
          item
            FieldName = 'DZQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30701#35037#25976#37327'|DZQty'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'sgw'
        Footers = <>
        Title.Caption = #27161#28310#37325#37327'|SGW'
      end
      item
        EditButtons = <>
        FieldName = 'rgw'
        Footers = <>
        Title.Caption = #20837#24235#37325#37327'|RGW'
      end
      item
        EditButtons = <>
        FieldName = 'ogw'
        Footers = <>
        Title.Caption = #20986#36008#37325#37327'|OGW'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanStockDet.DS1
    SQL.Strings = (
      
        'select  YWCP.*,YWDDSDZ.DZQty,YWCP.DDBH +'#39' '#39'+RIGHT(REPLICATE('#39'0'#39',' +
        ' 4) + CAST(CARTONNO as NVARCHAR), 4) as DDBH2'
      'from YWCP'
      'left join (select CartonBar,sum(Qty) as DZQty from YWDDSDZ '
      
        '           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWC' +
        'P.CartonBar'
      'where  YWCP.DDBH=:DDBH'
      'order by  YWCP.CartonBar')
    Left = 56
    Top = 64
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1CARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object Query1CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
      Origin = 'DB.YWCP.CARTONNO'
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object Query1INDATE: TDateTimeField
      FieldName = 'INDATE'
      Origin = 'DB.YWCP.INDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LastInDate: TDateTimeField
      FieldName = 'LastInDate'
      Origin = 'DB.YWCP.LastInDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DZQty: TIntegerField
      FieldName = 'DZQty'
    end
    object Query1sgw: TFloatField
      FieldName = 'sgw'
    end
    object Query1rgw: TFloatField
      FieldName = 'rgw'
    end
    object Query1ogw: TFloatField
      FieldName = 'ogw'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query1DDBH2: TStringField
      FieldName = 'DDBH2'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 64
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 88
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 120
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
