object RSLCFM: TRSLCFM
  Left = 307
  Top = 118
  Width = 1772
  Height = 736
  Caption = 'RSLCFM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1756
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 50
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLDH:'
    end
    object Label1: TLabel
      Left = 247
      Top = 50
      Width = 124
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppName:'
    end
    object Button1: TButton
      Left = 568
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 680
      Top = 16
      Width = 97
      Height = 33
      Caption = 'DC  Confirm'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 680
      Top = 56
      Width = 97
      Height = 33
      Caption = 'PD Confirm'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 94
      Top = 48
      Width = 153
      Height = 24
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 375
      Top = 47
      Width = 160
      Height = 24
      TabOrder = 4
    end
    object Button4: TButton
      Left = 568
      Top = 56
      Width = 97
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 800
      Top = 56
      Width = 121
      Height = 33
      Caption = 'PD Confirm All'
      TabOrder = 6
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 800
      Top = 16
      Width = 121
      Height = 33
      Caption = 'DC  Confirm All'
      TabOrder = 7
      OnClick = Button6Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1756
    Height = 592
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26009#34399'|MatNo'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029'|cllb'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'ID|SupID'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830#21517#31281'|SuppName'
        Width = 193
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#33521#25991'|ywpm'
        Width = 192
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#20013#25991'|zwpm'
        Width = 214
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'|dwbh'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #25505#21312'|cqdh'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DCYN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #38283#30332'RSL|DCYN'
        Width = 47
      end
      item
        Color = 12713983
        EditButtons = <>
        FieldName = 'DCCFM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        Title.Caption = #38283#30332'RSL|DCCFM'
        Width = 46
      end
      item
        DisplayFormat = 'yyyy/mm/dd'
        EditButtons = <>
        FieldName = 'DCDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #38283#30332'RSL|DCDate'
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'DCFilePage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = [fsUnderline]
        Footers = <>
        ReadOnly = True
        Title.Caption = #38283#30332'RSL|DCFilePage'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'PDYN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #37327#29986'RSL|PDYN'
        Width = 41
      end
      item
        Color = 12713983
        EditButtons = <>
        FieldName = 'PDCFM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        Title.Caption = #37327#29986'RSL|PDCFM'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'PDDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #37327#29986'RSL|PDDate'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'PDFilePage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'object BBTT1: TButton'
        Font.Style = [fsUnderline]
        Footers = <>
        ReadOnly = True
        Title.Caption = #37327#29986'RSL|PDFilePage'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'PDFilePageT2'
        Footers = <>
        Title.Caption = #37327#29986'RSL|PDFilePageT2'
        Width = 136
      end>
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update rstlist'
      'set'
      '  DCCFM = :DCCFM,'
      '  PDCFM = :PDCFM,'
      '  DCCFMDate = :DCCFMDate,'
      '  DCCFMID = :DCCFMID,'
      '  PDCFMDate = :PDCFMDate,'
      '  PDCFMID = :PDCFMID'
      'where'
      '  cldh = :OLD_cldh and'
      '  zsdh = :OLD_zsdh'
      '')
    Left = 340
    Top = 220
  end
  object DS1: TDataSource
    DataSet = CLZL
    Left = 380
    Top = 188
  end
  object CLZL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from clzl'
      'left join rstlist on clzl.cldh = rstlist.cldh'
      'left join zszl on rstlist.zsdh = zszl.zsdh')
    UpdateObject = UpMas
    Left = 340
    Top = 188
    object CLZLcldh: TStringField
      FieldName = 'cldh'
      Size = 10
    end
    object CLZLcllb: TStringField
      FieldName = 'cllb'
      Size = 4
    end
    object CLZLzsdh: TStringField
      FieldName = 'zsdh'
      Size = 6
    end
    object CLZLzsywjc: TStringField
      FieldName = 'zsywjc'
    end
    object CLZLzwpm: TStringField
      FieldName = 'zwpm'
      Size = 200
    end
    object CLZLywpm: TStringField
      FieldName = 'ywpm'
      Size = 200
    end
    object CLZLdwbh: TStringField
      FieldName = 'dwbh'
      Size = 4
    end
    object CLZLcqdh: TStringField
      FieldName = 'cqdh'
      Size = 4
    end
    object CLZLDCYN: TStringField
      FieldName = 'DCYN'
      Size = 1
    end
    object CLZLDCCFM: TStringField
      FieldName = 'DCCFM'
      Size = 1
    end
    object CLZLDCCFMDate: TDateTimeField
      FieldName = 'DCCFMDate'
    end
    object CLZLDCCFMID: TStringField
      FieldName = 'DCCFMID'
      Size = 10
    end
    object CLZLPDYN: TStringField
      FieldName = 'PDYN'
      Size = 1
    end
    object CLZLPDCFM: TStringField
      FieldName = 'PDCFM'
      Size = 1
    end
    object CLZLPDCFMDate: TDateTimeField
      FieldName = 'PDCFMDate'
    end
    object CLZLPDCFMID: TStringField
      FieldName = 'PDCFMID'
      Size = 10
    end
    object CLZLDCDate: TDateTimeField
      FieldName = 'DCDate'
    end
    object CLZLDCFilePage: TStringField
      FieldName = 'DCFilePage'
      Size = 150
    end
    object CLZLPDDate: TDateTimeField
      FieldName = 'PDDate'
    end
    object CLZLPDFilePage: TStringField
      FieldName = 'PDFilePage'
      Size = 150
    end
    object CLZLCreateID: TStringField
      FieldName = 'CreateID'
      Size = 10
    end
    object CLZLCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object CLZLUpdateID: TStringField
      FieldName = 'DCUpdateID'
      Size = 10
    end
    object CLZLUpdateDate: TDateTimeField
      FieldName = 'DCUpdateDate'
    end
    object CLZLPDUpdateID: TStringField
      FieldName = 'PDUpdateID'
      Size = 10
    end
    object CLZLPDUpdateDate: TDateTimeField
      FieldName = 'PDUpdateDate'
    end
    object CLZLGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CLZLPDFilePageT2: TStringField
      FieldName = 'PDFilePageT2'
      Size = 150
    end
  end
end
