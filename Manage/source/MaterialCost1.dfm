object MaterialCost: TMaterialCost
  Left = 440
  Top = 418
  Width = 989
  Height = 500
  Caption = 'MaterialCost'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
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
      Top = 19
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label1: TLabel
      Left = 163
      Top = 20
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 332
      Top = 20
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Button1: TButton
      Left = 517
      Top = 11
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 16
      Width = 105
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 188
      Top = 16
      Width = 105
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 400
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 973
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
    RowHeight = 30
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrid1EditButtonClick
    Columns = <
      item
        Alignment = taCenter
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <
          item
            FieldName = 'GSBH'
            ValueType = fvtCount
          end>
        Title.Caption = #24288#21029'|GSBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'In'
        Footers = <
          item
            FieldName = 'In'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#37329#38989'|In'
        Width = 83
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'A'
        Footers = <
          item
            FieldName = 'A'
            ValueType = fvtSum
          end>
        Title.Caption = #21407#26448#26009'|A'
        Title.TitleButton = True
        Width = 92
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'B'
        Footers = <
          item
            FieldName = 'B'
            ValueType = fvtSum
          end>
        Title.Caption = #31896#21137'|B'
        Title.TitleButton = True
        Width = 80
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'C'
        Footers = <
          item
            FieldName = 'C'
            ValueType = fvtSum
          end>
        Title.Caption = #32218#39006'|C'
        Title.TitleButton = True
        Width = 80
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'D'
        Footers = <
          item
            FieldName = 'D'
            ValueType = fvtSum
          end>
        Title.Caption = #27169#21046#20855#39006'|D'
        Title.TitleButton = True
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'E'
        Footers = <
          item
            FieldName = 'E'
            ValueType = fvtSum
          end>
        Title.Caption = #25991#20855#39006'|E'
        Title.TitleButton = True
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'F'
        Footers = <
          item
            FieldName = 'F'
            ValueType = fvtSum
          end>
        Title.Caption = #26085#38620#39006'|F'
        Title.TitleButton = True
        Width = 73
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'G'
        Footers = <
          item
            FieldName = 'G'
            ValueType = fvtSum
          end>
        Title.Caption = #38646#20214#20116#37329'|G'
        Title.TitleButton = True
        Width = 73
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'H'
        Footers = <
          item
            FieldName = 'H'
            ValueType = fvtSum
          end>
        Title.Caption = #24314#26448#39006'|H'
        Title.TitleButton = True
        Width = 68
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'I'
        Footers = <
          item
            FieldName = 'I'
            ValueType = fvtSum
          end>
        Title.Caption = #20998#25892#39006'|I'
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'TotACC'
        Footers = <
          item
            FieldName = 'TotACC'
            ValueType = fvtSum
          end>
        Title.Caption = #36027#29992#21512#35336'|TotACC'
        Width = 91
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FYACC.GSBH '
      ',sum(case  when FYACC.FYLB='#39'In'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'In'#39
      ',sum(case  when FYACC.FYLB='#39'A'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A'#39
      ',sum(case  when FYACC.FYLB='#39'B'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'B'#39
      ',sum(case  when FYACC.FYLB='#39'C'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'C'#39
      ',sum(case  when FYACC.FYLB='#39'D'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'D'#39
      ',sum(case  when FYACC.FYLB='#39'E'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'E'#39
      ',sum(case  when FYACC.FYLB='#39'F'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'F'#39
      ',sum(case  when FYACC.FYLB='#39'G'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'G'#39
      ',sum(case  when FYACC.FYLB='#39'H'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'H'#39
      ',sum(case  when FYACC.FYLB='#39'I'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'I'#39
      'from ('
      'select FYACC.GSBH,FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS   '
      
        'from (select LL.GSBH,LL.CLBH,substring(LL.FYLB,1,1) as FYLB,sum(' +
        'LL.Qty*LL.SYL*CWDJ.USPrice) as ACCUS'
      
        '      from (select substring(BDepartment.DepName,1,case when cha' +
        'rindex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDe' +
        'partment.DepName)-1 end ) as GSBH'
      
        '            ,KCLL.DepID,KCLLS.Qty,isnull(CLZHZL.SYL,1) as SYL,CL' +
        'LBFYS.FYLB,'
      
        '                   case when CLZHZL.CLDH1 is null then KCLLS.CLB' +
        'H else CLZHZL.CLDH1 end as CLBH'
      '            from KCLLS'
      '            left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '            left join BDepartment on BDepartment.ID=KCLL.DepID'
      
        '            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH and CLZHZ' +
        'L.YN<>'#39'3'#39
      
        '            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCL' +
        'L.GSBH=CLLBFYS.GSBH'
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'Date,111)) between'
      '                  '#39'2009/05/31'#39' and '#39'2009/06/06'#39
      '                  and KCLL.CFMID<>'#39'NO'#39
      '                  and BDepartment.DepName like '#39'%%'#39
      '                  and KCLLS.Qty<>0'
      '            ) LL  '
      
        '           left join (select CWDJ.CLBH,avg(CWDJ.USPrice) as USPr' +
        'ice from CWDJ '
      '                      group by CLBH ) CWDJ on CWDJ.CLBH=LL.CLBH '
      '      group by LL.GSBH,LL.CLBH,LL.FYLB,CWDJ.USPrice) FYACC'
      'left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH='#39'01'#39
      'group by FYACC.GSBH,FYACC.FYLB'
      ' union all '
      
        'select YWCPin.GSBH,'#39'In'#39' as FYLB,sum(YWCPin.Qty*YWDDS.IPrice) as ' +
        'ACCUS'
      
        'from (select substring(BDepartment.DepName,1,case when charindex' +
        '('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartme' +
        'nt.DepName)-1 end ) as GSBH '
      '             ,YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  '
      '      from YWCP '
      '      left join BDepartment on BDepartment.ID=YWCP.DepNO '
      
        '      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH' +
        '=YWCP.XH '
      '      where BDepartment.DepName like '#39'%%'#39
      
        '            and convert(smalldatetime,convert(varchar,YWCP.InDat' +
        'e,111)) between '
      '                '#39'2009/05/31'#39' and '#39'2009/06/06'#39
      
        '      group by  substring(BDepartment.DepName,1,case when charin' +
        'dex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepar' +
        'tment.DepName)-1 end ) '
      '             ,YWCP.DDBH,YWBZPOS.DDCC) YWCPin '
      
        'left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.' +
        'DDCC '
      'left join YWDD on YWDD.DDBH=YWCPin.DDBH '
      'group by YWCPin.GSBH'
      ') FYACC '
      'group by FYACC.GSBH '
      'order by FYACC.GSBH')
    Left = 296
    Top = 160
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1TotACC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotACC'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1In: TFloatField
      FieldName = 'In'
      DisplayFormat = '##,#0.00'
    end
    object Query1A: TFloatField
      FieldName = 'A'
      DisplayFormat = '##,#0.00'
    end
    object Query1B: TFloatField
      FieldName = 'B'
      DisplayFormat = '##,#0.00'
    end
    object Query1C: TFloatField
      FieldName = 'C'
      DisplayFormat = '##,#0.00'
    end
    object Query1D: TFloatField
      FieldName = 'D'
      DisplayFormat = '##,#0.00'
    end
    object Query1E: TFloatField
      FieldName = 'E'
      DisplayFormat = '##,#0.00'
    end
    object Query1F: TFloatField
      FieldName = 'F'
      DisplayFormat = '##,#0.00'
    end
    object Query1G: TFloatField
      FieldName = 'G'
      DisplayFormat = '##,#0.00'
    end
    object Query1H: TFloatField
      FieldName = 'H'
      DisplayFormat = '##,#0.00'
    end
    object Query1I: TFloatField
      FieldName = 'I'
      DisplayFormat = '##,#0.00'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 160
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 424
    Top = 160
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
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
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #21508#24037#24288#21508#38917#36027#29992#32317#35336#34920
      'Department Fee Total report')
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
