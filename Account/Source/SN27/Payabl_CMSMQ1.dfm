object Payable_CMSMQ: TPayable_CMSMQ
  Left = 338
  Top = 193
  Width = 547
  Height = 384
  Caption = 'Payable_CMSMQ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 16
      Caption = 'PDBH:'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 43
      Height = 16
      Caption = 'PDNM:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 264
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object QryBtn: TButton
      Left = 424
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = QryBtnClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 531
    Height = 296
    Align = alClient
    DataSource = DS
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MQ001'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'PDBH'
        Width = 139
      end
      item
        EditButtons = <>
        FieldName = 'MQ002'
        Footers = <>
        Title.Caption = 'PDNM'
        Width = 303
      end>
  end
  object DS: TDataSource
    DataSet = CMSMQry
    Left = 416
    Top = 104
  end
  object CMSMQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CMSMQ')
    Left = 416
    Top = 136
    object CMSMQryMQ001: TStringField
      FieldName = 'MQ001'
      Origin = 'DB.CMSMQ.MQ001'
      FixedChar = True
      Size = 4
    end
    object CMSMQryMQ002: TStringField
      FieldName = 'MQ002'
      Origin = 'DB.CMSMQ.MQ002'
      FixedChar = True
      Size = 50
    end
  end
end
