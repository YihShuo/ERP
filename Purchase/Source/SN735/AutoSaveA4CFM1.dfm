object AutoSaveA4CFM: TAutoSaveA4CFM
  Left = 479
  Top = 167
  Width = 1069
  Height = 494
  Caption = 'AutoSaveA4Confirm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 1053
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label36: TLabel
      Left = 696
      Top = 15
      Width = 185
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 709
      Top = 15
      Width = 3
      Height = 13
    end
    object Label1: TLabel
      Left = 296
      Top = 15
      Width = 121
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ref A4confirm CLBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 640
      Top = 0
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB2: TBitBtn
      Left = 432
      Top = 64
      Width = 73
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
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
    object BB3: TBitBtn
      Left = 952
      Top = 64
      Width = 73
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
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
    object Edit1: TEdit
      Left = 417
      Top = 12
      Width = 118
      Height = 21
      TabOrder = 3
    end
  end
  object DBGridEh8: TDBGridEh
    Left = 0
    Top = 113
    Width = 545
    Height = 342
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'A4Comfirm'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'TrackingA4Comfirm'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DateA4Comfirm'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'cgzl_color2clbh'
        Footers = <>
        Width = 70
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 545
    Top = 113
    Width = 508
    Height = 342
    Align = alClient
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ReadOnly = True
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'A4Comfirm'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'TrackingA4Comfirm'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DateA4Comfirm'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'cgzl_color2clbh'
        Footers = <>
        Width = 70
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 281
    Top = 233
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 321
    Top = 233
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select CLZL.CLDH,CLZL.ywpm,cgzl_color2.A4Comfirm,cgzl_color2.Tra' +
        'ckingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.Signer,cgzl' +
        '_color2.CLBH as  cgzl_color2clbh'
      'From ('
      'select CLDH,CLLB,SUBSTRING(CLZL.ywpm,5,200)as ywpm from CLZL'
      'where CLDH='#39'D080022186'#39
      ') aa'
      
        'left join CLZL on aa.CLLB=CLZL.CLLB and CLZL.ywpm like '#39'%'#39'+aa.yw' +
        'pm'
      'left join cgzl_color2 on cgzl_color2.CLBH=CLZL.CLDH'
      'order by CLZL.CLDH')
    UpdateObject = UpdateSQL1
    Left = 281
    Top = 273
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 100
    end
    object Query1TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query1DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query1Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object Query1cgzl_color2clbh: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm= :DateA4Comfirm,'
      '  Signer= :Signer'
      'where'
      '  CLBH = :OLD_CLDH')
    InsertSQL.Strings = (
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm= :DateA4Comfirm,'
      '  Signer= :Signer'
      'where'
      '  CLBH = :OLD_CLDH')
    Left = 281
    Top = 313
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm= :DateA4Comfirm,'
      '  Signer= '#39'Tracy'#39
      'where'
      '  CLBH = :OLD_CLDH')
    InsertSQL.Strings = (
      'update cgzl_color2'
      'set'
      '  A4Comfirm= :A4Comfirm,'
      '  TrackingA4Comfirm= :TrackingA4Comfirm,'
      '  DateA4Comfirm= :DateA4Comfirm,'
      '  Signer= :Signer'
      'where'
      '  CLBH = :OLD_CLDH')
    Left = 321
    Top = 313
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select CLZL.CLDH,CLZL.ywpm,cgzl_color2.A4Comfirm,cgzl_color2.Tra' +
        'ckingA4Comfirm,cgzl_color2.DateA4Comfirm,cgzl_color2.Signer,cgzl' +
        '_color22.CLBH as  cgzl_color2clbh'
      'From ('
      'select CLDH,CLLB,SUBSTRING(CLZL.ywpm,5,200)as ywpm from CLZL'
      'where CLDH='#39'D080022186'#39
      ') aa'
      
        'left join CLZL on aa.CLLB=CLZL.CLLB and CLZL.ywpm like '#39'%'#39'+aa.yw' +
        'pm'
      'left join cgzl_color2 on cgzl_color2.CLBH=aa.CLDH'
      
        'left join cgzl_color2 cgzl_color22 on cgzl_color22.CLBH=CLZL.CLD' +
        'H'
      'order by CLZL.CLDH')
    UpdateObject = UpdateSQL2
    Left = 321
    Top = 273
    object Query2CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 100
    end
    object Query2TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object Query2DateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object Query2Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object Query2cgzl_color2clbh: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
  end
  object TIMEQRY: TQuery
    DatabaseName = 'DB'
    Left = 369
    Top = 273
  end
end
