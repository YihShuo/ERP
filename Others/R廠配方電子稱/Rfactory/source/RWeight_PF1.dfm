object RWeight_PF: TRWeight_PF
  Left = 545
  Top = 199
  Width = 353
  Height = 468
  BorderIcons = [biSystemMenu]
  Caption = 'RWeight_PF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 337
    Height = 430
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PFBH1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PFBH2'
        Width = 152
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select  *'
      'from PFMAP'
      'order by PFBH1')
    Left = 168
    Top = 160
    object Query1PFBH1: TStringField
      FieldName = 'PFBH1'
      Size = 16
    end
    object Query1PFBH2: TStringField
      FieldName = 'PFBH2'
      Size = 16
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 128
  end
end
