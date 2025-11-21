object MaterialTraceScan: TMaterialTraceScan
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'MaterialTraceScan'
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
  object Splitter1: TSplitter
    Left = 561
    Top = 113
    Width = 5
    Height = 523
    Color = clHotLight
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 113
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 8
      Width = 91
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material code : '
    end
    object Label2: TLabel
      Left = 8
      Top = 63
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Remainder : '
    end
    object Label4: TLabel
      Left = 7
      Top = 86
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label6: TLabel
      Left = 232
      Top = 9
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
    end
    object Label15: TLabel
      Left = 193
      Top = 63
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'On way: '
    end
    object Label17: TLabel
      Left = 344
      Top = 63
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Need:'
    end
    object Label3: TLabel
      Left = 501
      Top = 63
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Unit:'
    end
    object DBText1: TDBText
      Left = 88
      Top = 86
      Width = 577
      Height = 16
      DataField = 'YWPM'
      DataSource = DS3
    end
    object DBText2: TDBText
      Left = 558
      Top = 63
      Width = 106
      Height = 16
      Alignment = taRightJustify
      DataField = 'DWBH'
      DataSource = DS3
    end
    object DBText3: TDBText
      Left = 85
      Top = 63
      Width = 104
      Height = 17
      Alignment = taRightJustify
      DataField = 'Remainder'
      DataSource = DS3
    end
    object DBText4: TDBText
      Left = 408
      Top = 63
      Width = 87
      Height = 17
      Alignment = taRightJustify
      DataField = 'NeedQty'
      DataSource = DS3
    end
    object DBText5: TDBText
      Left = 264
      Top = 63
      Width = 68
      Height = 17
      Alignment = taRightJustify
      DataField = 'OnQty'
      DataSource = DS3
    end
    object Label5: TLabel
      Left = 400
      Top = 8
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label8: TLabel
      Left = 34
      Top = 38
      Width = 70
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO No:'
    end
    object Label9: TLabel
      Left = 246
      Top = 37
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Invoice:'
    end
    object Edit1: TEdit
      Left = 107
      Top = 4
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
    end
    object Button1: TButton
      Left = 690
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Search'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 288
      Top = 5
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 424
      Top = 5
      Width = 113
      Height = 24
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 3
    end
    object CGNOEdit: TEdit
      Left = 107
      Top = 34
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object InvEdit: TEdit
      Left = 320
      Top = 34
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Button10: TButton
      Left = 690
      Top = 66
      Width = 75
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button10Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 566
    Top = 113
    Width = 723
    Height = 523
    Align = alClient
    Color = clWhite
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#21934#34399'|LLNO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #35330#21934'|SCBH'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #26085#26399'|DATE'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #39006#22411#25110#21934#20301'|Memo'
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #36914#21475#39006#21029'|HGLB'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364#30908'|CNO'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'LLNO_OWE'
        Footers = <>
        Title.Caption = #38936#26009#21934#34399'|LLNO_OWE'
        Width = 120
      end>
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 113
    Width = 561
    Height = 523
    Align = alLeft
    Color = clWhite
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #25475#25551#20837#24235'|SCNO'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830'ID|ZSBH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20837#24235#26085'|DATE'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #25976#37327'|Qty'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|MEMO'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Invoice'
        Footers = <>
        Title.Caption = #36008#27331'INV|DOCNO'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934'|ZLBH'
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #36914#21475#39006#21029'|HGLB'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364#30908'|CNO'
        Width = 84
      end>
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZ' +
        'L.CFMID1 as CFMID,JGZLS.Qty,'
      '      '#39'JG'#39' as Memo,'#39#39' as Invoice,'#39#39' as PaperNo '
      
        '       ,cast((select JGZLSS.ZLBH+'#39'( '#39'+Convert(varchar,JGZLSS.Qty' +
        ')+'#39' )'#39' + '#39','#39' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLS' +
        'S.CLBH=JGZLS.CLBH for XML Path ('#39#39')) as varchar(500))  as ZLBH,'#39 +
        'GC'#39' as HGLB,'#39#39' as CNO '
      'from JGZL,JGZLS '
      'where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' '
      'and JGZLS.CLBH='#39'A020003929'#39
      
        'and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween '
      #39'2022/07/01'#39
      ' and '#39'2022/07/18'#39
      'and JGZL.CKBH='#39'BYC'#39' '
      'union all'
      
        'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,K' +
        'CRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRK' +
        'S.CGBH as ZLBH,KCRK.HGLB,KCRKS.CNO '
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where KCRKS.CLBH='#39'A020003929'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '
      #39'2022/07/01'#39
      ' and '#39'2022/07/18'#39
      'and KCRK.CKBH='#39'BYC'#39' '
      'order by kcrk.USERDATE'
      '')
    Left = 160
    Top = 216
    object KCRKSCNO: TStringField
      FieldName = 'SCNO'
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCRK.USERDATE'
      DisplayFormat = 'm/d'
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCRKZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.KCRK.ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCRK.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 30
    end
    object KCRKZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object KCRKCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
  end
  object DS1: TDataSource
    DataSet = KCRK
    Left = 160
    Top = 248
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ( select * from ('
      ''
      'select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,'
      
        '   JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(f' +
        'loat,JGZLM.Qty),4) as Qty'
      
        '   ,cast((select JGZLSS.ZLBH+'#39'( '#39'+Convert(varchar,JGZLSS.Qty)+'#39' ' +
        ')'#39' + '#39','#39' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CL' +
        'BH=JGZLS.CLBH for XML Path ('#39#39')) as varchar(500))  as SCBH '
      '   , '#39'JG'#39' as Memo,'#39'GC'#39' as HGLB,'#39#39' as CNO '
      'from JGZLS  '
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      'left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        '          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(s' +
        'malldatetime,convert(varchar,JGZL.CFMDate1,111)) between '
      '          '#39'2022/07/01'#39' and '#39'2022/07/18'#39
      
        '          and convert(smalldatetime,convert(varchar,JGZL.CFMDate' +
        '1,111))<'#39'2017/09/01'#39' '
      '          and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' '
      'and JGZL.CKBH='#39'BYC'#39' '
      
        '          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.' +
        'CLBH'
      'where JGZL.CFMDate1>='#39'2022/07/01'#39
      
        '          and convert(smalldatetime,convert(varchar,JGZL.CFMDate' +
        '1,111))<'#39'2017/09/01'#39
      #9'and JGZLS.ZMLB='#39'A020003929'#39
      #9'and JGZL.CKBH='#39'BYC'#39' '
      #9'and JGZLS.ZMLB <>'#39'ZZZZZZZZZZ'#39' '
      'union all'
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, B' +
        'Department.DepName as Memo,KCLLS.HGLB,KCLLS.CNO'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'where  KCLLS.CLBH='#39'A020003929'#39
      #9'and KCLL.CKBH='#39'BYC'#39' '
      
        #9'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      #9#9' '#39'2022/07/01'#39
      #9'and '#39'2022/07/18'#39
      
        #9'and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>='#39 +
        '2017/09/01'#39
      #9'and KCLL.SCBH = '#39'JJJJJJJJJJ'#39')'
      ') JGCK '
      'union all'
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, B' +
        'Department.DepName as Memo,KCLLS.HGLB,KCLLS.CNO'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'where  KCLLS.CLBH='#39'A020003929'#39
      #9'and KCLL.CKBH='#39'BYC'#39' '
      #9'and KCLL.SCBH <> '#39'JJJJJJJJJJ'#39
      
        #9'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '
      #9#9' '#39'2022/07/01'#39
      #9'and '#39'2022/07/18'#39
      '    or KCLL.CFMDATE is null)'
      ') JGCK '
      'order by JGCK.CFMDate')
    Left = 560
    Top = 216
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'M/d'
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object KCLLHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object KCLLCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object KCLLLLNO_OWE: TStringField
      FieldName = 'LLNO_OWE'
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 560
    Top = 248
  end
  object Material: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CLDH,YWPM,DWBH,1000.00 as Remainder,'
      
        '        1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,100' +
        '0.00 as OnQty'
      'from CLZL ')
    UpdateObject = UpSQL1
    Left = 248
    Top = 96
  end
  object UpSQL1: TUpdateSQL
    Left = 248
    Top = 160
  end
  object DS3: TDataSource
    DataSet = Material
    Left = 248
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    Top = 280
    object EXCEL1: TMenuItem
      Caption = 'Excel'
      OnClick = EXCEL1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 160
    Top = 280
    object EXCEL2: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL2Click
    end
  end
end
