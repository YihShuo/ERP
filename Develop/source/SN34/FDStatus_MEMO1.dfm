object FDStatus_MEMO: TFDStatus_MEMO
  Left = 447
  Top = 159
  Width = 476
  Height = 612
  BorderIcons = [biSystemMenu]
  Caption = 'FDStatus_MEMO'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 36
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 5
      Width = 81
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object dbgrdh3: TDBGridEh
    Left = 0
    Top = 36
    Width = 460
    Height = 538
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
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LineNum'
        Footers = <>
        Title.Caption = 'Item'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 394
      end>
  end
  object DS1: TDataSource
    Left = 184
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select LineNum,Remark from ypzls2'
      'where ypdh=:ypdh'
      'order by linenum')
    Left = 180
    Top = 160
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object strngfldqry4LineNum: TStringField
      FieldName = 'LineNum'
      Origin = 'DB.ypzls2.LineNum'
      FixedChar = True
      Size = 3
    end
    object strngfldqry4Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.ypzls2.Remark'
      FixedChar = True
      Size = 100
    end
  end
end
