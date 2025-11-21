object MaterialCostRea_Det: TMaterialCostRea_Det
  Left = 314
  Top = 207
  Width = 763
  Height = 436
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialCostRea_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 747
    Height = 397
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    RowHeight = 4
    RowLines = 2
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #37096#38272#32232#34399'&'#21517#31281'|DepID'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272#32232#34399'&'#21517#31281'|DepName'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'FYLB'
        Footers = <>
        Title.Caption = #36027#29992#39006#21029'|FYLB'
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 219
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #38936#26009#25976#37327'|Qty'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Title.TitleButton = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32654#37329#37329#38989'|ACCUS'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#32232#34399'|LLNO'
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|SCBH'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #38936#26009#26085#26399'|CFMDate'
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|YYBH'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|YWSM'
        Title.TitleButton = True
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|ZWSM'
        Title.TitleButton = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 156
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 88
    object EXCEL1: TMenuItem
      Caption = 'Excel'
      OnClick = EXCEL1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select LL.FYLB,LL.DepID,BDepartment.DepName,LL.CLBH,LL.LLNO,LL.C' +
        'FMDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LL.Son_CLBH,LL.SCBH,'
      
        '       LL.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM,LL.Qty*LL.SYL as Qty,CWDJ' +
        '.USPrice,LL.Qty*LL.SYL*CWDJ.USPrice as USACC'
      
        'from (select KCZLS.FYLB,KCLL.DepID,KCLLS.CLBH,KCLLS.LLNO,KCLL.CF' +
        'MDate,KCLLS.YYBH,KCLLS.Qty,isnull(CLZHZL.SYL,1) SYL,'
      
        '             case when CLZHZL.CLDH1 is null then KCLLS.CLBH else' +
        ' CLZHZL.CLDH1 end as Son_CLBH  ,KCLLS.SCBH'
      '      from KCLLS'
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      
        '      left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KC' +
        'LL.CKBH'
      '      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between'
      '            '#39'2009/02/03'#39' and '#39'2009/02/10'#39
      '            and KCLL.DepID='#39'A120103'#39
      '          and KCZLS.FYLB like '#39'A01%'#39
      '     ) LL   '
      'left join BDepartment on BDepartment.ID=LL.DepID'
      'left join CLZL on CLZl.CLDH=LL.Son_CLBH'
      'left join SCBLYY on SCBLYY.YYBH=LL.YYBH'
      
        'left join (select CWDJ.CLBH,avg(CWDJ.USPrice) as USPrice from CW' +
        'DJ '
      '               group by CLBH ) CWDJ on CWDJ.CLBH=LL.CLBH  '
      'order by LL.FYLB,LL.DepID,LL.CLBH,LL.LLNO')
    Left = 168
    Top = 152
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1FYLB: TStringField
      FieldName = 'FYLB'
      FixedChar = True
      Size = 4
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
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 152
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.CenterText.Strings = (
      #37096#38272#36027#29992#26126#32048#22577#34920
      'Department Fee Detail Report')
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -24
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 264
    Top = 160
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620235B44446174655D20200D0A5C706172207D0D0A
      00}
  end
end
