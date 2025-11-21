object Lab_TestReason: TLab_TestReason
  Left = 447
  Top = 40
  Width = 715
  Height = 640
  Caption = 'Lab Test Rejected Reason'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 232
    Top = 40
    Width = 75
    Height = 16
    Caption = 'Test Method'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 232
      Top = 8
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Test Method'
    end
    object Label3: TLabel
      Left = 236
      Top = 34
      Width = 106
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Rejected Reason'
    end
    object Label4: TLabel
      Left = 568
      Top = 24
      Width = 34
      Height = 16
      Caption = 'NULL'
    end
    object btninsert: TBitBtn
      Left = 4
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btninsertClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnmodify: TBitBtn
      Left = 48
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnmodifyClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btndelete: TBitBtn
      Left = 91
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btndeleteClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnsave: TBitBtn
      Left = 135
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnsaveClick
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
    object btncancel: TBitBtn
      Left = 180
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btncancelClick
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
    object edt1: TEdit
      Left = 344
      Top = 4
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object Button1: TButton
      Left = 472
      Top = 8
      Width = 67
      Height = 41
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 699
    Height = 536
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 5
    OnDblClick = DBGridEh1DblClick
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TestID'
        Footer.FieldName = 'TestID'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Test Method'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'TestReason'
        Footers = <>
        Title.Caption = 'Rejected Reason'
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'Abb'
        Footers = <>
        Title.Caption = 'Abbreviation'
        Width = 80
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Width = 150
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 60
      end>
  end
  object edt2: TEdit
    Left = 344
    Top = 30
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Lab_TestReason.*,kfjc  from Lab_TestReason  '
      'left join kfzl on Lab_TestReason.Brand=kfzl.kfdh'
      'where 1=2')
    UpdateObject = Upd1
    Left = 128
    Top = 136
    object qry1TestID: TStringField
      FieldName = 'TestID'
      Origin = 'DB.Lab_TestReason.TestID'
      FixedChar = True
    end
    object qry1TestReason: TStringField
      FieldName = 'TestReason'
      Origin = 'DB.Lab_TestReason.TestReason'
      FixedChar = True
      Size = 200
    end
    object qry1Abb: TStringField
      FieldName = 'Abb'
      Origin = 'DB.Lab_TestReason.Abb'
      FixedChar = True
    end
    object qry1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.Lab_TestReason.UserID'
      FixedChar = True
      Size = 50
    end
    object qry1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.Lab_TestReason.UserDate'
    end
    object qry1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.Lab_TestReason.YN'
      FixedChar = True
      Size = 1
    end
    object qry1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.Lab_TestReason.GSBH'
      FixedChar = True
      Size = 4
    end
    object qry1Brand: TStringField
      FieldName = 'Brand'
      Origin = 'DB.Lab_TestReason.Brand'
      FixedChar = True
      Size = 4
    end
    object qry1kfjc: TStringField
      FieldName = 'kfjc'
      Origin = 'DB.kfzl.kfjc'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 128
    Top = 168
  end
  object Upd1: TUpdateSQL
    ModifySQL.Strings = (
      'update Lab_TestReason '
      'set TestReason=:TestReason,'
      'Abb=:Abb,'
      'UserID=:UserID,'
      'Userdate=getdate()'
      'where TestID=:old_TestID and GSBH=:old_GSBH and Brand=:old_Brand')
    InsertSQL.Strings = (
      
        'INSERT INTO Lab_TestReason (GSBH,Brand,TestID,TestReason,Abb,Use' +
        'rID,UserDate,YN)'
      
        '     VALUES (:GSBH,:Brand,:TestID,:TestReason,:Abb,:UserID,getda' +
        'te(),:YN)')
    DeleteSQL.Strings = (
      'delete from Lab_TestReason '
      'where TestID=:old_TestID and GSBH=:old_GSBH and Brand=:old_Brand')
    Left = 128
    Top = 200
  end
end
