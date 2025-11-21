object EquipmentClassification_LBChild: TEquipmentClassification_LBChild
  Left = 619
  Top = 405
  Caption = 'EquipmentClassification_LBChild'
  ClientHeight = 355
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 14
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
      Left = 151
      Top = 14
      Width = 44
      Height = 16
      Caption = 'ZWPM:'
    end
    object Label3: TLabel
      Left = 319
      Top = 14
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Edit1: TEdit
      Left = 45
      Top = 9
      Width = 89
      Height = 29
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ZWPMEdit: TEdit
      Left = 197
      Top = 11
      Width = 113
      Height = 24
      TabOrder = 1
    end
    object YWPMEdit: TEdit
      Left = 365
      Top = 11
      Width = 113
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 485
      Top = 8
      Width = 81
      Height = 32
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 571
    Height = 306
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
    ReadOnly = True
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
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 179
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 156
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HGPM'
        Footers = <>
        Title.Caption = #28023#38364#21517#31281'|HGPM'
        Width = 172
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        PickList.Strings = (
          'UNIT'
          'PCE'
          'BOX'
          'ROLL')
        Title.Caption = #21934#20301'|DWBH'
        Width = 43
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
        Width = 112
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Caption = #24288#21830'No|Sup No'
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Footers = <>
        Title.Caption = #35069#36896#24288#21830'|ZSYWJC'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        PickList.Strings = (
          'TW'
          'VN')
        Title.Caption = #25505#21312'|CQDH'
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUSPrice'
        Footers = <>
        Title.Caption = #22577#20729'|USPrice'
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QVNPrice'
        Footers = <>
        Title.Caption = #22577#20729'|VNPrice'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthCE'
        Footers = <>
        Title.Caption = #23433#20840#35469#35657'|AuthCE'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthCompany'
        Footers = <>
        Title.Caption = #20844#21496#25351#23450'|Company'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthBrand'
        Footers = <>
        Title.Caption = #23458#20154#25351#23450'|AuthBrand'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CLZMLB'
        Footers = <>
        Title.Caption = #32068#21512'|CLZMLB'
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 56
      end
      item
        CellButtons = <>
        DisplayFormat = 'yyyy/MM/dd'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TSCD_SB: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  TSCD_SB.*,TSCD_ZSZL.zsjc_yw from TSCD_SB  '
      'Left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_SB.zsdh  '
      'where TSCD_SB.SBBH like '#39'%'#39' '
      '   and TSCD_SB.USERID='#39'21191'#39' '
      'order by TSCD_SB.SBBH')
    Left = 132
    Top = 116
    object TSCD_SBSBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_SB.SBBH'
      FixedChar = True
    end
    object TSCD_SBLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBYWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBHGPM: TStringField
      FieldName = 'HGPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBQUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object TSCD_SBZSDH: TStringField
      FieldName = 'ZSDH'
      Origin = 'DB.TSCD_SB.ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCD_SBCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object TSCD_SBQUSPrice: TFloatField
      FieldName = 'QUSPrice'
      DisplayFormat = '#0.00'
    end
    object TSCD_SBQVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
      DisplayFormat = '#0'
    end
    object TSCD_SBAuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object TSCD_SBAuthCompany: TBooleanField
      FieldName = 'AuthCompany'
    end
    object TSCD_SBAuthBrand: TBooleanField
      FieldName = 'AuthBrand'
    end
    object TSCD_SBCLZMLB: TStringField
      FieldName = 'CLZMLB'
      Origin = 'DB.TSCD_SB.CLZMLB'
      FixedChar = True
      Size = 1
    end
    object TSCD_SBMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object TSCD_SBUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_SB.USERID'
      FixedChar = True
      Size = 10
    end
    object TSCD_SBUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_SB.USERDATE'
    end
    object TSCD_SBYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_SB.YN'
      FixedChar = True
      Size = 1
    end
    object TSCD_SBzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      Origin = 'DB.TSCD_ZSZL.zsjc_yw'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = TSCD_SB
    Left = 132
    Top = 148
  end
end
