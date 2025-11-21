object SOPAdd_XXZLS: TSOPAdd_XXZLS
  Left = 618
  Top = 328
  Width = 462
  Height = 290
  Caption = 'SOPAdd_XXZLS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 13
      Width = 40
      Height = 16
      Caption = 'PartID:'
    end
    object Label2: TLabel
      Left = 152
      Top = 13
      Width = 40
      Height = 16
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object BWDHEdit: TEdit
      Left = 56
      Top = 9
      Width = 89
      Height = 24
      TabOrder = 1
    end
    object YWSMEdit: TEdit
      Left = 197
      Top = 9
      Width = 116
      Height = 24
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 454
    Height = 218
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWDH'
        Footers = <>
        Title.Caption = 'PartID'
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = 'Chinese Name'
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'English Name'
        Width = 182
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bwdh,zwsm,YWSM from bwzl'
      
        'where not exists (Select BWBH from XXZLS where XieXing='#39'CON18U41' +
        'L'#39' and SheHao='#39'01'#39' and XXZLS.BWBH=BWZL.bwdh)'
      
        '      and not exists (Select BWBH from KT_SOPcut where XieXing='#39 +
        'CON18U41L'#39' and SheHao='#39'01'#39' and KT_SOPcut.BWBH=BWZL.bwdh)')
    Left = 208
    Top = 120
    object Query1BWDH: TStringField
      DisplayWidth = 8
      FieldName = 'BWDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      DisplayWidth = 28
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query1YWSM: TStringField
      DisplayWidth = 30
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
  end
end
