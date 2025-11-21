object Produceset: TProduceset
  Left = 305
  Top = 190
  Width = 933
  Height = 500
  Caption = 'Monthly order plan trace report'
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
    Width = 925
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 337
      Height = 24
      AutoSize = False
      Caption = #26376#20221#35330#21934#35336#21123#33287#26410#23436#25104#29376#27841#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 152
      Top = 64
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 16
      Top = 64
      Width = 40
      Height = 16
      Caption = 'SKU #:'
    end
    object Label7: TLabel
      Left = 784
      Top = 64
      Width = 51
      Height = 16
      Caption = 'Finished'
    end
    object Label9: TLabel
      Left = 784
      Top = 32
      Width = 56
      Height = 16
      Caption = 'No Finish'
    end
    object Label10: TLabel
      Left = 784
      Top = 96
      Width = 48
      Height = 16
      Caption = 'No Start'
    end
    object Label2: TLabel
      Left = 336
      Top = 64
      Width = 53
      Height = 16
      Caption = 'Balance:'
    end
    object Label13: TLabel
      Left = 544
      Top = 24
      Width = 29
      Height = 16
      Caption = 'Dep:'
    end
    object Label14: TLabel
      Left = 464
      Top = 64
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Panel2: TPanel
      Left = 224
      Top = 8
      Width = 313
      Height = 41
      PopupMenu = PopupMenu2
      TabOrder = 10
      Visible = False
      OnDblClick = Panel2DblClick
      object Label8: TLabel
        Left = 11
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
      object Label11: TLabel
        Left = 152
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
      object CBX2: TComboBox
        Left = 64
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
        TabOrder = 0
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
      object CBX3: TComboBox
        Left = 216
        Top = 8
        Width = 57
        Height = 28
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
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
    object Panel3: TPanel
      Left = 224
      Top = 8
      Width = 313
      Height = 41
      PopupMenu = PopupMenu2
      TabOrder = 11
      OnDblClick = Panel3DblClick
      object Label4: TLabel
        Left = 16
        Top = 16
        Width = 31
        Height = 16
        Caption = 'CSD:'
      end
      object Label12: TLabel
        Left = 168
        Top = 16
        Width = 17
        Height = 16
        Caption = 'To'
      end
      object DTP1: TDateTimePicker
        Left = 56
        Top = 8
        Width = 105
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 200
        Top = 8
        Width = 106
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        TabOrder = 1
      end
    end
    object Edit2: TEdit
      Left = 72
      Top = 16
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 216
      Top = 56
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 656
      Top = 48
      Width = 70
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 56
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 656
      Top = 8
      Width = 70
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 752
      Top = 32
      Width = 25
      Height = 21
      Color = clRed
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 752
      Top = 64
      Width = 25
      Height = 21
      Color = clLime
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 752
      Top = 96
      Width = 25
      Height = 21
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit1: TEdit
      Left = 392
      Top = 56
      Width = 57
      Height = 24
      TabOrder = 8
      OnKeyPress = Edit1KeyPress
    end
    object Edit8: TEdit
      Left = 576
      Top = 16
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit9: TEdit
      Left = 536
      Top = 56
      Width = 105
      Height = 24
      TabOrder = 12
    end
    object RadG1: TRadioGroup
      Left = 336
      Top = 80
      Width = 377
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Shipping order('#26989#21209#35330#21934')'
        'Produce order('#29983#29986#35330#21934')')
      TabOrder = 13
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 925
    Height = 337
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    TitleHeight = 12
    UseMultiTitle = True
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|SCBH'
        Title.TitleButton = True
        Width = 85
      end
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #23458#25142'PO|KHPO'
        Title.TitleButton = True
        Width = 114
      end
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'#65283'|Article'
        Title.TitleButton = True
        Width = 116
      end
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 187
      end
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'Country'
        Footers = <
          item
            FieldName = 'CusName'
            ValueType = fvtCount
          end>
        Title.Caption = #20986#21475#22283#23478'|Country'
        Title.TitleButton = True
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Width = 113
      end
      item
        Color = 15794160
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#25976#37327'|Pairs'
        Title.TitleButton = True
        Width = 56
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'A_Set'
        Footers = <
          item
            FieldName = 'A_Set'
            ValueType = fvtSum
          end>
        Title.Caption = #25104#22411#37197#22871'|A_Set'
        Title.TitleButton = True
        Width = 59
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'CDate'
        Footers = <>
        Title.Caption = 'Cutting('#35009#26039')|CDate'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'C_Fin'
        Footers = <
          item
            FieldName = 'C_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|C_Fin'
        Title.TitleButton = True
        Width = 38
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'C_Bal'
        Footers = <
          item
            FieldName = 'C_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Cutting('#35009#26039')|C_Bal'
        Title.TitleButton = True
        Width = 51
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'Z_Fin'
        Footers = <
          item
            FieldName = 'Z_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Insocker('#38795#22666')|Z_Fin'
        Title.TitleButton = True
        Width = 47
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'Z_Bal'
        Footers = <
          item
            FieldName = 'Z_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Insocker('#38795#22666')|Z_Bal'
        Title.TitleButton = True
        Width = 48
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'Y_Fin'
        Footers = <
          item
            FieldName = 'Y_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Emborier('#38651#32353')|Y_Fin'
        Title.TitleButton = True
        Width = 48
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'Y_Bal'
        Footers = <
          item
            FieldName = 'Y_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Emborier('#38651#32353')|Y_Bal'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'W_Fin'
        Footers = <
          item
            FieldName = 'Y_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'CCS('#22823#36554')|W_Fin'
        Title.TitleButton = True
        Width = 53
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'W_Bal'
        Footers = <
          item
            FieldName = 'Y_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'CCS('#22823#36554')|W_Bal'
        Title.TitleButton = True
        Width = 54
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'SDate'
        Footers = <>
        Title.Caption = 'Stitching('#37341#36554')|SDate'
        Title.TitleButton = True
        Width = 49
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'S_Fin'
        Footers = <
          item
            FieldName = 'S_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|S_Fin'
        Title.TitleButton = True
        Width = 43
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'S_Bal'
        Footers = <
          item
            FieldName = 'S_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Stitching('#37341#36554')|S_Bal'
        Title.TitleButton = True
        Width = 52
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'ODate'
        Footers = <>
        Title.Caption = 'Outsole('#22823#24213')|ODate'
        Title.TitleButton = True
        Width = 51
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'O_Fin'
        Footers = <
          item
            FieldName = 'O_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Outsole('#22823#24213')|O_Fin'
        Title.TitleButton = True
        Width = 45
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'O_Bal'
        Footers = <
          item
            FieldName = 'O_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Outsole('#22823#24213')|O_Bal'
        Title.TitleButton = True
        Width = 52
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'ADate'
        Footers = <>
        Title.Caption = 'Assemble('#25104#22411')|ADate'
        Title.TitleButton = True
        Width = 50
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'A_Fin'
        Footers = <
          item
            FieldName = 'A_Fin'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|A_Fin'
        Title.TitleButton = True
        Width = 37
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'A_Bal'
        Footers = <
          item
            FieldName = 'A_Bal'
            ValueType = fvtSum
          end>
        Title.Caption = 'Assemble('#25104#22411')|A_Bal'
        Title.TitleButton = True
        Width = 52
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'ETC'
        Footers = <>
        Title.Caption = 'Date('#20986#36008#30456#38364#26085#26399')|ETC'
        Title.TitleButton = True
        Width = 42
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'INSP'
        Footers = <>
        Title.Caption = 'Date('#20986#36008#30456#38364#26085#26399')|INSP'
        Title.TitleButton = True
        Width = 38
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'EXF'
        Footers = <>
        Title.Caption = 'Date('#20986#36008#30456#38364#26085#26399')|EXF'
        Title.TitleButton = True
        Width = 39
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = 'Date('#20986#36008#30456#38364#26085#26399')|ETD'
        Title.TitleButton = True
        Width = 41
      end
      item
        Color = 13172680
        EditButtons = <>
        FieldName = 'CSD'
        Footers = <>
        Title.Caption = 'Date('#20986#36008#30456#38364#26085#26399')|CSD'
        Title.TitleButton = True
        Width = 38
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'Assemble'
        Footers = <>
        Title.Caption = 'Lnies('#29983#29986#32218')|GO'
        Title.TitleButton = True
        Width = 54
      end
      item
        Color = 15138790
        EditButtons = <>
        FieldName = 'Stitching'
        Footers = <>
        Title.Caption = 'Lnies('#29983#29986#32218')|MAY'
        Title.TitleButton = True
        Width = 51
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#SCBBS'#39') is not null  '
      '  begin   drop table #SCBBS end   '
      'if object_id('#39'tempdb..#SCReport'#39') is not null  '
      '   begin   drop table #SCReport end   '
      'select SCBBSS.SCBH,SCGXDY.GX,SCBBSS.XXCC,sum(SCBBSS.Qty) as Qty'
      'into #SCBBS from SCBBSS'
      'left join SCZL on SCZL.SCBH=SCBBSS.SCBH '
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH '
      'left join DDZL on DDZL.ZlBH=ZLZL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'where SCZL.SCBH like '#39'%'#39
      '      and SCZL.SCBH=SCZL.ZLBH'
      '      and SCZLDate.SCYEAR='#39'2008'#39
      '      and SCZLDate.SCMONTH='#39'12'#39
      '      and XXZL.Article like '#39'%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      '      and DDZl.GSBH='#39'VR1'#39
      '      and KFZL.KFJC like '#39'%%'#39
      'group by SCBBSS.SCBH,SCGXDY.GX,SCBBSS.XXCC   '
      ''
      ''
      
        'select  SCZL.SCBH,ZLZL.ZLBH,DDZL.XieXing,DDZL.Shehao,DDZL.ShipDa' +
        'te,XXZL.XieMing,DDZL.Pairs,'
      
        '        XXZL.Article,LBZLS.YWSM as Country,DDZL.KHPO,isnull(SCSE' +
        'T.Qty,0) as Qty ,isnull(SCBBC.C_Qty,0) as C_Fin,'
      
        '        isnull(SCBBS.S_Qty,0) as S_Fin,isnull(SCBBO.O_Qty,0) as ' +
        'O_Fin,isnull(SCBBW.W_Qty,0) as W_Fin,'
      
        '        isnull(SCBBA.A_Qty,0) as A_Fin,isnull(SCBBY.Y_Qty,0) as ' +
        'Y_Fin,isnull(SCBBZ.Z_Qty,0) as Z_Fin '
      '        ,SCZLDate.CDate,SCZLDate.SDate,SCZLDate.ODate,'
      
        '        SCZLDate.ADate,SCZLDate.ETC,SCZLDate.INSP,SCZLDate.EXF,S' +
        'CZLDate.ETD,'
      
        '        SCZLDate.CSD,SCZLDate.Assemble,SCZLDate.Stitching,KFZL.K' +
        'FJC'
      'into #SCReport from  SCZL '
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join LBZLS on lbzls.lb='#39'06'#39' and lbzls.lbdh=DDZL.DDGB'
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join (select SCBH,sum(Qty)  as Qty  '
      '           from (select  SCBH, XXCC,min( Qty) as Qty  '
      '                 from #SCBBS '
      '                 where (GX='#39'O'#39' or GX='#39'W'#39
      '                        or GX='#39'Z'#39' or GX='#39'S'#39')'
      '                 group by SCBH,XXCC'
      '                 having count(XXCC)=4 '
      '          )SCSET group by SCBH )SCSET on SCSET.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as C_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'C'#39
      '           group by #SCBBS.SCBH) SCBBC on SCBBC.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as S_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'S'#39
      '           group by #SCBBS.SCBH) SCBBS on SCBBS.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as W_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'W'#39
      '           group by #SCBBS.SCBH) SCBBW on SCBBW.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as O_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'O'#39
      '           group by #SCBBS.SCBH) SCBBO on SCBBO.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Z_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'Z'#39
      '           group by #SCBBS.SCBH) SCBBZ on SCBBZ.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as A_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'A'#39
      '           group by #SCBBS.SCBH) SCBBA on SCBBA.SCBH=SCZL.SCBH '
      'left join (select #SCBBS.SCBH,sum(#SCBBS.Qty) as Y_Qty '
      '           from #SCBBS '
      '           where #SCBBS.GX='#39'Y'#39
      '           group by #SCBBS.SCBH) SCBBY on SCBBY.SCBH=SCZL.SCBH '
      'where  SCZL.SCBH=SCZL.ZLBH'
      '       and SCZL.SCBH like '#39'%'#39
      '      and SCZLDate.SCYEAR='#39'2008'#39
      '      and SCZLDate.SCMONTH='#39'12'#39
      '       and XXZL.Article like '#39'%'#39
      '       and XXZL.XieMing like '#39'%%'#39
      '       and SCZL.DDLB<>'#39'Part'#39
      '       and DDZl.GSBH='#39'VR1'#39
      '       and KFZL.KFJC like '#39'%%'#39
      ''
      
        'select #SCReport.*,(case when #SCReport.Qty>=A_Fin then #SCRepor' +
        't.Qty-A_Fin else 0 end ) as A_Set,'
      
        'Pairs-C_Fin as C_Bal,Pairs-S_Fin as S_Bal,Pairs-O_Fin as O_Bal,P' +
        'airs-W_Fin as W_Bal,'
      'Pairs-A_Fin as A_Bal,Pairs-Y_Fin as Y_Bal,Pairs-Z_Fin as Z_Bal'
      'from #SCReport'
      'order by SCBH')
    Left = 496
    Top = 160
    object Query1ZLBH: TStringField
      DisplayWidth = 15
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      DisplayWidth = 19
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CDate: TDateTimeField
      FieldName = 'CDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1Qty: TFloatField
      DisplayWidth = 5
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1A_Set: TFloatField
      FieldName = 'A_Set'
      Origin = 'DB.aaaa.A_Set'
      DisplayFormat = '##,#0'
    end
    object Query1C_Fin: TFloatField
      FieldName = 'C_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1C_Bal: TFloatField
      FieldName = 'C_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Fin: TFloatField
      FieldName = 'Z_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1Z_Bal: TFloatField
      FieldName = 'Z_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1Y_Fin: TFloatField
      FieldName = 'Y_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1Y_Bal: TFloatField
      FieldName = 'Y_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1W_Fin: TFloatField
      FieldName = 'W_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1W_Bal: TFloatField
      FieldName = 'W_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1SDate: TDateTimeField
      FieldName = 'SDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1S_Fin: TFloatField
      FieldName = 'S_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1S_Bal: TFloatField
      FieldName = 'S_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1ODate: TDateTimeField
      FieldName = 'ODate'
      DisplayFormat = 'MM/dd'
    end
    object Query1O_Fin: TFloatField
      FieldName = 'O_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1O_Bal: TFloatField
      FieldName = 'O_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1ADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'MM/dd'
    end
    object Query1A_Fin: TFloatField
      FieldName = 'A_Fin'
      DisplayFormat = '##,#0'
    end
    object Query1A_Bal: TFloatField
      FieldName = 'A_Bal'
      DisplayFormat = '##,#0'
    end
    object Query1ETC: TDateTimeField
      FieldName = 'ETC'
      DisplayFormat = 'MM/dd'
    end
    object Query1INSP: TDateTimeField
      FieldName = 'INSP'
      DisplayFormat = 'MM/dd'
    end
    object Query1EXF: TDateTimeField
      FieldName = 'EXF'
      DisplayFormat = 'MM/dd'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'MM/dd'
    end
    object Query1CSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'MM/dd'
    end
    object Query1Assemble: TStringField
      FieldName = 'Assemble'
      FixedChar = True
      Size = 10
    end
    object Query1Stitching: TStringField
      FieldName = 'Stitching'
      FixedChar = True
      Size = 10
    end
    object Query1ShipDate: TDateTimeField
      DisplayWidth = 11
      FieldName = 'ShipDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1Shehao: TStringField
      DisplayWidth = 9
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1XieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      DisplayWidth = 13
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
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
  object PopupMenu2: TPopupMenu
    Left = 288
    Top = 120
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
      #35330#21934#29983#29986#26126#32048#34920)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 432
    Top = 168
  end
end
