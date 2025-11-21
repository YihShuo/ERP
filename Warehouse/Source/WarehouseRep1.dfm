object WarehouseRep: TWarehouseRep
  Left = 278
  Top = 202
  Width = 735
  Height = 500
  Caption = 'WarehouseRep'
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
    Width = 727
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 368
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 160
      Top = 24
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 58
      Height = 16
      Caption = 'ArticleNo:'
    end
    object Label1: TLabel
      Left = 24
      Top = 64
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label8: TLabel
      Left = 176
      Top = 61
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Edit3: TEdit
      Left = 424
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 344
      Top = 48
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button2: TButton
      Left = 456
      Top = 48
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 56
      Width = 105
      Height = 24
      Date = 39477.775883784720000000
      Format = 'yyyy/MM/dd'
      Time = 39477.775883784720000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 56
      Width = 105
      Height = 24
      Date = 39477.776384722220000000
      Format = 'yyyy/MM/dd'
      Time = 39477.776384722220000000
      TabOrder = 6
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 89
    Width = 256
    Height = 377
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USERDate'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTQty'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 63
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 256
    Top = 89
    Width = 471
    Height = 377
    Align = alRight
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 9
      Top = 1
      Width = 279
      Height = 375
      Align = alRight
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DDBH'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTQty'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 73
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 288
      Top = 1
      Width = 182
      Height = 375
      Align = alRight
      Caption = 'Panel3'
      TabOrder = 1
      object DBGrid3: TDBGrid
        Left = 9
        Top = 1
        Width = 172
        Height = 373
        Align = alRight
        DataSource = DS3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'XXCC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Width = 73
            Visible = True
          end>
      end
    end
  end
  object DailyRep: TQuery
    AfterScroll = DailyRepAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(varchar,USERDate,111) as USERDate,count(CTNO) as ' +
        'CTQty,sum(Qty) as Qty'
      'from SCSMRK '
      
        'where convert(smalldatetime,convert(varchar,USERDate,111)) betwe' +
        'en '
      #39'2008/03/16'#39' and  '#39'2008/03/23'#39
      'group by convert(varchar,USERDATE,111) ')
    Left = 176
    Top = 144
    object DailyRepUSERDate: TStringField
      FieldName = 'USERDate'
      FixedChar = True
      Size = 30
    end
    object DailyRepCTQty: TIntegerField
      FieldName = 'CTQty'
      DisplayFormat = '##,#0'
    end
    object DailyRepQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = DailyRep
    Left = 208
    Top = 144
  end
  object DDZLRep: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SCSMRK.DDBH,sum(SCSMRK.Qty) as Qty,count(SCSMRK.CTNO) as ' +
        'CTQty,convert(varchar,SCSMRK.USERDate,111) as USERDate'
      'from SCSMRK '
      'where convert(varchar,SCSMRK.USERDate,111)=:USERDate'
      'group by SCSMRK.DDBH,convert(varchar,SCSMRK.USERDate,111)'
      'order by SCSMRK.DDBH,convert(varchar,SCSMRK.USERDate,111)')
    Left = 399
    Top = 153
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'USERDate'
        ParamType = ptUnknown
        Size = 31
      end>
    object DDZLRepUSERDate: TStringField
      FieldName = 'USERDate'
      FixedChar = True
      Size = 30
    end
    object DDZLRepDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLRepCTQty: TIntegerField
      FieldName = 'CTQty'
      DisplayFormat = '##,#0'
    end
    object DDZLRepQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = DDZLRep
    Left = 431
    Top = 153
  end
  object DDCC: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select SCSMRKS.DDBH,SCSMRKS.XXCC,sum(SCSMRKS.Qty) as Qty'
      'from SCSMRKS'
      
        'left join SCSMRK on SCSMRK.DDBH=SCSMRKS.DDBH and SCSMRK.CTNO=SCS' +
        'MRKS.CTNO'
      'where convert(varchar,SCSMRK.USERDate,111)=:USERDate'
      'and SCSMRKS.DDBH=:DDBH'
      'group by SCSMRKS.DDBH,SCSMRKS.XXCC'
      'order by SCSMRKS.DDBH,SCSMRKS.XXCC')
    Left = 650
    Top = 154
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'USERDate'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DDCCDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDCCXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object DDCCQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS3: TDataSource
    DataSet = DDCC
    Left = 690
    Top = 154
  end
end
