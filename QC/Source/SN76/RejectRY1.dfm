object RejectRY: TRejectRY
  Left = 434
  Top = 124
  Width = 370
  Height = 392
  Caption = 'RejectRY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object edtRY: TEdit
      Left = 29
      Top = 12
      Width = 111
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object btnQ: TButton
      Left = 177
      Top = 7
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = btnQClick
    end
  end
  object DB_RY: TDBGridEh
    Left = 0
    Top = 44
    Width = 354
    Height = 309
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 0
    OnDblClick = DB_RYDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 62
      end>
  end
  object Qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 162
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = QryRY
    Left = 216
    Top = 136
  end
  object QryRY: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT RY, '#39#39' as Stage, '#39#39' as Season'
      'FROM MaterialQCcheck_RY mr'
      'WHERE 1=2')
    UpdateObject = UpRY
    Left = 217
    Top = 168
    object StringField1: TStringField
      FieldName = 'RY'
      Origin = 'DB.MaterialQCcheck_RY.RY'
      FixedChar = True
      Size = 15
    end
    object QryRYStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 1
    end
    object QryRYSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 1
    end
  end
  object UpRY: TUpdateSQL
    Left = 217
    Top = 204
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 217
    Top = 242
    object btnCOPY: TMenuItem
      Caption = 'COPY'
      OnClick = btnCOPYClick
    end
  end
end
