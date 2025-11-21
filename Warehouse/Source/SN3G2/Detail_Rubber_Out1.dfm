object Detail_Rubber_Out: TDetail_Rubber_Out
  Left = 628
  Top = 59
  Width = 1305
  Height = 851
  Caption = 'Detail Rubber Out'
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
    Width = 1289
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 270
      Top = 45
      Width = 59
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 46
      Top = 45
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 373
      Top = 10
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Delivery No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 409
      Top = 46
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 41
      Top = 11
      Width = 85
      Height = 16
      Caption = 'Delivery Date:'
    end
    object Label4: TLabel
      Left = 223
      Top = 11
      Width = 21
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 628
      Top = 3
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 628
      Top = 38
      Width = 82
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 333
      Top = 41
      Width = 61
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
      Text = 'VR2'
      Items.Strings = (
        'VR2'
        'VR3')
    end
    object Edit1: TEdit
      Left = 454
      Top = 6
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 128
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Check: TCheckBox
      Left = 568
      Top = 46
      Width = 57
      Height = 17
      Caption = 'Mine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 456
      Top = 39
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Date: TCheckBox
      Left = 20
      Top = 11
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 129
      Top = 7
      Width = 89
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 247
      Top = 7
      Width = 89
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 73
    Width = 1289
    Height = 488
    Align = alTop
    DataSource = DSRubberOut
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Delivery No'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'Factory'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'LLRQ'
        Footers = <>
        Title.Caption = 'Delivery Date'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'RY#'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.Caption = 'Material No'
      end
      item
        EditButtons = <>
        FieldName = 'KGS_LL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Quantity'
      end
      item
        EditButtons = <>
        FieldName = 'PONO'
        Footers = <>
        Title.Caption = 'LotNo'
        Width = 327
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 93
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 605
    Width = 1289
    Height = 207
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.TitleButton = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.TitleButton = True
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.TitleButton = True
        Width = 23
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.TitleButton = True
        Width = 25
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 32
      end
      item
        Color = 15532031
        EditButtons = <>
        FieldName = 'TotQty'
        Footers = <
          item
            FieldName = 'TotQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 44
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'okCTS'
        Footers = <
          item
            FieldName = 'okCTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 46
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'TotokQty'
        Footers = <
          item
            FieldName = 'TotokQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 56
      end
      item
        Color = 8716287
        EditButtons = <>
        FieldName = 'NowokCTS'
        Footers = <
          item
            FieldName = 'NowokCTS'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 61
      end
      item
        Color = 8716287
        EditButtons = <>
        FieldName = 'NowokQty'
        Footers = <
          item
            FieldName = 'NowokQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        Width = 183
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 561
    Width = 1289
    Height = 44
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label7: TLabel
      Left = 27
      Top = 15
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label8: TLabel
      Left = 265
      Top = 16
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object DTP5: TDateTimePicker
      Left = 64
      Top = 12
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 0
    end
    object DTP6: TDateTimePicker
      Left = 168
      Top = 11
      Width = 89
      Height = 24
      Date = 39983.000011574070000000
      Format = 'HH:mm:ss'
      Time = 39983.000011574070000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Button3: TButton
      Left = 502
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button3Click
    end
    object DTP3: TDateTimePicker
      Left = 286
      Top = 12
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 387
      Top = 11
      Width = 89
      Height = 24
      Date = 39983.999988425930000000
      Format = 'HH:mm:ss'
      Time = 39983.999988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object Button4: TButton
      Left = 596
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object SMZLChk: TCheckBox
      Left = 9
      Top = 15
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object RubberOut: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select LLZL.LLBH,LLZL.CQDH,CONVERT(DATE, LLZL.LLRQ, 111) AS LLRQ' +
        ' ,LLZL.CFM,LLZLS.DDBH,LLZLS.cldh,LLZLS.LB,LLZLS.KGS_LL,LLZLS.KGS' +
        '_YL,LLZLS.KGS_CL,LLZL.USERID,CONVERT(DATE, LLZL.USERDATE, 111) A' +
        'S USERDATE'
      
        ',CAST(substring (( select '#39'/'#39' + LS.PONO  from KCLLS LS left join' +
        ' KCLL on kcll.LLNO=LS.LLNO and kcll.GSBH='#39'VR2'#39' and  LS.SCBH<>'#39'ZZ' +
        'ZZZZZZZZ'#39'  '
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'   inner join LIY_DD.dbo.clzlsl clzlsl on '#39'A'#39'+LS.CL' +
        'BH=clzlsl.cldhz'
      
        '       '#9#9#9'  where 1=1 and clzlsl.cldh=LLZLS.cldh  and LLZLS.DDBH' +
        '=LS.SCBH'
      
        #9#9#9#9'   group by LS.PONO order by CAST(LS.PONO AS varchar) for XM' +
        'L Path ('#39#39')),2,1000) as varchar(1000)  ) as PONO'#9
      ''
      
        'from LIY_DD.dbo.LLZL  LLZL inner join LIY_DD.dbo.LLZLS LLZLS on ' +
        'LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH'
      'where 1=1 and LLZL.CQDH='#39'VR2'#39' '
      'and LLZL.CFM='#39'Y'#39
      'and LLZL.LLBH='#39'E240100069'#39
      'and LLZLS.cldh='#39'VBR20101'#39
      
        'group by LLZL.LLBH,LLZL.CQDH,LLZL.LLRQ,LLZL.CFM,LLZLS.DDBH,LLZLS' +
        '.cldh,LLZLS.LB,LLZLS.KGS_LL,LLZLS.KGS_YL,LLZLS.KGS_CL,LLZL.USERI' +
        'D,LLZL.USERDATE'
      'order by  LLZL.LLBH,LLZLS.cldh')
    Left = 228
    Top = 251
    object RubberOutLLBH: TStringField
      FieldName = 'LLBH'
      FixedChar = True
      Size = 15
    end
    object RubberOutCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object RubberOutLLRQ: TStringField
      FieldName = 'LLRQ'
      FixedChar = True
      Size = 8
    end
    object RubberOutCFM: TStringField
      FieldName = 'CFM'
      FixedChar = True
      Size = 1
    end
    object RubberOutDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object RubberOutcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object RubberOutLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 10
    end
    object RubberOutKGS_LL: TFloatField
      FieldName = 'KGS_LL'
    end
    object RubberOutKGS_YL: TFloatField
      FieldName = 'KGS_YL'
    end
    object RubberOutKGS_CL: TFloatField
      FieldName = 'KGS_CL'
    end
    object RubberOutUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object RubberOutUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object RubberOutPONO: TStringField
      FieldName = 'PONO'
      FixedChar = True
      Size = 255
    end
  end
  object DSRubberOut: TDataSource
    DataSet = RubberOut
    Left = 228
    Top = 283
  end
  object DS1: TDataSource
    DataSet = SMZL
    Left = 320
    Top = 704
  end
  object SMZL: TQuery
    DatabaseName = 'DB'
    DataSource = DSRubberOut
    SQL.Strings = (
      
        'select SMDDSS.DDBH,BDepartment.DepName,SMDDSS.GXLB,SMDDSS.XXCC,S' +
        'MDDSS.XH,SMDD.Article,SMDD.XieMing,'
      
        '       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMD' +
        'DSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty'
      
        '       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as No' +
        'wokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as Scan' +
        'Date '
      'from SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      'where BDepartment.DepName like '#39'%%'#39' '
      '      and SMDDSS.DDBH like '#39'%'#39' '
      '      and SMDDSS.GXLB='#39'C'#39
      '      and SMDDSS.CODEBAR='#39'00000032'#39
      '      and SMZL.ScanDate between '
      '           '#39'2022/05/01 00:00:00'#39
      '           and '#39'2022/05/18 23:59:59'#39
      
        'group by SMDDSS.GXLB,SMDDSS.DDBH,BDepartment.DepName,SMDDSS.XXCC' +
        ',SMDDSS.XH,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDS' +
        'S.okCTS'
      
        'order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Arti' +
        'cle,SMDD.XieMing')
    Left = 360
    Top = 704
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object SMZLTotQty: TIntegerField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0'
    end
    object SMZLokCTS: TIntegerField
      FieldName = 'okCTS'
      DisplayFormat = '##,#0'
    end
    object SMZLTotokQty: TIntegerField
      FieldName = 'TotokQty'
      DisplayFormat = '##,#0'
    end
    object SMZLNowokCTS: TIntegerField
      FieldName = 'NowokCTS'
      DisplayFormat = '##,#0'
    end
    object SMZLNowokQty: TIntegerField
      FieldName = 'NowokQty'
      DisplayFormat = '##,#0'
    end
    object SMZLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 704
  end
end
