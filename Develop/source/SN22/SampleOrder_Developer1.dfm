object SampleOrder_Developer: TSampleOrder_Developer
  Left = 674
  Top = 425
  Width = 604
  Height = 383
  Caption = 'SampleOrder_Developer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 52
    Width = 588
    Height = 292
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FDTeam'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'Engname'
        Footers = <>
        Width = 145
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 52
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 15
      Width = 45
      Height = 16
      Caption = 'UserID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 171
      Top = 16
      Width = 61
      Height = 16
      Caption = 'Engname:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object UserID: TEdit
      Left = 54
      Top = 11
      Width = 97
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Engname: TEdit
      Left = 236
      Top = 12
      Width = 107
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 369
      Top = 9
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FDGroups.FDTeam,FDEng.Engname'
      
        'from FDGroups left join FDGroup on FDGroup.FDTeam=FDGroups.FDTea' +
        'm'
      '   left join busers FDEng on FDEng.userid=FDGroups.FDID'
      'group by FDGroups.FDTeam,FDEng.Engname')
    Left = 152
    Top = 136
    object Query1FDTeam: TStringField
      FieldName = 'FDTeam'
      FixedChar = True
      Size = 10
    end
    object Query1Engname: TStringField
      FieldName = 'Engname'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 136
  end
end
