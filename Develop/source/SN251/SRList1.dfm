object SRLIst: TSRLIst
  Left = 300
  Top = 201
  Width = 771
  Height = 428
  Caption = 'SRLIst'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 755
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 16
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label2: TLabel
      Left = 376
      Top = 16
      Width = 36
      Height = 20
      Caption = 'SR#:'
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 20
      Caption = 'Year:'
    end
    object StageLB: TLabel
      Left = 336
      Top = 16
      Width = 21
      Height = 20
      Caption = 'R1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 560
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object StageCombo: TComboBox
      Left = 240
      Top = 12
      Width = 89
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 1
      Text = 'PRO'
      OnChange = StageComboChange
      Items.Strings = (
        'PRO'
        'SM2'
        'SM3')
    end
    object YearCombo: TComboBox
      Left = 56
      Top = 12
      Width = 105
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 2
      OnChange = YearComboChange
      Items.Strings = (
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object SREdit: TEdit
      Left = 424
      Top = 12
      Width = 121
      Height = 28
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 755
    Height = 341
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <
          item
            FieldName = 'ARTICLE'
            ValueType = fvtCount
          end>
        Title.Caption = 'SR#'
        Width = 189
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'JHRQ'
        Footers = <>
        Title.Caption = 'ETD'
      end>
  end
  object DS: TDataSource
    DataSet = YPZL
    Left = 320
    Top = 152
  end
  object YPZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ARTICLE,KFJD,Quantity as Qty,JHRQ,UserDate from  YPZL whe' +
        're  KFJD='#39'SM3'#39' and UserDate like '#39'2014%'#39' and Article like '#39'%-15%' +
        #39' and Article='#39'G18147-CT726W-15S02'#39)
    Left = 320
    Top = 120
    object YPZLARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object YPZLKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLQty: TFloatField
      FieldName = 'Qty'
    end
    object YPZLJHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLUserDate: TStringField
      FieldName = 'UserDate'
      FixedChar = True
      Size = 8
    end
  end
end
