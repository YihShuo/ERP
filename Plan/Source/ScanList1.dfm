object ScanList: TScanList
  Left = 263
  Top = 219
  Width = 870
  Height = 500
  Caption = 'ScanList'
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
    Height = 113
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
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 48
      Height = 16
      Caption = 'XieXing:'
    end
    object Label6: TLabel
      Left = 24
      Top = 72
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Label5: TLabel
      Left = 192
      Top = 72
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 328
      Top = 24
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 544
      Top = 24
      Width = 35
      Height = 16
      Caption = 'Type:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 216
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 392
      Top = 64
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 512
      Top = 64
      Width = 89
      Height = 33
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 632
      Top = 64
      Width = 89
      Height = 33
      Caption = 'Print'
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 64
      Width = 113
      Height = 28
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 224
      Top = 64
      Width = 113
      Height = 28
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 408
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CB1: TComboBox
      Left = 584
      Top = 16
      Width = 89
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 8
      Text = 'All'
      Items.Strings = (
        'All'
        '0:Chat Out'
        '1:May In'
        '2:May Out'
        '3:Go In'
        '4:De Out')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 862
    Height = 353
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'XH'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SMLX'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID1'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID2'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDate'
        Title.Alignment = taCenter
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'THour'
        Width = 38
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SCSM.*,BDepartment.DepName,XXZl.Article,XXZl.XieMing '
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      'where SCSM.DDBH like '#39'%'#39
      'and XXZL.XieMing like '#39'%%'#39
      'and BDepartment.DepName like '#39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) be' +
        'tween '
      #39'2008/06/19'#39' and '#39'2008/06/19'#39)
    Left = 152
    Top = 88
    object Query1XH: TAutoIncField
      FieldName = 'XH'
    end
    object Query1SMLX: TStringField
      FieldName = 'SMLX'
      FixedChar = True
      Size = 2
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USERID1: TStringField
      FieldName = 'USERID1'
      FixedChar = True
      Size = 10
    end
    object Query1USERID2: TStringField
      FieldName = 'USERID2'
      FixedChar = True
      Size = 10
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1THour: TStringField
      FieldName = 'THour'
      FixedChar = True
      Size = 2
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 88
  end
end
