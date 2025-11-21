object SPRS: TSPRS
  Left = 348
  Top = 195
  Width = 674
  Height = 532
  Caption = 'Shoe Parts RSL Set'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 656
    Height = 60
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 91
      Height = 25
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 116
      Top = 15
      Width = 122
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      OnChange = CBX1Change
    end
    object Edit1: TEdit
      Left = 247
      Top = 15
      Width = 159
      Height = 28
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 60
    Width = 656
    Height = 425
    Align = alClient
    TabOrder = 1
    object Button1: TButton
      Left = 246
      Top = 130
      Width = 139
      Height = 41
      Caption = 'Add one >>>'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 246
      Top = 187
      Width = 139
      Height = 41
      Caption = '<<< Remove'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 246
      Top = 10
      Width = 139
      Height = 40
      Caption = 'Modify'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBGridEh1: TDBGridEh
      Left = 10
      Top = 10
      Width = 228
      Height = 415
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
      FooterFont.Height = -14
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'bwdh'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 58
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 394
      Top = 9
      Width = 246
      Height = 414
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'bwdh'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 62
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 8
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bwdh from bwzl'
      'where not exists'
      '(select bwmap.bwdh from bwmap'
      'where khbh = '#39'0004'#39
      'and bwzl.bwdh=bwmap.bwdh)')
    UpdateObject = UpdateSQL1
    Left = 24
    Top = 137
    object Query2bwdh: TStringField
      FieldName = 'bwdh'
      Origin = 'DB.bwzl.bwdh'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 24
    Top = 105
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 344
    Top = 113
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from bwmap')
    UpdateObject = UpdateSQL2
    Left = 344
    Top = 145
    object Query3bwdh: TStringField
      FieldName = 'bwdh'
      Origin = 'DB.bwmap.bwdh'
      FixedChar = True
      Size = 4
    end
    object Query3khbh: TStringField
      FieldName = 'khbh'
      Origin = 'DB.bwmap.khbh'
      FixedChar = True
      Size = 4
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update bwmap'
      'set'
      '  khbh = :khbh,'
      '  bwdh = :bwdh'
      'where'
      '  khbh = :OLD_khbh and'
      '  bwdh = :OLD_bwdh')
    InsertSQL.Strings = (
      'insert into bwmap'
      '  (khbh, bwdh)'
      'values'
      '  (:khbh, :bwdh)')
    DeleteSQL.Strings = (
      'delete from bwmap'
      'where'
      '  khbh = :OLD_khbh and'
      '  bwdh = :OLD_bwdh')
    Left = 344
    Top = 177
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update bwzl'
      'set'
      '  bwdh = :bwdh'
      'where'
      '  bwdh = :OLD_bwdh')
    InsertSQL.Strings = (
      'insert into bwzl'
      '  (bwdh)'
      'values'
      '  (:bwdh)')
    DeleteSQL.Strings = (
      'delete from bwzl'
      'where'
      '  bwdh = :OLD_bwdh')
    Left = 24
    Top = 169
  end
end
