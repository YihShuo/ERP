object Sample_TBRemake: TSample_TBRemake
  Left = 425
  Top = 228
  Width = 928
  Height = 638
  Caption = 'Sample TBRemake'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 48
      Height = 16
      Caption = 'Test No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ED_Testno: TEdit
      Left = 72
      Top = 11
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 328
      Top = 10
      Width = 121
      Height = 25
      Caption = 'Copy to new TB'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 912
    Height = 558
    Align = alClient
    DataSource = DS_PMRList
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
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
        FieldName = 'TestNo'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DevTp'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'stage'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TestTime'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LastNo'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CutDieNo'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Purpose'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 169
      end
      item
        EditButtons = <>
        FieldName = 'CHOOSE'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Brand'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Construction'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'subtp'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SeeStage'
        Footers = <>
      end>
  end
  object DS_PMRList: TDataSource
    DataSet = Q_PMRList
    Left = 20
    Top = 337
  end
  object Q_PMRList: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM shoetest'
      'WHERE 1 = 0')
    Left = 20
    Top = 369
    object Q_PMRListTestNo: TStringField
      FieldName = 'TestNo'
      Origin = 'DB.ShoeTest.TestNo'
      FixedChar = True
      Size = 10
    end
    object Q_PMRListArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.ShoeTest.Article'
      FixedChar = True
    end
    object Q_PMRListDevTp: TStringField
      FieldName = 'DevTp'
      Origin = 'DB.ShoeTest.DevTp'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListstage: TStringField
      FieldName = 'stage'
      Origin = 'DB.ShoeTest.stage'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListTestTime: TStringField
      FieldName = 'TestTime'
      Origin = 'DB.ShoeTest.TestTime'
      FixedChar = True
      Size = 4
    end
    object Q_PMRListSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.ShoeTest.Season'
      FixedChar = True
      Size = 4
    end
    object Q_PMRListSIZ: TStringField
      FieldName = 'SIZ'
      Origin = 'DB.ShoeTest.SIZ'
      FixedChar = True
      Size = 6
    end
    object Q_PMRListLastNo: TStringField
      FieldName = 'LastNo'
      Origin = 'DB.ShoeTest.LastNo'
      FixedChar = True
      Size = 30
    end
    object Q_PMRListCutDieNo: TStringField
      FieldName = 'CutDieNo'
      Origin = 'DB.ShoeTest.CutDieNo'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListPurpose: TStringField
      FieldName = 'Purpose'
      Origin = 'DB.ShoeTest.Purpose'
      FixedChar = True
      Size = 35
    end
    object Q_PMRListMemo1: TMemoField
      FieldName = 'Memo1'
      Origin = 'DB.ShoeTest.Memo1'
      BlobType = ftMemo
    end
    object Q_PMRListMemo2: TMemoField
      FieldName = 'Memo2'
      Origin = 'DB.ShoeTest.Memo2'
      BlobType = ftMemo
    end
    object Q_PMRListUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.ShoeTest.UserID'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.ShoeTest.UserDate'
    end
    object Q_PMRListFD: TStringField
      FieldName = 'FD'
      Origin = 'DB.ShoeTest.FD'
      FixedChar = True
    end
    object Q_PMRListXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.ShoeTest.XieMing'
      FixedChar = True
      Size = 50
    end
    object Q_PMRListCHOOSE: TStringField
      FieldName = 'CHOOSE'
      Origin = 'DB.ShoeTest.CHOOSE'
      FixedChar = True
      Size = 1
    end
    object Q_PMRListBrand: TStringField
      FieldName = 'Brand'
      Origin = 'DB.ShoeTest.Brand'
      FixedChar = True
    end
    object Q_PMRListConstruction: TStringField
      FieldName = 'Construction'
      Origin = 'DB.ShoeTest.Construction'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListsubtp: TStringField
      FieldName = 'subtp'
      Origin = 'DB.ShoeTest.subtp'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ShoeTest.YPDH'
      FixedChar = True
      Size = 15
    end
    object Q_PMRListDDMH: TStringField
      FieldName = 'DDMH'
      Origin = 'DB.ShoeTest.DDMH'
      FixedChar = True
      Size = 30
    end
    object Q_PMRListSeeStage: TStringField
      FieldName = 'SeeStage'
      Origin = 'DB.ShoeTest.SeeStage'
      FixedChar = True
      Size = 4
    end
  end
  object U_PMRList: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PMR_INTERNAL'
      'SET'
      '  PMRNo = :PMRNo,'
      '  Responsibility = :Responsibility,'
      '  Article = :Article,'
      '  BeforeChange = :BeforeChange,'
      '  AfterChange =:AfterChange,'
      '  PMRFile = :PMRFile,'
      '  BOMCheck = :BOMCheck,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  PMRNo = :OLD_PMRNo')
    InsertSQL.Strings = (
      'INSERT INTO PMR_INTERNAL'
      
        '(PMRNo, Responsibility, Article, BeforeChange, AfterChange, PMRF' +
        'ile, BOMCheck, UserID, UserDate, YN)'
      'VALUES'
      
        '(:PMRNo, :Responsibility, :Article, :BeforeChange, :AfterChange,' +
        ' :PMRFile, :BOMCheck, :UserID, GETDATE(), :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM PMR_INTERNAL'
      'WHERE'
      'PMRNo = :OLD_PMRNo')
    Left = 20
    Top = 481
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 104
    Top = 344
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    Left = 104
    Top = 400
  end
end
