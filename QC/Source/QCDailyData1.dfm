object QCDailyData: TQCDailyData
  Left = 269
  Top = 166
  Width = 946
  Height = 557
  Caption = 'QCDailyData'
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
  object spl1: TSplitter
    Left = 689
    Top = 49
    Height = 470
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 49
      Top = 12
      Width = 59
      Height = 20
      Caption = 'QcDate:'
    end
    object Button1: TButton
      Left = 521
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 633
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 114
      Top = 8
      Width = 105
      Height = 28
      Date = 40140.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 40140.000000000000000000
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 49
    Width = 689
    Height = 470
    Align = alLeft
    Color = clWhite
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ProNo'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'SCDate'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SJXH'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DepNo'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.TitleButton = True
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'CC'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.TitleButton = True
        Width = 101
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 692
    Top = 49
    Width = 246
    Height = 470
    Align = alClient
    Color = clWhite
    DataSource = ds3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Width = 343
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Width = 291
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 376
    Top = 264
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from QCR')
    Left = 376
    Top = 224
    object strngfldQuery1ProNo: TStringField
      FieldName = 'ProNo'
      Origin = 'DB.QCR.ProNo'
      FixedChar = True
      Size = 10
    end
    object dtmfldQuery1SCDate: TDateTimeField
      FieldName = 'SCDate'
      Origin = 'DB.QCR.SCDate'
    end
    object strngfldQuery1SJXH: TStringField
      FieldName = 'SJXH'
      Origin = 'DB.QCR.SJXH'
      FixedChar = True
      Size = 2
    end
    object strngfldQuery1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.QCR.GSBH'
      FixedChar = True
      Size = 4
    end
    object strngfldQuery1DepNo: TStringField
      FieldName = 'DepNo'
      Origin = 'DB.QCR.DepNo'
      FixedChar = True
      Size = 15
    end
    object strngfldQuery1GXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.QCR.GXLB'
      FixedChar = True
      Size = 10
    end
    object strngfldQuery1SCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.QCR.SCBH'
      FixedChar = True
      Size = 15
    end
    object strngfldQuery1CC: TStringField
      FieldName = 'CC'
      Origin = 'DB.QCR.CC'
      FixedChar = True
      Size = 6
    end
    object strngfldQuery1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.QCR.USERID'
      FixedChar = True
      Size = 15
    end
    object dtmfldQuery1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.QCR.USERDATE'
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select qcrd.qty,qcrd.YYBH,qcblyy.ywsm,qcblyy.zwsm  from qcrd lef' +
        't join qcblyy on qcblyy.yybh=qcrd.yybh'
      'where qcrd.prono = :prono'
      'order by qcrd.YYBH')
    Left = 456
    Top = 224
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ProNo'
        ParamType = ptUnknown
        Size = 11
      end>
    object smlntfldQuery3qty: TSmallintField
      FieldName = 'qty'
    end
    object strngfldQuery3YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object strngfldQuery3ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 100
    end
    object strngfldQuery3zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 100
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 224
  end
  object ds3: TDataSource
    DataSet = Query3
    Left = 456
    Top = 264
  end
end
