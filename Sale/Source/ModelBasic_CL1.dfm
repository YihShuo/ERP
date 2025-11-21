object ModelBasic_CL: TModelBasic_CL
  Left = 400
  Top = 212
  Width = 702
  Height = 464
  BorderIcons = [biSystemMenu]
  Caption = 'ModelBasic_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Edit1: TEdit
      Left = 48
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 0
      Text = 'H14'
    end
    object Edit2: TEdit
      Left = 208
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 312
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 686
    Height = 367
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.TitleButton = True
        Width = 499
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 46
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLDH,YWPM,DWBH'
      'from CLZL'
      'where CLDH like '#39'HBX%'#39)
    Left = 112
    Top = 112
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 112
  end
end
