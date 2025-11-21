object MaterialCost_Det: TMaterialCost_Det
  Left = 359
  Top = 213
  Width = 801
  Height = 474
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialCost_Det'
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
    Width = 785
    Height = 435
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghDialogFind]
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
        Title.Caption = #37096#38272'|DepID'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <
          item
            FieldName = 'DepName'
            ValueType = fvtCount
          end>
        Title.Caption = #37096#38272'|DepName'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'FYLB'
        Footers = <>
        Title.Caption = #36027#29992#39006#21029'|FYLB'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 219
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #38936#26009#25976#37327'|Qty'
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
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#32232#34399'|LLNO'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|SCBH'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #38936#26009#26085#26399'|CFMDate'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|YYBH'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|YWSM'
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240'|ZWSM'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'MeMo'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'Article|Article'
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 88
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select LL.FYLB,LL.DepID,LL.DepName,LL.CLBH,LL.LLNO,LL.CFMDate,CL' +
        'ZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LL.SCBH,'
      
        '       LL.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM,LL.Qty,CWDJ.USPrice,round' +
        '(LL.Qty*CWDJ.USPrice,2) as USACC,LL.Memo,LL.Article,LL.pairs'
      
        'from (select CLLBFYS.FYLB,KCLL.DepID,BDepartment.DepName,KCLLS.C' +
        'LBH,KCLLS.LLNO,KCLL.CFMDate,KCLLS.YYBH,KCLLS.Qty,KCLLS.SCBH,KCLL' +
        'S.MeMo,DDZL.Article,DDZL.Pairs'
      
        '             ,substring(BDepartment.DepName,1,case when charinde' +
        'x('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartm' +
        'ent.DepName)-1 end ) as GSBH'
      '      from KCLLS'
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '      left join BDepartment on BDepartment.ID=KCLL.DepID'
      
        '      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.G' +
        'SBH=KCLL.GSBH'
      
        #9'  left join DDZL on DDZL.DDBH=KCLLS.SCBH and DDZL.ZLBH=KCLLS.SC' +
        'BH'
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between'
      '                '#39'2021/03/03'#39' and '#39'2021/03/09'#39
      '            and BDepartment.DepName like '#39'%%'#39
      '            and KCLLS.Qty<>0'
      '            and CLLBFYS.FYLB like '#39'B%'#39
      '     ) LL   '
      'left join CLZL on CLZl.CLDH=LL.CLBH'
      'left join SCBLYY on SCBLYY.YYBH=LL.YYBH'
      'left join CWDJ on CWDJ.CLBH=LL.CLBH '
      '--left join DDZL on DDZL.DDBH=LL.SCBH and DDZL.ZLBH=LL.SCBH'
      
        '                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,' +
        'LL.CFMDate)) '
      
        '                  and CWDJ.DJMonth=convert(varchar,datepart(MM,L' +
        'L.CFMDate)) '
      'where LL.GSBH='#39'A1'#39
      'order by LL.FYLB,LL.DepID,LL.CLBH,LL.LLNO'
      ''
      ''
      ''
      ''
      '')
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
      DisplayFormat = '##,#0.00'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
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
    object Query1MeMo: TStringField
      FieldName = 'MeMo'
      FixedChar = True
      Size = 250
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
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
    PageHeader.CenterText.Strings = (
      #21508#24037#24288#21508#38917#36027#29992#26126#32048
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -32
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 264
    Top = 160
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B44446174655D20200D0A5C706172207D0D0A
      00}
  end
end
