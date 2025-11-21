object DetailChoose: TDetailChoose
  Left = 489
  Top = 296
  Width = 1305
  Height = 676
  Caption = 'DetailChoose'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 638
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1287
      Height = 56
      Align = alTop
      TabOrder = 0
      object Button1: TButton
        Left = 24
        Top = 16
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 112
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 57
      Width = 1287
      Height = 580
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 632
        Height = 578
        Align = alLeft
        Caption = 'Panel4'
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 630
          Height = 56
          Align = alTop
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 57
          Width = 630
          Height = 520
          Align = alClient
          DataSource = DataSource1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'YYBH'
              Footers = <>
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'YWSM'
              Footers = <>
              Width = 141
            end
            item
              EditButtons = <>
              FieldName = 'ZWSM'
              Footers = <>
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'VWSM'
              Footers = <>
              Width = 193
            end>
        end
      end
      object Panel5: TPanel
        Left = 633
        Top = 1
        Width = 653
        Height = 578
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 651
          Height = 56
          Align = alTop
          Caption = 'Parts'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 57
          Width = 651
          Height = 520
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'YYBH'
              Footers = <>
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'YWSM'
              Footers = <>
              Width = 148
            end
            item
              EditButtons = <>
              FieldName = 'ZWSM'
              Footers = <>
              Width = 165
            end
            item
              EditButtons = <>
              FieldName = 'VWSM'
              Footers = <>
              Width = 192
            end>
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from shoetestDetail where left(YYBH,2)='#39'MD'#39)
    Left = 114
    Top = 202
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1VWSM: TStringField
      FieldName = 'VWSM'
      FixedChar = True
      Size = 50
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from shoetestDetail where left(YYBH,2)='#39'BW'#39)
    Left = 706
    Top = 210
    object Query2YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query2VWSM: TStringField
      FieldName = 'VWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 114
    Top = 162
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 706
    Top = 178
  end
end
