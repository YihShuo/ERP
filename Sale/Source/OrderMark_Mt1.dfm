object OrderMark_Mt: TOrderMark_Mt
  Left = 512
  Top = 262
  Width = 548
  Height = 426
  BorderIcons = [biSystemMenu]
  Caption = 'OrderMark_Mt'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 540
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
      Top = 14
      Width = 101
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MTBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 84
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MTQZ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 104
      Top = 10
      Width = 73
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 264
      Top = 11
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 373
      Top = 5
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrideh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 540
    Height = 346
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
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
        FieldName = 'MTBH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'MTQZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'MTLR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 199
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 93
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWMT.*,KFZL.KFJC from YWMT'
      'left join KFZL on KFZl.KFDH=YWMT.KHBH '
      'where YWMT.MTBH like '#39'%'#39
      '      and YWMT.MTQZ like '#39'%%'#39
      'order by YWMT.MTBH')
    Left = 136
    Top = 112
    object Query1MTBH: TStringField
      FieldName = 'MTBH'
      Origin = 'DB.YWMT.MTBH'
      FixedChar = True
      Size = 6
    end
    object Query1MTQZ: TStringField
      FieldName = 'MTQZ'
      Origin = 'DB.YWMT.MTQZ'
      FixedChar = True
      Size = 15
    end
    object Query1MTLR: TStringField
      FieldName = 'MTLR'
      Origin = 'DB.YWMT.MTLR'
      FixedChar = True
      Size = 50
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 112
  end
end
