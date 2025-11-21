object colorsetup: Tcolorsetup
  Left = 252
  Top = 193
  Width = 708
  Height = 480
  Caption = 'Color Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 33
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = -8
      Top = 0
      Width = 700
      Height = 41
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 692
    Height = 409
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ColorNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EnglishName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ChinaNmae'
        Visible = True
      end>
  end
  object Table1: TTable
    DatabaseName = 'db'
    TableName = 'dbo.ColorClass'
    Left = 80
    Top = 96
    object Table1ColorNo: TStringField
      FieldName = 'ColorNo'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Table1EnglishName: TStringField
      FieldName = 'EnglishName'
      Size = 100
    end
    object Table1ChinaNmae: TStringField
      FieldName = 'ChinaNmae'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 120
    Top = 96
  end
end
