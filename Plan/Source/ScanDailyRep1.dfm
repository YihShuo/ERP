object ScanDailyRep: TScanDailyRep
  Left = 288
  Top = 221
  Width = 870
  Height = 500
  Caption = 'ScanDailyRep'
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
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 41
      Height = 20
      Caption = 'From:'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
    end
    object Label4: TLabel
      Left = 208
      Top = 40
      Width = 22
      Height = 20
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 216
      Top = 96
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 72
      Top = 88
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 584
      Top = 80
      Width = 97
      Height = 33
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 584
      Top = 24
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 32
      Width = 121
      Height = 28
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 240
      Top = 32
      Width = 121
      Height = 28
      Date = 39219.355734768520000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355734768520000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 296
      Top = 88
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 448
    Height = 337
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DepName'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ScanDate'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SMLX'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 79
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 448
    Top = 129
    Width = 414
    Height = 337
    Align = alRight
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 412
      Height = 168
      Align = alTop
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 1
        Width = 411
        Height = 166
        Align = alRight
        DataSource = DS2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DDBH'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Article'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XieMing'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Width = 59
            Visible = True
          end>
      end
    end
    object DBGrid3: TDBGrid
      Left = 1
      Top = 169
      Width = 256
      Height = 167
      Align = alLeft
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
          FieldName = 'XXCC'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 95
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCSM.DepID,BDepartment.DepName,SCSM.SMLX,sum(SCSM.Qty) as' +
        ' Qty,convert(varchar,SCSM.USERDATE,111) as ScanDate'
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      'where SCSM.DDBH like '#39'%'#39
      'and BDepartment.DepName like '#39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) be' +
        'tween '
      #39'2008/06/20'#39' and '#39'2008/06/27'#39
      
        'group by  SCSM.DepID,BDepartment.DepName,SCSM.SMLX,convert(varch' +
        'ar,SCSM.USERDATE,111)')
    Left = 280
    Top = 168
    object Query1SMLX: TStringField
      FieldName = 'SMLX'
      FixedChar = True
      Size = 2
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
    end
    object NN2: TMenuItem
      Caption = 'Excel'
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
  object DD: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SCSM.DepID,convert(varchar,SCSM.USERDATE,111) as USERDate' +
        ',SCSM.DDBH,sum(SCSM.Qty) as Qty,DDZL.Article,XXZL.XieMing'
      'from SCSM '
      'left join DDZL on DDZL.ZLBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and DDZL.SheHao=XXZl' +
        '.SheHao '
      'where convert(varchar,SCSM.USERDate,111)=:ScanDate'
      'and SCSM.DepID=:DepID'
      
        'group by SCSM.DepID,SCSM.DDBH,DDZL.Article,XXZL.XieMing,SCSM.USE' +
        'RDATE'
      'order by SCSM.DDBH '
      '')
    Left = 665
    Top = 138
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ScanDate'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
        Size = 11
      end>
    object DDUSERDate: TStringField
      FieldName = 'USERDate'
      FixedChar = True
      Size = 30
    end
    object DDDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object DDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object DDQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS2: TDataSource
    DataSet = DD
    Left = 697
    Top = 138
  end
  object DDS: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select DDBH,XXCC,Sum(Qty) as Qty '
      'from SCSM'
      'where convert(varchar,USERDate,111)=:USERDATE'
      'and DDBH=:DDBH'
      'and DepID=:DepID'
      'group by DDBH,XXCC'
      'order by XXCC')
    Left = 704
    Top = 369
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'USERDATE'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'DepID'
        ParamType = ptUnknown
        Size = 11
      end>
    object DDSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSM.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCSM.XXCC'
      FixedChar = True
      Size = 6
    end
    object DDSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.SCSM.Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS3: TDataSource
    DataSet = DDS
    Left = 752
    Top = 369
  end
end
