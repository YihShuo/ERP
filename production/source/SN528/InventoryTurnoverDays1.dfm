object InventoryTurnoverDays: TInventoryTurnoverDays
  Left = 462
  Top = 246
  Width = 1305
  Height = 675
  Caption = 'Turnover Days'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Turnover Days'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 22
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label3: TLabel
          Left = 167
          Top = 22
          Width = 64
          Height = 16
          Caption = 'Cutting Die'
        end
        object Label4: TLabel
          Left = 559
          Top = 22
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label5: TLabel
          Left = 383
          Top = 22
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object DTP1: TDateTimePicker
          Left = 50
          Top = 18
          Width = 92
          Height = 24
          Date = 45475.390795428240000000
          Format = 'yyyy/MM/dd'
          Time = 45475.390795428240000000
          TabOrder = 0
        end
        object ED_CD: TEdit
          Left = 236
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 1
        end
        object ED_RY: TEdit
          Left = 583
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 2
        end
        object ED_SKU: TEdit
          Left = 415
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object Button1: TButton
          Left = 895
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 4
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 970
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 5
          OnClick = Button2Click
        end
        object CB1: TCheckBox
          Left = 728
          Top = 22
          Width = 153
          Height = 17
          Caption = 'Hide Outbounded RY'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 57
        Width = 1281
        Height = 548
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|RY'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'BUY'
            Footers = <>
            Title.Caption = 'Buy '#21029'|Buy No'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #22411#39636'|Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = #22411#34399'|SKU'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|RY Pairs'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'InPairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #20837#24235#38617#25976'|Inbound Pairs'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.Caption = #20837#24235#25104#21697#20489'|Warehouse'
            Width = 80
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'InDate'
            Footers = <>
            Title.Caption = #26368#26202#20837#24235#26085#26399'|Inbound Date'
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footer.Alignment = taRightJustify
            Footer.Value = 'Avg.'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #20986#36008#26085#26399'|Outbound Date'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'DayDiff'
            Footer.ValueType = fvtAvg
            Footers = <>
            Title.Caption = #36913#36681#22825#25976'|Turnover Days'
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Daily Inbound and Outbound Status'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1281
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 22
          Width = 29
          Height = 16
          Caption = 'Date'
        end
        object Label6: TLabel
          Left = 143
          Top = 25
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label7: TLabel
          Left = 271
          Top = 22
          Width = 64
          Height = 16
          Caption = 'Cutting Die'
        end
        object Label8: TLabel
          Left = 487
          Top = 22
          Width = 27
          Height = 16
          Caption = 'SKU'
        end
        object Label9: TLabel
          Left = 663
          Top = 22
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label10: TLabel
          Left = 831
          Top = 22
          Width = 32
          Height = 16
          Caption = 'Type'
        end
        object DTP2: TDateTimePicker
          Left = 50
          Top = 18
          Width = 92
          Height = 24
          Date = 45475.390795428240000000
          Format = 'yyyy/MM/dd'
          Time = 45475.390795428240000000
          TabOrder = 0
        end
        object Button3: TButton
          Left = 991
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 1066
          Top = 17
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 2
          OnClick = Button4Click
        end
        object DTP3: TDateTimePicker
          Left = 154
          Top = 18
          Width = 92
          Height = 24
          Date = 45475.390795428240000000
          Format = 'yyyy/MM/dd'
          Time = 45475.390795428240000000
          TabOrder = 3
        end
        object ED_CD2: TEdit
          Left = 340
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object ED_SKU2: TEdit
          Left = 519
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object ED_RY2: TEdit
          Left = 687
          Top = 18
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object CB2: TComboBox
          Left = 868
          Top = 18
          Width = 89
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 7
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'Inbound'
            'Outbound')
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 57
        Width = 1281
        Height = 548
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Date'
            Footers = <>
            Title.Caption = #26085#26399'|Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Type'
            Footers = <>
            Title.Caption = #39006#22411'|Type'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|RY'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'BUY'
            Footers = <>
            Title.Caption = 'Buy '#21029'|Buy No'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #22411#39636'|Cutting Die'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = #22411#34399'|SKU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Width = 60
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 200
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1InDate: TDateTimeField
      FieldName = 'InDate'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1DayDiff: TIntegerField
      FieldName = 'DayDiff'
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      Size = 10
    end
    object Query1BUY: TStringField
      FieldName = 'BUY'
      Size = 6
    end
    object Query1InPairs: TIntegerField
      FieldName = 'InPairs'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 168
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 48
    Top = 168
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 200
    object Query2Date: TDateTimeField
      FieldName = 'Date'
    end
    object Query2Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query2BUY: TStringField
      FieldName = 'BUY'
      Size = 6
    end
    object Query2DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
end
