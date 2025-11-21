object MaterialSetP: TMaterialSetP
  Left = 348
  Top = 186
  Width = 870
  Height = 500
  Caption = 'MaterialSetP'
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
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label4: TLabel
      Left = 208
      Top = 24
      Width = 59
      Height = 16
      Caption = 'ARTICLE:'
    end
    object Label6: TLabel
      Left = 376
      Top = 24
      Width = 50
      Height = 16
      Caption = 'MODEL:'
    end
    object Label1: TLabel
      Left = 24
      Top = 64
      Width = 71
      Height = 16
      Caption = 'ETD YEAR:'
    end
    object Label3: TLabel
      Left = 200
      Top = 64
      Width = 50
      Height = 16
      Caption = 'MONTH'
    end
    object Label5: TLabel
      Left = 360
      Top = 64
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 272
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 432
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 576
      Top = 52
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 664
      Top = 52
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 752
      Top = 52
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 432
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 862
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    ParentFont = False
    PopupMenu = PopupMenu1
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
        Footers = <>
        ReadOnly = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        ReadOnly = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'C_MAIN'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'C_VICE'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'S_MAT'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'O_MAT'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'A_MAT'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'All_OK'
        Footers = <>
        PickList.Strings = (
          'Y')
        Width = 50
      end>
  end
  object CBX2: TComboBox
    Left = 112
    Top = 56
    Width = 81
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
      '2020')
  end
  object CBX3: TComboBox
    Left = 264
    Top = 56
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
  object SCPTCL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SCPTCL.*,XXZL.Article,XXZL.XieMing,LBZLS.YWSM as Country,'
      '         DDZL.Pairs,KFZL.KFJC'
      'from SCPTCL '
      'left join DDZL on DDZl.ZLBH=SCPTCL.ZLBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao '
      'left join KFZl on KFZL.KFDH=DDZl.KHBH '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'where SCPTCL.ZLBH like '#39'%'#39
      '      and XXZl.Article like '#39'%%'#39
      '      and XXZl.XieMing like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '
      '      '#39'2009/01/01'#39'and '#39'2009/01/31'#39)
    UpdateObject = UpPT
    Left = 248
    Top = 200
    object SCPTCLZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SCPTCLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SCPTCLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SCPTCLCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object SCPTCLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SCPTCLPairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object SCPTCLC_MAIN: TDateTimeField
      FieldName = 'C_MAIN'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCPTCLC_VICE: TDateTimeField
      FieldName = 'C_VICE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCPTCLS_MAT: TDateTimeField
      FieldName = 'S_MAT'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCPTCLO_MAT: TDateTimeField
      FieldName = 'O_MAT'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCPTCLA_MAT: TDateTimeField
      FieldName = 'A_MAT'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SCPTCLAll_OK: TStringField
      FieldName = 'All_OK'
      FixedChar = True
      Size = 1
    end
    object SCPTCLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SCPTCLUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object SCPTCLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = SCPTCL
    Left = 288
    Top = 200
  end
  object UpPT: TUpdateSQL
    ModifySQL.Strings = (
      'update SCPTCL'
      'set'
      '  C_MAIN = :C_MAIN,'
      '  C_VICE = :C_VICE,'
      '  S_MAT = :S_MAT,'
      '  O_MAT = :O_MAT,'
      '  A_MAT = :A_MAT,'
      '  All_OK = :All_OK,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate,'
      '  YN = :YN'
      'where'
      '  ZLBH = :OLD_ZLBH')
    InsertSQL.Strings = (
      'insert into SCPTCL'
      
        '  (C_MAIN, C_VICE, S_MAT, O_MAT, A_MAT, All_OK, USERID, USERDate' +
        ', YN)'
      'values'
      
        '  (:C_MAIN, :C_VICE, :S_MAT, :O_MAT, :A_MAT, :All_OK, :USERID, :' +
        'USERDate, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from SCPTCL'
      'where'
      '  ZLBH = :OLD_ZLBH')
    Left = 328
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 152
    object N1: TMenuItem
      Caption = 'Modify'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Calculate'
      Enabled = False
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = 'Check Material'
      OnClick = N5Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 376
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 240
  end
end
