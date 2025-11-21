object MaterialList: TMaterialList
  Left = 191
  Top = 146
  Width = 1404
  Height = 827
  Caption = 'MaterialList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1386
    Height = 91
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 115
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 320
      Top = 15
      Width = 115
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Engnish Name:'
    end
    object Label3: TLabel
      Left = 322
      Top = 52
      Width = 115
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chinese Name:'
    end
    object Edit1: TEdit
      Left = 130
      Top = 12
      Width = 151
      Height = 28
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 440
      Top = 10
      Width = 101
      Height = 28
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 550
      Top = 10
      Width = 91
      Height = 28
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 650
      Top = 10
      Width = 81
      Height = 28
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 440
      Top = 50
      Width = 101
      Height = 28
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 550
      Top = 50
      Width = 91
      Height = 28
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 650
      Top = 50
      Width = 81
      Height = 28
      TabOrder = 6
    end
    object Button1: TButton
      Left = 780
      Top = 40
      Width = 101
      Height = 41
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 892
      Top = 40
      Width = 94
      Height = 41
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object cb1: TCheckBox
      Left = 78
      Top = 60
      Width = 121
      Height = 21
      Caption = 'Main Material'
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 1386
    Height = 420
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1384
      Height = 418
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cldh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 101
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 375
        end
        item
          EditButtons = <>
          FieldName = 'zwpm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 375
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'lycc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'gjlb'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'cqdh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'tyjh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 36
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 511
    Width = 1386
    Height = 269
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object DBGridEh2: TDBGridEh
      Left = 771
      Top = 1
      Width = 614
      Height = 267
      Align = alClient
      DataSource = DataSource3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'xiexing'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'shehao'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'bwbh'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'zwsm'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Width = 130
        end
        item
          EditButtons = <>
          FieldName = 'ywsm'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Width = 98
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 770
      Height = 267
      Align = alLeft
      DataSource = DataSource2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cldh1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Width = 118
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Width = 111
        end
        item
          EditButtons = <>
          FieldName = 'syl'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Width = 134
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Width = 217
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLZl')
    Left = 256
    Top = 144
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.CLZl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1lycc: TStringField
      FieldName = 'lycc'
      Origin = 'DB.CLZl.lycc'
      FixedChar = True
      Size = 1
    end
    object Query1gjlb: TStringField
      FieldName = 'gjlb'
      Origin = 'DB.CLZl.gjlb'
      FixedChar = True
      Size = 4
    end
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      Origin = 'DB.CLZl.cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      Origin = 'DB.CLZl.tyjh'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 144
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select * from clzhzl'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'where clzhzl.cldh=:cldh')
    Left = 192
    Top = 457
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query2cldh1: TStringField
      FieldName = 'cldh1'
      Origin = 'DB.clzhzl.cldh1'
      FixedChar = True
      Size = 10
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.clzhzl.cldh'
      FixedChar = True
      Size = 200
    end
    object Query2syl: TFloatField
      FieldName = 'syl'
      Origin = 'DB.clzhzl.syl'
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.clzhzl.USERDATE'
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select xxzls.xiexing,xxzls.shehao,xxzls.bwbh,bwzl.zwsm,bwzl.ywsm'
      'from xxzls'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh  '
      'where clbh=:cldh')
    Left = 640
    Top = 465
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cldh'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query3xiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object Query3shehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object Query3bwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 4
    end
    object Query3zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object Query3ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 240
    Top = 465
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 680
    Top = 465
  end
end
