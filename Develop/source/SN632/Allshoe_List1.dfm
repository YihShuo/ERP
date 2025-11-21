object Allshoe_List: TAllshoe_List
  Left = 351
  Top = 378
  Width = 1134
  Height = 480
  Caption = 'Allshoe_List'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ToolPanel: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 45
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 254
      Top = 9
      Width = 24
      Height = 19
      Caption = 'SR#'
    end
    object Label1: TLabel
      Left = 478
      Top = 9
      Width = 68
      Height = 19
      Caption = 'Date Input'
    end
    object Label2: TLabel
      Left = 662
      Top = 12
      Width = 8
      Height = 19
      Caption = '~'
    end
    object Label4: TLabel
      Left = 14
      Top = 9
      Width = 52
      Height = 19
      Caption = 'TESTNO'
    end
    object Button1: TButton
      Left = 797
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 298
      Top = 8
      Width = 159
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Excel: TButton
      Left = 885
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ExcelClick
    end
    object DTP1: TDateTimePicker
      Left = 552
      Top = 8
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 680
      Top = 8
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 74
      Top = 8
      Width = 159
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object PC: TPageControl
    Left = 0
    Top = 90
    Width = 1118
    Height = 351
    ActivePage = TS2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PCChange
    object TS1: TTabSheet
      Caption = 'All List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1110
        Height = 320
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
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
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footer.FieldName = 'ARTICLE'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'SAMPLEORDER'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'WHNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'WarehouseNO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'StorageNO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 250
          end
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
            Visible = False
            Width = 247
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
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'Keeping quantity in notice'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 175
          end
          item
            EditButtons = <>
            FieldName = 'QtyRe'
            Footers = <>
            Title.Caption = 'Reality scaning quantity'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'QtyS'
            Footers = <>
            Title.Caption = 'Missing quantity'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 115
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'RFID List'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1110
        Height = 320
        Align = alClient
        DataSource = DataSource2
        EvenRowColor = clWindow
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #24494#36575#27491#40657#39636
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
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
            Width = 70
          end
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
            Width = 260
          end
          item
            EditButtons = <>
            FieldName = 'SAMPLEORDER'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footer.FieldName = 'ARTICLE'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 175
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'SIZ'
            Footers = <>
            Title.Caption = 'SIZE'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Userdate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DATE INPUT'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DATE MOVEOUT'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'WHNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'WarehouseNO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'SNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'StorageNO'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'info'
            Footers = <>
            Title.Caption = 'USERID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'day'
            Footers = <>
            Title.Caption = 'DAY'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 45
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 1118
    Height = 45
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 254
      Top = 9
      Width = 24
      Height = 19
      Caption = 'SR#'
    end
    object Label7: TLabel
      Left = 862
      Top = 12
      Width = 8
      Height = 19
      Caption = '~'
    end
    object Label8: TLabel
      Left = 14
      Top = 9
      Width = 52
      Height = 19
      Caption = 'TESTNO'
    end
    object Label9: TLabel
      Left = 478
      Top = 9
      Width = 48
      Height = 19
      Caption = 'USERID'
    end
    object Button2: TButton
      Left = 997
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 298
      Top = 8
      Width = 159
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 1085
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP3: TDateTimePicker
      Left = 752
      Top = 8
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 3
    end
    object DTP4: TDateTimePicker
      Left = 880
      Top = 8
      Width = 105
      Height = 27
      Date = 44944.374869895830000000
      Format = 'yyyy/MM/dd'
      Time = 44944.374869895830000000
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 74
      Top = 8
      Width = 159
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 530
      Top = 8
      Width = 87
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object RB1: TRadioButton
      Left = 632
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Date Input'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 632
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Date Moveout'
      TabOrder = 8
    end
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
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1SAMPLEORDER: TStringField
      FieldName = 'SAMPLEORDER'
    end
    object Query1Season: TStringField
      FieldName = 'Season'
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
    end
    object Query1WHNO: TStringField
      FieldName = 'WHNO'
    end
    object Query1SNO: TStringField
      FieldName = 'SNO'
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
    end
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 11
    end
    object Query1RFIDNO: TStringField
      FieldName = 'RFIDNO'
      FixedChar = True
      Size = 30
    end
    object Query1Userdate: TDateTimeField
      FieldName = 'Userdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1QtyRe: TIntegerField
      FieldName = 'QtyRe'
    end
    object Query1QtyS: TFloatField
      FieldName = 'QtyS'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 193
    Top = 145
  end
  object Query2: TQuery
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
    Left = 193
    Top = 185
    object StringField8: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 11
    end
    object StringField9: TStringField
      FieldName = 'RFIDNO'
      FixedChar = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'SAMPLEORDER'
    end
    object StringField1: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object StringField3: TStringField
      FieldName = 'Season'
    end
    object StringField4: TStringField
      FieldName = 'Stage'
    end
    object Query2FD: TStringField
      FieldName = 'FD'
    end
    object Query2SIZ: TStringField
      FieldName = 'SIZ'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Userdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query2USERDATE1: TDateTimeField
      FieldName = 'USERDATE1'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object StringField5: TStringField
      FieldName = 'WHNO'
    end
    object StringField6: TStringField
      FieldName = 'SNO'
    end
    object Query2info: TStringField
      FieldName = 'info'
      Size = 100
    end
    object Query2day: TIntegerField
      FieldName = 'day'
    end
    object Query2DEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
    end
  end
end
