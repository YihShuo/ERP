object Payabled_CL: TPayabled_CL
  Left = 386
  Top = 164
  Width = 766
  Height = 516
  BorderIcons = [biSystemMenu]
  Caption = 'Payabled_CL'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 73
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
      Top = 20
      Width = 40
      Height = 16
      Caption = 'ZSDH:'
    end
    object Label2: TLabel
      Left = 113
      Top = 20
      Width = 36
      Height = 16
      Caption = 'ZSJC:'
    end
    object Label3: TLabel
      Left = 254
      Top = 19
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 396
      Top = 19
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 515
      Top = 19
      Width = 18
      Height = 16
      Caption = 'LX:'
    end
    object Label6: TLabel
      Left = 9
      Top = 47
      Width = 56
      Height = 16
      Caption = 'INVOICE:'
    end
    object Label7: TLabel
      Left = 273
      Top = 47
      Width = 41
      Height = 16
      Caption = 'Memo:'
    end
    object Edit1: TEdit
      Left = 52
      Top = 16
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 153
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 605
      Top = 33
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 293
      Top = 13
      Width = 97
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 421
      Top = 13
      Width = 89
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 4
    end
    object CB1: TComboBox
      Left = 539
      Top = 15
      Width = 57
      Height = 24
      Style = csDropDownList
      DropDownCount = 3
      ItemHeight = 16
      ItemIndex = 2
      TabOrder = 5
      Text = 'RK'
      Items.Strings = (
        'All'
        'JG'
        'RK')
    end
    object Button2: TButton
      Left = 674
      Top = 33
      Width = 64
      Height = 33
      Caption = 'COPY'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 72
      Top = 43
      Width = 197
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 320
      Top = 43
      Width = 185
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 73
    Width = 758
    Height = 412
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DJLX'
        Footers = <>
        Title.Caption = 'LX'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'DJNO'
        Footer.FieldName = 'DJNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footer.FieldName = 'USACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DJDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 318
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 57
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 104
  end
  object Query1: TQuery
    CachedUpdates = True
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    DataSource = PayableLit.DS3
    RequestLive = True
    SQL.Strings = (
      
        'select JGZL.ZSBH,'#39'JG'#39' as DJLX,'#39'ZZZZZZZZZZ'#39' as CGBH,JGZLS.JGNO as' +
        ' DJNO,'
      
        '       JGZLS.CLBH,JGZL.CFMDATE1 as DJDATE,JGZLS.Qty,JGZLS.USPric' +
        'e,JGZLS.USACC,'
      
        '       JGZLS.CWHL,JGZLS.VNPrice, JGZLS.VNACC,JGZLS.CostID,JGZLS.' +
        'FKZT,CLZL.YWPM,CLZL.DWBH,null as DOCNO,null as Memo'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on JGZLS.CLBH=CLZL.CLDH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
      
        'where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) ' +
        'between '
      '             '#39'2019/09/01'#39' and '#39'2019/09/30'#39
      '      and JGZLS.FKZT is null '
      '      and JGZL.YN='#39'5'#39
      '      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '      and JGZL.ZSBH like  '#39'VO01%'#39' '
      '      and ZSZL.ZSYWJC like '#39'OIA%'#39' '
      '      and JGZL.GSBH='#39'VA12'#39
      ' union all'
      
        'select KCRK.ZSBH,KCRKS.RKSB as DJLX,KCRKS.CGBH,KCRKS.RKNO as DJN' +
        'O,'
      
        '       KCRKS.CLBH,KCRK.USERDATE as DJDATE,KCRKS.Qty,KCRKS.USPric' +
        'e,KCRKS.USACC,'
      
        '       KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,KCRKS.F' +
        'KZT,CLZL.YWPM,CLZL.DWBH,KCRK.DOCNO,KCRK.Memo'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on KCRKS.CLBH=CLZL.CLDH'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between   '
      '             '#39'2019/09/01'#39' and '#39'2019/09/30'#39
      '      and  KCRKS.FKZT is null'
      '      and KCRK.DOCNO like '#39'%TXCL-H190903%'#39' '
      '      and KCRK.ZSBH like  '#39'VO01%'#39
      '      and ZSZL.ZSYWJC like '#39'OIA%'#39
      '      and KCRK.YN='#39'5'#39' '
      '      and KCRK.GSBH='#39'VA12'#39' '
      'order by DJNO,DJLX,CGBH,CLBH'
      '')
    UpdateObject = UpdateSQL1
    Left = 184
    Top = 104
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
      DisplayFormat = '##,#0.00000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
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
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
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
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 104
    object N1: TMenuItem
      Caption = 'Excel'
      OnClick = N1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 183
    Top = 136
  end
  object CWHLS: TQuery
    DatabaseName = 'DB'
    Left = 183
    Top = 170
  end
end
