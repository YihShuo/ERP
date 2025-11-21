object QCOnTime_sczl: TQCOnTime_sczl
  Left = 481
  Top = 189
  Width = 663
  Height = 451
  Caption = 'QCOnTime_sczl'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 48
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
      Top = 15
      Width = 67
      Height = 20
      Caption = 'Issue No:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 7
      Width = 145
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 264
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 655
    Height = 369
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
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
        FieldName = 'YYBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZWSM'
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YYBH,YWSM,ZWSM'
      'from  QCBLYY'
      ''
      'order by YYBH')
    Left = 424
    Top = 160
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.QCBLYY.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.QCBLYY.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.QCBLYY.ZWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end
