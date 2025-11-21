object SMDDLOCK: TSMDDLOCK
  Left = 330
  Top = 174
  Width = 928
  Height = 480
  Caption = 'SMDDLOCK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 106
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 97
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 325
      Top = 19
      Width = 50
      Height = 20
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 120
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 35
      Height = 16
      Caption = ' Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 635
      Top = 22
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Label2: TLabel
      Left = 493
      Top = 20
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 379
      Top = 16
      Width = 105
      Height = 29
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 724
      Top = 13
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 48
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = '2006'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 168
      Top = 16
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CBX3: TComboBox
      Left = 662
      Top = 18
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object Edit2: TEdit
      Left = 558
      Top = 18
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object pedcb: TCheckBox
      Left = 240
      Top = 8
      Width = 81
      Height = 17
      Caption = 'PlanEdate'
      TabOrder = 6
    end
    object okdcb: TCheckBox
      Left = 240
      Top = 24
      Width = 81
      Height = 17
      Caption = 'OKdate'
      TabOrder = 7
    end
    object etdcb: TCheckBox
      Left = 240
      Top = 40
      Width = 81
      Height = 17
      Caption = 'X/F Date'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object Button2: TButton
      Left = 364
      Top = 53
      Width = 157
      Height = 33
      Caption = 'Carry-Over Plans '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 539
      Top = 53
      Width = 158
      Height = 33
      Caption = 'Update PR/OK date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 762
    Height = 343
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 63
      end
      item
        Color = clLime
        EditButtons = <>
        FieldName = 'etd'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'X/F date'
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'DepNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.TitleButton = True
        Width = 69
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.TitleButton = True
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PlanEdate'
        Footers = <>
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PRdate'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'OKdate'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 95
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 762
    Top = 97
    Width = 150
    Height = 343
    Align = alRight
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <
          item
            FieldName = 'XXCC'
            ValueType = fvtCount
          end>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 51
      end>
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 680
    Top = 32
  end
  object SMDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMDDLOCK.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZ' +
        'L.ShipDate as CSD,KFZL.KFJC,ywdd.etd/*,f.fpd,f.fped*/'
      'from SMDDLOCK'
      
        'left join SCGXDY on SCGXDY.GX=SMDDLOCK.GXLB and len(SCGXDY.GXLB)' +
        '=1'
      'left join Bdepartment on Bdepartment.ID=SMDDLOCK.DepNo'
      'left join DDZL on DDZl.ZLBH=SMDDLOCK.YSBH'
      
        'left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      
        'left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywd' +
        'd on ywdd.ysbh=SMDDLOCK.ysbh'
      
        '/*left join (select ddbh,sccx,plandate as fpd,planedate as fped ' +
        'from SMDDLOCK) as f on f.ddbh=SMDDLOCK.ddbh and f.sccx=SMDDLOCK.' +
        'gxlb*/'
      'where SMDDLOCK.DDBH like '#39'%'#39
      '      and isnull(KFZL.KFJC,'#39#39') like '#39'%%'#39
      '      and SMDDLOCK.SCYEAR='#39'2009'#39
      '      and SMDDLOCK.SCMONTH='#39'09'#39
      'order by SMDDLOCK.DDBH,SMDDLOCK.SCCX')
    Left = 432
    Top = 280
    object SMDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SMDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMDDQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMDDSCCX: TStringField
      FieldName = 'SCCX'
      FixedChar = True
      Size = 1
    end
    object SMDDSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMDDSCYEAR: TStringField
      FieldName = 'SCYEAR'
      FixedChar = True
      Size = 4
    end
    object SMDDSCMONTH: TStringField
      FieldName = 'SCMONTH'
      FixedChar = True
      Size = 2
    end
    object SMDDDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMDDPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object SMDDUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object SMDDUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMDDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMDDPlanEdate: TDateTimeField
      FieldName = 'PlanEdate'
    end
    object SMDDPRdate: TDateTimeField
      FieldName = 'PRdate'
    end
    object SMDDOKdate: TDateTimeField
      FieldName = 'OKdate'
    end
    object SMDDMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object SMDDDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object SMDDCSD: TDateTimeField
      FieldName = 'CSD'
    end
    object SMDDKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SMDDetd: TDateTimeField
      FieldName = 'etd'
    end
  end
  object DS1: TDataSource
    DataSet = SMDD
    Left = 392
    Top = 280
  end
  object DDdet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SMDDS'
      'where DDBH=:DDBH'
      'order by XXCC DESC')
    Left = 743
    Top = 226
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DDdetDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDS.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDdetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object DDdetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDS.Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = DDdet
    Left = 775
    Top = 226
  end
  object Q1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update SMDDLOCK'
      'set prdate = r.sdate'
      'from SMDDLOCK as p,'
      '(select scbbs.scbh,scbbs.gxlb,min(scbb.scdate) as sdate '
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      where scbb.scdate>getdate()-30 '
      '      group by  scbbs.scbh ,scbbs.gxlb) as r '
      
        'where r.scbh=p.ysbh and r.gxlb=p.gxlb and p.prdate is null and p' +
        '.plandate is not null'
      ''
      '')
    Left = 584
    Top = 73
  end
  object q2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update SMDDLOCK'
      'set okdate = r.edate'
      'from SMDDLOCK as p,'
      
        '(select scbbs.scbh,scbbs.gxlb,max(scbb.scdate) as edate,sum(qty)' +
        ' as qty , ddzl.pairs as totalQty'
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      left join ddzl on scbbs.scbh = ddzl.zlbh'
      '      where scbb.scdate>getdate()-30'
      '      group by  scbbs.scbh ,scbbs.gxlb, ddzl.pairs) as r'
      'where r.scbh=p.ysbh and r.gxlb=p.gxlb'
      
        '           and r.qty=r.totalQty and p.OKdate is null and p.pland' +
        'ate is not null')
    Left = 544
    Top = 73
  end
  object SMDDLOCK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'insert into SMDDLOCK   /*'#25235#21462#19978#26376#24050#25490#31243#35330#21934#33267'SMDDLOCK'#20013','#22914#24050#25235#36942#21063#19981#20877#25235#21462'*/'
      
        'select DDBH,GXLB,YSBH,GSBH,Article,XieMing,Qty,SCCX,SB,SCYEAR,SC' +
        'MONTH,'
      
        '       DepNO,PlanDate,GETDATE(),USERID,YN,PlanEdate,PRdate,OKdat' +
        'e'
      'from smdd'
      'where not exists (select DDBH from SMDDLOCK)'
      #9#9'    and PlanDate is not null'
      
        '        and CONVERT(varchar(7),PlanDate,111) = CONVERT(varchar(7' +
        '),dateadd(mm,-1,GETDATE()),111)')
    Left = 376
    Top = 80
  end
end
