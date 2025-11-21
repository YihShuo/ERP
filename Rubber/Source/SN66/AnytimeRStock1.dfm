object AnytimeRStock: TAnytimeRStock
  Left = 2173
  Top = 297
  Width = 915
  Height = 433
  Caption = 'AnytimeRStock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 907
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 18
      Top = 45
      Width = 56
      Height = 16
      Caption = 'ModeNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 229
      Top = 43
      Width = 35
      Height = 16
      Caption = 'Color:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DateRB2: TRadioButton
      Left = 14
      Top = 22
      Width = 81
      Height = 17
      Caption = 'Scan Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object MJCB: TComboBox
      Left = 102
      Top = 42
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object CLCB: TComboBox
      Left = 276
      Top = 42
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = 'ALL'
      OnChange = CLCBChange
      Items.Strings = (
        'ALL')
    end
    object Button1: TButton
      Left = 421
      Top = 39
      Width = 75
      Height = 28
      Caption = 'Query'
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
      Left = 103
      Top = 9
      Width = 114
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = DTP1Change
    end
    object DateRB1: TRadioButton
      Left = 13
      Top = 5
      Width = 90
      Height = 17
      Caption = 'Ngay Cong'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LastMonth: TLabel
      Left = 224
      Top = 34
      Width = 438
      Height = 25
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 17
      Top = 7
      Width = 57
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB2: TBitBtn
      Left = 74
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Save Current'
      Caption = 'Monthly'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 160
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 137
    Width = 907
    Height = 265
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Stock'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 899
        Height = 234
        Align = alClient
        DataSource = WHSDDS
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        UseMultiTitle = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Stock In / Out'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 899
        Height = 234
        Align = alClient
        DataSource = WHSDIODS
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
            Title.Caption = #27169#34399'|MJBH'
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'EnglishName'
            Footers = <>
            Title.Caption = #38991#33394'|ColorNo'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
            Title.Caption = #23610#30908'|SIZE'
            Width = 62
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'RemQty'
            Footers = <>
            Title.Caption = #38617#25976'|Qty'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footers = <>
            Title.Caption = #26399#21021#25976#37327'|LastRem'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Title.Caption = #20837#24235'|RKQty'
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <>
            Title.Caption = #20986#24235'|LLQty'
            Width = 68
          end>
      end
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjbh '
      'from LIY_DD.dbo.mjzl'
      'where IsNull(bz2,'#39#39')<>'#39#39
      'group by bz2'
      'order by bz2')
    Left = 175
    Top = 233
  end
  object WHSDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select case when workscan.Class=0 then '#39'Ca 1'#39'  '
      '            when workscan.Class=1 then '#39'Ca 2'#39'  '
      '            when workscan.Class=2 then '#39'Ca 3'#39' end as Class, '
      
        '       workscan.Class as CA,workplans.MJBH,workplans.ColorNo,col' +
        'orclass.EnglishName,'
      
        '       Sum(Case when workplans.SIZE='#39' 10.5'#39' then workscan.Qty en' +
        'd) as '#39'[ 10.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 11.0'#39' then workscan.Qty en' +
        'd) as '#39'[ 11.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 11.5'#39' then workscan.Qty en' +
        'd) as '#39'[ 11.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 12.0'#39' then workscan.Qty en' +
        'd) as '#39'[ 12.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 12.5'#39' then workscan.Qty en' +
        'd) as '#39'[ 12.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 13.0'#39' then workscan.Qty en' +
        'd) as '#39'[ 13.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39' 13.5'#39' then workscan.Qty en' +
        'd) as '#39'[ 13.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'01.0'#39' then workscan.Qty end' +
        ') as '#39'[01.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'01.5'#39' then workscan.Qty end' +
        ') as '#39'[01.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'02.0'#39' then workscan.Qty end' +
        ') as '#39'[02.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'02.5'#39' then workscan.Qty end' +
        ') as '#39'[02.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'03.0'#39' then workscan.Qty end' +
        ') as '#39'[03.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'03.5'#39' then workscan.Qty end' +
        ') as '#39'[03.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'04.0'#39' then workscan.Qty end' +
        ') as '#39'[04.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'04.5'#39' then workscan.Qty end' +
        ') as '#39'[04.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'05.0'#39' then workscan.Qty end' +
        ') as '#39'[05.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'05.5'#39' then workscan.Qty end' +
        ') as '#39'[05.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'06.0'#39' then workscan.Qty end' +
        ') as '#39'[06.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'06.5'#39' then workscan.Qty end' +
        ') as '#39'[06.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'07.0'#39' then workscan.Qty end' +
        ') as '#39'[07.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'07.5'#39' then workscan.Qty end' +
        ') as '#39'[07.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'08.0'#39' then workscan.Qty end' +
        ') as '#39'[08.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'08.5'#39' then workscan.Qty end' +
        ') as '#39'[08.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'09.0'#39' then workscan.Qty end' +
        ') as '#39'[09.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'09.5'#39' then workscan.Qty end' +
        ') as '#39'[09.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'10.0'#39' then workscan.Qty end' +
        ') as '#39'[10.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'10.5'#39' then workscan.Qty end' +
        ') as '#39'[10.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'11.0'#39' then workscan.Qty end' +
        ') as '#39'[11.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'11.5'#39' then workscan.Qty end' +
        ') as '#39'[11.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'12.0'#39' then workscan.Qty end' +
        ') as '#39'[12.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'12.5'#39' then workscan.Qty end' +
        ') as '#39'[12.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'13.0'#39' then workscan.Qty end' +
        ') as '#39'[13.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'13.5'#39' then workscan.Qty end' +
        ') as '#39'[13.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'14.0'#39' then workscan.Qty end' +
        ') as '#39'[14.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'14.5'#39' then workscan.Qty end' +
        ') as '#39'[14.5]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'15.0'#39' then workscan.Qty end' +
        ') as '#39'[15.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'16.0'#39' then workscan.Qty end' +
        ') as '#39'[16.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'17.0'#39' then workscan.Qty end' +
        ') as '#39'[17.0]'#39', '
      
        '       Sum(Case when workplans.SIZE='#39'18.0'#39' then workscan.Qty end' +
        ') as '#39'[18.0]'#39', '
      'Sum(workscan.Qty) as TotalQty '
      'from LIY_DD.dbo.workscan workscan'
      
        'left join LIY_DD.dbo.workplans workplans on workplans.codebar=le' +
        'ft(workscan.codebar,(CHARINDEX('#39'-'#39',workscan.codebar)-1)) and wor' +
        'kplans.SNO=1  '
      
        'left join LIY_DD.dbo.colorclass'#9'colorclass  on colorclass.ColorN' +
        'o=workplans.ColorNo '
      
        'where Convert(smalldatetime,convert(varchar,workscan.scandate,11' +
        '1))='#39'2016/10/26'#39' '
      
        'Group by workscan.Class,workplans.MJBH,workplans.ColorNo,colorcl' +
        'ass.EnglishName')
    Left = 208
    Top = 233
  end
  object WHSDDS: TDataSource
    DataSet = WHSDQry
    Left = 208
    Top = 265
  end
  object SizeQ: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 201
  end
  object ColorClassQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjbh '
      'from LIY_DD.dbo.mjzl'
      'where IsNull(bz2,'#39#39')<>'#39#39
      'group by bz2'
      'order by bz2')
    Left = 391
    Top = 105
  end
  object WHSDIOQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *  from ('
      
        'select RModel.MJBH,colorclass.EnglishName,RModel.SIZE,WorkWHSD_M' +
        'onth.Qty as LastRem,WorkScanI.RKQty,WorkScanO.LLQty,IsNull(WorkW' +
        'HSD_Month.Qty,0)+IsNull(WorkScanI.RKQty,0)-IsNull(WorkScanO.LLQt' +
        'y,0) as RemQty from ('
      
        'select distinct workPlan.MJBH,workPlan.colorNo,workplans.SIZE fr' +
        'om LIY_DD.dbo.workPlan workPlan,LIY_DD.dbo.workplans workplans w' +
        'here workplan.workID=workplans.workID ) RModel'
      
        'left join (select MJBH,ColorNo,SIZE,Qty from LIY_DD.dbo.WorkWHSD' +
        '_Month WorkWHSD_Month where KCYEAR='#39'2020'#39' and KCMONTH='#39'05'#39') Work' +
        'WHSD_Month on WorkWHSD_Month.MJBH=RModel.MJBH and RModel.ColorNo' +
        '=WorkWHSD_Month.ColorNo and RModel.SIZE=WorkWHSD_Month.SIZE'
      'left join ('
      'select MJBH,ColorNo,SIZE,Sum(Qty) as RKQty from ('
      
        'Select WorkScan.*,workplans.mjbh,workplans.colorno,workplans.siz' +
        'e from LIY_DD.dbo.WorkScan WorkScan'
      'left join ('
      
        #9'select workplan.mjbh,workplan.colorno,workplans.workid,workplan' +
        's.size,workplans.codebar '
      
        #9'from  LIY_DD.dbo.workplans workplans,LIY_DD.dbo.workplan workpl' +
        'an '
      #9'where workplan.workid=workplans.workid '
      
        #9'Group by workplan.mjbh,workplan.colorno,workplans.workid,workpl' +
        'ans.size,workplans.codebar  )  workplans on workplans.codebar=le' +
        'ft(workscan.codebar,(CHARINDEX('#39'-'#39',workscan.codebar)-1))'
      
        'where WorkScan.InOut='#39'I'#39' and convert(smalldatetime,convert(varch' +
        'ar,WorkScan.ScanDate,111)) between '#39'2020/06/01'#39' and '#39'2020/06/15'#39 +
        ' '
      
        ') WorkScanI Group by MJBH,ColorNo,SIZE ) WorkScanI on WorkScanI.' +
        'MJBH=RModel.MJBH and WorkScanI.ColorNo=RModel.ColorNo and WorkSc' +
        'anI.SIZE=RModel.SIZE'
      'left join ('
      'select MJBH,ColorNo,SIZE ,Sum(Qty) as LLQty from ('
      
        'Select WorkScan.*,workplans.mjbh,workplans.colorno,workplans.siz' +
        'e from LIY_DD.dbo.WorkScan WorkScan'
      'left join ('
      
        #9'select workplan.mjbh,workplan.colorno,workplans.workid,workplan' +
        's.size,workplans.codebar '
      
        #9'from  LIY_DD.dbo.workplans workplans,LIY_DD.dbo.workplan workpl' +
        'an '
      #9'where workplan.workid=workplans.workid '
      
        #9'Group by workplan.mjbh,workplan.colorno,workplans.workid,workpl' +
        'ans.size,workplans.codebar  )  workplans on workplans.codebar=le' +
        'ft(workscan.codebar,(CHARINDEX('#39'-'#39',workscan.codebar)-1))'
      
        'where WorkScan.InOut='#39'O'#39' and convert(smalldatetime,convert(varch' +
        'ar,WorkScan.ScanDate,111)) between '#39'2020/06/01'#39' and '#39'2020/06/15'#39 +
        ' '
      
        ') WorkScanI Group by MJBH,ColorNo,SIZE  ) WorkScanO on WorkScanO' +
        '.MJBH=RModel.MJBH and WorkScanO.ColorNo=RModel.ColorNo and WorkS' +
        'canO.SIZE=RModel.SIZE'
      
        'left join LIY_DD.dbo.colorclass colorclass on colorclass.ColorNo' +
        '=RModel.ColorNo '
      ' ) KCWorkScan'
      
        'where LastRem is not null or RKQty is not null or LLQty is not n' +
        'ull')
    Left = 240
    Top = 233
    object WHSDIOQryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 50
    end
    object WHSDIOQryEnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
    object WHSDIOQrySIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object WHSDIOQryLastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0'
    end
    object WHSDIOQryRKQty: TIntegerField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0'
    end
    object WHSDIOQryLLQty: TIntegerField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0'
    end
    object WHSDIOQryRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0'
    end
  end
  object WHSDIODS: TDataSource
    DataSet = WHSDIOQry
    Left = 240
    Top = 265
  end
end
