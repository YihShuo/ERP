object DKorganization_Org: TDKorganization_Org
  Left = 0
  Top = 0
  Caption = 'DKorganization_Org'
  ClientHeight = 468
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 51
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -47
    ExplicitWidth = 841
    object Label2: TLabel
      Left = 12
      Top = 17
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
      Top = 18
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
    object Label3: TLabel
      Left = 429
      Top = 17
      Width = 109
      Height = 16
      Caption = 'ORG_FULLNAME:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ORG_NOEdit: TEdit
      Left = 78
      Top = 16
      Width = 123
      Height = 21
      TabOrder = 0
    end
    object Button3: TButton
      Left = 694
      Top = 12
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
      Top = 14
      Width = 123
      Height = 21
      TabOrder = 2
    end
    object ORG_FULLEdit: TEdit
      Left = 544
      Top = 14
      Width = 123
      Height = 21
      TabOrder = 3
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 51
    Width = 817
    Height = 417
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
        FieldName = 'ORG_NO'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_DESC'
        Footers = <>
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_FULLNAME'
        Footers = <>
        Width = 183
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_KIND'
        Footers = <>
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UPPER_ORG'
        Footers = <>
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_MAN'
        Footers = <>
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LEVEL_NO'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ORG_TREE'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'END_ORG'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 144
  end
  object Query1: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'from [EEP].[LingYi].[dbo].[SYS_ORG]')
    Left = 120
    Top = 200
    object Query1ORG_NO: TWideStringField
      FieldName = 'ORG_NO'
      Size = 8
    end
    object Query1ORG_DESC: TWideStringField
      FieldName = 'ORG_DESC'
      Size = 40
    end
    object Query1ORG_KIND: TWideStringField
      FieldName = 'ORG_KIND'
      Size = 4
    end
    object Query1UPPER_ORG: TWideStringField
      FieldName = 'UPPER_ORG'
      Size = 8
    end
    object Query1ORG_MAN: TWideStringField
      FieldName = 'ORG_MAN'
    end
    object Query1LEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Size = 6
    end
    object Query1ORG_TREE: TWideStringField
      FieldName = 'ORG_TREE'
      Size = 40
    end
    object Query1END_ORG: TWideStringField
      FieldName = 'END_ORG'
      Size = 4
    end
    object Query1ORG_FULLNAME: TWideStringField
      FieldName = 'ORG_FULLNAME'
      Size = 254
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
