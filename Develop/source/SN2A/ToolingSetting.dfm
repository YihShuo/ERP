object ToolingSetting1: TToolingSetting1
  Left = 471
  Top = 144
  Width = 1455
  Height = 675
  Caption = 'SR tooling setting'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1439
    Height = 637
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1437
      Height = 635
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Last Setting'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1429
          Height = 64
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BB1: TBitBtn
            Left = 8
            Top = 8
            Width = 53
            Height = 48
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
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
            Left = 61
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
          object BB3: TBitBtn
            Left = 114
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
          object BB4: TBitBtn
            Left = 167
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BB4Click
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
          object BB5: TBitBtn
            Left = 220
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
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
            Left = 273
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
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
          object BB7: TBitBtn
            Left = 326
            Top = 8
            Width = 53
            Height = 48
            Hint = 'Exit Current Form'
            Caption = 'Exit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BB7Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
              BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
              BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
              BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
              BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
              EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
              EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
              EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
              EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
        end
        object ToolPanel: TPanel
          Left = 0
          Top = 64
          Width = 1429
          Height = 64
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label2: TLabel
            Left = 361
            Top = 17
            Width = 70
            Height = 23
            Caption = 'LastCode'
          end
          object Label1: TLabel
            Left = 201
            Top = 17
            Width = 19
            Height = 23
            Caption = 'SR'
          end
          object Label3: TLabel
            Left = 9
            Top = 17
            Width = 55
            Height = 23
            Caption = 'Season'
          end
          object Label4: TLabel
            Left = 561
            Top = 17
            Width = 4
            Height = 23
          end
          object Label5: TLabel
            Left = 569
            Top = 17
            Width = 69
            Height = 23
            Caption = 'Develoer'
          end
          object Edit2: TEdit
            Left = 432
            Top = 16
            Width = 121
            Height = 31
            TabOrder = 0
          end
          object Button2: TButton
            Left = 973
            Top = 22
            Width = 80
            Height = 33
            Caption = 'Excel'
            TabOrder = 1
            Visible = False
          end
          object Edit1: TEdit
            Left = 224
            Top = 16
            Width = 121
            Height = 31
            TabOrder = 2
          end
          object Edit3: TEdit
            Left = 72
            Top = 16
            Width = 121
            Height = 31
            TabOrder = 3
          end
          object Edit4: TEdit
            Left = 640
            Top = 16
            Width = 121
            Height = 31
            TabOrder = 4
          end
          object CheckBox1: TCheckBox
            Left = 776
            Top = 8
            Width = 97
            Height = 17
            Caption = 'co season'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object CheckBox2: TCheckBox
            Left = 776
            Top = 32
            Width = 121
            Height = 17
            Caption = 'Last chua set'
            TabOrder = 6
          end
          object CheckBox3: TCheckBox
            Left = 888
            Top = 9
            Width = 97
            Height = 17
            Caption = 'mine'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 128
          Width = 1429
          Height = 479
          Align = alClient
          DataSource = DataSource1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnKeyPress = DBGridEh1KeyPress
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Season'
              Width = 62
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Xiexing'
              Footers = <>
              ReadOnly = True
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Shehao'
              Footers = <>
              ReadOnly = True
              Width = 74
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'Devcode'
              Footers = <>
              ReadOnly = True
              Width = 158
            end
            item
              ButtonStyle = cbsNone
              Color = clGradientActiveCaption
              EditButtons = <>
              FieldName = 'XTMH'
              Footers = <>
              Title.Caption = 'Last'
              Title.Color = clSkyBlue
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Developer'
              Width = 129
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'kfjd'
              Footers = <>
              Title.Caption = 'SampleOrder|Stage'
              Width = 105
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'userid'
              Footers = <>
              Title.Caption = 'SampleOrder|UserID'
              Width = 118
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'UserName'
              Footers = <>
              Title.Caption = 'SampleOrder|UserName'
              Width = 245
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'userdate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SampleOrder|UserDate'
              Width = 147
            end
            item
              EditButtons = <>
              FieldName = 'YN'
              Footers = <>
              Visible = False
              Width = 33
            end>
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      
        'select main.*,busers.UserName from (select kfxxzl.jijie,kfxxzl.X' +
        'iexing,kfxxzl.Shehao,kfxxzl.FD,kfxxzl.Devcode,kfxxzl.XTMH,'#39#39' YN,' +
        'ypzl.userdate ,ypzl.kfjd,ypzl.userid,'
      
        'ROW_NUMBER () OVER  (PARTITION BY ypzl.xiexing,ypzl.shehao  ORDE' +
        'R BY ypzl.userdate   ) rank_no  from Kfxxzl'
      'left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH'
      
        'left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kf' +
        'xxzl.shehao'
      'where 1=1 and ypzl.userid is not null'
      'and kfxxzl.jijie is not null and kfxxzl.jijie <>'#39#39
      'and kfzl_GS.GSBH= '#39'CDC'#39' )main'
      'left join busers on busers.userid=main.userid'
      'where rank_no=1')
    UpdateObject = upSQL1
    Left = 405
    Top = 313
    object Query1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query1Xiexing: TStringField
      FieldName = 'Xiexing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1Devcode: TStringField
      FieldName = 'Devcode'
      FixedChar = True
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1userdate: TStringField
      FieldName = 'userdate'
      FixedChar = True
      Size = 8
    end
    object Query1kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object Query1userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object Query1rank_no: TFloatField
      FieldName = 'rank_no'
    end
    object Query1UserName: TStringField
      FieldName = 'UserName'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 405
    Top = 265
  end
  object QTemp: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'Select LASTCODE from LASTDATA')
    Left = 293
    Top = 321
  end
  object upSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update Kfxxzl Set'
      '   XTMH=:XTMH'
      'where'
      '  Xiexing=:Xiexing'
      '  and'
      '  Shehao=:Shehao'
      ''
      ''
      ''
      '')
    DeleteSQL.Strings = (
      '')
    Left = 404
    Top = 368
  end
end
