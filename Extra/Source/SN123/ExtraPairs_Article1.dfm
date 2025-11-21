object ExtraPairs_Article: TExtraPairs_Article
  Left = 260
  Top = 184
  Width = 881
  Height = 374
  BorderIcons = [biSystemMenu]
  Caption = 'ExtraPairs_Article'
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
    Width = 865
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
      Left = 209
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
      Top = 13
      Width = 70
      Height = 18
      Caption = 'ARTICLE:'
    end
    object Label5: TLabel
      Left = 439
      Top = 53
      Width = 58
      Height = 18
      Caption = 'Season:'
    end
    object Label6: TLabel
      Left = 209
      Top = 53
      Width = 72
      Height = 18
      Caption = 'Customer:'
    end
    object Label7: TLabel
      Left = 660
      Top = 13
      Width = 50
      Height = 18
      Caption = 'BuyNo:'
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
      Left = 845
      Top = 48
      Width = 97
      Height = 40
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 845
      Top = 5
      Width = 97
      Height = 39
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 78
      Top = 48
      Width = 116
      Height = 26
      TabOrder = 4
    end
    object CB2: TCheckBox
      Left = 661
      Top = 43
      Width = 185
      Height = 21
      Caption = 'SHRINKPROOF'
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 500
      Top = 8
      Width = 146
      Height = 26
      TabOrder = 6
      OnKeyPress = Edit2KeyPress
    end
    object Edit6: TEdit
      Left = 278
      Top = 50
      Width = 146
      Height = 26
      TabOrder = 7
      Text = 'CONVERSE'
      OnKeyPress = Edit2KeyPress
    end
    object Edit7: TEdit
      Left = 716
      Top = 10
      Width = 125
      Height = 26
      TabOrder = 8
      OnKeyPress = Edit2KeyPress
    end
    object Button3: TButton
      Left = 948
      Top = 47
      Width = 88
      Height = 39
      Caption = 'Copy'
      TabOrder = 9
      OnClick = Button3Click
    end
    object CB3: TCheckBox
      Left = 661
      Top = 67
      Width = 185
      Height = 21
      Caption = 'EMBROIDERY'
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 865
    Height = 237
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -18
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -18
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 148
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 145
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footer.FieldName = 'article'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 177
      end
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <>
        Width = 157
      end>
  end
  object Edit5: TEdit
    Left = 502
    Top = 47
    Width = 145
    Height = 32
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XieXing,SheHao,XieMing,DAOMH ,KFZL.KFJC,article,jijie'
      'from XXZL'
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      'where 1=1 and KFZL.KFJC like '#39'%CONVERSE%'#39
      'order by KFZL.KFJC,XieXing')
    Left = 152
    Top = 144
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
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
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 176
  end
end
