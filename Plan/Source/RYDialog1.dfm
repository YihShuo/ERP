object RYDialog: TRYDialog
  Left = 549
  Top = 294
  BorderStyle = bsDialog
  Caption = 'RY'
  ClientHeight = 450
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label3: TLabel
    Left = 151
    Top = 13
    Width = 48
    Height = 16
    Caption = 'Building'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 155
      Top = 13
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object Label4: TLabel
      Left = 15
      Top = 13
      Width = 48
      Height = 16
      Caption = 'Building'
    end
    object Label5: TLabel
      Left = 293
      Top = 13
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object ED_RY: TEdit
      Left = 317
      Top = 9
      Width = 108
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 606
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ED_Building: TEdit
      Left = 68
      Top = 9
      Width = 61
      Height = 24
      ReadOnly = True
      TabOrder = 2
    end
    object ED_Lean: TEdit
      Left = 190
      Top = 9
      Width = 77
      Height = 24
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 706
    Height = 409
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    HorzScrollBar.Tracking = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        DisplayFormat = 'M/d'
        EditButtons = <>
        FieldName = 'schedule_date'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25490#31243#26085#26399'|Shedule'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#32232#34399'|RY'
        Width = 100
      end
      item
        DisplayFormat = 'M/d'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20986#36008#26085#26399'|XH'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'NT'
        Footers = <>
        Title.Caption = #39006#22411'|NT'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'BuyNo'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'BUY'#21029'|MG'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#34399'|SKU'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#38617#25976'|RY Pairs'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#39636'|LY'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26982#38957'|Mold'
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 152
    object Query1Seq: TFloatField
      FieldName = 'Seq'
    end
    object Query1schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1BuyNo: TStringField
      FieldName = 'BuyNo'
      Size = 10
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1MinCycle: TIntegerField
      FieldName = 'MinCycle'
    end
    object Query1MaxCycle: TIntegerField
      FieldName = 'MaxCycle'
    end
    object Query1NT: TStringField
      FieldName = 'NT'
      Size = 10
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      Size = 30
    end
    object Query1RYTYPE: TStringField
      FieldName = 'RYTYPE'
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 120
  end
end
