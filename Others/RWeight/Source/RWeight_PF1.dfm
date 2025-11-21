object RWeight_PF: TRWeight_PF
  Left = 417
  Top = 145
  Width = 561
  Height = 563
  Caption = 'RWeight_PF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 545
    Height = 460
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 543
      Height = 458
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'PFBH1'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'PFBH2'
          Footers = <>
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 19
      Width = 56
      Height = 20
      Caption = 'PFBH1:'
    end
    object Label2: TLabel
      Left = 225
      Top = 19
      Width = 56
      Height = 20
      Caption = 'PFBH2:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 16
      Width = 145
      Height = 28
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 145
      Height = 28
      TabOrder = 1
    end
    object Button1: TButton
      Left = 456
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select PFBH1,PFBH2'
      'from PFMAP'
      'order by PFBH1')
    Left = 80
    Top = 192
    object Query1PFBH1: TStringField
      FieldName = 'PFBH1'
      Origin = 'DD.PFMAP.PFBH1'
      FixedChar = True
      Size = 16
    end
    object Query1PFBH2: TStringField
      FieldName = 'PFBH2'
      Origin = 'DD.PFMAP.PFBH2'
      FixedChar = True
      Size = 16
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 192
  end
end
