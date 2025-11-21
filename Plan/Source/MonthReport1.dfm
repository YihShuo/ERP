object MonthReport: TMonthReport
  Left = 378
  Top = 216
  Width = 837
  Height = 500
  Caption = 'Month production Report'
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
  object StringGrid1: TStringGrid
    Left = 472
    Top = 121
    Width = 345
    Height = 232
    ColCount = 20
    DefaultColWidth = 35
    RowCount = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnDrawCell = StringGrid1DrawCell
  end
  object DBGrid1: TDBGridEh
    Left = 24
    Top = 112
    Width = 457
    Height = 218
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
    FrozenCols = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Title.Caption = #26085#26399'|SCDate'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272#21517#31281'|DepName'
        Width = 68
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #29983#29986#25976#37327'|Qty'
        Width = 61
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'bzQty'
        Footers = <>
        Title.Caption = #35373#23450#29986#37327'|bzQty'
        Width = 60
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'Lack_Qty'
        Footers = <>
        Title.Caption = #35336#21123#27424#25976'|Lack_Qty'
        Width = 65
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Title.Caption = #36948#25104#29575'|Person'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'SCGS'
        Footers = <>
        Title.Caption = #35336#21123#26178#25976'|SCGS'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'SDGS'
        Footers = <>
        Title.Caption = #19978#29677#23526#25976'|SDGS'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Worker_Qty'
        Footers = <>
        Title.Caption = #27161#20934#20154#25976'|Workers'
        Width = 59
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'CQQty'
        Footers = <>
        Title.Caption = #20986#21220#20154#25976'|CQQty'
        Width = 58
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'QJQty'
        Footers = <>
        Title.Caption = #32570#21220#20154#25976'|QJQty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Act_Hours'
        Footers = <>
        Title.Caption = #26377#25928#26178#25976'|Act_Hours'
        Width = 57
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'BZGS'
        Footers = <>
        Title.Caption = #27161#20934#24037#26178'|BZGS'
        Width = 60
      end
      item
        Color = 16770790
        EditButtons = <>
        FieldName = 'BZRate'
        Footers = <>
        Title.Caption = #27161#20934#36948#25104#29575'|BZRate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'SJGS'
        Footers = <>
        Title.Caption = #23526#38555#24037#26178'|SJGS'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'SJRate'
        Footers = <>
        Title.Caption = #23526#38555#36948#25104#29575'|SJRATE'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'PRS/H'
        Footers = <>
        Title.Caption = #20154#22343#26178#29986#20986'|PRS/H'
        Width = 69
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 829
    Height = 97
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 256
      Top = 24
      Width = 36
      Height = 18
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 392
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 68
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 184
      Top = 68
      Width = 49
      Height = 18
      Caption = 'GSBH:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 217
      Height = 25
      AutoSize = False
      Caption = #26376#29983#29986#32113#35336#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 52
      Width = 73
      Height = 18
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 184
      Top = 52
      Width = 49
      Height = 18
      AutoSize = False
      Caption = #24288#21312':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 696
      Top = 48
      Width = 57
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 768
      Top = 48
      Width = 57
      Height = 33
      Caption = 'Switch'
      Enabled = False
      TabOrder = 1
      Visible = False
      OnClick = Button3Click
    end
    object CBX1: TComboBox
      Left = 304
      Top = 16
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = '2007'
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
      Left = 440
      Top = 16
      Width = 57
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
      TabOrder = 3
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
    object Edit1: TEdit
      Left = 96
      Top = 57
      Width = 81
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CB1: TComboBox
      Left = 240
      Top = 55
      Width = 73
      Height = 26
      CharCase = ecUpperCase
      ItemHeight = 18
      TabOrder = 5
      Text = 'VTX'
    end
    object Edit2: TEdit
      Left = 688
      Top = 8
      Width = 41
      Height = 26
      TabOrder = 6
      Text = '1'
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 336
      Top = 64
      Width = 185
      Height = 17
      Caption = 'produced('#21482#35336#29983#29986#26085')'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object RadioGroup1: TRadioGroup
      Left = 512
      Top = 0
      Width = 169
      Height = 89
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Daily Detail('#27599#26085#26126#32048')'
        'Monthly Total('#26376#32317#34920')'
        'Different Rep('#26376#20221#24046#30064#34920')')
      ParentFont = False
      TabOrder = 8
      OnClick = RadioGroup1Click
    end
    object Button4: TButton
      Left = 696
      Top = 8
      Width = 57
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 9
      OnClick = Button4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 136
    Top = 264
    Width = 497
    Height = 257
    DataSource = DS2
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
    FrozenCols = 3
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) a' +
        's SCDate ,SCBB.DepNo,BDepartment.DepName,BDepartment.DepName as ' +
        'DepName2,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,'
      
        '        sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepar' +
        'tment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join SCBZCL on convert(varchar,SCBZCL.BZDate,111)=convert(v' +
        'archar,SCBB.SCDate,111) and SCBZCL.DepNo=SCBB.DepNo'
      
        'left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCY' +
        'EAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay))'
      '                         =convert(varchar,SCBB.SCDate)  '
      '                  and SCRL.DepNO=SCBB.DepNO '
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by convert(smalldatetime,convert(varchar,SCBB.SCDate,111))' +
        ',SCBB.DepNo,BDepartment.DepName ,'
      
        '         RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ,SCBZCL.Qty,S' +
        'CRL.SCGS,BDepartment.Worker_Qty  '
      'union  '
      
        'select '#39'2008/12/31'#39' as SCDate ,SCBB.DepNo,'#39'Total'#39' as DepName,BDe' +
        'partment.DepName as DepName2,'
      
        '        isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as' +
        ' bzQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,'
      
        '        RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS)' +
        ' as Act_Hours,BDepartment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '              and  exists(select convert(varchar,SCBB.SCDate,111' +
        ') as NowDay from  SCBB '
      
        '                          left join BDepartment on BDepartment.I' +
        'D=SCBB.DepNO '
      
        '                          where convert(smalldatetime,convert(va' +
        'rchar,SCBB.SCDate,111)) between '
      '                                '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '                                and BDepartment.DepName like '#39'%%' +
        #39
      '                                and SCBB.GSBH like'#39'VA3%'#39
      
        '                                and convert(varchar,SCBB.SCDate,' +
        '111)=convert(varchar,SCBZCL.BZDate,111) )'
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      'left join (select DepNo,sum(SCGS) as SCGS from SCRL '
      
        '           where convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMO' +
        'NTH+'#39'/'#39'+SCRL.SCDay) between '
      '           '#39'2008/12/01'#39' and '#39'2008/12/31'#39
      '           group by DepNo ) SCRL on SCRL.DepNo=SCBB.DepNO '
      
        'left join (select RSCQ.DepNo,sum(RSCQ.CQQty) as CQQty,sum(RSCQ.Q' +
        'JQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS '
      
        '           from RSCQ where convert(smalldatetime,convert(varchar' +
        ',RSDate,111)) between '
      '                 '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO   ' +
        ' '
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/01'#39' and '#39'2008/12/31'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty,SCRL.SCGS,R' +
        'SCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,BDepartment.Worker_Qty ' +
        ' '
      'Order by  SCBB.DepNo,BDepartment.DepName,SCDate,SCBZCLA.Qty ')
    Left = 448
    Top = 200
    object Query1SCDate: TDateTimeField
      FieldName = 'SCDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      FixedChar = True
      Size = 15
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepName2: TStringField
      FieldName = 'DepName2'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1bzQty: TIntegerField
      FieldName = 'bzQty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_Qty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lack_Qty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1Person: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0%'
      Calculated = True
    end
    object Query1SCGS: TFloatField
      FieldName = 'SCGS'
      DisplayFormat = '##,#0.0'
    end
    object Query1SDGS: TCurrencyField
      FieldName = 'SDGS'
      DisplayFormat = '##,#0.0'
    end
    object Query1Worker_Qty: TIntegerField
      FieldName = 'Worker_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1CQQty: TIntegerField
      FieldName = 'CQQty'
      DisplayFormat = '##,#0'
    end
    object Query1QJQty: TIntegerField
      FieldName = 'QJQty'
      DisplayFormat = '##,#0'
    end
    object Query1Act_Hours: TFloatField
      FieldName = 'Act_Hours'
      DisplayFormat = '##,#0.0'
    end
    object Query1BZGS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BZGS'
      DisplayFormat = '##,#0.0'
      Calculated = True
    end
    object Query1BZRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BZRate'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
    object Query1SJGS: TFloatField
      FieldName = 'SJGS'
      DisplayFormat = '##,#0.0'
    end
    object Query1SJRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SJRate'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
    object Query1PRSH: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRS/H'
      DisplayFormat = '##,#0.0000'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    Left = 656
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    Left = 528
    Top = 104
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 312
    Top = 136
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    Left = 616
    Top = 208
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 656
    Top = 208
  end
  object PopupMenu2: TPopupMenu
    Left = 232
    Top = 248
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghFitGridToPageWidth, pghFitingByColWidths]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #26376#20221#29983#29986#29376#27841#34920
      'Monthly production report')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 296
    Top = 232
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B4E446174655D202020202020202020202020
      20202020202020255B466163746F72795D202020202020202020202020202020
      202020202020202020255B4465706172746D656E745D0D0A5C706172207D0D0A
      00}
  end
end
