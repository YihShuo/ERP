object OrderCheckETD_Det: TOrderCheckETD_Det
  Left = 415
  Top = 252
  Width = 777
  Height = 380
  BorderIcons = [biSystemMenu]
  Caption = 'OrderCheckETD_Det'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 769
    Height = 346
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
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|ZLBH'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Ord_Size'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|Ord_Size'
        Width = 55
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = #38795#22411#34399#30908'|XXCC'
        Width = 55
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'Tot_Qty'
        Footers = <
          item
            FieldName = 'Tot_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|Tot_Qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'C_Qty'
        Footers = <
          item
            FieldName = 'C_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35009#26039#25976#37327'|C_Qty'
        Width = 55
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'W_Qty'
        Footers = <
          item
            FieldName = 'W_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#36554#25976#37327'|W_Qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Z_Qty'
        Footers = <
          item
            FieldName = 'Z_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #38795#22666#25976#37327'|Z_Qty'
        Width = 55
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'S_Qty'
        Footers = <
          item
            FieldName = 'S_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #37341#36554#25976#37327'|S_Qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'O_Qty'
        Footers = <
          item
            FieldName = 'O_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #22823#24213#25976#37327'|O_Qty'
        Width = 55
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'A_Qty'
        Footers = <
          item
            FieldName = 'A_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25104#22411#25976#37327'|A_Qty'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'F_Qty'
        Footers = <
          item
            FieldName = 'F_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#20489#25976#37327'|F_Qty'
        Width = 55
      end
      item
        Color = 15461355
        EditButtons = <>
        FieldName = 'A_Set'
        Footers = <
          item
            FieldName = 'A_Set'
            ValueType = fvtSum
          end>
        Title.Caption = #38795#38754#24235#23384'|A_Set'
        Width = 55
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = OrderCheckETD.DS1
    SQL.Strings = (
      
        'select ZLZLS.ZLBH,ZLZLS.ZLCC as Ord_Size,ZLZLS.XXCC ,ZL.Qty as T' +
        'ot_Qty, CQty.C_Qty, '
      
        '          ZQty.Z_Qty, WQty.W_Qty, OQty.O_Qty, SQty.S_Qty, AQty.A' +
        '_Qty, FQty.F_Qty,'
      '          case when ZLZLS.Qty<=isnull(Fqty.F_Qty,0) then 0 '
      
        '            else (case when isnull(Sqty.S_Qty,0)>isnull(Aqty.A_Q' +
        'ty,0)'
      
        '                      then isnull(Sqty.S_Qty,0)-isnull(Aqty.A_Qt' +
        'y,0) else 0 end) end as A_Set'
      'from  (select #SCBBSETD.DDBH,#SCBBSETD.XXCC,#SCBBSETD.Qty '
      '          from #SCBBSETD'
      '          left join DDZL on DDZL.DDBH=#SCBBSETD.DDBH    '
      
        '          left join (select YSBH as DDBH ,min(ETD) as ETD from Y' +
        'WDD group by YSBH )YWDD on YWDD.DDBH=DDZL.DDBH'
      '          left join KFZL on KFZL.KFDH=DDZL.KHBH  '
      
        '          where  #SCBBSETD.GX='#39'L'#39'       and convert(smalldatetim' +
        'e,convert(varchar,YWDD.ETD,111))=:ETD   and  KFZL.KFJC=:KFJC   )' +
        ' ZL'
      'left join ZLZLS on ZL.DDBH=ZLZLS.ZLBH and ZL.XXCC=ZLZLS.XXCC'
      ''
      ''
      'left join  (select DDBH,XXCC,sum(Qty) as C_Qty'
      '               from #SCBBSETD  '
      
        '               where  #SCBBSETD.GX='#39'C'#39'                group by D' +
        'DBH,XXCC'
      
        '              ) Cqty  on ZLZLS.XXCC=CQty.XXCC and ZLZLS.ZLBH=Cqt' +
        'y.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as Z_Qty'
      '               from #SCBBSETD  '
      
        '               where #SCBBSETD.GX='#39'Z'#39'                group by DD' +
        'BH,XXCC'
      
        '              ) Zqty  on ZLZLS.XXCC=ZQty.XXCC  and ZLZLS.ZLBH=Zq' +
        'ty.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as W_Qty'
      '               from #SCBBSETD  '
      
        '               where  #SCBBSETD.GX='#39'W'#39'                group by D' +
        'DBH,XXCC'
      
        '              ) Wqty  on  ZLZLS.XXCC=WQty.XXCC  and ZLZLS.ZLBH=W' +
        'qty.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as O_Qty'
      '               from #SCBBSETD  '
      
        '               where  #SCBBSETD.GX='#39'O'#39'                group by D' +
        'DBH,XXCC'
      
        '              ) Oqty  on  ZLZLS.XXCC=OQty.XXCC  and ZLZLS.ZLBH=O' +
        'qty.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as S_Qty'
      '               from #SCBBSETD  '
      '               where  #SCBBSETD.GX='#39'S'#39'  '
      '               group by DDBH,XXCC'
      
        '              ) Sqty  on  ZLZLS.XXCC=SQty.XXCC  and ZLZLS.ZLBH=S' +
        'qty.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as A_Qty'
      '               from #SCBBSETD  '
      
        '               where  #SCBBSETD.GX='#39'A'#39'                group by D' +
        'DBH,XXCC'
      
        '              ) Aqty  on  ZLZLS.XXCC=AQty.XXCC  and ZLZLS.ZLBH=A' +
        'qty.DDBH'
      'left join  (select DDBH,XXCC,sum(Qty) as F_Qty'
      '               from #SCBBSETD  '
      
        '               where  #SCBBSETD.GX='#39'F'#39'                group by D' +
        'DBH,XXCC'
      
        '              ) Fqty  on  ZLZLS.XXCC=FQty.XXCC  and ZLZLS.ZLBH=F' +
        'qty.DDBH'
      'order by  ZLZLS.ZLBH,ZLZLS.ZLCC'
      '')
    Left = 144
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ETD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KFJC'
        ParamType = ptUnknown
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Ord_Size: TStringField
      FieldName = 'Ord_Size'
      FixedChar = True
      Size = 6
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1Tot_Qty: TFloatField
      FieldName = 'Tot_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1C_Qty: TFloatField
      FieldName = 'C_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1W_Qty: TFloatField
      FieldName = 'W_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Qty: TFloatField
      FieldName = 'Z_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1O_Qty: TFloatField
      FieldName = 'O_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1S_Qty: TFloatField
      FieldName = 'S_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Qty: TFloatField
      FieldName = 'A_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1F_Qty: TFloatField
      FieldName = 'F_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Set: TFloatField
      FieldName = 'A_Set'
      DisplayFormat = '##,#0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 96
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  / &[Pages]')
    PageHeader.CenterText.Strings = (
      #35330#21934#34399#30908#29983#29986#26126#32048#34920)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 272
    Top = 120
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B4554445D0D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 160
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 408
    Top = 112
  end
end
