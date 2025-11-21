object OrderpackMemo_BZ: TOrderpackMemo_BZ
  Left = 436
  Top = 287
  Width = 849
  Height = 320
  BorderIcons = [biSystemMenu]
  Caption = 'OrderpackMemo_BZ'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 12
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 13
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VNSM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 352
      Top = 13
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 640
      Top = 8
      Width = 61
      Height = 29
      Caption = 'Total'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Button1: TButton
      Left = 546
      Top = 6
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 81
      Top = 8
      Width = 81
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 234
      Top = 8
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 440
      Top = 8
      Width = 97
      Height = 28
      TabOrder = 3
    end
  end
  object DBGrideh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 841
    Height = 240
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrideh1DblClick
    OnKeyPress = DBGrideh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MENO'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 246
      end
      item
        EditButtons = <>
        FieldName = 'VNSM'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'KHBH'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 36
      end>
  end
  object YWBZZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWBZZL.*,KFZl.KFJC'
      'from YWBZZL'
      'left join KFZL on KFZl.KFDH=YWBZZL.KHBH')
    Left = 184
    Top = 136
    object YWBZZLMENO: TStringField
      FieldName = 'MENO'
      Origin = 'DB.YWBZZL.MENO'
      FixedChar = True
      Size = 8
    end
    object YWBZZLZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.YWBZZL.ZWSM'
      FixedChar = True
      Size = 250
    end
    object YWBZZLVNSM: TStringField
      FieldName = 'VNSM'
      Origin = 'DB.YWBZZL.VNSM'
      FixedChar = True
      Size = 250
    end
    object YWBZZLKHBH: TStringField
      FieldName = 'KHBH'
      Origin = 'DB.YWBZZL.KHBH'
      FixedChar = True
      Size = 4
    end
    object YWBZZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object YWBZZLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWBZZL.USERID'
      FixedChar = True
      Size = 15
    end
    object YWBZZLUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.YWBZZL.USERDate'
    end
    object YWBZZLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWBZZL.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = YWBZZL
    Left = 224
    Top = 136
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 144
    object Shipping1: TMenuItem
      Caption = 'Shipping'
      OnClick = Shipping1Click
    end
    object Production1: TMenuItem
      Caption = 'Production'
      OnClick = Production1Click
    end
  end
end
