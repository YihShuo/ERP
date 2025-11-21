object MaterialList: TMaterialList
  Left = 262
  Top = 142
  Width = 1027
  Height = 500
  Caption = 'MaterialList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 184
      Top = 13
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Engnish Name:'
    end
    object Label3: TLabel
      Left = 192
      Top = 43
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #20013#25991#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 43
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'USERID:'
    end
    object Label6: TLabel
      Left = 209
      Top = 74
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label5: TLabel
      Left = 528
      Top = 16
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Flex Code:'
    end
    object Edit1: TEdit
      Left = 67
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 296
      Top = 10
      Width = 81
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 384
      Top = 10
      Width = 73
      Height = 24
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 464
      Top = 10
      Width = 65
      Height = 24
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 296
      Top = 40
      Width = 81
      Height = 24
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 384
      Top = 40
      Width = 73
      Height = 24
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 464
      Top = 40
      Width = 65
      Height = 24
      TabOrder = 6
    end
    object Button1: TButton
      Left = 547
      Top = 66
      Width = 74
      Height = 28
      Caption = 'QUERY'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 626
      Top = 66
      Width = 71
      Height = 28
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit8: TEdit
      Left = 68
      Top = 40
      Width = 121
      Height = 24
      TabOrder = 9
    end
    object CheckBox1: TCheckBox
      Left = 12
      Top = 74
      Width = 85
      Height = 17
      Caption = 'UserDate:'
      TabOrder = 10
    end
    object FlexEdit: TEdit
      Left = 604
      Top = 12
      Width = 97
      Height = 24
      TabOrder = 11
    end
    object FlexCB: TCheckBox
      Left = 536
      Top = 42
      Width = 137
      Height = 17
      Caption = 'Flex Code is not null'
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1011
    Height = 356
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footer.FieldName = 'cldh'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'lycc'
        Footers = <>
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'gjlb'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'FlexCode'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FlexDescription'
        Footers = <>
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'bz'
        Footers = <>
        Title.Caption = 'Mat.Remark'
        Width = 180
      end>
  end
  object DTP1: TDateTimePicker
    Left = 99
    Top = 71
    Width = 105
    Height = 24
    Date = 42812.762229814780000000
    Format = 'yyyy/MM/dd'
    Time = 42812.762229814780000000
    TabOrder = 2
  end
  object DTP2: TDateTimePicker
    Left = 232
    Top = 71
    Width = 105
    Height = 24
    Date = 42835.762229814810000000
    Format = 'yyyy/MM/dd'
    Time = 42835.762229814810000000
    TabOrder = 3
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLZL.*, clbzzl.*'
      'from CLZl '
      'left join clbzzl on CLZL.CLDH=clbzzl.CLDH'
      'where 1=1')
    Left = 24
    Top = 184
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.CLZl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1clzmlb: TStringField
      FieldName = 'clzmlb'
      Origin = 'DB.clzl.clzmlb'
      FixedChar = True
      Size = 1
    end
    object Query1lycc: TStringField
      FieldName = 'lycc'
      Origin = 'DB.CLZl.lycc'
      FixedChar = True
      Size = 1
    end
    object Query1gjlb: TStringField
      FieldName = 'gjlb'
      Origin = 'DB.CLZl.gjlb'
      FixedChar = True
      Size = 4
    end
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      Origin = 'DB.CLZl.cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      Origin = 'DB.CLZl.tyjh'
      FixedChar = True
      Size = 1
    end
    object Query1FlexCode: TStringField
      FieldName = 'FlexCode'
      Size = 15
    end
    object Query1FlexDescription: TStringField
      FieldName = 'FlexDescription'
      Size = 250
    end
    object Query1bz: TStringField
      FieldName = 'bz'
      FixedChar = True
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 152
  end
end
