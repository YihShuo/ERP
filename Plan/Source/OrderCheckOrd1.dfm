object OrderCheckOrd: TOrderCheckOrd
  Left = 61
  Top = 267
  Width = 1357
  Height = 497
  Caption = 'OrderCheckOrd'
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
  object Label8: TLabel
    Left = 806
    Top = 32
    Width = 44
    Height = 13
    Caption = 'No Finish'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1341
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 328
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 320
      Top = 64
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 176
      Top = 64
      Width = 37
      Height = 16
      Caption = 'SKU#:'
    end
    object Label2: TLabel
      Left = 472
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label12: TLabel
      Left = 488
      Top = 64
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label13: TLabel
      Left = 608
      Top = 64
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label16: TLabel
      Left = 8
      Top = 96
      Width = 553
      Height = 20
      AutoSize = False
      Caption = #26376#20221#35330#21934#23436#25104#37197#22871#29376#27841#34920'('#20998#35330#21934')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 336
      Top = 8
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #21046#20196#34399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 480
      Top = 8
      Width = 49
      Height = 16
      AutoSize = False
      Caption = #23458#20154#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 328
      Top = 48
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #38795#22411#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 480
      Top = 48
      Width = 57
      Height = 13
      AutoSize = False
      Caption = #35330#21934#24288#21029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 616
      Top = 48
      Width = 57
      Height = 16
      AutoSize = False
      Caption = #29983#29986#20998#32218
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 800
      Top = 48
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #26410#20986#36008#35330#21934
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 800
      Top = 64
      Width = 77
      Height = 16
      Caption = 'No Shipping '
    end
    object Label10: TLabel
      Left = 638
      Top = 16
      Width = 49
      Height = 16
      AutoSize = False
      Caption = 'Class:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 7
      Visible = False
      OnDblClick = Panel2DblClick
      object Label11: TLabel
        Left = 168
        Top = 16
        Width = 49
        Height = 20
        Caption = 'Month:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 38
        Height = 20
        Caption = 'Year:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CBX1: TComboBox
        Left = 240
        Top = 8
        Width = 57
        Height = 28
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
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
      object CBX2: TComboBox
        Left = 80
        Top = 8
        Width = 73
        Height = 28
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = '2006'
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
    end
    object Panel3: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 8
      OnDblClick = Panel3DblClick
      object Label15: TLabel
        Left = 180
        Top = 18
        Width = 17
        Height = 16
        Caption = 'To'
      end
      object DTP1: TDateTimePicker
        Left = 72
        Top = 16
        Width = 97
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 208
        Top = 16
        Width = 97
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        TabOrder = 1
      end
    end
    object RadG1: TRadioGroup
      Left = 328
      Top = 80
      Width = 425
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Shipping order('#26989#21209#35330#21934')'
        'Produce order('#29983#29986#35330#21934')')
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 384
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 384
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 768
      Top = 88
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 216
      Top = 56
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 536
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 536
      Top = 56
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 5
    end
    object Edit8: TEdit
      Left = 680
      Top = 56
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 768
      Top = 48
      Width = 33
      Height = 33
      TabOrder = 10
    end
    object DDLBCb: TComboBox
      Left = 680
      Top = 13
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 11
      Items.Strings = (
        ''
        '='#39'Y'#39
        '='#39'S'#39
        '='#39'C'#39
        '<>'#39'C'#39)
    end
    object RadioButton1: TRadioButton
      Left = 12
      Top = 60
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object RB1: TRadioButton
      Left = 12
      Top = 20
      Width = 61
      Height = 17
      Caption = 'CSD:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      TabStop = True
    end
    object BuyNoEdit: TEdit
      Left = 80
      Top = 56
      Width = 89
      Height = 24
      TabOrder = 14
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 1341
    Height = 329
    Align = alClient
    DataSource = DS1
    EvenRowColor = 16515069
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
    OnGetCellParams = DBGrid1GetCellParams
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
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 186
      end
      item
        EditButtons = <>
        FieldName = 'DaoMH'
        Footers = <>
        Title.Caption = #20992#27169#34399'|DaoMH'
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CSD'
        Footers = <>
        Title.Caption = 'CSD|CSD'
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20986#36008#26085'|X/F'
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'C_Qty'
        Footers = <
          item
            FieldName = 'C_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|C_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_C'
        Footers = <
          item
            FieldName = 'Lack_C'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|Lack_C'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'C_Date'
        Footers = <>
        Title.Caption = 'Cutting('#35009#26039')|C_Date'
        Title.TitleButton = True
        Width = 59
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'S_Qty'
        Footers = <
          item
            FieldName = 'S_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|S_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_S'
        Footers = <
          item
            FieldName = 'Lack_S'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|Lack_S'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'S_Date'
        Footers = <>
        Title.Caption = 'Stitching('#37341#36554')|S_Date'
        Title.TitleButton = True
        Width = 73
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'W_Qty'
        Footers = <
          item
            FieldName = 'W_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'CCS('#22823#36554')|W_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_W'
        Footers = <
          item
            FieldName = 'Lack_W'
            ValueType = fvtSum
          end>
        Title.Caption = 'CCS('#22823#36554')|Lack_W'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'O_Qty'
        Footers = <
          item
            FieldName = 'O_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Outsole('#22823#24213')|O_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_O'
        Footers = <
          item
            FieldName = 'Lack_O'
            ValueType = fvtSum
          end>
        Title.Caption = 'Outsole('#22823#24213')|Lack_O'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Z_Qty'
        Footers = <
          item
            FieldName = 'Z_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Insocker('#38795#22666')|Z_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_Z'
        Footers = <
          item
            FieldName = 'Lack_Z'
            ValueType = fvtSum
          end>
        Title.Caption = 'Insocker('#38795#22666')|Lack_Z'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'B_Qty'
        Footers = <
          item
            FieldName = 'B_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Phat Go('#25104#22411#21069')|B_Qty'
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_B'
        Footers = <
          item
            FieldName = 'Lack_B'
            ValueType = fvtSum
          end>
        Title.Caption = 'Phat Go('#25104#22411#21069')|Lack_B'
        Width = 53
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'B_Date'
        Footers = <>
        Title.Caption = 'Phat Go('#25104#22411#21069')|B_Date'
        Width = 60
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Qty'
        Footers = <
          item
            FieldName = 'A_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|A_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'Lack_A'
        Footers = <
          item
            FieldName = 'Lack_A'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|Lack_A'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Date'
        Footers = <>
        Title.Caption = 'Assemble('#25104#22411')|A_Date'
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'F_Qty'
        Footers = <
          item
            FieldName = 'F_Qty'
            ValueType = fvtSum
          end>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|F_Qty'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'Lack_F'
        Footers = <
          item
            FieldName = 'Lack_F'
            ValueType = fvtSum
          end>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|Lack_F'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 16703710
        EditButtons = <>
        FieldName = 'F_Date'
        Footers = <>
        Title.Caption = 'Finish('#25104#21697#20837#24235')|F_Date'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = 14548991
        EditButtons = <>
        FieldName = 'A_Set'
        Footers = <
          item
            FieldName = 'A_Set'
            ValueType = fvtSum
          end>
        Title.Caption = #24235#23384#38795#38754'|A_Set'
        Title.TitleButton = True
        Width = 59
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#SCBBS'#39') is not null  '
      'begin   drop table #SCBBS end   '
      
        'select SCBBSS.SCBH as DDBH,SCBBSS.XXCC,sum(isnull(SCBBSS.Qty,0))' +
        ' as Qty,SCGXDY.GX ,max(SCDate) as FinDate'
      'into #SCBBS from SCBBSS '
      'left join SCBB on SCBB.ProNo=SCBBSS.ProNo '
      'left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB '
      'left join DDZL on DDZL.DDBH=SCBBSS.SCBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=SCBBSS.SCBH '
      'where  KFZL.KFJC like '#39'%%'#39
      
        '        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)' +
        ') between '
      '        '#39'2018/01/06'#39' and '#39'2018/04/05'#39
      '      and SCBBSS.SCBH like '#39'Y1802-0001%'#39
      '      and XXZL.Article like '#39'%%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and DDZl.GSBH='#39'VA12'#39
      'group by  SCBBSS.SCBH,SCBBSS.XXCC,SCGXDY.GX'
      'insert #SCBBS '
      
        'select YWDD.YSBH as DDBH,isnull(YWDDS.XXCC,'#39#39') as XXCC,sum(isnul' +
        'l(YWBZPOS.Qty,0)) as Qty,'#39'F'#39' as GX,max(YWCP.InDate) as FinDate '
      'from YWCP '
      
        'left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.' +
        'XH '
      
        'left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPO' +
        'S.DDCC '
      'left join YWDD on YWDD.DDBH=YWCP.DDBH '
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=YWDD.YSBH '
      'where  YWCP.InDate is not null and YWCP.SB<>'#39'2'#39' '
      '       and KFZL.KFJC like '#39'%%'#39
      
        '        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)' +
        ') between '
      '            '#39'2018/01/06'#39' and '#39'2018/04/05'#39
      '      and YWDD.YSBH like '#39'Y1802-0001%'#39
      '      and XXZL.Article like '#39'%%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and DDZl.GSBH='#39'VA12'#39
      'group by YWDD.YSBH,YWDDS.XXCC'
      
        'select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC' +
        ',DDZl.Pairs,DDZL.Shipdate as CSD,'
      
        '       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SC' +
        'BBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,'
      
        '       SCBBW.W_Qty,DDZL.Pairs-isnull(SCBBW.W_Qty,0) as Lack_W,SC' +
        'BBO.O_Qty,DDZL.Pairs-isnull(SCBBO.O_Qty,0) as Lack_O,'
      
        '       SCBBZ.Z_Qty,DDZL.Pairs-isnull(SCBBZ.Z_Qty,0) as Lack_Z,SC' +
        'BBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,'
      
        '       SCBBF.F_Qty,DDZL.Pairs-isnull(SCBBF.F_Qty,0) as Lack_F,SC' +
        'BBB.B_Qty,DDZL.Pairs-isnull(SCBBB.B_Qty,0) as Lack_B,'
      '       case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then 0 '
      
        '            else (case when isnull(SCBBS.S_Qty,0)>isnull(SCBBA.A' +
        '_Qty,0) then isnull(SCBBS.S_Qty,0)-isnull(SCBBA.A_Qty,0) else 0 ' +
        'end) end as A_Set'
      
        '       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.F' +
        'inDate  end as C_Date  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.F' +
        'inDate  end as S_Date  '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.F' +
        'inDate  end as A_Date'
      
        '       ,case when DDZL.Pairs<=isnull(SCBBB.B_Qty,0) then SCBBB.F' +
        'inDate  end as B_Date   '
      
        '       ,case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then SCBBF.F' +
        'inDate  end as F_Date ,YWDD.ETD '
      'from DDZL '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL' +
        '.SheHao '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as C_Qty,max(#SCBB' +
        'S.FinDate) as FinDate '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'C'#39
      '           group by #SCBBS.DDBH) SCBBC on SCBBC.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as S_Qty,max(#SCBB' +
        'S.FinDate) as FinDate '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'S'#39
      '           group by #SCBBS.DDBH) SCBBS on SCBBS.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as W_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'W'#39
      '           group by #SCBBS.DDBH) SCBBW on SCBBW.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as O_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'O'#39
      '           group by #SCBBS.DDBH) SCBBO on SCBBO.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as Z_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'Z'#39
      '           group by #SCBBS.DDBH) SCBBZ on SCBBZ.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as B_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'B'#39
      '           group by #SCBBS.DDBH) SCBBB on SCBBB.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as A_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'A'#39
      '           group by #SCBBS.DDBH) SCBBA on SCBBA.DDBH=DDZL.DDBH '
      
        'left join (select #SCBBS.DDBH,sum(#SCBBS.Qty) as F_Qty ,max(#SCB' +
        'BS.FinDate) as FinDate'
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'F'#39
      '           group by #SCBBS.DDBH) SCBBF on SCBBF.DDBH=DDZL.DDBH '
      'left join (select YSBH as DDBH,min(ETD) as ETD'
      '           from YWDD'
      '           group by YSBH) YWDD on YWDD.DDBH=DDZL.DDBH '
      'where KFZL.KFJC like '#39'%%'#39
      
        '        and convert(smalldatetime,convert(varchar,DDZL.Shipdate)' +
        ') between '
      '        '#39'2018/01/06'#39' and '#39'2018/04/05'#39
      '      and DDZL.DDBH like '#39'Y1802-0001%'#39
      '      and XXZL.Article like '#39'%%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and DDZl.GSBH='#39'VA12'#39
      '      and DDZL.DDLB='#39'N'#39' '
      'order by DDZL.DDBH'
      '')
    Left = 488
    Top = 208
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
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
    object Query1DaoMH: TStringField
      FieldName = 'DaoMH'
      FixedChar = True
      Size = 15
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1CSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1C_Qty: TFloatField
      FieldName = 'C_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_C: TFloatField
      FieldName = 'Lack_C'
      DisplayFormat = '##,#0'
    end
    object Query1C_Date: TDateTimeField
      FieldName = 'C_Date'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1S_Qty: TFloatField
      FieldName = 'S_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_S: TFloatField
      FieldName = 'Lack_S'
      DisplayFormat = '##,#0'
    end
    object Query1S_Date: TDateTimeField
      FieldName = 'S_Date'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1W_Qty: TFloatField
      FieldName = 'W_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_W: TFloatField
      FieldName = 'Lack_W'
      DisplayFormat = '##,#0'
    end
    object Query1O_Qty: TFloatField
      FieldName = 'O_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_O: TFloatField
      FieldName = 'Lack_O'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Qty: TFloatField
      FieldName = 'Z_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_Z: TFloatField
      FieldName = 'Lack_Z'
      DisplayFormat = '##,#0'
    end
    object Query1A_Qty: TFloatField
      FieldName = 'A_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_A: TFloatField
      FieldName = 'Lack_A'
      DisplayFormat = '##,#0'
    end
    object Query1A_Date: TDateTimeField
      FieldName = 'A_Date'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1F_Qty: TFloatField
      FieldName = 'F_Qty'
      DisplayFormat = '##,#0'
    end
    object Query1Lack_F: TFloatField
      FieldName = 'Lack_F'
      DisplayFormat = '##,#0'
    end
    object Query1F_Date: TDateTimeField
      FieldName = 'F_Date'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1A_Set: TFloatField
      FieldName = 'A_Set'
      DisplayFormat = '##,#0'
    end
    object Query1B_Qty: TFloatField
      FieldName = 'B_Qty'
    end
    object Query1Lack_B: TFloatField
      FieldName = 'Lack_B'
    end
    object Query1B_Date: TDateTimeField
      FieldName = 'B_Date'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 528
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 258
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    Filter = 'txt|txt|csv|csv|htm|htm|rtf|rtf|xls|xls'
    Left = 352
    Top = 128
  end
  object PopupMenu2: TPopupMenu
    Left = 128
    Top = 248
    object N1: TMenuItem
      Caption = 'ETD Date'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Plan Month'
      OnClick = N2Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -21
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  /    &[Pages]')
    PageHeader.CenterText.Strings = (
      #26376#20221#35330#21934#23436#25104#37197#22871#29376#27841#34920
      '------'#20998#35330#21934)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 456
    Top = 207
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
end
