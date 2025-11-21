object FeeMaterialOrd: TFeeMaterialOrd
  Left = 321
  Top = 210
  Width = 870
  Height = 500
  Caption = 'FeeMaterialOrd'
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
    Width = 862
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label4: TLabel
      Left = 144
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 336
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 48
      Top = 15
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 3
      ParentFont = False
      TabOrder = 1
      Text = '2009'
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
    object CBX2: TComboBox
      Left = 184
      Top = 15
      Width = 65
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 862
    Height = 417
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
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
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
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #35330#21934#24288#21029'|GSBH'
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <
          item
            FieldName = 'pairs'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|pairs'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #30070#26376#21295#29575'|CWHL'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <>
        Title.Caption = #35330#21934#21934#20729'|IPrice'
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'VNIPrice'
        Footers = <>
        Title.Caption = #35330#21934#21934#20729'|VNIPrice'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'OrdACC'
        Footers = <
          item
            FieldName = 'OrdACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#32317#37329#38989'|OrdACC'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'VNOrdACC'
        Footers = <
          item
            FieldName = 'VNOrdACC'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#32317#37329#38989'|VNOrdACC'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#20837#24235'|okQty'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <
          item
            FieldName = 'InQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#26376#20837#24235'|InQty'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'LLGSBH'
        Footers = <>
        Title.Caption = #38936#26009#24288#21029'|LLGSBH'
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'LLACC'
        Footers = <
          item
            FieldName = 'LLACC'
            ValueType = fvtSum
          end>
        Title.Caption = #38936#26009#37329#38989'|LLACC'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'PerInACC'
        Footers = <>
        Title.Caption = #36027#29992#22343#25892'|PerInACC'
      end
      item
        EditButtons = <>
        FieldName = 'doneQty'
        Footers = <
          item
            FieldName = 'doneQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#24050#20998#25892#25976#37327#21450#37329#38989'|doneQty'
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'doneUsACC'
        Footers = <
          item
            FieldName = 'doneUsACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#24050#20998#25892#25976#37327#21450#37329#38989'|doneUsACC'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'doneVnACC'
        Footers = <
          item
            FieldName = 'doneVnACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#24050#20998#25892#25976#37327#21450#37329#38989'|doneVnACC'
        Title.TitleButton = True
        Width = 77
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'declare @CWHL bigint '
      'set @CWHL=(select CWHL from CWHL '
      '           where HLYEAR='#39'2009'#39
      '                 and HLMONTH='#39'05'#39')'
      
        'select KCLLS.DDBH,DDZL.GSBH,XXZl.Article,XXZL.XieMing,KFZL.KFJC,' +
        'DDZL.pairs,YWDDS.IPrice,YWDDS.OrdACC,@CWHL as CWHL'
      
        '       ,YWDDS.VNIPrice,YWDDS.VNOrdACC,KCLLS.LLGSBH,KCLLS.LLACC,Y' +
        'WCPin.inQty,YWCPok.okQty'
      '       ,doneCW.doneQty,doneCW.doneUsACC,doneCW.doneVnACC'
      
        'from (select KCLLS.SCBH as DDBH,KCLL.GSBH,sum(KCLLS.VNACC) as LL' +
        'ACC'
      
        '             ,substring(BDepartment.DepName,1,case when charinde' +
        'x('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartm' +
        'ent.DepName)-1 end ) as LLGSBH'
      '      from KCLLS '
      '      left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '      left join BDepartment on BDepartment.ID=KCLL.DepID'
      '      left join DDZL on DDZl.ZLBH=KCLLS.SCBH '
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between '
      '              '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '            and KCLLS.Qty<>0 '
      '            and DDZL.XieXing is not null '
      '            and KCLL.CFMID<>'#39'NO'#39
      
        '      group by substring(BDepartment.DepName,1,case when charind' +
        'ex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepart' +
        'ment.DepName)-1 end )'
      '               ,KCLL.GSBH,KCLLS.SCBH) KCLLS'
      
        'left join (select YWDD.YSBH as DDBH,sum(YWDDS.Qty*YWDDS.IPrice)/' +
        'sum(YWDDS.Qty) as IPrice,sum(YWDDS.Qty*YWDDS.IPrice) as OrdACC'
      
        '           ,sum(YWDDS.Qty*YWDDS.IPrice)/sum(YWDDS.Qty)*@CWHL as ' +
        'VNIPrice,sum(YWDDS.Qty*YWDDS.IPrice)*@CWHL as VNOrdACC'
      '           from YWDDS '
      '           left join YWDD on YWDD.DDBH=YWDDS.DDBH '
      '           group by YWDD.YSBH )YWDDS on KCLLS.DDBH=YWDDS.DDBH'
      'left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as inQty'
      '           from YWCP '
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) between '
      '                  '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '           group by YWDD.YSBH) YWCPin on KCLLS.DDBH=YWCPin.DDBH '
      'left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as okQty'
      '           from YWCP    '
      '           left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '           where InDate is not null '
      '           group by YWDD.YSBH) YWCPok on KCLLS.DDBH=YWCPok.DDBH '
      
        'left join (select DDBH,Sum(Qty) as doneQty,sum(UsACC) as doneUsA' +
        'CC,sum(VNACC) as doneVNACC '
      '           from CWDD '
      '           group by DDBH ) doneCW on doneCW.DDBH=KCLLS.DDBH '
      'left join DDZL on DDZL.DDBH=KCLLS.DDBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'order by DDZL.GSBH,KCLLS.LLGSBH,KCLLS.DDBH ')
    Left = 192
    Top = 144
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
      DisplayFormat = '##,#0'
    end
    object Query1CWHL: TFloatField
      FieldName = 'CWHL'
    end
    object Query1IPrice: TCurrencyField
      FieldName = 'IPrice'
      DisplayFormat = '##,#0.000'
    end
    object Query1VNIPrice: TCurrencyField
      FieldName = 'VNIPrice'
      DisplayFormat = '##,#0'
    end
    object Query1OrdACC: TFloatField
      FieldName = 'OrdACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNOrdACC: TCurrencyField
      FieldName = 'VNOrdACC'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TIntegerField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1LLGSBH: TStringField
      FieldName = 'LLGSBH'
      FixedChar = True
      Size = 4
    end
    object Query1LLACC: TFloatField
      FieldName = 'LLACC'
      DisplayFormat = '##,#0'
    end
    object Query1PerInACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PerInACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1doneQty: TCurrencyField
      FieldName = 'doneQty'
      DisplayFormat = '##,#0'
    end
    object Query1doneUsACC: TCurrencyField
      FieldName = 'doneUsACC'
      DisplayFormat = '##,#0.000'
    end
    object Query1doneVnACC: TFloatField
      FieldName = 'doneVnACC'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 144
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 136
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
    PageHeader.CenterText.Strings = (
      'Order Material List')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -27
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 160
    Top = 144
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 224
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
