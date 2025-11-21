object DelChemical_Mat: TDelChemical_Mat
  Left = 354
  Top = 204
  Width = 646
  Height = 406
  BorderIcons = [biSystemMenu]
  Caption = 'DelChemical_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 57
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
      Top = 27
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 184
      Top = 26
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 554
      Top = 18
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 277
      Top = 24
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 80
      Top = 24
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'W'
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 376
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object CKBox: TCheckBox
      Left = 462
      Top = 26
      Width = 80
      Height = 17
      Caption = 'Not stop'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 638
    Height = 318
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 54
      end
      item
        Color = 10921727
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Title.Caption = 'Stop'
        Width = 41
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
      
        'select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,TYJH ' +
        'from CLZL '
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='#39'VA12'#39
      'where CLZL.CLDH like'#39'W101000001%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.CLDH>'#39'W'#39
      'and IsNull(CLZL.TYJH,'#39#39')<>'#39'Y'#39' '
      'order by CLZL.CLDH')
    Left = 424
    Top = 160
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      DisplayWidth = 6
      FieldName = 'cllb'
      Origin = 'DB.clzl.cllb'
      FixedChar = True
      Size = 3
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1TYJH: TStringField
      FieldName = 'TYJH'
      FixedChar = True
      Size = 1
    end
  end
end
