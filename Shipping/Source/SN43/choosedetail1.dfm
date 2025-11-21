object ChooseDetail: TChooseDetail
  Left = 491
  Top = 90
  Width = 1305
  Height = 675
  Caption = 'ChooseDetail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 637
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
      object Label1: TLabel
        Left = 208
        Top = 19
        Width = 55
        Height = 20
        Caption = 'Country'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
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
      object Edit1: TEdit
        Left = 272
        Top = 16
        Width = 121
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Button3: TButton
        Left = 408
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button3Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 57
      Width = 1287
      Height = 579
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 1285
        Height = 577
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1283
          Height = 40
          Align = alTop
          Caption = 'Country'
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
          Top = 41
          Width = 1283
          Height = 535
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
          OnDblClick = DBGridEh1DblClick
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
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 114
    Top = 162
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from shoetestDetail where class='#39'shipping'#39)
    Left = 114
    Top = 202
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.shoetestDetail.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.shoetestDetail.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.shoetestDetail.ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1VWSM: TStringField
      FieldName = 'VWSM'
      Origin = 'DB.shoetestDetail.VWSM'
      FixedChar = True
      Size = 50
    end
    object Query1class: TStringField
      FieldName = 'class'
      Origin = 'DB.shoetestDetail.class'
      FixedChar = True
      Size = 104
    end
  end
end
