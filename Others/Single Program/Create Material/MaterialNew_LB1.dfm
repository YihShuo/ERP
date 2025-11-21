object MaterialNew_LB: TMaterialNew_LB
  Left = 427
  Top = 227
  Width = 534
  Height = 383
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialNew_LB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 518
    Height = 297
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'LBBH'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMO'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CMEMO'
        Width = 160
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 48
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 46
      Height = 18
      Caption = 'LBBH:'
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 53
      Height = 18
      Caption = 'MEMO:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 89
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 224
      Top = 8
      Width = 145
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 384
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  *'
      'from CLLBVN'
      'order by LBBH')
    Left = 432
    Top = 280
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
      Size = 50
    end
    object Query1CMEMO: TStringField
      FieldName = 'CMEMO'
      Origin = 'DB.CLLBVN.CMEMO'
      FixedChar = True
      Size = 50
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
    Left = 392
    Top = 280
  end
end
