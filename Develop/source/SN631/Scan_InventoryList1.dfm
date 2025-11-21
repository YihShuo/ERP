object Scan_InventoryList: TScan_InventoryList
  Left = 307
  Top = 336
  Width = 1240
  Height = 480
  Caption = 'Scan_InventoryList'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ToolPanel: TPanel
    Left = 0
    Top = 0
    Width = 1224
    Height = 45
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 283
      Top = 9
      Width = 55
      Height = 23
      Caption = 'TestNO'
    end
    object Label3: TLabel
      Left = 470
      Top = 9
      Width = 28
      Height = 23
      Caption = 'SR#'
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 33
      Height = 23
      Caption = 'Year'
    end
    object Label2: TLabel
      Left = 136
      Top = 9
      Width = 52
      Height = 23
      Caption = 'Month'
    end
    object Label4: TLabel
      Left = 630
      Top = 9
      Width = 62
      Height = 23
      Caption = 'RFIDNO'
    end
    object Button1: TButton
      Left = 837
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 350
      Top = 8
      Width = 96
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 514
      Top = 8
      Width = 96
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Excel: TButton
      Left = 925
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Excel'
      TabOrder = 3
      OnClick = ExcelClick
    end
    object ComboBox2: TComboBox
      Left = 48
      Top = 8
      Width = 64
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '2020'
        '2021'
        '2022'
        '2023'
        '2024')
    end
    object ComboBox1: TComboBox
      Left = 198
      Top = 8
      Width = 64
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 5
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
    object Edit3: TEdit
      Left = 698
      Top = 8
      Width = 135
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 45
    Width = 1224
    Height = 396
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RFIDNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 247
      end
      item
        EditButtons = <>
        FieldName = 'TestNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'SRNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'DEVELOPER'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footer.FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'KEEPROOM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'KEEP ROOM'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'SHELFNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SHELF NO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'MONTH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'YEAR'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'Userdate'
        Footers = <>
        Title.Caption = 'DATE INPUT'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 88
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 73
    Top = 137
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select SCNORFIDNO as RFIDNO, RFID_TB.TESTNO, RFID_TB.Article as ' +
        'SRNO, ShoeTest.FD as DEVELOPER, '
      
        '       case when RFID_TB.TESTNO is null then 0 else 1 end as QTY' +
        ', RFID_TB.WHNO as KEEPROOM, '
      
        '       RFID_TB.SNO as SHELFNO, KCYEAR as YEAR, KCMONTH AS MONTH,' +
        ' RFID_TB.Userdate'
      ' FROM LIY_TYXUAN.dbo.RFID_WHMonth RFID_WHMonth'
      
        ' left join LIY_TYXUAN.dbo.RFID_TB RFID_TB on RFID_TB.RFIDNO=RFID' +
        '_WHMonth.SCNORFIDNO'
      ' left join ShoeTest on RFID_TB.TESTNO=ShoeTest.TestNo'
      ' where LEN(RFIDNO)=36')
    Left = 73
    Top = 177
    object Query1RFIDNO: TStringField
      FieldName = 'RFIDNO'
      FixedChar = True
      Size = 4
    end
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 11
    end
    object Query1SRNO: TStringField
      FieldName = 'SRNO'
      FixedChar = True
      Size = 15
    end
    object Query1DEVELOPER: TStringField
      FieldName = 'DEVELOPER'
      FixedChar = True
      Size = 1
    end
    object Query1QTY: TIntegerField
      FieldName = 'QTY'
    end
    object Query1KEEPROOM: TStringField
      FieldName = 'KEEPROOM'
      FixedChar = True
      Size = 10
    end
    object Query1SHELFNO: TStringField
      FieldName = 'SHELFNO'
    end
    object Query1MONTH: TStringField
      FieldName = 'MONTH'
    end
    object Query1YEAR: TStringField
      FieldName = 'YEAR'
    end
    object Query1Userdate: TDateTimeField
      FieldName = 'Userdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
end
