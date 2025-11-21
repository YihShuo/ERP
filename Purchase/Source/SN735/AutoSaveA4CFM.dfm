object Form1: TForm1
  Left = 592
  Top = 313
  Width = 1504
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
    Width = 1488
    Height = 65
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
    object Label38: TLabel
      Left = 195
      Top = 20
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label40: TLabel
      Left = 330
      Top = 40
      Width = 52
      Height = 13
      Caption = 'Mat. Name'
    end
    object Label41: TLabel
      Left = 511
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Supplier'
    end
    object Label43: TLabel
      Left = 112
      Top = 40
      Width = 77
      Height = 13
      Caption = 'A4 CFM Swatch'
    end
    object Label44: TLabel
      Left = 679
      Top = 40
      Width = 37
      Height = 13
      Caption = 'Mat NO'
    end
    object Label39: TLabel
      Left = 1168
      Top = 41
      Width = 205
      Height = 13
      Caption = 'Only Search and Save for A4 Confirm is null'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 112
      Top = 12
      Width = 84
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 204
      Top = 12
      Width = 83
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 1
    end
    object CheckBox5: TCheckBox
      Left = 10
      Top = 16
      Width = 103
      Height = 17
      Caption = 'Signed Date'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 856
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object Edit17: TEdit
      Left = 384
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit18: TEdit
      Left = 552
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit20: TEdit
      Left = 192
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object BitBtn5: TBitBtn
      Left = 904
      Top = 8
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
      TabOrder = 7
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
    object Edit22: TEdit
      Left = 721
      Top = 37
      Width = 118
      Height = 21
      TabOrder = 8
    end
    object BitBtn4: TBitBtn
      Left = 976
      Top = 8
      Width = 73
      Height = 49
      Hint = 'Save Current'
      Caption = 'Run&Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
  object DBGridEh8: TDBGridEh
    Left = 0
    Top = 65
    Width = 721
    Height = 390
    Align = alLeft
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
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 206
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
      end
      item
        EditButtons = <>
        FieldName = 'DateA4Comfirm'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'cgzl_color2clbh'
        Footers = <>
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 721
    Top = 65
    Width = 767
    Height = 390
    Align = alClient
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
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 206
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
      end
      item
        EditButtons = <>
        FieldName = 'DateA4Comfirm'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'cgzl_color2clbh'
        Footers = <>
      end>
  end
  object DataSource1: TDataSource
    Left = 281
    Top = 233
  end
  object DataSource2: TDataSource
    Left = 321
    Top = 233
  end
  object Query8: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select CLDH,ywpm,:A4Comfirm as A4Comfirm,:TrackingA4Comfirm as T' +
        'rackingA4Comfirm,:DateA4Comfirm as DateA4Comfirm,'#39'Auto_N735'#39' as ' +
        'Signer,cgzl_color2.CLBH as  cgzl_color2clbh from CLZL'
      'left join cgzl_color2 on cgzl_color2.CLBH=CLDH'
      'where ywpm like '#39'%'#39'+:ywpm'
      
        'and CLDH not in (select CLBH from CGZL_Color2 where A4Comfirm is' +
        ' not null)'
      'and CLZL.CLLB=:CLLB')
    Left = 281
    Top = 273
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'A4Comfirm'
        ParamType = ptUnknown
        Size = 101
      end
      item
        DataType = ftFixedChar
        Name = 'TrackingA4Comfirm'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftDateTime
        Name = 'DateA4Comfirm'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'ywpm'
        ParamType = ptUnknown
        Size = 201
      end
      item
        DataType = ftFixedChar
        Name = 'CLLB'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query8CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query8ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query8A4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 39
    end
    object Query8TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 10
    end
    object Query8DateA4Comfirm: TStringField
      FieldName = 'DateA4Comfirm'
      FixedChar = True
      Size = 21
    end
    object Query8Signer: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 9
    end
    object Query8cgzl_color2clbh: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select CLDH,ywpm,:A4Comfirm as A4Comfirm,:TrackingA4Comfirm as T' +
        'rackingA4Comfirm,:DateA4Comfirm as DateA4Comfirm,'#39'Auto_N735'#39' as ' +
        'Signer,cgzl_color2.CLBH as  cgzl_color2clbh from CLZL'
      'left join cgzl_color2 on cgzl_color2.CLBH=CLDH'
      'where ywpm like '#39'%'#39'+:ywpm'
      
        'and CLDH not in (select CLBH from CGZL_Color2 where A4Comfirm is' +
        ' not null)'
      'and CLZL.CLLB=:CLLB')
    Left = 321
    Top = 273
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'A4Comfirm'
        ParamType = ptUnknown
        Size = 101
      end
      item
        DataType = ftFixedChar
        Name = 'TrackingA4Comfirm'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftDateTime
        Name = 'DateA4Comfirm'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFixedChar
        Name = 'ywpm'
        ParamType = ptUnknown
        Size = 201
      end
      item
        DataType = ftFixedChar
        Name = 'CLLB'
        ParamType = ptUnknown
        Size = 5
      end>
    object StringField1: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 39
    end
    object StringField4: TStringField
      FieldName = 'TrackingA4Comfirm'
      FixedChar = True
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'DateA4Comfirm'
      FixedChar = True
      Size = 21
    end
    object StringField6: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 9
    end
    object StringField7: TStringField
      FieldName = 'cgzl_color2clbh'
      FixedChar = True
      Size = 15
    end
  end
  object UpdateSQL1: TUpdateSQL
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
end
