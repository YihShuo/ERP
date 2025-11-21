object MatRFIDCodeInDet: TMatRFIDCodeInDet
  Left = 232
  Top = 209
  Width = 885
  Height = 475
  Caption = 'MatRFIDCodeInDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 38
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label10: TLabel
      Left = 184
      Top = 12
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label11: TLabel
      Left = 16
      Top = 11
      Width = 38
      Height = 16
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 159
      Top = 37
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object DTP3: TDateTimePicker
      Left = 62
      Top = 35
      Width = 97
      Height = 24
      Date = 43101.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 43101.000000000000000000
      TabOrder = 0
    end
    object DTP4: TDateTimePicker
      Left = 182
      Top = 34
      Width = 97
      Height = 24
      Date = 43122.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 43122.000000000000000000
      TabOrder = 1
    end
    object CLBHDEdit: TEdit
      Left = 61
      Top = 8
      Width = 116
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object YWPMDEdit: TEdit
      Left = 248
      Top = 8
      Width = 233
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object BtnQry: TBitBtn
      Left = 528
      Top = 11
      Width = 58
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtnQryClick
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
    object BitBtn3: TBitBtn
      Left = 600
      Top = 11
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 869
    Height = 372
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footer.FieldName = 'RKDate'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #20837#24235#26085#26399'|RKDate'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SCNO'
        Footers = <>
        Title.Caption = #25475#25551#20837#24235'|SCNO'
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991'|YWPM'
        Width = 205
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'TAGID'
        Footers = <>
        Title.Caption = #32232#34399'|TAGID'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = #36008#27331#30332#31080'|DOCNO'
        Width = 161
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.Caption = #20633#35387'|MEMO'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Pack'
        Footers = <>
        Title.Caption = #21253#35037#25976'|Pack'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 71
      end>
  end
  object DS1: TDataSource
    DataSet = MatQryInDet
    Left = 84
    Top = 182
  end
  object MatQryInDet: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDAT' +
        'E,111)) as RKDate,KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan' +
        '_RFSS.Pack,KCRKScan_RFSS.TAGID,KCRKScan_RFSS.Qty,KCRKScan_RFSS.U' +
        'SERDATE,CLZL.ywpm,CLZL.dwbh,KCRKScan_RF.DOCNO,KCRKScan_RF.MEMO f' +
        'rom KCRKScan_RFSS'
      'left join KCRKScan_RF on KCRKScan_RFSS.SCNO=KCRKScan_RF.SCNO'
      'left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH'
      
        'where KCRKScan_RF.CKBH='#39'VA12'#39' and convert(smalldatetime,convert(' +
        'varchar,KCRKScan_RF.USERDATE,111)) between '#39'2008/01/01'#39' and '#39'202' +
        '0/01/01'#39)
    Left = 84
    Top = 214
    object MatQryInDetRKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object MatQryInDetSCNO: TStringField
      FieldName = 'SCNO'
      FixedChar = True
      Size = 11
    end
    object MatQryInDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MatQryInDetPack: TIntegerField
      FieldName = 'Pack'
    end
    object MatQryInDetQty: TFloatField
      FieldName = 'Qty'
    end
    object MatQryInDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object MatQryInDetywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MatQryInDetdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object MatQryInDetDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object MatQryInDetMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 30
    end
    object MatQryInDetTAGID: TIntegerField
      FieldName = 'TAGID'
    end
  end
end
