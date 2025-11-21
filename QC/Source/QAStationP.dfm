object QAStation: TQAStation
  Left = 310
  Top = 205
  Width = 498
  Height = 480
  Caption = 'QA Station Setup'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 80
    Top = 16
    Width = 312
    Height = 24
    Align = alCustom
    Caption = 'Setup Quality Inspection Work Station'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 482
    Height = 369
    Align = alCustom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GSBH'
        Title.Caption = 'FAT ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'csid'
        Title.Caption = 'QC Station ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'csname'
        Title.Caption = 'QC Station Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cglx'
        Title.Caption = 'Check Point'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'userdate'
        Title.Caption = 'Last Cheng Date'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 417
    Width = 482
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 144
    Top = 144
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'DB'
    TableName = 'dbo.QC_CheckStation'
    Left = 184
    Top = 144
    object Table1GSBH: TStringField
      FieldName = 'GSBH'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Table1csid: TStringField
      FieldName = 'csid'
      Required = True
      FixedChar = True
      Size = 5
    end
    object Table1csname: TStringField
      FieldName = 'csname'
      Required = True
    end
    object Table1cglx: TStringField
      FieldName = 'cglx'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Table1userid: TStringField
      FieldName = 'userid'
    end
    object Table1userdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
end
