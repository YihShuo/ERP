object FDStatus_ETD: TFDStatus_ETD
  Left = 255
  Top = 228
  Width = 969
  Height = 491
  BorderIcons = [biSystemMenu]
  Caption = 'FDStatus_ETD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 12
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 260
      Top = 12
      Width = 52
      Height = 20
      Caption = 'Mat.ID:'
    end
    object Label3: TLabel
      Left = 151
      Top = 12
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label4: TLabel
      Left = 2
      Top = 46
      Width = 81
      Height = 20
      Caption = 'Mat. Name:'
    end
    object Label5: TLabel
      Left = 446
      Top = 12
      Width = 86
      Height = 20
      Caption = 'PO Number:'
    end
    object Label7: TLabel
      Left = 668
      Top = 11
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Edit1: TEdit
      Left = 86
      Top = 7
      Width = 58
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 314
      Top = 6
      Width = 127
      Height = 28
      ReadOnly = True
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 199
      Top = 7
      Width = 55
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 86
      Top = 43
      Width = 779
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object Button1: TButton
      Left = 869
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 536
      Top = 6
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 1
    end
    object Edit7: TEdit
      Left = 718
      Top = 6
      Width = 147
      Height = 28
      ReadOnly = True
      TabOrder = 2
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 953
    Height = 372
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ver'
        Footers = <>
        Title.Caption = 'Version'
      end
      item
        EditButtons = <>
        FieldName = 'etd'
        Footers = <>
        Title.Caption = 'ETD'
      end
      item
        EditButtons = <>
        FieldName = 'userid'
        Footers = <>
        Title.Caption = 'User ID'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'userdate'
        Footers = <>
        Title.Caption = 'Modify date'
        Width = 87
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '     select ver,etd,userid,userdate '
      '            from etdtemp'
      '            where 1=2'
      '')
    Left = 424
    Top = 160
    object smlntfldQuery1ver: TSmallintField
      FieldName = 'ver'
    end
    object dtmfldQuery1etd: TDateTimeField
      FieldName = 'etd'
    end
    object strngfldQuery1userid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object dtmfldQuery1userdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
end
