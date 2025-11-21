object SamplePolicy_Style: TSamplePolicy_Style
  Left = 460
  Top = 228
  Width = 422
  Height = 498
  BorderIcons = [biSystemMenu]
  Caption = 'SamplePolicy_Style'
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
    Width = 414
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 414
    Height = 424
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = [fsBold]
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
        FieldName = 'Style'
        Width = 284
        Visible = True
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
