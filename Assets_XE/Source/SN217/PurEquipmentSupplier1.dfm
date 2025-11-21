object PurEquipmentSupplier: TPurEquipmentSupplier
  Left = 378
  Top = 215
  Caption = 'PurEquipmentSupplier'
  ClientHeight = 283
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 14
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 102
      Top = 14
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 312
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 34
      Top = 11
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 151
      Top = 11
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 449
    Height = 234
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ZSDH'
        Title.Caption = 'No.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_yw'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_zw'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_vw'
        Width = 124
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select ZSDH,zsjc_yw,zsjc_zw,zsjc_vw'
      'from TSCD_ZSZL ')
    Left = 256
    Top = 168
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      Origin = 'DB.TSCD_ZSZL.ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      Origin = 'DB.TSCD_ZSZL.zsjc_yw'
      FixedChar = True
    end
    object Query1zsjc_zw: TStringField
      FieldName = 'zsjc_zw'
      Origin = 'DB.TSCD_ZSZL.zsjc_zw'
      FixedChar = True
    end
    object Query1zsjc_vw: TStringField
      FieldName = 'zsjc_vw'
      Origin = 'DB.TSCD_ZSZL.zsjc_vw'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 128
  end
end
