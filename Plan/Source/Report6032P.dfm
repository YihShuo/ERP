object Report6032: TReport6032
  Left = 353
  Top = 290
  Width = 1257
  Height = 513
  Caption = 'Report6032'
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
    Width = 1249
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 49
      Top = 12
      Width = 29
      Height = 16
      Caption = 'FAT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 152
      Top = 12
      Width = 53
      Height = 16
      Caption = 'Process:'
    end
    object Label2: TLabel
      Left = 187
      Top = 42
      Width = 15
      Height = 13
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 42
      Width = 75
      Height = 16
      Caption = 'PLAN DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 321
      Top = 42
      Width = 75
      Height = 16
      Caption = 'Work Group:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 560
      Top = 42
      Width = 80
      Height = 16
      Caption = 'On Schedule:'
    end
    object Label4: TLabel
      Left = 545
      Top = 12
      Width = 92
      Height = 16
      Caption = 'Difference Day:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cb1: TComboBox
      Left = 88
      Top = 8
      Width = 57
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'ALL'
      OnChange = cb1Change
      Items.Strings = (
        'ALL')
    end
    object process: TComboBox
      Left = 209
      Top = 5
      Width = 57
      Height = 24
      ItemHeight = 16
      ItemIndex = 3
      TabOrder = 1
      Text = 'A'
      OnChange = cb1Change
      Items.Strings = (
        'ALL'
        'C'
        'S'
        'A'
        'O'
        'W')
    end
    object ed: TDateTimePicker
      Left = 208
      Top = 36
      Width = 97
      Height = 24
      Date = 40329.594896261570000000
      Time = 40329.594896261570000000
      TabOrder = 2
    end
    object sd: TDateTimePicker
      Left = 88
      Top = 36
      Width = 97
      Height = 24
      Date = 40329.594896261570000000
      Time = 40329.594896261570000000
      TabOrder = 3
    end
    object cb2: TComboBox
      Left = 400
      Top = 36
      Width = 105
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object diffday: TEdit
      Left = 648
      Top = 8
      Width = 33
      Height = 24
      TabOrder = 5
      Text = '3'
    end
    object os: TEdit
      Left = 648
      Top = 36
      Width = 33
      Height = 24
      ReadOnly = True
      TabOrder = 6
    end
    object Button1: TButton
      Left = 688
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 774
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object datalist: TPageControl
    Left = 0
    Top = 65
    Width = 1249
    Height = 417
    ActivePage = t1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object t1: TTabSheet
      Caption = #27491#24120#25490#31243#21644#25237#29986#26085
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1241
        Height = 386
        Align = alClient
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
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ysbh'
            Footers = <
              item
                Color = clGradientActiveCaption
                FieldName = 'ysbh'
                ValueType = fvtCount
              end>
            Title.Caption = #35330#21934#32232#34399'|ysbh'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU#|article'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = #38795#21517'|xieming'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 149
          end
          item
            EditButtons = <>
            FieldName = 'qty'
            Footers = <
              item
                Color = clMenuHighlight
                FieldName = 'qty'
                ValueType = fvtSum
              end>
            Title.Caption = #38617#25976'|qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'gxlb'
            Footers = <>
            Title.Caption = #24037#27573'|gxlb'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean'#32218#21029'|DepName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'ProDepNM'
            Footers = <>
            Title.Caption = #23526#38555'Lean'#32218'|ProDepNM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'plandate'
            Footers = <>
            Title.Caption = #35336#30059#19978#32218#26085'|plandate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'prdate'
            Footers = <>
            Title.Caption = #23526#38555#19978#32218#26085'|prdate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'planedate'
            Footers = <>
            Title.Caption = #35336#30059#23436#25104#26085'|planedate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'okdate'
            Footers = <>
            Title.Caption = #23526#38555#23436#25104#26085'|okdate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'diffday'
            Footers = <>
            Title.Caption = #24046#30064#22825#25976'|diffday'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'etd'
            Footers = <>
            Title.Caption = #20132#26399'|etd'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'ProdQty'
            Footers = <>
            Title.Caption = #23436#25104#38617#25976'|ProdQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end>
      end
    end
    object t2: TTabSheet
      Caption = #30064#24120#25490#31243#21644#25237#29986#26085
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1241
        Height = 386
        Align = alClient
        DataSource = DataSource2
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
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ysbh'
            Footers = <
              item
                Color = clGradientActiveCaption
                FieldName = 'ysbh'
                ValueType = fvtCount
              end>
            Title.Caption = #35330#21934#32232#34399'|ysbh'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU#|article'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = #38795#21517'|xieming'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 149
          end
          item
            EditButtons = <>
            FieldName = 'qty'
            Footers = <
              item
                Color = clMenuHighlight
                FieldName = 'qty'
                ValueType = fvtSum
              end>
            Title.Caption = #38617#25976'|qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'gxlb'
            Footers = <>
            Title.Caption = #24037#27573'|gxlb'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'depname'
            Footers = <>
            Title.Caption = 'Lean'#32218'|Depname'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ProDepNM'
            Footers = <>
            Title.Caption = #23526#38555'Lean'#32218'|ProDepNM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'plandate'
            Footers = <>
            Title.Caption = #35336#30059#19978#32218#26085'|plandate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'prdate'
            Footers = <>
            Title.Caption = #23526#38555#19978#32218#26085'|prdate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'planedate'
            Footers = <>
            Title.Caption = #35336#30059#23436#25104#26085'|planedate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'okdate'
            Footers = <>
            Title.Caption = #23526#38555#23436#25104#26085'|okdate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'diffday'
            Footers = <>
            Title.Caption = #24046#30064#22825#25976'|diffday'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end>
      end
    end
    object t3: TTabSheet
      Caption = #25490#31243#25475#25551#21839#38988
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1241
        Height = 386
        Align = alClient
        DataSource = DataSource3
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
            FieldName = 'ysbh'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|ysbh'
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU#|article'
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = #38795#21517'|xieming'
            Width = 312
          end
          item
            EditButtons = <>
            FieldName = 'pairs'
            Footers = <>
            Title.Caption = #38617#25976'|pairs'
          end
          item
            EditButtons = <>
            FieldName = 'plandate'
            Footers = <>
            Title.Caption = #35336#30059#19978#32218#26085'|plandate'
          end
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'gxlb'
            Footers = <>
            Title.Caption = #24037#27573'|gxlb'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'rqty'
            Footers = <>
            Title.Caption = #23436#25104#38617#25976'|rqty'
          end
          item
            EditButtons = <>
            FieldName = 'storyqty'
            Footers = <>
            Title.Caption = #25104#21697#20489#38617#25976'|storyqty'
            Width = 89
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = #29983#29986#35686#35338
      ImageIndex = 3
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1241
        Height = 386
        Align = alClient
        DataSource = DataSource4
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
        FooterRowCount = 1
        OddRowColor = clWindow
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ysbh'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|ysbh'
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'gsbh'
            Footers = <>
            Title.Caption = #24288#21029'|gsbh'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU#|article'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'xieming'
            Footers = <>
            Title.Caption = #38795#21517'|xieming'
            Width = 168
          end
          item
            DisplayFormat = '#,###.0'
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
            Title.Caption = #38617#25976'|qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'depname'
            Footers = <>
            Title.Caption = 'Lean'#32218'|depname'
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'ProDepNM'
            Footers = <>
            Title.Caption = #23526#38555'Lean'#32218'|ProDepNM'
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'etd'
            Footers = <>
            Title.Caption = #20132#26399'|etd'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'plandate'
            Footers = <>
            Title.Caption = #35336#30059#19978#32218#26085'|plandate'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'planedate'
            Footers = <>
            Title.Caption = #35336#30059#23436#25104#26085'|planedate'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'prdate'
            Footers = <>
            Title.Caption = #23526#38555#19978#32218#26085'|prdate'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'okdate'
            Footers = <>
            Title.Caption = #23526#38555#23436#25104#26085'|okdate'
            Width = 102
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = q1
    Left = 48
    Top = 172
  end
  object q1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select smdd.ysbh,smdd.gxlb,ysbh,BDepartment.DepName,(Select DepN' +
        'ame from BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh' +
        ',article,xieming,qty,plandate,planedate,'
      'prdate,okdate,diffday,etd,ProdQty   '
      'from ('
      
        'select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,sc' +
        'bb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as planda' +
        'te,max(sm.planedate) as planedate,'
      'min(sm.prdate) as prdate,max(sm.okdate) as okdate,'
      'isnull(('
      
        ' DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))-ROUND(DATEDIFF(DA' +
        'Y,min(sm.prdate),min(sm.planDate))/7,0,1) +'
      
        ' case when DATEDIFF(DAY,min(sm.prdate),min(sm.planDate)) < 0 the' +
        'n'
      
        '   case when DATEpart(dw, min(sm.prdate)) < DATEpart(dw, min(sm.' +
        'planDate)) then 1 else 0 end'
      ' else '
      
        #9'  case when DATEpart(dw, min(sm.prdate)) > DATEpart(dw, min(sm.' +
        'planDate)) then -1 else 0 end'
      ' end'
      '),999) as diffday,ddzl.shipdate as etd,scbbs.ProdQty   '
      'from smdd as sm'
      
        'left join (select Max(ProNo) as ProNo,SCBH,gxlb,Sum(Qty) as Prod' +
        'Qty  from Scbbs where convert(smalldatetime,convert(varchar,user' +
        'date,111)) between '
      #39'2021/01/09'#39'and '#39'2021/02/05'#39
      
        ' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=sc' +
        'bbs.gxlb '
      'left join scbb on scbb.ProNo=scbbs.ProNo '
      'left join DDZL on sm.ysbh=DDZL.DDBH '
      
        ' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo' +
        ',scbb.DepNo,ddzl.shipdate,scbbs.ProdQty ) as smdd '
      'left join BDepartment on smdd.depno=BDepartment.ID '
      
        'where convert(smalldatetime,convert(varchar,planDate,111)) betwe' +
        'en '
      #39'2021/01/19'#39'and '#39'2021/01/26'#39
      ' and smdd.gsbh = '#39'VA12'#39
      ' and smdd.gxlb = '#39'A'#39
      ' and abs(diffday) < 1000'
      ' order by smdd.ysbh,smdd.gxlb'
      '')
    Left = 48
    Top = 140
    object q1gxlb: TStringField
      FieldName = 'gxlb'
      FixedChar = True
      Size = 1
    end
    object q1ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object q1gsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object q1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object q1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object q1qty: TIntegerField
      FieldName = 'qty'
    end
    object q1plandate: TDateTimeField
      FieldName = 'plandate'
    end
    object q1planedate: TDateTimeField
      FieldName = 'planedate'
    end
    object q1prdate: TDateTimeField
      FieldName = 'prdate'
    end
    object q1okdate: TDateTimeField
      FieldName = 'okdate'
    end
    object q1diffday: TIntegerField
      FieldName = 'diffday'
    end
    object q1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object q1ProDepNM: TStringField
      FieldName = 'ProDepNM'
      FixedChar = True
      Size = 50
    end
    object q1etd: TDateTimeField
      FieldName = 'etd'
    end
    object q1ProdQty: TFloatField
      FieldName = 'ProdQty'
    end
  end
  object q2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select smdd.ysbh,smdd.gxlb,ysbh,BDepartment.DepName,(Select DepN' +
        'ame from BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh' +
        ',article,xieming,qty,plandate,planedate,'
      'prdate,okdate,diffday '
      'from ('
      
        'select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,sc' +
        'bb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as '
      'plandate,max(sm.planedate) as planedate,'
      'min(sm.prdate) as prdate,max(sm.okdate) as okdate,'
      'isnull(('
      
        ' DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))-ROUND(DATEDIFF(DA' +
        'Y,min(sm.prdate),min(sm.planDate))/7,0,1) +'
      
        ' case when DATEDIFF(DAY,min(sm.prdate),min(sm.planDate)) < 0 the' +
        'n'
      
        '   case when DATEpart(dw, min(sm.prdate)) < DATEpart(dw, min(sm.' +
        'planDate)) then 1 else 0 end'
      ' else '
      
        #9'  case when DATEpart(dw, min(sm.prdate)) > DATEpart(dw, min(sm.' +
        'planDate)) then -1 else 0 end'
      ' end'
      '),999) as diffday  '
      'from smdd as sm'
      
        'left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where' +
        ' convert(smalldatetime,convert(varchar,userdate,111)) between '
      
        #39'2014/10/02'#39'and '#39'2014/10/09'#39' group by SCBH,gxlb ) Scbbs on Scbbs' +
        '.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb'
      'left join scbb on scbb.ProNo=scbbs.ProNo'
      
        ' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo' +
        ',scbb.DepNo    ) as smdd '
      'left join BDepartment on smdd.depno=BDepartment.ID '
      
        'where convert(smalldatetime,convert(varchar,planDate,111)) betwe' +
        'en '
      #39'2014/10/02'#39'and '#39'2014/10/09'#39
      ' and smdd.gxlb in ('#39'C'#39','#39'S'#39','#39
      'O'#39','#39'W'#39','#39'Z'#39','#39'A'#39')'
      ' and abs(diffday) >= 3'
      ' order by smdd.ysbh,smdd.gxlb')
    Left = 152
    Top = 141
    object q2gxlb: TStringField
      FieldName = 'gxlb'
      FixedChar = True
      Size = 1
    end
    object q2ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object q2gsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object q2article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object q2xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object q2qty: TIntegerField
      FieldName = 'qty'
    end
    object q2plandate: TDateTimeField
      FieldName = 'plandate'
    end
    object q2planedate: TDateTimeField
      FieldName = 'planedate'
    end
    object q2prdate: TDateTimeField
      FieldName = 'prdate'
    end
    object q2okdate: TDateTimeField
      FieldName = 'okdate'
    end
    object q2diffday: TIntegerField
      FieldName = 'diffday'
    end
    object q2depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object q2ProDepNM: TStringField
      FieldName = 'ProDepNM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = q2
    Left = 148
    Top = 174
  end
  object DataSource3: TDataSource
    DataSet = q3
    Left = 248
    Top = 169
  end
  object q3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMDD.gxlb,SMDD.ysbh,SMDD.gsbh,SMDD.article,SMDD.xieming,d' +
        'dzl.pairs,ss.rqty,so.storyqty,SMDD.plandate'
      'from SMDD  '
      'left join ddzl on ddzl.ddbh=SMDD.ysbh'
      'left join '
      '(select scbh,gxlb,sum(qty) as rqty '
      '  from  scbbss'
      
        '  group by scbh,gxlb) as ss on ss.scbh=SMDD.ysbh and ss.gxlb=SMD' +
        'D.gxlb'
      ''
      'left join '
      '(select ddbh,sum(qty) as storyqty '
      '  from  ywcp'
      '  group by ddbh) as so on so.ddbh=SMDD.ysbh '
      '  '
      
        'where convert(smalldatetime,convert(varchar,planDate,111)) betwe' +
        'en '
      #39'2010/05/01'#39'and '#39'2010/05/31'#39
      'and storyqty  is not  null '
      'and rqty <  storyqty '
      
        'group by SMDD.gxlb,SMDD.ysbh,SMDD.gsbh,SMDD.article,SMDD.xieming' +
        ',ddzl.pairs,ss.rqty,so.storyqty,SMDD.plandate'
      ' order by SMDD.ysbh,SMDD.gxlb')
    Left = 248
    Top = 136
    object q3gxlb: TStringField
      FieldName = 'gxlb'
      FixedChar = True
      Size = 1
    end
    object q3ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object q3gsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object q3article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object q3xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object q3pairs: TIntegerField
      FieldName = 'pairs'
    end
    object q3rqty: TFloatField
      FieldName = 'rqty'
    end
    object q3storyqty: TIntegerField
      FieldName = 'storyqty'
    end
    object q3plandate: TDateTimeField
      FieldName = 'plandate'
    end
  end
  object dq: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select id,depname from BDepartment'
      'where gxlb in ('#39'C'#39','#39'S'#39','#39'O'#39','#39'W'#39','#39'Z'#39','#39'A'#39')')
    Left = 576
    Top = 8
  end
  object smdd: TQuery
    DatabaseName = 'dB'
    Left = 792
    Top = 136
  end
  object qq1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update smdd'
      'set okdate = r.edate'
      'from smdd as p,'
      
        '(select scbbs.scbh,scbbs.gxlb,max(scbb.scdate) as edate,sum(qty)' +
        ' as qty , ddzl.pairs as totalQty'
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      left join ddzl on scbbs.scbh = ddzl.zlbh'
      '      where scbb.scdate>'#39'2010/01/01'#39
      '      group by  scbbs.scbh ,scbbs.gxlb, ddzl.pairs) as r'
      'where r.scbh=p.ysbh and r.gxlb=p.gxlb'
      
        '           and r.qty=r.totalQty and p.OKdate is null and p.pland' +
        'ate is not null')
    Left = 760
    Top = 169
  end
  object qq2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update smdd'
      'set prdate = r.sdate'
      'from smdd as p,'
      '(select scbbs.scbh,scbbs.gxlb,min(scbb.scdate) as sdate '
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      where scbb.scdate>'#39'2010/01/01'#39' '
      '      group by  scbbs.scbh ,scbbs.gxlb) as r '
      
        'where r.scbh=p.ysbh and r.gxlb=p.gxlb and p.prdate is null and p' +
        '.plandate is not null')
    Left = 792
    Top = 169
  end
  object q4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select smdd.ysbh,smdd.gxlb,BDepartment.DepName,(Select DepName f' +
        'rom BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh,smdd' +
        '.article,smdd.xieming,'
      
        'smdd.qty,ywdd.etd,smdd.plandate,smdd.planedate,prdate,okdate,dif' +
        'fday '
      'from ('
      
        'select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,sc' +
        'bb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as planda' +
        'te,max(sm.planedate) as planedate,'
      
        'min(sm.prdate) as prdate,max(sm.okdate) as okdate,isnull(convert' +
        '(int,min(sm.planDate)) - convert(int,min(sm.PRdate)),999) as dif' +
        'fday  '
      'from smdd as sm'
      
        'left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where' +
        ' convert(smalldatetime,convert(varchar,userdate,111)) between '
      #39'2014/09/22'#39'and '#39'2014/10/19'#39
      
        ' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=sc' +
        'bbs.gxlb '
      'left join scbb on scbb.ProNo=scbbs.ProNo '
      
        ' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo' +
        ',scbb.DepNo) as smdd '
      'left join BDepartment on smdd.depno=BDepartment.ID '
      'left join ywdd on ywdd.ddbh=smdd.ysbh '
      
        'where convert(smalldatetime,convert(varchar,planDate,111)) betwe' +
        'en '
      #39'2014/10/02'#39'and '#39'2014/10/09'#39
      ' and smdd.gxlb = '#39'A'#39
      ' and convert(int,etd)-convert(int,isnull(okdate,getdate()))<3'
      '  order by smdd.ysbh,smdd.gxlb')
    Left = 320
    Top = 135
    object q4ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object q4gxlb: TStringField
      FieldName = 'gxlb'
      FixedChar = True
      Size = 1
    end
    object q4gsbh: TStringField
      FieldName = 'gsbh'
      FixedChar = True
      Size = 4
    end
    object q4article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object q4xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object q4qty: TIntegerField
      FieldName = 'qty'
    end
    object q4etd: TDateTimeField
      FieldName = 'etd'
    end
    object q4plandate: TDateTimeField
      FieldName = 'plandate'
    end
    object q4planedate: TDateTimeField
      FieldName = 'planedate'
    end
    object q4prdate: TDateTimeField
      FieldName = 'prdate'
    end
    object q4okdate: TDateTimeField
      FieldName = 'okdate'
    end
    object q4depname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object q4ProDepNM: TStringField
      FieldName = 'ProDepNM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource4: TDataSource
    DataSet = q4
    Left = 322
    Top = 169
  end
end
