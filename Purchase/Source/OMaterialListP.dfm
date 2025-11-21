object OMaterialList: TOMaterialList
  Left = 515
  Top = 186
  Width = 540
  Height = 433
  Caption = 'OMaterialList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 43
      Height = 20
      Caption = 'Class:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 86
      Top = 12
      Width = 99
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 0
      OnChange = CBX1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 524
    Height = 344
    Align = alClient
    TabOrder = 1
    object Button1: TButton
      Left = 200
      Top = 106
      Width = 113
      Height = 33
      Caption = 'Add one >>>'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 200
      Top = 152
      Width = 113
      Height = 33
      Caption = '<<< Remove'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 200
      Top = 8
      Width = 113
      Height = 33
      Caption = 'Modify'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBGridEh1: TDBGridEh
      Left = 8
      Top = 8
      Width = 177
      Height = 337
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cllb'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ywsm'
          Footers = <>
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 328
      Top = 8
      Width = 193
      Height = 337
      DataSource = DataSource2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'cllb'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'ywsm'
          Footers = <>
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 188
    Top = 11
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cllb,ywsm from cllbzl'
      'where not exists'
      '         (select CLOther.cllb from CLOther'
      '          where lb='#39'Z'#39
      '          and GSBH='#39'VA12'#39')')
    UpdateObject = UpdateSQL2
    Left = 24
    Top = 137
    object Query2cllb: TStringField
      FieldName = 'cllb'
      FixedChar = True
      Size = 3
    end
    object Query2ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
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
      'select CLOther.*,cllbzl.ywsm from CLOther'
      'left join cllbzl on CLOther.cllb = cllbzl.cllb'
      'where CLOther.lb='#39'Z'#39
      '      and GSBH='#39'VA12'#39)
    UpdateObject = UpdateSQL3
    Left = 344
    Top = 145
    object Query3GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.CLOther.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query3cllb: TStringField
      FieldName = 'cllb'
      Origin = 'DB.CLOther.cllb'
      FixedChar = True
      Size = 3
    end
    object Query3lb: TStringField
      FieldName = 'lb'
      Origin = 'DB.CLOther.lb'
      FixedChar = True
      Size = 1
    end
    object Query3USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CLOther.USERID'
      FixedChar = True
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CLOther.USERDATE'
    end
    object Query3ywsm: TStringField
      FieldName = 'ywsm'
      Origin = 'DB.cllbzl.ywsm'
      FixedChar = True
    end
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update CLOther'
      'set'
      '  GSBH = :GSBH,'
      '  cllb = :cllb,'
      '  lb = :lb,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  cllb = :OLD_cllb')
    InsertSQL.Strings = (
      'insert into CLOther'
      '  (GSBH, cllb, lb, USERID, USERDATE)'
      'values'
      '  (:GSBH, :cllb, :lb, :USERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from CLOther'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  cllb = :OLD_cllb')
    Left = 344
    Top = 177
  end
  object UpdateSQL2: TUpdateSQL
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
