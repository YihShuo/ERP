object CD_Department: TCD_Department
  Left = 569
  Top = 284
  Width = 592
  Height = 426
  Caption = 'Department'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 91
      Height = 17
      Caption = 'Department ID'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 219
      Top = 12
      Width = 113
      Height = 17
      Caption = 'Department Name'
      Layout = tlCenter
    end
    object Edit1: TEdit
      Left = 107
      Top = 8
      Width = 97
      Height = 25
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 341
      Top = 8
      Width = 145
      Height = 25
      TabOrder = 1
    end
    object Button1: TButton
      Left = 498
      Top = 6
      Width = 63
      Height = 27
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 40
    Width = 576
    Height = 347
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Xuong'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 68
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ID, DepName, GXLB, Xuong, GSBH FROM BDepartment')
    Left = 24
    Top = 120
    object Query1ID: TStringField
      FieldName = 'ID'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
    end
    object Query1Xuong: TStringField
      FieldName = 'Xuong'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 88
  end
end
