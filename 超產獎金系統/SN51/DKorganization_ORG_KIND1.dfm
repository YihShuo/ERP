object DKorganization_ORG_KIND: TDKorganization_ORG_KIND
  Left = 0
  Top = 0
  Caption = 'DKorganization_ORG_KIND'
  ClientHeight = 282
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 51
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 698
    object Label2: TLabel
      Left = 13
      Top = 20
      Width = 59
      Height = 16
      Caption = 'ORG_NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 205
      Top = 17
      Width = 76
      Height = 16
      Caption = 'ORG_DESC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ORG_KINDEdit: TEdit
      Left = 78
      Top = 16
      Width = 123
      Height = 24
      TabOrder = 0
    end
    object Button3: TButton
      Left = 422
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Truy v'#7845'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
    object ORG_DESCEdit: TEdit
      Left = 287
      Top = 16
      Width = 123
      Height = 24
      TabOrder = 2
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 51
    Width = 497
    Height = 231
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh3DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_KIND'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KIND_DESC'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'from [EEP].[LingYi].[dbo].[SYS_ORGKIND]')
    Left = 120
    Top = 192
    object Query1ORG_KIND: TWideStringField
      DisplayWidth = 10
      FieldName = 'ORG_KIND'
      Size = 4
    end
    object Query1KIND_DESC: TWideStringField
      DisplayWidth = 18
      FieldName = 'KIND_DESC'
      Size = 40
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 144
  end
end
