object ScanCheckOut1: TScanCheckOut1
  Left = 430
  Top = 260
  Width = 1098
  Height = 540
  Caption = 'ScanCheckOut'
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
  PixelsPerInch = 96
  TextHeight = 13
  object TPanel
    Left = 0
    Top = 0
    Width = 1082
    Height = 113
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1080
      Height = 121
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 33
        Width = 37
        Height = 16
        Caption = 'From: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 199
        Top = 34
        Width = 23
        Height = 16
        Caption = 'To: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 18
        Top = 76
        Width = 43
        Height = 16
        Caption = 'OrdNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DTP1: TDateTimePicker
        Left = 56
        Top = 30
        Width = 135
        Height = 24
        Date = 45786.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 45786.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 224
        Top = 30
        Width = 135
        Height = 24
        Date = 45786.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 45786.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 66
        Top = 71
        Width = 150
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Button1: TButton
        Left = 256
        Top = 66
        Width = 81
        Height = 30
        Caption = 'QUERY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 384
        Top = 66
        Width = 81
        Height = 30
        Caption = 'EXCEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button2Click
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 1082
    Height = 388
    Align = alClient
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
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
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
        FieldName = 'YSBH'
        Footer.WordWrap = True
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'ROut'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32047#35336#20986#36008#38617'|ROut'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'OutDate'
        Footers = <>
        Title.Caption = #20986#36008#26085#26399'|OutDate'
      end
      item
        EditButtons = <>
        FieldName = 'SuppName'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|SuppName'
        Width = 119
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YSBH, ROut, OutDate, SuppName from TB_DD.dbo.SMDDScanOut')
    Left = 360
    Top = 184
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1ROut: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ROut'
    end
    object Query1OutDate: TDateTimeField
      FieldName = 'OutDate'
      Origin = 'DB.SMDDScanOut.OUTDATE'
      DisplayFormat = 'yyyy/MM/dd '
    end
    object Query1SuppName: TStringField
      FieldName = 'SuppName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 792
    Top = 328
  end
  object Query2: TQuery
    Left = 288
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 240
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
