object TestItemChoose: TTestItemChoose
  Left = 242
  Top = 127
  Width = 1082
  Height = 560
  Caption = 'TestItemChoose'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 1066
    Height = 475
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1044
      Height = 465
      Align = alCustom
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'Brand'
          Footers = <>
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'TestID'
          Footers = <>
          Width = 182
        end
        item
          EditButtons = <>
          FieldName = 'TestReason'
          Footers = <>
          Width = 227
        end
        item
          EditButtons = <>
          FieldName = 'UserID'
          Footers = <>
          Width = 149
        end
        item
          EditButtons = <>
          FieldName = 'UserDate'
          Footers = <>
          Width = 164
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1066
    Height = 46
    Align = alTop
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 26
      Top = 13
      Width = 118
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'CDC'
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select GSBH,Brand,TestID,TestReason,UserID,UserDate from Lab_Tes' +
        'tReason where 1=2')
    Left = 112
    Top = 144
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.Lab_TestReason.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Brand: TStringField
      FieldName = 'Brand'
      Origin = 'DB.Lab_TestReason.Brand'
      FixedChar = True
      Size = 4
    end
    object Query1TestID: TStringField
      FieldName = 'TestID'
      Origin = 'DB.Lab_TestReason.TestID'
      FixedChar = True
    end
    object Query1TestReason: TStringField
      FieldName = 'TestReason'
      Origin = 'DB.Lab_TestReason.TestReason'
      FixedChar = True
      Size = 200
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.Lab_TestReason.UserID'
      FixedChar = True
      Size = 50
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.Lab_TestReason.UserDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 96
  end
end
