object DailyTotal: TDailyTotal
  Left = 119
  Top = 164
  Width = 1151
  Height = 527
  Caption = 'DailyTotal'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1135
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 12
      Width = 39
      Height = 20
      Caption = 'Date:'
    end
    object lbl2: TLabel
      Left = 151
      Top = 12
      Width = 18
      Height = 20
      Caption = 'To'
    end
    object lbl3: TLabel
      Left = 282
      Top = 16
      Width = 51
      Height = 20
      Caption = 'GSBH:'
    end
    object Button1: TButton
      Left = 400
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 488
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object CKBSel: TCheckBox
      Left = 570
      Top = 16
      Width = 127
      Height = 17
      Caption = 'Selected Only'
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 42
      Top = 8
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 172
      Top = 8
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 330
      Top = 8
      Width = 65
      Height = 28
      ItemHeight = 20
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1135
    Height = 440
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DATE'
        Footer.FieldName = 'DATE'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYSD'
        Footer.FieldName = 'QTYSD'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYSI'
        Footer.FieldName = 'QTYSI'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYPD'
        Footer.FieldName = 'QTYPD'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYPI'
        Footer.FieldName = 'QTYPI'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYAD'
        Footer.FieldName = 'QTYAD'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'QTYAI'
        Footer.FieldName = 'QTYAI'
        Footer.ValueType = fvtSum
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 160
    object dtmfldQuery1DATE: TStringField
      FieldName = 'DATE'
    end
    object intgrfldQuery1QTYSD: TIntegerField
      FieldName = 'QTYSD'
    end
    object intgrfldQuery1QTYSI: TIntegerField
      FieldName = 'QTYSI'
    end
    object intgrfldQuery1QTYPD: TIntegerField
      FieldName = 'QTYPD'
    end
    object intgrfldQuery1QTYPI: TIntegerField
      FieldName = 'QTYPI'
    end
    object intgrfldQuery1QTYAD: TIntegerField
      FieldName = 'QTYAD'
    end
    object intgrfldQuery1QTYAI: TIntegerField
      FieldName = 'QTYAI'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 443
    Top = 160
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 160
  end
end
