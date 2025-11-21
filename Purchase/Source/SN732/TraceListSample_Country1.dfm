object TraceListSample_Country: TTraceListSample_Country
  Left = 460
  Top = 228
  Width = 646
  Height = 497
  BorderIcons = [biSystemMenu]
  Caption = 'TraceListSample_Country'
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
    Width = 630
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
    object Label2: TLabel
      Left = 328
      Top = 10
      Width = 48
      Height = 20
      Caption = 'Label2'
      Enabled = False
    end
    object Button1: TButton
      Left = 118
      Top = 7
      Width = 89
      Height = 26
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 230
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
    Width = 630
    Height = 419
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
        FieldName = 'Country'
        Width = 208
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    select  ZSZL.Country  from ZSZL '
      
        '       WHERE ZSZL.Country is not null AND ZSZL.Country<>'#39#39'  and ' +
        '1=2'
      '       group by ZSZL.Country ORDER BY ZSZL.Country')
    Left = 272
    Top = 152
    object Query1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.ZSZL.Country'
      FixedChar = True
      Size = 10
    end
  end
end
