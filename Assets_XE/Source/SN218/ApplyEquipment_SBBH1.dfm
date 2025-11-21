object ApplyEquipment_SBBH: TApplyEquipment_SBBH
  Left = 523
  Top = 415
  Caption = 'ApplyEquipment_SBBH'
  ClientHeight = 367
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 49
      Height = 20
      Caption = 'SBBH:'
    end
    object Label2: TLabel
      Left = 183
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
      Left = 191
      Top = 45
      Width = 47
      Height = 20
      Caption = 'LSBH:'
    end
    object Label5: TLabel
      Left = 380
      Top = 45
      Width = 79
      Height = 20
      Caption = 'ZSJC_YW:'
    end
    object Label6: TLabel
      Left = 395
      Top = 11
      Width = 52
      Height = 20
      Caption = 'ZWPM:'
    end
    object Label7: TLabel
      Left = 587
      Top = 43
      Width = 53
      Height = 20
      Caption = 'VWPM:'
    end
    object edtSBBH: TEdit
      Left = 64
      Top = 11
      Width = 113
      Height = 26
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
      Left = 808
      Top = 34
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
      Height = 26
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
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtZSJC_YW: TEdit
      Left = 456
      Top = 41
      Width = 127
      Height = 26
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
      Left = 808
      Top = -1
      Width = 89
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button1Click
    end
    object edtZWPM: TEdit
      Left = 454
      Top = 6
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object edtVWPM: TEdit
      Left = 646
      Top = 38
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 918
    Height = 294
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
        Footer.FieldName = 'SBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 197
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 191
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = #24288#21830'ID|ZSDH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_YW'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|zsywjc'
        Width = 113
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 65
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW from TSCD_SB'
      'left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh'
      'where SBBH like '#39'%'#39)
    Left = 424
    Top = 160
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1VWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 200
    end
    object Query1HGPM: TStringField
      FieldName = 'HGPM'
      FixedChar = True
      Size = 200
    end
    object Query1QUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object Query1LSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1AuthCompany: TBooleanField
      FieldName = 'AuthCompany'
    end
    object Query1AuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object Query1AuthBrand: TBooleanField
      FieldName = 'AuthBrand'
    end
    object Query1QUSPrice: TFloatField
      FieldName = 'QUSPrice'
    end
    object Query1QVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1ZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
    end
  end
end
