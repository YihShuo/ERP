object MatType_Det: TMatType_Det
  Left = 395
  Top = 240
  Width = 497
  Height = 353
  BorderIcons = [biSystemMenu]
  Caption = 'MatType_Det'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
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
      Top = 12
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 481
    Height = 257
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'CMEMO'
        Footers = <>
        Width = 163
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLLBFY'
      'order by LBBH')
    Left = 176
    Top = 136
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
    Top = 136
  end
end
