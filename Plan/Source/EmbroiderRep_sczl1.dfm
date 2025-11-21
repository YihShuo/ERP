object EmbroiderRep_sczl: TEmbroiderRep_sczl
  Left = 298
  Top = 201
  Width = 717
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'EmbroiderRep_sczl'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 24
      Width = 161
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 352
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 709
    Height = 393
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
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
        FieldName = 'SCBH'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BWBH'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 149
        Visible = True
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
      
        'select SCZL.SCBH,SCZL.ZLBH,XXZl.XieXing,XXZl.Shehao,XXZl.XieMing' +
        ' ,XXZL.Article,DXBW.BWBH,BWZL.YWSM'
      'from ( select distinct SCZL.SCBH,SCZL.ZLBH '
      ' from SCZL where SCZL.SCBH like '#39'%'#39' ) SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZl.ZLBH'
      'left join DDZL on DDZl.ZLBh=ZLZL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.Shehao'
      'left join DXBW on DXBW.XieXing=XXZl.XieXing'
      'left join BWZL on BWZL.BWDH=DXBW.BWBH'
      
        'where exists(select XieXing from DXXX where DXXX.XieXing=XXZL.Xi' +
        'eXing)'
      'order by SCZl.SCBH')
    Left = 424
    Top = 160
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
  end
end
