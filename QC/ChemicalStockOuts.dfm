object ChemicalStockOut: TChemicalStockOut
  Left = 348
  Top = 187
  Width = 1305
  Height = 675
  Caption = 'ChemicalStockOut'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 193
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 228
      Height = 60
      Caption = 'Scan QR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 992
      Top = 40
      Width = 118
      Height = 45
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 40
      Top = 136
      Width = 114
      Height = 27
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 408
      Top = 136
      Width = 70
      Height = 27
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object bExcel: TBitBtn
      Left = 824
      Top = 40
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bExcelClick
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
    object edtScan: TEdit
      Left = 256
      Top = 24
      Width = 537
      Height = 89
      AutoSize = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -80
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtScanKeyPress
    end
    object cbDep: TComboBox
      Left = 160
      Top = 136
      Width = 233
      Height = 28
      ItemHeight = 20
      TabOrder = 2
      OnKeyPress = cbDepKeyPress
      Items.Strings = (
        ''
        'DT_GCN-3F-LINE 1'
        'DT_GCN-3F-LINE 2'
        'DT_GCN-3F-LINE 3'
        'DT_GCN-3F-LINE 4'
        'DT_GCN-3F-LINE 5'
        'DT_GCN-3F-LINE 6'
        'DT_GCN-4F-LINE 1'
        'DT_GCN-4F-LINE 2'
        'DT_GCN-4F-LINE 3'
        'DT_GCN-4F-LINE 4'
        'DT_GCN-4F-LINE 5'
        'DT_M-3F-LINE 1'
        'DT_M-3F-LINE 2'
        'DT_M-3F-LINE 3'
        'DT_M-3F-LINE 4'
        'DT_M-3F-LINE 5'
        'DT_M-3F-LINE 6'
        'DT_M-4F-LINE 1'
        'DT_M-4F-LINE 2'
        'DT_M-4F-LINE 3'
        'DT_M-4F-LINE 4'
        'DT_M-4F-LINE 5'
        'DT_G-3F-LINE 1'
        'DT_G-3F-LINE 2'
        'DT_G-3F-LINE 3'
        'DT_G-3F-LINE 4'
        'DT_G-3F-LINE 5'
        'DT_G-3F-LINE 6'
        'DT_G-4F-LINE 1'
        'DT_G-4F-LINE 2'
        'DT_G-4F-LINE 3'
        'DT_G-4F-LINE 4'
        'DT_G-4F-LINE 5')
    end
    object edtCLBH: TEdit
      Left = 488
      Top = 136
      Width = 169
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object btSearch: TButton
      Left = 680
      Top = 128
      Width = 81
      Height = 49
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btSearchClick
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 193
    Width = 1289
    Height = 443
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.Color = clYellow
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'CARTONNO'
        Footer.Color = clYellow
        Footer.ValueType = fvtSum
        Footers = <>
        Visible = False
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ExpirationDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Weight'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT KCLL_HC.*, CLZL.YWPM FROM KCLL_HC'
      'LEFT JOIN CLZL ON CLZL.CLDH = KCLL_HC.CLBH'
      'where 1=1')
    UpdateObject = UpSQL1
    Left = 448
    Top = 400
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 50
    end
    object Query1CARTONNO: TIntegerField
      FieldName = 'CARTONNO'
    end
    object Query1ExpirationDate: TDateTimeField
      FieldName = 'ExpirationDate'
    end
    object Query1Weight: TIntegerField
      FieldName = 'Weight'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TIntegerField
      FieldName = 'YN'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 50
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 400
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLL_HC'
      'set'
      '  LLNO = :LLNO,'
      '  RKNO = :RKNO,'
      '  CLBH = :CLBH,'
      '  CARTONNO = :CARTONNO,'
      '  ExpirationDate = :ExpirationDate,'
      '  Weight = :Weight,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  YWPM = :YWPM'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CARTONNO = :OLD_CARTONNO and'
      '  ExpirationDate = :OLD_ExpirationDate and'
      '  Weight = :OLD_Weight and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN and'
      '  YWPM = :OLD_YWPM')
    InsertSQL.Strings = (
      'insert into KCLL_HC'
      
        '  (LLNO, RKNO, CLBH, CARTONNO, ExpirationDate, Weight, USERID, U' +
        'SERDATE, '
      '   YN, DepName)'
      'values'
      
        '  (:LLNO, :RKNO, :CLBH, :CARTONNO, :ExpirationDate, :Weight, :US' +
        'ERID, :USERDATE, '
      '   :YN, :DepName)')
    DeleteSQL.Strings = (
      'delete from KCLL_HC'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CARTONNO = :OLD_CARTONNO and'
      '  ExpirationDate = :OLD_ExpirationDate and'
      '  Weight = :OLD_Weight and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN and'
      '  YWPM = :OLD_YWPM')
    Left = 528
    Top = 400
  end
  object QueryCheck: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 400
  end
  object QGetID: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 400
  end
  object QKCRK_HC: TQuery
    DatabaseName = 'DB'
    Left = 584
    Top = 408
  end
  object QUpKCRK_HC: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 368
  end
end
