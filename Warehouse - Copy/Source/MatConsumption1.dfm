object MatConsumption: TMatConsumption
  Left = 247
  Top = 193
  Width = 1415
  Height = 562
  Caption = 'MatConsumption'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1397
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieXing:'
    end
    object Label3: TLabel
      Left = 304
      Top = 24
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label1: TLabel
      Left = 216
      Top = 64
      Width = 94
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ETD Year:'
    end
    object Label4: TLabel
      Left = 400
      Top = 64
      Width = 57
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 488
      Top = 24
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Label6: TLabel
      Left = 176
      Top = 24
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Color'
    end
    object Label7: TLabel
      Left = 8
      Top = 64
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZLBH:'
    end
    object Label8: TLabel
      Left = 808
      Top = 56
      Width = 48
      Height = 20
      Caption = 'Label8'
    end
    object Button1: TButton
      Left = 672
      Top = 48
      Width = 97
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 376
      Top = 16
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object CBX2: TComboBox
      Left = 312
      Top = 56
      Width = 81
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 3
    end
    object CBX3: TComboBox
      Left = 464
      Top = 56
      Width = 57
      Height = 28
      DropDownCount = 12
      ItemHeight = 20
      TabOrder = 4
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object Edit4: TEdit
      Left = 568
      Top = 16
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = Edit5KeyPress
    end
    object Edit2: TEdit
      Left = 256
      Top = 16
      Width = 41
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = Edit2KeyPress
    end
    object Edit5: TEdit
      Left = 80
      Top = 56
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 7
      OnKeyPress = Edit5KeyPress
    end
    object Button2: TButton
      Left = 672
      Top = 8
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 1397
    Height = 418
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 511
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LYCC'
        Width = 37
        Visible = True
      end>
  end
  object DTP1: TDateTimePicker
    Left = 328
    Top = 232
    Width = 137
    Height = 28
    Date = 39512.459012395830000000
    Time = 39512.459012395830000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DTP2: TDateTimePicker
    Left = 328
    Top = 264
    Width = 137
    Height = 28
    Date = 39512.459337743060000000
    Time = 39512.459337743060000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if   object_id('#39'tempdb..#OrdCL'#39')   is     not null   '
      'begin'
      'drop table #OrdCL'
      'end'
      'if   object_id('#39'tempdb..#OrdCL2'#39')   is     not null   '
      'begin'
      'drop table #OrdCL2'
      'end'
      ''
      'declare @p decimal(18,4)'
      'set @p=(select Delperson from BasData)'
      'select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as USAGE,'
      
        '           sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'#39'N'#39') as DF' +
        'L'
      
        '          ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHa' +
        'o,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,3) as CLTX'
      'into #OrdCL from ZLZLS2'
      'left join CLZL on ZLZLS2.CLBH=CLZL.CLDH '
      
        'left join  (select distinct SCZL.SCBH,SCZL.ZLBH from SCZL where ' +
        'SCBH=:SCBH ) SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.XieXing=XXB' +
        'WFL.XieXing'
      'left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        'left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=X' +
        'XZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      'where ZLZLS2.ZLBH=:SCBH and MJBH='#39'ZZZZZZZZZZ'#39
      'group by  ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '               CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.S' +
        'heHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX'
      ''
      'order by ZLZLS2.CLBH,XXBWFL.DFL'
      ''
      
        'select  #OrdCL.ZLBH,#OrdCL.CLBH,sum(#OrdCL.USAGE) as USAGE, sum(' +
        '#OrdCL.CLSL) as CLSL,'
      
        '#OrdCL.DFL,#OrdCL.YWPM,#OrdCL.DWBH,#OrdCL.LYCC,#OrdCL.Article,#O' +
        'rdCL.XieMing,'
      '#OrdCL.XieXing,#OrdCL.SheHao,#OrdCL.CLTX'
      ' into #OrdCL2 from #OrdCL'
      
        'group by #OrdCL.ZLBH,#OrdCL.CLBH,#OrdCL.DFL,#OrdCL.YWPM,#OrdCL.D' +
        'WBH,'
      
        '#OrdCL.LYCC,#OrdCL.Article,#OrdCL.XieMing,#OrdCL.XieXing,#OrdCL.' +
        'SheHao,#OrdCL.CLTX'
      ''
      'update #OrdCL2'
      'set CLSL=CLSL*@p/100'
      'where  CLTX='#39'3'#39
      ''
      
        'select #OrdCL2.ZLBH,#OrdCL2.CLBH,#OrdCL2.USAGE,round(#OrdCL2.CLS' +
        'L+0.0499,1) as CLSL,'
      
        '#OrdCL2.DFL,#OrdCL2.YWPM,#OrdCL2.DWBH,#OrdCL2.LYCC,isnull(KCLLS.' +
        'Qty,0) as Qty,'
      '#OrdCL2.Article,#OrdCL2.XieMing,#OrdCL2.XieXing,#OrdCL2.SheHao'
      'from #OrdCL2'
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y,isnull( KCLLS.DFL,'#39'N'#39') as DFL'
      
        '              from  KCLLS where  KCLLS.SCBH=:SCBH group by KCLLS' +
        '.SCBH, KCLLS.CLBH,KCLLS.DFL) KCLLS '
      
        '               on KCLLS.SCBH=#OrdCL2.ZLBH and KCLLS.CLBH=#OrdCL2' +
        '.CLBH and #OrdCL2.DFL=KCLLS.DFL '
      'order by #OrdCL2.DFL,#OrdCL2.CLBH'
      '')
    Left = 296
    Top = 160
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 160
  end
end
