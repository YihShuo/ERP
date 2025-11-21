object PurNoSize_Se: TPurNoSize_Se
  Left = 368
  Top = 219
  Width = 486
  Height = 343
  BorderIcons = [biSystemMenu]
  Caption = 'PurNoSize_Se'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 478
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 38
      Height = 16
      Caption = 'LBBH:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 113
      Height = 24
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 224
      Top = 8
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 33
      Caption = 'NEW'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 478
    Height = 252
    Align = alClient
    DataSource = DS1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'LBBH'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMO'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMEMO'
        Width = 159
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLLBFY'
      'order by LBBH')
    Left = 176
    Top = 88
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      Origin = 'DB.CLLBVN.LBBH'
      FixedChar = True
      Size = 4
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.CLLBVN.MEMO'
      FixedChar = True
    end
    object Query1CMEMO: TStringField
      FieldName = 'CMEMO'
      Origin = 'DB.CLLBVN.CMEMO'
      FixedChar = True
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CLLBVN.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CLLBVN.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CLLBVN.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 88
  end
end
