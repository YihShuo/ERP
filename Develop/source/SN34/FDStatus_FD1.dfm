object FDStatus_FD: TFDStatus_FD
  Left = 543
  Top = 182
  Width = 204
  Height = 504
  BorderIcons = [biSystemMenu]
  Caption = 'FDStatus_FD'
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
    Width = 188
    Height = 27
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 5
      Top = 3
      Width = 65
      Height = 21
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 27
    Width = 188
    Height = 438
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
    TabOrder = 1
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
        FieldName = 'FD'
        Footer.ValueType = fvtCount
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    select  XXZLKF.FD'
      '     from kfxxzl'
      
        '     left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlk' +
        'f.SheHao=kfxxzl.SheHao'
      '       WHERE XXZLKF.FD IS NOT NULL AND 1=2'
      '        group by XXZLKF.FD'
      '')
    Left = 72
    Top = 128
    object Query1FD: TStringField
      FieldName = 'FD'
      Origin = 'DB.xxzlKF.FD'
      FixedChar = True
    end
  end
end
