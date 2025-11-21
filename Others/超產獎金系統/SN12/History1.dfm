object History: THistory
  Left = 0
  Top = 0
  Caption = 'History'
  ClientHeight = 228
  ClientWidth = 415
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 415
    Height = 228
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = #24037#34399'|S'#7889' th'#7867
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Category'
        Footers = <>
        Title.Caption = #35657#20214#39006#22411'|Lo'#7841'i'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CredentialNo'
        Footers = <>
        Title.Caption = #35657#20214#32232#34399'|S'#7889
        Width = 130
      end
      item
        CellButtons = <>
        DisplayFormat = 'yyyy/MM/dd'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ExpireDate'
        Footers = <>
        Title.Caption = #21040#26399#26085'|Ng'#224'y h'#7871't h'#7841'n'
        Width = 100
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
      'SELECT * FROM CertificateHis'
      'WHERE ID = '#39#39)
    Left = 24
    Top = 120
    object Query1ID: TWideStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query1Category: TWideStringField
      FieldName = 'Category'
      Size = 10
    end
    object Query1CredentialNo: TWideStringField
      FieldName = 'CredentialNo'
    end
    object Query1ExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 72
  end
end
