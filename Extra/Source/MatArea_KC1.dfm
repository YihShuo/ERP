object MatArea_KC: TMatArea_KC
  Left = 332
  Top = 175
  Width = 525
  Height = 387
  Caption = 'MatArea_KC'
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
    Width = 509
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 58
      Height = 20
      Caption = 'AreaNo:'
    end
    object Label2: TLabel
      Left = 152
      Top = 32
      Width = 80
      Height = 20
      Caption = 'AreaName:'
    end
    object Button1: TButton
      Left = 392
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 240
      Top = 24
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 80
      Top = 24
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 509
    Height = 276
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CKBH'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KCBH'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KCMC'
        Width = 296
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCZL.* from KCZL '
      'left join KCCK on KCCK.CKBH=KCZL.CKBH ')
    Left = 424
    Top = 160
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCZL.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      Origin = 'DB.KCZL.KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1KCMC: TStringField
      FieldName = 'KCMC'
      Origin = 'DB.KCZL.KCMC'
      FixedChar = True
      Size = 50
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCZL.USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCZL.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCZL.YN'
      FixedChar = True
      Size = 1
    end
  end
end
