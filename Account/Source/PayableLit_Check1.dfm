object PayableLit_Check: TPayableLit_Check
  Left = 306
  Top = 244
  Width = 894
  Height = 412
  BorderIcons = [biSystemMenu]
  Caption = 'PayableLit_Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 40
      Height = 16
      Caption = 'ZSDH:'
    end
    object Label2: TLabel
      Left = 122
      Top = 19
      Width = 40
      Height = 16
      Caption = 'DJNO:'
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
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 640
      Top = 8
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 312
      Top = 13
      Width = 97
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 440
      Top = 13
      Width = 89
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 168
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 535
      Top = 20
      Width = 97
      Height = 17
      Caption = 'No Payment'
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 878
    Height = 315
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
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DJLX'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DJNO'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'DJDATE'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 375
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 73
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 184
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PayableLit.DS3
    SQL.Strings = (
      'select KCRKS.*,CWYF.FKBH '
      
        'from (select JGZL.ZSBH,'#39'JG'#39' as DJLX,'#39'ZZZZZZZZZZ'#39' as CGBH,JGZLS.J' +
        'GNO as DJNO,'
      
        '             JGZLS.CLBH,JGZL.CFMDATE1 as DJDATE,JGZLS.Qty,JGZLS.' +
        'USPrice,JGZLS.USACC,'
      
        '             JGZLS.CWHL,JGZLS.VNPrice, JGZLS.VNACC,JGZLS.CostID,' +
        'JGZLS.FKZT,CLZL.YWPM,CLZL.DWBH'
      '      from JGZLS'
      '      left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      '      left join CLZL on JGZLS.CLBH=CLZL.CLDH'
      '      left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
      
        '      where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,' +
        '111)) between '
      '            '#39'2009/02/01'#39' and '#39'2009/02/28'#39
      '            and JGZL.YN='#39'5'#39
      '            and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '            and JGZL.ZSBH like  '#39'VT07%'#39
      '            and ZSZL.ZSYWJC like '#39'TIN UY%'#39
      '            and JGZL.GSBH='#39'VA3'#39
      '      union '
      
        '      select KCRK.ZSBH,KCRKS.RKSB as DJLX,KCRKS.CGBH,KCRKS.RKNO ' +
        'as DJNO,'
      
        '             KCRKS.CLBH,KCRK.USERDATE as DJDATE,KCRKS.Qty,KCRKS.' +
        'USPrice,KCRKS.USACC,'
      
        '             KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,K' +
        'CRKS.FKZT,CLZL.YWPM,CLZL.DWBH'
      '      from KCRKS'
      '      left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      '      left join CLZL on KCRKS.CLBH=CLZL.CLDH'
      '      left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      
        '      where convert(smalldatetime,convert(varchar,KCRK.USERDATE,' +
        '111)) between   '
      '            '#39'2009/02/01'#39' and '#39'2009/02/28'#39
      '            and KCRK.ZSBH like  '#39'VT07%'#39
      '            and ZSZL.ZSYWJC like '#39'TIN UY%'#39
      '            and KCRK.YN='#39'5'#39
      '            and KCRK.GSBH='#39'VA3'#39
      '            ) KCRKS  '
      
        'left join CWYF on CWYF.DJLX=KCRKS.DJLX and CWYF.CGBH=KCRKS.CGBH ' +
        'and CWYF.DJNO=KCRKS.DJNO and CWYF.CLBH=KCRKS.CLBH '
      'order by KCRKS.DJNO,KCRKS.DJLX,KCRKS.CGBH,KCRKS.CLBH')
    Left = 272
    Top = 184
    object Query1FKZT: TStringField
      FieldName = 'FKZT'
      FixedChar = True
      Size = 1
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
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
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
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
  end
end
