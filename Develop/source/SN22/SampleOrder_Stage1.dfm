object SampleOrder_Stage: TSampleOrder_Stage
  Left = 360
  Top = 192
  Width = 687
  Height = 500
  Caption = 'SampleOrder_Stage'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 671
    Height = 49
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
      Top = 16
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 136
      Top = 16
      Width = 62
      Height = 20
      Caption = 'Chinese:'
    end
    object Label3: TLabel
      Left = 352
      Top = 13
      Width = 56
      Height = 20
      Caption = 'English:'
    end
    object lbdhEdit: TEdit
      Left = 40
      Top = 13
      Width = 73
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = lbdhEditKeyDown
    end
    object Button1: TButton
      Left = 556
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ZWSMEdit: TEdit
      Left = 200
      Top = 11
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = lbdhEditKeyDown
    end
    object YWSMEdit: TEdit
      Left = 412
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = lbdhEditKeyDown
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 671
    Height = 413
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'lbdh'
        Footers = <>
        Title.Caption = #38542#27573'No|No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #20013#25991#35498#26126'|Chinese'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #33521#25991#35498#26126'|English'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object DS1: TDataSource
    DataSet = StageQry
    Left = 424
    Top = 128
  end
  object StageQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select lbdh,ZWSM,YWSM from lbzls where  lbzls.lb = '#39'04'#39'  ')
    Left = 424
    Top = 160
    object StageQrylbdh: TStringField
      DisplayWidth = 5
      FieldName = 'lbdh'
      FixedChar = True
      Size = 4
    end
    object StageQryZWSM: TStringField
      DisplayWidth = 23
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object StageQryYWSM: TStringField
      DisplayWidth = 50
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
end
