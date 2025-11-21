object BOMReceive_Check: TBOMReceive_Check
  Left = 153
  Top = 261
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'BOMReceive_Check'
  ClientHeight = 690
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 32
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 121
      Top = 8
      Width = 36
      Height = 16
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 338
      Top = 8
      Width = 18
      Height = 16
      Caption = 'FD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 225
      Top = 8
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 442
      Top = 8
      Width = 39
      Height = 16
      Caption = 'Merge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 603
      Top = 8
      Width = 36
      Height = 16
      Caption = 'Team'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 763
      Top = 5
      Width = 64
      Height = 22
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit_Season: TEdit
      Left = 56
      Top = 4
      Width = 55
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '15F'
    end
    object Edit_Stage: TEdit
      Left = 160
      Top = 4
      Width = 56
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit_FD: TEdit
      Left = 360
      Top = 4
      Width = 64
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit_Article: TEdit
      Left = 264
      Top = 4
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit_Team: TEdit
      Left = 644
      Top = 4
      Width = 107
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit_Merge: TEdit
      Left = 483
      Top = 4
      Width = 107
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 32
    Width = 975
    Height = 658
    ActivePage = TS2
    Align = alClient
    TabOrder = 1
    object TS3: TTabSheet
      Caption = 'All Data'
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 967
        Height = 630
        Align = alClient
        DataSource = DS_ALL
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_all
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ReceiveNO'
            Footers = <
              item
                FieldName = 'ReceiveNO'
                ValueType = fvtCount
              end>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'FileNO'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'MergeNO'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 139
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ReceiveDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'team'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'RevArticle'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 73
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
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Remark1'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 108
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Title.Caption = 'UserDate'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Caption = 'UserID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 56
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Article'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 418
        Width = 967
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 421
        Width = 967
        Height = 209
        Align = alBottom
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 965
          Height = 21
          Align = alTop
          Caption = 'Problem Article'
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 1
          Top = 22
          Width = 965
          Height = 186
          Align = alClient
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 737
            Top = 1
            Width = 7
            Height = 184
            Align = alRight
            Color = clSkyBlue
            ParentColor = False
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 736
            Height = 184
            Align = alClient
            DataSource = DS_Wrong
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            PopupMenu = Pop_Wrong
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ReceiveNO'
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'FileNO'
                Footers = <>
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Width = 66
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'ReceiveDate'
                Footers = <>
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'JIJIE'
                Footers = <>
                Title.Caption = 'Dev Season'
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 45
              end>
          end
          object DBGridEh3: TDBGridEh
            Left = 744
            Top = 1
            Width = 220
            Height = 184
            Align = alRight
            DataSource = DS_WrongS
            Flat = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            Columns = <
              item
                EditButtons = <>
                FieldName = 'article'
                Footers = <>
                Width = 145
              end
              item
                EditButtons = <>
                FieldName = 'KFJD'
                Footers = <>
                Width = 53
              end>
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 967
        Height = 418
        Align = alClient
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 591
          Top = 1
          Height = 416
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 590
          Height = 416
          Align = alClient
          DataSource = DS_Article
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Article
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          VTitleMargin = 3
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Title.TitleButton = True
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.TitleButton = True
              Width = 145
            end
            item
              EditButtons = <>
              FieldName = 'Rev_Cnt'
              Footers = <>
              Title.Caption = 'Rev. '
              Title.TitleButton = True
              Width = 31
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'All_ReceiveDate'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.TitleButton = True
              Width = 307
            end>
        end
        object DBGridEh5: TDBGridEh
          Left = 594
          Top = 1
          Width = 372
          Height = 416
          Align = alRight
          DataSource = DS_ArticleS
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 3
          Columns = <
            item
              ButtonStyle = cbsNone
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'ReceiveDate'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Receive Date'
              Width = 58
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Pairs'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <>
              Width = 34
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Remark1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <>
              Width = 190
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'Remark'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <>
              Width = 51
            end>
        end
      end
    end
  end
  object Qry_Cal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select nrywsm from cllbzlss where 1=2')
    Left = 688
    Top = 216
  end
  object Qry_Article: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      '       SELECT FD'
      '             ,Season'
      '             ,Stage'
      '             ,Article'
      '             ,ReceiveDate AS ReceiveDate1'
      '             ,ReceiveDate AS ReceiveDate2'
      '             ,ReceiveDate AS ReceiveDate3'
      '             ,ReceiveDate AS ReceiveDate4'
      '      from   BOMReceive'
      
        '      Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.' +
        'ReceiveNO'
      '      WHERE 1=2')
    Left = 113
    Top = 210
    object Qry_ArticleFD: TStringField
      FieldName = 'FD'
      Origin = 'DB.BOMReceive.FD'
      FixedChar = True
      Size = 15
    end
    object Qry_ArticleSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.BOMReceive.Season'
      FixedChar = True
      Size = 10
    end
    object Qry_ArticleStage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.BOMReceive.Stage'
      FixedChar = True
      Size = 10
    end
    object Qry_ArticleArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.BOMReceiveS.Article'
      FixedChar = True
    end
    object Qry_ArticleAll_ReceiveDate: TStringField
      FieldName = 'All_ReceiveDate'
      Size = 200
    end
    object Qry_ArticleRev_Cnt: TIntegerField
      FieldName = 'Rev_Cnt'
    end
  end
  object DS_Article: TDataSource
    DataSet = Qry_Article
    Left = 113
    Top = 178
  end
  object DS_Wrong: TDataSource
    DataSet = Qry_Wrong
    Left = 120
    Top = 331
  end
  object Qry_Wrong: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BOMReceive.ReceiveNO'
      '           ,BOMReceive.FileNO'
      '           ,BOMReceive.FD'
      '           ,BOMReceive.Season'
      '           ,BOMReceive.Stage'
      '           ,BOMReceive.ReceiveDate'
      '           ,BOMReceiveS.Article'
      '           ,BOMReceiveS.RevArticle'
      '           ,KFXXZL.JIJIE'
      '    from BOMReceiveS'
      
        '    left join BOMReceive on BOMReceiveS.ReceiveNO=BOMReceive.Rec' +
        'eiveNO'
      
        '    left join YPZL on YPZL.KFJD=BOMReceive.Stage and YPZL.articl' +
        'e=BOMReceiveS.Article'
      '    LEFT JOIN KFXXZL ON KFXXZL.ARTICLE=BOMReceiveS.ARTICLE'
      '    where YPZL.YPDH is null')
    Left = 120
    Top = 363
    object Qry_WrongReceiveNO: TStringField
      FieldName = 'ReceiveNO'
      FixedChar = True
      Size = 11
    end
    object Qry_WrongFileNO: TStringField
      FieldName = 'FileNO'
      FixedChar = True
      Size = 10
    end
    object Qry_WrongFD: TStringField
      FieldName = 'FD'
      FixedChar = True
      Size = 15
    end
    object Qry_WrongSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 10
    end
    object Qry_WrongStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 10
    end
    object Qry_WrongReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
    end
    object Qry_WrongArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Qry_WrongRevArticle: TStringField
      FieldName = 'RevArticle'
      FixedChar = True
      Size = 30
    end
    object Qry_WrongJIJIE: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JIJIE'
      FixedChar = True
    end
  end
  object qry3: TQuery
    DatabaseName = 'dB'
    Left = 724
    Top = 213
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 700
    Top = 176
  end
  object DS_ALL: TDataSource
    DataSet = Qry_ALL
    Left = 56
    Top = 176
  end
  object Qry_ALL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select     BOMReceive.ReceiveNO '
      '           ,FileNO '
      '           ,FD '
      '           ,Season '
      '           ,Stage '
      '           ,MergeNO '
      '           ,Remark '
      '           ,ReceiveDate '
      '           ,BOMReceiveS.USERDate '
      '           ,BOMReceiveS.USERID '
      '           ,team '
      '           ,BOMReceiveS.Article '
      '           ,BOMReceiveS.RevArticle '
      '           ,BOMReceiveS.Pairs '
      '           ,BOMReceiveS.Remark1 '
      '    from BOMReceive'
      
        '    left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.Re' +
        'ceiveNO'
      '    where 1=2'
      '')
    Left = 56
    Top = 208
    object Qry_ALLReceiveNO: TStringField
      FieldName = 'ReceiveNO'
      Origin = 'DB.BOMReceive.ReceiveNO'
      FixedChar = True
      Size = 11
    end
    object Qry_ALLFileNO: TStringField
      FieldName = 'FileNO'
      Origin = 'DB.BOMReceive.FileNO'
      FixedChar = True
      Size = 10
    end
    object Qry_ALLFD: TStringField
      FieldName = 'FD'
      Origin = 'DB.BOMReceive.FD'
      FixedChar = True
      Size = 15
    end
    object Qry_ALLSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.BOMReceive.Season'
      FixedChar = True
      Size = 10
    end
    object Qry_ALLStage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.BOMReceive.Stage'
      FixedChar = True
      Size = 10
    end
    object Qry_ALLMergeNO: TStringField
      FieldName = 'MergeNO'
      Origin = 'DB.BOMReceive.MergeNO'
      FixedChar = True
    end
    object Qry_ALLRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.BOMReceive.Remark'
      FixedChar = True
      Size = 255
    end
    object Qry_ALLReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
      Origin = 'DB.BOMReceive.ReceiveDate'
    end
    object Qry_ALLUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.BOMReceiveS.USERDate'
    end
    object Qry_ALLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.BOMReceiveS.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_ALLteam: TStringField
      FieldName = 'team'
      Origin = 'DB.BOMReceive.team'
      FixedChar = True
      Size = 15
    end
    object Qry_ALLArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.BOMReceiveS.Article'
      FixedChar = True
    end
    object Qry_ALLRevArticle: TStringField
      FieldName = 'RevArticle'
      Origin = 'DB.BOMReceiveS.RevArticle'
      FixedChar = True
      Size = 30
    end
    object Qry_ALLPairs: TCurrencyField
      FieldName = 'Pairs'
      Origin = 'DB.BOMReceiveS.Pairs'
      currency = False
    end
    object Qry_ALLRemark1: TStringField
      FieldName = 'Remark1'
      Origin = 'DB.BOMReceiveS.Remark1'
      FixedChar = True
      Size = 255
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 739
    Top = 176
  end
  object qry4: TQuery
    DatabaseName = 'dB'
    Left = 756
    Top = 213
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 772
    Top = 178
  end
  object Pop_all: TPopupMenu
    Left = 57
    Top = 246
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object DS_WrongS: TDataSource
    DataSet = Qry_WrongS
    Left = 152
    Top = 331
  end
  object Qry_WrongS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Wrong
    SQL.Strings = (
      'select article,KFJD'
      '    from  YPZL'
      '    where YPZL.article=:Article'
      ''
      '')
    Left = 152
    Top = 363
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end>
    object Qry_WrongSarticle: TStringField
      DisplayLabel = 'Article'
      FieldName = 'article'
      FixedChar = True
    end
    object Qry_WrongSKFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
  end
  object DS_ArticleS: TDataSource
    DataSet = Qry_ArticleS
    Left = 153
    Top = 178
  end
  object Qry_ArticleS: TQuery
    DatabaseName = 'dB'
    DataSource = DS_Article
    SQL.Strings = (
      '  SELECT BOMReceive.ReceiveDate'
      '         ,BOMReceiveS.Pairs'
      '         ,BOMReceive.Remark'
      '         ,BOMReceiveS.Remark1'
      '      from   BOMReceive'
      
        '      Left join BOMReceiveS on BOMReceiveS.ReceiveNO=BOMReceive.' +
        'ReceiveNO'
      
        '      WHERE BOMReceiveS.Article=:Article and BOMReceive.Stage=:S' +
        'tage')
    Left = 153
    Top = 210
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'Stage'
        ParamType = ptUnknown
        Size = 11
      end>
    object Qry_ArticleSReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
      Origin = 'DB.BOMReceive.ReceiveDate'
    end
    object Qry_ArticleSPairs: TCurrencyField
      FieldName = 'Pairs'
      Origin = 'DB.BOMReceiveS.Pairs'
      currency = False
    end
    object Qry_ArticleSRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.BOMReceive.Remark'
      FixedChar = True
      Size = 255
    end
    object Qry_ArticleSRemark1: TStringField
      FieldName = 'Remark1'
      Origin = 'DB.BOMReceiveS.Remark1'
      FixedChar = True
      Size = 255
    end
  end
  object Pop_Article: TPopupMenu
    Left = 113
    Top = 246
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object Pop_Wrong: TPopupMenu
    Left = 121
    Top = 398
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
  end
end
