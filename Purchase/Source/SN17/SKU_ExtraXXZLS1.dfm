object SKU_ExtraXXZLS: TSKU_ExtraXXZLS
  Left = 299
  Top = 216
  Width = 878
  Height = 435
  Caption = 'SKU_ExtraXXZLS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
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
      Top = 42
      Width = 38
      Height = 16
      Caption = 'MatNo'
    end
    object Label2: TLabel
      Left = 192
      Top = 42
      Width = 42
      Height = 16
      Caption = 'MatNM'
    end
    object Button1: TButton
      Left = 512
      Top = 40
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 512
      Top = 4
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object CB2: TCheckBox
      Left = 15
      Top = 12
      Width = 154
      Height = 17
      Caption = 'SHRINKPROOF'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 606
      Top = 39
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 3
      OnClick = Button3Click
    end
    object CB3: TCheckBox
      Left = 143
      Top = 12
      Width = 154
      Height = 17
      Caption = 'EMBROIDERY'
      TabOrder = 4
    end
    object MatIDEdit: TEdit
      Left = 59
      Top = 40
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object MatNMEdit: TEdit
      Left = 245
      Top = 40
      Width = 260
      Height = 24
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 862
    Height = 316
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
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
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWDH'
        Footers = <>
        Title.Caption = #37096#20301'|Part'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #37096#20301#21517#31281'|PartNM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|MatNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|MatNM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 513
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BWZL.BWDH,BWZL.YWSM,XXZLS.CLBH,CLZL.YWPM'
      'from XXZLS'
      'Left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'Left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      
        'left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XX' +
        'ZL.SheHao'
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      'where 1=1 and XXZLS.XieXing='#39'103053F'#39' and XXZLS.SheHao='#39'01'#39' '
      ' and KFZL.KFJC like '#39'%CONVERSE%'#39)
    Left = 152
    Top = 144
    object Query1BWDH: TStringField
      FieldName = 'BWDH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 176
  end
end
