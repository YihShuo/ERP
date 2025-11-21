object DailyActionStardard: TDailyActionStardard
  Left = 322
  Top = 218
  Width = 870
  Height = 500
  Caption = 'DailyActionStardard'
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
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 176
      Top = 40
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 312
      Top = 38
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
      Left = 472
      Top = 38
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 185
      Height = 20
      AutoSize = False
      Caption = #27599#26085#29983#29986#29376#27841#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 472
      Top = 24
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 312
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 608
      Top = 40
      Width = 58
      Height = 16
      Caption = 'Just Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 608
      Top = 24
      Width = 65
      Height = 16
      AutoSize = False
      Caption = #21482#35336#21152#32317
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Check: TCheckBox
      Left = 584
      Top = 40
      Width = 25
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 680
      Top = 24
      Width = 81
      Height = 41
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 32
      Width = 97
      Height = 24
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 32
      Width = 97
      Height = 24
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 392
      Top = 32
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CB1: TComboBox
      Left = 512
      Top = 32
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 4
      Text = 'VTX'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 854
    Height = 389
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 549
      Top = 1
      Width = 304
      Height = 387
      Align = alRight
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 302
        Height = 200
        Align = alTop
        TabOrder = 0
        object DBGrid2: TDBGridEh
          Left = 0
          Top = 1
          Width = 301
          Height = 198
          Align = alRight
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = 15000804
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
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
              FieldName = 'Time'
              Footers = <>
              Title.Caption = #26178#27573'|Time'
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <
                item
                  FieldName = 'SCBH'
                  ValueType = fvtCount
                end>
              Title.Caption = #35330#21934#32232#34399'|SCBH'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'ProQty'
              Footers = <
                item
                  FieldName = 'ProQty'
                  ValueType = fvtSum
                end>
              Title.Caption = #29983#29986#25976#37327'|ProQty'
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Caption = #24037#27573'|GXLB'
              Width = 34
            end>
        end
      end
      object DBGrid3: TDBGridEh
        Left = 80
        Top = 201
        Width = 223
        Height = 185
        Align = alRight
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 15198183
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = #26032#32048#26126#39636
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XXCC'
            Footers = <
              item
                FieldName = 'XXCC'
                ValueType = fvtCount
              end>
            Title.Caption = #38795#22411#34399#30908'|XXCC'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #23436#25104#25976#37327'|Qty'
            Width = 77
          end>
      end
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 548
      Height = 387
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 2
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
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
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'SCDate'
          Footers = <>
          Title.Caption = #29983#29986#26085'|SCDate'
          Width = 106
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Title.Caption = #37096#38272#21517#31281'|DepName'
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #23526#38555#29986#37327'|Qty'
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'Act_Hours'
          Footers = <>
          Title.Caption = #29986#37327#25240#21512#24037#26178'|Act_Hours'
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'Worker_Qty'
          Footers = <>
          Title.Caption = #27161#20934#32218#20154#25976'|Workers'
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'SDGS'
          Footers = <>
          Title.Caption = #37096#38272#19978#29677#26178#25976'|SDGS'
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'BZGS'
          Footers = <>
          Title.Caption = #19978#29677#20154#24037#26178#25976'|BZGS'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'BZRate'
          Footers = <>
          Title.Caption = #27161#20934#32218#36948#25104#29575'|BZRate'
          Width = 84
        end>
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
    object NN3: TMenuItem
      Caption = 'Print'
      OnClick = NN3Click
    end
  end
  object scbbs: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select convert(varchar,SCBB.SCDate,111) as SCDate,SCBB.ProNo,'
      
        '         (SCSJ.FTime+'#39'-'#39'+SCSJ.TTime) as Time,SCBBS.SCBH,SCBBS.GX' +
        'LB,'
      '         isnull(SCBBS.Qty,0) as ProQty'
      'from SCBB'
      'left join SCBBS on SCBBS.ProNO=SCBB.ProNO'
      'left join SCSJ on SCSJ.XH=SCBB.SJXH'
      'where convert(varchar,SCBB.SCDate,111)=:SCdate'
      '         and SCBB.DepNo=:DepNo'
      '')
    Left = 665
    Top = 138
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCDate'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'DepNo'
        ParamType = ptUnknown
        Size = 16
      end>
    object scbbsSCDate: TStringField
      FieldName = 'SCDate'
      FixedChar = True
      Size = 30
    end
    object scbbsProNo: TStringField
      FieldName = 'ProNo'
      FixedChar = True
      Size = 10
    end
    object scbbsTime: TStringField
      FieldName = 'Time'
      FixedChar = True
      Size = 11
    end
    object scbbsSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object scbbsGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object scbbsProQty: TFloatField
      FieldName = 'ProQty'
    end
  end
  object DS2: TDataSource
    DataSet = scbbs
    Left = 697
    Top = 138
  end
  object SCBBSS: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select XXCC,Qty'
      'from SCBBSS'
      'where SCBH=:SCBH'
      'and ProNo=:ProNo'
      'and GXLB=:GXLB')
    Left = 704
    Top = 369
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ProNo'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftUnknown
        Name = 'GXLB'
        ParamType = ptUnknown
      end>
    object SCBBSSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCBBSS.XXCC'
      FixedChar = True
      Size = 5
    end
    object SCBBSSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCBBSS.Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS3: TDataSource
    DataSet = SCBBSS
    Left = 744
    Top = 369
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BD' +
        'epartment.DepName,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartmen' +
        't.DepName ,SCBZCL.Qty'
      'union all '
      
        'select '#39'2008/11/13'#39' as SCDate ,SCBB.DepNo,'#39'Total'#39' as DepName, is' +
        'null(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as bzQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39' and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      'Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty'
      
        'Order by  SCBB.DepNo,convert(varchar,SCBB.SCDate,111),BDepartmen' +
        't.DepName,SCBZCLA.Qty ')
    Left = 232
    Top = 280
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = [pghColored, pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  /    &[Pages]')
    PageHeader.CenterText.Strings = (
      #26085#37096#38272#35373#20633#29986#33021#36948#25104#29376#27841#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 136
    Top = 224
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B646174655D2020202020200D0A5C70617220
      7D0D0A00}
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'update SCBBS '
      'set BZLB=(select  SCXXCL.BZLB '
      
        '          from (select max(SCXXCL.BZLB) as BZLB,ZLZL.ZLBH,SCXXCL' +
        '.GXLB '
      '                from  ZLZL  '
      '                left join DDZL on DDZL.ZLBH=ZLZL.ZLBH '
      
        '                left join SCXXCL on SCXXCL.XieXing=DDZL.XieXIng ' +
        ' '
      
        '                group by ZLZL.ZLBH ,SCXXCL.GXLB) SCXXCL where SC' +
        'XXCL.ZLBH=SCBBS.SCBH and SCXXCL.GXLB=SCBBS.GXLB )'
      ' where BZLB is null'
      
        '       and exists(select SCBB.ProNo from SCBB where SCBB.ProNo=S' +
        'CBBS.ProNo'
      '        and convert(varchar,SCBB.SCDate,111) between '
      '        '#39'2008/12/04'#39'and '#39'2008/12/11'#39')'
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BD' +
        'epartment.DepName,BDepartment.DepName as DepName2,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty,SCRL.SCGS,'
      
        '       RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCBB' +
        'S.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCY' +
        'EAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay))'
      '                         =convert(varchar,SCBB.SCDate)  '
      '                  and SCRL.DepNO=SCBB.DepNO '
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/04'#39'and '#39'2008/12/11'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartmen' +
        't.DepName ,SCBZCL.Qty,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ' +
        ',SCRL.SCGS,BDepartment.Worker_Qty'
      'union all '
      
        'select '#39'2008/12/11'#39' as SCDate ,SCBB.DepNO,'#39'Total'#39' as DepName,BDe' +
        'partment.DepName as DepName2,'
      
        '        isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as' +
        ' bzQty,SCRL.SCGS,'
      
        '        RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCB' +
        'BS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/12/04'#39'and '#39'2008/12/11'#39
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      'left join (select DepNo,sum(SCGS) as SCGS from SCRL '
      
        '           where convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMO' +
        'NTH+'#39'/'#39'+SCRL.SCDay) between '
      '           '#39'2008/12/04'#39' and '#39'2008/12/11'#39
      '           group by DepNo ) SCRL on SCRL.DepNo=SCBB.DepNO '
      
        'left join (select RSCQ.DepNo,sum(RSCQ.CQQty) as CQQty,sum(RSCQ.Q' +
        'JQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS '
      
        '           from RSCQ where convert(smalldatetime,convert(varchar' +
        ',RSDate,111)) between '
      '                 '#39'2008/12/04'#39'and '#39'2008/12/11'#39
      
        '           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO   ' +
        ' '
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/04'#39' and '#39'2008/12/11'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by SCBB.DepNo,BDepartment.DepName,SCBZCLA.Qty,SCRL.SCGS,RS' +
        'CQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,BDepartment.Worker_Qty'
      'Order by  SCBB.DepNo,BDepartment.DepName,SCDate,SCBZCLA.Qty ')
    Left = 448
    Top = 200
    object Query1SCDate: TStringField
      FieldName = 'SCDate'
      FixedChar = True
      Size = 30
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
    object Query1SDGS: TCurrencyField
      FieldName = 'SDGS'
      DisplayFormat = '##,#0.0'
    end
    object Query1Worker_Qty: TIntegerField
      FieldName = 'Worker_Qty'
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
  end
end
