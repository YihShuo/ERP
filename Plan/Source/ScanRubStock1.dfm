object ScanRubStock: TScanRubStock
  Left = 293
  Top = 187
  Width = 870
  Height = 500
  Caption = 'ScanRubStock'
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
    Width = 862
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 30
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label9: TLabel
      Left = 16
      Top = 16
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 32
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Label7: TLabel
      Left = 200
      Top = 16
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #24037#24207':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 320
      Top = 24
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
    end
    object Label2: TLabel
      Left = 496
      Top = 24
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Button1: TButton
      Left = 704
      Top = 16
      Width = 81
      Height = 33
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object CB1: TComboBox
      Left = 72
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 0
      Text = 'VTX'
    end
    object CBX3: TComboBox
      Left = 240
      Top = 24
      Width = 57
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object Edit1: TEdit
      Left = 368
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 552
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 862
    Height = 409
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object DailyOrd: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(varch' +
        'ar,SCBB.SCDate,111)) as SCDate'
      
        '         ,BDepartment.DepName,BDepartment.DepMemo,sum(SCBBS.Qty)' +
        ' as Qty'
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      'left join Bdepartment on BDepartment.ID=SCBB.DepNO'
      
        'where convert(smalldatetime,convert(varchar,SCBB.SCDate,111))='#39'2' +
        '009/10/30'#39
      '         and BDepartment.DepName like '#39'%%'#39
      
        'group by SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(var' +
        'char,SCBB.SCDate,111))'
      '         ,BDepartment.DepName,BDepartment.DepMemo'
      'union '
      
        'select '#39'zTotal'#39' as SCBH,SCBBS.GXLB,convert(smalldatetime,convert' +
        '(varchar,SCBB.SCDate,111)) as SCDate'
      
        '         ,BDepartment.DepName,BDepartment.DepMemo,sum(SCBBS.Qty)' +
        ' as Qty'
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      'left join Bdepartment on BDepartment.ID=SCBB.DepNO'
      
        'where convert(smalldatetime,convert(varchar,SCBB.SCDate,111))='#39'2' +
        '009/10/30'#39
      '         and BDepartment.DepName like '#39'%%'#39
      
        'group by  SCBBS.GXLB,convert(smalldatetime,convert(varchar,SCBB.' +
        'SCDate,111))'
      '               ,BDepartment.DepName,BDepartment.DepMemo'
      'order by SCBBS.GXLB,BDepartment.DepName')
    Left = 208
    Top = 136
  end
  object DS1: TDataSource
    DataSet = DailyOrd
    Left = 248
    Top = 136
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 136
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
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
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 152
    object Print1: TMenuItem
      Caption = 'Print'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
  end
end
