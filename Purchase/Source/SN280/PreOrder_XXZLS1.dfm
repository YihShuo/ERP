object PreOrder_XXZLS: TPreOrder_XXZLS
  Left = 341
  Top = 235
  Width = 1118
  Height = 399
  Caption = 'PreOrder_XXZLS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 205
      Top = 33
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 0
      Top = 9
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Label1: TLabel
      Left = 0
      Top = 34
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 205
      Top = 8
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PartName:'
    end
    object Label4: TLabel
      Left = 445
      Top = 34
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor:'
    end
    object Label6: TLabel
      Left = 445
      Top = 7
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
    end
    object Button1: TButton
      Left = 800
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ArticleEdit: TEdit
      Left = 81
      Top = 5
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 1
    end
    object CLBHEdit: TEdit
      Left = 81
      Top = 31
      Width = 120
      Height = 24
      TabOrder = 2
    end
    object YWPMEdit: TEdit
      Left = 289
      Top = 31
      Width = 144
      Height = 24
      TabOrder = 3
    end
    object YWSMEdit: TEdit
      Left = 289
      Top = 6
      Width = 144
      Height = 24
      TabOrder = 4
    end
    object ZSYWJCEdit: TEdit
      Left = 529
      Top = 32
      Width = 144
      Height = 24
      TabOrder = 5
    end
    object CSBHEdit: TEdit
      Left = 529
      Top = 5
      Width = 144
      Height = 24
      TabOrder = 6
    end
    object Button2: TButton
      Left = 800
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Copy'
      TabOrder = 7
      OnClick = Button2Click
    end
    object TWCKBox: TCheckBox
      Left = 682
      Top = 40
      Width = 49
      Height = 17
      Caption = 'TW'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 8
    end
    object VNCKBox: TCheckBox
      Left = 741
      Top = 40
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1110
    Height = 303
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 215
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        Width = 53
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,'
      
        '       XXZL.XieXing, XXZL.SheHao, XXZLS.BWBH, BWZL.YWSM, BWZL.ZW' +
        'SM ,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,'
      
        '       CLZL.DWBH,CLZL.CQDH,XXZLS.CSBH,ZSZL.zsywjc,XXZLS.CCQQ,XXZ' +
        'LS.CCQZ'
      'from XXZLS'
      
        'Left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZ' +
        'LS.SheHao'
      'Left join bwzl on bwzl.bwdh=XXZLS.BWBH'
      'left join clzl on clzl.CLDH=XXZLS.CLBH'
      'left join zszl on zszl.zsdh=XXZLS.CSBH'
      'where XXZL.ARTICLE like '#39'A02192C%'#39)
    Left = 232
    Top = 81
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
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
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
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1CCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object Query1CCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 113
  end
end
