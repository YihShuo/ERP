object AccountEntry_Det: TAccountEntry_Det
  Left = 358
  Top = 196
  Width = 870
  Height = 500
  Caption = 'AccountEntry_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 864
      Height = 13
      Caption = 
        '****************************************************************' +
        '****************************************************************' +
        '****************************************************************' +
        '************************'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 854
    Height = 420
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Width = 64
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = AccountEntry.DS1
    SQL.Strings = (
      
        'select KCRK.*,KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC ,KCZLS.CWB' +
        'H '
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH '
      
        'where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between '
      #39'2008/04/01'#39' and '#39'2008/04/30'#39
      ' and KCRKS.CostID='#39'152'#39
      ' and KCZLS.CWBH='#39'152'#39' '
      ' and KCRK.YN='#39'5'#39
      ' order by KCRKs.CLBH,KCRK.ZSBH,KCRK.RKNO')
    Left = 192
    Top = 72
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1CWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 200
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
