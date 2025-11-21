object ExtraPreview: TExtraPreview
  Left = 351
  Top = 275
  Width = 1179
  Height = 500
  Caption = 'ExtraPreview'
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
    Width = 1163
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
      Left = 5
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
    end
    object Label2: TLabel
      Left = 205
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label3: TLabel
      Left = 413
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppName:'
    end
    object Label4: TLabel
      Left = 4
      Top = 44
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Key In From:'
    end
    object Label5: TLabel
      Left = 204
      Top = 44
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Edit1: TEdit
      Left = 89
      Top = 8
      Width = 112
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 289
      Top = 8
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 568
      Top = 32
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 499
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 40
      Width = 113
      Height = 24
      Date = 39777.806830682870000000
      Format = 'yyyy/MM/dd'
      Time = 39777.806830682870000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 256
      Top = 40
      Width = 113
      Height = 24
      Date = 39777.807147164350000000
      Format = 'yyyy/MM/dd'
      Time = 39777.807147164350000000
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 425
      Top = 43
      Width = 121
      Height = 17
      Caption = 'No Confirmed'
      TabOrder = 6
    end
    object Button2: TButton
      Left = 652
      Top = 31
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 730
      Top = 31
      Width = 81
      Height = 33
      Caption = 'Check'
      TabOrder = 8
      OnClick = Button3Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 73
    Width = 1163
    Height = 388
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS3: TTabSheet
      Caption = 'JGMas'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1155
        Height = 357
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16753314
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGrid1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footers = <>
            Title.TitleButton = True
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'ZMLB'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.TitleButton = True
            Width = 324
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                FieldName = 'DWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
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
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'ActQty'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'JGDATE'
            Footers = <>
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.TitleButton = True
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CFMID1'
            Footers = <>
            Title.TitleButton = True
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CFMID2'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.TitleButton = True
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'SB'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CYN'
            Footers = <>
            Title.TitleButton = True
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = 'Deliver|Deliver No'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'LL_CFMID'
            Footers = <>
            Title.Caption = 'Deliver|CFMID'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'LL_CFMDate'
            Footers = <>
            Title.Caption = 'Deliver|CFMDate'
            Width = 95
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'JGDet'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1155
        Height = 357
        Align = alClient
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1153
          Height = 355
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'JGNO'
              Footer.ValueType = fvtCount
              Footers = <>
              Width = 105
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'YWPM'
              Width = 250
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Footers = <>
              Width = 90
            end>
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 192
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
  end
  object JGMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty as ActQty,JGZL.' +
        'CKBH,'
      
        '       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJ' +
        'C,'#39'Son'#39'  as SB,kc.LLNO,kc.CFMID as LL_CFMID,kc.CFMDate as LL_CFM' +
        'Date from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH'
      
        'left join JGZLSS  on JGZL.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS' +
        '.CLBH'
      
        'left join (select kcll.LLNO,kcll.CFMID,kcll.CFMDate,kclls.CLBH,k' +
        'clls.SCBH from kcll left join kclls on kclls.LLNO=kcll.LLNO'
      #9#9'   where 1=1 and kcll.GSBH='#39'VA12'#39
      #9#9'   and kcll.CFMID<>'#39'NO'#39
      #9#9'   and kcll.SCBH <>'#39'ZZZZZZZZZZ'#39
      
        #9#9'   group by kcll.LLNO,kcll.CFMID,kcll.CFMDate,kclls.CLBH,kclls' +
        '.SCBH'
      #9#9#9') kc on kc.CLBH=JGZLS.CLBH and kc.SCBH=JGZLSS.ZLBH'
      'where JGZLS.CLBH like'#39'%'#39
      '      and JGZLS.JGNO like '#39'%'#39
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'and JGZL.GSBH='#39'VA3'#39
      'and ZSZL.ZSYWJC like '#39'%%'#39
      'and convert(smalldatetime,convert(varchar,JGDate,111)) between '
      #39'2008/11/14'#39' and '#39'2008/11/25'#39
      ' union '
      
        'select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty*JGZLM.Qty as Ac' +
        'tQty,JGZL.CKBH,'
      
        '       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJ' +
        'C,'#39'Son'#39' as SB,kc.LLNO,kc.CFMID as LL_CFMID,kc.CFMDate as LL_CFMD' +
        'ate from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
      'left join (select JGZLS.Qty,JGZLS.JGNO,JGZLS.CLBH from JGZLS'
      '           where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '           ) JGZLM on JGZLM.CLBH=JGZLS.CLBH and JGZLM.JGNO=JGZLS' +
        '.JGNO'
      
        'left join JGZLSS  on JGZL.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS' +
        '.CLBH'
      
        'left join (select kcll.LLNO,kcll.CFMID,kcll.CFMDate,kclls.CLBH,k' +
        'clls.SCBH from kcll left join kclls on kclls.LLNO=kcll.LLNO'
      #9#9'   where 1=1 and kcll.GSBH='#39'VA12'#39
      #9#9'   and kcll.CFMID<>'#39'NO'#39
      #9#9'   and kcll.SCBH <>'#39'ZZZZZZZZZZ'#39
      
        #9#9'   group by kcll.LLNO,kcll.CFMID,kcll.CFMDate,kclls.CLBH,kclls' +
        '.SCBH'
      #9#9#9') kc on kc.CLBH=JGZLS.CLBH and kc.SCBH=JGZLSS.ZLBH'
      'where  JGZLS.ZMLB like'#39'%'#39
      '      and JGZLS.JGNO like '#39'%'#39
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'and JGZL.GSBH='#39'VA3'#39
      'and ZSZL.ZSYWJC like '#39'%%'#39
      'and convert(smalldatetime,convert(varchar,JGDate,111)) between '
      #39'2008/11/14'#39' and '#39'2008/11/25'#39
      'order by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB DESC')
    Left = 56
    Top = 224
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGMasCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGMasZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
    object JGMasYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGMasDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object JGMasQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object JGMasActQty: TCurrencyField
      FieldName = 'ActQty'
      DisplayFormat = '##,#0.0'
    end
    object JGMasMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object JGMasYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasJGDATE: TDateTimeField
      FieldName = 'JGDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCYN: TStringField
      FieldName = 'CYN'
      FixedChar = True
      Size = 1
    end
    object JGMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object JGMasSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 3
    end
    object JGMasLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object JGMasLL_CFMID: TStringField
      FieldName = 'LL_CFMID'
      FixedChar = True
      Size = 15
    end
    object JGMasLL_CFMDate: TDateTimeField
      FieldName = 'LL_CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = JGMas
    Left = 56
    Top = 192
  end
  object DataSource2: TDataSource
    DataSet = JGDet
    Left = 89
    Top = 194
  end
  object JGDet: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select jgzlss.*,ywpm'
      'from jgzlss left join jgzl on jgzlss.jgno = jgzl.jgno'
      'left join clzl on jgzlss.clbh=clzl.cldh'
      'where jgzlss.jgno like '#39'20081000054%'#39
      'and clbh like '#39'C010001104%'#39)
    Left = 89
    Top = 225
    object JGDetJGNO: TStringField
      FieldName = 'JGNO'
      Origin = 'DB.JGZLSS.JGNO'
      FixedChar = True
      Size = 11
    end
    object JGDetZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.JGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.JGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object JGDetCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.JGZLSS.CLSL'
    end
    object JGDetQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.JGZLSS.Qty'
    end
    object JGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
  end
end
