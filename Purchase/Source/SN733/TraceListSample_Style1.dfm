object TraceListSample_Style: TTraceListSample_Style
  Left = 440
  Top = 162
  Width = 422
  Height = 498
  BorderIcons = [biSystemMenu]
  Caption = 'TraceListSample_Style'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 10
      Width = 48
      Height = 20
      Caption = 'Label1'
    end
    object Button1: TButton
      Left = 201
      Top = 7
      Width = 89
      Height = 26
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 305
      Top = 6
      Width = 89
      Height = 26
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 40
    Width = 406
    Height = 418
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Style'
        Footers = <>
        Width = 116
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    select  ZSZL.Style  from ZSZL '
      '       WHERE ZSZL.Style is not null AND ZSZL.Style<>'#39#39'  and 1=2'
      '       group by ZSZL.Style ORDER BY ZSZL.Style')
    Left = 248
    Top = 160
    object Query1Style: TStringField
      FieldName = 'Style'
      Origin = 'DB.ZSZL.Style'
      FixedChar = True
    end
  end
end
