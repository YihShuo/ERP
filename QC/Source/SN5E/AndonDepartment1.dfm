object AndonDepartment: TAndonDepartment
  Left = 581
  Top = 297
  Width = 397
  Height = 413
  BorderIcons = [biSystemMenu]
  Caption = 'AndonDepartment'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 41
    Align = alTop
    TabOrder = 0
    object rbA: TRadioButton
      Left = 17
      Top = 13
      Width = 88
      Height = 18
      Caption = 'Assembly'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbAClick
    end
    object rbC: TRadioButton
      Left = 121
      Top = 13
      Width = 80
      Height = 18
      Caption = 'Cutting'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rbCClick
    end
    object rbS: TRadioButton
      Left = 210
      Top = 13
      Width = 87
      Height = 18
      Caption = 'Stitching'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rbSClick
    end
    object rbAll: TRadioButton
      Left = 306
      Top = 13
      Width = 49
      Height = 18
      Caption = 'All'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = rbAllClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 381
    Height = 333
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -10
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Width = 50
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct ID, DepName, GXLB from BDepartment Where 1 = 2')
    Left = 13
    Top = 119
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.BDepartment.GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 13
    Top = 88
  end
end
