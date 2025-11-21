object EntryEquipment_LBChild: TEntryEquipment_LBChild
  Left = 0
  Top = 0
  Caption = 'EntryEquipment_LBChild'
  ClientHeight = 379
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 20
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
      Left = 210
      Top = 55
      Width = 38
      Height = 16
      Caption = 'LSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 204
      Top = 20
      Width = 45
      Height = 16
      Caption = 'YWPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 55
      Width = 51
      Height = 16
      Caption = 'QUCBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 402
      Top = 21
      Width = 44
      Height = 16
      Caption = 'ZWPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 390
      Top = 55
      Width = 58
      Height = 16
      Caption = 'ZSYWJC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtSBBH: TEdit
      Left = 68
      Top = 12
      Width = 112
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtLSBH: TEdit
      Left = 256
      Top = 48
      Width = 113
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 616
      Top = 12
      Width = 81
      Height = 31
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object edtQUCBH: TEdit
      Left = 67
      Top = 48
      Width = 113
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtYWPM: TEdit
      Left = 255
      Top = 13
      Width = 113
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtZWPM: TEdit
      Left = 457
      Top = 13
      Width = 113
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtZSYWJC: TEdit
      Left = 458
      Top = 48
      Width = 113
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 779
    Height = 298
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
        Color = clWhite
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
        FieldName = 'ZSJC_YW'
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
        Width = 61
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
      'select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW'
      'from TSCD_SB '
      'left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh '
      'where 1=2'
      'order by TSCD_SB.SBBH')
    Left = 132
    Top = 159
    object TSCD_SBSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCD_SBYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
    object TSCD_SBHGPM: TStringField
      FieldName = 'HGPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCD_SBDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 10
    end
    object TSCD_SBCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object TSCD_SBAuthCompany: TBooleanField
      FieldName = 'AuthCompany'
    end
    object TSCD_SBAuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object TSCD_SBAuthBrand: TBooleanField
      FieldName = 'AuthBrand'
    end
    object TSCD_SBQUSPrice: TFloatField
      FieldName = 'QUSPrice'
    end
    object TSCD_SBQVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
    end
    object TSCD_SBCLZMLB: TStringField
      FieldName = 'CLZMLB'
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
      FixedChar = True
      Size = 10
    end
    object TSCD_SBUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object TSCD_SBYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object TSCD_SBZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = TSCD_SB
    Left = 132
    Top = 209
  end
end
