object YWCPKTForm: TYWCPKTForm
  Left = 328
  Top = 218
  Width = 928
  Height = 387
  Caption = 'YWCP_KT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Fy: TQuery
    DatabaseName = 'ERPVN'
    SQL.Strings = (
      'select top 1 * from DDZL')
    Left = 288
    Top = 152
  end
end
