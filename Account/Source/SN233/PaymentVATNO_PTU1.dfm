object PaymentVATNO_PTU: TPaymentVATNO_PTU
  Left = 786
  Top = 221
  Width = 596
  Height = 336
  Caption = 'PaymentVATNO_PTU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel22: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label63: TLabel
      Left = 210
      Top = 9
      Width = 85
      Height = 16
      Caption = 'Choose FKBH'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label68: TLabel
      Left = 16
      Top = 10
      Width = 35
      Height = 16
      Caption = 'FKBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMDEP: TButton
      Left = 336
      Top = 5
      Width = 73
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_QryPMDEPClick
    end
    object edt_code1: TEdit
      Left = 96
      Top = 8
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBGridEh6: TDBGridEh
    Left = 0
    Top = 41
    Width = 580
    Height = 256
    Align = alClient
    DataSource = DS5
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16757683
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh6DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
      end
      item
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'THANHTOAN'
        Footer.DisplayFormat = '#,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'NGAY_TAMUNG'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'NGAY_DUTINH_TT'
        Footers = <>
        Width = 150
      end>
  end
  object qry5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT a.FKBH,a.STT,a.LYDO, a.SOTIEN_TT, a.USERID, a.USERDATE, a' +
        '.YN'
      '  FROM CGZL_AdvanceS a'
      '   WHERE FKBH=:FKBH '
      ''
      '')
    Left = 364
    Top = 91
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry5FKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_AdvanceS.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry5THANHTOAN: TCurrencyField
      FieldName = 'THANHTOAN'
    end
    object qry5NGAY_TAMUNG: TDateTimeField
      FieldName = 'NGAY_TAMUNG'
    end
    object qry5NGAY_DUTINH_TT: TDateTimeField
      FieldName = 'NGAY_DUTINH_TT'
    end
    object qry5USERID_TAMUNG: TStringField
      FieldName = 'USERID_TAMUNG'
    end
  end
  object DS5: TDataSource
    DataSet = qry5
    Left = 364
    Top = 123
  end
end
