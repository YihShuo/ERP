object Equipment_SBBH: TEquipment_SBBH
  Left = 365
  Top = 423
  Caption = 'Equipment_SBBH'
  ClientHeight = 487
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 49
      Height = 20
      Caption = 'SBBH:'
    end
    object Label2: TLabel
      Left = 184
      Top = 13
      Width = 53
      Height = 20
      Caption = 'YWPM:'
    end
    object Label3: TLabel
      Left = 1
      Top = 45
      Width = 62
      Height = 20
      Caption = 'QUCBH:'
    end
    object Label4: TLabel
      Left = 188
      Top = 45
      Width = 47
      Height = 20
      Caption = 'LSBH:'
    end
    object Label5: TLabel
      Left = 380
      Top = 45
      Width = 70
      Height = 20
      Caption = 'ZSYWJC:'
    end
    object Label6: TLabel
      Left = 599
      Top = 13
      Width = 69
      Height = 20
      Caption = 'Copy Set:'
    end
    object Label7: TLabel
      Left = 399
      Top = 13
      Width = 52
      Height = 20
      Caption = 'ZWPM:'
    end
    object Label8: TLabel
      Left = 596
      Top = 45
      Width = 69
      Height = 20
      Caption = 'ZSZWJC:'
    end
    object edtSBBH: TEdit
      Left = 64
      Top = 11
      Width = 113
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnQuery: TButton
      Left = 816
      Top = 35
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = btnQueryClick
    end
    object edtYWPM: TEdit
      Left = 242
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object edtQUCBH: TEdit
      Left = 64
      Top = 43
      Width = 113
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtLSBH: TEdit
      Left = 242
      Top = 42
      Width = 127
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtZSYWJC: TEdit
      Left = 456
      Top = 41
      Width = 127
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 816
      Top = 0
      Width = 89
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button1Click
    end
    object SpinEdit1: TSpinEdit
      Left = 671
      Top = 8
      Width = 65
      Height = 30
      MaxValue = 100
      MinValue = 1
      TabOrder = 7
      Value = 1
    end
    object edtZWPM: TEdit
      Left = 456
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object edtZSZWJC: TEdit
      Left = 672
      Top = 39
      Width = 121
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1289
    Height = 414
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 322
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 185
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = #24288#21830'ID|ZSDH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_YW'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|zsywjc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_ZW'
        Footers = <>
        Title.Caption = #24288#21830#20013#25991'|ZSJC_ZW'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 116
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo_SB'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'ID|USERID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 77
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL.ZSJC_ZW,TSCD_SB.Mem' +
        'o as Memo_SB from TSCD_SB'
      'left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh'
      'where SBBH like '#39'%'#39)
    Left = 504
    Top = 184
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_SB.SBBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1QUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_SB.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_SB.USERID'
      FixedChar = True
      Size = 10
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_SB.YN'
      FixedChar = True
      Size = 1
    end
    object Query1LSBH: TStringField
      FieldName = 'LSBH'
      Origin = 'DB.TSCD_SB.LSBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSJC_ZW: TStringField
      FieldName = 'ZSJC_ZW'
      FixedChar = True
      Size = 50
    end
    object Query1ZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
    object Query1Memo_SB: TStringField
      FieldName = 'Memo_SB'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 504
    Top = 152
  end
end
