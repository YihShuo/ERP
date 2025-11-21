object MaterialNoQty: TMaterialNoQty
  Left = 429
  Top = 262
  Width = 1131
  Height = 500
  Caption = 'MaterialNoQty'
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
    Width = 1115
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1115
      121)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 409
      Height = 24
      AutoSize = False
      Caption = ' Material List of No Qty :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 51
      Width = 94
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 210
      Top = 51
      Width = 94
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label4: TLabel
      Left = 1
      Top = 91
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 132
      Top = 91
      Width = 39
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'Month:'
    end
    object Label2: TLabel
      Left = 234
      Top = 91
      Width = 67
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label16: TLabel
      Left = 390
      Top = 93
      Width = 81
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop]
      AutoSize = False
      Caption = 'KHO:'
    end
    object Edit2: TEdit
      Left = 304
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 96
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 554
      Top = 83
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 408
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 642
      Top = 83
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 64
      Top = 89
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
    object CBX3: TComboBox
      Left = 176
      Top = 89
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
      Left = 734
      Top = 82
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 504
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object CBX1: TComboBox
      Left = 304
      Top = 88
      Width = 89
      Height = 24
      ItemHeight = 16
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 624
      Top = 48
      Width = 121
      Height = 24
      TabOrder = 10
    end
    object CBX6: TComboBox
      Left = 476
      Top = 89
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 11
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1115
    Height = 340
    ActivePage = TS2
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
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 991
        Height = 308
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Width = 377
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            ReadOnly = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'QTY'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Width = 65
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Width = 89
          end
          item
            Color = 8716287
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
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
            FieldName = 'YN'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Ton Kho'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1107
        Height = 309
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 377
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                ValueType = fvtCount
              end>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                ValueType = fvtSum
              end>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                ValueType = fvtSum
              end>
            Width = 89
          end
          item
            Color = 8716287
            EditButtons = <>
            FieldName = 'CostID'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
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
            FieldName = 'YN'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWCLCOUNT.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH'
      'from  CWCLCOUNT'
      'left join CLZL on  CLZL.CLDH= CWCLCOUNT.CLBH'
      'left join KCZLS on KCZLS.CLBH=CWCLCOUNT.CLBH'
      'where CWCLCOUNT.KCYEAR='#39'2007'#39
      ' and CWCLCOUNT.KCMONTH='#39'01'#39
      ' and CWCLCOUNT.CLBH like '#39'%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      'order by  CWCLCOUNT.CLBH')
    UpdateObject = UpSql1
    Left = 496
    Top = 160
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
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
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
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
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 224
    object N1: TMenuItem
      Caption = 'CostID'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Save'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Cancel'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Export'
      OnClick = N4Click
    end
  end
  object UpSql1: TUpdateSQL
    ModifySQL.Strings = (
      'update CWCLCOUNT'
      'set'
      '  CostID = :CostID'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CWCLCOUNT'
      '  (CostID)'
      'values'
      '  (:CostID)')
    DeleteSQL.Strings = (
      'delete from CWCLCOUNT'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    Left = 496
    Top = 192
  end
  object Ptemp: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CWCLCOUNT_HG.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH'
      'from  CWCLCOUNT_HG'
      'left join CLZL on  CLZL.CLDH= CWCLCOUNT_HG.CLBH'
      'left join KCZLS on KCZLS.CLBH=CWCLCOUNT_HG.CLBH'
      'where CWCLCOUNT_HG.KCYEAR='#39'2007'#39
      ' and CWCLCOUNT_HG.KCMONTH='#39'01'#39
      ' and CWCLCOUNT_HG.CLBH like '#39'%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      'order by  CWCLCOUNT_HG.CLBH')
    UpdateObject = UpSql2
    Left = 616
    Top = 160
    object Query2KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query2KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query2QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query2CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2CNO: TStringField
      FieldName = 'CNO'
      Size = 15
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 648
    Top = 160
  end
  object UpSql2: TUpdateSQL
    ModifySQL.Strings = (
      'update CWCLCOUNT_HG'
      'set'
      '  CostID = :CostID'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH and'
      '  HGLB = :OLD_HGLB')
    InsertSQL.Strings = (
      'insert into CWCLCOUNT_HG'
      '  (CostID)'
      'values'
      '  (:CostID)')
    DeleteSQL.Strings = (
      'delete from CWCLCOUNT_HG'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH and'
      '  HGLB = :OLD_HGLB')
    Left = 616
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    Left = 616
    Top = 224
    object NH1: TMenuItem
      Caption = 'CostID'
      OnClick = NH1Click
    end
    object NH2: TMenuItem
      Caption = 'Save'
      OnClick = NH2Click
    end
    object NH3: TMenuItem
      Caption = 'Cancel'
      OnClick = NH3Click
    end
    object NH4: TMenuItem
      Caption = 'Export'
      OnClick = NH4Click
    end
  end
end
