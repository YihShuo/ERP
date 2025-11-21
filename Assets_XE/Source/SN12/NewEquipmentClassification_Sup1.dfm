object NewEquipmentClassification_Sup: TNewEquipmentClassification_Sup
  Left = 585
  Top = 270
  Caption = 'NewEquipment Classification_Sup'
  ClientHeight = 258
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 557
    object Label1: TLabel
      Left = 0
      Top = 14
      Width = 60
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 129
      Top = 16
      Width = 75
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 520
      Top = 10
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object zsdhEdit: TEdit
      Left = 66
      Top = 11
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object zsjc_ywEdit: TEdit
      Left = 207
      Top = 13
      Width = 98
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object zsjc_zwEdit: TEdit
      Left = 311
      Top = 13
      Width = 98
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object zsjc_vwEdit: TEdit
      Left = 415
      Top = 13
      Width = 98
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 636
    Height = 209
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
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'zsdh'
        Title.Caption = 'No.'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_yw'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_zw'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc_vw'
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD_ZSZL.zsdh,TSCD_ZSZL.zsjc_yw,TSCD_ZSZL.zsjc_zw,TSCD_Z' +
        'SZL.zsjc_vw'
      'from TSCD_ZSZL'
      'where TSCD_ZSZL.ZSDH like'#39'%'#39'  '
      '      and TSCD_ZSZL.zsjc_yw like'#39'%'#39' '
      '      and TSCD_ZSZL.zsjc_vw like '#39'%%'#39
      '      and TSCD_ZSZL.zsjc_zw like '#39'%%'#39)
    Left = 256
    Top = 168
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
    end
    object Query1zsjc_zw: TStringField
      FieldName = 'zsjc_zw'
      FixedChar = True
    end
    object Query1zsjc_vw: TStringField
      FieldName = 'zsjc_vw'
      FixedChar = True
    end
  end
end
