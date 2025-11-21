object ModelCap_XX: TModelCap_XX
  Left = 220
  Top = 143
  Width = 1018
  Height = 508
  BorderIcons = [biSystemMenu]
  Caption = 'ModelCap_XX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 97
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 12
      Width = 60
      Height = 18
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 217
      Top = 12
      Width = 62
      Height = 18
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 16
      Top = 53
      Width = 63
      Height = 18
      Caption = 'DAOMH:'
    end
    object Label4: TLabel
      Left = 430
      Top = 12
      Width = 70
      Height = 18
      Caption = 'ARTICLE:'
    end
    object Label5: TLabel
      Left = 218
      Top = 56
      Width = 58
      Height = 18
      Caption = 'Season:'
    end
    object Label6: TLabel
      Left = 438
      Top = 49
      Width = 58
      Height = 18
      Caption = 'BUYNO:'
    end
    object Edit1: TEdit
      Left = 77
      Top = 10
      Width = 116
      Height = 26
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 278
      Top = 10
      Width = 146
      Height = 26
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 787
      Top = 48
      Width = 97
      Height = 40
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 787
      Top = 5
      Width = 97
      Height = 39
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 662
      Top = 17
      Width = 117
      Height = 20
      Caption = 'No Capacity'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 78
      Top = 48
      Width = 116
      Height = 26
      TabOrder = 6
    end
    object CB2: TCheckBox
      Left = 662
      Top = 44
      Width = 117
      Height = 21
      Caption = 'Have Order'
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 500
      Top = 8
      Width = 146
      Height = 26
      TabOrder = 8
      OnKeyPress = Edit2KeyPress
    end
    object bnCopy: TButton
      Left = 895
      Top = 48
      Width = 97
      Height = 40
      Caption = 'Copy'
      TabOrder = 3
      OnClick = bnCopyClick
    end
    object Edit6: TEdit
      Left = 499
      Top = 44
      Width = 145
      Height = 26
      TabOrder = 9
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1002
    Height = 371
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -18
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 236
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'Article'
        Width = 162
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 157
      end>
  end
  object Edit5: TEdit
    Left = 278
    Top = 48
    Width = 146
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
