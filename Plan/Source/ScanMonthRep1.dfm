object ScanMonthRep: TScanMonthRep
  Left = 257
  Top = 213
  Width = 870
  Height = 500
  Caption = 'ScanMonthRep'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    ColCount = 20
    DefaultColWidth = 35
    DefaultRowHeight = 20
    RowCount = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DepName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ScanDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 36
      Height = 18
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 128
      Top = 32
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
    object Label1: TLabel
      Left = 224
      Top = 32
      Width = 34
      Height = 18
      Caption = 'Dep:'
    end
    object Label3: TLabel
      Left = 336
      Top = 32
      Width = 38
      Height = 18
      Caption = 'Type:'
    end
    object Button1: TButton
      Left = 560
      Top = 16
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 704
      Top = 16
      Width = 57
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 632
      Top = 16
      Width = 65
      Height = 33
      Caption = 'Switch'
      Enabled = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object CBX1: TComboBox
      Left = 56
      Top = 24
      Width = 65
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      Text = '2007'
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
    object CBX2: TComboBox
      Left = 168
      Top = 24
      Width = 49
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
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
    object Edit1: TEdit
      Left = 264
      Top = 24
      Width = 65
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 480
      Top = 32
      Width = 73
      Height = 17
      Caption = 'OutPut'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CB1: TComboBox
      Left = 376
      Top = 24
      Width = 97
      Height = 26
      Style = csDropDownList
      ItemHeight = 18
      ItemIndex = 0
      TabOrder = 7
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
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select sum(SCSM.Qty) as Qty,'#39'2008/06'#39
      'as ScanDate,SCSM.DepID,'#39'Tot'#39' as DepName'
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      
        'where  convert(smalldatetime,convert(varchar,SCSM.USERDate,111))' +
        ' between '
      #39'2008/06/01'#39' and '#39'2008/06/30'#39
      'group by  SCSM.DepID'
      ' union '
      
        'select sum(SCSM.Qty) as Qty,convert(varchar,SCSM.USERDATE,111) a' +
        's ScanDate,SCSM.DepID,BDepartment.DepName'
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      
        'where  convert(smalldatetime,convert(varchar,SCSM.USERDate,111))' +
        ' between '
      #39'2008/06/01'#39' and '#39'2008/06/30'#39
      
        'group by  SCSM.DepID,BDepartment.DepName,convert(varchar,SCSM.US' +
        'ERDATE,111)'
      'order by SCSM.DepID, ScanDate')
    Left = 448
    Top = 200
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
    object Query1ScanDate: TStringField
      FieldName = 'ScanDate'
      FixedChar = True
      Size = 30
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    Left = 656
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    Left = 528
    Top = 104
  end
end
