object DailyRep: TDailyRep
  Left = 308
  Top = 203
  Width = 800
  Height = 500
  Caption = 'Daily production report'
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
    Width = 792
    Height = 113
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
    object Label3: TLabel
      Left = 0
      Top = 78
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label4: TLabel
      Left = 176
      Top = 40
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 144
      Top = 78
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
      Left = 304
      Top = 78
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
      Left = 304
      Top = 64
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
      Left = 144
      Top = 64
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
    object Label11: TLabel
      Left = 8
      Top = 64
      Width = 49
      Height = 16
      AutoSize = False
      Caption = #35330#21934#34399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 360
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
      Left = 360
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
      Left = 336
      Top = 32
      Width = 25
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 56
      Top = 64
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 624
      Top = 56
      Width = 73
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 624
      Top = 16
      Width = 73
      Height = 33
      Hint = #36681'EXCEL'
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
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
      Left = 224
      Top = 64
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CB1: TComboBox
      Left = 352
      Top = 64
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 6
      Text = 'VTX'
    end
    object RadioGroup1: TRadioGroup
      Left = 440
      Top = 0
      Width = 161
      Height = 113
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Plan('#35336#21123#36948#25104')'
        'Stardard('#27161#20934#29986#33021')'
        'Efficiency('#29983#29986#25928#29575')'
        'All   ('#20840#37096')'
        'Report('#37096#38272#36948#25104#29575')')
      ParentFont = False
      TabOrder = 8
      OnClick = RadioGroup1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 792
    Height = 353
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 487
      Top = 1
      Width = 304
      Height = 351
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
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
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
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'GXLB'
              Footers = <>
              Title.Caption = #24037#27573'|GXLB'
              Width = 40
            end>
        end
      end
      object DBGrid3: TDBGridEh
        Left = 80
        Top = 201
        Width = 223
        Height = 149
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
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
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
      Width = 486
      Height = 351
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
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
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
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Title.Caption = #37096#38272#21517#31281'|DepName'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #29983#29986#29986#37327'|Qty'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'bzQty'
          Footers = <>
          Title.Caption = #35336#21123#29986#37327'|bzQty'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 53
        end
        item
          EditButtons = <>
          FieldName = 'Lack_Qty'
          Footers = <>
          Title.Caption = #35336#21123#27424#25976'|Lack_Qty'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'Person'
          Footers = <>
          Title.Caption = #36948#25104#29575'|Person'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'SCGS'
          Footers = <>
          Title.Caption = #35336#21123#26178#25976'|SCGS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'SDGS'
          Footers = <>
          Title.Caption = #19978#29677#23526#25976'|SDGS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'Worker_Qty'
          Footers = <>
          Title.Caption = #27161#20934#20154#25976'|Workers'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'CQQty'
          Footers = <>
          Title.Caption = #20986#21220#20154#25976'|CQQty'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'QJQty'
          Footers = <>
          Title.Caption = #32570#21220#20154#25976'|QJQty'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'Act_Hours'
          Footers = <>
          Title.Caption = #26377#25928#26178#25976'|Act_Hours'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'BZGS'
          Footers = <>
          Title.Caption = #27161#20934#24037#26178'|BZGS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'BZRate'
          Footers = <>
          Title.Caption = #27161#20934#36948#25104#29575'|BZRate'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
        end
        item
          EditButtons = <>
          FieldName = 'SJGS'
          Footers = <>
          Title.Caption = #23526#38555#24037#26178'|SJGS'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'SJRate'
          Footers = <>
          Title.Caption = #23526#38555#36948#25104#29575'|RATE'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'PRS/H'
          Footers = <>
          Title.Caption = #20154#22343#26178#29986#20986'|PRS/H'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #26032#32048#26126#39636
          Title.Font.Style = []
          Width = 68
        end>
    end
  end
  object DBGridEh1: TDBGridEh
    Left = -8
    Top = 265
    Width = 792
    Height = 353
    DataSource = DS4
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
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
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
    object Query1bzQty: TIntegerField
      FieldName = 'bzQty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_Qty: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lack_Qty'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0%'
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
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
    end
    object NN2: TMenuItem
      Caption = 'Excel'
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
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    Left = 312
    Top = 224
  end
  object DS4: TDataSource
    DataSet = Query2
    Left = 344
    Top = 224
  end
  object PopupMenu2: TPopupMenu
    Left = 112
    Top = 216
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = [pghFitGridToPageWidth, pghRowAutoStretch]
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -13
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    PageHeader.LeftText.Strings = (
      '                                               '#26085#37096#38272#29983#29986#29376#27841#34920)
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 136
    Top = 224
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B646174655D20202020202020202020202020
      2020202020202020202020202020202020202020202020202020202020202020
      20202020202020202020202020255B6865616465725D0D0A5C706172207D0D0A
      00}
  end
  object PrintDBGridEh2: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghFitGridToPageWidth]
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = #26032#32048#26126#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #37096#38272#35336#21123#36948#25104#29575#26126#32048#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = #27161#26999#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh2BeforePrint
    Left = 184
    Top = 233
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B646174655D0D0A5C706172207D0D0A00}
  end
end
