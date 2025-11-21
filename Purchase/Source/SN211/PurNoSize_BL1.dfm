object PurNoSize_BL: TPurNoSize_BL
  Left = 358
  Top = 204
  Width = 643
  Height = 423
  BorderIcons = [biSystemMenu]
  Caption = 'PurNoSize_BL'
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
    Width = 635
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 144
      Top = 24
      Width = 67
      Height = 20
      Caption = 'Days ago'
    end
    object ComboBox1: TComboBox
      Left = 32
      Top = 16
      Width = 89
      Height = 28
      ItemHeight = 20
      TabOrder = 0
      Text = '60'
      Items.Strings = (
        '30'
        '60'
        '90'
        '180'
        '360'
        '720'
        '1080')
    end
    object Button1: TButton
      Left = 280
      Top = 16
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 635
    Height = 324
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Memo'
        Width = 174
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PurNoSize.DS4
    SQL.Strings = (
      
        'select distinct XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMi' +
        'ng,CGZLSS.CLBH,CGZLS.Memo '
      'from CGZLSS '
      
        'left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.' +
        'CGNO '
      'left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH '
      
        'left join XXZl on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao '
      'where CGZLSS.CLBH='#39'ACS0000513'#39
      'and CGZLS.Memo is not null '
      'and CGZLSS.XXCC='#39'ZZZZZZ'#39
      'and CGZLSS.CFMDate>getdate()+30'
      'order by  XXZL.XieXing,XXZL.SheHao,XXZL.Article,CGZLS.Memo  ')
    Left = 256
    Top = 112
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
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
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 288
    Top = 112
  end
end
