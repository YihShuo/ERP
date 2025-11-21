object Declaretion_Check: TDeclaretion_Check
  Left = 429
  Top = 270
  Width = 1367
  Height = 440
  Caption = 'Declaretion_Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1351
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 202
      Top = 14
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 589
      Top = 60
      Width = 16
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 434
      Top = 56
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 56
      Width = 49
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 186
      Top = 56
      Width = 76
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Declaretion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 354
      Top = 18
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 608
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 66
      Top = 10
      Width = 109
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 266
      Top = 9
      Width = 62
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'NK'
    end
    object DTP1: TDateTimePicker
      Left = 502
      Top = 54
      Width = 89
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 612
      Top = 54
      Width = 89
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 66
      Top = 51
      Width = 107
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 266
      Top = 51
      Width = 160
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object chk1: TCheckBox
      Left = 503
      Top = 16
      Width = 97
      Height = 17
      Caption = 'No OK'
      TabOrder = 7
    end
    object CB1: TComboBox
      Left = 419
      Top = 11
      Width = 66
      Height = 28
      ItemHeight = 20
      TabOrder = 8
      Text = 'CB1'
    end
    object Button2: TButton
      Left = 712
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1351
    Height = 296
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty_In'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty_Out'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Lack_Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 80
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select kcrks.*,Qty_In-isnull(qty_out,0)  as Lack_Qty '
      'From (  '
      
        #9#9'--Select kcrk.RKNO,KCPK.Declaretion,kcrks.clbh,clzl.ywpm,clzl.' +
        'dwbh,kcrk.ckbh,kcrk.hglb,zsywjc,kcrks.Qty as Qty_In,sum(kcpkll.Q' +
        'ty) as Qty_Out '
      
        #9#9'Select KCRK.CKBH,KCRK.RKNO,KCPK.Declaretion,KCRK.ZSBH,zszl.ZSY' +
        'WJC,KCRKS.CLBH,clzl.YWPM,clzl.DWBH,KCRK.HGLB,KCRK.USERDATE,kcrks' +
        '.Qty as Qty_In,sum(kcpkll.Qty) as Qty_Out  '
      
        '        From ( Select kcrks.rkno,kcrks.clbh,sum(kcrks.qty) as Qt' +
        'y From kcrks Group by kcrks.rkno,kcrks.clbh)kcrks '
      '               Left join kcrk on kcrks.rkno=kcrk.rkno  '
      
        '               Left join kcpkll on kcpkll.PKNO=KCRK.RKNO and KCP' +
        'KLL.CLBH=KCRKS.CLBH '
      
        '               Left join (Select kclls.llno,kclls.clbh,kclls.HGL' +
        'b,sum(qty) as Qty From kclls Group by kclls.llno,kclls.CLBH,kcll' +
        's.HGLB) kclls on kcpkll.LLNO=kclls.llno and kcpkll.CLBH=kclls.CL' +
        'BH '
      
        '               Left join kcll on kclls.llno=kcll.llno and kcll.c' +
        'kbh=kcrk.CKBH and kclls.HGLB=kcrk.HGLB and kclls.CLBH=KCPKLL.CLB' +
        'H '
      '               Left join KCPK on kcrk.RKNO=kcpk.PKNO '
      '               Left join zszl on kcrk.ZSBH=zszl.zsdh '
      '               Left join clzl on clzl.cldh=kcrks.CLBH '
      '               Where kcrk.HGLB  like '#39'NK%'#39'  and kcrk.ckbh='#39'CDC'#39' '
      #9#9#9'   and kcrks.CLBH like '#39'P210032262%'#39
      '             --and kcrk.RKNO like '#39'%'#39' '
      '             --and KCPK.Declaretion like '#39'106471486660%'#39' '
      
        '               and convert(smalldatetime,convert(varchar,kcrk.us' +
        'erdate,111)) between '#39'2024/08/01'#39' and '#39'2024/08/31'#39' '
      
        '        Group by KCRK.CKBH,KCRK.RKNO,KCPK.Declaretion,KCRK.ZSBH,' +
        'zszl.ZSYWJC,KCRKS.CLBH,clzl.YWPM,clzl.DWBH,KCRK.HGLB,KCRK.USERDA' +
        'TE,kcrks.Qty ) KCRKS  '
      'Where 1=1 '
      ' --and  isnull(qty_out,0)<Qty_In  '
      'Order by KCRKS.RKNO'
      '')
    Left = 248
    Top = 208
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
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
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1Qty_In: TCurrencyField
      FieldName = 'Qty_In'
    end
    object Query1Qty_Out: TCurrencyField
      FieldName = 'Qty_Out'
    end
    object Query1Lack_Qty: TCurrencyField
      FieldName = 'Lack_Qty'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 168
  end
end
