object frm_mode: Tfrm_mode
  Left = 0
  Top = 0
  Caption = #36001#29986#31649#29702#26041#24335
  ClientHeight = 214
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 120
    Top = 24
    Width = 161
    Height = 120
    DataSource = dm.dsmode
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 80
    Top = 160
    Width = 240
    Height = 25
    DataSource = dm.dsmode
    TabOrder = 1
  end
end
