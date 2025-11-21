object OnTime_XH: TOnTime_XH
  Left = 361
  Top = 233
  Width = 549
  Height = 381
  Caption = 'OnTime_XH'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 21
      Height = 16
      Caption = 'XH:'
    end
    object Label2: TLabel
      Left = 176
      Top = 24
      Width = 42
      Height = 16
      Caption = 'FTime:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 81
      Height = 24
      TabOrder = 0
    end
    object CB1: TComboBox
      Left = 224
      Top = 16
      Width = 97
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Items.Strings = (
        '07:00'
        '07:30'
        '08:00'
        '08:30'
        '09:00'
        '09:30'
        '10:00'
        '10:30'
        '11:00'
        '11:30'
        '12:00'
        '12:30'
        '13:00'
        '13:30'
        '14:00'
        '14:30'
        '15:00'
        '15:30'
        '16:00'
        '16:30'
        '17:00'
        '17:30'
        '18:00'
        '18:30'
        '19:00'
        '19:30'
        '20:00'
        '20:30'
        '21:00'
        '21:30'
        '22:00'
        '22:30'
        '23:00'
        '23:30'
        '24:00'
        '00:30'
        '01:00'
        '01:30'
        '02:00'
        '02:30'
        '03:00'
        '03:30'
        '04:00'
        '04:30'
        '05:00'
        '05:30'
        '06:00'
        '06:30')
    end
    object Button1: TButton
      Left = 360
      Top = 16
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 64
    Width = 541
    Height = 283
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'FTime'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'TTime'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'YXGS'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 37
      end>
  end
  object SCSJ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from SCSJ')
    Left = 128
    Top = 209
    object SCSJXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.SCSJ.XH'
      FixedChar = True
      Size = 2
    end
    object SCSJFTime: TStringField
      FieldName = 'FTime'
      Origin = 'DB.SCSJ.FTime'
      FixedChar = True
      Size = 5
    end
    object SCSJTTime: TStringField
      FieldName = 'TTime'
      Origin = 'DB.SCSJ.TTime'
      FixedChar = True
      Size = 5
    end
    object SCSJUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCSJ.USERID'
      FixedChar = True
      Size = 15
    end
    object SCSJUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.SCSJ.USERDATE'
    end
    object SCSJYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCSJ.YN'
      FixedChar = True
      Size = 1
    end
    object SCSJYXGS: TFloatField
      FieldName = 'YXGS'
      Origin = 'DB.SCSJ.YXGS'
    end
  end
  object DS1: TDataSource
    DataSet = SCSJ
    Left = 160
    Top = 208
  end
end
