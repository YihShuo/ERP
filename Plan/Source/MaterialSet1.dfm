object MaterialSet: TMaterialSet
  Left = 290
  Top = 180
  Width = 902
  Height = 569
  Caption = 'MaterialSet'
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
    Width = 894
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #35330#21934#32232#34399':'
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label3: TLabel
      Left = 208
      Top = 8
      Width = 73
      Height = 16
      AutoSize = False
      Caption = 'ARTICLE:'
    end
    object Label4: TLabel
      Left = 208
      Top = 24
      Width = 59
      Height = 16
      Caption = 'ARTICLE:'
    end
    object Label5: TLabel
      Left = 384
      Top = 8
      Width = 49
      Height = 16
      AutoSize = False
      Caption = #22411#39636#21517':'
    end
    object Label6: TLabel
      Left = 384
      Top = 24
      Width = 50
      Height = 16
      Caption = 'MODEL:'
    end
    object Label7: TLabel
      Left = 208
      Top = 48
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Label8: TLabel
      Left = 208
      Top = 64
      Width = 49
      Height = 16
      AutoSize = False
      Caption = #26085#26399':'
    end
    object Label9: TLabel
      Left = 16
      Top = 48
      Width = 66
      Height = 16
      Caption = 'CustName:'
    end
    object Label10: TLabel
      Left = 16
      Top = 64
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #23458#25142#21517#31281':'
    end
    object Label11: TLabel
      Left = 392
      Top = 48
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #20998#39006':'
    end
    object Label12: TLabel
      Left = 392
      Top = 64
      Width = 35
      Height = 16
      Caption = 'Type:'
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
      Left = 448
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 528
      Top = 44
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 616
      Top = 44
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
    end
    object Button3: TButton
      Left = 704
      Top = 44
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 264
      Top = 56
      Width = 121
      Height = 24
      Date = 39866.904047303240000000
      Format = 'yyyy/MM/dd'
      Time = 39866.904047303240000000
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 88
      Top = 56
      Width = 113
      Height = 24
      TabOrder = 7
    end
    object CBX1: TComboBox
      Left = 432
      Top = 56
      Width = 89
      Height = 24
      ItemHeight = 16
      TabOrder = 8
      Text = 'CBX1'
      Items.Strings = (
        'All'
        'C_Main'
        'C_Vice'
        'S_Mat'
        'O_Mat'
        'A_Mat')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 894
    Height = 446
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'C_MAIN'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'C_VICE'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'S_MAT'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'O_MAT'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'A_MAT'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'All_OK'
        Footers = <>
        Width = 50
      end>
  end
  object SCPTCL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCPTCL.*,LBZLS.YWSM as Country,XXZL.Article,XXZL.XieMing,' +
        'KFZL.KFJC,DDZL.Pairs'
      'from SCPTCL'
      'left join DDZL on DDZL.ZLBH=SCPTCL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZl.SheHao=DDZL' +
        '.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH ')
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
    end
    object SCPTCLC_MAIN: TDateTimeField
      FieldName = 'C_MAIN'
      DisplayFormat = 'yy/MM/dd'
    end
    object SCPTCLC_VICE: TDateTimeField
      FieldName = 'C_VICE'
      DisplayFormat = 'yy/MM/dd'
    end
    object SCPTCLS_MAT: TDateTimeField
      FieldName = 'S_MAT'
      DisplayFormat = 'yy/MM/dd'
    end
    object SCPTCLO_MAT: TDateTimeField
      FieldName = 'O_MAT'
      DisplayFormat = 'yy/MM/dd'
    end
    object SCPTCLA_MAT: TDateTimeField
      FieldName = 'A_MAT'
      DisplayFormat = 'yy/MM/dd'
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
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 200
  end
end
