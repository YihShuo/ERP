object JGMatQtyClassify: TJGMatQtyClassify
  Left = 454
  Top = 293
  Width = 815
  Height = 463
  Caption = 'JGMatQtyClassify'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB5: TBitBtn
      Left = 16
      Top = 8
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
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 64
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 144
      Top = 0
      Width = 201
      Height = 57
      Caption = 'Color info'
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 181
        Height = 16
        Caption = 'Total<>Dev+Tech+NG+Defect'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 34
        Width = 91
        Height = 16
        Caption = 'Monthly Ending'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object TLFLDBGridEh: TDBGridEh
    Left = 0
    Top = 65
    Width = 807
    Height = 364
    Align = alClient
    DataSource = DS
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = TLFLDBGridEhGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TQty'
        Footers = <>
        Title.Caption = 'Total Qty'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'AQty'
        Footers = <>
        Title.Caption = 'Dev Qty'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'BQty'
        Footers = <>
        Title.Caption = 'Tech Qty'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CQty'
        Footers = <>
        Title.Caption = 'NG Qty'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footers = <>
        Title.Caption = 'Defect Qty'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'EQty'
        Footers = <>
        Visible = False
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'FQty'
        Footers = <>
        Visible = False
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'GQty'
        Footers = <>
        Visible = False
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'LYOU'
        Footers = <>
        Title.Caption = 'Memo'
        Width = 114
      end>
  end
  object DC_TLFLMas: TQuery
    DatabaseName = 'DB'
    DataSource = ExtraMaterial.DS4
    SQL.Strings = (
      
        'select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB,case when ZMLB='#39 +
        'ZZZZZZZZZZ'#39' then Qty else Qty*(select SubJG.qty from JGZLS As Su' +
        'bJG where SubJG.JGNO='#39'20140400324'#39' and SubJG.CLBH=JGZLS.CLBH and' +
        ' SubJG.ZMLB='#39'ZZZZZZZZZZ'#39' ) end  as Qty,DC_TLFL.* '
      'from JGZLS '
      
        'left join DC_TLFL on JGZLS.CLBH=DC_TLFL.CLBH and JGZLS.JGNO=DC_T' +
        'LFL.DJBH and DC_TLFL.DFL1='#39'JG'#39' and DC_TLFL.DFL2='#39'JG'#39' and DC_TLFL' +
        '.GSBH='#39'CDC'#39' and DC_TLFL.LB=3 '
      'where JGZLS.JGNO='#39'20140400324'#39)
    UpdateObject = DC_TLFLUp
    Left = 376
    Top = 32
    object DC_TLFLMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object DC_TLFLMasTempQty: TCurrencyField
      FieldName = 'Qty'
    end
    object DC_TLFLMasCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object DC_TLFLMasCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object DC_TLFLMasLB: TIntegerField
      FieldName = 'LB'
    end
    object DC_TLFLMasDJBH: TStringField
      FieldName = 'DJBH'
      FixedChar = True
      Size = 11
    end
    object DC_TLFLMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DC_TLFLMasTQty: TFloatField
      FieldName = 'TQty'
    end
    object DC_TLFLMasLYOU: TStringField
      FieldName = 'LYOU'
      FixedChar = True
      Size = 50
    end
    object DC_TLFLMasAQty: TFloatField
      FieldName = 'AQty'
    end
    object DC_TLFLMasBQty: TFloatField
      FieldName = 'BQty'
    end
    object DC_TLFLMasCQty: TFloatField
      FieldName = 'CQty'
    end
    object DC_TLFLMasDQty: TFloatField
      FieldName = 'DQty'
    end
    object DC_TLFLMasEQty: TFloatField
      FieldName = 'EQty'
    end
    object DC_TLFLMasFQty: TFloatField
      FieldName = 'FQty'
    end
    object DC_TLFLMasGQty: TFloatField
      FieldName = 'GQty'
    end
    object DC_TLFLMasUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object DC_TLFLMasUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object DC_TLFLMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DC_TLFLMasDFL1: TStringField
      FieldName = 'DFL1'
      FixedChar = True
      Size = 15
    end
    object DC_TLFLMasDFL2: TStringField
      FieldName = 'DFL2'
      FixedChar = True
      Size = 15
    end
    object DC_TLFLMasZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
  end
  object DC_TLFLUp: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '  DC_TLFL'
      'Set TQty=:TQty, LYOU=:LYOU, AQty=:AQty, BQty=:BQty, CQty=:CQty,'
      
        '    DQty=:DQty, EQty=:EQty, FQty=:FQty, GQty=:GQty, UserID=:User' +
        'ID, UserDate=:UserDate'
      
        'where CLBH=:OLD_CLBH and DJBH=:OLD_DJBH and DFL1=:OLD_DFL1 and D' +
        'FL2=:OLD_DFL2 and GSBH=:OLD_GSBH and LB=3')
    InsertSQL.Strings = (
      'Insert Into DC_TLFL'
      
        '  (CLBH, LB, DJBH, GSBH, TQty, LYOU, AQty, BQty, CQty, DQty, EQt' +
        'y, FQty, GQty, UserID, UserDate,YN )'
      'Values'
      
        '  (:CLBH, :LB, :DJBH, :GSBH, :TQty, :LYOU, :AQty, :BQty, :CQty, ' +
        ':DQty, :EQty, :FQty, :GQty :UserID, :UserDate, :YN )'
      '  '
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'Delete from DC_TLFL'
      'where CLBH=:OLD_CLBH and DJBH=:OLD_DJBH')
    Left = 408
    Top = 32
  end
  object DS: TDataSource
    DataSet = DC_TLFLMas
    Left = 440
    Top = 32
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZLS.CLBH,ZMLB,case when ZMLB='#39'ZZZZZZZZZZ'#39' then Qty else' +
        ' Qty*(select SubJG.qty from JGZLS As SubJG where SubJG.JGNO='#39'201' +
        '40400324'#39' and SubJG.CLBH=JGZLS.CLBH and SubJG.ZMLB='#39'ZZZZZZZZZZ'#39' ' +
        ') end  as Qty,DC_TLFL.* '
      'from JGZLS '
      
        'left join DC_TLFL on JGZLS.CLBH=DC_TLFL.CLBH and JGZLS.JGNO=DC_T' +
        'LFL.DJBH and DC_TLFL.DFL1='#39'JG'#39' and DC_TLFL.DFL2='#39'JG'#39' and DC_TLFL' +
        '.GSBH='#39'CDC'#39' and DC_TLFL.LB=3 '
      'where JGZLS.JGNO='#39'20140400324'#39)
    Left = 344
    Top = 32
  end
  object chkQuery: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 32
  end
end
