object MaterialCostRea: TMaterialCostRea
  Left = 318
  Top = 196
  Width = 870
  Height = 500
  Caption = 'MaterialCostRea'
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
    Width = 854
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 12
      Top = 20
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label1: TLabel
      Left = 140
      Top = 20
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 268
      Top = 20
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label12: TLabel
      Left = 417
      Top = 21
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Button1: TButton
      Left = 560
      Top = 11
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 640
      Top = 11
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 16
      Width = 89
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 16
      Width = 89
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 336
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 481
      Top = 16
      Width = 57
      Height = 24
      ItemHeight = 16
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 854
    Height = 404
    Align = alClient
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FYLB'
        Footers = <
          item
            FieldName = 'FYLB'
            ValueType = fvtCount
          end>
        Title.Caption = #36027#29992#39006#21029#21517#31281'|FYLB'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.Caption = #36027#29992#39006#21029#21517#31281'|MEMO'
        Width = 169
      end
      item
        EditButtons = <>
        FieldName = 'CMEMO'
        Footers = <>
        Title.Caption = #36027#29992#39006#21029#21517#31281'|CMEMO'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #38283#21934#21407#22240'|YYBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #38283#21934#21407#22240'|YWSM'
        Width = 178
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #38283#21934#21407#22240'|ZWSM'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footers = <
          item
            FieldName = 'ACCUS'
            ValueType = fvtSum
          end>
        Title.Caption = #38936#26009#37329#38989'|ACCUS'
        Title.TitleButton = True
        Width = 97
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CUSPrice'#39') is not null  '
      'begin   drop table #CUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice'
      'into #CUSPrice from (select CLZL.CLDH,'
      '                      (select top 1 USPrice from KCRKS'
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))  '
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))'
      '                         order by USERDATE  desc)  as USPrice,'
      '                      (select top 1 VNPrice from KCRKS  '
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))'
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))    '
      '                         order by USERDATE  desc)  as VNPrice'
      'from CLZL ) CLZL  '
      'where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '
      ' order by CLZL.CLDH  '
      ''
      ''
      
        'select FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS,CLLBFY.MEMO,CLLBFY.C' +
        'MEMO,SCBLYY.YWSM,SCBLYY.ZWSM,FYACC.YYBH  '
      
        'from (select LL.CLBH,LL.FYLB,sum(LL.Qty*LL.SYL*#CUSPrice.USPrice' +
        ') as ACCUS,LL.YYBH'
      
        '      from (select KCLLS.YYBH,KCLL.DepID,BDepartment.DepName,KCL' +
        'LS.Qty,isnull(CLZHZL.SYL,1) as SYL,KCZLS.FYLB,'
      
        '                   case when CLZHZL.CLDH1 is null then KCLLS.CLB' +
        'H else CLZHZL.CLDH1 end as CLBH'
      '            from KCLLS'
      '            left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '            left join BDepartment on BDepartment.ID=KCLL.DepID'
      '            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '            left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCLL.CK' +
        'BH=KCZLS.CKBH'
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'Date,111)) between'
      '                  '#39'2009/04/09'#39' and '#39'2009/04/16'#39
      '                  and KCLL.CFMID<>'#39'NO'#39
      '                  and BDepartment.DepName like '#39'%%'#39
      '                  and KCLLS.Qty<>0'
      '                  and BDepartment.GSBH='#39'VA12'#39
      '            ) LL  '
      '      left join #CUSPrice on #CUSPrice.CLBH=LL.CLBH '
      '      group by LL.CLBH,LL.FYLB,#CUSPrice.USPrice,LL.YYBH) FYACC'
      'left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH='#39'01'#39
      'left join SCBLYY on SCBLYY.YYBH=FYACC.YYBH '
      
        'group by FYACC.FYLB,CLLBFY.MEMO,CLLBFY.CMEMO,SCBLYY.YWSM,SCBLYY.' +
        'ZWSM,FYACC.YYBH'
      'order by FYACC.FYLB,FYACC.YYBH')
    Left = 296
    Top = 160
    object Query1FYLB: TStringField
      FieldName = 'FYLB'
      FixedChar = True
      Size = 4
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
    object Query1CMEMO: TStringField
      FieldName = 'CMEMO'
      FixedChar = True
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 232
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 424
    Top = 160
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #20998#21407#22240#21508#38917#36027#29992#32317#35336#34920
      'Reason Fee Total report')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #27161#26999#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 296
    Top = 192
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
end
