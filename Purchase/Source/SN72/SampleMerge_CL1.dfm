object SampleMerge_CL: TSampleMerge_CL
  Left = 404
  Top = 297
  Width = 925
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 917
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
    object YPZLBHLabel: TLabel
      Left = 826
      Top = 36
      Width = 63
      Height = 20
      Caption = 'YPZLBH'
      Visible = False
    end
    object Button1: TButton
      Left = 607
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
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 68
      Top = 5
      Width = 70
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 264
      Top = 36
      Width = 169
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Button3: TButton
      Left = 727
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
      Width = 170
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = EDIT1KeyPress
    end
    object NotMergeCK: TCheckBox
      Left = 608
      Top = 8
      Width = 161
      Height = 17
      Caption = 'show Not merge'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object ComboBox1: TComboBox
      Left = 456
      Top = 8
      Width = 129
      Height = 28
      ItemHeight = 20
      TabOrder = 7
      Items.Strings = (
        ''
        'YZBY'
        'LYN'
        '')
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 70
    Width = 917
    Height = 399
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
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ProductionLocation'
        Footers = <>
        Width = 148
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <
          item
            FieldName = 'YPDH'
            ValueType = fvtCount
          end>
        Title.Caption = 'Sample Order'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footers = <>
        Title.Caption = 'SR'
        Width = 152
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'Merge NO'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'MergeCount'
        Footers = <>
        Width = 97
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
      
        'select ypzl.YPDH,kfxxzl.devcode,KFJD,kfxxzl.JiJie,YS.YPZLBH,YS.M' +
        'ergeCount, ypzl.ypcc as Size,ypzl.ProductionLocation'
      '  from  ypzl '
      
        'left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl.SHEH' +
        'AO=ypzl.SHEHAO'
      
        'left join (SELECT YPZLZLS.YPDH,Max(YPZLZLS.YPZLBH) as YPZLBH,Cou' +
        'nt(YPZLZLS.YPDH) as MergeCount   FROM YPZLZLS Group by YPZLZLS.Y' +
        'PDH) YS on YPZL.YPDH=YS.YPDH'
      ' where 1=1'
      'and kfxxzl.JiJie = '#39'16S'#39
      'and ypzl.KFJD = '#39'SM2'#39
      'and (YPZL.GSDH='#39'LAI'#39' or YPZL.GSDH='#39'CDC'#39') '
      'order by kfxxzl.JiJie,KFJD,ypzl.YPDH')
    Left = 424
    Top = 160
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzl.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
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
    object Query1MergeCount: TIntegerField
      FieldName = 'MergeCount'
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object Query1ProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
  end
end
