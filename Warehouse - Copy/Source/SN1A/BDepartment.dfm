object BDepForm: TBDepForm
  Left = 292
  Top = 151
  Width = 451
  Height = 483
  Caption = 'BDepForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 16
      Height = 16
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 168
      Top = 20
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object GSBHEdit: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DepNMEdit: TEdit
      Left = 240
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 352
      Top = 12
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 435
    Height = 388
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 170
      end>
  end
  object DS1: TDataSource
    DataSet = DepQuery
    Left = 176
    Top = 120
  end
  object DepQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,GSBH,DepName,DepMemo from BDepartment '
      ' order by GSBH,DepName')
    Left = 176
    Top = 152
  end
end
