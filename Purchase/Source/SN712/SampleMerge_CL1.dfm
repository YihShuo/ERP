object SampleMerge_CL: TSampleMerge_CL
  Left = 371
  Top = 223
  Width = 802
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'SampleMerge_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 70
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 20
      Top = 40
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label3: TLabel
      Left = 204
      Top = 9
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Label4: TLabel
      Left = 157
      Top = 40
      Width = 102
      Height = 20
      Caption = 'Sample Order:'
    end
    object Label5: TLabel
      Left = 696
      Top = 8
      Width = 48
      Height = 20
      Caption = 'Label5'
      Visible = False
    end
    object Label6: TLabel
      Left = 626
      Top = 4
      Width = 48
      Height = 20
      Caption = 'Label6'
      Visible = False
    end
    object Button1: TButton
      Left = 447
      Top = 33
      Width = 89
      Height = 29
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 68
      Top = 36
      Width = 70
      Height = 28
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 68
      Top = 5
      Width = 70
      Height = 28
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 264
      Top = 36
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Button3: TButton
      Left = 567
      Top = 33
      Width = 90
      Height = 29
      Caption = 'Copy'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit5: TEdit
      Left = 263
      Top = 5
      Width = 98
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = EDIT1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 448
      Top = 8
      Width = 161
      Height = 17
      Caption = 'Open Season limit'
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 70
    Width = 794
    Height = 396
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = 'Sample Order'
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'Article'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'Merge NO'
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
      'select YPDH,ypzl.ARTICLE,KFJD,kfxxzl.JiJie'
      'from  ypzl '
      
        'left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl.SHEH' +
        'AO=ypzl.SHEHAO'
      'where  1=2')
    Left = 424
    Top = 160
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzl.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ypzl.ARTICLE'
      FixedChar = True
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzl.KFJD'
      FixedChar = True
      Size = 3
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.kfxxzl.JiJie'
      FixedChar = True
    end
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      Size = 15
    end
  end
end
