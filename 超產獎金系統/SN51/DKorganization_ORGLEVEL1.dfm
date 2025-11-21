object DKorganization_ORGLEVEL: TDKorganization_ORGLEVEL
  Left = 0
  Top = 0
  Caption = 'DKorganization_ORGLEVEL'
  ClientHeight = 323
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 51
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 698
    object Label2: TLabel
      Left = 13
      Top = 17
      Width = 71
      Height = 16
      Caption = 'LEVEL_NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 218
      Top = 17
      Width = 88
      Height = 16
      Caption = 'LEVEL_DESC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LEVEL_NOEdit: TEdit
      Left = 90
      Top = 15
      Width = 123
      Height = 21
      TabOrder = 0
    end
    object Button3: TButton
      Left = 438
      Top = 14
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
    object LEVEL_DESCEdit: TEdit
      Left = 309
      Top = 15
      Width = 123
      Height = 21
      TabOrder = 2
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 51
    Width = 576
    Height = 272
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
        FieldName = 'LEVEL_NO'
        Footers = <>
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LEVEL_DESC'
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
      'from [EEP].[LingYi].[dbo].[SYS_ORGLEVEL]')
    Left = 120
    Top = 192
    object Query1LEVEL_NO: TWideStringField
      FieldName = 'LEVEL_NO'
      Size = 6
    end
    object Query1LEVEL_DESC: TWideStringField
      FieldName = 'LEVEL_DESC'
      Size = 40
    end
  end
end
