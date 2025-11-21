object Cond: TCond
  Left = 547
  Top = 176
  Width = 557
  Height = 410
  Caption = 'Cond'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
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
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 176
      Top = 32
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 408
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
      Width = 153
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 56
      Top = 24
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 541
    Height = 298
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
        FieldName = 'lbdh'
        Title.Caption = 'Cond'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZWSM'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 240
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
      'select lbdh,ZWSM,YWSM'
      'from lbzls'
      'where lb='#39'13'#39
      'order by ldbh')
    Left = 424
    Top = 160
    object Query1BWDH: TStringField
      FieldName = 'lbdh'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
  end
end
