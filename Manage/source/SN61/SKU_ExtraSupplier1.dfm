object SKU_ExtraSupplier: TSKU_ExtraSupplier
  Left = 405
  Top = 239
  Width = 615
  Height = 317
  Caption = 'SKU_ExtraSupplier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 11
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label3: TLabel
      Left = 181
      Top = 11
      Width = 85
      Height = 20
      Caption = 'ShortName:'
    end
    object Button1: TButton
      Left = 409
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 48
      Top = 8
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 272
      Top = 8
      Width = 129
      Height = 28
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 599
    Height = 238
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
        Title.Caption = 'NO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSYWJC'
        Title.Caption = 'Supplier'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZSQM'
        Title.Caption = 'Desc'
        Width = 337
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ZSDH,ZSYWJC,ZSQM from ZSZL')
    Left = 424
    Top = 160
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSQM: TStringField
      FieldName = 'ZSQM'
      FixedChar = True
      Size = 50
    end
  end
end
