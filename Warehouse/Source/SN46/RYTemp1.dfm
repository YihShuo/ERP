object RYTemp: TRYTemp
  Left = 701
  Top = 120
  Width = 1089
  Height = 657
  Caption = 'RYTemp'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 31
    Align = alTop
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Shape2: TShape
      Left = 1
      Top = 1
      Width = 84
      Height = 29
      Align = alLeft
      Brush.Color = clGray
    end
    object Lab_MatID: TLabel
      Left = 8
      Top = 6
      Width = 65
      Height = 16
      Caption = 'Lab_MatID'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Lab_MatName: TLabel
      Left = 87
      Top = 5
      Width = 105
      Height = 20
      Caption = 'Lab_MatName'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 205
      Top = 3
      Width = 70
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 488
      Top = 4
      Width = 100
      Height = 28
      TabOrder = 1
      Text = 'Edit1'
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 1073
    Height = 489
    Align = alClient
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 1
      Top = 241
      Width = 1071
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object Splitter2: TSplitter
      Left = 373
      Top = 244
      Height = 244
      Color = clSkyBlue
      ParentColor = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 1071
      Height = 240
      Align = alTop
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 489
        Top = 23
        Height = 216
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1069
        Height = 22
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 489
          Top = 1
          Width = 488
          Height = 20
          Align = alLeft
          BevelOuter = bvNone
          Caption = #21152#24037#26410#20837#24235
          TabOrder = 0
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 488
          Height = 20
          Align = alLeft
          BevelOuter = bvNone
          Caption = #22312#36884#37327
          TabOrder = 1
        end
      end
      object DBGridEh_RY: TDBGridEh
        Left = 1
        Top = 23
        Width = 488
        Height = 216
        Align = alLeft
        DataSource = DS_UnRK
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
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
        PopupMenu = Pop_UnRK
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'RKQTY'
            Footers = <>
            Title.Caption = 'RK Qty'
            Title.TitleButton = True
            Width = 58
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'Diffqty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'UnRK'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CGType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = 'ETD'
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.TitleButton = True
            Width = 143
          end>
      end
      object DBGridEh_JG: TDBGridEh
        Left = 492
        Top = 23
        Width = 578
        Height = 216
        Align = alClient
        DataSource = DS_JGUnB
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_UnJG
        ReadOnly = True
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
            FieldName = 'RY'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'JGUnQty'
            Footers = <
              item
                FieldName = 'JGUnQty'
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end>
      end
    end
    object Panel7: TPanel
      Left = 376
      Top = 244
      Width = 696
      Height = 244
      Align = alClient
      TabOrder = 1
      object DBGridEh_UnLL: TDBGridEh
        Left = 1
        Top = 20
        Width = 694
        Height = 223
        Align = alClient
        Color = clWhite
        DataSource = DS_RY
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
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
        PopupMenu = Pop_UnLL
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
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
            Title.TitleButton = True
            Width = 60
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'UnLL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.TitleButton = True
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'LEAN'
            Footers = <>
            Title.TitleButton = True
            Visible = False
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end>
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 694
        Height = 19
        Align = alTop
        Caption = #38936#26009#28136#38656#27714
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 244
      Width = 372
      Height = 244
      Align = alLeft
      TabOrder = 2
      object Panel12: TPanel
        Left = 1
        Top = 1
        Width = 370
        Height = 22
        Align = alTop
        Caption = #21152#24037#28136#38656#27714
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGridEh_UnJG: TDBGridEh
        Left = 1
        Top = 23
        Width = 370
        Height = 220
        Align = alClient
        DataSource = DS_UnJG
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_UnJG
        ReadOnly = True
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
            FieldName = 'ZLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Usage'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'BKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Return Qty'
            Width = 67
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'UnJGQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
          end>
      end
    end
  end
  object Panel11: TPanel
    Left = 0
    Top = 31
    Width = 1073
    Height = 98
    Align = alTop
    TabOrder = 2
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 1071
      Height = 96
      Align = alClient
      TabOrder = 0
      object Lab_Stock: TLabel
        Left = 0
        Top = 17
        Width = 95
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = #29694#26377#24235#23384
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Lab_UnRK: TLabel
        Left = 152
        Top = 42
        Width = 95
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = #22312#36884#37327
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Lab_UnLL: TLabel
        Left = 296
        Top = 42
        Width = 109
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = #38936#26009#28136#38656#27714
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Lab_UnJG: TLabel
        Left = 296
        Top = 17
        Width = 109
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = #21152#24037#28136#38656#27714
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Lab_Remain: TLabel
        Left = 417
        Top = 72
        Width = 360
        Height = 20
        AutoSize = False
        Caption = 'Remain'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 371
        Top = 73
        Width = 13
        Height = 18
        AutoSize = False
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 14
        Top = 66
        Width = 459
        Height = 2
      end
      object Lab_Add: TLabel
        Left = 114
        Top = 72
        Width = 43
        Height = 20
        Alignment = taRightJustify
        Caption = 'UnRK'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Lab_Min: TLabel
        Left = 304
        Top = 72
        Width = 43
        Height = 20
        Alignment = taRightJustify
        Caption = 'UnRK'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 225
        Top = 70
        Width = 8
        Height = 24
        Alignment = taRightJustify
        Caption = '-'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Lab_Unit: TLabel
        Left = 777
        Top = 72
        Width = 65
        Height = 20
        Caption = 'Lab_Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Lab_UnRkJG: TLabel
        Left = 136
        Top = 17
        Width = 110
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = #21152#24037#26410#20837#24235
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Panel13: TPanel
        Left = 408
        Top = 16
        Width = 67
        Height = 22
        BevelOuter = bvNone
        Caption = '('#21152#24037#28136#38656#27714')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Panel14: TPanel
        Left = 408
        Top = 41
        Width = 67
        Height = 22
        BevelOuter = bvNone
        Caption = '('#38936#26009#28136#38656#27714')'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel15: TPanel
        Left = 96
        Top = 16
        Width = 49
        Height = 22
        BevelOuter = bvNone
        Caption = '('#24235#23384')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Panel16: TPanel
        Left = 248
        Top = 41
        Width = 49
        Height = 22
        BevelOuter = bvNone
        Caption = '('#22312#36884#37327')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Panel17: TPanel
        Left = 247
        Top = 16
        Width = 49
        Height = 22
        BevelOuter = bvNone
        Caption = '('#21152#24037#20013')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object RY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select OrdCL1.ZLBH,   '
      '       OrdCL1.CLBH,  '
      '       OrdCL1.CLSL,  '
      '       isnull(KCLLS.Qty,0) as LLQty,    '
      '       isnull(KCRKS.Qty,0) as RKQty,    '
      '       OrdCL1.CLSL-isnull(KCLLS.Qty,0) as UnLL,  '
      '       XXZL.Article,   '
      '       XXZL.XieMing,   '
      '       '#39#39' as LEAN,          '
      '       getdate() as PSDT, '
      '       getdate() as PEDT, '
      '       DDZL.DDZT as Status, '
      '       DDZL.DDRQ,DDZL.BUYNO'
      'from    '
      '    (select ZLZLS2.ZLBH,ZLZLS2.CLBH '
      '                   ,sum(ZLZLS2.CLSL) AS CLSL '
      '             from ZLZLS2 '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      '             where ZLZLS2.CLBH='#39'A020003733'#39
      
        '                   and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'V' +
        'A12'#39'  and DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39') '
      
        '                   and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.sh' +
        'ipdate > @Ldate'
      '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH '
      '    ) OrdCL1 '
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(CASE  WHEN (KCLL' +
        'S.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty '
      '           from  KCLLS,KCLL '
      '           left join ddzl on ddzl.ddbh=KCLL.SCBH'
      
        '           where KCLL.CFMID<>'#39'NO'#39' AND KCLLS.LLNO=KCLL.LLNO AND K' +
        'CLL.SCBH<>'#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39'  and convert(varchar' +
        ',KCLL.CFMDate,111)<='#39'2018/05/16'#39' '
      
        '                 and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.ship' +
        'date > @Ldate  and DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39 +
        ') '
      '                 AND KCLLS.CLBH='#39'A020003733'#39
      '           group by KCLLS.SCBH, KCLLS.CLBH '
      
        '          ) KCLLS on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL' +
        '1.CLBH '
      
        'left join (select   KCRKS.CGBH, KCRKS.CLBH, sum(KCRKS.Qty) as Qt' +
        'y '
      '           from  KCRKS '
      '           inner join KCRK on KCRKS.RKNO=KCRK.RKNO '
      '           left join ddzl on ddzl.ddbh=KCRKS.CGBH '
      '           where ddzl.GSBH='#39'VA12'#39'     '
      
        '                 and ddzl.YN='#39'1'#39' and ddzl.shipdate > @Ldate  and' +
        ' DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39') '
      '                   AND KCRKS.CLBH='#39'A020003733'#39
      '           group by KCRKS.CGBH, KCRKS.CLBH '
      
        '          ) KCRKS on KCRKS.CGBH=OrdCL1.ZLBH and KCRKS.CLBH=OrdCL' +
        '1.CLBH '
      'left join DDZL on OrdCL1.ZLBH=DDZL.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'WHERE OrdCL1.CLSL-ISNULL(KCLLS.Qty,0)<>0 '
      ' '
      'order by DDZL.DDRQ')
    Left = 248
    Top = 336
    object RYZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object RYCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object RYCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object RYUnLL: TFloatField
      FieldName = 'UnLL'
    end
    object RYArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object RYXieMing: TStringField
      DisplayLabel = 'ShoeName'
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object RYLLQty: TCurrencyField
      FieldName = 'LLQty'
      currency = False
    end
    object RYRKQty: TCurrencyField
      FieldName = 'RKQty'
      currency = False
    end
    object RYLEAN: TStringField
      FieldName = 'LEAN'
      Size = 15
    end
    object RYPSDT: TDateTimeField
      FieldName = 'PSDT'
    end
    object RYPEDT: TDateTimeField
      FieldName = 'PEDT'
    end
    object RYStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object RYDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object RYBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS_RY: TDataSource
    DataSet = RY
    Left = 248
    Top = 304
  end
  object Pop_UnLL: TPopupMenu
    Left = 248
    Top = 376
    object EXCEL2: TMenuItem
      Caption = 'Excel'
      OnClick = EXCEL2Click
    end
  end
  object Qry_UnRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select CGZLS.CGNO'
      '       ,CGZLS.CLBH'
      '       ,CGZLS.Qty '
      '       ,CGZLS.YQDate'
      '       ,CGZLS.CFMDate'
      '       ,CGZL.ZSBH'
      '       ,ZSZL.ZSYWJC'
      '       ,CGZL.CGDATE'
      '       ,CGRK.RKQTY   '
      '       ,CGZLS.Qty-ISNULL(CGRK.RKQTY,0) as Diffqty   '
      
        '       ,case when CGZL.CGLX=1 then '#39'SIZE'#39' when CGZL.CGLX=2 then ' +
        #39'NO SIZE'#39' when CGZL.CGLX=3 then '#39'OTHER'#39' when CGZL.CGLX=5 then '#39'B' +
        'OX'#39' else '#39#39' end as CGType  '
      'from CGZLS'
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH '
      'left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty) as RKQTY '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where ISNULL(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RK' +
        'SB,'#39#39')<>'#39'DL'#39' and KCRK.GSBH='#39'VA12'#39' '
      '                 AND KCRKS.CLBH='#39'A010001864'#39
      
        '           group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZ' +
        'LS.CGNO AND CGRK.CLBH=CGZLS.CLBH '
      'where  isnull(CGZLS.qty,0)>isnull(CGRK.RKQTY,0) '
      '       and CGZLS.YN<>'#39'5'#39' and IsNull(CGZL.DevType,'#39#39')<>'#39'Z07'#39'  '
      '       AND CGZLS.CLBH='#39'A010001864'#39
      '       and CGZL.GSBH='#39'VA12'#39
      '       and CGZL.CGDate > @LDate '
      '       and (CGZL.CGLX='#39'2'#39
      '            or CGZL.CGLX='#39'3'#39
      '            or CGZL.CGLX='#39'5'#39
      '            or CGZL.CGLX='#39'1'#39')'
      '')
    Left = 92
    Top = 336
    object Qry_UnRKZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
      Size = 200
    end
    object Qry_UnRKCGDATE: TDateTimeField
      DisplayLabel = 'Pur Date'
      FieldName = 'CGDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Qry_UnRKCGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_UnRKQty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Qry_UnRKRKQTY: TCurrencyField
      FieldName = 'RKQTY'
      currency = False
    end
    object Qry_UnRKYQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Qry_UnRKCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Qry_UnRKZSBH: TStringField
      DisplayLabel = 'Supp ID'
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_UnRKDiffqty: TCurrencyField
      FieldName = 'Diffqty'
      currency = False
    end
    object Qry_UnRKCGType: TStringField
      FieldName = 'CGType'
      FixedChar = True
      Size = 7
    end
  end
  object DS_UnRK: TDataSource
    DataSet = Qry_UnRK
    Left = 92
    Top = 304
  end
  object DS_UnJG: TDataSource
    DataSet = Qry_UnJG
    Left = 160
    Top = 304
  end
  object Qry_UnJG: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select  ZLZLS2.ZLBH'
      '        ,sum(ZLZLS2.CLSL) as CLSL'
      '        ,isnull(JGZLBK.okQty,0) as BKQty '
      '        ,sum(ZLZLS2.CLSL)-isnull(JGZLBK.okQty,0) as UnJGQty '
      '        ,DDZL.ARTICLE,DDZL.DDZT as Status,DDZL.DDRQ,DDZL.BUYNO  '
      'from ZLZLS2'
      'left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      'left join( select ZLBH,ZMLB,sum(okQty)as okQty'
      
        '           from(select JGZLSS.ZLBH,JGZLS.ZMLB,sum(JGZLSS.Qty*JGZ' +
        'LS.QTY) as okQty from JGZLSS'
      '                left join JGZL on JGZL.JGNO=JGZLSS.JGNO '
      
        '                left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JG' +
        'ZLS.CLBH=JGZLSS.CLBH '
      '                left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  '
      '                where JGZLS.ZMLB='#39'A020003733'#39
      '                and JGZL.CFMID1 <>'#39'NO'#39' '
      
        '                and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12' +
        #39' '
      
        '                and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.shipd' +
        'ate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39') '
      
        '                and convert(smalldatetime,convert(varchar,JGZL.C' +
        'FMDATE1,111))< '#39'2017/09/01'#39
      
        '                and EXISTS (SELECT CLBH FROM ZLZLS2 WHERE ZLZLS2' +
        '.CLSL>0 AND ZLZLS2.MJBH=JGZLS.CLBH AND ZLZLS2.CLBH=JGZLS.ZMLB AN' +
        'D ZLZLS2.ZLBH=JGZLSS.ZLBH )  '
      '                group by  JGZLSS.ZLBH,JGZLS.ZMLB '
      '                union all'
      
        '                select KCLLS.SCBH,KCLLS.CLBH,sum(KCLLS.Qty) as o' +
        'kQty from KCLL '
      '                left join KCLLS on KCLLS.LLNO=KCLL.LLNO '
      '                left join ddzl on ddzl.ddbh=KCLLS.SCBH  '
      
        '                where convert(smalldatetime,convert(varchar,KCLL' +
        '.CFMDATE,111))>='#39'2017/09/01'#39
      '                and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLL.CFMID <>'#39'NO'#39
      
        '                and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.shipd' +
        'ate > @Ldate and DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39') '
      
        '                and EXISTS (SELECT CLBH FROM ZLZLS2 WHERE ZLZLS2' +
        '.CLSL>0 AND ZLZLS2.MJBH=KCLLS.DFL AND ZLZLS2.CLBH=KCLLS.CLBH AND' +
        ' ZLZLS2.ZLBH=KCLLS.SCBH )  '
      '                and KCLLS.CLBH like '#39'A020003733%'#39
      '                and KCLL.GSBH='#39'VA12'#39' '
      
        '                group by KCLLS.SCBH,KCLLS.CLBH)JGZLBK group by Z' +
        'LBH,ZMLB'
      
        '          ) JGZLBK on JGZLBK.ZMLB=ZLZLS2.CLBH and JGZLBK.ZLBH=ZL' +
        'ZLS2.ZLBH'
      'where ZLZLS2.CLBH='#39'A020003733'#39
      '      AND ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39' '
      
        '      and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.shipdate > @Lda' +
        'te and DDZL.DDRQ<=Convert(smalldatetime,'#39'2018/05/16'#39') '
      
        'group by ZLZLS2.ZLBH,JGZLBK.okQty,DDZL.ARTICLE,DDZL.DDZT,DDZL.DD' +
        'RQ,DDZL.BUYNO  '
      'having  sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty,0)'
      'order by DDZL.DDRQ')
    Left = 160
    Top = 336
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Size = 10
    end
    object Query1BKQty: TCurrencyField
      FieldName = 'BKQty'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Qry_UnJGUnLLQty: TFloatField
      FieldName = 'UnJGQty'
    end
    object Qry_UnJGStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object Qry_UnJGDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object Qry_UnJGBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object Pop_UnJG: TPopupMenu
    Left = 160
    Top = 376
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 195
    Top = 192
  end
  object Qry_JGUnB: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZLSS.ZLBH as RY,JGZLSS.CLSL, JGZLSS.Qty as JGUnQty,DDZL' +
        '.Article,DDZL.DDZT as Status, DDZL.DDRQ,DDZL.BUYNO '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS' +
        '.CLBH=JGZLS.CLBH '
      '           left join DDZL on DDZL.DDBH=JGZLSS.ZLBH  '
      '       where  JGZLS.CLBH like '#39'A020003733%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2018/05/16'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      'order by DDZL.DDRQ')
    Left = 208
    Top = 336
    object Qry_JGUnBRY: TStringField
      DisplayWidth = 9
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object Qry_JGUnBCLSL: TCurrencyField
      DisplayWidth = 10
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Qry_JGUnBJGUnQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'JGUnQty'
      DisplayFormat = '##,#0.00'
    end
    object Qry_JGUnBArticle: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object Qry_JGUnBStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object Qry_JGUnBDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object Qry_JGUnBBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS_JGUnB: TDataSource
    DataSet = Qry_JGUnB
    Left = 208
    Top = 304
  end
  object Pop_UnRK: TPopupMenu
    Left = 96
    Top = 369
    object MaterialTrace1: TMenuItem
      Caption = 'Material Trace'
      OnClick = MaterialTrace1Click
    end
  end
end
