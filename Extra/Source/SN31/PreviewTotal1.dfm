object PreviewTotal: TPreviewTotal
  Left = 403
  Top = 155
  Width = 759
  Height = 556
  Caption = 'PreviewTotal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 4
      Top = 12
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Key In From:'
    end
    object Label5: TLabel
      Left = 204
      Top = 12
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Button1: TButton
      Left = 384
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 8
      Width = 113
      Height = 24
      Date = 39777.806830682870000000
      Format = 'yyyy/MM/dd'
      Time = 39777.806830682870000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 256
      Top = 8
      Width = 113
      Height = 24
      Date = 39777.807147164350000000
      Format = 'yyyy/MM/dd'
      Time = 39777.807147164350000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 484
      Top = 7
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 49
    Width = 743
    Height = 468
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
      Caption = 'Extra'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 735
        Height = 437
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Month'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footer.ValueType = fvtSum
            Footers = <>
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Deliver'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 735
        Height = 437
        Align = alClient
        DataSource = DataSource2
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Month'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footer.ValueType = fvtSum
            Footers = <>
          end>
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 89
    Top = 194
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty as ActQty,JGZL.' +
        'CKBH,'
      
        '       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJ' +
        'C,'#39'Son'#39'  as SB from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
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
        'C,'#39'Son'#39' as SB from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
      'left join (select JGZLS.Qty,JGZLS.JGNO,JGZLS.CLBH from JGZLS'
      '           where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '           ) JGZLM on JGZLM.CLBH=JGZLS.CLBH and JGZLM.JGNO=JGZLS' +
        '.JGNO'
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
    object Query1Month: TStringField
      FieldName = 'Month'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
    end
    object Query1JGNO: TStringField
      FieldName = 'JGNO'
    end
    object Query1Total: TIntegerField
      FieldName = 'Total'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty as ActQty,JGZL.' +
        'CKBH,'
      
        '       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJ' +
        'C,'#39'Son'#39'  as SB from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
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
        'C,'#39'Son'#39' as SB from JGZLS'
      'left join JGZL  on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH '
      'left join (select JGZLS.Qty,JGZLS.JGNO,JGZLS.CLBH from JGZLS'
      '           where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '           ) JGZLM on JGZLM.CLBH=JGZLS.CLBH and JGZLM.JGNO=JGZLS' +
        '.JGNO'
      'where  JGZLS.ZMLB like'#39'%'#39
      '      and JGZLS.JGNO like '#39'%'#39
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'and JGZL.GSBH='#39'VA3'#39
      'and ZSZL.ZSYWJC like '#39'%%'#39
      'and convert(smalldatetime,convert(varchar,JGDate,111)) between '
      #39'2008/11/14'#39' and '#39'2008/11/25'#39
      'order by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB DESC')
    Left = 88
    Top = 224
    object Query2Month: TStringField
      FieldName = 'Month'
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
    end
    object Query2LLNO: TStringField
      FieldName = 'LLNO'
    end
    object Query2Total: TIntegerField
      FieldName = 'Total'
    end
  end
end
