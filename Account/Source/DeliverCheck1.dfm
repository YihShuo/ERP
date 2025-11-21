object DeliverCheck: TDeliverCheck
  Left = 332
  Top = 368
  Width = 1226
  Height = 593
  Caption = 'DeliverCheck'
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
    Width = 1218
    Height = 145
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
      Top = 8
      Width = 223
      Height = 24
      Caption = 'Month Material Deliver List:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 45
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 184
      Top = 44
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 27
      Top = 111
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 144
      Top = 111
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 140
      Top = 78
      Width = 37
      Height = 16
      Caption = 'LLNO:'
    end
    object Label7: TLabel
      Left = 286
      Top = 81
      Width = 63
      Height = 16
      Caption = 'DepName'
    end
    object Label8: TLabel
      Left = 448
      Top = 45
      Width = 44
      Height = 16
      Caption = 'CWBH:'
    end
    object Label9: TLabel
      Left = 539
      Top = 45
      Width = 43
      Height = 16
      Caption = 'CostID:'
    end
    object Label10: TLabel
      Left = 21
      Top = 80
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object Label11: TLabel
      Left = 640
      Top = 83
      Width = 63
      Height = 16
      Caption = 'Exchange:'
    end
    object Label12: TLabel
      Left = 478
      Top = 81
      Width = 40
      Height = 16
      Caption = 'SCBH:'
    end
    object Label13: TLabel
      Left = 258
      Top = 112
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label14: TLabel
      Left = 240
      Top = 115
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label15: TLabel
      Left = 365
      Top = 111
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label16: TLabel
      Left = 601
      Top = 110
      Width = 31
      Height = 16
      Caption = 'KHO:'
    end
    object Label17: TLabel
      Left = 480
      Top = 111
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label18: TLabel
      Left = 663
      Top = 45
      Width = 42
      Height = 16
      Caption = 'HGBH:'
    end
    object Edit2: TEdit
      Left = 248
      Top = 42
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 64
      Top = 42
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 780
      Top = 105
      Width = 76
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 352
      Top = 42
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 780
      Top = 67
      Width = 76
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 64
      Top = 109
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 5
      Text = '2020'
      OnChange = CBX1Change
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 184
      Top = 109
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
      Text = '01'
      OnChange = CBX2Change
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
    object Button3: TButton
      Left = 779
      Top = 27
      Width = 77
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 180
      Top = 76
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 355
      Top = 78
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 496
      Top = 42
      Width = 41
      Height = 24
      TabOrder = 10
    end
    object Edit7: TEdit
      Left = 584
      Top = 42
      Width = 73
      Height = 24
      TabOrder = 11
    end
    object CBX3: TComboBox
      Left = 65
      Top = 76
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 12
    end
    object ExchangEdit: TEdit
      Left = 704
      Top = 80
      Width = 65
      Height = 24
      TabOrder = 13
      Text = '22490'
    end
    object Edit8: TEdit
      Left = 523
      Top = 78
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object CBX4: TComboBox
      Left = 296
      Top = 108
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 15
      Text = '2020'
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX5: TComboBox
      Left = 409
      Top = 107
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 16
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
    object CBX6: TComboBox
      Left = 636
      Top = 106
      Width = 81
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 17
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ')
    end
    object GSBHCBX: TComboBox
      Left = 525
      Top = 107
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 18
    end
    object Edit9: TEdit
      Left = 707
      Top = 42
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 19
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 145
    Width = 1218
    Height = 417
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1210
        Height = 386
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
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
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|Dep'
            Title.TitleButton = True
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDate'
            Title.TitleButton = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 419
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
            Title.TitleButton = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'CLSL'
                ValueType = fvtSum
              end>
            Title.Caption = #29992#37327'|CLSL'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Person'
            Footers = <>
            Title.TitleButton = True
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'SCBH_1'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = #35036#26009#29702#30001'|YWSM'
            Title.TitleButton = True
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.TitleButton = True
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            Title.Caption = #25429#26009'|BLSB'
            Title.TitleButton = True
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
            Title.Caption = #28023#38364'|HaiQuan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ConMat1'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'1|JGMat1'
            Title.Color = clLime
            Visible = False
            Width = 187
          end
          item
            EditButtons = <>
            FieldName = 'ConMatQ1'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'1|Qty'
            Title.Color = clLime
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'ConMat1VNAcc'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'1|VNAcc'
            Title.Color = clLime
            Visible = False
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'ConMat2'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'2|JGMat2'
            Title.Color = clLime
            Visible = False
            Width = 189
          end
          item
            EditButtons = <>
            FieldName = 'ConMatQ2'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'2|Qty'
            Title.Color = clLime
            Visible = False
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'ConMat2VNAcc'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'2|VNAcc'
            Title.Color = clLime
            Visible = False
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'ConMat3'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'3|JGMat3'
            Title.Color = clLime
            Visible = False
            Width = 188
          end
          item
            EditButtons = <>
            FieldName = 'ConMatQ3'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'3|Qty'
            Title.Color = clLime
            Visible = False
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'ConMat3VNAcc'
            Footers = <>
            Title.Caption = #21152#24037#26448#26009'3|VNAcc'
            Title.Color = clLime
            Visible = False
            Width = 96
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Ton kho'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1210
        Height = 386
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16760767
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
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235#21029'|CKBH'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|LLNO'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean|Dep'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = #30906#35469#26085#26399'|CFMDate'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Width = 241
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                FieldName = 'DWBH'
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.Caption = #21934#20301'|DWBH'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Title.Caption = #24037#27573'|DFL'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #21934#20729'|VNPrice'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#37329#38989'|VNACC'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'SCBH_1'
            Footers = <>
            Title.Caption = #35330#21934'|SCBH'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = #35036#26009#29702#30001'|YWSM'
            Width = 142
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            Title.Caption = #35036#26009'|BLSB'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'HGBH'
            Footers = <>
            Title.Caption = #28023#38364'|HGBH'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UnitC'
            Footers = <>
            Title.Caption = #21934#20301'|UnitC'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'RateC'
            Footers = <>
            Title.Caption = #20812#25563#27604#29575'|RateC'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|HGLB'
            Width = 52
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SC' +
        'BLYY.YWSM,KCZLS.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC'
      
        ' ,JGZL.ConMat1,JGZl.ConMatR1*KCLLS.Qty as ConMatQ1,JGZL.ConMatVN' +
        'Price1*JGZl.ConMatR1*KCLLS.Qty as ConMat1VNAcc'
      
        ' ,JGZL.ConMat2,JGZl.ConMatR2*KCLLS.Qty as ConMatQ2,JGZL.ConMatVN' +
        'Price2*JGZl.ConMatR2*KCLLS.Qty as ConMat2VNAcc'
      
        ' ,JGZL.ConMat3,JGZl.ConMatR3*KCLLS.Qty as ConMatQ3,JGZL.ConMatVN' +
        'Price3*JGZl.ConMatR3*KCLLS.Qty as ConMat3VNAcc'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      'left join CLHG on KCLLs.CLBH=CLHG.CLBH'
      ''
      ''
      'left join ('
      'select CLBH,'
      
        '   Max(case when Dindex=1 then YWPM+'#39'('#39'+ZMLB+'#39')'#39' end) as  ConMat' +
        '1,'
      '   Max(case when Dindex=1 then VNPrice end) as  ConMatVNPrice1,'
      '   Max(case when Dindex=1 then Rate end) as  ConMatR1,'
      
        '   Max(case when Dindex=2 then YWPM+'#39' ('#39'+ZMLB+'#39')'#39' end) as  ConMa' +
        't2,'
      '   Max(case when Dindex=2 then VNPrice end) as  ConMatVNPrice2,'
      '   Max(case when Dindex=2 then Rate end) as  ConMatR2,'
      
        '   Max(case when Dindex=3 then YWPM+'#39' ('#39'+ZMLB+'#39')'#39' end) as  ConMa' +
        't3,'
      '   Max(case when Dindex=3 then VNPrice end) as  ConMatVNPrice3,'
      '   Max(case when Dindex=3 then Rate end) as  ConMatR3'
      ''
      'from ('
      
        'select KCLLS.CLBH,clzhzl.CLDH1 as ZMLB,CLZL.YWPM,Avg(CLZHZL.syl)' +
        ' as Rate,Max(CGBJS.VNPrice) as VNPrice,ROW_NUMBER() over (PARTIT' +
        'ION BY KCLLS.CLBH ORDER BY KCLLS.CLBH Desc) as  Dindex from KCLL' +
        'S '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join clzhzl on clzhzl.CLDH=KCLLS.CLBH '
      'Left join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join ('
      ''
      
        'select CLBH,case when VNPrice is null then round(USPrice*22490,0' +
        ') else VNPrice end as VNPrice ,rn  from (select CGBJS.CLBH,CGBJS' +
        '.USPrice,CGBJS.VNPrice,'
      
        'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DE' +
        'SC) as  rn'
      'from CGBJ'
      'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      
        'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null ) CGBJ where r' +
        'n=1'
      ''
      ') CGBJS ON CGBJS.CLBH=clzhzl.CLDH1'
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2017/02/01'#39' and '#39'2017/02/28'#39
      '      and KCLLS.CLBH like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39'  '
      
        '      Group by KCLLS.CLBH,clzhzl.CLDH1,CLZL.YWPM ) JGZL Group by' +
        ' CLBH '
      ') JGZL on JGZL.CLBH=KCLLS.CLBH'
      ''
      ''
      ' '
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2017/02/01'#39' and '#39'2017/02/28'#39
      '      and KCLLS.CLBH like '#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'VA12'#39
      '      '
      '      ')
    Left = 400
    Top = 248
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
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
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1SCBH_1: TStringField
      FieldName = 'SCBH_1'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
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
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1CNO: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 30
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,##0.0000'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 432
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 248
    object CheckPrice1: TMenuItem
      Caption = 'Check Price'
      OnClick = CheckPrice1Click
    end
    object SonMatCode1: TMenuItem
      Caption = 'Son MatCode'
      OnClick = SonMatCode1Click
    end
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 461
    Top = 246
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 436
    Top = 292
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select KCLL.*,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,isnull(' +
        'KCLLS.Qty,0) as RKQty,isnull(KCLLS.VNPrice_HG,0) as VNPrice'
      '       ,KCLLS.VNACC_HG as VNACC'
      
        '       ,isnull(KCLLS.HGLB,'#39'ZZZZ'#39')as HGLB,KCLLS.CostID,KCLLS.MEMO' +
        ',KCLLS.BLSB '
      
        '       ,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,KCZL' +
        'S.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC '
      
        'from (select * from KCLLS union all select * from KCLLS_2014) KC' +
        'LLS '
      
        'left join (select * from KCLL union all select * from KCLL_2014)' +
        ' KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        'left join CLHG on KCLLS.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>' +
        '=2017 '
      
        'where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      '             '#39'2017/09/01'#39' and '#39'2017/09/30'#39
      '      and KCLLS.CLBH like '#39'A050002961%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '      and KCLLS.CostID like '#39'%'#39
      '      and KCLLS.LLNO like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLL.YN='#39'5'#39
      '      and KCCK.GSBH='#39'VA12'#39
      '      and KCLLS.SCBH like '#39'%'#39)
    Left = 404
    Top = 292
    object Query3LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query3GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query3DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query3CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query3CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query3YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query3PMARK: TIntegerField
      FieldName = 'PMARK'
    end
    object Query3LLNO_1: TStringField
      FieldName = 'LLNO_1'
      FixedChar = True
      Size = 11
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 15
    end
    object Query3SCBH_1: TStringField
      FieldName = 'SCBH_1'
      FixedChar = True
      Size = 15
    end
    object Query3RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query3VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query3VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query3HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query3CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query3MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query3BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query3YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query3DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query3DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query3YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query3CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query3HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query3UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query3RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,##0.0000'
    end
  end
end
