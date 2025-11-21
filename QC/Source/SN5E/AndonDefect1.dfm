object AndonDefect: TAndonDefect
  Left = 581
  Top = 297
  Width = 603
  Height = 358
  BorderIcons = [biSystemMenu]
  Caption = 'AndonDefect'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
    Top = 0
    Width = 587
    Height = 319
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -10
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = 'Defect ID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Defect Name (EN)'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = 'Defect Name (VN)'
        Width = 250
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT QCBLYY.YYBH, QCBLYY.YWSM, QCBLYY.ZWSM FROM QCBLYY'
      
        'WHERE QCBLYY.DFL = '#39'AR'#39' AND QCBLYY.GSBH = '#39'VA12'#39' AND QCBLYY.YN =' +
        ' '#39'2'#39
      'ORDER BY QCBLYY.YYBH')
    Left = 13
    Top = 79
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'LIY_ERP.QCBLYY.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'LIY_ERP.QCBLYY.YWSM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'LIY_ERP.QCBLYY.ZWSM'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 13
    Top = 48
  end
end
