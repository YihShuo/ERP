object MatPrice_For: TMatPrice_For
  Left = 411
  Top = 269
  Width = 511
  Height = 367
  BorderIcons = [biSystemMenu]
  Caption = 'MatPrice_For'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 495
    Height = 328
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
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
        FieldName = 'DJYear'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DJMonth'
        Footers = <>
        Title.Caption = 'Mon'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 24
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = MatPrice.DS1
    SQL.Strings = (
      'select *'
      'from CWDJ'
      'where CLBH=:CLBH'
      'order by DJYEAR DESC,DJMONTH DESC')
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1DJYear: TStringField
      FieldName = 'DJYear'
      Origin = 'DB.CWDJ.DJYear'
      FixedChar = True
      Size = 4
    end
    object Query1DJMonth: TStringField
      FieldName = 'DJMonth'
      Origin = 'DB.CWDJ.DJMonth'
      FixedChar = True
      Size = 2
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CWDJ.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CWDJ.USPrice'
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.CWDJ.SB'
      FixedChar = True
      Size = 1
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CWDJ.USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CWDJ.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.CWDJ.VNPrice'
    end
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
      Origin = 'DB.CWDJ.CWHL'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
end
