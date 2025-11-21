object ModelDepartment_Dep: TModelDepartment_Dep
  Left = 682
  Top = 170
  Width = 208
  Height = 404
  Caption = 'ModelDepartment_Dep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 192
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 56
      Top = 8
      Width = 48
      Height = 20
      Caption = 'Label3'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 192
    Height = 324
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35506#21029'|Lean'
        Width = 138
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Substring(DepName,1,CHARINDEX('#39'-'#39',DepName,4)-1) as '#39'Lean'#39 +
        ' from BDepartment '
      'where GSBH='#39'VA12'#39' '
      '      and GXLB='#39'A'#39' '
      '      and ProYN=1'
      '      and CHARINDEX('#39'-'#39',DepName,4)>1'
      'Group by  Substring(DepName,1,CHARINDEX('#39'-'#39',DepName,4)-1)'
      'order by Substring(DepName,1,CHARINDEX('#39'-'#39',DepName,4)-1)')
    Left = 128
    Top = 200
    object Query1Lean: TStringField
      FieldName = 'Lean'
      FixedChar = True
      Size = 50
    end
  end
end
