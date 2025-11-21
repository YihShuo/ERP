object ExecShort_Car: TExecShort_Car
  Left = 313
  Top = 193
  Width = 770
  Height = 397
  BorderIcons = [biSystemMenu]
  Caption = 'ExecShort_Car'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 63
      Height = 16
      Caption = 'CartonBar:'
    end
    object Edit1: TEdit
      Left = 112
      Top = 16
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 296
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 544
    Height = 298
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'INDATE'
        Footers = <>
        Width = 76
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 544
    Top = 65
    Width = 218
    Height = 298
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh2DblClick
    OnKeyPress = DBGridEh2KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Lack'
        Footers = <>
        Width = 39
      end>
  end
  object CartonBar: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWCP.CartonBar,YWCP.DDBH,YWCP.CartonNO,YWCP.XH,YWCP.Qty,Y' +
        'WCP.SB,YWCP.InDate, '
      '       DDZL.Article,XXZL.XieMing,YWDD.ETD '
      'from YWCP '
      'left join YWDD on YWDD.DDBH=YWCP.DDBH '
      'left join DDZL on DDZl.DDBH=YWDD.YSBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'where CartonBar like '#39'%y0905-226 00%'#39
      'order by YWCP.CartonBar ')
    Left = 72
    Top = 160
    object CartonBarCARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object CartonBarDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP.DDBH'
      FixedChar = True
      Size = 15
    end
    object CartonBarCARTONNO: TIntegerField
      FieldName = 'CARTONNO'
      Origin = 'DB.YWCP.CARTONNO'
    end
    object CartonBarArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object CartonBarXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object CartonBarETD: TDateTimeField
      FieldName = 'ETD'
    end
    object CartonBarXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object CartonBarQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
    end
    object CartonBarSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object CartonBarINDATE: TDateTimeField
      FieldName = 'INDATE'
      Origin = 'DB.YWCP.INDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = CartonBar
    Left = 120
    Top = 160
  end
  object CartonDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select YWBZPOS.DDCC,YWBZPOS.Qty,YWDDSDZ.Qty as Lack'
      'from YWBZPOS'
      
        'left join YWDDSDZ on YWDDSDZ.CartonBar=:CartonBar and YWDDSDZ.DD' +
        'CC=YWBZPOS.DDCC'
      'where YWBZPOS.XH=:XH'
      'and YWBZPOS.DDBH=:DDBH')
    Left = 392
    Top = 176
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CARTONBAR'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'XH'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CartonDetDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.YWBZPOS.DDCC'
      FixedChar = True
      Size = 6
    end
    object CartonDetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWBZPOS.Qty'
      DisplayFormat = '##,#0'
    end
    object CartonDetLack: TIntegerField
      FieldName = 'Lack'
      Origin = 'DB.YWDDSDZ.Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = CartonDet
    Left = 432
    Top = 176
  end
end
