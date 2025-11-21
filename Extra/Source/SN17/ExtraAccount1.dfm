object ExtraAccount: TExtraAccount
  Left = 483
  Top = 239
  Width = 1431
  Height = 675
  Caption = 'Extra Account'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1415
    Height = 121
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
      Width = 721
      Height = 24
      AutoSize = False
      Caption = 'Month Material Child Extra Out List & Costing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 0
      Top = 51
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 192
      Top = 51
      Width = 102
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 144
      Top = 88
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 384
      Top = 88
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
    end
    object Label7: TLabel
      Left = 556
      Top = 88
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZSJC:'
    end
    object Label8: TLabel
      Left = 504
      Top = 51
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label10: TLabel
      Left = 248
      Top = 88
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Edit2: TEdit
      Left = 296
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 731
      Top = 77
      Width = 94
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 400
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 840
      Top = 77
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 5
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
    object CBX2: TComboBox
      Left = 200
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
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
    object Button3: TButton
      Left = 731
      Top = 40
      Width = 94
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
    end
    object Edit5: TEdit
      Left = 452
      Top = 85
      Width = 101
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 616
      Top = 85
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 584
      Top = 48
      Width = 57
      Height = 24
      TabOrder = 10
    end
    object CBX3: TComboBox
      Left = 313
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1415
    Height = 515
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16759739
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235'|CKBH'
        Title.TitleButton = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
        Title.Caption = #21152#24037#21934#34399'|JGNO'
        Title.TitleButton = True
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #24288#21830'|ZSYWJC'
        Title.TitleButton = True
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Title.Caption = #20986#24235#26085'|CFMDate1'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'JGLX'
        Footers = <>
        Title.Caption = #39006#22411'|JGLX'
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
        Title.Caption = #23376#27597#39006'|ZMLB'
        Title.TitleButton = True
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 313
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <
          item
            FieldName = 'DWBH'
            ValueType = fvtCount
          end>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #36234#30462#21934#20729'|VNPrice'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Caption = #36234#30462#37329#38989'|VNACC'
        Title.TitleButton = True
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'BL'
        Footers = <>
        Title.TitleButton = True
        Width = 50
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
        FieldName = 'ZSBH'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'JGDate'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate2'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'PMARK'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'YN_Date'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Visible = False
      end>
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1415
    Height = 515
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TS1: TTabSheet
      Caption = 'Total'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1407
        Height = 484
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16759739
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
            Title.Caption = #20489#24235'|CKBH'
            Title.TitleButton = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footers = <>
            Title.Caption = #21152#24037#21934#34399'|JGNO'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = #24288#21830'|ZSYWJC'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate1'
            Footers = <>
            Title.Caption = #20986#24235#26085'|CFMDate1'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'JGLX'
            Footers = <>
            Title.Caption = #39006#22411'|JGLX'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'ZMLB'
            Footers = <>
            Title.Caption = #23376#27597#39006'|ZMLB'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 313
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                FieldName = 'DWBH'
                ValueType = fvtCount
              end>
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #25976#37327'|Qty'
            Title.TitleButton = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
            Title.TitleButton = True
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.Caption = #36234#30462#37329#38989'|VNACC'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'BL'
            Footers = <>
            Title.TitleButton = True
            Width = 50
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
            FieldName = 'ZSBH'
            Footers = <>
            Visible = False
          end>
      end
    end
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 448
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select A.*,B.VNPrice, A.Qty*b.VNPrice as VNACC,b.ZMLB,C.GSBH as ' +
        'CKBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KCZLS.CWBH,C.JGLX, CLHG.HGB' +
        'H,CLHG.UnitC,CLHG.RateC,B.Qty as BL, C.CFMDate1  '
      '  from JGZLSS A'
      '       left join JGZLS B on A.JGNO=B.JGNO '
      '       left join JGZL C on C.JGNO=A.JGNO '
      '       left join CLZL on CLZL.CLDH=B.ZMLB '
      
        '       left join CLHG on CLHG.CLBH=B.ZMLB and Year(B.USERDATE)>=' +
        '2017 '
      '       left join ZSZL on ZSZL.ZSDH=C.ZSBH '
      
        '       left join KCZLS on KCZLS.CLBH=B.ZMLB and KCZLS.CKBH=C.CKB' +
        'H'
      '       left join KCCK on KCCK.CKBH=C.CKBH '
      ' where B.ZMLB like '#39'%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and isnull(KCZLS.CWBH,'#39#39') like '#39'%'#39
      '       and B.JGNO like '#39'%'#39
      '       and ZSZL.ZSYWJC like '#39'%%'#39
      '       and C.YN='#39'5'#39
      '       and KCCK.GSBH='#39'VDH'#39
      '       and 1=2'
      'order by B.ZMLB ,C.ZSBH,C.JGNO'
      '')
    Left = 496
    Top = 160
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1JGLX: TStringField
      FieldName = 'JGLX'
      FixedChar = True
      Size = 1
    end
    object Query1ZMLB: TStringField
      FieldName = 'ZMLB'
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
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
    end
    object Query1BL: TCurrencyField
      FieldName = 'BL'
      DisplayFormat = '#0'
    end
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1UnitC: TStringField
      FieldName = 'UnitC'
      FixedChar = True
      Size = 40
    end
    object Query1RateC: TFloatField
      FieldName = 'RateC'
      DisplayFormat = '#,#0.0000'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
end
