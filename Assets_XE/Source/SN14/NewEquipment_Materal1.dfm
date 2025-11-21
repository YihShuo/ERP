object NewEquipment_Materal: TNewEquipment_Materal
  Left = 0
  Top = 0
  Caption = 'NewEquipment_Materal'
  ClientHeight = 319
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 45
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
      Left = 392
      Top = 6
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 45
    Width = 648
    Height = 274
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
        Width = 117
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 400
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 176
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SBBH,ywpm, '#39'1'#39' as LB '
      'from dbo.TSCD_SB')
    Left = 360
    Top = 216
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
  end
end
