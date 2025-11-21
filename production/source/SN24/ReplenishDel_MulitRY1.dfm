object ReplenishDel_MulitRY: TReplenishDel_MulitRY
  Left = 657
  Top = 331
  Width = 470
  Height = 390
  Caption = 'ReplenishDel_MulitRY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 462
    Height = 302
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
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'ZLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 57
    Align = alTop
    TabOrder = 1
    object SaveBtn: TBitBtn
      Left = 15
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = SaveBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object RYQuery: TQuery
    CachedUpdates = True
    AfterPost = RYQueryAfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select DDZL.DDBH,0 as Qty,DDZL.Pairs,DDZL.ARTICLE,XXZL.XieMing '
      'from DDZL'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'where 1=2')
    UpdateObject = UpdSQl
    Left = 128
    Top = 136
    object RYQueryDDBH: TStringField
      DisplayWidth = 15
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object RYQueryQty: TIntegerField
      DisplayWidth = 10
      FieldName = 'Qty'
    end
    object RYQueryPairs: TIntegerField
      DisplayWidth = 10
      FieldName = 'Pairs'
    end
    object RYQueryARTICLE: TStringField
      DisplayWidth = 15
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object RYQueryXieMing: TStringField
      DisplayWidth = 18
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = RYQuery
    Left = 128
    Top = 104
  end
  object UpdSQl: TUpdateSQL
    Left = 128
    Top = 168
  end
  object TmpQry: TQuery
    AfterPost = RYQueryAfterPost
    DatabaseName = 'DB'
    SQL.Strings = (
      '  Select DDZL.DDBH,XXZL.XTMH,CLZL.CLDH from DDZL'
      
        '  left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join CLZL on CLZL.YWPM=XXZL.XTMH and CLDH like '#39'VD%'#39' '
      '  where 1=2')
    Left = 96
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 200
    object otalPairsandcalcuateavage1: TMenuItem
      Caption = 'Input total Pairs and calcuate avage'
      OnClick = otalPairsandcalcuateavage1Click
    end
  end
end
