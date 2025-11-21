object MonthDeliverCheck: TMonthDeliverCheck
  Left = 0
  Top = 0
  Caption = 'MonthDeliverCheck'
  ClientHeight = 454
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1262
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 10
      Width = 40
      Height = 16
      Caption = 'SBBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 442
      Top = 48
      Width = 37
      Height = 16
      Caption = 'LLNO:'
    end
    object Label3: TLabel
      Left = 149
      Top = 10
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Label5: TLabel
      Left = 394
      Top = 10
      Width = 38
      Height = 16
      Caption = 'LSBH:'
    end
    object Label4: TLabel
      Left = 17
      Top = 48
      Width = 37
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 118
      Top = 49
      Width = 46
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label12: TLabel
      Left = 220
      Top = 49
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label11: TLabel
      Left = 234
      Top = 48
      Width = 35
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label13: TLabel
      Left = 335
      Top = 48
      Width = 39
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object SBBHEdit: TEdit
      Left = 52
      Top = 7
      Width = 83
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 600
      Top = 3
      Width = 75
      Height = 31
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object LLNOEdit: TEdit
      Left = 485
      Top = 43
      Width = 105
      Height = 24
      TabOrder = 2
    end
    object YWPMEdit: TEdit
      Left = 193
      Top = 7
      Width = 157
      Height = 24
      TabOrder = 3
    end
    object LSBHEdit: TEdit
      Left = 453
      Top = 7
      Width = 137
      Height = 24
      TabOrder = 4
    end
    object Button2: TButton
      Left = 601
      Top = 37
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 57
      Top = 46
      Width = 61
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 6
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
      Left = 169
      Top = 46
      Width = 46
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 7
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
    object CBX4: TComboBox
      Left = 270
      Top = 45
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 8
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
      Left = 376
      Top = 45
      Width = 45
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 9
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1262
    Height = 365
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
        Width = 59
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #35519#21205#21934#34399'|LLNO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        Title.Caption = #39006#21029'|LB'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #26085#26399'|USERDATE'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#37002#34399'|TSBH'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684#32232#34399'|QUCBH'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 251
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #35373#20633#21517#31281'|VWPM'
        Width = 282
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE1'
        Footers = <>
        Title.Caption = #30064#21205'1|VALUE1'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN1'
        Footers = <>
        Title.Caption = #30064#21205'1|COLUMN1'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE2'
        Footers = <>
        Title.Caption = #30064#21205'2|VALUE2'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN2'
        Footers = <>
        Title.Caption = #30064#21205'2|COLUMN2'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE3'
        Footers = <>
        Title.Caption = #30064#21205'3|VALUE3'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN3'
        Footers = <>
        Title.Caption = #30064#21205'3|COLUMN3'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE4'
        Footers = <>
        Title.Caption = #30064#21205'4|VALUE4'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN4'
        Footers = <>
        Title.Caption = #30064#21205'4|COLUMN4'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE5'
        Footers = <>
        Title.Caption = #30064#21205'5|VALUE5'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN5'
        Footers = <>
        Title.Caption = #30064#21205'5|COLUMN5'
        Width = 71
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE6'
        Footers = <>
        Title.Caption = #30064#21205'6|VALUE6'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN6'
        Footers = <>
        Title.Caption = #30064#21205'6|COLUMN6'
        Width = 69
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object KCLLS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID'
      
        ',TSCD_KCLLS.PARAMENT1,TSCD_KCLLS.PARAMENT2,TSCD_KCLLS.PARAMENT3,' +
        'TSCD_KCLLS.PARAMENT4,TSCD_KCLLS.PARAMENT5,TSCD_KCLLS.PARAMENT6'
      
        ',TSCD_KCLLS.VALUE1,TSCD_KCLLS.VALUE2,TSCD_KCLLS.VALUE3,TSCD_KCLL' +
        'S.VALUE4,TSCD_KCLLS.VALUE5,TSCD_KCLLS.VALUE6'
      
        ',TSCD_KCLLS.COLUMN1,TSCD_KCLLS.COLUMN2,TSCD_KCLLS.COLUMN3,TSCD_K' +
        'CLLS.COLUMN4,TSCD_KCLLS.COLUMN5,TSCD_KCLLS.COLUMN6'
      
        ',TSCD.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,IsNull(JDBDep.' +
        'DepName,BDepartment.DepName) as DepName,TSCD.DepID_Memo,TSCD_KCL' +
        'LS.USERID,TSCD_KCLLS.USERDATE,TSCD_KCLLS.YN'
      
        ',TSCD_SB.QUCBH,TSCD_SB.LSBH,TSCD.NSX,TSCD.TSBH,TSCD_KCLLS.Qty,TS' +
        'CD_KCLL.CFMDATE,TSCD_KCLL.GSBH,TSCD_KCLL.LB'
      'from TSCD_KCLLS'
      'left join TSCD_KCLL on TSCD_KCLLS.LLNO=TSCD_KCLL.LLNO'
      'left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.De' +
        'pID'
      'left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS'
      'where 1=1'
      '')
    Left = 348
    Top = 180
    object KCLLSLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLSTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object KCLLSPARAMENT1: TStringField
      FieldName = 'PARAMENT1'
      FixedChar = True
      Size = 15
    end
    object KCLLSPARAMENT2: TStringField
      FieldName = 'PARAMENT2'
      FixedChar = True
      Size = 15
    end
    object KCLLSPARAMENT3: TStringField
      FieldName = 'PARAMENT3'
      FixedChar = True
      Size = 15
    end
    object KCLLSPARAMENT4: TStringField
      FieldName = 'PARAMENT4'
      FixedChar = True
      Size = 15
    end
    object KCLLSPARAMENT5: TStringField
      FieldName = 'PARAMENT5'
      FixedChar = True
      Size = 15
    end
    object KCLLSPARAMENT6: TStringField
      FieldName = 'PARAMENT6'
      FixedChar = True
      Size = 15
    end
    object KCLLSVALUE1: TStringField
      FieldName = 'VALUE1'
      FixedChar = True
      Size = 50
    end
    object KCLLSVALUE2: TStringField
      FieldName = 'VALUE2'
      FixedChar = True
      Size = 50
    end
    object KCLLSVALUE3: TStringField
      FieldName = 'VALUE3'
      FixedChar = True
      Size = 50
    end
    object KCLLSVALUE4: TStringField
      FieldName = 'VALUE4'
      FixedChar = True
      Size = 50
    end
    object KCLLSVALUE5: TStringField
      FieldName = 'VALUE5'
      FixedChar = True
      Size = 50
    end
    object KCLLSVALUE6: TStringField
      FieldName = 'VALUE6'
      FixedChar = True
      Size = 50
    end
    object KCLLSCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 100
    end
    object KCLLSCOLUMN2: TStringField
      FieldName = 'COLUMN2'
      FixedChar = True
      Size = 100
    end
    object KCLLSCOLUMN3: TStringField
      FieldName = 'COLUMN3'
      FixedChar = True
      Size = 100
    end
    object KCLLSCOLUMN4: TStringField
      FieldName = 'COLUMN4'
      FixedChar = True
      Size = 100
    end
    object KCLLSCOLUMN5: TStringField
      FieldName = 'COLUMN5'
      FixedChar = True
      Size = 100
    end
    object KCLLSCOLUMN6: TStringField
      FieldName = 'COLUMN6'
      FixedChar = True
      Size = 100
    end
    object KCLLSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object KCLLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object KCLLSDepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object KCLLSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object KCLLSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object KCLLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object KCLLSQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object KCLLSLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object KCLLSNSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object KCLLSTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object KCLLSQty: TFloatField
      FieldName = 'Qty'
    end
    object KCLLSCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object KCLLSGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object KCLLSLB: TStringField
      FieldName = 'LB'
      FixedChar = True
    end
    object KCLLSVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
  end
  object DS1: TDataSource
    DataSet = KCLLS
    Left = 348
    Top = 228
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 384
    Top = 180
  end
end
