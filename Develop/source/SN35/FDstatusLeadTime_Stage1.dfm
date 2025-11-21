object FDstatusLeadTime_Stage: TFDstatusLeadTime_Stage
  Left = 460
  Top = 228
  Width = 485
  Height = 434
  BorderIcons = [biSystemMenu]
  Caption = 'FDstatusLeadTime_Stage'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 328
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 469
    Height = 346
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
        FieldName = 'STAGE'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'REMARK'
        Footers = <>
        Width = 336
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
      'select  YPZL.KFJD AS STAGE,LBZLS.YWSM AS REMARK  from YPZL '
      'left join LBZLS ON LBZLS.LB='#39'04'#39' AND LBZLS.LBDH=YPZL.KFJD'
      
        'WHERE KFJD<>'#39'CFM'#39' AND KFJD<>'#39'MPR'#39' AND KFJD<>'#39'COM'#39' AND KFJD<>'#39'PRO' +
        #39
      'group by YPZL.KFJD,LBZLS.YWSM ORDER BY KFJD')
    Left = 424
    Top = 160
    object Query1STAGE: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'STAGE'
      FixedChar = True
      Size = 3
    end
    object Query1REMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      FixedChar = True
      Size = 50
    end
  end
end
