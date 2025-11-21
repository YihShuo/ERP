object rftinput: Trftinput
  Left = 408
  Top = 224
  Width = 206
  Height = 239
  Caption = 'RFTEDIT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 190
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
    Align = alTop
    DragMode = dmAutomatic
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 190
    Height = 176
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
        FieldName = 'line'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RFT'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 128
    Top = 104
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'ds'
    Filter = 'GSBH='#39'VB'#39
    Filtered = True
    TableName = 'dbo.QC_rfttemp'
    Left = 96
    Top = 104
    object Table1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Table1line: TStringField
      FieldName = 'line'
      Required = True
      FixedChar = True
      Size = 10
    end
    object Table1RFT: TFloatField
      FieldName = 'RFT'
    end
  end
end
