object LeanModelChanges: TLeanModelChanges
  Left = 388
  Top = 261
  Width = 1171
  Height = 518
  BorderIcons = [biSystemMenu]
  Caption = 'Model Changes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 385
    Top = 0
    Height = 479
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 385
    Height = 479
    Align = alLeft
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Building'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        HideDuplicates = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footers = <>
        HideDuplicates = True
        Width = 60
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Planned'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Total Changes|Planned'
        Width = 75
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Actual'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Total Changes|Actual'
        Width = 75
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Unplanned'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Total Changes|Unplanned'
        Title.TitleButton = True
        Width = 75
      end>
  end
  object Panel1: TPanel
    Left = 388
    Top = 0
    Width = 767
    Height = 479
    Align = alClient
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 238
      Width = 765
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 241
      Width = 765
      Height = 237
      Align = alClient
      DataSource = DS3
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ReadOnly = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'Date'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 80
          OnEditButtonClick = DBGridEh2Columns0EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH_F'
          Footers = <>
          Title.Caption = 'Actual Model Change|From|Cutting Die'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE_F'
          Footers = <>
          Title.Caption = 'Actual Model Change|From|SKU'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'RY_F'
          Footers = <>
          Title.Caption = 'Actual Model Change|From|RY'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Labor_F'
          Footers = <>
          Title.Caption = 'Actual Model Change|From|Labor'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH_T'
          Footers = <>
          Title.Caption = 'Actual Model Change|To|Cutting Die'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE_T'
          Footers = <>
          Title.Caption = 'Actual Model Change|To|SKU'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'RY_T'
          Footers = <>
          Title.Caption = 'Actual Model Change|To|RY'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Labor_T'
          Footers = <>
          Title.Caption = 'Actual Model Change|To|Labor'
          Width = 50
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 765
      Height = 237
      Align = alTop
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ReadOnly = True
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
      Columns = <
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'Date'
          Footer.DisplayFormat = '###,###,##0'
          Footer.ValueType = fvtCount
          Footers = <>
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH_F'
          Footers = <>
          Title.Caption = 'Planned Model Change|From|Cutting Die'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE_F'
          Footers = <>
          Title.Caption = 'Planned Model Change|From|SKU'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'RY_F'
          Footers = <>
          Title.Caption = 'Planned Model Change|From|RY'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Labor_F'
          Footers = <>
          Title.Caption = 'Planned Model Change|From|Labor'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH_T'
          Footers = <>
          Title.Caption = 'Planned Model Change|To|Cutting Die'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE_T'
          Footers = <>
          Title.Caption = 'Planned Model Change|To|SKU'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'RY_T'
          Footers = <>
          Title.Caption = 'Planned Model Change|To|RY'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Labor_T'
          Footers = <>
          Title.Caption = 'Planned Model Change|To|Labor'
          Width = 50
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 112
    object Query1Month: TStringField
      FieldName = 'Month'
      Size = 7
    end
    object Query1Building: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object Query1Lean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Query1Planned: TIntegerField
      FieldName = 'Planned'
    end
    object Query1Actual: TIntegerField
      FieldName = 'Actual'
    end
    object Query1Unplanned: TIntegerField
      FieldName = 'Unplanned'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 80
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 408
    Top = 104
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT :Building AS Building, :Lean AS Lean')
    Left = 408
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Building'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Lean'
        ParamType = ptUnknown
      end>
    object Query2Date: TDateTimeField
      FieldName = 'Date'
    end
    object Query2DAOMH_F: TStringField
      FieldName = 'DAOMH_F'
      Size = 30
    end
    object Query2ARTICLE_F: TStringField
      FieldName = 'ARTICLE_F'
    end
    object Query2Labor_F: TIntegerField
      FieldName = 'Labor_F'
    end
    object Query2RY_F: TStringField
      FieldName = 'RY_F'
      Size = 15
    end
    object Query2DAOMH_T: TStringField
      FieldName = 'DAOMH_T'
      Size = 30
    end
    object Query2ARTICLE_T: TStringField
      FieldName = 'ARTICLE_T'
    end
    object Query2Labor_T: TIntegerField
      FieldName = 'Labor_T'
    end
    object Query2RY_T: TStringField
      FieldName = 'RY_T'
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 408
    Top = 344
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT :Building AS Building, :Lean AS Lean')
    Left = 408
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Building'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Lean'
        ParamType = ptUnknown
      end>
    object DateTimeField2: TDateTimeField
      FieldName = 'Date'
    end
    object StringField3: TStringField
      FieldName = 'DAOMH_F'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'ARTICLE_F'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Labor_F'
    end
    object StringField5: TStringField
      FieldName = 'RY_F'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'DAOMH_T'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'ARTICLE_T'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Labor_T'
    end
    object StringField8: TStringField
      FieldName = 'RY_T'
      Size = 15
    end
  end
end
