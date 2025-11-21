object Cutting_Output_Report: TCutting_Output_Report
  Left = 192
  Top = 104
  Width = 1305
  Height = 844
  Caption = 'Cutting_Output_Report'
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
    Width = 1297
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 35
      Height = 17
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 176
      Top = 40
      Width = 18
      Height = 17
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 328
      Top = 38
      Width = 81
      Height = 20
      Caption = 'DepName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 185
      Height = 20
      AutoSize = False
      Caption = #27599#26085#35009#26039#29983#29986#22577#21578
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 328
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 576
      Top = 24
      Width = 81
      Height = 41
      Hint = #39023#31034#26597#35426
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 32
      Width = 97
      Height = 25
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 32
      Width = 97
      Height = 25
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 416
      Top = 32
      Width = 137
      Height = 25
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 688
      Top = 24
      Width = 89
      Height = 41
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 561
    Height = 740
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object Dbgrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 559
      Height = 738
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      FooterColor = 15000804
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = #24494#36575#27491#40657#39636
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 2
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #24494#36575#27491#40657#39636
      TitleFont.Style = []
      TitleLines = 1
      UseMultiTitle = True
      OnDrawColumnCell = Dbgrid1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DLNO'
          Footers = <>
          Title.Caption = #35009#26039#32317#29983#29986#26085#22577#34920'|'#27966#24037#21934#34399'|DLNO'
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'Plandate'
          Footers = <>
          Title.Caption = #35009#26039#32317#29983#29986#26085#22577#34920'|'#35009#26039#26085'|Plandate'
          Width = 92
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Footer.FieldName = 'DepName'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clNavy
          Footer.Font.Height = -16
          Footer.Font.Name = #24494#36575#27491#40657#39636
          Footer.Font.Style = []
          Footer.Value = '                 '#32317#35336'='
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = #35009#26039#32317#29983#29986#26085#22577#34920'|'#37096#38272#21517#31281'|DepName'
          Width = 124
        end
        item
          EditButtons = <>
          FieldName = 'CutNum'
          Footer.Color = clAqua
          Footer.FieldName = 'CutNum'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = #24494#36575#27491#40657#39636
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #35009#26039#32317#29983#29986#26085#22577#34920'|'#27966#24037#25976#37327'|CutNum'
          Width = 91
        end
        item
          EditButtons = <>
          FieldName = 'okCutNum'
          Footer.Color = clLime
          Footer.FieldName = 'okCutNum'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = #24494#36575#27491#40657#39636
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #35009#26039#32317#29983#29986#26085#22577#34920'|'#22577#24037#25976#37327'|okCutNum'
          Width = 98
        end>
    end
  end
  object Panel4: TPanel
    Left = 561
    Top = 73
    Width = 736
    Height = 740
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 734
      Height = 288
      Align = alTop
      Caption = 'Panel5'
      TabOrder = 0
      object DBGrid2: TDBGridEh
        Left = 1
        Top = 1
        Width = 732
        Height = 286
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        FooterColor = 15000804
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
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#24037#21934'|ZLBH'
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#26028#20992'|DAOMH'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'XXCC'
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#23610#30908'|XXCC'
          end
          item
            EditButtons = <>
            FieldName = 'zwsm'
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#37096#20301#20013#25991'|zwsm'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'ywsm'
            Footer.FieldName = 'ywsm'
            Footer.Font.Charset = ANSI_CHARSET
            Footer.Font.Color = clNavy
            Footer.Font.Height = -16
            Footer.Font.Name = #24494#36575#27491#40657#39636
            Footer.Font.Style = []
            Footer.Value = '                 '#32317#35336'='
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#37096#20301#33521#25991'|ywsm'
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.Color = clYellow
            Footer.FieldName = 'Qty'
            Footer.Font.Charset = ANSI_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -13
            Footer.Font.Name = #24494#36575#27491#40657#39636
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#38617#25976'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'CutNum'
            Footer.Color = clAqua
            Footer.FieldName = 'CutNum'
            Footer.Font.Charset = ANSI_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -13
            Footer.Font.Name = #24494#36575#27491#40657#39636
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#35009#26039'|CutNum'
          end
          item
            EditButtons = <>
            FieldName = 'okCutNum'
            Footer.Color = clLime
            Footer.FieldName = 'okCutNum'
            Footer.Font.Charset = ANSI_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -13
            Footer.Font.Name = #24494#36575#27491#40657#39636
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #37096#38272#26085#22577#34920'|'#35009#26039'|okCutNum'
            Width = 95
          end>
      end
    end
    object Dbgrid3: TDBGridEh
      Left = 1
      Top = 289
      Width = 734
      Height = 450
      Align = alClient
      DataSource = DS3
      EvenRowColor = clWindow
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      FooterColor = 15000804
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = #26032#32048#26126#39636
      FooterFont.Style = []
      FooterRowCount = 1
      ImeName = 'Chinese (Traditional) - New Phonetic'
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #24494#36575#27491#40657#39636
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = Dbgrid3DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <>
          Title.Caption = #36852#36681#25976'|DDBH'
        end
        item
          EditButtons = <>
          FieldName = 'SIZE'
          Footer.DisplayFormat = ' '#32317#35336'='
          Footer.FieldName = 'SIZE'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clBlue
          Footer.Font.Height = -16
          Footer.Font.Name = #24494#36575#27491#40657#39636
          Footer.Font.Style = []
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #23610#30908'|SIZE'
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.Color = clYellow
          Footer.FieldName = 'Qty'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = #24494#36575#27491#40657#39636
          Footer.Font.Style = []
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #38617#25976'|Qty'
          Width = 62
        end>
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghColored, pghRowAutoStretch]
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page]  /    &[Pages]')
    PageHeader.CenterText.Strings = (
      #26085#37096#38272#35373#20633#29986#33021#36948#25104#29376#27841#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 8
    Top = 152
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B646174655D2020202020200D0A5C70617220
      7D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 152
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BD' +
        'epartment.DepName,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartmen' +
        't.DepName ,SCBZCL.Qty'
      'union all '
      
        'select '#39'2008/11/13'#39' as SCDate ,SCBB.DepNo,'#39'Total'#39' as DepName, is' +
        'null(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as bzQty'
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/11/06'#39'and '#39'2008/11/13'#39
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/11/06'#39' and '#39'2008/11/13'#39
      '       and SCBB.DepNo like '#39'%'#39
      '       and SCBBS.SCBH like '#39'%'#39
      '       and BDepartment.DepName like '#39'%%'#39
      'Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty'
      
        'Order by  SCBB.DepNo,convert(varchar,SCBB.SCDate,111),BDepartmen' +
        't.DepName,SCBZCLA.Qty ')
    Left = 144
    Top = 448
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CutDispatch.DLNO,convert(varchar,CutDispatch.plandate,111' +
        ') AS Plandate, BDepartment.DepName,CutDispatchS.CutNum,CutDispat' +
        'chS.okCutNum '
      'FROM CutDispatch '
      'Left join  ( '
      
        '  select CutDispatchS.DLNO,Sum(CutNum) as CutNum,SUM(okCutNum) a' +
        's okCutNum from CutDispatchS  '
      '  INNER JOIN CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO  '
      '  LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  '
      
        '  where  convert(smalldatetime,convert(varchar,CutDispatch.USERD' +
        'ATE,111)) between '
      '     '#39'2019/01/13'#39' and '#39'2019/03/16'#39' '
      
        'Group by CutDispatchS.DLNO ) CutDispatchS on CutDispatchS.DLNO=C' +
        'utDispatch.DLNO '
      'LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  '
      'WHERE 1=1 '
      
        'and convert(smalldatetime,convert(varchar,CutDispatch.USERDATE,1' +
        '11)) between '
      '     '#39'2019/01/13'#39' and '#39'2019/03/16'#39' '
      '')
    Left = 144
    Top = 392
    object Query1DLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object Query1Plandate: TStringField
      FieldName = 'Plandate'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object Query1okCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 392
  end
  object query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT CutDispatchS.*,XXZL.DAOMH,CutDispatchS.xxcc,BWZL.zwsm,yws' +
        'm'
      '  FROM CutDispatchS'
      'LEFT JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH'
      'LEFT JOIN DDZL ON DDZL.DDBH=CutDispatchs.ZLBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao  '
      'WHERE CutDispatchS.DLNO=:DLNO'
      'AND cutnum>0'
      'ORDER BY CutDispatchS.BWBH'
      ''
      ''
      ''
      '')
    Left = 665
    Top = 138
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 13
      end>
    object query2DLNO: TStringField
      FieldName = 'DLNO'
      FixedChar = True
      Size = 12
    end
    object query2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object query2BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object query2SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object query2XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object query2CutNum: TIntegerField
      FieldName = 'CutNum'
    end
    object query2okCutNum: TIntegerField
      FieldName = 'okCutNum'
    end
    object query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object query2ScanUser: TStringField
      FieldName = 'ScanUser'
      FixedChar = True
      Size = 10
    end
    object query2ScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object query2DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object query2xxcc_1: TStringField
      FieldName = 'xxcc_1'
      FixedChar = True
      Size = 6
    end
    object query2zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object query2ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object DS2: TDataSource
    DataSet = query2
    Left = 697
    Top = 138
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'SELECT * FROM CutDispatchSS'
      'WHERE '
      '  DLNO = :DLNO AND'
      '  ZLBH = :ZLBH AND'
      '  BWBH = :BWBH AND'
      '  SIZE = :SIZE AND'
      '  CLBH = :CLBH'
      'order by DDBH'
      ''
      ''
      '')
    Left = 761
    Top = 466
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DLNO'
        ParamType = ptUnknown
        Size = 13
      end
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'BWBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'SIZE'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query3SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query3Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query3DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 785
    Top = 466
  end
end
