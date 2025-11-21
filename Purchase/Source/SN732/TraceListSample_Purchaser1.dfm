object TraceListSample_Purchaser: TTraceListSample_Purchaser
  Left = 550
  Top = 235
  Width = 398
  Height = 437
  BorderIcons = [biSystemMenu]
  Caption = 'TraceListSample_Purchaser'
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
    Width = 382
    Height = 44
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
      Top = 13
      Width = 48
      Height = 20
      Caption = 'Label1'
    end
    object Button1: TButton
      Left = 192
      Top = 8
      Width = 89
      Height = 30
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 296
      Top = 8
      Width = 89
      Height = 30
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 382
    Height = 355
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
        FieldName = 'SamplePurchaser'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SamplePurchaser_Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = [fsBold]
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
      
        '    select  ZSZL.SamplePurchaser ,BUSERS.USERNAME as SamplePurch' +
        'aser_Name from ZSZL '
      '       left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser'
      
        '       WHERE ZSZL.SamplePurchaser is not null AND ZSZL.SamplePur' +
        'chaser<>'#39#39'  and 1=2'
      
        '       group by ZSZL.SamplePurchaser,BUSERS.USERNAME ORDER BY ZS' +
        'ZL.SamplePurchaser ')
    Left = 424
    Top = 160
    object Query1SamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      Origin = 'DB.ZSZL.SamplePurchaser'
      FixedChar = True
    end
    object Query1SamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      Origin = 'DB.BUSERS.USERNAME'
      FixedChar = True
      Size = 30
    end
  end
end
