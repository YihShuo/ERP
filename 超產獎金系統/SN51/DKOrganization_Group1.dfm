object DKOrganization_Group: TDKOrganization_Group
  Left = 0
  Top = 0
  Caption = 'DKOrganization_Group'
  ClientHeight = 316
  ClientWidth = 841
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
    Width = 841
    Height = 51
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = -6
    object Label2: TLabel
      Left = 13
      Top = 18
      Width = 63
      Height = 16
      Caption = 'GROUPID:'
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
      Width = 89
      Height = 16
      Caption = 'GROUPNAME:'
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
      Width = 90
      Height = 16
      Caption = 'DESCRIPTION:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GROUPIDEdit: TEdit
      Left = 78
      Top = 16
      Width = 123
      Height = 21
      TabOrder = 0
    end
    object Button3: TButton
      Left = 654
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
    object GROUPNAMEEdit: TEdit
      Left = 300
      Top = 14
      Width = 123
      Height = 21
      TabOrder = 2
    end
    object DESCEdit: TEdit
      Left = 525
      Top = 14
      Width = 123
      Height = 21
      TabOrder = 3
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 51
    Width = 841
    Height = 265
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
        FieldName = 'GROUPID'
        Footers = <>
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GROUPNAME'
        Footers = <>
        Width = 181
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DESCRIPTION'
        Footers = <>
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MSAD'
        Footers = <>
        Width = 33
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ISROLE'
        Footers = <>
        Width = 44
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
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 19
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
      'from [EEP].[LingYi].[dbo].[GROUPS]')
    Left = 120
    Top = 184
    object Query1GROUPID: TStringField
      FieldName = 'GROUPID'
    end
    object Query1GROUPNAME: TWideStringField
      FieldName = 'GROUPNAME'
      Size = 50
    end
    object Query1DESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object Query1MSAD: TWideStringField
      FieldName = 'MSAD'
      Size = 1
    end
    object Query1ISROLE: TStringField
      FieldName = 'ISROLE'
      FixedChar = True
      Size = 1
    end
    object Query1SYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object Query1SYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end
