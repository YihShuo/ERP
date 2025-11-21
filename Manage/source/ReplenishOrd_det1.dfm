object ReplenishOrd_det: TReplenishOrd_det
  Left = 366
  Top = 203
  Width = 851
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishOrd_det'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 835
    Height = 391
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 248
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishOrd.DS1
    Left = 56
    Top = 64
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 152
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
