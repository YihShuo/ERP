object ScanStockDet_Det: TScanStockDet_Det
  Left = 421
  Top = 202
  Width = 434
  Height = 391
  BorderIcons = [biSystemMenu]
  Caption = 'ScanStockDet_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 418
    Height = 353
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
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
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = #38795#22411#34399#30908'|XXCC'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|DDCC'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|Qty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#25976#37327'|okQty'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'LackQty'
        Footers = <
          item
            FieldName = 'LackQty'
            ValueType = fvtSum
          end>
        Title.Caption = #27424#25976'|LackQty'
        Width = 67
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
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
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 96
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 104
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = ScanStockDet.DS1
    SQL.Strings = (
      
        'select YWDDS.DDBH,YWDDS.XXCC,YWDDS.DDCC,YWDDS.Qty,isnull(YWCP.ok' +
        'Qty,0) as okQty'
      'from YWDDS'
      
        'left join (select YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as okQ' +
        'ty'
      '             from YWCP'
      
        '             left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH  and YW' +
        'CP.XH=YWBZPOS.XH'
      '             where YWCP.SB='#39'1'#39
      '                       and YWCP.DDBH=:DDBH'
      
        '             group by YWCP.DDBH,YWBZPOS.DDCC)YWCP on YWCP.DDBH=Y' +
        'WDDS.DDBH and YWDDS.DDCC=YWCP.DDCC'
      'where YWDDS.DDBH=:DDBH')
    Left = 104
    Top = 152
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1DDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TIntegerField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1LackQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LackQty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 152
  end
end
