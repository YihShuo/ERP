object DevelopTrainingReport: TDevelopTrainingReport
  Left = 367
  Top = 177
  Width = 1032
  Height = 699
  Caption = 'DevelopTrainingReport'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 64
    Align = alTop
    TabOrder = 0
    object BB7: TBitBtn
      Left = 16
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 64
    Width = 456
    Height = 604
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'developer_team'
        Footers = <>
        Title.Caption = 'Developer Team'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'developer_id'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'developer_name'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'developer_level'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'basic'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'upper'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'bottom'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Cost'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'others'
        Footers = <>
        ReadOnly = True
        Width = 120
      end>
  end
  object PC1: TPageControl
    Left = 456
    Top = 64
    Width = 568
    Height = 604
    ActivePage = TS1
    Align = alRight
    TabOrder = 2
    object TS1: TTabSheet
      Caption = 'Basic'
      ImageIndex = 4
      OnShow = TS1Show
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 560
        Height = 576
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_type'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'course_id'
            Footers = <>
            Title.Caption = 'Course ID'
            Width = 150
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'course_date'
            Footers = <>
            Title.Caption = 'Course Date'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'course_grade'
            Footers = <>
            Title.Caption = 'Course Grade'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Upper'
      ImageIndex = 1
      OnShow = TS2Show
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 560
        Height = 576
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_type'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'course_id'
            Footers = <>
            Title.Caption = 'Course ID'
            Width = 150
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'course_date'
            Footers = <>
            Title.Caption = 'Course Date'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'course_grade'
            Footers = <>
            Title.Caption = 'Course Grade'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Bottom'
      ImageIndex = 2
      OnShow = TS3Show
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 560
        Height = 576
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_type'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'course_id'
            Footers = <>
            Title.Caption = 'Course ID'
            Width = 150
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'course_date'
            Footers = <>
            Title.Caption = 'Course Date'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'course_grade'
            Footers = <>
            Title.Caption = 'Course Grade'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Cost'
      ImageIndex = 3
      OnShow = TS4Show
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 560
        Height = 576
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_type'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'course_id'
            Footers = <>
            Title.Caption = 'Course ID'
            Width = 150
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'course_date'
            Footers = <>
            Title.Caption = 'Course Date'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'course_grade'
            Footers = <>
            Title.Caption = 'Course Grade'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
    object TS5: TTabSheet
      Caption = 'Others'
      ImageIndex = 4
      OnShow = TS5Show
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 560
        Height = 576
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_type'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Type'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'course_id'
            Footers = <>
            Title.Caption = 'Course ID'
            Width = 150
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'course_name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Course Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'course_date'
            Footers = <>
            Title.Caption = 'Course Date'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'course_grade'
            Footers = <>
            Title.Caption = 'Course Grade'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = 'Memo'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 120
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT FDGroups.FDTeam AS developer_team, FDGroups.FDID AS devel' +
        'oper_id, Busers.USERNAME AS developer_name,'
      
        #39#39' AS developer_level, '#39#39' AS basic, '#39#39' AS upper, '#39#39' AS bottom, '#39 +
        #39' AS Cost, '#39#39' AS others FROM FDGroups'
      'LEFT JOIN Busers ON FDGroups.FDID = Busers.USERID'
      'WHERE FDGroups.fdname = '#39'Develop'#39
      'ORDER BY FDGroups.FDTeam ')
    UpdateObject = UpdateSQL1
    Left = 328
    Top = 152
    object Query1developer_team: TStringField
      FieldName = 'developer_team'
    end
    object Query1developer_id: TStringField
      FieldName = 'developer_id'
      FixedChar = True
      Size = 6
    end
    object Query1developer_name: TStringField
      FieldName = 'developer_name'
      FixedChar = True
      Size = 30
    end
    object Query1developer_level: TStringField
      FieldName = 'developer_level'
      FixedChar = True
      Size = 1
    end
    object Query1basic: TStringField
      FieldName = 'basic'
      FixedChar = True
      Size = 50
    end
    object Query1upper: TStringField
      FieldName = 'upper'
      FixedChar = True
      Size = 50
    end
    object Query1bottom: TStringField
      FieldName = 'bottom'
      FixedChar = True
      Size = 50
    end
    object Query1Cost: TStringField
      FieldName = 'Cost'
      FixedChar = True
      Size = 50
    end
    object Query1others: TStringField
      FieldName = 'others'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    OnDataChange = DS1DataChange
    Left = 296
    Top = 152
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 556
    Top = 208
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 588
    Top = 208
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 448
    Top = 24
  end
  object UpdateSQL1: TUpdateSQL
    Left = 360
    Top = 152
  end
end
