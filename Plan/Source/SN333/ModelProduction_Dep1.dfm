object ModelProduction_Dep: TModelProduction_Dep
  Left = 554
  Top = 94
  Width = 351
  Height = 542
  Caption = 'ModelProduction_Dep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 335
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 27
      Top = 8
      Width = 40
      Height = 20
      Caption = 'Lean:'
    end
    object edLean: TEdit
      Left = 72
      Top = 4
      Width = 121
      Height = 28
      TabOrder = 0
    end
    object Button1: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 335
    Height = 462
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35506#21029'|Lean'
        Width = 199
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 200
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName as Lean from BDepartment'
      'where GSBH='#39'VA12'#39' '
      '      and GXLB='#39'S'#39
      '      and ProYN=1'
      ''
      '')
    Left = 160
    Top = 248
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1Lean: TStringField
      FieldName = 'Lean'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
end
