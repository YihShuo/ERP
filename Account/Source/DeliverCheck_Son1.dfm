object DeliverCheck_Son: TDeliverCheck_Son
  Left = 470
  Top = 223
  Width = 485
  Height = 219
  BorderIcons = [biSystemMenu]
  Caption = 'DeliverCheck_Son'
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
    Width = 477
    Height = 185
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DeliverCheck.DS1
    SQL.Strings = (
      'select CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZL on CLZHZL.CLDH1=CLZl.CLDH'
      'where CLZHZL.CLDH=:CLBH')
    Left = 176
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 80
  end
end
