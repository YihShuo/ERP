object SemiChemicalMonth_ZZ: TSemiChemicalMonth_ZZ
  Left = 458
  Top = 243
  Width = 1305
  Height = 675
  Caption = 'SemiChemicalMonth_ZZ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 177
    Width = 1289
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter3: TSplitter
    Left = 706
    Top = 180
    Width = 8
    Height = 456
    Align = alRight
    Color = clSkyBlue
    ParentColor = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1289
    Height = 177
    Align = alTop
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235#21029'|CKBH'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#21934#34399'|LLNO'
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934'|SCBH'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'VNACC_HG'
        Footer.FieldName = 'VNACC_HG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#30462#37329#38989'|VNACC'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #38936#26009#20195#30908'|YYBH'
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #38936#26009#21407#22240'|YWSM'
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Title.Caption = #26159#21542#35036#26009'|BLSB'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDate'
        Width = 80
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 714
    Top = 180
    Width = 575
    Height = 456
    Align = alRight
    DataSource = DS2
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Title.Caption = #32317#37329#38989'|VNACC'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <>
        Title.Caption = #30070#26376#25104#21697#20837#24235'|InQty'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'AVGZVNACC'
        Footers = <>
        Title.Caption = #24179#22343#25892#25552#37329#38989'|AVGZVNACC'
      end>
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 180
    Width = 706
    Height = 456
    Align = alClient
    DataSource = DS3
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
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235#21029'|CKBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#32232#34399'|RKNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Title.Caption = #35330#21934'|CGBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26009#34399'|CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#30462#37329#38989'|VNACC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 56
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KCLL.GSBH,KCLL.CKBH,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,KCLL' +
        'S.VNACC_HG,KCLLS.YYBH,SCBLYY.YWSM,KCLLS.BLSB,KCLL.CFMID,KCLL.CFM' +
        'Date'
      'From KCLL'
      'Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      'left join SCBLYY on KCLLS.YYBH=SCBLYY.YYBH'
      
        'where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) bet' +
        'ween '#39'2022/07/01'#39' and '#39'2022/07/29'#39
      '    and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      '         and KCLLS.CostID='#39'6211'#39' and KCLLS.SCBH='#39'ZZZZZZZZZZ'#39
      '         and KCLLS.VNACC_HG>0')
    Left = 208
    Top = 88
    object Query1GSBH: TStringField
      DisplayWidth = 6
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CKBH: TStringField
      DisplayWidth = 5
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1LLNO: TStringField
      DisplayWidth = 11
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      DisplayWidth = 14
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1VNACC_HG: TCurrencyField
      DisplayWidth = 12
      FieldName = 'VNACC_HG'
      DisplayFormat = '#,##0'
    end
    object Query1YYBH: TStringField
      DisplayWidth = 6
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      DisplayWidth = 12
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1BLSB: TStringField
      DisplayWidth = 5
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1CFMID: TStringField
      DisplayWidth = 7
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 1064
    Top = 272
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      'Select VNACC,InQty,VNACC/InQty as AVGZVNACC from ('
      #9'Select Sum(VNACC_HG) as VNACC '
      #9'From KCLL'
      #9'Left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        #9'where KCLL.CFMID<>'#39'NO'#39' and Convert(varchar,KCLL.CFMDate,111) be' +
        'tween '#39'2022/07/01'#39' and '#39'2022/07/29'#39
      #9'and KCLLS.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      #9'and KCLLS.CostID='#39'6211'#39' and KCLLS.SCBH='#39'ZZZZZZZZZZ'#39
      #9') KCLL'
      'left join ('
      #9'Select Sum(YWCP.Qty) as InQty  '
      #9'from YWCP with (nolock)'
      #9'left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH '
      
        #9'where convert(varchar,YWCP.Indate,111) between '#39'2022/07/01'#39' and' +
        ' '#39'2022/07/29'#39' '
      #9#9'and IsNull(YWCP.SB,'#39#39')<>'#39#39'  '
      ') B on 1=1')
    Left = 1024
    Top = 272
    object Query2VNACC: TCurrencyField
      DisplayWidth = 11
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query2InQty: TFloatField
      FieldName = 'InQty'
    end
    object Query2AVGZVNACC: TCurrencyField
      DisplayWidth = 15
      FieldName = 'AVGZVNACC'
      DisplayFormat = '#,##0.0000'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 104
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT KCRK.GSBH,KCRK.CKBH,KCRK.RKNO,KCRKS.CGBH,KCRKS.CLBH,KCRKS' +
        '.VNACC+KCRKS.ExchACC as VNACC,KCRK.CFMID,KCRK.CFMDATE'
      'FROM KCRKS'
      'LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO'
      'Left join KCCK on KCCK.CKBH=KCRK.CKBH '
      
        'WHERE Convert(varchar,KCRK.USERDATE,111) between '#39'2022/11/01'#39' an' +
        'd '#39'2022/11/30'#39' '
      'AND KCCK.GSBH='#39'VA12'#39
      'AND KCRKS.CostID LIKE '#39'6211%'#39
      'AND KCRK.HGLB in ('#39'NK'#39','#39'KD'#39','#39'HD'#39','#39'TC'#39')'
      'AND KCRKS.CGBH LIKE '#39'ZZZZ%'#39)
    Left = 192
    Top = 272
    object Query3GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query3CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query3CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query3CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 232
    Top = 272
  end
  object PopupMenu2: TPopupMenu
    Left = 352
    Top = 264
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
end
