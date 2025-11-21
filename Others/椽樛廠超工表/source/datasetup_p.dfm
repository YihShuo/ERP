object Datasetup: TDatasetup
  Left = 229
  Top = 218
  Width = 429
  Height = 500
  Caption = 'DataSetup'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 413
    Height = 439
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 413
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 48
    Top = 48
  end
  object Table1: TTable
    DatabaseName = 'dd'
    TableName = 'dbo.people'
    Left = 112
    Top = 64
  end
end
