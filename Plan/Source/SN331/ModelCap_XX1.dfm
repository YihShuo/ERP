object ModelCap_XX: TModelCap_XX
  Left = 267
  Top = 330
  Width = 1018
  Height = 508
  BorderIcons = [biSystemMenu]
  Caption = 'ModelCap_XX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 81
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 45
      Height = 16
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 181
      Top = 10
      Width = 49
      Height = 16
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 13
      Top = 44
      Width = 52
      Height = 16
      Caption = 'DAOMH:'
    end
    object Label4: TLabel
      Left = 358
      Top = 10
      Width = 57
      Height = 16
      Caption = 'ARTICLE:'
    end
    object Label5: TLabel
      Left = 182
      Top = 47
      Width = 48
      Height = 16
      Caption = 'Season:'
    end
    object Label6: TLabel
      Left = 365
      Top = 41
      Width = 50
      Height = 16
      Caption = 'BUYNO:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 97
      Height = 26
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 232
      Top = 8
      Width = 121
      Height = 26
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 656
      Top = 40
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 656
      Top = 4
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 552
      Top = 14
      Width = 97
      Height = 17
      Caption = 'No Capacity'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 65
      Top = 40
      Width = 97
      Height = 26
      TabOrder = 6
    end
    object CB2: TCheckBox
      Left = 552
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Have Order'
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 417
      Top = 7
      Width = 121
      Height = 26
      TabOrder = 8
      OnKeyPress = Edit2KeyPress
    end
    object bnCopy: TButton
      Left = 746
      Top = 40
      Width = 81
      Height = 33
      Caption = 'Copy'
      TabOrder = 3
      OnClick = bnCopyClick
    end
    object Edit6: TEdit
      Left = 416
      Top = 37
      Width = 121
      Height = 26
      TabOrder = 9
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1010
    Height = 396
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 197
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'Article'
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 131
      end>
  end
  object Edit5: TEdit
    Left = 232
    Top = 40
    Width = 121
    Height = 32
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XieXing,SheHao,XieMing,DAOMH,KFZL.KFJC,article as article' +
        ',JIJIE  '
      'from XXZL'
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      'where 1=1 '
      ' and XXZL.XieXing like '#39'CON17S82WL%'#39' '
      'order by KFZL.KFJC,XieXing'
      '')
    Left = 120
    Top = 176
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 176
  end
end
