object Payable_Det: TPayable_Det
  Left = 298
  Top = 217
  Width = 870
  Height = 500
  Caption = 'Payable_Det'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 862
    Height = 409
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DJLX'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'LX'
        Width = 23
      end
      item
        EditButtons = <>
        FieldName = 'DJNO'
        Footers = <>
        Title.Alignment = taCenter
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Alignment = taCenter
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Alignment = taCenter
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Alignment = taCenter
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Title.Alignment = taCenter
      end
      item
        EditButtons = <>
        FieldName = 'DJDATE'
        Footers = <>
        Title.Alignment = taCenter
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Alignment = taCenter
        Width = 326
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Alignment = taCenter
        Width = 37
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 40
      Height = 16
      Caption = 'ZSDH:'
    end
    object Label2: TLabel
      Left = 120
      Top = 24
      Width = 36
      Height = 16
      Caption = 'ZSJC:'
    end
    object Label3: TLabel
      Left = 272
      Top = 21
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 416
      Top = 21
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 536
      Top = 24
      Width = 18
      Height = 16
      Caption = 'LX:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 168
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 624
      Top = 8
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 312
      Top = 13
      Width = 97
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 440
      Top = 13
      Width = 89
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 4
    end
    object CB1: TComboBox
      Left = 560
      Top = 16
      Width = 57
      Height = 24
      Style = csDropDownList
      DropDownCount = 3
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'All'
      Items.Strings = (
        'All'
        'JG'
        'RK')
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = PayableLit.DS3
    RequestLive = True
    SQL.Strings = (
      
        'select KCRK.ZSBH,KCRKS.RKSB as DJLX,KCRKS.CGBH,KCRKS.RKNO as DJN' +
        'O,  '
      
        'KCRKS.CLBH,KCRK.USERDATE as DJDATE,KCRKS.Qty,KCRKS.USPrice,KCRKS' +
        '.USACC,KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC, '
      'KCRKS.CostID,KCRKS.FKZT,CLZL.YWPM,CLZL.DWBH'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on KCRKS.CLBH=CLZL.CLDH'
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between'
      #39'2008/06/01'#39
      'and '#39'2008/06/30'#39
      'and KCRKS.VNACC is not null'
      'union'
      
        'select JGZL.ZSBH,'#39'JG'#39' as DJLX,'#39'ZZZZZZZZZZ'#39' as CGBH,JGZLS.JGNO as' +
        ' DJNO,  '
      
        'JGZLS.CLBH,JGZL.CFMDATE1 as DJDATE,JGZLS.Qty,JGZLS.USPrice,JGZLS' +
        '.USACC,JGZLS.CWHL,JGZLS.VNPrice, JGZLS.VNACC, '
      'JGZLS.CostID,JGZLS.FKZT,CLZL.YWPM,CLZL.DWBH'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on JGZLS.CLBH=CLZL.CLDH'
      
        'where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) ' +
        'between'
      #39'2008/06/01'#39
      'and '#39'2008/06/30'#39
      'and JGZL.CFMID1<>'#39'NO'#39
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'and JGZLS.VNACC is not null ')
    UpdateObject = UpdateSQL1
    Left = 192
    Top = 72
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1DJLX: TStringField
      FieldName = 'DJLX'
      FixedChar = True
      Size = 2
    end
    object Query1DJNO: TStringField
      FieldName = 'DJNO'
      FixedChar = True
      Size = 11
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
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
    object Query1DJDATE: TDateTimeField
      FieldName = 'DJDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 15
    end
    object Query1FKZT: TStringField
      FieldName = 'FKZT'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 152
    object N1: TMenuItem
      Caption = 'Excel'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 192
    Top = 104
  end
  object CWHLS: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 232
  end
end
