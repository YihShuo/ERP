object SonMaterial: TSonMaterial
  Left = 360
  Top = 209
  Width = 710
  Height = 320
  BorderIcons = [biSystemMenu]
  Caption = 'SonMaterial'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 73
      Height = 20
      Caption = 'Mat Code:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 24
      Width = 153
      Height = 28
      TabOrder = 0
    end
    object Button1: TButton
      Left = 272
      Top = 24
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 702
    Height = 221
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cldh1'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 469
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccq'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccq1'
        Width = 36
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLZHZL.*,CLZL.YWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZl on CLZL.CLDH=CLZHZL.CLDH1'
      'where CLZHZL.CLDH=:CLDH'
      'order by CLZHZL.CLDH1')
    Left = 152
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object Query1cldh1: TStringField
      FieldName = 'cldh1'
      Origin = 'DB.CLZHZL.cldh1'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1ccq: TStringField
      FieldName = 'ccq'
      Origin = 'DB.CLZHZL.ccq'
      FixedChar = True
      Size = 6
    end
    object Query1ccq1: TStringField
      FieldName = 'ccq1'
      Origin = 'DB.CLZHZL.ccq1'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 120
  end
end
