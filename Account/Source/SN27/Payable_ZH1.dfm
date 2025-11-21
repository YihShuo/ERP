object Payable_ZH: TPayable_ZH
  Left = 469
  Top = 194
  Width = 523
  Height = 349
  BorderIcons = [biSystemMenu]
  Caption = 'Payable_ZH'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 507
    Height = 310
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZHBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'BankNo'
        Footers = <>
        Width = 188
      end
      item
        EditButtons = <>
        FieldName = 'ZHJC'
        Footers = <>
        Width = 181
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
      'select *'
      'from CWZH')
    Left = 424
    Top = 160
    object Query1ZHBH: TStringField
      FieldName = 'ZHBH'
      Origin = 'DB.CWZH.ZHBH'
      FixedChar = True
      Size = 2
    end
    object Query1BankNo: TStringField
      FieldName = 'BankNo'
      Origin = 'DB.CWZH.BankNo'
      FixedChar = True
      Size = 25
    end
    object Query1ZHJC: TStringField
      FieldName = 'ZHJC'
      Origin = 'DB.CWZH.ZHJC'
      FixedChar = True
    end
    object Query1BankName: TStringField
      FieldName = 'BankName'
      Origin = 'DB.CWZH.BankName'
      FixedChar = True
      Size = 50
    end
    object Query1ADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'DB.CWZH.ADDRESS'
      FixedChar = True
      Size = 100
    end
    object Query1Telphone: TStringField
      FieldName = 'Telphone'
      Origin = 'DB.CWZH.Telphone'
      FixedChar = True
      Size = 15
    end
    object Query1FAX: TStringField
      FieldName = 'FAX'
      Origin = 'DB.CWZH.FAX'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWZH.USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWZH.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CWZH.YN'
      FixedChar = True
      Size = 1
    end
  end
end
