object EquipmentSupplier_LB: TEquipmentSupplier_LB
  Left = 804
  Top = 392
  Width = 426
  Height = 386
  Caption = 'EquipmentSupplier_LB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 418
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
      Width = 43
      Height = 20
      Caption = 'ywsm:'
    end
    object Label2: TLabel
      Left = 142
      Top = 14
      Width = 44
      Height = 20
      Caption = 'zwsm:'
    end
    object Button1: TButton
      Left = 304
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ywsmEdit: TEdit
      Left = 51
      Top = 11
      Width = 87
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object zwsmEdit: TEdit
      Left = 191
      Top = 11
      Width = 106
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 418
    Height = 306
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
        FieldName = 'YWSM'
        Title.Caption = 'ywsm'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zwsm'
        Width = 148
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
      'Select zwsm,YWSM from TSCD_LBZLS where Layer=2')
    Left = 256
    Top = 168
    object Query1zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 50
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
end
