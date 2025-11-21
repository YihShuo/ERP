object ModelCap_NO: TModelCap_NO
  Left = 353
  Top = 201
  Width = 629
  Height = 408
  BorderIcons = [biSystemMenu]
  Caption = 'ModelCap_NO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 176
      Top = 24
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      Date = 39793.641340613420000000
      Time = 39793.641340613420000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 16
      Width = 105
      Height = 24
      Date = 39793.641448402780000000
      Time = 39793.641448402780000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 336
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 424
      Top = 8
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 613
    Height = 311
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 197
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Width = 47
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct XXZL.XieXing,max(XXZL.XieMing) as XieMing,max(XX' +
        'ZL.DAOMH) as DAOMH,KFZL.KFJC,SCBBS.GXLB '
      'from SCBBS'
      'left join SCBB on SCBB.ProNO=SCBBS.PRONO '
      'left join DDZL on SCBBS.SCBH=DDZL.ZLBH '
      
        'left join XXZL on XXZl.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'where not exists(select SCXXCL.XieXing from SCXXCL where SCXXCL.' +
        'XieXing=XXZl.XieXing and SCXXCL.GXLB=SCBBS.GXLB)'
      
        '      and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)' +
        ') between '
      '         '#39'2008/12/04'#39' and '#39'2008/12/11'#39
      'group by XXZL.XieXing,KFZL.KFJC,SCBBS.GXLB'
      'order by KFZL.KFJC,XXZL.XieXing')
    Left = 112
    Top = 112
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 112
  end
end
