object DSDonVi: TDSDonVi
  Left = 441
  Top = 293
  BorderStyle = bsToolWindow
  Caption = 'DSDonvi'
  ClientHeight = 269
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 14
      Width = 20
      Height = 16
      Caption = 'ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 177
      Top = 13
      Width = 75
      Height = 16
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ID: TLabeledEdit
      Left = 33
      Top = 11
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 5
      EditLabel.Height = 16
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 0
    end
    object DepName: TLabeledEdit
      Left = 254
      Top = 10
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 5
      EditLabel.Height = 16
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
    end
    object btn_Query: TButton
      Left = 392
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_QueryClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 562
    Height = 220
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DropDownBox.Columns = <
          item
          end>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from BDepartment'
      'order by ID')
    Left = 288
    Top = 136
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BDepartment.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 136
  end
end
