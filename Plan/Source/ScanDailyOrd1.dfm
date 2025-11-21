object ScanDailyOrd: TScanDailyOrd
  Left = 382
  Top = 275
  Width = 1055
  Height = 500
  Caption = #27599#26085#29983#29986#35330#21934#26126#32048
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 361
      Top = 39
      Width = 66
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #35330#21934#32232#34399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 50
      Top = 43
      Width = 33
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 356
      Top = 5
      Width = 73
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 6
      Width = 35
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 183
      Top = 43
      Width = 33
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = #24037#24207':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 200
      Top = 14
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 49
      Top = 24
      Width = 32
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Date:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 361
      Top = 20
      Width = 66
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 40
      Top = 56
      Width = 46
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'GSBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 185
      Top = 56
      Width = 45
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'GX:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 365
      Top = 54
      Width = 66
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Order No:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 544
      Top = 30
      Width = 65
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 9
      Width = 105
      Height = 24
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 432
      Top = 9
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CB1: TComboBox
      Left = 88
      Top = 41
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 3
      Text = 'VTX'
    end
    object CBX3: TComboBox
      Left = 224
      Top = 41
      Width = 41
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object DTP2: TDateTimePicker
      Left = 224
      Top = 9
      Width = 105
      Height = 24
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 5
    end
    object SCBHEdit: TEdit
      Left = 432
      Top = 40
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 640
      Top = 40
      Width = 177
      Height = 17
      Caption = #39023#31034#21295#32317#21015
      TabOrder = 7
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 73
    Width = 1047
    Height = 396
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Production'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1039
        Height = 365
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
        FooterFont.Height = -13
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
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'DepMemo'
            Footers = <>
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'SCDate'
            Footers = <>
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'GXLB'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Title.Caption = 'SKU'
            Width = 136
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Width = 189
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Production VS IQC'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1039
        Height = 365
        Align = alClient
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footer.FieldName = 'SCBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'GXLB'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'IQCQty'
            Footers = <>
          end>
      end
    end
  end
  object DailyOrd: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ('
      #9'Select SCBB.*,DDZL.ARTICLE,xxzl.XieMing from ('
      
        #9'Select SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(varc' +
        'har,SCBB.SCDate,111)) as SCDate   '
      
        #9#9'   ,BDepartment.DepName,BDepartment.DepMemo,sum(SCBBS.Qty) as ' +
        'Qty'
      #9'from SCBBS'
      #9'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      #9'left join Bdepartment on BDepartment.ID=SCBB.DepNO'
      
        #9'where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '      '#39'2024/08/24'#39' and '#39'2024/08/24'#39
      #9#9'  and BDepartment.DepName like '#39'%%'#39' '
      #9#9'  and BDepartment.GSBH='#39'TBA'#39
      
        #9'Group by SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(va' +
        'rchar,SCBB.SCDate,111))'
      #9#9#9' ,BDepartment.DepName,BDepartment.DepMemo'
      #9'union all'
      
        #9'Select SCBB.YSBH as SCBH,SCBB.GXLB,SCBB.ScanDate,BDepartment.De' +
        'pName,BDepartment.DepMemo,SUM(Qty) as Qty'
      #9'from ('
      
        #9'Select SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum' +
        '(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(smalldate' +
        'time,convert(varchar,SMZL.ScanDate,111)) as ScanDate,SMZL.DepNO '
      #9'from SMZL'
      #9'left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR'
      
        #9'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GX' +
        'LB '
      
        #9'where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111))' +
        ' between'
      '      '#39'2024/08/24'#39' and '#39'2024/08/24'#39
      #9'and SMDDSS.GXLB in ('#39'C'#39','#39'T'#39','#39'S'#39','#39'B'#39','#39'A'#39')'
      
        #9'Group by convert(smalldatetime,convert(varchar,SMZL.ScanDate,11' +
        '1)),SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,SMZL.DepNO ) S' +
        'CBB'
      #9'left join Bdepartment on BDepartment.ID=SCBB.DepNO '
      #9'where BDepartment.DepName like '#39'%%'#39' '
      #9#9'    and BDepartment.GSBH='#39'TBA'#39
      
        #9'Group by SCBB.YSBH,SCBB.GXLB,SCBB.ScanDate,BDepartment.DepName,' +
        'BDepartment.DepMemo '
      ' ) SCBB      '
      ' left join DDZL on DDZL.DDBH = SCBB.SCBH'
      
        ' left join xxzl on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao =' +
        ' xxzl.SheHao'
      ') AllDate         '
      
        'order by AllDate.GXLB,AllDate.DepName,convert(smalldatetime,conv' +
        'ert(varchar,AllDate.SCDate,111)),AllDate.SCBH')
    Left = 208
    Top = 136
    object DailyOrdSCDate: TDateTimeField
      FieldName = 'SCDate'
    end
    object DailyOrdGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object DailyOrdDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DailyOrdDepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object DailyOrdSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DailyOrdQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object DailyOrdarticle: TStringField
      FieldName = 'article'
      FixedChar = True
      Size = 1
    end
    object DailyOrdXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = DailyOrd
    Left = 208
    Top = 168
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 169
    Top = 136
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitGridToPageWidth]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #27599#26085#29983#29986#35330#21934#26126#32048)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 208
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 240
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object IQCQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select AllDate.*,WORP.Qty as IQCQty,DDZL.Pairs from ('
      
        #9'Select SCBH,GXLB,Max(DepName) as DepName,Max(SCDate) as SCDate,' +
        'Sum(Qty) as Qty from ('
      #9'Select SCBBS.SCBH,SCBBS.GXLB'
      
        #9#9'   ,sum(SCBBS.Qty) as Qty  ,Max(BDepartment.DepName) as DepNam' +
        'e, Max(convert(smalldatetime,convert(varchar,SCBB.SCDate,111))) ' +
        'as SCDate   '
      #9'from SCBBS'
      #9'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      #9'left join Bdepartment on BDepartment.ID=SCBB.DepNO'
      #9'left join DDZL on DDZL.DDBH=SCBBS.SCBH'
      #9'where DDZL.YN='#39'1'#39#9'     '
      #9#9'  and BDepartment.DepName like '#39'%%'#39' '
      #9#9'  and BDepartment.GSBH='#39'VA12'#39
      '             and SCBBS.GXLB='#39'A'#39
      #9'Group by SCBBS.SCBH,SCBBS.GXLB'
      #9'union all'
      
        #9'Select SCBB.YSBH as SCBH,SCBB.GXLB,SUM(Qty) as Qty ,Max(BDepart' +
        'ment.DepName) as DepName, Max(SCBB.ScanDate) as SCDate'
      #9'from ('
      
        #9'Select SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum' +
        '(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(smalldate' +
        'time,convert(varchar,SMZL.ScanDate,111)) as ScanDate,SMZL.DepNO '
      #9'from SMZL'
      #9'left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR'
      
        #9'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GX' +
        'LB '
      
        #9'where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111))' +
        ' between'
      '      '#39'2023/05/18'#39' and '#39'2023/05/18'#39
      #9'and SMDDSS.GXLB in ('#39'C'#39','#39'T'#39','#39'S'#39','#39'B'#39','#39'A'#39')'
      
        #9'Group by convert(smalldatetime,convert(varchar,SMZL.ScanDate,11' +
        '1)),SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,SMZL.DepNO ) S' +
        'CBB'
      #9'left join Bdepartment on BDepartment.ID=SCBB.DepNO '
      #9'left join DDZL on DDZL.DDBH=SCBB.YSBH'
      #9'where BDepartment.DepName like '#39'%%'#39' and  DDZL.YN='#39'1'#39' '
      #9#9'    and BDepartment.GSBH='#39'VA12'#39
      '             and SCBB.GXLB='#39'A'#39#9
      #9'Group by SCBB.YSBH,SCBB.GXLB'
      ' ) SCBB      '
      ' Group by SCBH,GXLB'
      ') AllDate         '
      'Left join ('
      'Select SCBH,Sum(Qty) as Qty'
      'from WOPR'
      'where GXLB='#39'AR'#39
      'Group by SCBH ) WORP on WORP.SCBH=AllDate.SCBH'
      'left join DDZL on DDZL.DDBH=AllDate.SCBH'
      'where AllDate.Qty<WORP.Qty')
    Left = 256
    Top = 136
    object IQCQuerySCDate: TDateTimeField
      DisplayWidth = 12
      FieldName = 'SCDate'
    end
    object IQCQueryDepName: TStringField
      DisplayWidth = 50
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object IQCQuerySCBH: TStringField
      DisplayWidth = 15
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object IQCQueryGXLB: TStringField
      DisplayWidth = 10
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object IQCQueryPairs: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object IQCQueryQty: TFloatField
      DisplayWidth = 10
      FieldName = 'Qty'
    end
    object IQCQueryIQCQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'IQCQty'
    end
  end
  object DS2: TDataSource
    DataSet = IQCQuery
    Left = 256
    Top = 168
  end
  object PopupMenu2: TPopupMenu
    Left = 256
    Top = 208
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
  end
end
