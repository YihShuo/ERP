object ModelToler_DDZLForm: TModelToler_DDZLForm
  Left = 592
  Top = 282
  Width = 845
  Height = 493
  Caption = 'ModelToler_DDZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 829
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 12
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 184
      Top = 12
      Width = 93
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SheHao:'
    end
    object Label3: TLabel
      Left = 2
      Top = 42
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Label4: TLabel
      Left = 186
      Top = 42
      Width = 93
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DAOMH:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 280
      Top = 8
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 394
      Top = 25
      Width = 75
      Height = 37
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 74
      Top = 38
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 282
      Top = 38
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button2: TButton
      Left = 478
      Top = 24
      Width = 75
      Height = 37
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 73
    Width = 829
    Height = 381
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <
          item
            DisplayFormat = 'Count=#.##'
            FieldName = 'XieXing'
            Value = '0'
            ValueType = fvtCount
          end>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
      end
      item
        DisplayFormat = '0.0000'
        EditButtons = <>
        FieldName = 'OWeigh'
        Footers = <>
      end>
  end
  object CK1: TCheckBox
    Left = 394
    Top = 7
    Width = 89
    Height = 17
    Caption = 'Have order'
    Checked = True
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 2
  end
  object DS1: TDataSource
    DataSet = DDZLQuery
    Left = 424
    Top = 128
  end
  object DDZLQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,'
      
        '        XXList.DAOMH,XXList.KFJC,XXList.XieMing,'#39#39' as XXCC,'#39'0.2'#39 +
        ' as OWeigh'
      'from YWXXNew left join '
      
        '    (select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZ' +
        'L.XieMing,KFZL.KFJC '
      '     From XXZL left join  KFZL on KFZL.KFDH=XXZL.KHDH'
      
        '          Group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DA' +
        'OMH,XXZL.XieMing,KFZL.KFJC ) XXList '
      
        '  on YWXXNew.XieXing=XXList.XieXIng and YWXXNew.SheHao = XXList.' +
        'SheHao  '
      'where  YWXXNew.XieXing like '#39'%%'#39
      ' and YWXXNew.SheHao like '#39'%%'#39
      ' and XXList.Article like '#39'%%'#39
      
        ' Group by YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,XXList.D' +
        'AOMH,XXList.KFJC,XXList.XieMing'
      '')
    Left = 424
    Top = 160
  end
end
